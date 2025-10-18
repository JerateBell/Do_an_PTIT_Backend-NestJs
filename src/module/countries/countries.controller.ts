import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { CountriesService } from './countries.service';
import { CountryDto } from './dto/create-country.dto';
import { UpdateCountryDto } from './dto/update-country.dto';

@Controller('countries')
export class CountriesController {
  constructor(private readonly countriesService: CountriesService) {}

  @Post()
  create(@Body() countryDto: CountryDto) {
    return this.countriesService.create(countryDto);
  }

  @Get()
  findAll() {
    return this.countriesService.findAll();
  }

  @Get(':code')
  findOne(@Param('code') code: string) {
    return this.countriesService.findOne(code);
  }

  @Patch(':code')
  update(
    @Param('code') code: string,
    @Body() updateCountryDto: UpdateCountryDto,
  ) {
    return this.countriesService.update(code, updateCountryDto);
  }

  @Delete(':code')
  remove(@Param('code') code: string) {
    return this.countriesService.remove(code);
  }
}
