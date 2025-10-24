import {
  IsInt,
  IsOptional,
  IsString,
  IsDateString,
  IsNumber,
  Min,
} from 'class-validator';
import { BookedLessThanAvailable } from '../validators/booked-less-than-available.validator';

export class CreateActivityScheduleDto {
  @IsInt()
  activityId: number;

  @IsDateString()
  date: string; // ISO format: "2025-10-24"

  @IsOptional()
  @IsString()
  timeSlot?: string; // e.g. "09:00"

  @IsInt()
  @Min(1)
  availableSpots: number;

  @IsOptional()
  @IsInt()
  @Min(0)
  @BookedLessThanAvailable({
    message: 'bookedSpots cannot be greater than availableSpots',
  })
  bookedSpots?: number;

  @IsOptional()
  @IsNumber({ maxDecimalPlaces: 2 })
  @Min(0)
  price?: number;
}
