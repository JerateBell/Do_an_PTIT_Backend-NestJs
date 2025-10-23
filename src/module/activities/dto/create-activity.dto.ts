import { IsString, IsNotEmpty, IsOptional, IsNumber, IsBoolean, IsEnum, IsArray } from 'class-validator';
import { Type } from 'class-transformer';
import { ActivityStatus } from '@prisma/client';

export class CreateActivityDto {
  @IsNumber()
  @Type(() => Number)
  supplierId: number;

  @IsNumber()
  @Type(() => Number)
  destinationId: number;

  @IsNumber()
  @Type(() => Number)
  categoryId: number;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsNotEmpty()
  slug: string;

  @IsOptional()
  @IsString()
  description?: string;

  @IsOptional()
  @IsArray()
  highlights?: string[];

  @IsOptional()
  @IsNumber()
  duration?: number;

  @IsNumber()
  @Type(() => Number)
  price: number;

  @IsString()
  @IsOptional()
  currency?: string;

  @IsOptional()
  @IsNumber()
  maxParticipants?: number;

  @IsOptional()
  @IsNumber()
  rating?: number;

  @IsOptional()
  @IsNumber()
  reviewCount?: number;

  @IsOptional()
  @IsBoolean()
  instantConfirmation?: boolean;

  @IsOptional()
  @IsBoolean()
  freeCancellation?: boolean;

  // ✅ Sử dụng enum từ Prisma
  @IsOptional()
  @IsEnum(ActivityStatus)
  status?: ActivityStatus;

  @IsOptional()
  @IsBoolean()
  featured?: boolean;
}
