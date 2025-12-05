import { IsOptional, IsString } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

export class UpdateRequestStatusDto {
  @ApiProperty({ description: 'Ghi chú từ admin', required: false })
  @IsOptional()
  @IsString()
  adminNotes?: string;
}

