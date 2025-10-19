import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';

@Injectable()
export class ToursService {
  constructor(private readonly prisma: PrismaService) {}

  async createActivity(data: CreateActivityDto) {
    return this.prisma.activity.create({ data });
  }

  async findAllActivities() {
    return this.prisma.activity.findMany();
  }

  async findOneActivity(id: number) {
    return this.prisma.activity.findUnique({ where: { id } });
  }

  async updateActivity(id: number, data: UpdateActivityDto) {
    return this.prisma.activity.update({ where: { id }, data });
  }

  async removeActivity(id: number) {
    return this.prisma.activity.delete({ where: { id } });
  }
}
