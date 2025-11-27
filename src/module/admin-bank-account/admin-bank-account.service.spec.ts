import { Test, TestingModule } from '@nestjs/testing';
import { AdminBankAccountService } from './admin-bank-account.service';

describe('AdminBankAccountService', () => {
  let service: AdminBankAccountService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [AdminBankAccountService],
    }).compile();

    service = module.get<AdminBankAccountService>(AdminBankAccountService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
