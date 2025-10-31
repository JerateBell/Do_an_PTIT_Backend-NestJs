import { Module } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { ActivityImagesController } from './activity-image.controller';
import { ActivityImagesService } from './activity-image.service';

@Module({
  controllers: [ActivityImagesController],
  providers: [ActivityImagesService, PrismaService],
})
export class ActivityImageModule {}
