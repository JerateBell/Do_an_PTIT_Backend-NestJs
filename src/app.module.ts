import { Module } from '@nestjs/common';

import { PrismaModule } from './module/prisma/prisma.module';
import { AuthModule } from './module/auth/auth.module';
import { UsersModule } from './module/users/users.module';
import { DestinationsModule } from './module/destinations/destinations.module';
import { CountriesModule } from './module/countries/countries.module';
import { CitiesModule } from './module/cities/cities.module';
import { ActivitiesModule } from './module/activities/activities.module';
import { CategoriesModule } from './module/categories/categories.module';
import { ToursModule } from './module/tours/tours.module';
import { SuppliersModule } from './module/suppliers/suppliers.module';
import { ActivityImageModule } from './module/activityImage/activityImage.module';

@Module({
  imports: [
    PrismaModule,
    AuthModule,
    CitiesModule,
    CountriesModule,
    DestinationsModule,
    ActivitiesModule,
    CategoriesModule,
    UsersModule,
    ToursModule,
    SuppliersModule,
    ActivityImageModule,
  ],
})
export class AppModule {}
