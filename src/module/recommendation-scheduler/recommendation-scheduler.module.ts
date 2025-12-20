import { Module } from '@nestjs/common';
import { ScheduleModule } from '@nestjs/schedule';
import { RecommendationSchedulerService } from './recommendation-scheduler.service';
import { RecommendationSchedulerController } from './recommendation-scheduler.controller';
import { RecommendationsModule } from '../recommendations/recommendations.module';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  imports: [
    ScheduleModule.forRoot(),
    RecommendationsModule,
  ],
  controllers: [RecommendationSchedulerController],
  providers: [RecommendationSchedulerService, PrismaService],
  exports: [RecommendationSchedulerService],
})
export class RecommendationSchedulerModule {}

