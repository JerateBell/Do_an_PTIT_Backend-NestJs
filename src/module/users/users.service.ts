import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from '../prisma/prisma.service';
import { FilterUsersDto } from './dto/filter-users.dto';
import { Prisma } from '@prisma/client';
import * as bcrypt from 'bcrypt';

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

  async findOne(id: bigint) {
    return await this.prisma.user.findUnique({
      where: { id },
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
