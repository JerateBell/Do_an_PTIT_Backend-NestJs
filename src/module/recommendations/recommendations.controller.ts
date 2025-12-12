import {
  Controller,
  Get,
  Post,
  Param,
  Query,
  UseGuards,
  Req,
  Delete,
  Body,
  HttpCode,
  HttpStatus,
} from '@nestjs/common';
import { RecommendationsService } from './recommendations.service';
import { AuthGuard } from '@nestjs/passport';
import { ApiTags, ApiOperation, ApiResponse, ApiBearerAuth } from '@nestjs/swagger';

@ApiTags('Recommendations')
@Controller('recommendations')
export class RecommendationsController {
  constructor(private readonly recommendationsService: RecommendationsService) {}

  /**
   * Export ratings ra CSV (format ml-100k)
   * Admin only
   */
  // @UseGuards(AuthGuard('jwt'))
  // @ApiBearerAuth()
  @Post('export/ratings')
  @ApiOperation({ summary: 'Export ratings ra CSV file (format ml-100k)' })
  @ApiResponse({ status: 200, description: 'Export thành công' })
  async exportRatings(@Body('outputPath') outputPath?: string) {
    const filePath = await this.recommendationsService.exportRatingsToCSV(outputPath);
    return {
      success: true,
      message: 'Export ratings thành công',
      filePath,
    };
  }

  /**
   * Export activities ra CSV với category features
   * Admin only
   */
  // @UseGuards(AuthGuard('jwt'))
  // @ApiBearerAuth()
  @Post('export/activities')
  @ApiOperation({ summary: 'Export activities ra CSV file với category features' })
  @ApiResponse({ status: 200, description: 'Export thành công' })
  async exportActivities(@Body('outputPath') outputPath?: string) {
    const filePath = await this.recommendationsService.exportActivitiesToCSV(outputPath);
    return {
      success: true,
      message: 'Export activities thành công',
      filePath,
    };
  }

  /**
   * Import recommendations từ CSV file (từ Python script)
   * Admin only
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Post('import')
  @ApiOperation({ summary: 'Import recommendations từ CSV file' })
  @ApiResponse({ status: 200, description: 'Import thành công' })
  async importRecommendations(@Body('filePath') filePath: string) {
    const result = await this.recommendationsService.importRecommendationsFromCSV(filePath);
    return {
      success: true,
      message: 'Import recommendations thành công',
      ...result,
    };
  }

  /**
   * Import recommendations từ file CSV mặc định (imports/recommendations.csv)
   */
  @Post('import/default')
  @ApiOperation({ summary: 'Import recommendations từ file CSV mặc định (imports/recommendations.csv)' })
  @ApiResponse({ status: 200, description: 'Import thành công' })
  async importRecommendationsFromDefault() {
    const result = await this.recommendationsService.importRecommendationsFromDefaultCSV();
    return {
      success: true,
      message: 'Import recommendations từ file mặc định thành công',
      ...result,
    };
  }

  /**
   * Lấy recommendations cho current user
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Get()
  @ApiOperation({ summary: 'Lấy recommendations cho current user' })
  @ApiResponse({ status: 200, description: 'Lấy recommendations thành công' })
  async getRecommendations(@Req() req, @Query('topN') topN?: number) {
    const userId = BigInt(req.user.id);
    const recommendations = await this.recommendationsService.getRecommendationsForUser(
      userId,
      topN ? parseInt(topN.toString(), 10) : 10,
    );
    return {
      success: true,
      userId: req.user.id,
      recommendations,
    };
  }

  /**
   * Lấy danh sách tours từ recommendations cho current user
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Get('tours')
  @ApiOperation({ summary: 'Lấy danh sách tours từ recommendations cho current user' })
  @ApiResponse({ status: 200, description: 'Lấy danh sách tours thành công' })
  async getRecommendedTours(@Req() req, @Query('topN') topN?: number) {
    const userId = BigInt(req.user.id);
    const tours = await this.recommendationsService.getRecommendedTours(
      userId,
      topN ? parseInt(topN.toString(), 10) : 10,
    );
    return {
      success: true,
      userId: req.user.id,
      tours,
      count: tours.length,
    };
  }

  /**
   * Lấy recommendations cho một user cụ thể (Admin only)
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Get('user/:userId')
  @ApiOperation({ summary: 'Lấy recommendations cho một user (Admin)' })
  @ApiResponse({ status: 200, description: 'Lấy recommendations thành công' })
  async getRecommendationsForUser(@Param('userId') userId: string, @Query('topN') topN?: number) {
    const recommendations = await this.recommendationsService.getRecommendationsForUser(
      BigInt(userId),
      topN ? parseInt(topN.toString(), 10) : 10,
    );
    return {
      success: true,
      userId,
      recommendations,
    };
  }

  /**
   * Lấy thống kê recommendations
   */
  // @UseGuards(AuthGuard('jwt'))
  // @ApiBearerAuth()
  @Get('stats')
  @ApiOperation({ summary: 'Lấy thống kê recommendations' })
  @ApiResponse({ status: 200, description: 'Lấy thống kê thành công' })
  async getStats() {
    const stats = await this.recommendationsService.getRecommendationsStats();
    return {
      success: true,
      stats,
    };
  }

  /**
   * Xóa tất cả recommendations
   * Admin only
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Delete()
  @HttpCode(HttpStatus.OK)
  @ApiOperation({ summary: 'Xóa tất cả recommendations (Admin)' })
  @ApiResponse({ status: 200, description: 'Xóa thành công' })
  async clearAllRecommendations() {
    await this.recommendationsService.clearAllRecommendations();
    return {
      success: true,
      message: 'Đã xóa tất cả recommendations',
    };
  }
}

