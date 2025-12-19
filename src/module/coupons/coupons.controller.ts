import { Controller, Post, Body, Get, Query, Param, Delete} from '@nestjs/common';
import { CouponsService } from './coupons.service';
import { CreateCouponDto } from './dto/create-coupon.dto';
import { ApplyCouponDto } from './dto/apply-coupon.dto';
@Controller('coupons')
export class CouponsController {
  constructor(private readonly couponsService: CouponsService) {}
  @Post() create(@Body() dto: CreateCouponDto) {
    console.log('LOG [Controller]: Request POST /coupons đã đến Controller.');
    return this.couponsService.create(dto);
  }

  @Get('active')
  findAllActive() {
    console.log('LOG: API /coupons/active được gọi thành công.');
    return this.couponsService.listActive();
  }

  @Post('apply') apply(@Body() dto: ApplyCouponDto) {
    return this.couponsService.apply(dto.code, dto.amount);
  }

  @Get() list(@Query('active') active?: string) {
    const onlyActive = active === 'true' ? true : undefined;
    return this.couponsService.list(onlyActive);
  }

  @Delete(':code')
  async delete(@Param('code') code: string) {
    console.log(`LOG: API DELETE /coupons/${code} được gọi.`);
    return this.couponsService.delete(code);
  }

  @Get(':code') get(@Param('code') code: string) {
    return this.couponsService.getByCode(code);
  }

  @Post(':code/consume') consume(@Param('code') code: string) {
    return this.couponsService.consume(code);
  }
}
