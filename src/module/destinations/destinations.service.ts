import { Injectable } from '@nestjs/common';
import { CreateDestinationDto } from './dto/create-destination.dto';
import { UpdateDestinationDto } from './dto/update-destination.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class DestinationsService {
  constructor(private prisma: PrismaService) {}

  async create(createDestinationDto: CreateDestinationDto) {
    // Convert cityId sang BigInt và chỉ lấy các trường hợp lệ
    const createData = {
      name: createDestinationDto.name,
      slug: createDestinationDto.slug,
      cityId: BigInt(createDestinationDto.cityId),
      imageUrl: createDestinationDto.imageUrl || null,
    };

    const destination = await this.prisma.destination.create({
      data: createData,
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
    // Chỉ lấy các trường hợp lệ để update, loại bỏ các trường không được phép
    const updateData: any = {};
    
    if (updateDestinationDto.name !== undefined) {
      updateData.name = updateDestinationDto.name;
    }
    
    if (updateDestinationDto.slug !== undefined) {
      updateData.slug = updateDestinationDto.slug;
    }
    
    if (updateDestinationDto.imageUrl !== undefined) {
      updateData.imageUrl = updateDestinationDto.imageUrl;
    }
    
    // Convert cityId sang BigInt nếu có
    if (updateDestinationDto.cityId !== undefined) {
      updateData.cityId = BigInt(updateDestinationDto.cityId);
    }
    
    // Bỏ qua các trường không được phép: id, createdAt, deletedAt, city, description (nếu không có trong schema)

    return await this.prisma.destination.update({
      where: { id },
      data: updateData,
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
