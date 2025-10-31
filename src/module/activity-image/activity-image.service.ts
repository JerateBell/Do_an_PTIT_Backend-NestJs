import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateActivityImageDto } from './dto/create-activity-image.dto';
import { UpdateActivityImageDto } from './dto/update-activity-image.dto';

@Injectable()
export class ActivityImagesService {
  constructor(private prisma: PrismaService) {}

  // Helper: lấy supplier và kiểm tra quyền sở hữu activity
  private async verifySupplierOwnsActivity(activityId: bigint, userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({ where: { userId } });
    if (!supplier) throw new NotFoundException('Supplier not found');

    const activity = await this.prisma.activity.findFirst({
      where: { id: activityId, supplierId: supplier.id },
    });
    if (!activity) {
      throw new NotFoundException('Activity not found or not owned by this supplier');
    }

    return { supplier, activity };
  }

  // ------------------ CREATE ------------------
  async create(activityId: bigint, data: CreateActivityImageDto, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    return this.prisma.activityImage.create({
      data: {
        activityId,
        imageUrl: data.imageUrl,
        isPrimary: data.isPrimary ?? false,
        sortOrder: data.sortOrder ?? 0,
      },
    });
  }

  // ------------------ FIND ALL ------------------
  async findAll(activityId: bigint, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    return this.prisma.activityImage.findMany({
      where: { activityId },
      orderBy: { sortOrder: 'asc' },
    });
  }

  // ------------------ FIND ONE ------------------
  async findOne(id: bigint, activityId: bigint, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    const image = await this.prisma.activityImage.findFirst({
      where: { id, activityId },
    });

    if (!image) throw new NotFoundException('Activity image not found');
    return image;
  }

  // ------------------ UPDATE ------------------
  async update(id: bigint, activityId: bigint, data: UpdateActivityImageDto, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    const image = await this.prisma.activityImage.findFirst({
      where: { id, activityId },
    });
    if (!image) throw new NotFoundException('Activity image not found');

    const updated = await this.prisma.activityImage.update({
      where: { id },
      data,
    });

    return {
      message: 'Image updated successfully',
      image: updated,
    };
  }

  // ------------------ DELETE ------------------
  async remove(id: bigint, activityId: bigint, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    const image = await this.prisma.activityImage.findFirst({
      where: { id, activityId },
    });
    if (!image) throw new NotFoundException('Activity image not found');

    await this.prisma.activityImage.delete({ where: { id } });

    return { message: 'Image deleted successfully' };
  }
}
