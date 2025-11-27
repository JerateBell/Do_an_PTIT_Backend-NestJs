import { IsBoolean, IsNotEmpty, IsOptional, IsString } from "class-validator";

export class CreateAdminBankAccountDto {
  @IsString()
  @IsNotEmpty()
  bankName: string;

  @IsString()
  @IsNotEmpty()
  accountNo: string;

  @IsString()
  @IsNotEmpty()
  ownerName: string;

  @IsString()
  @IsOptional()
  qrCode?: string;

  @IsBoolean()
  @IsOptional()
  isActive?: boolean;
}
