import { Module } from '@nestjs/common';
import { GiftCardService } from './giftcard.service';
import { GiftCardController } from './giftcard.controller';
import { PrismaService } from '../../prisma/prisma.service';

@Module({
  controllers: [GiftCardController],
  providers: [GiftCardService, PrismaService],
})
export class GiftCardModule {}
