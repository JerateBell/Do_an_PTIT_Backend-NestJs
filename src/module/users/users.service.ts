import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from '../prisma/prisma.service';
import { FilterUsersDto } from './dto/filter-users.dto';
import { Prisma } from '@prisma/client';
import * as bcrypt from 'bcrypt';
import {BadRequestException, UnauthorizedException } from '@nestjs/common';
@Injectable()
export class UsersService {
  constructor(private readonly prisma: PrismaService) {}

  async create(createUserDto: CreateUserDto) {
    const { password, ...userData } = createUserDto;
    
    // Hash password or use default
    const passwordHash = password 
      ? await bcrypt.hash(password, 10)
      : await bcrypt.hash('password123', 10); // Default password

    const user = await this.prisma.user.create({
      data: {
        ...userData,
        passwordHash,
      },
      select: {
        id: true,
        email: true,
        firstName: true,
        lastName: true,
        phone: true,
        avatar: true,
        role: true,
        status: true,
        createdAt: true,
      },
    });

    return user;
  }

  async findByFilterAdmin(filter: FilterUsersDto) {
    const { page, limit, search, role, status } = filter;
    console.log(filter);
    const skip = (page - 1) * limit;
    const where: Prisma.UserWhereInput = {
      ...(search
        ? {
            OR: [
              { firstName: { contains: search, mode: 'insensitive' } },
              { lastName: { contains: search, mode: 'insensitive' } },
              { email: { contains: search, mode: 'insensitive' } },
            ],
          }
        : {}),
      ...(role ? { role } : {}),
      ...(status ? { status } : {}),
    };

    const [users, total] = await Promise.all([
      this.prisma.user.findMany({
        where,
        skip,
        take: limit,
        select: {
          id: true,
          firstName: true,
          lastName: true,
          email: true,
          phone: true,
          avatar: true,
          role: true,
          status: true,
          createdAt: true,
        },
        orderBy: { createdAt: 'desc' },
      }),
      this.prisma.user.count({ where }),
    ]);

    return {
      users,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  async updatePassword(userId: number, dto: UpdatePasswordDto) {
    const user = await this.prisma.user.findUnique({
      where: { id: userId },
    });

    if (!user) {
      throw new BadRequestException('Không tìm thấy người dùng');
    }

    if (!user.passwordHash) {
      throw new BadRequestException(
        'Tài khoản này không có mật khẩu. Vui lòng đăng nhập bằng Google hoặc thiết lập mật khẩu trước.',
      );
    }

    const isMatch: boolean = await bcrypt.compare(
      dto.oldPassword,
      user.passwordHash,
    );
    if (!isMatch) {
      throw new UnauthorizedException('Mật khẩu cũ không chính xác');
    }

    const hashed = await bcrypt.hash(dto.newPassword, 10);
    await this.prisma.user.update({
      where: { id: userId },
      data: { passwordHash: hashed },
    });

    return { message: 'Đổi mật khẩu thành công' };
  }

  async updateAvatar(userId: number, avatarPath: string) {
    return this.prisma.user.update({
      where: { id: userId },
      data: { avatar: avatarPath },
    });
  }

  async getProfile(userId: number) {
    return this.prisma.user.findUnique({
      where: { id: userId },
      select: {
        id: true,
        email: true,
        firstName: true,
        lastName: true,
        phone: true,
        avatar: true,
        role: true,
        status: true,
        createdAt: true,
      },
    });
  }

  async update(id: bigint, updateUserDto: UpdateUserDto) {
    const { password, ...userData } = updateUserDto;
    
    const updateData: any = { ...userData };
    
    // Hash password if provided
    if (password) {
      updateData.passwordHash = await bcrypt.hash(password, 10);
    }

    const user = await this.prisma.user.update({
      where: { id },
      data: updateData,
      select: {
        id: true,
        email: true,
        firstName: true,
        lastName: true,
        phone: true,
        avatar: true,
        role: true,
        status: true,
        createdAt: true,
      },
    });

    return user;
  }

  async remove(id: bigint) {
    return await this.prisma.user.delete({ where: { id } });
  }
}
