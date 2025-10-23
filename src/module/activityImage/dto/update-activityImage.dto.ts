import { PartialType } from '@nestjs/mapped-types';
import { CreateActivityImageDto } from './create-activityImage.dto';

export class UpdateActivityImageDto extends PartialType(
  CreateActivityImageDto,
) {}
