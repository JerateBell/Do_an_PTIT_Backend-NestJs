import { Controller, Get, Post, Body, Patch, Param, Delete, ParseIntPipe } from '@nestjs/common';
import { ActivityScheduleService } from './activity-schedule.service';
import { CreateActivityScheduleDto } from './dto/create-activity-schedule.dto';
import { UpdateActivityScheduleDto } from './dto/update-activity-schedule.dto';

@Controller('activity-schedules')
export class ActivityScheduleController {
  constructor(private readonly service: ActivityScheduleService) {}

  @Post()
  create(@Body() dto: CreateActivityScheduleDto) {
    return this.service.create(dto);
  }

  @Get()
  findAll() {
    return this.service.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.service.findOne(BigInt(id));
  }

  @Patch(':id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() dto: UpdateActivityScheduleDto,
  ) {
    return this.service.update(BigInt(id), dto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.service.remove(BigInt(id));
  }
}
