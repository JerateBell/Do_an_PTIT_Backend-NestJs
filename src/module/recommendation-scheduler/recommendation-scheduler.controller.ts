import {
  Controller,
  Get,
  Post,
  Body,
  UseGuards,
} from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiTags, ApiOperation, ApiResponse, ApiBearerAuth } from '@nestjs/swagger';
import { RecommendationSchedulerService } from './recommendation-scheduler.service';
import { AdminGuard } from '../auth/guard/admin.guard';

class SetScheduleDto {
  cronExpression: string;
  enabled: boolean;
}

@ApiTags('Recommendation Scheduler')
@Controller('recommendation-scheduler')
export class RecommendationSchedulerController {
  constructor(private readonly schedulerService: RecommendationSchedulerService) {}

  /**
   * Get current schedule configuration
   */
  @UseGuards(AuthGuard('jwt'), AdminGuard)
  @ApiBearerAuth()
  @Get('config')
  @ApiOperation({ summary: 'Get schedule configuration' })
  @ApiResponse({ status: 200, description: 'Returns schedule config' })
  getConfig() {
    const config = this.schedulerService.getConfig();
    const nextRun = this.schedulerService.getNextRunTime();
    return {
      success: true,
      config: {
        ...config,
        nextRun,
      },
    };
  }

  /**
   * Update schedule configuration
   */
  @UseGuards(AuthGuard('jwt'), AdminGuard)
  @ApiBearerAuth()
  @Post('config')
  @ApiOperation({ summary: 'Update schedule configuration' })
  @ApiResponse({ status: 200, description: 'Schedule updated' })
  async setSchedule(@Body() dto: SetScheduleDto) {
    const config = await this.schedulerService.setSchedule(dto.cronExpression, dto.enabled);
    const nextRun = this.schedulerService.getNextRunTime();
    return {
      success: true,
      message: dto.enabled ? 'Schedule enabled' : 'Schedule disabled',
      config: {
        ...config,
        nextRun,
      },
    };
  }

  /**
   * Run pipeline manually
   */
  @UseGuards(AuthGuard('jwt'), AdminGuard)
  @ApiBearerAuth()
  @Post('run')
  @ApiOperation({ summary: 'Run recommendation pipeline manually' })
  @ApiResponse({ status: 200, description: 'Pipeline executed' })
  async runPipeline() {
    const result = await this.schedulerService.runPipeline();
    return result;
  }

  /**
   * Get common cron presets
   */
  @Get('presets')
  @ApiOperation({ summary: 'Get common cron expression presets' })
  @ApiResponse({ status: 200, description: 'Returns cron presets' })
  getPresets() {
    return {
      success: true,
      presets: [
        { label: 'Mỗi giờ', value: '0 * * * *', description: 'Chạy vào phút 0 mỗi giờ' },
        { label: 'Mỗi 6 giờ', value: '0 */6 * * *', description: 'Chạy vào 0:00, 6:00, 12:00, 18:00' },
        { label: 'Mỗi ngày 2:00 AM', value: '0 2 * * *', description: 'Chạy lúc 2:00 sáng mỗi ngày' },
        { label: 'Mỗi ngày 6:00 AM', value: '0 6 * * *', description: 'Chạy lúc 6:00 sáng mỗi ngày' },
        { label: 'Mỗi ngày 12:00 PM', value: '0 12 * * *', description: 'Chạy lúc 12:00 trưa mỗi ngày' },
        { label: 'Mỗi tuần (Chủ nhật 3:00 AM)', value: '0 3 * * 0', description: 'Chạy lúc 3:00 AM mỗi Chủ nhật' },
        { label: 'Mỗi tháng (ngày 1, 3:00 AM)', value: '0 3 1 * *', description: 'Chạy lúc 3:00 AM ngày đầu tháng' },
      ],
    };
  }
}

