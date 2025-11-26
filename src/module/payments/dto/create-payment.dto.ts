import { IsNotEmpty, IsEnum, IsNumber, IsString } from "class-validator";
import { PaymentMethod, PaymentStatus } from "@prisma/client";

export class CreatePaymentDto {
  @IsNotEmpty()
  bookingId: bigint;

  @IsEnum(PaymentMethod)
  method: PaymentMethod;

  @IsNumber()
  amount: number;

  @IsString()
  currency: string;

  @IsEnum(PaymentStatus)
  status: PaymentStatus;
}
