import { BookingStatus } from '@prisma/client';
import {
  IsNumber,
  IsString,
  IsEmail,
  IsDateString,
  IsNotEmpty,
  IsOptional,
  Min,
  IsEnum,
} from 'class-validator';

export class CreateBookingDto {
  @IsNumber()
  @IsNotEmpty()
  activityId: number;

  @IsNumber()
  @IsNotEmpty()
  scheduleId: number;

  @IsNumber()
  @IsNotEmpty()
  supplierId: number;

  @IsString()
  @IsNotEmpty()
  customerName: string;

  @IsEmail()
  @IsNotEmpty()
  customerEmail: string;

  @IsString()
  @IsOptional()
  customerPhone?: string;

  @IsDateString()
  @IsNotEmpty()
  bookingDate: string;

  @IsNumber()
  @IsNotEmpty()
  @Min(1)
  participants: number;

  @IsNumber()
  @IsNotEmpty()
  @Min(0)
  subtotal: number;

  @IsString()
  @IsOptional()
  couponCode?: string;

  @IsString()
  @IsOptional()
  @IsNotEmpty()
  currency?: string;

  bookingStatus?: 'pending' | 'confirmed';
}
