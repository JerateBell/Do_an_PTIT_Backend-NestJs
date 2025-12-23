import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateReviewDto } from './dto/create-review.dto';
import { UpdateReviewDto } from './dto/update-review.dto';
import { PrismaService } from '../prisma/prisma.service';
import { FilterReviewsDto } from './dto/filter-reviews.dto';

@Injectable()
export class ReviewsService {
  constructor(private prisma: PrismaService) {}

  // GET all reviews (Admin only) with pagination
  async findAll(filter?: FilterReviewsDto) {
    const { page = 1, limit = 10 } = filter || {};
    const skip = (page - 1) * limit;

    const where = {
      deletedAt: null, // Soft delete filter
    };

    const [reviews, total] = await Promise.all([
      this.prisma.review.findMany({
        where,
        skip,
        take: limit,
        include: {
          user: {
            select: {
              id: true,
              firstName: true,
              lastName: true,
              email: true,
              avatar: true,
            },
          },
          activity: {
            select: {
              id: true,
              name: true,
              slug: true,
            },
          },
          booking: {
            select: {
              id: true,
              bookingRef: true,
            },
          },
        },
        orderBy: {
          createdAt: 'desc',
        },
      }),
      this.prisma.review.count({ where }),
    ]);

    return {
      reviews,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

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
      where: { 
        activityId,
        deletedAt: null, // Soft delete filter
      },
      include: {
        user: {
          select: { id: true, lastName: true, avatar: true }
        }
      },
    });
  }

  // GET review by bookingID
  async findByBooking(bookingId: number) {
    return this.prisma.review.findFirst({
      where: { 
        bookingId,
        deletedAt: null, // Soft delete filter
      },
    })
  }

  // UPDATE review
  async update(id: number, dto: UpdateReviewDto, userId: number) {
    const review = await this.prisma.review.findFirst({ 
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
    });

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
    const review = await this.prisma.review.findFirst({ 
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
    });

    if (!review || Number(review.userId) !== userId) {
      throw new NotFoundException('Review not found or access denied');
    }

    return this.prisma.review.update({ 
      where: { id },
      data: { deletedAt: new Date() },
    });
  }
}
