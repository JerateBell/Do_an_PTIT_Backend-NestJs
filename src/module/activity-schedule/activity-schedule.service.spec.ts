import { Test, TestingModule } from '@nestjs/testing';
import { ActivityScheduleService } from './activity-schedule.service';

describe('ActivityScheduleService', () => {
  let service: ActivityScheduleService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ActivityScheduleService],
    }).compile();

    service = module.get<ActivityScheduleService>(ActivityScheduleService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
