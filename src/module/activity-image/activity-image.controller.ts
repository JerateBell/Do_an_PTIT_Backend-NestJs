import { Controller, Get, Post, Patch, Delete, Param, Body, UseGuards } from '@nestjs/common';
import { CreateActivityImageDto } from './dto/create-activity-image.dto';
import { UpdateActivityImageDto } from './dto/update-activity-image.dto';
import { AuthGuard } from '@nestjs/passport';
import { ActivityImagesService } from './activity-image.service';
import { CurrentSupplier } from 'src/common/decorators/current-supplier.decorator';

@Controller('activities/:activityId/images')
@UseGuards(AuthGuard('jwt'))
export class ActivityImagesController {
  constructor(private readonly activityImagesService: ActivityImagesService) {}

  @Post()
  create(
    @Param('activityId') activityId: string,
    @Body() data: CreateActivityImageDto,
    @CurrentSupplier() user: any,
  ) {
    return this.activityImagesService.create(BigInt(activityId), data, BigInt(user.id));
  }

  @Get()
  findAll(@Param('activityId') activityId: string, @CurrentSupplier() user: any) {
    return this.activityImagesService.findAll(BigInt(activityId), BigInt(user.id));
  }

  @Get(':id')
  findOne(
    @Param('activityId') activityId: string,
    @Param('id') id: string,
    @CurrentSupplier() user: any,
  ) {
    return this.activityImagesService.findOne(BigInt(id), BigInt(activityId), BigInt(user.id));
  }

  @Patch(':id')
  update(
    @Param('activityId') activityId: string,
    @Param('id') id: string,
    @Body() data: UpdateActivityImageDto,
    @CurrentSupplier() user: any,
  ) {
    return this.activityImagesService.update(BigInt(id), BigInt(activityId), data, BigInt(user.id));
  }

  @Delete(':id')
  remove(
    @Param('activityId') activityId: string,
    @Param('id') id: string,
    @CurrentSupplier() user: any,
  ) {
    return this.activityImagesService.remove(BigInt(id), BigInt(activityId), BigInt(user.id));
  }
}
