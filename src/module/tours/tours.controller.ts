import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Patch,
  Delete,
  UseGuards,
  Query,
} from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { AdminGuard } from '../auth/guard/admin.guard';
import { ToursService } from './tours.service';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';
import { FilterActivitiesDto } from './dto/filter-activities.dto';

@Controller('tours')
export class ToursController {
  constructor(private readonly toursService: ToursService) {}

  @Post('activity')
  createActivity(@Body() dto: CreateActivityDto) {
    return this.toursService.createActivity(dto);
  }

  // Public endpoint - Get all activities
  @Get('activity')
  findAllActivities() {
    return this.toursService.findAllActivities();
  }

  // Admin only endpoint with pagination
  @UseGuards(AuthGuard('jwt'), AdminGuard)
  @Get('activity/admin/all')
  findAllActivitiesAdmin(@Query() filter: FilterActivitiesDto) {
    return this.toursService.findAllActivitiesAdmin(filter);
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
