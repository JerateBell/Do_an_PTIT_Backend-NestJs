import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSupplierDto } from './dto/create-supplier.dto';
import { UpdateSupplierDto } from './dto/update-supplier.dto';

@Injectable()
export class SuppliersService {
  constructor(private readonly prisma: PrismaService) {}

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

  async removeSupplier(id: number) {
    return this.prisma.supplier.delete({ where: { id } });
  }
}
