import {
  Injectable,
  NotFoundException,
  BadRequestException,
  ForbiddenException,
} from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSupplierRequestDto } from './dto/create-request.dto';
import { UpdateRequestStatusDto } from './dto/update-request-status.dto';
import { FilterRequestsDto } from './dto/filter-requests.dto';
import { RequestType, RequestStatus, Prisma } from '@prisma/client';
import { SuppliersService } from '../suppliers/suppliers.service';
import { CountriesService } from '../countries/countries.service';
import { CitiesService } from '../cities/cities.service';
import { DestinationsService } from '../destinations/destinations.service';

@Injectable()
export class SupplierRequestsService {
  constructor(
    private prisma: PrismaService,
    private suppliersService: SuppliersService,
    private countriesService: CountriesService,
    private citiesService: CitiesService,
    private destinationsService: DestinationsService,
  ) {}

  /**
   * User tạo request mới
   */
  async create(userId: bigint, dto: CreateSupplierRequestDto) {
    // Validate request data dựa trên type
    this.validateRequestData(dto.type, dto.requestData);

    // Kiểm tra nếu là become_supplier và user đã có supplier
    if (dto.type === RequestType.become_supplier) {
      const existingSupplier = await this.prisma.supplier.findUnique({
        where: { userId },
      });
      if (existingSupplier) {
        throw new BadRequestException('Bạn đã là supplier rồi');
      }

      // Kiểm tra xem có request become_supplier đang pending không
      const pendingRequest = await this.prisma.supplierRequest.findFirst({
        where: {
          userId,
          type: RequestType.become_supplier,
          status: RequestStatus.pending,
        },
      });
      if (pendingRequest) {
        throw new BadRequestException('Bạn đã có request become supplier đang chờ xử lý');
      }
    }

    return this.prisma.supplierRequest.create({
      data: {
        userId,
        type: dto.type,
        requestData: dto.requestData as unknown as Prisma.InputJsonValue,
        status: RequestStatus.pending,
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
          },
        },
      },
    });
  }

  /**
   * Admin xem tất cả requests (có filter và pagination)
   */
  async findAll(filters?: FilterRequestsDto) {
    const { page = 1, limit = 10, type, status } = filters || {};
    const skip = (page - 1) * limit;

    const where: Prisma.SupplierRequestWhereInput = {};

    if (type) {
      where.type = type;
    }

    if (status) {
      where.status = status;
    }

    const [requests, total] = await Promise.all([
      this.prisma.supplierRequest.findMany({
        where,
        skip,
        take: limit,
        include: {
          user: {
            select: {
              id: true,
              email: true,
              firstName: true,
              lastName: true,
              phone: true,
            },
          },
        },
        orderBy: {
          createdAt: 'desc',
        },
      }),
      this.prisma.supplierRequest.count({ where }),
    ]);

    return {
      requests,
      total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
    };
  }

  /**
   * User xem requests của mình
   */
  async findMyRequests(userId: bigint, filters?: FilterRequestsDto) {
    const where: Prisma.SupplierRequestWhereInput = {
      userId,
    };

    if (filters?.type) {
      where.type = filters.type;
    }

    if (filters?.status) {
      where.status = filters.status;
    }

    return this.prisma.supplierRequest.findMany({
      where,
      orderBy: {
        createdAt: 'desc',
      },
    });
  }

  /**
   * Xem chi tiết request
   */
  async findOne(id: bigint, userId?: bigint) {
    const request = await this.prisma.supplierRequest.findUnique({
      where: { id },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
            phone: true,
          },
        },
      },
    });

    if (!request) {
      throw new NotFoundException('Không tìm thấy request');
    }

    // Nếu là user thường, chỉ cho phép xem request của chính mình
    if (userId && request.userId !== userId) {
      throw new ForbiddenException('Bạn không có quyền xem request này');
    }

    return request;
  }

  /**
   * Admin approve request
   */
  async approve(id: bigint, adminId: bigint, dto?: UpdateRequestStatusDto) {
    const request = await this.findOne(id);

    if (request.status !== RequestStatus.pending) {
      throw new BadRequestException('Request này đã được xử lý rồi');
    }

    // Xử lý request dựa trên type
    try {
      await this.processRequest(request.type, request.requestData as any, request.userId);
    } catch (error) {
      throw new BadRequestException(`Không thể xử lý request: ${error.message}`);
    }

    // Update request status
    return this.prisma.supplierRequest.update({
      where: { id },
      data: {
        status: RequestStatus.approved,
        processedBy: adminId,
        processedAt: new Date(),
        adminNotes: dto?.adminNotes,
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
          },
        },
      },
    });
  }

  /**
   * Admin reject request
   */
  async reject(id: bigint, adminId: bigint, dto?: UpdateRequestStatusDto) {
    const request = await this.findOne(id);

    if (request.status !== RequestStatus.pending) {
      throw new BadRequestException('Request này đã được xử lý rồi');
    }

    return this.prisma.supplierRequest.update({
      where: { id },
      data: {
        status: RequestStatus.rejected,
        processedBy: adminId,
        processedAt: new Date(),
        adminNotes: dto?.adminNotes,
      },
      include: {
        user: {
          select: {
            id: true,
            email: true,
            firstName: true,
            lastName: true,
          },
        },
      },
    });
  }

  /**
   * Validate request data
   */
  private validateRequestData(type: RequestType, data: any) {
    switch (type) {
      case RequestType.become_supplier:
        if (!data.companyName) {
          throw new BadRequestException('companyName là bắt buộc');
        }
        break;

      case RequestType.add_country:
        if (!data.name || !data.code) {
          throw new BadRequestException('name và code là bắt buộc cho country');
        }
        if (data.code.length !== 2) {
          throw new BadRequestException('Country code phải có 2 ký tự');
        }
        break;

      case RequestType.add_city:
        if (!data.name || !data.countryCode) {
          throw new BadRequestException('name và countryCode là bắt buộc cho city');
        }
        break;

      case RequestType.add_destination:
        if (!data.name || !data.cityId) {
          throw new BadRequestException('name và cityId là bắt buộc cho destination');
        }
        break;

      default:
        throw new BadRequestException('Loại request không hợp lệ');
    }
  }

  /**
   * Xử lý request khi được approve
   */
  private async processRequest(type: RequestType, data: any, userId: bigint) {
    switch (type) {
      case RequestType.become_supplier:
        // Tạo supplier profile
        await this.suppliersService.create({
          userId: Number(userId),
          companyName: data.companyName,
          businessEmail: data.businessEmail,
          phone: data.phone,
          address: data.address,
          commissionRate: data.commissionRate || 15.0,
        });
        break;

      case RequestType.add_country:
        // Kiểm tra country đã tồn tại chưa (theo code) - KHÔNG filter deletedAt
        const existingCountry = await this.countriesService.findByCode(data.code);
        
        if (existingCountry) {
          // Nếu country chưa bị xóa → throw error
          if (existingCountry.deletedAt === null) {
            throw new BadRequestException(
              `Quốc gia với mã "${data.code}" đã tồn tại trong hệ thống`
            );
          }
          // Nếu country đã bị xóa → restore và update thông tin
          await this.prisma.country.update({
            where: { code: data.code },
            data: {
              deletedAt: null,
              name: data.name, // Update name nếu có thay đổi
            },
          });
        } else {
          // Tạo country mới
          await this.countriesService.create({
            code: data.code,
            name: data.name,
          });
        }
        break;

      case RequestType.add_city:
        // Kiểm tra city đã tồn tại chưa (theo name và countryCode) - KHÔNG filter deletedAt
        const existingCity = await this.citiesService.findByNameAndCountryCode(
          data.name,
          data.countryCode,
        );
        
        if (existingCity) {
          // Nếu city chưa bị xóa → throw error
          if (existingCity.deletedAt === null) {
            throw new BadRequestException(
              `Thành phố "${data.name}" trong quốc gia "${data.countryCode}" đã tồn tại trong hệ thống`
            );
          }
          // Nếu city đã bị xóa → kiểm tra country trước khi restore
          const country = await this.countriesService.findOne(data.countryCode);
          if (!country) {
            throw new BadRequestException(
              `Quốc gia với mã "${data.countryCode}" không tồn tại. Không thể restore thành phố đã bị xóa.`
            );
          }
          // Restore city
          await this.citiesService.restore(existingCity.id);
        } else {
          // Kiểm tra country có tồn tại không
          const country = await this.countriesService.findOne(data.countryCode);
          if (!country) {
            throw new BadRequestException(
              `Quốc gia với mã "${data.countryCode}" không tồn tại`
            );
          }
          // Tạo city mới
          await this.citiesService.create({
            name: data.name,
            countryCode: data.countryCode,
          });
        }
        break;

      case RequestType.add_destination:
        // Kiểm tra destination đã tồn tại chưa (theo slug) - KHÔNG filter deletedAt
        const slug = data.slug || this.generateSlug(data.name);
        const existingDestination = await this.destinationsService.findBySlug(slug);
        
        if (existingDestination) {
          // Nếu destination chưa bị xóa → throw error
          if (existingDestination.deletedAt === null) {
            throw new BadRequestException(
              `Điểm đến với slug "${slug}" đã tồn tại trong hệ thống`
            );
          }
          // Nếu destination đã bị xóa → kiểm tra city trước khi restore
          const city = await this.citiesService.findOne(BigInt(data.cityId));
          if (!city) {
            throw new BadRequestException(
              `Thành phố với ID "${data.cityId}" không tồn tại. Không thể restore điểm đến đã bị xóa.`
            );
          }
          // Restore và update thông tin destination
          await this.prisma.destination.update({
            where: { id: existingDestination.id },
            data: {
              deletedAt: null,
              name: data.name,
              cityId: BigInt(data.cityId),
              imageUrl: data.imageUrl || existingDestination.imageUrl || '',
            },
          });
        } else {
          // Kiểm tra city có tồn tại không
          const city = await this.citiesService.findOne(BigInt(data.cityId));
          if (!city) {
            throw new BadRequestException(
              `Thành phố với ID "${data.cityId}" không tồn tại`
            );
          }
          // Tạo destination mới
          await this.destinationsService.create({
            name: data.name,
            slug: slug,
            cityId: Number(data.cityId),
            imageUrl: data.imageUrl || '',
          });
        }
        break;
    }
  }

  /**
   * Xóa request
   */
  async remove(id: bigint) {
    const request = await this.findOne(id);
    await this.prisma.supplierRequest.delete({
      where: { id },
    });
    return { message: 'Request đã được xóa thành công' };
  }

  /**
   * Generate slug từ name
   */
  private generateSlug(name: string): string {
    return name
      .toLowerCase()
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .replace(/[^a-z0-9]+/g, '-')
      .replace(/(^-|-$)/g, '');
  }
}

