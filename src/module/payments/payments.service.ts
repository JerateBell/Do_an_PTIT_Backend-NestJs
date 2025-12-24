import { Injectable, BadRequestException } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { CreatePaymentDto } from "./dto/create-payment.dto";
import { UpdatePaymentDto } from "./dto/update-payment.dto";
import { BankInfoResponseDto } from "./dto/get-bank-info.dto";
import * as fs from "fs";
import * as path from "path";

@Injectable()
export class PaymentsService {
  constructor(private prisma: PrismaService) {}

  async create(userId: bigint, dto: CreatePaymentDto) {
    return this.prisma.payment.create({
      data: {
        userId,
        bookingId: BigInt(dto.bookingId),
        method: dto.method,
        amount: dto.amount,
        currency: dto.currency,
        status: dto.status,
      },
    });
  }

  async findAll() {
    return this.prisma.payment.findMany({
      where: {
        deletedAt: null, // Soft delete filter
      },
    });
  }

  async findOne(id: bigint) {
    return this.prisma.payment.findFirst({
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
    });
  }

  async update(id: bigint, dto: UpdatePaymentDto) {
    return this.prisma.payment.update({
      where: { id },
      data: {
        bookingId: dto.bookingId ? BigInt(dto.bookingId) : undefined,
        method: dto.method,
        amount: dto.amount,
        currency: dto.currency,
        status: dto.status,
      },
    });
  }

  async remove(id: bigint) {
    return this.prisma.payment.update({
      where: { id },
      data: { deletedAt: new Date() },
    });
  }

  async getBankInfo(): Promise<BankInfoResponseDto | null> {
    return await this.prisma.adminBankAccount.findFirst({
      where: { 
        isActive: true,
        deletedAt: null, // Soft delete filter
      },
    });
  }

  async rewardUserWithCoupon(userId: bigint, amount: number) {
    const THRESHOLD = 1000000;

    if (amount >= THRESHOLD) {
      // Tạo mã coupon ngẫu nhiên: GIFT-XXXXXX
      const randomCode = `GIFT-${Math.random().toString(36).substring(2, 8).toUpperCase()}`;

      await this.prisma.coupon.create({
        data: {
          code: randomCode,
          name: 'Quà tặng tri ân khách hàng',
          discountType: 'percentage',
          discountValue: 10,
          minAmount: 10,
          maxDiscount: 2000000,
          userId: userId,
          validFrom: new Date(),
          validTo: new Date(Date.now() + 30 * 24 * 60 * 60 * 1000),
          isActive: true,
          usageLimit: 1,
        },
      });
      await this.prisma.notification.create({
        data: {
          userId: userId,
          title: 'Bạn nhận được mã giảm giá!',
          message: `Cảm ơn bạn đã thanh toán. Mã ${randomCode} (50k) đã được thêm vào tài khoản của bạn.`,
          type: 'PROMOTION',
        },
      });
      console.log(`Đã tặng coupon ${randomCode} cho User ID: ${userId}`);
    }
  }
  /**
   * Import transaction history từ CSV và tự động cập nhật payment status
   * Format CSV: STT, Ngày giao dịch, Số bút toán, Phát sinh nợ, Phát sinh có, Nội dung, ...
   */
  async importTransactionHistory(filePath: string): Promise<{
    processed: number;
    updated: number;
    errors: number;
    details: Array<{ bookingId: string; status: string; message: string }>;
  }> {
    if (!fs.existsSync(filePath)) {
      throw new BadRequestException(`File không tồn tại: ${filePath}`);
    }

    const fileContent = fs.readFileSync(filePath, 'utf-8');
    const lines = fileContent.split('\n').filter((line) => line.trim() !== '');

    if (lines.length <= 1) {
      throw new BadRequestException('File CSV không có dữ liệu');
    }

    let processed = 0;
    let updated = 0;
    let errors = 0;
    const details: Array<{
      bookingId: string;
      status: string;
      message: string;
    }> = [];

    // Bỏ qua các dòng header (thường là 20-30 dòng đầu)
    // Tìm dòng bắt đầu có dữ liệu (có số thứ tự)
    let dataStartIndex = 0;
    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      // Tìm dòng có pattern: ,1,,, hoặc ,2,,, (số thứ tự)
      if (/^,\d+,,/.test(line)) {
        dataStartIndex = i;
        break;
      }
    }

    const dataLines = lines.slice(dataStartIndex);

    console.log(
      `📊 Tìm thấy ${dataLines.length} dòng dữ liệu bắt đầu từ dòng ${dataStartIndex + 1}`,
    );

    for (const line of dataLines) {
      try {
        // Parse CSV line (các cột được phân cách bởi dấu phẩy)
        const columns = this.parseCSVLine(line);

        if (columns.length < 11) {
          continue; // Bỏ qua dòng không đủ cột
        }

        // Cột 5: Ngày giao dịch (index 4)
        // Cột 7: Số bút toán (index 6)
        // Cột 9: Phát sinh nợ/Debit (index 8) - format: "500,000.00" hoặc 500,000.00
        // Cột 10: Phát sinh có/Credit (index 9) - format: "25,000.00" hoặc 25,000.00
        // Cột 11: Nội dung/Details (index 10) - nhưng do dấu ngoặc kép nên có thể ở index 11

        // Tìm đúng cột Credit và Content (do dấu ngoặc kép làm lệch)
        // Logic: Tìm cột có giá trị số tiền (Credit) và cột tiếp theo là Content
        let debitStr = '';
        let creditStr = '';
        let content = '';

        // Tìm Debit (thường ở index 8)
        debitStr = (columns[8] || '').replace(/^"|"$/g, '');

        // Tìm Credit và Content - do dấu ngoặc kép làm lệch cột
        // Format: ...,0.00,"25,000.00",CUSTOMER Thanh toan don hang 3337...
        // Hoặc: ...,"500,000.00",0.00,GIAO DICH...

        const col9 = (columns[9] || '').replace(/^"|"$/g, '');
        const col10 = (columns[10] || '').replace(/^"|"$/g, '');
        const col11 = (columns[11] || '').replace(/^"|"$/g, '');

        // Kiểm tra pattern: nếu col9 là "0.00" và col10 là số tiền, thì col10 là Credit, col11 là Content
        if (
          col9 === '0.00' &&
          /^\d+[,.]?\d*\.?\d*$/.test(col10) &&
          parseFloat(col10.replace(/,/g, '')) > 0
        ) {
          // Pattern: 0.00,"25,000.00",Content
          creditStr = col10;
          content = col11;
        } else if (
          /^\d+[,.]?\d*\.?\d*$/.test(col9) &&
          parseFloat(col9.replace(/,/g, '')) > 0 &&
          col10 === '0.00'
        ) {
          // Pattern: "500,000.00",0.00,Content (Debit transaction)
          // col9 là Debit, không phải Credit, bỏ qua
          creditStr = '0';
          content = col11;
        } else if (
          /^\d+[,.]?\d*\.?\d*$/.test(col9) &&
          parseFloat(col9.replace(/,/g, '')) > 0
        ) {
          // col9 là số tiền > 0, có thể là Credit
          creditStr = col9;
          // Content ở col10 hoặc col11
          if (
            /^\d+[,.]?\d*\.?\d*$/.test(col10) ||
            col10 === '0.00' ||
            col10.trim() === ''
          ) {
            content = col11;
          } else {
            content = col10;
          }
        } else {
          // Fallback
          creditStr = col9;
          content = col10;
        }

        content = content.trim();
        const debitAmount = this.parseAmount(debitStr);
        const creditAmount = this.parseAmount(creditStr);

        // Debug log cho dòng đầu tiên
        if (processed === 0 && updated === 0 && errors === 0) {
          console.log('🔍 Debug dòng đầu tiên:');
          console.log('  - Raw line:', line.substring(0, 200));
          console.log('  - Columns count:', columns.length);
          console.log('  - Column 8 (Debit):', columns[8]);
          console.log('  - Column 9 (Credit):', columns[9]);
          console.log('  - Column 10 (Content):', columns[10]);
          console.log('  - Column 11:', columns[11]);
          console.log('  - Column 12:', columns[12]);
          console.log('  - Parsed Credit amount:', creditAmount);
          console.log('  - Parsed Content:', content);
        }

        const contentLower = content.toLowerCase();

        // Chỉ xử lý các giao dịch có phát sinh có (tiền vào - khách hàng chuyển tiền cho admin)
        if (creditAmount === 0) {
          continue;
        }

        // Tìm bookingID trong nội dung
        // Pattern: "thanh toán đơn hàng #123" hoặc "thanh toan don hang #123" hoặc "thanh toan don hang 123"
        // Có thể có "CUSTOMER" ở đầu: "CUSTOMER Thanh toan don hang 3337"
        // Hỗ trợ cả có dấu và không dấu tiếng Việt
        const bookingIdMatch =
          contentLower.match(
            /(?:customer\s+)?thanh\s*to[aáà]n\s*đ[ơo]?n\s*h[àa]ng\s*#?\s*(\d+)/i,
          ) ||
          contentLower.match(
            /(?:customer\s+)?thanh\s*toan\s*don\s*hang\s*#?\s*(\d+)/i,
          );

        if (!bookingIdMatch) {
          // Debug: Log nội dung không match
          if (processed === 0 && updated === 0 && errors === 0) {
            console.log('  - Không tìm thấy bookingID trong:', content);
          }
          continue; // Không tìm thấy bookingID
        }

        const bookingId = BigInt(bookingIdMatch[1]);
        processed++;

        // Tìm booking trong database
        const booking = await this.prisma.booking.findFirst({
          where: { 
            id: bookingId,
            deletedAt: null, // Soft delete filter
          },
        });

        if (!booking) {
          errors++;
          details.push({
            bookingId: bookingIdMatch[1],
            status: 'error',
            message: 'Không tìm thấy booking',
          });
          continue;
        }

        // So sánh số tiền với total của booking
        const bookingTotal = Number(booking.total) * 25000;
        const tolerance = 0.01; // Cho phép sai số 0.01 VND

        if (Math.abs(creditAmount - bookingTotal) > tolerance) {
          errors++;
          details.push({
            bookingId: bookingIdMatch[1],
            status: 'error',
            message: `Số tiền không khớp. Booking total: ${bookingTotal}, Transaction: ${creditAmount}`,
          });
          continue;
        }

        // Cập nhật paymentStatus thành "paid"
        await this.prisma.booking.update({
          where: { id: bookingId },
          data: {
            paymentStatus: 'paid',
          },
        });
        try {
          await this.rewardUserWithCoupon(booking.userId, creditAmount);
        } catch (couponError) {
          console.error('Lỗi khi tặng coupon:', couponError);
          // Không throw lỗi ở đây để tránh làm gián đoạn quá trình import transaction
        }
        updated++;
        details.push({
          bookingId: bookingIdMatch[1],
          status: 'success',
          message: 'Đã cập nhật paymentStatus thành paid',
        });
      } catch (error) {
        errors++;
        details.push({
          bookingId: 'unknown',
          status: 'error',
          message: error.message || 'Lỗi không xác định',
        });
      }
    }

    return {
      processed,
      updated,
      errors,
      details,
    };
  }

  /**
   * Parse một dòng CSV (xử lý các trường hợp có dấu phẩy trong nội dung)
   */
  private parseCSVLine(line: string): string[] {
    const columns: string[] = [];
    let current = '';
    let inQuotes = false;

    for (let i = 0; i < line.length; i++) {
      const char = line[i];
      const nextChar = i < line.length - 1 ? line[i + 1] : '';

      if (char === '"') {
        // Nếu là dấu ngoặc kép đôi (""), đó là escape character
        if (nextChar === '"' && inQuotes) {
          current += '"';
          i++; // Bỏ qua dấu ngoặc kép tiếp theo
        } else {
          inQuotes = !inQuotes;
          // Không thêm dấu ngoặc kép vào current
        }
      } else if (char === ',' && !inQuotes) {
        columns.push(current.trim());
        current = '';
      } else {
        current += char;
      }
    }

    // Thêm cột cuối cùng
    if (current.length > 0 || line.endsWith(',')) {
      columns.push(current.trim());
    }

    return columns;
  }

  /**
   * Parse số tiền từ format "500,000.00" thành number
   */
  private parseAmount(amountStr: string): number {
    if (!amountStr || amountStr.trim() === '' || amountStr === '0.00') {
      return 0;
    }

    // Loại bỏ dấu phẩy và chuyển thành number
    const cleaned = amountStr.replace(/,/g, '');
    const parsed = parseFloat(cleaned);

    return isNaN(parsed) ? 0 : parsed;
  }
}
