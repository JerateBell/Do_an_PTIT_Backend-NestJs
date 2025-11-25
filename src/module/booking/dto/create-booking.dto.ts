// import { IsString, IsNotEmpty, IsEmail, IsOptional, IsNumber, IsDateString, IsEnum } from 'class-validator';
// import { Type } from 'class-transformer';
// import { BookingStatus, PaymentStatus } from '@prisma/client';

// export class CreateBookingDto {
//   @IsNumber()
//   @Type(() => Number)
//   userId: number;

//   @IsNumber()
//   @Type(() => Number)
//   activityId: number;

//   @IsNumber()
//   @Type(() => Number)
//   scheduleId: number;

//   @IsNumber()
//   @Type(() => Number)
//   supplierId: number;

//   @IsString()
//   @IsNotEmpty()
//   customerName: string;

//   @IsEmail()
//   customerEmail: string;

//   @IsOptional()
//   @IsString()
//   customerPhone?: string;

//   @IsDateString()
//   bookingDate: Date;

//   @IsNumber()
//   @Type(() => Number)
//   participants: number;

//   @IsNumber()
//   @Type(() => Number)
//   subtotal: number;

//   @IsOptional()
//   @IsNumber()
//   @Type(() => Number)
//   discount?: number;

//   @IsNumber()
//   @Type(() => Number)
//   total: number;

//   @IsOptional()
//   @IsString()
//   currency?: string;

//   @IsOptional()
//   @IsEnum(BookingStatus)
//   status?: BookingStatus;

//   @IsOptional()
//   @IsEnum(PaymentStatus)
//   paymentStatus?: PaymentStatus;
// }

// dto/create-booking.dto.ts
import { IsNumber, IsString, IsEmail, IsDateString, IsOptional } from "class-validator";

export class CreateBookingDto {
  @IsNumber()
  activityId: number;

  @IsNumber()
  scheduleId: number;

  @IsNumber()
  supplierId: number;

  @IsString()
  customerName: string;

  @IsEmail()
  customerEmail: string;

  @IsOptional()
  @IsString()
  customerPhone?: string;

  @IsDateString()
  bookingDate: string;

  @IsNumber()
  participants: number;

  @IsNumber()
  subtotal: number;

  @IsNumber()
  discount: number;

  @IsNumber()
  total: number;

  @IsString()
  currency: string;
}
