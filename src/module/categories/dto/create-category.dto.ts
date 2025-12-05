import {
  IsString,
  IsNotEmpty,
  IsOptional,
  IsNumber,
  IsIn,
  MaxLength,
  MinLength,
} from 'class-validator';
import { Type } from 'class-transformer';
import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { VALID_CATEGORY_NAMES, getValidCategoryNames } from '../constants/category-names.constants';

export class CreateCategoryDto {
  @ApiProperty({
    description: 'Category name (must be one of the valid category names)',
    enum: VALID_CATEGORY_NAMES,
    example: 'Adventure',
  })
  @IsString()
  @IsNotEmpty({ message: 'Category name is required' })
  @IsIn(VALID_CATEGORY_NAMES, {
    message: `Category name must be one of: ${getValidCategoryNames().join(', ')}`,
  })
  name: string;

  @ApiProperty({
    description: 'Unique slug for the category (URL-friendly)',
    example: 'adventure',
    minLength: 2,
    maxLength: 255,
  })
  @IsString()
  @IsNotEmpty({ message: 'Slug is required' })
  @MinLength(2, { message: 'Slug must be at least 2 characters long' })
  @MaxLength(255, { message: 'Slug must not exceed 255 characters' })
  slug: string;

  @ApiPropertyOptional({
    description: 'Parent category ID (for sub-categories)',
    example: 1,
  })
  @IsOptional()
  @IsNumber()
  @Type(() => Number)
  parentId?: number;

  @ApiPropertyOptional({
    description: 'Image URL for the category',
    example: 'https://example.com/images/adventure.jpg',
    maxLength: 500,
  })
  @IsOptional()
  @IsString()
  @MaxLength(500, { message: 'Image URL must not exceed 500 characters' })
  imageUrl?: string;

  @ApiPropertyOptional({
    description: 'Sort order for displaying categories',
    example: 0,
    default: 0,
  })
  @IsOptional()
  @IsNumber()
  @Type(() => Number)
  sortOrder?: number;
}
