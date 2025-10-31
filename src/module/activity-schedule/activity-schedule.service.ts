import { Injectable, ForbiddenException, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateActivityScheduleDto } from './dto/create-activity-schedule.dto';
import { UpdateActivityScheduleDto } from './dto/update-activity-schedule.dto';

@Injectable()
export class ActivitySchedulesService {
  constructor(private prisma: PrismaService) {}

  // ✅ Helper: Lấy supplierId từ userId và kiểm tra quyền sở hữu activity
  private async verifySupplierOwnsActivity(activityId: bigint, userId: bigint) {
    const supplier = await this.prisma.supplier.findUnique({
      where: { userId },
    });
    if (!supplier) throw new NotFoundException('Supplier not found');

    const activity = await this.prisma.activity.findFirst({
      where: { id: activityId, supplierId: supplier.id },
    });
    if (!activity) {
      throw new NotFoundException('Activity not found or not owned by this supplier');
    }

    return { supplier, activity };
  }

  // 🟩 CREATE schedule
  async create(activityId: bigint, userId: bigint, dto: CreateActivityScheduleDto) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    return this.prisma.activitySchedule.create({
      data: {
        activityId,
        date: new Date(dto.date),
        timeSlot: dto.timeSlot,
        availableSpots: dto.availableSpots,
        price: dto.price ? dto.price.toFixed(2) : null,
      },
    });
  }

  // 🟦 FIND ALL schedules of an activity
  async findAll(activityId: bigint, userId: bigint) {
    await this.verifySupplierOwnsActivity(activityId, userId);

    return this.prisma.activitySchedule.findMany({
      where: { activityId },
      orderBy: { date: 'asc' },
    });
  }

  // 🟨 UPDATE a schedule
  async update(id: bigint, userId: bigint, dto: UpdateActivityScheduleDto) {
    const schedule = await this.prisma.activitySchedule.findUnique({
      where: { id },
      include: { activity: true },
    });

    if (!schedule) throw new NotFoundException('Schedule not found');
    await this.verifySupplierOwnsActivity(schedule.activityId, userId);

    return this.prisma.activitySchedule.update({
      where: { id },
      data: {
        ...dto,
        price: dto.price ? dto.price.toFixed(2) : undefined,
      },
    });
  }

  // 🟥 DELETE a schedule
  async remove(id: bigint, userId: bigint) {
    const schedule = await this.prisma.activitySchedule.findUnique({
      where: { id },
      include: { activity: true },
    });

    if (!schedule) throw new NotFoundException('Schedule not found');
    await this.verifySupplierOwnsActivity(schedule.activityId, userId);

    await this.prisma.activitySchedule.delete({
      where: { id },
    });

    return { message: 'Schedule deleted successfully' };
  }
}
