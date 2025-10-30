import { Type } from 'class-transformer';
import { IsEnum, IsOptional } from 'class-validator';
import { UserStatus, UserRole } from '@prisma/client';

export class FilterUsersDto {
  @Type(() => Number)
  page: number = 1;

  @Type(() => Number)
  limit: number = 10;

  search?: string;

  @IsOptional()
  @IsEnum(UserRole)
  role?: UserRole;

  @IsOptional()
  @IsEnum(UserStatus)
  status?: UserStatus;
}
