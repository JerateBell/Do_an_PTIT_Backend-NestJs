import { Controller, Get, Post, Body, Patch, Param, Delete, HttpException, HttpStatus } from '@nestjs/common';
import { CreateBookingDto } from './dto/create-booking.dto';
import { UpdateBookingDto } from './dto/update-booking.dto';
import { BookingsService } from './booking.service';

@Controller('bookings')
export class BookingsController {
  constructor(private readonly bookingsService: BookingsService) {}

  @Post()
  async create(@Body() dto: CreateBookingDto) {
    if (dto.total < 0 || dto.subtotal < 0) {
      throw new HttpException('Giá trị tiền không hợp lệ', HttpStatus.BAD_REQUEST);
    }
    if (dto.participants < 1) {
      throw new HttpException('Số lượng người tham gia phải >= 1', HttpStatus.BAD_REQUEST);
    }
    if (dto.discount && dto.discount > dto.subtotal) {
      throw new HttpException('Discount không thể lớn hơn subtotal', HttpStatus.BAD_REQUEST);
    }

    return this.bookingsService.create(dto);
  }

  @Get()
  findAll() {
    return this.bookingsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.bookingsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateBookingDto) {
    return this.bookingsService.update(+id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.bookingsService.remove(+id);
  }
}
