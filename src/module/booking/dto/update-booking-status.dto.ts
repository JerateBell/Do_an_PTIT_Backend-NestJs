import { IsEnum, IsOptional } from "class-validator";
import { BookingStatus, PaymentStatus } from "@prisma/client";

export class UpdateBookingStatusDto {
  @IsOptional()
  @IsEnum(BookingStatus)
  status?: BookingStatus;

  @IsOptional()
  @IsEnum(PaymentStatus)
  paymentStatus?: PaymentStatus;
}
