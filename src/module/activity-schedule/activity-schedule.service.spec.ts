import { Test, TestingModule } from '@nestjs/testing';
import { ActivitySchedulesService } from './activity-schedule.service';

describe('ActivityScheduleService', () => {
  let service: ActivitySchedulesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ActivitySchedulesService],
    }).compile();

    service = module.get<ActivitySchedulesService>(ActivitySchedulesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
