import { IsEnum, IsNotEmpty, IsObject, ValidateNested } from 'class-validator';
import { Type } from 'class-transformer';
import { RequestType, RequestStatus } from '@prisma/client';
import { ApiProperty } from '@nestjs/swagger';

export class BecomeSupplierRequestData {
  @ApiProperty({ description: 'Tên công ty' })
  companyName: string;

  @ApiProperty({ description: 'Email công ty', required: false })
  businessEmail?: string;

  @ApiProperty({ description: 'Số điện thoại', required: false })
  phone?: string;

  @ApiProperty({ description: 'Địa chỉ', required: false })
  address?: string;

  @ApiProperty({ description: 'Tỉ lệ hoa hồng (%)', required: false, default: 15 })
  commissionRate?: number;
}

export class AddLocationRequestData {
  @ApiProperty({ description: 'Tên location' })
  name: string;

  @ApiProperty({ description: 'Code (cho country)', required: false })
  code?: string; // For country

  @ApiProperty({ description: 'Country code (cho city)', required: false })
  countryCode?: string; // For city

  @ApiProperty({ description: 'City ID (cho destination)', required: false })
  cityId?: number; // For destination

  @ApiProperty({ description: 'Slug', required: false })
  slug?: string; // For destination

  @ApiProperty({ description: 'Image URL', required: false })
  imageUrl?: string; // For destination
}

export class CreateSupplierRequestDto {
  @ApiProperty({ enum: RequestType, description: 'Loại request' })
  @IsEnum(RequestType)
  @IsNotEmpty()
  type: RequestType;

  @ApiProperty({ description: 'Dữ liệu request (JSON object)' })
  @IsObject()
  @IsNotEmpty()
  requestData: BecomeSupplierRequestData | AddLocationRequestData;
}

