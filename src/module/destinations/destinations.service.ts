import { Injectable } from '@nestjs/common';
import { CreateDestinationDto } from './dto/create-destination.dto';
import { UpdateDestinationDto } from './dto/update-destination.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class DestinationsService {
  constructor(private prisma: PrismaService) {}

  create(createDestinationDto: CreateDestinationDto) {
    return 'This action adds a new destination';
  }

  findAll() {
    return `This action returns all destinations`;
  }

  findOne(id: number) {
    return `This action returns a #${id} destination`;
  }

  findByCity(cityId: number) {
    return this.prisma.destination.findMany({
      where: { cityId: cityId },
    });
  }

  update(id: number, updateDestinationDto: UpdateDestinationDto) {
    return `This action updates a #${id} destination`;
  }

  remove(id: number) {
    return `This action removes a #${id} destination`;
  }
}
