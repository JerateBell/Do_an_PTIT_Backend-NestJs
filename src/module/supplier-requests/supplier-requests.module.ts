import { Module } from '@nestjs/common';
import { SupplierRequestsService } from './supplier-requests.service';
import { SupplierRequestsController } from './supplier-requests.controller';
import { PrismaService } from '../prisma/prisma.service';
import { SuppliersService } from '../suppliers/suppliers.service';
import { CountriesService } from '../countries/countries.service';
import { CitiesService } from '../cities/cities.service';
import { DestinationsService } from '../destinations/destinations.service';

@Module({
  controllers: [SupplierRequestsController],
  providers: [
    SupplierRequestsService,
    PrismaService,
    SuppliersService,
    CountriesService,
    CitiesService,
    DestinationsService,
  ],
  exports: [SupplierRequestsService],
})
export class SupplierRequestsModule {}

