import { Test, TestingModule } from '@nestjs/testing';
import { AdminBankAccountController } from './admin-bank-account.controller';
import { AdminBankAccountService } from './admin-bank-account.service';

describe('AdminBankAccountController', () => {
  let controller: AdminBankAccountController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [AdminBankAccountController],
      providers: [AdminBankAccountService],
    }).compile();

    controller = module.get<AdminBankAccountController>(AdminBankAccountController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
