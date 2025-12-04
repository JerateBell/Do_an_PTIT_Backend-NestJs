import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class WishlistService {
  constructor(private prisma: PrismaService) {}

  async addToWishlist(userId: number, activityId: number) {
    // Check activity tồn tại
    const activity = await this.prisma.activity.findUnique({
      where: { id: activityId },
    });
    if (!activity) {
      throw new NotFoundException('Activity not found');
    }

    // Create wishlist (unique(userId, activityId) sẽ tự check)
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
    // Check tồn tại trong wishlist
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
        activity: true, // nếu muốn lấy thông tin activity
      },
      orderBy: { createdAt: 'desc' },
    });
  }
}
