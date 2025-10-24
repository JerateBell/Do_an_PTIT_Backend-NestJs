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
    return await this.prisma.destination.findUnique({
      where: { id },
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
      where: { cityId },
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
    return await this.prisma.destination.delete({
      where: { id },
    });
  }
}
