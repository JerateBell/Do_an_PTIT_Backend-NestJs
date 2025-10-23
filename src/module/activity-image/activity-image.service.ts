import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateActivityImageDto } from './dto/create-activity-image.dto';
import { UpdateActivityImageDto } from './dto/update-activity-image.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ActivityImageService {
  constructor(private readonly prisma: PrismaService) {}

  async create(dto: CreateActivityImageDto) {
    // Nếu đánh dấu isPrimary = true thì bỏ isPrimary ở ảnh khác cùng activity
    if (dto.isPrimary) {
      await this.prisma.activityImage.updateMany({
        where: { activityId: dto.activityId, isPrimary: true },
        data: { isPrimary: false },
      });
    }

    return this.prisma.activityImage.create({
      data: {
        activityId: dto.activityId,
        imageUrl: dto.imageUrl,
        isPrimary: dto.isPrimary ?? false,
        sortOrder: dto.sortOrder ?? 0,
      },
    });
  }

  async findAll() {
    return this.prisma.activityImage.findMany({
      include: { activity: true },
      orderBy: { sortOrder: 'asc' },
    });
  }

  async findOne(id: bigint) {
    const image = await this.prisma.activityImage.findUnique({
      where: { id },
      include: { activity: true },
    });
    if (!image) throw new NotFoundException('Activity image not found');
    return image;
  }

  async update(id: bigint, dto: UpdateActivityImageDto) {
    const image = await this.findOne(id);

    if (dto.isPrimary) {
      // bỏ isPrimary ở ảnh khác cùng activity
      await this.prisma.activityImage.updateMany({
        where: { activityId: image.activityId, isPrimary: true },
        data: { isPrimary: false },
      });
    }

    return this.prisma.activityImage.update({
      where: { id },
      data: {
        ...dto,
      },
    });
  }

  async remove(id: bigint) {
    await this.findOne(id);
    return this.prisma.activityImage.delete({ where: { id } });
  }
}
