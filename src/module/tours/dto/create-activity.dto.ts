import { ActivityStatus } from '@prisma/client';
export class CreateActivityDto {
  supplierId: number;
  destinationId: number;
  categoryId: number;
  name: string;
  slug: string;
  description?: string;
  highlights?: any;
  duration?: number;
  price: number;
  currency?: string;
  maxParticipants?: number;
  rating?: number;
  reviewCount?: number;
  instantConfirmation?: boolean;
  freeCancellation?: boolean;
  status?: ActivityStatus;
  featured?: boolean;
}
