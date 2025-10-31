import { ApiProperty } from '@nestjs/swagger';
import { IsDateString, IsInt, IsOptional, IsString, IsNumber } from 'class-validator';

export class CreateActivityScheduleDto {
  @ApiProperty({ example: '2025-10-25', description: 'Ngày diễn ra hoạt động' })
  @IsDateString()
  date: string;

  @ApiProperty({ example: '09:00', required: false })
  @IsOptional()
  @IsString()
  timeSlot?: string;

  @ApiProperty({ example: 20 })
  @IsInt()
  availableSpots: number;

  @ApiProperty({ example: 100.00, required: false })
  @IsOptional()
  @IsNumber()
  price?: number;
}
