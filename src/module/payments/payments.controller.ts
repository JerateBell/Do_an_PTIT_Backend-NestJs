import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Req,
  UseInterceptors,
  UploadedFile,
  BadRequestException,
  Res,
} from '@nestjs/common';
import { PaymentsService } from './payments.service';
import { CreatePaymentDto } from './dto/create-payment.dto';
import { UpdatePaymentDto } from './dto/update-payment.dto';
import { BankInfoResponseDto } from './dto/get-bank-info.dto';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import * as path from 'path';
import * as fs from 'fs';
import { Admin } from 'src/common/decorators/admin.decorator';
import type { Response } from 'express';

@Controller('payments')
// @UseGuards(AuthGuard('jwt'))
export class PaymentsController {
  constructor(private readonly paymentsService: PaymentsService) {}

  @Post()
  create(
    @Req() req: { user: { id: string | number } },
    @Body() dto: CreatePaymentDto,
  ) {
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

  /**
   * Xuất file CSV danh sách số tiền cần thanh toán cho nhà cung cấp
   * Chỉ admin mới có thể sử dụng endpoint này
   */
  @Get('export-supplier-payments')
  @Admin()
  async exportSupplierPayments(@Res() res: Response): Promise<void> {
    try {
      const fileName = await this.paymentsService.exportSupplierPayments();
      const filePath = path.join(process.cwd(), 'exports', fileName);

      if (!fs.existsSync(filePath)) {
        throw new BadRequestException('File không tồn tại');
      }

      res.setHeader('Content-Type', 'text/csv; charset=utf-8');
      res.setHeader(
        'Content-Disposition',
        `attachment; filename="${encodeURIComponent(fileName)}"`,
      );

      const fileStream = fs.createReadStream(filePath);
      fileStream.pipe(res);
    } catch (error: unknown) {
      const errorMessage =
        error instanceof Error
          ? error.message
          : 'Lỗi khi xuất file danh sách thanh toán nhà cung cấp';
      throw new BadRequestException(errorMessage);
    }
  }

  /**
   * Download file CSV đã xuất theo tên file
   */
  @Get('download-supplier-payments/:fileName')
  @Admin()
  downloadSupplierPayments(
    @Param('fileName') fileName: string,
    @Res() res: Response,
  ): void {
    try {
      // Bảo mật: chỉ cho phép tải file CSV từ thư mục exports
      const sanitizedFileName = path.basename(fileName);
      if (!sanitizedFileName.endsWith('.csv')) {
        throw new BadRequestException('Chỉ cho phép tải file CSV');
      }

      const filePath = path.join(process.cwd(), 'exports', sanitizedFileName);

      if (!fs.existsSync(filePath)) {
        throw new BadRequestException('File không tồn tại');
      }

      res.setHeader('Content-Type', 'text/csv; charset=utf-8');
      res.setHeader(
        'Content-Disposition',
        `attachment; filename="${encodeURIComponent(sanitizedFileName)}"`,
      );

      const fileStream = fs.createReadStream(filePath);
      fileStream.pipe(res);
    } catch (error: unknown) {
      const errorMessage =
        error instanceof Error ? error.message : 'Lỗi khi tải file';
      throw new BadRequestException(errorMessage);
    }
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
    } catch (error: unknown) {
      const errorMessage =
        error instanceof Error ? error.message : 'Lỗi không xác định';
      return {
        message: 'Lỗi khi test quà tặng',
        error: errorMessage,
      };
    }
  }
}
