import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateActivityScheduleDto } from './dto/create-activity-schedule.dto';
import { UpdateActivityScheduleDto } from './dto/update-activity-schedule.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ActivityScheduleService {
  constructor(private readonly prisma: PrismaService) {}

  async create(dto: CreateActivityScheduleDto) {
    return this.prisma.activitySchedule.create({
      data: {
        activityId: dto.activityId,
        date: new Date(dto.date),
        timeSlot: dto.timeSlot,
        availableSpots: dto.availableSpots,
        bookedSpots: dto.bookedSpots ?? 0,
        price: dto.price,
      },
    });
  }

  async findAll() {
    return this.prisma.activitySchedule.findMany({
      include: { activity: true, bookings: true },
    });
  }

  async findOne(id: bigint) {
    const schedule = await this.prisma.activitySchedule.findUnique({
      where: { id },
      include: { activity: true, bookings: true },
    });
    if (!schedule) throw new NotFoundException('Activity schedule not found');
    return schedule;
  }

  async update(id: bigint, dto: UpdateActivityScheduleDto) {
    await this.findOne(id); // kiểm tra tồn tại
    return this.prisma.activitySchedule.update({
      where: { id },
      data: {
        ...dto,
        date: dto.date ? new Date(dto.date) : undefined,
      },
    });
  }

  async remove(id: bigint) {
    await this.findOne(id);
    return this.prisma.activitySchedule.delete({ where: { id } });
  }
}
