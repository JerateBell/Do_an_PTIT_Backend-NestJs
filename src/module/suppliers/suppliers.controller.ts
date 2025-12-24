import { Controller, Get, Post, Body, Patch, Param, Delete, HttpException, HttpStatus, Query } from '@nestjs/common';
import { SuppliersService } from './suppliers.service';
import { CreateSupplierDto } from './dto/create-supplier.dto';
import { UpdateSupplierDto } from './dto/update-supplier.dto';
import { FilterSuppliersDto } from './dto/filter-suppliers.dto';

@Controller('suppliers')
export class SuppliersController {
  constructor(private readonly suppliersService: SuppliersService) {}

  @Post()
  async create(@Body() dto: CreateSupplierDto) {
    if (dto.commissionRate && (dto.commissionRate < 0 || dto.commissionRate > 100)) {
      throw new HttpException('Tỉ lệ hoa hồng phải nằm trong khoảng 0-100%', HttpStatus.BAD_REQUEST);
    }

    return this.suppliersService.create(dto);
  }

  @Get()
  findAll(@Query() filter: FilterSuppliersDto) {
    return this.suppliersService.findAll(filter);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.suppliersService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateSupplierDto) {
    return this.suppliersService.update(+id, dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.suppliersService.remove(+id);
  }
}
