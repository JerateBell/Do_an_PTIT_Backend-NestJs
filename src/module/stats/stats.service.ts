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

    // Get booking statistics
    const totalBookings = await this.prisma.booking.count();
    const pendingBookings = await this.prisma.booking.count({
      where: { status: 'pending' },
    });
    const confirmedBookings = await this.prisma.booking.count({
      where: { status: 'confirmed' },
    });
    const completedBookings = await this.prisma.booking.count({
      where: { status: 'completed' },
    });
    const cancelledBookings = await this.prisma.booking.count({
      where: { status: 'cancelled' },
    });

    // Get total revenue
    const revenueResult = await this.prisma.booking.aggregate({
      where: {
        status: { in: ['confirmed', 'completed'] },
      },
      _sum: {
        total: true,
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
      bookings: {
        total: totalBookings,
        pending: pendingBookings,
        confirmed: confirmedBookings,
        completed: completedBookings,
        cancelled: cancelledBookings,
        revenue: revenueResult._sum.total || 0,
      },
    };
  }

  async getBookingStats() {
    // Get bookings by status
    const bookingsByStatus = await this.prisma.booking.groupBy({
      by: ['status'],
      _count: {
        id: true,
      },
    });

    // Get bookings trend (last 30 days)
    const thirtyDaysAgo = new Date();
    thirtyDaysAgo.setDate(thirtyDaysAgo.getDate() - 30);

    const bookingsTrend = await this.prisma.$queryRaw<
      Array<{ date: string; count: number }>
    >`
      SELECT 
        DATE(created_at) as date,
        COUNT(*)::int as count
      FROM bookings
      WHERE created_at >= ${thirtyDaysAgo}
      GROUP BY DATE(created_at)
      ORDER BY date ASC
    `;

    // Get revenue trend (last 30 days)
    const revenueTrend = await this.prisma.$queryRaw<
      Array<{ date: string; revenue: number }>
    >`
      SELECT 
        DATE(created_at) as date,
        SUM(total)::float as revenue
      FROM bookings
      WHERE created_at >= ${thirtyDaysAgo}
        AND status IN ('confirmed', 'completed')
      GROUP BY DATE(created_at)
      ORDER BY date ASC
    `;

    // Get bookings by month (last 6 months)
    const sixMonthsAgo = new Date();
    sixMonthsAgo.setMonth(sixMonthsAgo.getMonth() - 6);

    const bookingsByMonth = await this.prisma.$queryRaw<
      Array<{ month: string; count: number; revenue: number }>
    >`
      SELECT 
        TO_CHAR(created_at, 'YYYY-MM') as month,
        COUNT(*)::int as count,
        SUM(CASE WHEN status IN ('confirmed', 'completed') THEN total ELSE 0 END)::float as revenue
      FROM bookings
      WHERE created_at >= ${sixMonthsAgo}
      GROUP BY TO_CHAR(created_at, 'YYYY-MM')
      ORDER BY month ASC
    `;

    return {
      byStatus: bookingsByStatus.map((item) => ({
        status: item.status,
        count: item._count.id,
      })),
      trend: bookingsTrend,
      revenueTrend: revenueTrend,
      byMonth: bookingsByMonth,
    };
  }

  async getActivityStats() {
    // Get activities by status
    const activitiesByStatus = await this.prisma.activity.groupBy({
      by: ['status'],
      _count: {
        id: true,
      },
    });

    // Get top activities by bookings
    const topActivities = await this.prisma.activity.findMany({
      take: 10,
      select: {
        id: true,
        name: true,
        _count: {
          select: {
            bookings: true,
          },
        },
      },
      orderBy: {
        bookings: {
          _count: 'desc',
        },
      },
    });

    // Get activities by category
    const activitiesByCategory = await this.prisma.activity.groupBy({
      by: ['categoryId'],
      _count: {
        id: true,
      },
    });

    // Fetch category names
    const categoryIds = activitiesByCategory.map((item) => item.categoryId);
    const categories = await this.prisma.category.findMany({
      where: {
        id: {
          in: categoryIds,
        },
      },
      select: {
        id: true,
        name: true,
      },
    });

    const categoryMap = new Map(categories.map((c) => [c.id, c.name]));

    const activitiesByCategoryWithNames = activitiesByCategory.map((item) => ({
      categoryId: item.categoryId,
      categoryName: categoryMap.get(item.categoryId) || 'Unknown',
      count: item._count.id,
    }));

    // Get activities by destination
    const activitiesByDestination = await this.prisma.activity.groupBy({
      by: ['destinationId'],
      _count: {
        id: true,
      },
      take: 10,
      orderBy: {
        _count: {
          id: 'desc',
        },
      },
    });

    // Fetch destination names
    const destinationIds = activitiesByDestination.map(
      (item) => item.destinationId,
    );
    const destinations = await this.prisma.destination.findMany({
      where: {
        id: {
          in: destinationIds,
        },
        deletedAt: null, // Soft delete filter for destination
        city: {
          deletedAt: null, // Soft delete filter for city
          country: {
            deletedAt: null, // Soft delete filter for country
          },
        },
      },
      select: {
        id: true,
        name: true,
      },
    });

    const destinationMap = new Map(destinations.map((d) => [d.id, d.name]));

    const activitiesByDestinationWithNames = activitiesByDestination.map(
      (item) => ({
        destinationId: item.destinationId,
        destinationName: destinationMap.get(item.destinationId) || 'Unknown',
        count: item._count.id,
      }),
    );

    return {
      byStatus: activitiesByStatus.map((item) => ({
        status: item.status,
        count: item._count.id,
      })),
      topActivities: topActivities.map((item) => ({
        id: item.id,
        name: item.name,
        bookingCount: item._count.bookings,
      })),
      byCategory: activitiesByCategoryWithNames,
      byDestination: activitiesByDestinationWithNames,
    };
  }
}
