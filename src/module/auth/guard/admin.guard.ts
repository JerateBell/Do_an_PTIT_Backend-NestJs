import {
  Injectable,
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  UnauthorizedException,
} from '@nestjs/common';

@Injectable()
export class AdminGuard implements CanActivate {
  canActivate(context: ExecutionContext): boolean {
    const request = context.switchToHttp().getRequest();
    const user = request.user;

    if (!user) {
      throw new UnauthorizedException('Bạn cần đăng nhập để truy cập');
    }

    if (user.role !== 'admin') {
      throw new ForbiddenException('Chỉ admin mới có quyền truy cập endpoint này');
    }

    return true;
  }
}

