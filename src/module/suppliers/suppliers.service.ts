import { Injectable, NotFoundException, ConflictException } from '@nestjs/common';
import { CreateSupplierDto } from './dto/create-supplier.dto';
import { UpdateSupplierDto } from './dto/update-supplier.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class SuppliersService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateSupplierDto) {
    // ✅ Kiểm tra user đã có supplier chưa
    const existing = await this.prisma.supplier.findUnique({
      where: { userId: dto.userId },
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

  findAll() {
    return this.prisma.supplier.findMany({
      include: {
        user: true,
        activities: true,
        bookings: true,
      },
    });
  }

  async findOne(id: number) {
    const supplier = await this.prisma.supplier.findUnique({
      where: { id },
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
    return this.prisma.supplier.findUnique({ 
      where: { id },
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
    return this.prisma.supplier.delete({
      where: { id },
    });
  }
}
