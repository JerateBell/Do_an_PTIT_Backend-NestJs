import { Controller, Post, Delete, Body, Get, UseGuards, Param } from '@nestjs/common';
import { WishlistService } from './wishlist.service';
import { CreateWishlistDto } from './dto/create-wishlist.dto';
import { User } from 'src/common/decorators/user.decorator';
import { AuthGuard } from '@nestjs/passport';

@Controller('wishlist')
@UseGuards(AuthGuard('jwt'))
export class WishlistController {
  constructor(private readonly wishlistService: WishlistService) {}

  @Post(':activityId')
  addToWishlist(
    @User('id') userId: number,
    @Param('activityId') activityId: number,
  ) {
    return this.wishlistService.addToWishlist(userId, Number(activityId));
  }

  @Delete(':activityId')
  removeFromWishlist(
    @User('id') userId: number,
    @Param('activityId') activityId: number,
  ) {
    return this.wishlistService.removeFromWishlist(userId, Number(activityId));
  }

  @Get()
  getWishlist(@User('id') userId: number) {
    return this.wishlistService.getWishlist(userId);
  }
}
