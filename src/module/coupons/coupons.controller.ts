import { Controller, Post, Body, Get, Query, Param } from '@nestjs/common';
import { CouponsService } from './coupons.service';
import { CreateCouponDto } from './dto/create-coupon.dto';
import { ApplyCouponDto } from './dto/apply-coupon.dto';
@Controller('coupons')
export class CouponsController {
  constructor(private readonly couponsService: CouponsService) {}
  @Post() create(@Body() dto: CreateCouponDto) {
    return this.couponsService.create(dto);
  }
  @Get() list(@Query('active') active?: string) {
    const onlyActive = active === 'true' ? true : undefined;
    return this.couponsService.list(onlyActive);
  }
  @Get(':code') get(@Param('code') code: string) {
    return this.couponsService.getByCode(code);
  }
  @Post('apply') apply(@Body() dto: ApplyCouponDto) {
    return this.couponsService.apply(dto.code, dto.amount);
  }
  @Post(':code/consume') consume(@Param('code') code: string) {
    return this.couponsService.consume(code);
  }
}
