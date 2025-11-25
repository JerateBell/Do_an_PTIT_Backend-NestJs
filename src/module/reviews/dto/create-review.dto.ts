import { IsInt, IsNotEmpty, IsOptional, IsString, IsArray } from 'class-validator';

export class CreateReviewDto {
  @IsInt()
  bookingId: number;

  @IsInt()
  activityId: number;

  @IsInt()
  rating: number;

  @IsOptional()
  @IsString()
  comment?: string;

  @IsOptional()
  images?: any[];
}
