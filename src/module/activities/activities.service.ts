import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';
import { PrismaService } from '../prisma/prisma.service';
import { ActivityStatus } from '@prisma/client';

@Injectable()
export class ActivitiesService {
  constructor(private prisma: PrismaService) {}

  async createForSupplier(userId: bigint, data: any) {
    // Tìm supplier thật dựa vào userId trong bảng suppliers
    const supplier = await this.prisma.supplier.findUnique({
      where: { userId },
    });

    if (!supplier) {
      throw new Error('Supplier not found for this user');
    }

    // Tạo activity gắn với supplier.id thật
    return this.prisma.activity.create({
      data: {
        ...data,
        supplierId: supplier.id,
      },
    });
  }

  async findAllByUser(userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({ where: { userId } });
    if (!supplier) throw new Error('Supplier not found');
    
    return this.prisma.activity.findMany({
      where: { supplierId: supplier.id },
    });
  }

  async findOneByUser(id: bigint, userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({ where: { userId } });
    if (!supplier) throw new Error('Supplier not found');

    return this.prisma.activity.findFirst({
      where: { id, supplierId: supplier.id },
    });
  }


  async updateByUser(id: bigint, data: UpdateActivityDto, userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({
      where: { userId },
    });

    if (!supplier) {
      throw new NotFoundException('Supplier not found');
    }

    const existing = await this.prisma.activity.findFirst({
      where: { id, supplierId: supplier.id },
    });

    if (!existing) {
      throw new NotFoundException('Activity not found or not owned by this supplier');
    }

    const updated = await this.prisma.activity.update({
      where: { id },
      data,
    });

    return {
      message: 'Activity updated successfully',
      activity: updated,
    };
  }

  // ----------------------
  // Delete by user
  // ----------------------
  async deleteByUser(id: bigint, userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({
      where: { userId },
    });

    if (!supplier) {
      throw new NotFoundException('Supplier not found');
    }

    const existing = await this.prisma.activity.findFirst({
      where: { id, supplierId: supplier.id },
    });

    if (!existing) {
      throw new NotFoundException('Activity not found or not owned by this supplier');
    }

    await this.prisma.activity.delete({
      where: { id },
    });

    return { message: 'Activity deleted successfully' };
  }
}
