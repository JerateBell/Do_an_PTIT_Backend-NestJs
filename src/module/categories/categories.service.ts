import {
  Injectable,
  NotFoundException,
  BadRequestException,
  ConflictException,
} from '@nestjs/common';
import { CreateCategoryDto } from './dto/create-category.dto';
import { UpdateCategoryDto } from './dto/update-category.dto';
import { PrismaService } from '../prisma/prisma.service';
import { isValidCategoryName } from './constants/category-names.constants';

@Injectable()
export class CategoriesService {
  constructor(private readonly prisma: PrismaService) {}

  /**
   * Create a new category
   */
  async create(createCategoryDto: CreateCategoryDto) {
    // Validate category name
    if (!isValidCategoryName(createCategoryDto.name)) {
      throw new BadRequestException(
        `Invalid category name. Must be one of: ${this.getValidCategoryNames().join(', ')}`,
      );
    }

    // Check if slug already exists
    const existingCategory = await this.prisma.category.findUnique({
      where: { slug: createCategoryDto.slug },
    });

    if (existingCategory) {
      throw new ConflictException(`Category with slug "${createCategoryDto.slug}" already exists`);
    }

    // Validate parent category if provided
    if (createCategoryDto.parentId) {
      const parentCategory = await this.prisma.category.findUnique({
        where: { id: BigInt(createCategoryDto.parentId) },
      });

      if (!parentCategory) {
        throw new NotFoundException(
          `Parent category with ID ${createCategoryDto.parentId} not found`,
        );
      }
    }

    // Create category
    return this.prisma.category.create({
      data: {
        name: createCategoryDto.name,
        slug: createCategoryDto.slug,
        parentId: createCategoryDto.parentId ? BigInt(createCategoryDto.parentId) : null,
        imageUrl: createCategoryDto.imageUrl,
        sortOrder: createCategoryDto.sortOrder ?? 0,
      },
      include: {
        parent: true,
        children: true,
      },
    });
  }

  /**
   * Get all categories
   */
  async findAll() {
    return this.prisma.category.findMany({
      include: {
        parent: true,
        children: true,
        _count: {
          select: {
            activities: true,
          },
        },
      },
      orderBy: [
        { sortOrder: 'asc' },
        { name: 'asc' },
      ],
    });
  }

  /**
   * Get main categories (top-level, no parent)
   */
  async findMainCategories() {
    return this.prisma.category.findMany({
      where: {
        parentId: null,
      },
      include: {
        children: {
          orderBy: { sortOrder: 'asc' },
        },
        _count: {
          select: {
            activities: true,
          },
        },
      },
      orderBy: [
        { sortOrder: 'asc' },
        { name: 'asc' },
      ],
    });
  }

  /**
   * Get sub-categories of a parent category
   */
  async findSubCategories(parentId: number) {
    const parent = await this.prisma.category.findUnique({
      where: { id: BigInt(parentId) },
    });

    if (!parent) {
      throw new NotFoundException(`Category with ID ${parentId} not found`);
    }

    return this.prisma.category.findMany({
      where: {
        parentId: BigInt(parentId),
      },
      include: {
        _count: {
          select: {
            activities: true,
          },
        },
      },
      orderBy: [
        { sortOrder: 'asc' },
        { name: 'asc' },
      ],
    });
  }

  /**
   * Get category by ID
   */
  async findOne(id: number) {
    const category = await this.prisma.category.findUnique({
      where: { id: BigInt(id) },
      include: {
        parent: true,
        children: true,
        _count: {
          select: {
            activities: true,
          },
        },
      },
    });

    if (!category) {
      throw new NotFoundException(`Category with ID ${id} not found`);
    }

    return category;
  }

  /**
   * Get category by slug
   */
  async findBySlug(slug: string) {
    const category = await this.prisma.category.findUnique({
      where: { slug },
      include: {
        parent: true,
        children: true,
        activities: {
          where: {
            status: 'active',
          },
          take: 10,
        },
        _count: {
          select: {
            activities: true,
          },
        },
      },
    });

    if (!category) {
      throw new NotFoundException(`Category with slug "${slug}" not found`);
    }

    return category;
  }

  /**
   * Update category
   */
  async update(id: number, updateCategoryDto: UpdateCategoryDto) {
    // Check if category exists
    const existingCategory = await this.prisma.category.findUnique({
      where: { id: BigInt(id) },
    });

    if (!existingCategory) {
      throw new NotFoundException(`Category with ID ${id} not found`);
    }

    // Validate category name if provided
    if (updateCategoryDto.name && !isValidCategoryName(updateCategoryDto.name)) {
      throw new BadRequestException(
        `Invalid category name. Must be one of: ${this.getValidCategoryNames().join(', ')}`,
      );
    }

    // Check if new slug conflicts with existing category
    if (updateCategoryDto.slug && updateCategoryDto.slug !== existingCategory.slug) {
      const slugExists = await this.prisma.category.findUnique({
        where: { slug: updateCategoryDto.slug },
      });

      if (slugExists) {
        throw new ConflictException(`Category with slug "${updateCategoryDto.slug}" already exists`);
      }
    }

    // Validate parent category if provided
    if (updateCategoryDto.parentId !== undefined) {
      if (updateCategoryDto.parentId === null) {
        // Setting parent to null is allowed (making it a main category)
      } else if (updateCategoryDto.parentId === id) {
        throw new BadRequestException('Category cannot be its own parent');
      } else {
        const parentCategory = await this.prisma.category.findUnique({
          where: { id: BigInt(updateCategoryDto.parentId) },
        });

        if (!parentCategory) {
          throw new NotFoundException(
            `Parent category with ID ${updateCategoryDto.parentId} not found`,
          );
        }

        // Prevent circular reference (check if parent is a descendant)
        const isDescendant = await this.isDescendant(
          BigInt(updateCategoryDto.parentId),
          BigInt(id),
        );
        if (isDescendant) {
          throw new BadRequestException('Cannot set parent: would create circular reference');
        }
      }
    }

    // Update category
    return this.prisma.category.update({
      where: { id: BigInt(id) },
      data: {
        name: updateCategoryDto.name,
        slug: updateCategoryDto.slug,
        parentId:
          updateCategoryDto.parentId !== undefined
            ? updateCategoryDto.parentId
              ? BigInt(updateCategoryDto.parentId)
              : null
            : undefined,
        imageUrl: updateCategoryDto.imageUrl,
        sortOrder: updateCategoryDto.sortOrder,
      },
      include: {
        parent: true,
        children: true,
      },
    });
  }

  /**
   * Delete category
   */
  async remove(id: number) {
    const category = await this.prisma.category.findUnique({
      where: { id: BigInt(id) },
      include: {
        children: true,
        _count: {
          select: {
            activities: true,
          },
        },
      },
    });

    if (!category) {
      throw new NotFoundException(`Category with ID ${id} not found`);
    }

    // Check if category has children
    if (category.children.length > 0) {
      throw new BadRequestException(
        `Cannot delete category: it has ${category.children.length} sub-category(ies). Please delete or reassign them first.`,
      );
    }

    // Check if category has activities
    if (category._count.activities > 0) {
      throw new BadRequestException(
        `Cannot delete category: it has ${category._count.activities} activity(ies). Please reassign them first.`,
      );
    }

    return this.prisma.category.delete({
      where: { id: BigInt(id) },
    });
  }

  /**
   * Helper: Check if a category is a descendant of another
   */
  private async isDescendant(ancestorId: bigint, categoryId: bigint): Promise<boolean> {
    const category = await this.prisma.category.findUnique({
      where: { id: categoryId },
      include: { parent: true },
    });

    if (!category || !category.parent) {
      return false;
    }

    if (category.parent.id === ancestorId) {
      return true;
    }

    return this.isDescendant(ancestorId, category.parent.id);
  }

  /**
   * Get valid category names
   */
  private getValidCategoryNames(): string[] {
    return [
      'Adventure',
      'Culture',
      'Food',
      'Nature',
      'Beach & Water Sports',
      'Wellness & Spa',
      'Nightlife & Entertainment',
      'Shopping',
      'Photography',
      'Wildlife & Safari',
      'Religious & Spiritual',
      'Sports & Fitness',
      'Family & Kids',
      'Romantic',
      'Educational',
      'Transportation',
      'Accommodation',
      'Festivals & Events',
      'Extreme Sports',
      'Art & Craft',
    ];
  }
}
