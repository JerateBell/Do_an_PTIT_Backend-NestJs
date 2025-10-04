import { Module } from '@nestjs/common';

import { PrismaModule } from './module/prisma/prisma.module';
import { ArticlesModule } from './module/articles/articles.module';
import { AuthModule } from './module/auth/auth.module';
// import { UsersModule } from './module/users/users.module';
import { DestinationsModule } from './module/destinations/destinations.module';
import { CountriesModule } from './module/countries/countries.module';
import { CitiesModule } from './module/cities/cities.module';
import { ActivitiesModule } from './module/activities/activities.module';
import { CategoriesModule } from './module/categories/categories.module';

@Module({
  imports: [
    PrismaModule,
    ArticlesModule,
    AuthModule,
    CitiesModule,
    CountriesModule,
    DestinationsModule,
    ActivitiesModule,
    CategoriesModule,
  ],
})
export class AppModule {}
