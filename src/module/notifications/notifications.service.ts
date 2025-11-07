import { Injectable } from '@nestjs/common';
import { Prisma, PrismaClient } from '@prisma/client';
import { PrismaService } from '../prisma/prisma.service';
import { FilterNotificationsDto } from './dto/filter-notifications.dto';

@Injectable()
export class NotificationsService {
  constructor(private readonly prisma: PrismaService) {}

  async findAllAdmin(filter: FilterNotificationsDto) {
    const { page = 1, limit = 10, status = 'all' } = filter;
    const skip = (page - 1) * limit;
    const where: Prisma.NotificationWhereInput = {
      ...(status === 'unread' ? { isRead: false } : {}),
      ...(status === 'read' ? { isRead: true } : {}),
    };

    const [notifications, total] = await Promise.all([
      this.prisma.notification.findMany({
        where,
        skip,
        take: limit,
        orderBy: { createdAt: 'desc' },
        select: {
          id: true,
          userId: true,
          title: true,
          message: true,
          type: true,
          isRead: true,
          createdAt: true,
        },
      }),
      this.prisma.notification.count({ where }),
    ]);

    return {
      notifications,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  async markRead(id: bigint) {
    await this.prisma.notification.update({
      where: { id },
      data: { isRead: true },
    });
    return { success: true };
  }

  async markAllRead() {
    await this.prisma.notification.updateMany({ data: { isRead: true } });
    return { success: true };
  }

  async countUnread() {
    const count = await this.prisma.notification.count({ where: { isRead: false } });
    return { count };
  }
}


