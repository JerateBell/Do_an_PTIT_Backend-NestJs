export class UpdateSupplierDto {
  companyName?: string;
  email?: string;
  phone?: string;
  address?: string;
  commissionRate?: number;
  userId?: number;
  status?: 'active' | 'suspended' | 'deleted';
}
