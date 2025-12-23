import { Type } from 'class-transformer';
import { IsOptional, IsNumber, Min } from 'class-validator';

export class FilterSuppliersDto {
  @Type(() => Number)
  @IsOptional()
  @IsNumber()
  @Min(1)
  page: number = 1;

  @Type(() => Number)
  @IsOptional()
  @IsNumber()
  @Min(1)
  limit: number = 10;
}

