import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
} from '@nestjs/common';
import { UsersService } from './users.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { FilterUsersDto } from './dto/filter-users.dto';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post('admin')
  create(@Body() createUserDto: CreateUserDto) {
    return this.usersService.create(createUserDto);
  }

  //Admin get all user
  @Get('admin')
  findAll(@Query() filter: FilterUsersDto) {
    return this.usersService.findByFilterAdmin(filter);
  }

  @Get('admin/:id')
  findOne(@Param('id') id: string) {
    return this.usersService.findOne(BigInt(id));
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateUserDto: UpdateUserDto) {
    return this.usersService.update(BigInt(id), updateUserDto);
  }

  //Admin change status user
  @Patch('change-status/:id')
  changeStatus(@Param('id') id: string, @Body() updateUserDto: UpdateUserDto) {
    return this.usersService.update(BigInt(id), updateUserDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.usersService.remove(BigInt(id));
  }
}
