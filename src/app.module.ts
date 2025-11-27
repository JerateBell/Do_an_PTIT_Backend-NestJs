import { Module } from '@nestjs/common';

import { PrismaModule } from './module/prisma/prisma.module';
import { AuthModule } from './module/auth/auth.module';
import { UsersModule } from './module/users/users.module';
import { DestinationsModule } from './module/destinations/destinations.module';
import { CountriesModule } from './module/countries/countries.module';
import { CitiesModule } from './module/cities/cities.module';
import { ActivitiesModule } from './module/activities/activities.module';
import { CategoriesModule } from './module/categories/categories.module';
import { StatsModule } from './module/stats/stats.module';
import { SuppliersModule } from './module/suppliers/suppliers.module';
import { ActivityImageModule } from './module/activity-image/activity-image.module';
import { ActivityScheduleModule } from './module/activity-schedule/activity-schedule.module';
import { BookingModule } from './module/booking/booking.module';
import { ToursModule } from './module/tours/tours.module';
import { ReviewsModule } from './module/reviews/reviews.module';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { PaymentsModule } from './module/payments/payments.module';
import { AdminBankAccountModule } from './module/admin-bank-account/admin-bank-account.module';

@Module({
  imports: [
    PrismaModule,
    AuthModule,
    CitiesModule,
    CountriesModule,
    DestinationsModule,
    ActivitiesModule,
    ActivityImageModule,
    ActivityScheduleModule,
    CategoriesModule,
    UsersModule,
    StatsModule,
    SuppliersModule,
    BookingModule,
    ToursModule,
    ReviewsModule,
    ServeStaticModule.forRoot({
      rootPath: join(process.cwd(), 'uploads'),
      serveRoot: '/uploads', // URL truy cập file
    }),
    PaymentsModule,
    AdminBankAccountModule,
  ],
})
export class AppModule {}
