import {
  Controller,
  Get,
  Patch,
  Delete,
  Param,
  Body,
  UseGuards,
  Post,
  Req,
  BadRequestException,
} from '@nestjs/common';
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
  findAll(@CurrentSupplier() user: { id: string | number | bigint }) {
    return this.bookingsService.findAllForSupplier(BigInt(user.id));
  }

  // 🟦 GET bookings của user (customer) - phải đặt TRƯỚC route :id để tránh conflict
  @Get('my-booking')
  getMyBooking(@Req() req: { user: { id: string | number | bigint } }) {
    const userId = BigInt(req.user.id);
    return this.bookingsService.findAllForUser(userId);
  }

  // 🟦 GET chi tiết 1 booking
  @Get(':id')
  findOne(
    @Param('id') id: string,
    @CurrentSupplier() user: { id: string | number | bigint },
  ) {
    // Validate id là số trước khi convert
    if (!/^\d+$/.test(id)) {
      throw new BadRequestException('Invalid booking ID');
    }
    return this.bookingsService.findOneForSupplier(BigInt(id), BigInt(user.id));
  }

  // 🟨 PATCH cập nhật trạng thái booking
  @Patch(':id/status')
  updateStatus(
    @Param('id') id: string,
    @Body() dto: UpdateBookingStatusDto,
    @CurrentSupplier() user: { id: string | number | bigint },
  ) {
    // Validate id là số trước khi convert
    if (!/^\d+$/.test(id)) {
      throw new BadRequestException('Invalid booking ID');
    }
    return this.bookingsService.updateStatus(BigInt(id), BigInt(user.id), dto);
  }

  // 🟥 DELETE booking (nếu cần)
  @Delete(':id')
  remove(
    @Param('id') id: string,
    @CurrentSupplier() user: { id: string | number | bigint },
  ) {
    // Validate id là số trước khi convert
    if (!/^\d+$/.test(id)) {
      throw new BadRequestException('Invalid booking ID');
    }
    return this.bookingsService.remove(BigInt(id), BigInt(user.id));
  }

  @Post()
  create(
    @Body() dto: CreateBookingDto,
    @Req() req: { user: { id: string | number | bigint } },
  ) {
    const userId = BigInt(req.user.id);
    return this.bookingsService.createBooking(userId, dto);
  }

  // 🟦 PATCH cập nhật booking với coupon code
  @Patch(':id/coupon')
  applyCoupon(
    @Param('id') id: string,
    @Body('couponCode') couponCode: string,
    @Req() req: { user: { id: string | number | bigint } },
  ) {
    if (!/^\d+$/.test(id)) {
      throw new BadRequestException('Invalid booking ID');
    }
    if (!couponCode) {
      throw new BadRequestException('couponCode is required');
    }
    const userId = BigInt(req.user.id);
    return this.bookingsService.applyCoupon(BigInt(id), userId, couponCode);
  }
}
