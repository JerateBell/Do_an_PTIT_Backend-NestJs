import { Controller, Get, Post, Body, Patch, Param, Delete, Req, UseGuards } from '@nestjs/common';
import { CreateReviewDto } from './dto/create-review.dto';
import { UpdateReviewDto } from './dto/update-review.dto';
import { ReviewsService } from './reviews.service';
import { AuthGuard } from '@nestjs/passport';

@Controller('reviews')
export class ReviewController {
  constructor(private readonly reviewService: ReviewsService) {}

  // CREATE 
  @UseGuards(AuthGuard('jwt'))
  @Post()
  create(@Body() dto: CreateReviewDto, @Req() req) {
    return this.reviewService.create(dto, req.user.id);
  }

  // GET reviews by activityId 
  @Get('activity/:activityId')
  getByActivity(@Param('activityId') activityId: string) {
    return this.reviewService.findByActivity(Number(activityId));
  }

  // GET review by bookingId 
  @UseGuards(AuthGuard('jwt'))
  @Get('booking/:bookingId')
  getByBooking(@Param('bookingId') bookingId: string) {
    return this.reviewService.findByBooking(Number(bookingId));
  }

  // UPDATE 
  @UseGuards(AuthGuard('jwt'))
  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateReviewDto, @Req() req) {
    return this.reviewService.update(Number(id), dto, req.user.id);
  }

  // DELETE 
  @UseGuards(AuthGuard('jwt'))
  @Delete(':id')
  remove(@Param('id') id: string, @Req() req) {
    return this.reviewService.remove(Number(id), req.user.id);
  }
}
