import { Module } from '@nestjs/common';
import { ReviewsService } from './reviews.service';
import { ReviewController } from './reviews.controller';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  controllers: [ReviewController],
  providers: [ReviewsService, PrismaService],
})
export class ReviewsModule {}
