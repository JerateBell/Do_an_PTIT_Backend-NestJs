import {
  IsString,
  IsNotEmpty,
  IsNumber,
  IsDateString,
  IsEnum,
  IsOptional,
  Min,
  IsBoolean,
} from 'class-validator';

enum DiscountType {
  percentage = 'percentage',
  fixed = 'fixed',
}

export class CreateCouponDto {
  @IsString()
  @IsNotEmpty()
  code: string;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsEnum(DiscountType)
  @IsNotEmpty()
  discountType: DiscountType;

  @IsNumber()
  @IsNotEmpty()
  @Min(0)
  discountValue: number;

  @IsNumber()
  @IsOptional()
  @Min(0)
  minAmount?: number;

  @IsNumber()
  @IsOptional()
  @Min(0)
  maxDiscount?: number;

  @IsNumber()
  @IsOptional()
  @Min(1)
  usageLimit?: number;

  @IsDateString()
  @IsOptional()
  validFrom?: Date;

  @IsDateString()
  @IsOptional()
  validTo?: Date;

  @IsBoolean()
  @IsOptional()
  isActive?: boolean;

  // null = public coupon, có userId = coupon riêng cho user đó
  @IsNumber()
  @IsOptional()
  userId?: number;
}
