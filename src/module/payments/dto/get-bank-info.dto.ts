export class BankInfoResponseDto {
  id: number;
  bankName: string;
  accountNo: string;
  ownerName: string;
  qrCode: string | null;
  isActive: boolean;
}
