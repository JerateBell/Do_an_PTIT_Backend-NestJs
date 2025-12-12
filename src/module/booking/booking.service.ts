import {
  Injectable,
  NotFoundException,
  ForbiddenException,
} from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service';

import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';

import { randomBytes } from 'crypto';

import { CreateBookingDto } from './dto/create-booking.dto';

import { BadRequestException } from '@nestjs/common';

import { CouponsService } from '../coupons/coupons.service';

import { Coupon } from '@prisma/client';

import { Decimal } from '@prisma/client/runtime/library';

@Injectable()
export class BookingsService {
  constructor(
    private prisma: PrismaService,

    private couponsService: CouponsService,
  ) {}

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

  async createBooking(userId: bigint, dto: CreateBookingDto) {
    const subtotal = Number(dto.subtotal);

    if (isNaN(subtotal)) {
      throw new BadRequestException('Subtotal không hợp lệ');
    }

    let discount = 0;

    let appliedCoupon: Coupon | null = null;

    // ====== CHECK COUPON ======

    if (dto.couponCode) {
      appliedCoupon = await this.prisma.coupon.findUnique({
        where: { code: dto.couponCode },
      });

      if (!appliedCoupon) {
        throw new BadRequestException('Coupon không tồn tại');
      }

      const now = new Date();

      if (
        !appliedCoupon.isActive ||
        appliedCoupon.validFrom > now ||
        appliedCoupon.validTo < now
      ) {
        throw new BadRequestException('Coupon không hợp lệ hoặc đã hết hạn');
      }

      if (
        appliedCoupon.usageLimit &&
        appliedCoupon.usedCount >= appliedCoupon.usageLimit
      ) {
        throw new BadRequestException('Coupon đã hết lượt sử dụng');
      }

      const minAmount = Number(appliedCoupon.minAmount);

      if (subtotal < minAmount) {
        throw new BadRequestException(
          `Tổng tiền tối thiểu để dùng coupon là ${appliedCoupon.minAmount}`,
        );
      }

      // Tính discount

      if (appliedCoupon.discountType === 'percentage') {
        discount = (subtotal * Number(appliedCoupon.discountValue)) / 100;

        if (appliedCoupon.maxDiscount) {
          discount = Math.min(discount, Number(appliedCoupon.maxDiscount));
        }
      } else {
        discount = Number(appliedCoupon.discountValue);
      }
    }

    const total = Math.max(0, subtotal - discount);

    const bookingRef = this.generateBookingRef();

    const result = await this.prisma.$transaction(async (tx) => {
      const booking = await tx.booking.create({
        data: {
          bookingRef,

          userId,

          activityId: dto.activityId,

          scheduleId: dto.scheduleId,

          supplierId: dto.supplierId,

          customerName: dto.customerName,

          customerEmail: dto.customerEmail,

          customerPhone: dto.customerPhone || '',

          bookingDate: new Date(dto.bookingDate),

          participants: dto.participants,

          subtotal,

          discount,

          total,

          couponCode: dto.couponCode || null,

          currency: dto.currency || 'VND',

          status: 'pending',

          paymentStatus: 'pending',
        },
      });

      if (appliedCoupon) {
        await tx.coupon.update({
          where: { id: appliedCoupon.id },

          data: { usedCount: appliedCoupon.usedCount + 1 },
        });
      }

      return booking;
    });

    return result;
  }
}
