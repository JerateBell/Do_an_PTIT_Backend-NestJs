import { IsEmail, IsEnum, IsOptional, IsString, MinLength } from 'class-validator';
import { UserStatus } from '@prisma/client';

export class CreateUserDto {
  @IsEmail()
  email: string;

  @IsString()
  @MinLength(6)
  @IsOptional()
  password?: string;

  @IsString()
  @IsOptional()
  firstName?: string;

  @IsString()
  @IsOptional()
  lastName?: string;

  @IsString()
  @IsOptional()
  phone?: string;

  @IsString()
  @IsOptional()
  avatar?: string;

  @IsString()
  @IsOptional()
  role?: string;

  @IsEnum(UserStatus)
  @IsOptional()
  status?: UserStatus;
}
