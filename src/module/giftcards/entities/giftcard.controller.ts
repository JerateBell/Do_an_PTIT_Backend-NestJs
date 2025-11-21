import { Controller, Post, Body, Req, UseGuards, Get } from '@nestjs/common';
import { JwtGuard } from '../../auth/guard/jwt-auth.guard';
import { GiftCardService } from './giftcard.service';
import { CreateGiftCardDto } from '../dto/create-giftcard.dto';

@Controller('giftcard')
export class GiftCardController {
  constructor(private giftCardService: GiftCardService) {}

  @UseGuards(JwtGuard)
  @Post('send')
  sendGiftCard(@Body() dto: CreateGiftCardDto, @Req() req) {
    return this.giftCardService.create(dto, req.user.id);
  }

  @UseGuards(JwtGuard)
  @Get('received')
  getReceived(@Req() req) {
    return this.giftCardService.getReceivedGiftCards(req.user.id);
  }

  @UseGuards(JwtGuard)
  @Get('sent')
  getSent(@Req() req) {
    return this.giftCardService.getSentGiftCards(req.user.id);
  }
}
