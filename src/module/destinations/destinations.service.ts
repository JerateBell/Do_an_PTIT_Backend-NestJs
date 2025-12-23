import { Injectable } from '@nestjs/common';
import { CreateDestinationDto } from './dto/create-destination.dto';
import { UpdateDestinationDto } from './dto/update-destination.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class DestinationsService {
  constructor(private prisma: PrismaService) {}

  async create(createDestinationDto: CreateDestinationDto) {
    const destination = await this.prisma.destination.create({
      data: createDestinationDto,
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
    return destination;
  }

  async findAll() {
    return await this.prisma.destination.findMany({
      where: {
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
  }

  async findOne(id: bigint) {
    return await this.prisma.destination.findFirst({
      where: { 
        id,
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
  }

  async findByCity(cityId: bigint) {
    return await this.prisma.destination.findMany({
      where: { 
        cityId,
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
  }

  async update(id: bigint, updateDestinationDto: UpdateDestinationDto) {
    return await this.prisma.destination.update({
      where: { id },
      data: updateDestinationDto,
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
  }

  async remove(id: bigint) {
    return await this.prisma.destination.update({
      where: { id },
      data: { deletedAt: new Date() },
    });
  }

  /**
   * Restore destination (set deletedAt to null)
   */
  async restore(id: bigint) {
    return await this.prisma.destination.update({
      where: { id },
      data: { deletedAt: null },
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
  }

  /**
   * Find destination by slug (including deleted ones)
   * Used for duplicate checking
   */
  async findBySlug(slug: string) {
    return await this.prisma.destination.findFirst({
      where: {
        slug,
      },
      include: {
        city: {
          include: {
            country: true,
          },
        },
      },
    });
  }
}
