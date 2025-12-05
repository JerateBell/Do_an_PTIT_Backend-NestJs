import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import * as fs from 'fs';
import * as path from 'path';
import { Prisma } from '@prisma/client';

@Injectable()
export class RecommendationsService {
  constructor(private prisma: PrismaService) {}

  /**
   * Xuất ratings ra CSV file theo format ml-100k
   * Format: user_id | activity_id | rating | timestamp
   */
  async exportRatingsToCSV(outputPath?: string): Promise<string> {
    console.log('📤 Đang xuất ratings ra CSV...');

    // Lấy tất cả reviews (ratings) - chỉ lấy reviews cho activities còn tồn tại
    const reviews = await this.prisma.review.findMany({
      where: {
        activity: {
          // Chỉ lấy reviews cho activities còn tồn tại
          // (không cần filter thêm vì foreign key đảm bảo)
        },
      },
      select: {
        userId: true,
        activityId: true,
        rating: true,
        createdAt: true,
      },
      orderBy: {
        createdAt: 'asc',
      },
    });
    
    // Lấy danh sách activity IDs còn tồn tại để filter
    const existingActivityIds = await this.prisma.activity.findMany({
      select: {
        id: true,
      },
    });
    
    const existingActivityIdSet = new Set(
      existingActivityIds.map((a) => Number(a.id))
    );
    
    // Filter reviews để chỉ giữ những reviews có activity còn tồn tại
    const validReviews = reviews.filter((review) =>
      existingActivityIdSet.has(Number(review.activityId))
    );
    
    if (validReviews.length === 0) {
      throw new NotFoundException(
        'Không có ratings hợp lệ nào (tất cả ratings đều cho activities không tồn tại)'
      );
    }

    if (reviews.length === 0) {
      throw new NotFoundException('Không có ratings nào trong database');
    }

    // Tạo file path
    const filePath = outputPath || path.join(process.cwd(), 'exports', 'ratings.csv');

    // Đảm bảo thư mục tồn tại
    const dir = path.dirname(filePath);
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir, { recursive: true });
    }

    // Tạo CSV content
    let csvContent = 'user_id,activity_id,rating,timestamp\n';

    for (const review of validReviews) {
      const userId = Number(review.userId);
      const activityId = Number(review.activityId);
      const rating = review.rating;
      const timestamp = Math.floor(review.createdAt.getTime() / 1000); // Unix timestamp

      csvContent += `${userId},${activityId},${rating},${timestamp}\n`;
    }

    // Ghi file
    fs.writeFileSync(filePath, csvContent, 'utf-8');

    console.log(
      `✅ Đã xuất ${validReviews.length} ratings hợp lệ (từ ${reviews.length} tổng số) ra file: ${filePath}`
    );

    return filePath;
  }

  /**
   * Xuất activities với category features ra CSV
   * Format: activity_id, category_id, và 20 binary category columns
   */
  async exportActivitiesToCSV(outputPath?: string): Promise<string> {
    console.log('📤 Đang xuất activities ra CSV...');

    // Lấy tất cả categories để tạo mapping
    const categories = await this.prisma.category.findMany({
      orderBy: {
        sortOrder: 'asc',
      },
    });

    const categoryMap = new Map<bigint, number>();
    categories.forEach((cat, index) => {
      categoryMap.set(cat.id, index);
    });

    // Lấy tất cả activities
    const activities = await this.prisma.activity.findMany({
      select: {
        id: true,
        categoryId: true,
      },
      orderBy: {
        id: 'asc',
      },
    });

    if (activities.length === 0) {
      throw new NotFoundException('Không có activities nào trong database');
    }

    // Tạo file path
    const filePath = outputPath || path.join(process.cwd(), 'exports', 'activities.csv');

    // Đảm bảo thư mục tồn tại
    const dir = path.dirname(filePath);
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir, { recursive: true });
    }

    // Tạo CSV header: activity_id, category_id, cat0, cat1, ..., cat19
    let csvContent = 'activity_id,category_id';
    for (let i = 0; i < 20; i++) {
      csvContent += `,cat${i}`;
    }
    csvContent += '\n';

    // Tạo category binary features cho mỗi activity
    for (const activity of activities) {
      const activityId = Number(activity.id);
      const categoryIndex = categoryMap.get(activity.categoryId) ?? 0;

      // Binary vector: 1 tại vị trí category của activity, 0 ở các vị trí khác
      const categoryVector = Array(20).fill(0);
      categoryVector[categoryIndex] = 1;

      csvContent += `${activityId},${categoryIndex}`;
      for (const val of categoryVector) {
        csvContent += `,${val}`;
      }
      csvContent += '\n';
    }

    // Ghi file
    fs.writeFileSync(filePath, csvContent, 'utf-8');

    console.log(`✅ Đã xuất ${activities.length} activities ra file: ${filePath}`);

    return filePath;
  }

  /**
   * Import recommendations từ file CSV mặc định (imports/recommendations.csv)
   */
  async importRecommendationsFromDefaultCSV(): Promise<{ imported: number; errors: number }> {
    const defaultPath = path.join(process.cwd(), 'imports', 'recommendations.csv');
    console.log(`📥 Đang import recommendations từ file mặc định: ${defaultPath}...`);
    return this.importRecommendationsFromCSV(defaultPath);
  }

  /**
   * Đọc CSV recommendations từ Python script và import vào database
   * Format CSV: user_id, activity_id, predicted_rating
   */
  async importRecommendationsFromCSV(filePath: string): Promise<{ imported: number; errors: number }> {
    console.log(`📥 Đang import recommendations từ ${filePath}...`);

    if (!fs.existsSync(filePath)) {
      throw new NotFoundException(`File không tồn tại: ${filePath}`);
    }

    // Đọc file CSV
    const fileContent = fs.readFileSync(filePath, 'utf-8');
    const lines = fileContent.split('\n').filter((line) => line.trim() !== '');

    if (lines.length <= 1) {
      throw new NotFoundException('File CSV không có dữ liệu');
    }

    // Bỏ header
    const dataLines = lines.slice(1);

    let imported = 0;
    let errors = 0;

    // Xóa tất cả recommendations cũ trước khi import mới
    await this.prisma.recommendation.deleteMany({});

    console.log('🗑️  Đã xóa recommendations cũ');

    // Nhóm recommendations theo user để tính rank
    const userRecommendationsMap = new Map<number, Array<{ activityId: number; rating: number }>>();

    for (const line of dataLines) {
      try {
        const [userIdStr, activityIdStr, predictedRatingStr] = line.split(',');

        const userId = parseInt(userIdStr.trim(), 10);
        const activityId = parseInt(activityIdStr.trim(), 10);
        const predictedRating = parseFloat(predictedRatingStr.trim());

        if (isNaN(userId) || isNaN(activityId) || isNaN(predictedRating)) {
          errors++;
          continue;
        }

        // Thêm vào map
        if (!userRecommendationsMap.has(userId)) {
          userRecommendationsMap.set(userId, []);
        }

        userRecommendationsMap.get(userId)!.push({
          activityId,
          rating: predictedRating,
        });
      } catch (error) {
        errors++;
        console.error(`Lỗi khi parse dòng: ${line}`, error);
      }
    }

    // Import vào database với rank
    console.log(`📊 Đang import ${userRecommendationsMap.size} users...`);

    for (const [userId, recommendations] of userRecommendationsMap.entries()) {
      // Sắp xếp theo predicted rating giảm dần và lấy top 10
      recommendations.sort((a, b) => b.rating - a.rating);
      const top10 = recommendations.slice(0, 10);

      // Tạo records với rank
      const records = top10.map((rec, index) => ({
        userId: BigInt(userId),
        activityId: BigInt(rec.activityId),
        predictedRating: new Prisma.Decimal(rec.rating.toFixed(2)),
        rank: index + 1,
      }));

      // Import với transaction
      try {
        await this.prisma.recommendation.createMany({
          data: records,
          skipDuplicates: true,
        });

        imported += records.length;
      } catch (error) {
        console.error(`Lỗi khi import recommendations cho user ${userId}:`, error);
        errors += records.length;
      }
    }

    console.log(`✅ Đã import ${imported} recommendations`);
    if (errors > 0) {
      console.warn(`⚠️  Có ${errors} lỗi trong quá trình import`);
    }

    return { imported, errors };
  }

  /**
   * Lấy recommendations cho một user
   */
  async getRecommendationsForUser(userId: bigint, topN: number = 10) {
    const recommendations = await this.prisma.recommendation.findMany({
      where: {
        userId,
      },
      include: {
        activity: {
          include: {
            images: {
              where: {
                isPrimary: true,
              },
              take: 1,
            },
            destination: {
              include: {
                city: {
                  include: {
                    country: true,
                  },
                },
              },
            },
            category: true,
          },
        },
      },
      orderBy: {
        rank: 'asc',
      },
      take: topN,
    });

    return recommendations;
  }

  /**
   * Xóa tất cả recommendations
   */
  async clearAllRecommendations(): Promise<void> {
    await this.prisma.recommendation.deleteMany({});
    console.log('✅ Đã xóa tất cả recommendations');
  }

  /**
   * Lấy thống kê recommendations
   */
  async getRecommendationsStats() {
    const totalRecommendations = await this.prisma.recommendation.count();
    const uniqueUsers = await this.prisma.recommendation.groupBy({
      by: ['userId'],
    });

    const avgRating = await this.prisma.recommendation.aggregate({
      _avg: {
        predictedRating: true,
      },
    });

    return {
      totalRecommendations,
      uniqueUsers: uniqueUsers.length,
      averagePredictedRating: avgRating._avg.predictedRating?.toNumber() || 0,
    };
  }

  /**
   * Lấy danh sách tours (activities) từ recommendations cho một user
   * Trả về danh sách activities với thông tin đầy đủ
   */
  async getRecommendedTours(userId: bigint, topN: number = 10) {
    const recommendations = await this.prisma.recommendation.findMany({
      where: {
        userId,
      },
      include: {
        activity: {
          include: {
            images: {
              where: {
                isPrimary: true,
              },
              take: 1,
            },
            destination: {
              include: {
                city: {
                  include: {
                    country: true,
                  },
                },
              },
            },
            category: true,
            supplier: {
              include: {
                user: {
                  select: {
                    id: true,
                    firstName: true,
                    lastName: true,
                    email: true,
                  },
                },
              },
            },
            schedules: {
              where: {
                date: {
                  gte: new Date(),
                },
                availableSpots: {
                  gt: 0,
                },
              },
              orderBy: {
                date: 'asc',
              },
              take: 5,
            },
            reviews: {
              take: 5,
              orderBy: {
                createdAt: 'desc',
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
          },
        },
      },
      orderBy: {
        rank: 'asc',
      },
      take: topN,
    });

    // Map để trả về format tours
    return recommendations.map((rec) => ({
      ...rec.activity,
      recommendedRating: rec.predictedRating.toNumber(),
      recommendedRank: rec.rank,
    }));
  }
}

