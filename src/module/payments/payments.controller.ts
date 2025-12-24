import {
  Controller, Get, Post, Body, Patch, Param, Delete, Req,
  UseGuards, UseInterceptors, UploadedFile, BadRequestException,
} from "@nestjs/common";
import { PaymentsService } from "./payments.service";
import { CreatePaymentDto } from "./dto/create-payment.dto";
import { UpdatePaymentDto } from "./dto/update-payment.dto";
import { AuthGuard } from "@nestjs/passport";
import { BankInfoResponseDto } from "./dto/get-bank-info.dto";
import { FileInterceptor } from "@nestjs/platform-express";
import { diskStorage } from "multer";
import * as path from "path";
import * as fs from "fs";
import { Admin } from "src/common/decorators/admin.decorator";

@Controller('payments')
// @UseGuards(AuthGuard('jwt'))
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

  @Get('bank-info')
  getBankInfo(): Promise<BankInfoResponseDto | null> {
    return this.paymentsService.getBankInfo();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.paymentsService.findOne(BigInt(id));
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdatePaymentDto) {
    return this.paymentsService.update(BigInt(id), dto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.paymentsService.remove(BigInt(id));
  }

  /**
   * Import transaction history từ CSV file
   * Upload file CSV và tự động cập nhật payment status cho các booking đã thanh toán
   * Chỉ admin mới có thể sử dụng endpoint này
   */
  @Post('import-transactions')
  @Admin()
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: (req, file, cb) => {
          const uploadPath = path.join(process.cwd(), 'imports');
          if (!fs.existsSync(uploadPath)) {
            fs.mkdirSync(uploadPath, { recursive: true });
          }
          cb(null, uploadPath);
        },
        filename: (req, file, cb) => {
          const uniqueSuffix =
            Date.now() + '-' + Math.round(Math.random() * 1e9);
          cb(null, `transaction-${uniqueSuffix}.csv`);
        },
      }),
      fileFilter: (req, file, cb) => {
        if (
          file.mimetype === 'text/csv' ||
          file.originalname.endsWith('.csv')
        ) {
          cb(null, true);
        } else {
          cb(new BadRequestException('Chỉ chấp nhận file CSV'), false);
        }
      },
      limits: {
        fileSize: 10 * 1024 * 1024, // 10MB
      },
    }),
  )
  async importTransactions(@UploadedFile() file: Express.Multer.File) {
    if (!file) {
      throw new BadRequestException('Vui lòng upload file CSV');
    }

    const filePath = path.join(process.cwd(), 'imports', file.filename);
    const result =
      await this.paymentsService.importTransactionHistory(filePath);

    // Xóa file sau khi xử lý
    try {
      fs.unlinkSync(filePath);
    } catch (error) {
      console.error('Lỗi khi xóa file:', error);
    }

    return {
      message: 'Import hoàn tất',
      ...result,
    };
  }
  @Get('test-gift/:userId/:amount')
  async testGift(
    @Param('userId') userId: string,
    @Param('amount') amount: string,
  ) {
    try {
      const result = await this.paymentsService.rewardUserWithCoupon(
        BigInt(userId),
        parseFloat(amount),
      );
      return {
        message: 'Kích hoạt tặng quà thành công!',
        data: result,
      };
    } catch (error) {
      return {
        message: 'Lỗi khi test quà tặng',
        error: error.message,
      };
    }
  }
}
