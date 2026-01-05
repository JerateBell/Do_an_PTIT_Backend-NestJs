import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsNotEmpty, MinLength } from 'class-validator';

export class ResetPasswordDto {
  @IsNotEmpty()
  @IsEmail()
  @ApiProperty()
  email: string;

  @IsNotEmpty()
  @ApiProperty({ description: 'Mã token nhận được từ email' })
  token: string;

  @IsNotEmpty()
  @MinLength(8)
  @ApiProperty({ description: 'Mật khẩu mới' })
  newPassword: string;
}
