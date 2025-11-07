import { Controller, Post, Get, Patch, Delete, Param, Body, UseGuards } from '@nestjs/common';
import { CreateActivityScheduleDto } from './dto/create-activity-schedule.dto';
import { UpdateActivityScheduleDto } from './dto/update-activity-schedule.dto';
import { AuthGuard } from '@nestjs/passport';
import { ActivitySchedulesService } from './activity-schedule.service';
import { CurrentSupplier } from 'src/common/decorators/current-supplier.decorator';

@Controller('activities/:activityId/schedules')
@UseGuards(AuthGuard('jwt'))
export class ActivitySchedulesController {
  constructor(private readonly activitySchedulesService: ActivitySchedulesService) {}

  @Post()
  create(
    @Param('activityId') activityId: string,
    @Body() dto: CreateActivityScheduleDto,
    @CurrentSupplier() user: any,
  ) {
    return this.activitySchedulesService.create(BigInt(activityId), BigInt(user.id), dto);
  }

  @Get()
  findAll(@Param('activityId') activityId: string, @CurrentSupplier() user: any) {
    return this.activitySchedulesService.findAll(BigInt(activityId), BigInt(user.id));
  }

  @Get('with-times')
  findAllWithComputedTimes(
    @Param('activityId') activityId: string,
    @CurrentSupplier() user: any,
  ) {
    return this.activitySchedulesService.findAllWithComputedTimes(
      BigInt(activityId),
      BigInt(user.id),
    );
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() dto: UpdateActivityScheduleDto,
    @CurrentSupplier() user: any,
  ) {
    return this.activitySchedulesService.update(BigInt(id), BigInt(user.id), dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string, @CurrentSupplier() user: any) {
    return this.activitySchedulesService.remove(BigInt(id), BigInt(user.id));
  }
}
