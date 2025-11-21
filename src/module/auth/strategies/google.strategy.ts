import { PassportStrategy } from '@nestjs/passport';
import { Strategy, VerifyCallback } from 'passport-google-oauth20';
import { Injectable } from '@nestjs/common';
import type { Profile } from 'passport';
import { AuthService } from '../auth.service';

@Injectable()
export class GoogleStrategy extends PassportStrategy(Strategy) {
  constructor(private readonly authService: AuthService) {
    super({
      clientID:
        '134091893719-de15bae42mb091f3fj67jngt3o2cng4u.apps.googleusercontent.com',
      clientSecret: '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',
      callbackURL: 'http://localhost:3000/auth/google/callback',
      scope: ['email', 'profile'],
    });
  }

  async validate(accessToken: string, refreshToken: string, profile: Profile) {
    const result = await this.authService.googleLogin(profile);
    return result;
  }
}
