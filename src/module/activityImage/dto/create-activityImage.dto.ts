import {
  IsBoolean,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsUrl,
} from 'class-validator';

export class CreateActivityImageDto {
  @IsInt()
  activityId: number;

  @IsString()
  @IsNotEmpty()
  @IsUrl()
  imageUrl: string;

  @IsBoolean()
  @IsOptional()
  isPrimary?: boolean;

  @IsInt()
  @IsOptional()
  sortOrder?: number;
}
