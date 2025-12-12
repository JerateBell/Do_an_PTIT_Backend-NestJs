import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class WishlistService {
  constructor(private prisma: PrismaService) {}

  async addToWishlist(userId: number, activityId: number) {
    const activity = await this.prisma.activity.findUnique({
      where: { id: activityId },
    });
    if (!activity) {
      throw new NotFoundException('Activity not found');
    }

    try {
      const wishlist = await this.prisma.wishlist.create({
        data: {
          userId,
          activityId,
        },
      });
      return wishlist;
    } catch (error) {
      throw new BadRequestException('Activity đã có trong wishlist');
    }
  }

  async removeFromWishlist(userId: number, activityId: number) {
    const exist = await this.prisma.wishlist.findUnique({
      where: {
        userId_activityId: { userId, activityId },
      },
    });
    if (!exist) {
      throw new NotFoundException('Không tìm thấy trong wishlist');
    }

    return this.prisma.wishlist.delete({
      where: {
        userId_activityId: { userId, activityId },
      },
    });
  }

  async getWishlist(userId: number) {
    return this.prisma.wishlist.findMany({
      where: { userId },
      include: {
        activity: true, 
      },
      orderBy: { createdAt: 'desc' },
    });
  }
}
