import { Type } from 'class-transformer';
import { IsEnum, IsOptional } from 'class-validator';
import { UserStatus } from '@prisma/client';

export class FilterUsersDto {
  @Type(() => Number)
  page: number = 1;

  @Type(() => Number)
  limit: number = 10;

  search?: string;

  role?: string;

  @IsOptional()
  @IsEnum(UserStatus)
  status?: UserStatus;
}
