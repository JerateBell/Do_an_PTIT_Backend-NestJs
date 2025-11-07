import { Test, TestingModule } from '@nestjs/testing';
import { ActivitySchedulesController } from './activity-schedule.controller';
import { ActivitySchedulesService } from './activity-schedule.service';

describe('ActivityScheduleController', () => {
  let controller: ActivitySchedulesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ActivitySchedulesController],
      providers: [ActivitySchedulesService],
    }).compile();

    controller = module.get<ActivitySchedulesController>(ActivitySchedulesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
