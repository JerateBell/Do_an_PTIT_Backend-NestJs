import { PartialType } from '@nestjs/mapped-types';
import { CreateActivityScheduleDto } from './create-activity-schedule.dto';
import { BookedLessThanAvailable } from '../validators/booked-less-than-available.validator';

export class UpdateActivityScheduleDto extends PartialType(CreateActivityScheduleDto) {
  @BookedLessThanAvailable({
    message: 'bookedSpots cannot be greater than availableSpots',
  })
  bookedSpots?: number;
}
