import { IsString, IsNotEmpty, IsOptional, IsEmail, IsNumber, IsPhoneNumber, Min, Max } from 'class-validator';
import { Type } from 'class-transformer';

export class CreateSupplierDto {
  @IsString()
  @IsNotEmpty()
  companyName: string;
<<<<<<< HEAD

  @IsEmail()
  email: string;

  @IsOptional()
  @IsPhoneNumber('VN', { message: 'Số điện thoại không hợp lệ' })
=======
  businessEmail?: string;
>>>>>>> main
  phone?: string;

  @IsOptional()
  @IsString()
  address?: string;

  @IsOptional()
  @IsNumber()
  @Type(() => Number)
  @Min(0)
  @Max(100)
  commissionRate?: number;

  @IsNumber()
  @Type(() => Number)
  userId: number;
}
