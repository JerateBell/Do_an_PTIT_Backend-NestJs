import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { CreatePaymentDto } from "./dto/create-payment.dto";
import { UpdatePaymentDto } from "./dto/update-payment.dto";
import { BankInfoResponseDto } from "./dto/get-bank-info.dto";

@Injectable()
export class PaymentsService {
  constructor(private prisma: PrismaService) {}

  async create(userId: bigint, dto: CreatePaymentDto) {
    return this.prisma.payment.create({
      data: {
        userId,
        bookingId: BigInt(dto.bookingId),
        method: dto.method,
        amount: dto.amount,
        currency: dto.currency,
        status: dto.status,
      },
    });
  }

  async findAll() {
    return this.prisma.payment.findMany();
  }

  async findOne(id: bigint) {
    return this.prisma.payment.findUnique({
      where: { id },
    });
  }

  async update(id: bigint, dto: UpdatePaymentDto) {
    return this.prisma.payment.update({
      where: { id },
      data: {
        bookingId: dto.bookingId ? BigInt(dto.bookingId) : undefined,
        method: dto.method,
        amount: dto.amount,
        currency: dto.currency,
        status: dto.status,
      },
    });
  }

  async remove(id: bigint) {
    return this.prisma.payment.delete({
      where: { id },
    });
  }

  async getBankInfo(): Promise<BankInfoResponseDto | null> {
    return await this.prisma.adminBankAccount.findFirst({
      where: { isActive: true },
    });
  }
}
