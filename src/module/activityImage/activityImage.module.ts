import { Module } from '@nestjs/common';
import { PrismaModule } from '../prisma/prisma.module';
import { ActivityImageController } from './activityImage.controller';
import { ActivityImageService } from './activityImage.service';

@Module({
  imports: [PrismaModule],
  controllers: [ActivityImageController],
  providers: [ActivityImageService],
})
export class ActivityImageModule {}
