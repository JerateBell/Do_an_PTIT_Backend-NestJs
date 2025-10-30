export class CreateSupplierDto {
  companyName: string;
  businessEmail?: string;
  phone?: string;
  address?: string;
  commissionRate?: number;
  userId: number;
}
