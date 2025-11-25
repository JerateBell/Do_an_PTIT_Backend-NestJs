import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  UseGuards,
  UploadedFile,
  UseInterceptors,
  Req,
} from '@nestjs/common';
import { UsersService } from './users.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { FilterUsersDto } from './dto/filter-users.dto';
import { UpdatePasswordDto } from './dto/update-password.dto';
import { JwtGuard } from '../auth/guard/jwt-auth.guard';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import { extname } from 'path';
import { Request } from 'express';
interface JwtRequest extends Request {
  user: {
    id: number;
    username?: string;
    role?: string;
  };
}

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post('admin')
  create(@Body() createUserDto: CreateUserDto) {
    return this.usersService.create(createUserDto);
  }

  //Admin get all user
  @Get('admin')
  // Admin: get all users
  @Get('admin/all')
  findAll(@Query() filter: FilterUsersDto) {
    return this.usersService.findByFilterAdmin(filter);
  }

  @Get('admin/:id')
  @UseGuards(JwtGuard)
  @Patch('update-password')
  async updatePassword(@Req() req: any, @Body() dto: UpdatePasswordDto) {
    console.log('req.user:', req.user);
    return this.usersService.updatePassword(req.user.id, dto);
  }

  @UseGuards(JwtGuard)
  @Post('upload-avatar')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './uploads/avatars',
        filename: (req, file, cb) => {
          const uniqueSuffix =
            Date.now() + '-' + Math.round(Math.random() * 1e9);
          const ext = extname(file.originalname);
          cb(null, `${file.fieldname}-${uniqueSuffix}${ext}`);
        },
      }),
    }),
  )
  async uploadAvatar(
    @UploadedFile() file: Express.Multer.File,
    @Req() req: any,
  ) {
    const userId = req.user.id;
    const avatarPath = `/uploads/avatars/${file.filename}`;
    return this.usersService.updateAvatar(userId, avatarPath);
  }

  @UseGuards(JwtGuard)
  @Get('profile')
  async getProfile(@Req() req: any) {
    const userId = req.user.sub || req.user.id;
    return this.usersService.getProfile(userId);
  }

  @UseGuards(JwtGuard)
  @Patch('update-profile')
  async updateProfile(@Req() req: any, @Body() body: any) {
    const userId = req.user.id;
    return this.usersService.updateProfile(userId, body);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.usersService.findOne(+id);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.usersService.remove(BigInt(id));
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateUserDto: UpdateUserDto) {
    return this.usersService.update(+id, updateUserDto);
  }
}
