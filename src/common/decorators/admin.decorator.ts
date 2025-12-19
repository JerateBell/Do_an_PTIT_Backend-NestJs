import { applyDecorators, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { AdminGuard } from '../../module/auth/guard/admin.guard';

/**
 * Decorator để bảo vệ endpoint chỉ dành cho admin
 * Kết hợp JwtGuard và AdminGuard
 */
export function Admin() {
  return applyDecorators(
    UseGuards(AuthGuard('jwt')),
    UseGuards(AdminGuard),
  );
}

