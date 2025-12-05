import { IsEnum, IsOptional } from 'class-validator';
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
}

