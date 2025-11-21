import { Injectable, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../../prisma/prisma.service';
import { CreateGiftCardDto } from '../dto/create-giftcard.dto';

@Injectable()
export class GiftCardService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateGiftCardDto, senderId: number) {
    const recipient = await this.prisma.user.findUnique({
      where: { email: dto.recipientEmail },
    });

    if (!recipient) {
      throw new BadRequestException(
        'Email người nhận không tồn tại trong hệ thống.',
      );
    }

  
    const giftCard = await this.prisma.giftCard.create({
      data: {
        amount: dto.amount,
        message: dto.message || null,
        senderId,
        recipientId: recipient.id,
      },
    });
  
    await this.prisma.user.update({
      where: { id: recipient.id },
      data: {
        balance: { increment: dto.amount },
      },
    });

    return {
      message: 'Gửi thẻ quà tặng thành công!',
      giftCard,
    };
  }

  async getReceivedGiftCards(userId: number) {
    return this.prisma.giftCard.findMany({
      where: { recipientId: userId },
      include: { sender: true },
    });
  }

  async getSentGiftCards(userId: number) {
    return this.prisma.giftCard.findMany({
      where: { senderId: userId },
      include: { recipient: true },
    });
  }
}
