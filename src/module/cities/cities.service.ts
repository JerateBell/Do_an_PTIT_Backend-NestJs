import { Injectable } from '@nestjs/common';
import { CreateCityDto } from './dto/create-city.dto';
import { UpdateCityDto } from './dto/update-city.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class CitiesService {
  constructor(private readonly prisma: PrismaService) {}

  create(createCityDto: CreateCityDto) {
    return this.prisma.city.create({
      data: { ...createCityDto },
    });
  }

  async findAll() {
    return await this.prisma.city.findMany();
  }

  findOne(id: number) {
    return `This action returns a #${id} city`;
  }

  update(id: number, updateCityDto: UpdateCityDto) {
    return this.prisma.city.update({
      where: { id },
      data: { ...updateCityDto },
    });
  }

  remove(id: number) {
    return this.prisma.city.delete({
      where: { id },
    });
  }
}
