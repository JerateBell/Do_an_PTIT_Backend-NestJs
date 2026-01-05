import {
  Injectable,
  NotFoundException,
  BadRequestException,
} from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class CouponsService {
  constructor(private prisma: PrismaService) {}

  async create(dto: any) {
    console.log('LOG [Create Coupon]: DTO nhận được:', dto);
    const dataToCreate = {
      code: dto.code,
      name: dto.name,
      discountType: dto.discountType,
      discountValue: dto.discountValue,
      minAmount: dto.minAmount ?? 0,
      maxDiscount: dto.maxDiscount ?? null,
      usageLimit: dto.usageLimit ?? null,
      usedCount: 0,
      validFrom: new Date(dto.validFrom),
      validTo: new Date(dto.validTo),
      isActive: dto.isActive ?? true,
      userId: dto.userId ? BigInt(dto.userId) : null,
    };
    console.log('LOG [Create Coupon]: Dữ liệu chuẩn bị gửi:', dataToCreate);

    try {
      const result = await this.prisma.coupon.create({
        data: dataToCreate,
      });
      console.log('LOG [Create Coupon]: Coupon tạo thành công:', result);
      return result;
    } catch (error) {
      console.error('LOG [Create Coupon]: LỖI KHI TẠO:', error);
      if (error.code === 'P2002') {
        throw new BadRequestException(`Mã ${dto.code} đã tồn tại.`);
      }

      throw error;
    }
  }

  async list(onlyActive?: boolean, filter?: { page?: number; limit?: number }) {
    const { page = 1, limit = 10 } = filter || {};
    const skip = (page - 1) * limit;

    const where: any = {
      deletedAt: null, // Soft delete filter
    };

    if (onlyActive !== undefined) where.isActive = onlyActive;

    const [coupons, total] = await Promise.all([
      this.prisma.coupon.findMany({
        where,
        skip,
        take: limit,
        orderBy: { createdAt: 'desc' },
      }),
      this.prisma.coupon.count({ where }),
    ]);

    return {
      coupons,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  async getByCode(code: string) {
    const coupon = await this.prisma.coupon.findFirst({ 
      where: { 
        code,
        deletedAt: null, // Soft delete filter
      },
    });

    if (!coupon) throw new NotFoundException('Coupon not found');

    return coupon;
  }

  /**
   * Get active coupons for a user
   * - If userId provided: return public coupons + user's private coupons
   * - If no userId: return only public coupons
   */
  async listActive(userId?: bigint) {
    const coupons = await this.prisma.coupon.findMany({
      where: {
        deletedAt: null, // Soft delete filter
        isActive: true,
        OR: [
          { userId: null }, // Public coupons
          ...(userId ? [{ userId: userId }] : []), // User's private coupons (if logged in)
        ],
      },
      select: {
        id: true,
        code: true,
        name: true,
        discountType: true,
        discountValue: true,
        maxDiscount: true,
        minAmount: true,
        validTo: true,
        isActive: true,
        userId: true,
      },
      orderBy: { validTo: 'asc' },
    });

    return coupons.map((c) => ({
      ...c,
      id: Number(c.id),
      userId: c.userId ? Number(c.userId) : null,
    }));
  }

  /**
   * Apply a coupon to an amount
   * - Public coupon (userId = null): anyone can use
   * - Private coupon (userId != null): only that user can use
   */
  async apply(code: string, amount: number, userId?: bigint) {
    const coupon = await this.prisma.coupon.findFirst({ 
      where: { 
        code,
        deletedAt: null, // Soft delete filter
      },
    });

    if (!coupon) throw new NotFoundException('Coupon not found');

    if (!coupon.isActive) throw new BadRequestException('Coupon is not active');

    // Check if coupon is private and belongs to the current user
    if (coupon.userId !== null) {
      if (!userId) {
        throw new BadRequestException(
          'Bạn cần đăng nhập để sử dụng mã giảm giá này',
        );
      }
      if (coupon.userId !== userId) {
        throw new BadRequestException('Mã giảm giá này không dành cho bạn');
      }
    }

    const now = new Date();

    if (coupon.validFrom && now < coupon.validFrom)
      throw new BadRequestException('Coupon not yet valid');

    if (coupon.validTo && now > coupon.validTo)
      throw new BadRequestException('Coupon expired');

    if (coupon.usageLimit && coupon.usedCount >= coupon.usageLimit)
      throw new BadRequestException('Coupon usage limit reached');

    const minAmount = Number(coupon.minAmount);

    if (minAmount > 0 && amount < minAmount)
      throw new BadRequestException(`Minimum order amount is ${minAmount}`);

    let discount = 0;

    if (coupon.discountType === 'percentage') {
      discount = (amount * Number(coupon.discountValue)) / 100;

      if (coupon.maxDiscount) {
        const max = Number(coupon.maxDiscount);

        discount = Math.min(discount, max);
      }
    } else {
      discount = Number(coupon.discountValue);
    }

    discount = Math.min(discount, amount);

    const finalAmount = Math.max(0, amount - discount);

    return {
      valid: true,
      code: coupon.code,
      discount,
      finalAmount,
      coupon,
    };
  }

  async consume(code: string) {
    return this.prisma.$transaction(async (tx) => {
      const coupon = await tx.coupon.findFirst({ 
        where: { 
          code,
          deletedAt: null, // Soft delete filter
        },
      });

      if (!coupon) throw new NotFoundException('Coupon not found');

      if (!coupon.isActive) throw new BadRequestException('Coupon not active');

      if (coupon.usageLimit && coupon.usedCount >= coupon.usageLimit)
        throw new BadRequestException('Coupon usage limit reached');

      return tx.coupon.update({
        where: { code },

        data: { usedCount: { increment: 1 } },
      });
    });
  }
  async delete(code: string) {
    try {
      // Tìm kiếm và soft delete Coupon dựa trên code duy nhất
      const deletedCoupon = await this.prisma.coupon.update({
        where: { code: code }, // Sử dụng unique field 'code'
        data: { deletedAt: new Date() },
      });
      console.log(`LOG: Coupon ${code} đã được xóa thành công.`);
      return deletedCoupon;
    } catch (error) {
      // Prisma sẽ ném lỗi P2025 nếu không tìm thấy bản ghi để xóa
      if (error.code === 'P2025') {
        throw new NotFoundException(`Không tìm thấy Coupon với mã: ${code}`);
      } // Xử lý các lỗi khác (ví dụ: lỗi Foreign Key nếu Coupon đang được sử dụng)
      if (error.code === 'P2003') {
        throw new BadRequestException(
          `Không thể xóa Coupon ${code} vì nó đang được sử dụng trong các Booking.`,
        );
      }

      throw error;
    }
  }
}
