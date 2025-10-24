import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';
import { PrismaService } from '../prisma/prisma.service';
import { ActivityStatus } from '@prisma/client';

@Injectable()
export class ActivitiesService {
  constructor(private readonly prisma: PrismaService) {}

  async create(dto: CreateActivityDto) {
    // Kiểm tra slug trùng
    const existing = await this.prisma.activity.findUnique({
      where: { slug: dto.slug },
    });
    if (existing) {
      throw new BadRequestException('Slug already exists');
    }

    return this.prisma.activity.create({
      data: {
        supplierId: dto.supplierId,
        destinationId: dto.destinationId,
        categoryId: dto.categoryId,
        name: dto.name,
        slug: dto.slug,
        description: dto.description,
        highlights: dto.highlights ?? [],
        duration: dto.duration,
        price: dto.price,
        currency: dto.currency ?? 'USD',
        maxParticipants: dto.maxParticipants,
        rating: dto.rating ?? 0,
        reviewCount: dto.reviewCount ?? 0,
        instantConfirmation: dto.instantConfirmation ?? true,
        freeCancellation: dto.freeCancellation ?? false,
        status: dto.status ?? ActivityStatus.draft,
        featured: dto.featured ?? false,
      },
      include: {
        images: true,
        schedules: true,
      },
    });
  }

  async findAll() {
    return this.prisma.activity.findMany({
      include: {
        supplier: true,
        destination: true,
        category: true,
        images: true,
        schedules: true,
      },
      orderBy: { createdAt: 'desc' },
    });
  }

  async findOne(id: bigint) {
    const activity = await this.prisma.activity.findUnique({
      where: { id },
      include: {
        supplier: true,
        destination: true,
        category: true,
        images: true,
        schedules: true,
      },
    });
    if (!activity) throw new NotFoundException('Activity not found');
    return activity;
  }

  async update(id: bigint, dto: UpdateActivityDto) {
    await this.findOne(id); // kiểm tra tồn tại

    if (dto.slug) {
      const existSlug = await this.prisma.activity.findUnique({
        where: { slug: dto.slug },
      });
      if (existSlug && existSlug.id !== id)
        throw new BadRequestException('Slug already exists');
    }

    return this.prisma.activity.update({
      where: { id },
      data: {
        ...dto,
      },
      include: {
        supplier: true,
        destination: true,
        category: true,
        images: true,
        schedules: true,
      },
    });
  }

  async remove(id: bigint) {
    await this.findOne(id);
    return this.prisma.activity.delete({ where: { id } });
  }
}
