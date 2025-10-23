import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateActivityImageDto } from './dto/create-activityImage.dto';
import { UpdateActivityImageDto } from './dto/update-activityImage.dto';

@Injectable()
export class ActivityImageService {
  constructor(private prisma: PrismaService) {}

  create(dto: CreateActivityImageDto) {
    return this.prisma.activityImage.create({ data: dto });
  }

  findAll() {
    return this.prisma.activityImage.findMany();
  }

  findOne(id: number) {
    return this.prisma.activityImage.findUnique({ where: { id } });
  }

  update(id: number, dto: UpdateActivityImageDto) {
    return this.prisma.activityImage.update({ where: { id }, data: dto });
  }

  remove(id: number) {
    return this.prisma.activityImage.delete({ where: { id } });
  }
}
