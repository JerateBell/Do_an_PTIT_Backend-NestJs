import { Injectable } from '@nestjs/common';
import { CreateCityDto } from './dto/create-city.dto';
import { UpdateCityDto } from './dto/update-city.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class CitiesService {
  constructor(private readonly prisma: PrismaService) {}

  async create(createCityDto: CreateCityDto) {
    const city = await this.prisma.city.create({
      data: { ...createCityDto },
      include: {
        country: true,
      },
    });
    return city;
  }

  async findAll() {
    const cities = await this.prisma.city.findMany({
      where: {
        deletedAt: null, // Soft delete filter for city
        country: {
          deletedAt: null, // Soft delete filter for country
        },
      },
      include: {
        country: true,
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
    return cities;
  }

  async findOne(id: bigint) {
    return await this.prisma.city.findFirst({
      where: { 
        id,
        deletedAt: null, // Soft delete filter for city
        country: {
          deletedAt: null, // Soft delete filter for country
        },
      },
      include: {
        country: true,
      },
    });
  }

  async update(id: bigint, updateCityDto: UpdateCityDto) {
    return await this.prisma.city.update({
      where: { id },
      data: { ...updateCityDto },
      include: {
        country: true,
      },
    });
  }

  async remove(id: bigint) {
    return await this.prisma.city.update({
      where: { id },
      data: { deletedAt: new Date() },
    });
  }

  /**
   * Restore city (set deletedAt to null)
   */
  async restore(id: bigint) {
    return await this.prisma.city.update({
      where: { id },
      data: { deletedAt: null },
      include: {
        country: true,
      },
    });
  }

  /**
   * Find city by name and countryCode (including deleted ones)
   * Used for duplicate checking
   */
  async findByNameAndCountryCode(name: string, countryCode: string) {
    return await this.prisma.city.findFirst({
      where: {
        name,
        countryCode,
      },
      include: {
        country: true,
      },
    });
  }
}
