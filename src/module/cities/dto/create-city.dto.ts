import { ApiProperty } from '@nestjs/swagger';

export class CreateCityDto {
  @ApiProperty()
  countryCode: string;

  @ApiProperty()
  name: string;
}
