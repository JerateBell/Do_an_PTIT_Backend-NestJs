import { IsEnum, IsOptional, IsNumber, Min } from 'class-validator';
import { Type } from 'class-transformer';
import { RequestType, RequestStatus } from '@prisma/client';
import { ApiProperty } from '@nestjs/swagger';

export class FilterRequestsDto {
  @ApiProperty({ enum: RequestType, required: false, description: 'Lọc theo loại request' })
  @IsOptional()
  @IsEnum(RequestType)
  type?: RequestType;

  @ApiProperty({ enum: RequestStatus, required: false, description: 'Lọc theo trạng thái' })
  @IsOptional()
  @IsEnum(RequestStatus)
  status?: RequestStatus;

  @Type(() => Number)
  @IsOptional()
  @IsNumber()
  @Min(1)
  @ApiProperty({ required: false, default: 1, description: 'Số trang' })
  page: number = 1;

  @Type(() => Number)
  @IsOptional()
  @IsNumber()
  @Min(1)
  @ApiProperty({ required: false, default: 10, description: 'Số lượng mỗi trang' })
  limit: number = 10;
}

