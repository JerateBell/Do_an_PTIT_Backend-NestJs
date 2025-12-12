import { Module } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service';
import { BookingsController } from './booking.controller';
import { BookingsService } from './booking.service';
import { CouponsModule } from '../coupons/coupons.module';

@Module({
  imports: [CouponsModule],
  controllers: [BookingsController],
  providers: [BookingsService, PrismaService],
})
export class BookingModule {}
