import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';

@Injectable()
export class ToursService {
  constructor(private readonly prisma: PrismaService) {}

  async createActivity(data: CreateActivityDto) {
    return this.prisma.activity.create({ data });
  }

  async findAllActivitiesAdmin(filter?: { page?: number; limit?: number }) {
    const { page = 1, limit = 10 } = filter || {};
    const skip = (page - 1) * limit;

    const where = {
      deletedAt: null, // Soft delete filter for activity
      destination: {
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
    };

    const [activities, total] = await Promise.all([
      this.prisma.activity.findMany({
        where,
        skip,
        take: limit,
        include: {
          supplier: {
            select: {
              id: true,
              companyName: true,
              user: {
                select: {
                  id: true,
                  email: true,
                  firstName: true,
                  lastName: true,
                },
              },
            },
          },
          category: {
            select: {
              id: true,
              name: true,
              slug: true,
            },
          },
          destination: {
            select: {
              id: true,
              name: true,
              slug: true,
              city: {
                select: {
                  id: true,
                  name: true,
                  country: {
                    select: {
                      code: true,
                      name: true,
                    },
                  },
                },
              },
            },
          },
          images: {
            where: {
              activity: {
                deletedAt: null,
              },
            },
          },
          _count: {
            select: {
              bookings: true,
              reviews: true,
              wishlists: true,
            },
          },
        },
        orderBy: {
          createdAt: 'desc',
        },
      }),
      this.prisma.activity.count({ where }),
    ]);

    return {
      activities,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  async findAllActivities() {
    const where = {
      deletedAt: null, // Soft delete filter for activity
      destination: {
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
    };

    return this.prisma.activity.findMany({
      where,
      include: {
        supplier: {
          select: {
            id: true,
            companyName: true,
            user: {
              select: {
                id: true,
                email: true,
                firstName: true,
                lastName: true,
              },
            },
          },
        },
        category: {
          select: {
            id: true,
            name: true,
            slug: true,
          },
        },
        destination: {
          select: {
            id: true,
            name: true,
            slug: true,
            city: {
              select: {
                id: true,
                name: true,
                country: {
                  select: {
                    code: true,
                    name: true,
                  },
                },
              },
            },
          },
        },
        images: {
          where: {
            activity: {
              deletedAt: null,
            },
          },
        },
        schedules: true,
        reviews: {
          where: {
            deletedAt: null,
          },
          include: {
            user: {
              select: {
                id: true,
                firstName: true,
                lastName: true,
                avatar: true,
              },
            },
          },
        },
        _count: {
          select: {
            bookings: true,
            reviews: true,
            wishlists: true,
          },
        },
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
  }

  async findOneActivity(id: number) {
    return this.prisma.activity.findFirst({ 
      where: { 
        id,
        deletedAt: null, // Soft delete filter for activity
        destination: {
          deletedAt: null, // Soft delete filter for destination
          city: {
            deletedAt: null, // Soft delete filter for city
            country: {
              deletedAt: null, // Soft delete filter for country
            },
          },
        },
      },
      include: {
        supplier: true,
        category: true,
        destination: {
          include: {
            city: {
              include: {
                country: true,
              },
            },
          },
        },
        images: true,
        schedules: true,
        bookings: true,
        wishlists: true,
        reviews: {
          include: {
            user: true,
          },
        },
      }
    });
  }

  async updateActivity(id: number, data: UpdateActivityDto) {
    return this.prisma.activity.update({ where: { id }, data });
  }

  async removeActivity(id: number) {
    return this.prisma.activity.update({ 
      where: { id },
      data: { deletedAt: new Date() },
    });
  }
}

