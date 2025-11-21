import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from '../prisma/prisma.service';
import * as bcrypt from 'bcrypt';
import { LoginDto } from './dtos/login.dto';
import { RegisterDto } from './dtos/register.dto';
import { User } from '@prisma/client';
import { Profile } from 'passport';
import { BadRequestException, UnauthorizedException } from '@nestjs/common';
@Injectable()
export class AuthService {
  constructor(
    private jwtService: JwtService,
    private prisma: PrismaService,
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
          passwordHash: null,
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
}
