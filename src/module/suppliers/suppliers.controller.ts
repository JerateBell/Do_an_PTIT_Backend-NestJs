import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Patch,
  Delete,
} from '@nestjs/common';
import { SuppliersService } from './suppliers.service';
import { CreateSupplierDto } from './dto/create-supplier.dto';
import { UpdateSupplierDto } from './dto/update-supplier.dto';

@Controller('suppliers')
export class SuppliersController {
  constructor(private readonly suppliersService: SuppliersService) {}

  @Post()
  createSupplier(@Body() dto: CreateSupplierDto) {
    return this.suppliersService.createSupplier(dto);
  }

  @Get()
  findAllSuppliers() {
    return this.suppliersService.findAllSuppliers();
  }

  @Get(':id')
  findOneSupplier(@Param('id') id: string) {
    return this.suppliersService.findOneSupplier(Number(id));
  }

  @Patch(':id')
  updateSupplier(@Param('id') id: string, @Body() dto: UpdateSupplierDto) {
    return this.suppliersService.updateSupplier(Number(id), dto);
  }

  @Delete(':id')
  removeSupplier(@Param('id') id: string) {
    return this.suppliersService.removeSupplier(Number(id));
  }
}
