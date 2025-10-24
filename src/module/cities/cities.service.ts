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
    return await this.prisma.city.findUnique({
      where: { id },
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
    return await this.prisma.city.delete({
      where: { id },
    });
  }
}
