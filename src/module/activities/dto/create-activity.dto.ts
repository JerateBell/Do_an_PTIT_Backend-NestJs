import {
  IsString,
  IsNotEmpty,
  IsOptional,
  IsNumber,
  IsBoolean,
  IsEnum,
  IsArray,
} from 'class-validator';
import { Type } from 'class-transformer';
import { ActivityStatus } from '@prisma/client';

export class CreateActivityDto {
  @IsNumber()
  @Type(() => Number)
  destinationId: number;

  @IsNumber()
  @Type(() => Number)
  categoryId: number;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsNotEmpty()
  slug: string;

  @IsOptional()
  @IsString()
  description?: string;

  @IsOptional()
  @IsArray()
  highlights?: string[];

  @IsOptional()
  @IsNumber()
  duration?: number;

  @IsNumber()
  @Type(() => Number)
  price: number;

  @IsOptional()
  @IsString()
  currency?: string;

  @IsOptional()
  @IsNumber()
  maxParticipants?: number;

  @IsOptional()
  @IsBoolean()
  instantConfirmation?: boolean;

  @IsOptional()
  @IsBoolean()
  freeCancellation?: boolean;

  @IsOptional()
  @IsEnum(ActivityStatus)
  status?: ActivityStatus;

  @IsOptional()
  @IsBoolean()
  featured?: boolean;
}
