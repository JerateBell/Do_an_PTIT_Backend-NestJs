import { Injectable, NotFoundException, ForbiddenException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';

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
}
