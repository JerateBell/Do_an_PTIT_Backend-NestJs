import { Injectable } from '@nestjs/common';
import { CountryDto } from './dto/create-country.dto';
import { UpdateCountryDto } from './dto/update-country.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class CountriesService {
  constructor(private readonly prisma: PrismaService) {}

  create(createCountryDto: CountryDto) {
    return this.prisma.country.create({
      data: createCountryDto,
    });
  }

  async findAll() {
    return await this.prisma.country.findMany({
      where: {
        deletedAt: null, // Soft delete filter
      },
    });
  }

  findOne(code: string) {
    return this.prisma.country.findFirst({
      where: { 
        code,
        deletedAt: null, // Soft delete filter
      },
    });
  }

  update(code: string, updateCountryDto: UpdateCountryDto) {
    return this.prisma.country.update({
      where: { code },
      data: updateCountryDto,
    });
  }

  remove(code: string) {
    return this.prisma.country.update({
      where: { code },
      data: { deletedAt: new Date() },
    });
  }

  /**
   * Restore country (set deletedAt to null)
   */
  restore(code: string) {
    return this.prisma.country.update({
      where: { code },
      data: { deletedAt: null },
    });
  }

  /**
   * Find country by code (including deleted ones)
   * Used for duplicate checking
   */
  findByCode(code: string) {
    return this.prisma.country.findUnique({
      where: { code },
    });
  }
}
