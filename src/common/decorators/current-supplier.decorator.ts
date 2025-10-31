import { createParamDecorator, ExecutionContext } from '@nestjs/common';

export const CurrentSupplier = createParamDecorator(
  (data: unknown, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest();
    return request.user; // sẽ nhận được object { id, email, role }
  },
);
