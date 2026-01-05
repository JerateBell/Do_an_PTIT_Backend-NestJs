import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from '../prisma/prisma.service';
import * as bcrypt from 'bcrypt';
import { LoginDto } from './dtos/login.dto';
import { RegisterDto } from './dtos/register.dto';
import { User } from '@prisma/client';
import { Profile } from 'passport';
import { BadRequestException, UnauthorizedException } from '@nestjs/common';
import { MailerService } from '@nestjs-modules/mailer';
import { ResetPasswordDto } from './dtos/reset-password.dto';
import * as crypto from 'crypto';
@Injectable()
export class AuthService {
  constructor(
    private jwtService: JwtService,
    private prisma: PrismaService,
    private mailerService: MailerService,
  ) {}

  async validateUser(loginDto: LoginDto): Promise<User> {
    const user = await this.prisma.user.findUnique({
      where: { email: loginDto.email },
    });

    // Không tìm thấy user
    if (!user) {
      throw new UnauthorizedException('Invalid email or password');
    }

    // Tài khoản Google thì không cho login bằng password
    if (!user.passwordHash) {
      throw new BadRequestException(
        'This account uses Google login. Please login with Google',
      );
    }

    // So sánh password
    const isMatch = await bcrypt.compare(loginDto.password, user.passwordHash);
    if (!isMatch) {
      throw new UnauthorizedException('Invalid email or password');
    }

    return user;
  }

  async login(loginDto: LoginDto) {
    const user = await this.validateUser(loginDto);

    if (!user) return null;

    const payload = {
      sub: Number(user.id),
      email: user.email,
      role: user.role,
    };
    return {
      access_token: await this.jwtService.signAsync(payload),
    };
  }

  async register(registerDto: RegisterDto): Promise<User> {
    const existingUser = await this.prisma.user.findUnique({
      where: { email: registerDto.email },
    });

    if (existingUser) {
      throw new Error('User with this email already exists');
    }

    const hashedPassword = await bcrypt.hash(registerDto.password, 10);
    return this.prisma.user.create({
      data: {
        email: registerDto.email,
        passwordHash: hashedPassword,
      },
    });
  }

  async googleLogin(profile: Profile) {
    const { id, emails, displayName, photos } = profile;
    const email = emails?.[0]?.value;
    if (!email) throw new Error('Google account does not contain email!');
    const avatar = photos?.[0]?.value || null;

    const nameParts = displayName.split(' ');
    const firstName = nameParts.shift();
    const lastName = nameParts.join(' ');

    let user = await this.prisma.user.findUnique({ where: { email } });

    if (!user) {
      user = await this.prisma.user.create({
        data: {
          googleId: id,
          email,
          firstName,
          lastName,
          avatar,
          passwordHash: '',
        },
      });
    } else if (!user.googleId) {
      user = await this.prisma.user.update({
        where: { email },
        data: {
          googleId: id,
          avatar,
        },
      });
    }

    const payload = {
      sub: Number(user.id),
      email: user.email,
      role: user.role,
    };
    const token = this.jwtService.sign(payload);

    return { user, access_token: token };
  }

  async forgotPassword(email: string) {
    const user = await this.prisma.user.findUnique({ where: { email } });
    if (!user) {
      throw new BadRequestException('Email không tồn tại trong hệ thống');
    }

    // Tạo token thô và bản băm (hash) của nó
    const resetToken = crypto.randomBytes(32).toString('hex');
    const tokenHash = crypto
      .createHash('sha256')
      .update(resetToken)
      .digest('hex');

    // Lưu token đã hash và thời gian hết hạn (15 phút) vào DB
    await this.prisma.user.update({
      where: { email },
      data: {
        resetPasswordToken: tokenHash,
        resetPasswordExpires: new Date(Date.now() + 15 * 60 * 1000),
      },
    });

    const resetUrl = `http://localhost:5173/reset-password?token=${resetToken}&email=${email}`;

    await this.mailerService.sendMail({
      to: email,
      subject: 'Khôi phục mật khẩu website Du Lịch',
      html: `<h3>Yêu cầu đặt lại mật khẩu</h3>
           <p>Vui lòng click vào đường link dưới đây để đổi mật khẩu (Hiệu lực 15 phút):</p>
           <a href="${resetUrl}">${resetUrl}</a>`,
    });

    return { message: 'Link khôi phục mật khẩu đã được gửi qua email!' };
  }

  async resetPassword(dto: ResetPasswordDto) {
    const { email, token, newPassword } = dto;
    const tokenHash = crypto.createHash('sha256').update(token).digest('hex');

    const user = await this.prisma.user.findFirst({
      where: {
        email,
        resetPasswordToken: tokenHash,
        resetPasswordExpires: { gt: new Date() }, 
      },
    });

    if (!user) {
      throw new BadRequestException('Mã xác nhận không hợp lệ hoặc đã hết hạn');
    }

    const hashedPassword = await bcrypt.hash(newPassword, 10);
    await this.prisma.user.update({
      where: { id: user.id },
      data: {
        passwordHash: hashedPassword,
        resetPasswordToken: null,
        resetPasswordExpires: null,
      },
    });

    return { message: 'Mật khẩu đã được cập nhật thành công!' };
  }
}
