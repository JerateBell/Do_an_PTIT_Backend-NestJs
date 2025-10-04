import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from '../prisma/prisma.service';
import * as bcrypt from 'bcrypt';
import { LoginDto } from './dtos/login.dto';
import { RegisterDto } from './dtos/register.dto';
import { User } from '@prisma/client';

@Injectable()
export class AuthService {
  constructor(
    private jwtService: JwtService,
    private prisma: PrismaService,
  ) {}

  async validateUser(loginDto: LoginDto): Promise<User | null> {
    const user: User | null = await this.prisma.user.findUnique({
      where: { email: loginDto.email },
    });

    if (!user) return null;

    const isMatch: boolean = await bcrypt.compare(
      loginDto.password,
      user.passwordHash,
    );

    if (!isMatch) return null;

    return user;
  }

  async login(loginDto: LoginDto) {
    const user: User | null = await this.validateUser(loginDto);

    if (!user) return null;

    const payload = { email: user.email, sub: user.id, role: user.role };
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
}
