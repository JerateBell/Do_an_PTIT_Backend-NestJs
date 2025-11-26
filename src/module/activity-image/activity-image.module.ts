import { Module } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { ActivityImagesController } from './activity-image.controller';
import { ActivityImagesService } from './activity-image.service';
import { CloudinaryService } from 'src/common/cloudinary/cloudinary.service';

@Module({
  controllers: [ActivityImagesController],
  providers: [ActivityImagesService, PrismaService, CloudinaryService],
})
export class ActivityImageModule {}
