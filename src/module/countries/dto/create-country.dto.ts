import { ApiProperty } from '@nestjs/swagger';

export class CountryDto {
  @ApiProperty()
  name: string;

  @ApiProperty()
  code: string;
}
