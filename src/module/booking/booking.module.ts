import { Module } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service';
import { BookingsController } from './booking.controller';
import { AdminBookingsController } from './admin-booking.controller';
import { BookingsService } from './booking.service';
import { CouponsModule } from '../coupons/coupons.module';

@Module({
  imports: [CouponsModule],
  controllers: [BookingsController, AdminBookingsController],
  providers: [BookingsService, PrismaService],
})
export class BookingModule {}
