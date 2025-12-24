import { Injectable, BadRequestException } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { CreateAdminBankAccountDto } from "./dto/create-admin-bank-account.dto";
import { UpdateAdminBankAccountDto } from "./dto/update-admin-bank-account.dto";
import { v2 as cloudinary } from "cloudinary";
import streamifier from "streamifier";

@Injectable()
export class AdminBankAccountService {
  constructor(private prisma: PrismaService) {}

  async create(data: CreateAdminBankAccountDto) {
    // Nếu isActive = true thì disable các tài khoản khác (tuỳ nghiệp vụ)
    if (data.isActive) {
      await this.prisma.adminBankAccount.updateMany({
        where: { isActive: true },
        data: { isActive: false },
      });
    }
    return this.prisma.adminBankAccount.create({
      data,
    });
  }

  findAll() {
    return this.prisma.adminBankAccount.findMany({ 
      where: {
        deletedAt: null, // Soft delete filter
      },
      orderBy: { createdAt: "desc" },
    });
  }

  findOne(id: number) {
    return this.prisma.adminBankAccount.findFirst({ 
      where: { 
        id,
        deletedAt: null, // Soft delete filter
      },
    });
  }

  async update(id: number, data: UpdateAdminBankAccountDto) {
    if (data.isActive) {
      await this.prisma.adminBankAccount.updateMany({
        where: { isActive: true },
        data: { isActive: false },
      });
    }
    return this.prisma.adminBankAccount.update({
      where: { id },
      data,
    });
  }

  remove(id: number) {
    return this.prisma.adminBankAccount.update({ 
      where: { id },
      data: { deletedAt: new Date() },
    });
  }

  /**
   * Upload buffer file to Cloudinary and return secure_url
   * used by controller file upload endpoint
   */
  async uploadQr(file: Express.Multer.File): Promise<{ url: string; public_id: string }> {
    if (!file) throw new BadRequestException("No file provided");

    return new Promise((resolve, reject) => {
      const uploadStream = cloudinary.uploader.upload_stream(
        { folder: "admin_bank_qr" },
        (error, result) => {
          if (error) return reject(error);
          if (!result) return reject(new Error("Upload failed"));
          resolve({ url: result.secure_url, public_id: result.public_id });
        }
      );
      streamifier.createReadStream(file.buffer).pipe(uploadStream);
    });
  }
}
