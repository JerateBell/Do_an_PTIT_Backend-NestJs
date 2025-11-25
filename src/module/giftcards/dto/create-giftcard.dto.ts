import { IsEmail, IsInt, Min } from 'class-validator';

export class CreateGiftCardDto {
  @IsInt()
  @Min(1)
  amount: number;

  @IsEmail()
  recipientEmail: string;

  message?: string;
}
