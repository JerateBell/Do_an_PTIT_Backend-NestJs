import { Module } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { ActivitySchedulesController } from './activity-schedule.controller';
import { ActivitySchedulesService } from './activity-schedule.service';

@Module({
  controllers: [ActivitySchedulesController],
  providers: [ActivitySchedulesService, PrismaService],
})
export class ActivityScheduleModule {}
