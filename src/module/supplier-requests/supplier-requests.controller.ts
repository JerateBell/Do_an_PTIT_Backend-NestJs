import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Query,
  Delete,
  UseGuards,
  Req,
  HttpCode,
  HttpStatus,
} from '@nestjs/common';
import { SupplierRequestsService } from './supplier-requests.service';
import { CreateSupplierRequestDto } from './dto/create-request.dto';
import { UpdateRequestStatusDto } from './dto/update-request-status.dto';
import { FilterRequestsDto } from './dto/filter-requests.dto';
import { AuthGuard } from '@nestjs/passport';
import { ApiTags, ApiOperation, ApiResponse, ApiBearerAuth } from '@nestjs/swagger';

@ApiTags('Supplier Requests')
@Controller('supplier-requests')
export class SupplierRequestsController {
  constructor(
    private readonly supplierRequestsService: SupplierRequestsService,
  ) {}

  /**
   * User tạo request mới
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Post()
  @ApiOperation({ summary: 'User tạo request mới (become supplier hoặc add location)' })
  @ApiResponse({ status: 201, description: 'Tạo request thành công' })
  async create(@Req() req, @Body() dto: CreateSupplierRequestDto) {
    const userId = BigInt(req.user.id);
    return this.supplierRequestsService.create(userId, dto);
  }

  /**
   * Admin xem tất cả requests (có filter)
   */
  @Get()
  @ApiOperation({ summary: 'Admin xem tất cả requests (có filter theo type, status)' })
  @ApiResponse({ status: 200, description: 'Lấy danh sách requests thành công' })
  async findAll(@Query() filters?: FilterRequestsDto) {
    return this.supplierRequestsService.findAll(filters);
  }

  /**
   * User xem requests của mình
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Get('my')
  @ApiOperation({ summary: 'User xem requests của chính mình' })
  @ApiResponse({ status: 200, description: 'Lấy danh sách requests thành công' })
  async findMyRequests(@Req() req, @Query() filters?: FilterRequestsDto) {
    const userId = BigInt(req.user.id);
    return this.supplierRequestsService.findMyRequests(userId, filters);
  }

  /**
   * Xem chi tiết request
   */
  @Get(':id')
  @ApiOperation({ summary: 'Xem chi tiết request' })
  @ApiResponse({ status: 200, description: 'Lấy chi tiết request thành công' })
  async findOne(@Param('id') id: string, @Req() req?) {
    const userId = req?.user?.id ? BigInt(req.user.id) : undefined;
    return this.supplierRequestsService.findOne(BigInt(id), userId);
  }

  /**
   * Admin approve request
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Patch(':id/approve')
  @ApiOperation({ summary: 'Admin approve request' })
  @ApiResponse({ status: 200, description: 'Approve request thành công' })
  async approve(
    @Param('id') id: string,
    @Req() req,
    @Body() dto?: UpdateRequestStatusDto,
  ) {
    const adminId = BigInt(req.user.id);
    return this.supplierRequestsService.approve(BigInt(id), adminId, dto);
  }

  /**
   * Admin reject request
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Patch(':id/reject')
  @ApiOperation({ summary: 'Admin reject request' })
  @ApiResponse({ status: 200, description: 'Reject request thành công' })
  async reject(
    @Param('id') id: string,
    @Req() req,
    @Body() dto?: UpdateRequestStatusDto,
  ) {
    const adminId = BigInt(req.user.id);
    return this.supplierRequestsService.reject(BigInt(id), adminId, dto);
  }

  /**
   * Xóa request
   */
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @Delete(':id')
  @HttpCode(HttpStatus.OK)
  @ApiOperation({ summary: 'Xóa request' })
  @ApiResponse({ status: 200, description: 'Xóa request thành công' })
  async remove(@Param('id') id: string) {
    return this.supplierRequestsService.remove(BigInt(id));
  }
}

