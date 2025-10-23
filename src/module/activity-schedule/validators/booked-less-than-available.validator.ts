import {
  registerDecorator,
  ValidationOptions,
  ValidationArguments,
} from 'class-validator';

export function BookedLessThanAvailable(validationOptions?: ValidationOptions) {
  return function (object: Object, propertyName: string) {
    registerDecorator({
      name: 'BookedLessThanAvailable',
      target: object.constructor,
      propertyName,
      options: validationOptions,
      validator: {
        validate(bookedSpots: number, args: ValidationArguments) {
          const obj: any = args.object;
          const availableSpots = obj.availableSpots;
          // Nếu có cả hai giá trị, kiểm tra booked ≤ available
          if (availableSpots != null && bookedSpots != null) {
            return bookedSpots <= availableSpots;
          }
          return true; // bỏ qua nếu chưa có đủ thông tin
        },
        defaultMessage(args: ValidationArguments) {
          return `bookedSpots (${(args.value)}) cannot be greater than availableSpots`;
        },
      },
    });
  };
}
