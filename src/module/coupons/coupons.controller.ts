import { Controller, Post, Body, Get, Query, Param, Delete, UseGuards, Req } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { CouponsService } from './coupons.service';
import { CreateCouponDto } from './dto/create-coupon.dto';
import { ApplyCouponDto } from './dto/apply-coupon.dto';
import { OptionalJwtGuard } from '../auth/guard/optional-jwt.guard';

@Controller('coupons')
export class CouponsController {
  constructor(private readonly couponsService: CouponsService) {}

  @Post()
  create(@Body() dto: CreateCouponDto) {
    console.log('LOG [Controller]: Request POST /coupons đã đến Controller.');
    return this.couponsService.create(dto);
  }

  // Use optional JWT guard - works for both logged in and guest users
  @UseGuards(OptionalJwtGuard)
  @Get('active')
  findAllActive(@Req() req: any) {
    console.log('LOG: API /coupons/active được gọi thành công.');
    const userId = req.user?.id ? BigInt(req.user.id) : undefined;
    return this.couponsService.listActive(userId);
  }

  // Use optional JWT guard for apply - private coupons need userId
  @UseGuards(OptionalJwtGuard)
  @Post('apply')
  apply(@Body() dto: ApplyCouponDto, @Req() req: any) {
    const userId = req.user?.id ? BigInt(req.user.id) : undefined;
    return this.couponsService.apply(dto.code, dto.amount, userId);
  }

  @Get()
  list(@Query('active') active?: string) {
    const onlyActive = active === 'true' ? true : undefined;
    return this.couponsService.list(onlyActive);
  }

  @Delete(':code')
  async delete(@Param('code') code: string) {
    console.log(`LOG: API DELETE /coupons/${code} được gọi.`);
    return this.couponsService.delete(code);
  }

  @Get(':code')
  get(@Param('code') code: string) {
    return this.couponsService.getByCode(code);
  }

  @Post(':code/consume')
  consume(@Param('code') code: string) {
    return this.couponsService.consume(code);
  }
}
