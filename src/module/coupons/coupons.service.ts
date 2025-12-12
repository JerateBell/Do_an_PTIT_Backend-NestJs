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
    return await this.prisma.coupon.create({
      data: {
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
      },
    });
  }

  async list(onlyActive?: boolean) {
    const where: any = {};

    if (onlyActive !== undefined) where.isActive = onlyActive;

    return this.prisma.coupon.findMany({
      where,

      orderBy: { createdAt: 'desc' },
    });
  }

  async getByCode(code: string) {
    const coupon = await this.prisma.coupon.findUnique({ where: { code } });

    if (!coupon) throw new NotFoundException('Coupon not found');

    return coupon;
  }

  // validate and compute discount (does NOT increment usedCount)

  async apply(code: string, amount: number) {
    const coupon = await this.prisma.coupon.findUnique({ where: { code } });

    if (!coupon) throw new NotFoundException('Coupon not found');

    if (!coupon.isActive) throw new BadRequestException('Coupon is not active');

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

    discount = Math.min(discount, amount); // không vượt quá amount

    const finalAmount = Math.max(0, amount - discount); // không âm!

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
      const coupon = await tx.coupon.findUnique({ where: { code } });

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
}
