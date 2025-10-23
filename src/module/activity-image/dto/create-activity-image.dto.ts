import { IsInt, IsString, IsBoolean, IsOptional, MaxLength } from 'class-validator';

export class CreateActivityImageDto {
  @IsInt()
  activityId: number;

  @IsString()
  @MaxLength(500)
  imageUrl: string;

  @IsOptional()
  @IsBoolean()
  isPrimary?: boolean;

  @IsOptional()
  @IsInt()
  sortOrder?: number;
}
