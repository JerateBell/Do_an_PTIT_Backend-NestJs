import { Module } from '@nestjs/common';
import { DestinationsService } from './destinations.service';
import { DestinationsController } from './destinations.controller';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  controllers: [DestinationsController],
  providers: [DestinationsService, PrismaService],
})
export class DestinationsModule {}
