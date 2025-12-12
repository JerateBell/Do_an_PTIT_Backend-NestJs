import { registerDecorator, ValidationOptions } from 'class-validator';
import { IsValidCategoryNameConstraint } from './is-valid-category-name.validator';

/**
 * Decorator to validate category name
 * 
 * @example
 * ```typescript
 * class CreateCategoryDto {
 *   @IsValidCategoryName()
 *   name: string;
 * }
 * ```
 */
export function IsValidCategoryName(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string) {
    registerDecorator({
      name: 'isValidCategoryName',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: IsValidCategoryNameConstraint,
    });
  };
}

