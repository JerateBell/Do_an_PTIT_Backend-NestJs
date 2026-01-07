import {
  Injectable,
  NotFoundException,
  ForbiddenException,
} from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateBookingStatusDto } from './dto/update-booking-status.dto';
import { CreateBookingDto } from './dto/create-booking.dto';

import { FilterBookingDto } from './dto/filter-booking.dto';

import { BadRequestException } from '@nestjs/common';
import { CouponsService } from '../coupons/coupons.service';
import { Coupon } from '@prisma/client';

@Injectable()
export class BookingsService {
  constructor(
    private prisma: PrismaService,
    private couponsService: CouponsService,
  ) {}

  //  Helper: Lấy supplier theo userId
  private async getSupplierByUserId(userId: bigint) {
    const supplier = await this.prisma.supplier.findFirst({
      where: { 
        userId,
        deletedAt: null, // Soft delete filter
      },
    });
    if (!supplier) throw new NotFoundException('Supplier not found');
    return supplier;
  }

  // Lấy tất cả booking của supplier đang đăng nhập
  async findAllForSupplier(userId: bigint) {
    const supplier = await this.getSupplierByUserId(userId);

    return this.prisma.booking.findMany({
      where: {
        supplierId: supplier.id, // ✅ lọc trực tiếp theo supplierId
        deletedAt: null, // Soft delete filter
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

  // Lấy tất cả booking của user (customer) đang đăng nhập
  async findAllForUser(userId: bigint) {
    return this.prisma.booking.findMany({
      where: {
        userId,
        deletedAt: null, // Soft delete filter
      },
      include: {
        activity: {
          include: {
            destination: {
              include: {
                city: {
                  include: {
                    country: true,
                  },
                },
              },
            },
            supplier: {
              select: {
                id: true,
                companyName: true,
                businessEmail: true,
              },
            },
            images: true,
          },
        },
        schedule: true,
        supplier: {
          select: {
            id: true,
            companyName: true,
            businessEmail: true,
          },
        },
        payments: {
          orderBy: {
            createdAt: 'desc',
          },
        },
        reviews: true,
      },
      orderBy: { createdAt: 'desc' },
    });
  }

  //  Lấy chi tiết một booking
  async findOneForSupplier(id: bigint, userId: bigint) {
    const supplier = await this.getSupplierByUserId(userId);

    const booking = await this.prisma.booking.findFirst({
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },

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

  //  Cập nhật trạng thái booking
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

  // 🟦 Cập nhật booking với coupon code
  async applyCoupon(id: bigint, userId: bigint, couponCode: string) {
    // Tìm booking và kiểm tra quyền
    const booking = await this.prisma.booking.findFirst({
      where: {
        id,
        userId,
        deletedAt: null,
      },
    });

    if (!booking) {
      throw new NotFoundException('Booking không tồn tại');
    }

    // Kiểm tra booking chưa thanh toán
    if (booking.paymentStatus === 'paid') {
      throw new BadRequestException('Không thể áp dụng coupon cho booking đã thanh toán');
    }

    // Validate và tính discount từ coupon code (sử dụng logic tương tự createBooking)
    const subtotal = Number(booking.subtotal);
    let discount = 0;
    let appliedCoupon: Coupon | null = null;

    appliedCoupon = await this.prisma.coupon.findFirst({
      where: {
        code: couponCode,
        deletedAt: null,
      },
    });

    if (!appliedCoupon) {
      throw new BadRequestException('Coupon không tồn tại');
    }

    // Check if coupon is private and belongs to the current user
    if (appliedCoupon.userId !== null) {
      if (appliedCoupon.userId !== userId) {
        throw new BadRequestException('Mã giảm giá này không dành cho bạn');
      }
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
        `Tổng tiền tối thiểu để dùng coupon là ${minAmount}`,
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

    const total = Math.max(0, subtotal - discount);

    // Cập nhật booking
    return this.prisma.booking.update({
      where: { id },
      data: {
        couponCode,
        discount,
        total,
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

    await this.prisma.booking.update({ 
      where: { id: booking.id },
      data: { deletedAt: new Date() },
    });

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
      appliedCoupon = await this.prisma.coupon.findFirst({
        where: { 
          code: dto.couponCode,
          deletedAt: null, // Soft delete filter
        },
      });

      if (!appliedCoupon) {
        throw new BadRequestException('Coupon không tồn tại');
      }

      // Check if coupon is private and belongs to the current user
      if (appliedCoupon.userId !== null) {
        if (appliedCoupon.userId !== userId) {
          throw new BadRequestException('Mã giảm giá này không dành cho bạn');
        }
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
          `Tổng tiền tối thiểu để dùng coupon là ${minAmount}`,
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

    if (dto.bookingStatus === 'confirmed' && !dto.scheduleId) {
      throw new BadRequestException(
        'Confirmed booking must have scheduleId'
      );
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
          status:
            dto.bookingStatus === 'confirmed'
              ? 'confirmed'
              : 'pending',

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

  // ===== ADMIN METHODS =====

  // Get all bookings for admin with filters
  async findAllForAdmin(filters?: FilterBookingDto) {
    const where: any = {
      deletedAt: null,
    };

    if (filters?.status) {
      where.status = filters.status;
    }

    if (filters?.paymentStatus) {
      where.paymentStatus = filters.paymentStatus;
    }

    if (filters?.activityId) {
      where.activityId = BigInt(filters.activityId);
    }

    if (filters?.dateFrom || filters?.dateTo) {
      where.bookingDate = {};
      if (filters.dateFrom) {
        where.bookingDate.gte = new Date(filters.dateFrom);
      }
      if (filters.dateTo) {
        where.bookingDate.lte = new Date(filters.dateTo);
      }
    }

    if (filters?.search) {
      where.OR = [
        { bookingRef: { contains: filters.search, mode: 'insensitive' } },
        { customerName: { contains: filters.search, mode: 'insensitive' } },
        { customerEmail: { contains: filters.search, mode: 'insensitive' } },
        { customerPhone: { contains: filters.search, mode: 'insensitive' } },
      ];
    }

    return this.prisma.booking.findMany({
      where,
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
          },
        },
        activity: {
          include: {
            destination: {
              include: {
                city: {
                  include: {
                    country: true,
                  },
                },
              },
            },
            supplier: {
              select: {
                id: true,
                companyName: true,
                businessEmail: true,
              },
            },
          },
        },
        schedule: true,
        supplier: {
          select: {
            id: true,
            companyName: true,
            businessEmail: true,
          },
        },
        payments: true,
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
  }

  // Get one booking detail for admin
  async findOneForAdmin(id: bigint) {
    const booking = await this.prisma.booking.findFirst({
      where: {
        id,
        deletedAt: null,
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
            avatar: true,
          },
        },
        activity: {
          include: {
            destination: {
              include: {
                city: {
                  include: {
                    country: true,
                  },
                },
              },
            },
            supplier: {
              select: {
                id: true,
                companyName: true,
                businessEmail: true,
                phone: true,
              },
            },
            images: true,
          },
        },
        schedule: true,
        supplier: {
          select: {
            id: true,
            companyName: true,
            businessEmail: true,
            phone: true,
          },
        },
        payments: {
          orderBy: {
            createdAt: 'desc',
          },
        },
        reviews: true,
      },
    });

    if (!booking) {
      throw new NotFoundException('Booking not found');
    }

    return booking;
  }

  // Update booking status for admin
  async updateStatusForAdmin(id: bigint, dto: UpdateBookingStatusDto) {
    const booking = await this.findOneForAdmin(id);

    return this.prisma.booking.update({
      where: { id: booking.id },
      data: {
        ...(dto.status && { status: dto.status }),
        ...(dto.paymentStatus && { paymentStatus: dto.paymentStatus }),
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
          },
        },
        activity: {
          include: {
            destination: true,
            supplier: {
              select: {
                id: true,
                companyName: true,
              },
            },
          },
        },
        schedule: true,
        supplier: {
          select: {
            id: true,
            companyName: true,
          },
        },
        payments: true,
      },
    });
  }

  // Delete booking for admin (soft delete)
  async removeForAdmin(id: bigint) {
    const booking = await this.findOneForAdmin(id);

    await this.prisma.booking.update({
      where: { id: booking.id },
      data: { deletedAt: new Date() },
    });

    return { message: 'Booking deleted successfully' };
  }
}
