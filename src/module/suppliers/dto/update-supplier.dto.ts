<<<<<<< HEAD
import { PartialType } from '@nestjs/mapped-types';
import { CreateSupplierDto } from './create-supplier.dto';
import { IsOptional, IsNumber, Min, Max } from 'class-validator';
import { Type } from 'class-transformer';

export class UpdateSupplierDto extends PartialType(CreateSupplierDto) {
  @IsOptional()
  @IsNumber()
  @Type(() => Number)
  @Min(0)
  @Max(100)
  commissionRate?: number;
=======
export class UpdateSupplierDto {
  companyName?: string;
  businessEmail?: string;
  phone?: string;
  address?: string;
  commissionRate?: number;
  userId?: number;
>>>>>>> main
}
