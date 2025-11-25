import {
  Controller,
  Post,
  Request,
  UseGuards,
  Get,
  Body,
  Res,
  Req,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginDto } from './dtos/login.dto';
import { RegisterDto } from './dtos/register.dto';
import { ApiTags } from '@nestjs/swagger';
import { JwtGuard } from './guard/jwt-auth.guard';
import { AuthGuard } from '@nestjs/passport';
import type { Response, Request as ExpressRequest } from 'express';
@Controller('auth')
@ApiTags('Authentication')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('login')
  async login(@Body() loginDto: LoginDto) {
    return this.authService.login(loginDto);
  }

  @Post('register')
  async register(@Body() registerDto: RegisterDto) {
    return this.authService.register(registerDto);
  }

  @Get('google')
  @UseGuards(AuthGuard('google'))
  async googleAuth(@Req() req) {}

  @Get('google/callback')
  @UseGuards(AuthGuard('google'))
  async googleCallback(@Req() req, @Res() res) {
    console.log('REQ.USER:', req.user);

    const token = req.user.access_token; 
    return res.redirect(`http://localhost:5173/login-success?token=${token}`);
  }

  @UseGuards(JwtGuard)
  @Get('profile')
  getProfile(@Request() req) {
    return 'This is a protected route. User info: ';
  }
}
