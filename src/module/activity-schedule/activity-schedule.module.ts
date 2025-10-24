import { Module } from '@nestjs/common';
import { ActivityScheduleService } from './activity-schedule.service';
import { ActivityScheduleController } from './activity-schedule.controller';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  controllers: [ActivityScheduleController],
  providers: [ActivityScheduleService, PrismaService],
})
export class ActivityScheduleModule {}
