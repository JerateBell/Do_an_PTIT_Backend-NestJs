import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateBookingDto } from './dto/create-booking.dto';
import { UpdateBookingDto } from './dto/update-booking.dto';
import { BookingStatus, PaymentStatus } from '@prisma/client';
import { nanoid } from 'nanoid';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class BookingsService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateBookingDto) {
    // ✅ Sinh mã bookingRef ngắn, duy nhất
    const bookingRef = `BK${nanoid(8).toUpperCase()}`;

    return this.prisma.booking.create({
      data: {
        bookingRef,
        userId: dto.userId,
        activityId: dto.activityId,
        scheduleId: dto.scheduleId,
        supplierId: dto.supplierId,
        customerName: dto.customerName,
        customerEmail: dto.customerEmail,
        customerPhone: dto.customerPhone,
        bookingDate: new Date(dto.bookingDate),
        participants: dto.participants,
        subtotal: dto.subtotal,
        discount: dto.discount ?? 0,
        total: dto.total,
        currency: dto.currency ?? 'USD',
        status: dto.status ?? BookingStatus.pending,
        paymentStatus: dto.paymentStatus ?? PaymentStatus.pending,
      },
    });
  }

  findAll() {
    return this.prisma.booking.findMany({
      include: {
        activity: true,
        schedule: true,
        supplier: true,
        user: true,
      },
    });
  }

  async findOne(id: number) {
    const booking = await this.prisma.booking.findUnique({
      where: { id },
      include: {
        activity: true,
        schedule: true,
        supplier: true,
        user: true,
      },
    });
    if (!booking) throw new NotFoundException('Không tìm thấy booking');
    return booking;
  }

  async update(id: number, dto: UpdateBookingDto) {
    await this.findOne(id);
    return this.prisma.booking.update({
      where: { id },
      data: { ...dto },
    });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.booking.delete({ where: { id } });
  }
}
