import { Module } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service';
import { BookingsController } from './booking.controller';
import { BookingsService } from './booking.service';

@Module({
  controllers: [BookingsController],
  providers: [BookingsService, PrismaService],
})
export class BookingModule {}
