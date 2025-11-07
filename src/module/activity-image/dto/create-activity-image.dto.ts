import { IsString, IsBoolean, IsInt, IsOptional } from 'class-validator';

export class CreateActivityImageDto {
  @IsString()
  imageUrl: string;

  @IsOptional()
  @IsBoolean()
  isPrimary?: boolean;

  @IsOptional()
  @IsInt()
  sortOrder?: number;
}
