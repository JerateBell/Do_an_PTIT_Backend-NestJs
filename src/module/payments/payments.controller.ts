import {
  Controller, Get, Post, Body, Patch, Param, Delete, Req,
  UseGuards
} from "@nestjs/common";
import { PaymentsService } from "./payments.service";
import { CreatePaymentDto } from "./dto/create-payment.dto";
import { UpdatePaymentDto } from "./dto/update-payment.dto";
import { AuthGuard } from "@nestjs/passport";
import { BankInfoResponseDto } from "./dto/get-bank-info.dto";

@Controller("payments")
@UseGuards(AuthGuard('jwt'))
export class PaymentsController {
  constructor(private readonly paymentsService: PaymentsService) {}

  @Post()
  create(@Req() req, @Body() dto: CreatePaymentDto) {
    const userId = BigInt(req.user.id);
    return this.paymentsService.create(userId, dto);
  }

  @Get()
  findAll() {
    return this.paymentsService.findAll();
  }

  @Get("bank-info")
  getBankInfo(): Promise<BankInfoResponseDto | null> {
    return this.paymentsService.getBankInfo();
  }

  @Get(":id")
  findOne(@Param("id") id: string) {
    return this.paymentsService.findOne(BigInt(id));
  }

  @Patch(":id")
  update(@Param("id") id: string, @Body() dto: UpdatePaymentDto) {
    return this.paymentsService.update(BigInt(id), dto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.paymentsService.remove(BigInt(id));
  }
}
