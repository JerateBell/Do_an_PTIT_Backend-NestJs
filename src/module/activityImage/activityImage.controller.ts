/* eslint-disable @typescript-eslint/no-unsafe-return */
import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  Put,
} from '@nestjs/common';
import { ActivityImageService } from './activityImage.service';
import { CreateActivityImageDto } from './dto/create-activityImage.dto';
import { UpdateActivityImageDto } from './dto/update-activityImage.dto';

@Controller('activity-images')
export class ActivityImageController {
  constructor(private readonly activityImageService: ActivityImageService) {}

  @Post()
  create(@Body() dto: CreateActivityImageDto) {
    return this.activityImageService.create(dto);
  }

  @Get()
  findAll() {
    return this.activityImageService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.activityImageService.findOne(+id);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() dto: UpdateActivityImageDto) {
    return this.activityImageService.update(+id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.activityImageService.remove(+id);
  }
}
