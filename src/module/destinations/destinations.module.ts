import { Module } from '@nestjs/common';
import { DestinationsService } from './destinations.service';
import { DestinationsController } from './destinations.controller';
import { PrismaService } from '../prisma/prisma.service';
import { CloudinaryService } from 'src/common/cloudinary/cloudinary.service';

@Module({
  controllers: [DestinationsController],
  providers: [DestinationsService, PrismaService, CloudinaryService],
})
export class DestinationsModule {}
