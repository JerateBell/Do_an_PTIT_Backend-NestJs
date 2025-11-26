import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseInterceptors,
  UploadedFile,
  ParseIntPipe,
} from "@nestjs/common";
import { AdminBankAccountService } from "./admin-bank-account.service";
import { CreateAdminBankAccountDto } from "./dto/create-admin-bank-account.dto";
import { UpdateAdminBankAccountDto } from "./dto/update-admin-bank-account.dto";
import { FileInterceptor } from "@nestjs/platform-express";
import { CloudinaryService } from "src/common/cloudinary/cloudinary.service";

@Controller("admin-bank-accounts")
export class AdminBankAccountController {
  constructor(
    private readonly service: AdminBankAccountService,
    private readonly cloudinaryService: CloudinaryService,
  ) {}

  @Post()
  create(@Body() dto: CreateAdminBankAccountDto) {
    return this.service.create(dto);
  }

  @Get()
  findAll() {
    return this.service.findAll();
  }

  @Get(":id")
  findOne(@Param("id", ParseIntPipe) id: number) {
    return this.service.findOne(id);
  }

  @Patch(":id")
  update(
    @Param("id", ParseIntPipe) id: number,
    @Body() dto: UpdateAdminBankAccountDto
  ) {
    return this.service.update(id, dto);
  }

  @Delete(":id")
  remove(@Param("id", ParseIntPipe) id: number) {
    return this.service.remove(id);
  }

  /**
   * Upload QR image (multipart/form-data) and return URL
   */
  @Post('upload')
  @UseInterceptors(FileInterceptor('file'))
  async uploadQr(
    @UploadedFile() file: Express.Multer.File,
  ) {
    const upload = await this.cloudinaryService.uploadImage(file);
    return { url: upload.secure_url };
  }
}
