import { Module } from '@nestjs/common';
import { AdminBankAccountService } from './admin-bank-account.service';
import { AdminBankAccountController } from './admin-bank-account.controller';
import { PrismaService } from '../prisma/prisma.service';
import { CloudinaryService } from 'src/common/cloudinary/cloudinary.service';

@Module({
  controllers: [AdminBankAccountController],
  providers: [AdminBankAccountService, PrismaService, CloudinaryService],
})
export class AdminBankAccountModule {}
