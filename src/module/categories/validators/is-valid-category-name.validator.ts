import {
  ValidatorConstraint,
  ValidatorConstraintInterface,
  ValidationArguments,
} from 'class-validator';
import { isValidCategoryName } from '../constants/category-names.constants';

/**
 * Custom validator to check if a string is a valid category name
 * Usage: @IsValidCategoryName()
 */
@ValidatorConstraint({ name: 'isValidCategoryName', async: false })
export class IsValidCategoryNameConstraint implements ValidatorConstraintInterface {
  validate(name: string, args: ValidationArguments) {
    return isValidCategoryName(name);
  }

  defaultMessage(args: ValidationArguments) {
    return `Category name must be one of: ${this.getValidCategoryNames().join(', ')}`;
  }

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

