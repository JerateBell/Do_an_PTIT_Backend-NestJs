import { Injectable, ExecutionContext } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

/**
 * Optional JWT Guard - allows requests to pass through even without a token
 * If token is present and valid: sets req.user
 * If token is missing or invalid: req.user = undefined (no error thrown)
 */
@Injectable()
export class OptionalJwtGuard extends AuthGuard('jwt') {
  handleRequest(err: any, user: any) {
    // Return user if exists, otherwise return undefined (no error thrown)
    return user || undefined;
  }

  canActivate(context: ExecutionContext) {
    // Always try to authenticate, but don't fail if no token
    return super.canActivate(context);
  }
}

