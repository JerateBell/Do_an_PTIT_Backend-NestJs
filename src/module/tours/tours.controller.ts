import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Patch,
  Delete,
} from '@nestjs/common';
import { ToursService } from './tours.service';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';

@Controller('tours')
export class ToursController {
  constructor(private readonly toursService: ToursService) {}

  @Post('activity')
  createActivity(@Body() dto: CreateActivityDto) {
    return this.toursService.createActivity(dto);
  }

  @Get('activity')
  findAllActivities() {
    return this.toursService.findAllActivities();
  }

  @Get('activity/:id')
  findOneActivity(@Param('id') id: string) {
    return this.toursService.findOneActivity(Number(id));
  }

  @Patch('activity/:id')
  updateActivity(@Param('id') id: string, @Body() dto: UpdateActivityDto) {
    return this.toursService.updateActivity(Number(id), dto);
  }

  @Delete('activity/:id')
  removeActivity(@Param('id') id: string) {
    return this.toursService.removeActivity(Number(id));
  }
}
