import { PartialType } from "@nestjs/mapped-types";
import { CreateAdminBankAccountDto } from "./create-admin-bank-account.dto";

export class UpdateAdminBankAccountDto extends PartialType(CreateAdminBankAccountDto) {}
