import { Controller, Get, Patch, Delete, Param, Body, UseGuards, Post, Req } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { BookingsService } from './booking.service';
import { CurrentSupplier } from 'src/common/decorators/current-supplier.decorator';
import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';
import { CreateBookingDto } from './dto/create-booking.dto';

@Controller('supplier/bookings')
@UseGuards(AuthGuard('jwt'))
export class BookingsController {
  constructor(private readonly bookingsService: BookingsService) {}

  // 🟩 GET all bookings của supplier
  @Get()
  findAll(@CurrentSupplier() user: any) {
    return this.bookingsService.findAllForSupplier(BigInt(user.id));
  }

  @Get('my-booking')
  getMyBooking(@Req() req) {
    const userId = req.user.id; 
    return this.bookingsService.getBooking(userId);
  }

  // 🟦 GET chi tiết 1 booking
  @Get(':id')
  findOne(@Param('id') id: string, @CurrentSupplier() user: any) {
    return this.bookingsService.findOneForSupplier(BigInt(id), BigInt(user.id));
  }

  // 🟨 PATCH cập nhật trạng thái booking
  @Patch(':id/status')
  updateStatus(
    @Param('id') id: string,
    @Body() dto: UpdateBookingStatusDto,
    @CurrentSupplier() user: any,
  ) {
    return this.bookingsService.updateStatus(BigInt(id), BigInt(user.id), dto);
  }

  // 🟥 DELETE booking (nếu cần)
  @Delete(':id')
  remove(@Param('id') id: string, @CurrentSupplier() user: any) {
    return this.bookingsService.remove(BigInt(id), BigInt(user.id));
  }

  @Post()
  create(@Body() dto: CreateBookingDto, @Req() req) {
    const userId = req.user.id; 
    return this.bookingsService.createBooking(dto, userId);
  }
}
