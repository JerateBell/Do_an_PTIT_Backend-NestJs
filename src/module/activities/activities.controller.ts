import { Controller, Get, Post, Param, Patch, Delete, Body, UseGuards, Query } from '@nestjs/common';
import { ActivitiesService } from './activities.service';
import { CurrentSupplier } from '../../common/decorators/current-supplier.decorator';
import { AuthGuard } from '@nestjs/passport';
import { CreateActivityDto } from './dto/create-activity.dto';
import { UpdateActivityDto } from './dto/update-activity.dto';

@Controller('activities')
@UseGuards(AuthGuard('jwt'))
export class ActivitiesController {
  constructor(private readonly activitiesService: ActivitiesService) {}

  @Post()
  async create(
    @Body() data: CreateActivityDto,
    @CurrentSupplier() supplier: any,
  ) {
    return this.activitiesService.createForSupplier(BigInt(supplier.id), data);
  }

  @Get()
  async findAll(@CurrentSupplier() supplier: any) {
    return this.activitiesService.findAllByUser(BigInt(supplier.id));
  }

  @Get('search')
  @UseGuards()
  search(@Query('query') query: string) {
    if (!query || query.trim() === '') {
      return [];
    }
    return this.activitiesService.search(query);
  }

  @Get(':id')
  async findOne(@Param('id') id: string, @CurrentSupplier() supplier: any) {
    return this.activitiesService.findOneByUser(
      BigInt(id),
      BigInt(supplier.id),
    );
  }

  @Patch(':id')
  async update(
    @Param('id') id: string,
    @Body() data: UpdateActivityDto,
    @CurrentSupplier() supplier: any,
  ) {
    const activityId = BigInt(id);
    const supplierId = BigInt(supplier.id);
    return this.activitiesService.updateByUser(activityId, data, supplierId);
  }

  @Delete(':id')
  async remove(@Param('id') id: string, @CurrentSupplier() supplier: any) {
    const activityId = BigInt(id);
    const supplierId = BigInt(supplier.id);
    return this.activitiesService.deleteByUser(activityId, supplierId);
  }
}
