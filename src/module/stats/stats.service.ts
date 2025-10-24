import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class StatsService {
  constructor(private prisma: PrismaService) {}

  async getOverallStats() {
    // Get user statistics
    const totalUsers = await this.prisma.user.count();
    const activeUsers = await this.prisma.user.count({
      where: { status: 'active' },
    });
    const adminUsers = await this.prisma.user.count({
      where: { role: 'admin' },
    });
    const supplierUsers = await this.prisma.user.count({
      where: { role: 'supplier' },
    });
    const customerUsers = await this.prisma.user.count({
      where: { role: 'customer' },
    });
    const suspendedUsers = await this.prisma.user.count({
      where: { status: 'suspended' },
    });

    // Get location statistics
    const totalCountries = await this.prisma.country.count();
    const totalCities = await this.prisma.city.count();
    const totalDestinations = await this.prisma.destination.count();

    // Get activity statistics
    const totalActivities = await this.prisma.activity.count();
    const totalCategories = await this.prisma.category.count();

    // Get recent users (last 7 days)
    const sevenDaysAgo = new Date();
    sevenDaysAgo.setDate(sevenDaysAgo.getDate() - 7);
    const newUsersLast7Days = await this.prisma.user.count({
      where: {
        createdAt: {
          gte: sevenDaysAgo,
        },
      },
    });

    return {
      users: {
        total: totalUsers,
        active: activeUsers,
        suspended: suspendedUsers,
        admin: adminUsers,
        supplier: supplierUsers,
        customer: customerUsers,
        newLast7Days: newUsersLast7Days,
      },
      locations: {
        countries: totalCountries,
        cities: totalCities,
        destinations: totalDestinations,
      },
      content: {
        activities: totalActivities,
        categories: totalCategories,
      },
    };
  }
}

