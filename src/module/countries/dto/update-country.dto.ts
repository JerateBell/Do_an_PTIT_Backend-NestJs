import { PartialType } from '@nestjs/swagger';
import { CountryDto } from './create-country.dto';

export class UpdateCountryDto extends PartialType(CountryDto) {}
