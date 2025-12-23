import { Injectable, NotFoundException, ConflictException } from '@nestjs/common';
import { CreateSupplierDto } from './dto/create-supplier.dto';
import { UpdateSupplierDto } from './dto/update-supplier.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class SuppliersService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateSupplierDto) {
    // ✅ Kiểm tra user đã có supplier chưa
    const existing = await this.prisma.supplier.findFirst({
      where: { 
        userId: dto.userId,
        deletedAt: null, // Soft delete filter
      },
    });
    if (existing) {
      throw new ConflictException('Người dùng này đã là supplier');
    }

    return this.prisma.supplier.create({
      data: {
        companyName: dto.companyName,
        businessEmail: dto.businessEmail,
        phone: dto.phone,
        address: dto.address,
        commissionRate: dto.commissionRate ?? 15.0,
        userId: dto.userId,
      },
    });
  }

  async findAll(filter?: { page?: number; limit?: number }) {
    const { page = 1, limit = 10 } = filter || {};
    const skip = (page - 1) * limit;

    const where = {
      deletedAt: null, // Soft delete filter
    };

    const [suppliers, total] = await Promise.all([
      this.prisma.supplier.findMany({
        where,
        skip,
        take: limit,
        include: {
          user: true,
          activities: true,
          bookings: true,
        },
        orderBy: {
          createdAt: 'desc',
        },
      }),
      this.prisma.supplier.count({ where }),
    ]);

    return {
      suppliers,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  async findOne(id: number) {
    const supplier = await this.prisma.supplier.findFirst({
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
      include: {
        user: true,
        activities: true,
        bookings: true,
      },
    });
    if (!supplier) throw new NotFoundException('Không tìm thấy supplier');
    return supplier;
  }

  async update(id: number, dto: UpdateSupplierDto) {
    await this.findOne(id);
    return this.prisma.supplier.update({
      where: { id },
      data: { ...dto },
    });
  }

  async createSupplier(data: CreateSupplierDto) {
    return this.prisma.supplier.create({ 
      data,
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
            role: true,
            status: true,
          }
        }
      }
    });
  }

  async findAllSuppliers() {
    return this.prisma.supplier.findMany({
      where: {
        deletedAt: null, // Soft delete filter
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
            role: true,
            status: true,
          }
        }
      },
      orderBy: {
        createdAt: 'desc',
      }
    });
  }

  async findOneSupplier(id: number) {
    return this.prisma.supplier.findFirst({ 
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
            role: true,
            status: true,
          }
        }
      }
    });
  }

  async updateSupplier(id: number, data: UpdateSupplierDto) {
    return this.prisma.supplier.update({ 
      where: { id }, 
      data,
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
            role: true,
            status: true,
          }
        }
      }
    });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.supplier.update({
      where: { id },
      data: { deletedAt: new Date() },
    });
  }
}
