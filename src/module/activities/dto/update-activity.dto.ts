import { PartialType } from '@nestjs/mapped-types';
import { CreateActivityDto } from './create-activity.dto';
import { IsOptional, IsEnum } from 'class-validator';
import { ActivityStatus } from '@prisma/client';

export class UpdateActivityDto extends PartialType(CreateActivityDto) {
  @IsOptional()
  @IsEnum(ActivityStatus)
  status?: ActivityStatus;
}
