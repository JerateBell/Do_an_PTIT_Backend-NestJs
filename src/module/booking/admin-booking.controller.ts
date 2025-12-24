import { Controller, Get, Patch, Delete, Param, Body, UseGuards, Query } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { BookingsService } from './booking.service';
import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';
import { FilterBookingDto } from './dto/filter-booking.dto';
import { AdminGuard } from '../auth/guard/admin.guard';

@Controller('admin/bookings')
@UseGuards(AuthGuard('jwt'), AdminGuard)
export class AdminBookingsController {
  constructor(private readonly bookingsService: BookingsService) {}

  // Get all bookings for admin with filters
  @Get()
  findAll(@Query() filters: FilterBookingDto) {
    return this.bookingsService.findAllForAdmin(filters);
  }

  // Get one booking detail for admin
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.bookingsService.findOneForAdmin(BigInt(id));
  }

  // Update booking status for admin
  @Patch(':id/status')
  updateStatus(
    @Param('id') id: string,
    @Body() dto: UpdateBookingStatusDto,
  ) {
    return this.bookingsService.updateStatusForAdmin(BigInt(id), dto);
  }

  // Delete booking for admin
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.bookingsService.removeForAdmin(BigInt(id));
  }
}

