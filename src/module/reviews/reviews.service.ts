import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateReviewDto } from './dto/create-review.dto';
import { UpdateReviewDto } from './dto/update-review.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ReviewsService {
  constructor(private prisma: PrismaService) {}

  // CREATE Review
  async create(dto: CreateReviewDto, userId: number) {
    return this.prisma.review.create({
      data: {
        bookingId: dto.bookingId,
        activityId: dto.activityId,
        rating: dto.rating,
        comment: dto.comment,
        images: dto.images,
        userId,
      },
    });
  }

  // GET all review by activityId
  async findByActivity(activityId: number) {
    return this.prisma.review.findMany({
      where: { activityId },
      include: {
        user: {
          select: { id: true, lastName: true, avatar: true }
        }
      },
    });
  }

  // GET review by bookingID
  async findByBooking(bookingId: number) {
    return this.prisma.review.findUnique({
      where: { bookingId },
    })
  }

  // UPDATE review
  async update(id: number, dto: UpdateReviewDto, userId: number) {
    const review = await this.prisma.review.findUnique({ where: { id } });

    if (!review || Number(review.userId) !== userId) {
      throw new NotFoundException('Review not found or access denied');
    }

    return this.prisma.review.update({
      where: { id },
      data: dto,
    });
  }

  // DELETE review
  async remove(id: number, userId: number) {
    const review = await this.prisma.review.findUnique({ where: { id } });

    if (!review || Number(review.userId) !== userId) {
      throw new NotFoundException('Review not found or access denied');
    }

    return this.prisma.review.delete({ where: { id } });
  }
}
