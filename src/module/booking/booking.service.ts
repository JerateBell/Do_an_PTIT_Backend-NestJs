import { Injectable, NotFoundException, ForbiddenException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';
import { randomBytes } from 'crypto';
import { CreateBookingDto } from './dto/create-booking.dto';

@Injectable()
export class BookingsService {
  constructor(private prisma: PrismaService) {}

  // ✅ Helper: Lấy supplier theo userId
  private async getSupplierByUserId(userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({
      where: { userId },
    });
    if (!supplier) throw new NotFoundException('Supplier not found');
    return supplier;
  }

  // 🟩 Lấy tất cả booking của supplier đang đăng nhập
  async findAllForSupplier(userId: bigint) {
    const supplier = await this.getSupplierByUserId(userId);

    return this.prisma.booking.findMany({
      where: {
        supplierId: supplier.id, // ✅ lọc trực tiếp theo supplierId
      },
      include: {
        user: true,
        activity: true,
        schedule: true,
        payments: true,
      },
      orderBy: { createdAt: 'desc' },
    });
  }

  // 🟦 Lấy chi tiết một booking
  async findOneForSupplier(id: bigint, userId: bigint) {
    const supplier = await this.getSupplierByUserId(userId);

    const booking = await this.prisma.booking.findUnique({
      where: { id },
      include: {
        user: true,
        activity: true,
        schedule: true,
        payments: true,
      },
    });

    if (!booking) throw new NotFoundException('Booking not found');
    if (booking.supplierId !== supplier.id) {
      throw new ForbiddenException('You do not have access to this booking');
    }

    return booking;
  }

  // 🟨 Cập nhật trạng thái booking
  async updateStatus(id: bigint, userId: bigint, dto: UpdateBookingStatusDto) {
    const booking = await this.findOneForSupplier(id, userId);

    return this.prisma.booking.update({
      where: { id: booking.id },
      data: {
        ...(dto.status && { status: dto.status }),
        ...(dto.paymentStatus && { paymentStatus: dto.paymentStatus }),
      },
      include: {
        activity: true,
        schedule: true,
      },
    });
  }

  // 🟥 Xóa booking (nếu cần)
  async remove(id: bigint, userId: bigint) {
    const booking = await this.findOneForSupplier(id, userId);
    await this.prisma.booking.delete({ where: { id: booking.id } });
    return { message: 'Booking deleted successfully' };
  }

  private generateBookingRef() {
    const rand = Math.floor(1000 + Math.random() * 9000); // 4 số
    return `BK${Date.now().toString().slice(-8)}${rand}`; // tổng < 20 ký tự
  }

  //  Tạo booking mới (cho user)
  async createBooking(dto: CreateBookingDto, userId: number) {
    // Kiểm tra activity có tồn tại không
    const activity = await this.prisma.activity.findUnique({
      where: { id: dto.activityId }
    });

    if (!activity) {
      throw new NotFoundException("Activity not found");
    }

    // Kiểm tra schedule có hợp lệ
    const schedule = await this.prisma.activitySchedule.findUnique({
      where: { id: dto.scheduleId }
    });

    if (!schedule) {
      throw new NotFoundException("Schedule not found");
    }

    const bookingRef = this.generateBookingRef();

    return this.prisma.booking.create({
      data: {
        bookingRef,
        userId,
        activityId: dto.activityId,
        supplierId: dto.supplierId,
        scheduleId: dto.scheduleId,

        customerName: dto.customerName,
        customerEmail: dto.customerEmail,
        customerPhone: dto.customerPhone,

        bookingDate: new Date(dto.bookingDate),
        participants: dto.participants,

        subtotal: dto.subtotal,
        discount: dto.discount,
        total: dto.total,
        currency: dto.currency,

        status: "pending",
        paymentStatus: "pending",
      }
    });
  }
}
