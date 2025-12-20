import { Injectable, Logger, OnModuleInit } from '@nestjs/common';
import { SchedulerRegistry } from '@nestjs/schedule';
import { CronJob } from 'cron';
import { RecommendationsService } from '../recommendations/recommendations.service';
import { PrismaService } from '../prisma/prisma.service';
import * as fs from 'fs';
import * as path from 'path';
import { exec } from 'child_process';
import { promisify } from 'util';

const execAsync = promisify(exec);

interface ScheduleConfig {
  enabled: boolean;
  cronExpression: string;
  lastRun: Date | null;
  lastStatus: 'success' | 'error' | 'running' | null;
  lastMessage: string | null;
}

@Injectable()
export class RecommendationSchedulerService implements OnModuleInit {
  private readonly logger = new Logger(RecommendationSchedulerService.name);
  private readonly configPath = path.join(process.cwd(), 'config', 'scheduler.json');
  private readonly rcmDataPath = path.join(process.cwd(), '..', 'Recommendation-for-BookTour-Website', 'data');
  private readonly rcmScriptPath = path.join(process.cwd(), '..', 'Recommendation-for-BookTour-Website', 'final_algorithm', 'hybrid_cf_cb.py');
  private config: ScheduleConfig;

  constructor(
    private schedulerRegistry: SchedulerRegistry,
    private recommendationsService: RecommendationsService,
    private prisma: PrismaService,
  ) {
    this.config = this.loadConfig();
  }

  onModuleInit() {
    if (this.config.enabled && this.config.cronExpression) {
      this.setupCronJob(this.config.cronExpression);
    }
    this.logger.log(`Recommendation Scheduler initialized. Enabled: ${this.config.enabled}`);
  }

  private loadConfig(): ScheduleConfig {
    try {
      const configDir = path.dirname(this.configPath);
      if (!fs.existsSync(configDir)) {
        fs.mkdirSync(configDir, { recursive: true });
      }

      if (fs.existsSync(this.configPath)) {
        const data = fs.readFileSync(this.configPath, 'utf-8');
        return JSON.parse(data);
      }
    } catch (error) {
      this.logger.error('Error loading config:', error);
    }

    // Default config: Run daily at 2:00 AM
    return {
      enabled: false,
      cronExpression: '0 2 * * *',
      lastRun: null,
      lastStatus: null,
      lastMessage: null,
    };
  }

  private saveConfig(): void {
    try {
      const configDir = path.dirname(this.configPath);
      if (!fs.existsSync(configDir)) {
        fs.mkdirSync(configDir, { recursive: true });
      }
      fs.writeFileSync(this.configPath, JSON.stringify(this.config, null, 2), 'utf-8');
    } catch (error) {
      this.logger.error('Error saving config:', error);
    }
  }

  private setupCronJob(cronExpression: string): void {
    const jobName = 'recommendation-pipeline';

    // Remove existing job if any
    try {
      this.schedulerRegistry.deleteCronJob(jobName);
    } catch (e) {
      // Job doesn't exist, ignore
    }

    const job = new CronJob(cronExpression, async () => {
      await this.runPipeline();
    });

    this.schedulerRegistry.addCronJob(jobName, job);
    job.start();

    this.logger.log(`Cron job scheduled with expression: ${cronExpression}`);
  }

  getConfig(): ScheduleConfig {
    return { ...this.config };
  }

  async setSchedule(cronExpression: string, enabled: boolean): Promise<ScheduleConfig> {
    this.config.cronExpression = cronExpression;
    this.config.enabled = enabled;

    const jobName = 'recommendation-pipeline';

    // Remove existing job
    try {
      this.schedulerRegistry.deleteCronJob(jobName);
    } catch (e) {
      // Job doesn't exist
    }

    // Setup new job if enabled
    if (enabled && cronExpression) {
      this.setupCronJob(cronExpression);
    }

    this.saveConfig();
    return this.getConfig();
  }

  async runPipeline(): Promise<{ success: boolean; message: string; details?: any }> {
    const startTime = new Date();
    const logs: string[] = [];
    
    const log = (message: string) => {
      const timestamp = new Date().toISOString();
      const logMessage = `[${timestamp}] ${message}`;
      logs.push(logMessage);
      this.logger.log(message);
    };

    log('🚀 ========== STARTING RECOMMENDATION PIPELINE ==========');
    log(`📅 Start time: ${startTime.toLocaleString('vi-VN')}`);
    log(`📂 RCM Data Path: ${this.rcmDataPath}`);
    log(`📂 RCM Script Path: ${this.rcmScriptPath}`);
    
    this.config.lastStatus = 'running';
    this.config.lastRun = startTime;
    this.saveConfig();

    try {
      // Step 1: Export items.csv
      log('');
      log('📤 ========== STEP 1/4: EXPORTING ITEMS.CSV ==========');
      const itemsPath = path.join(this.rcmDataPath, 'items.csv');
      log(`   Target path: ${itemsPath}`);
      const step1Start = Date.now();
      await this.recommendationsService.exportActivitiesToCSV(itemsPath);
      const step1Duration = Date.now() - step1Start;
      log(`   ✅ items.csv exported successfully (${step1Duration}ms)`);
      
      // Check file exists and get size
      if (fs.existsSync(itemsPath)) {
        const stats = fs.statSync(itemsPath);
        log(`   📊 File size: ${(stats.size / 1024).toFixed(2)} KB`);
      }

      // Step 2: Export ratings.csv
      log('');
      log('📤 ========== STEP 2/4: EXPORTING RATINGS.CSV ==========');
      const ratingsPath = path.join(this.rcmDataPath, 'ratings.csv');
      log(`   Target path: ${ratingsPath}`);
      const step2Start = Date.now();
      await this.recommendationsService.exportRatingsToCSV(ratingsPath);
      const step2Duration = Date.now() - step2Start;
      log(`   ✅ ratings.csv exported successfully (${step2Duration}ms)`);
      
      if (fs.existsSync(ratingsPath)) {
        const stats = fs.statSync(ratingsPath);
        log(`   📊 File size: ${(stats.size / 1024).toFixed(2)} KB`);
      }

      // Step 3: Run Python script
      log('');
      log('🐍 ========== STEP 3/4: RUNNING PYTHON SCRIPT ==========');
      log(`   Script: hybrid_cf_cb.py`);
      const step3Start = Date.now();
      const pythonResult = await this.runPythonScript();
      const step3Duration = Date.now() - step3Start;
      log(`   ✅ Python script completed (${step3Duration}ms)`);
      log(`   📝 Python output: ${pythonResult.substring(0, 500)}${pythonResult.length > 500 ? '...' : ''}`);

      // Step 4: Import recommendations
      log('');
      log('📥 ========== STEP 4/4: IMPORTING RECOMMENDATIONS ==========');
      const recommendationsPath = path.join(this.rcmDataPath, 'recommendations.csv');
      log(`   Source path: ${recommendationsPath}`);
      
      // Check if recommendations.csv exists
      if (!fs.existsSync(recommendationsPath)) {
        throw new Error(`Recommendations file not found: ${recommendationsPath}`);
      }
      
      const recStats = fs.statSync(recommendationsPath);
      log(`   📊 Recommendations file size: ${(recStats.size / 1024).toFixed(2)} KB`);
      
      // Copy to imports folder
      const importPath = path.join(process.cwd(), 'imports', 'recommendations.csv');
      log(`   📋 Copying to: ${importPath}`);
      fs.copyFileSync(recommendationsPath, importPath);
      log(`   ✅ File copied successfully`);

      const step4Start = Date.now();
      const importResult = await this.recommendationsService.importRecommendationsFromDefaultCSV();
      const step4Duration = Date.now() - step4Start;
      log(`   ✅ Import completed (${step4Duration}ms)`);
      log(`   📊 Imported: ${importResult.imported} recommendations`);
      log(`   ⚠️  Errors: ${importResult.errors}`);

      // Summary
      const totalDuration = Date.now() - startTime.getTime();
      log('');
      log('✅ ========== PIPELINE COMPLETED SUCCESSFULLY ==========');
      log(`   Total duration: ${(totalDuration / 1000).toFixed(2)} seconds`);
      log(`   Step 1 (Export items): ${step1Duration}ms`);
      log(`   Step 2 (Export ratings): ${step2Duration}ms`);
      log(`   Step 3 (Python script): ${step3Duration}ms`);
      log(`   Step 4 (Import recommendations): ${step4Duration}ms`);
      log(`   Recommendations imported: ${importResult.imported}`);
      log('=======================================================');

      this.config.lastStatus = 'success';
      this.config.lastMessage = `Pipeline completed in ${(totalDuration / 1000).toFixed(2)}s. Imported ${importResult.imported} recommendations.`;
      this.saveConfig();

      return {
        success: true,
        message: this.config.lastMessage,
        details: {
          logs,
          duration: totalDuration,
          pythonOutput: pythonResult,
          importResult,
        },
      };
    } catch (error: any) {
      const totalDuration = Date.now() - startTime.getTime();
      log('');
      log('❌ ========== PIPELINE FAILED ==========');
      log(`   Error: ${error.message}`);
      log(`   Stack: ${error.stack}`);
      log(`   Duration before failure: ${(totalDuration / 1000).toFixed(2)} seconds`);
      log('========================================');

      this.config.lastStatus = 'error';
      this.config.lastMessage = error.message || 'Unknown error';
      this.saveConfig();

      this.logger.error('❌ Pipeline failed:', error);
      return {
        success: false,
        message: this.config.lastMessage || 'Pipeline failed',
        details: {
          logs,
          duration: totalDuration,
          error: error.message,
        },
      };
    }
  }

  private async runPythonScript(): Promise<string> {
    const scriptDir = path.dirname(this.rcmScriptPath);
    const scriptName = path.basename(this.rcmScriptPath);

    this.logger.log(`   📂 Script directory: ${scriptDir}`);
    this.logger.log(`   📄 Script name: ${scriptName}`);

    // Check if script exists
    if (!fs.existsSync(this.rcmScriptPath)) {
      throw new Error(`Python script not found: ${this.rcmScriptPath}`);
    }
    this.logger.log(`   ✅ Script file exists`);

    // Try different Python commands
    const pythonCommands = ['python', 'python3', 'py'];
    const errors: string[] = [];
    
    for (const pythonCmd of pythonCommands) {
      try {
        this.logger.log(`   🔄 Trying command: ${pythonCmd} ${scriptName}`);
        
        const { stdout, stderr } = await execAsync(`${pythonCmd} ${scriptName}`, {
          timeout: 600000, // 10 minutes timeout
          cwd: scriptDir,
          maxBuffer: 10 * 1024 * 1024, // 10MB buffer
        });

        if (stderr) {
          this.logger.warn(`   ⚠️ Python stderr: ${stderr}`);
        }

        if (stdout) {
          this.logger.log(`   📝 Python stdout (first 1000 chars):`);
          this.logger.log(`   ${stdout.substring(0, 1000)}`);
        }

        this.logger.log(`   ✅ Python script executed successfully with ${pythonCmd}`);
        return stdout || stderr || 'Script executed successfully';
      } catch (error: any) {
        const errorMsg = `${pythonCmd} failed: ${error.message}`;
        errors.push(errorMsg);
        this.logger.warn(`   ❌ ${errorMsg}`);
        
        // If it's not a "command not found" error, log more details
        if (error.stdout) {
          this.logger.log(`   stdout: ${error.stdout}`);
        }
        if (error.stderr) {
          this.logger.log(`   stderr: ${error.stderr}`);
        }
        continue;
      }
    }

    throw new Error(`Could not execute Python script. Tried: ${pythonCommands.join(', ')}. Errors: ${errors.join('; ')}`);
  }

  getNextRunTime(): Date | null {
    const jobName = 'recommendation-pipeline';
    try {
      const job = this.schedulerRegistry.getCronJob(jobName);
      return job.nextDate().toJSDate();
    } catch (e) {
      return null;
    }
  }
}

