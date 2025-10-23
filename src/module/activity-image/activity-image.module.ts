import { Module } from '@nestjs/common';
import { ActivityImageService } from './activity-image.service';
import { ActivityImageController } from './activity-image.controller';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  controllers: [ActivityImageController],
  providers: [ActivityImageService, PrismaService],
})
export class ActivityImageModule {}
