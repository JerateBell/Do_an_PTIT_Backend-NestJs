import { Test, TestingModule } from '@nestjs/testing';
import { ActivityScheduleController } from './activity-schedule.controller';
import { ActivityScheduleService } from './activity-schedule.service';

describe('ActivityScheduleController', () => {
  let controller: ActivityScheduleController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ActivityScheduleController],
      providers: [ActivityScheduleService],
    }).compile();

    controller = module.get<ActivityScheduleController>(ActivityScheduleController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
