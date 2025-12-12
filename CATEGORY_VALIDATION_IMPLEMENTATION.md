# Category Validation Implementation - Option 2

## 📋 Tổng quan

Đã implement validation cho Category name trong DTO/Service sử dụng class-validator và custom validators.

## ✅ Đã implement

### 1. Constants File
**File**: `src/module/categories/constants/category-names.constants.ts`

- Định nghĩa `VALID_CATEGORY_NAMES` array với 20 categories
- Type `ValidCategoryName` cho type safety
- Helper functions: `isValidCategoryName()`, `getValidCategoryNames()`

### 2. CreateCategoryDto
**File**: `src/module/categories/dto/create-category.dto.ts`

- Validation với `@IsIn()` decorator
- Swagger documentation
- Validate slug, parentId, imageUrl, sortOrder

### 3. UpdateCategoryDto
**File**: `src/module/categories/dto/update-category.dto.ts`

- Tự động kế thừa validation từ `CreateCategoryDto` (tất cả fields optional)

### 4. CategoriesService
**File**: `src/module/categories/categories.service.ts`

- Validate category name trong `create()` và `update()`
- Check slug uniqueness
- Validate parent category
- Prevent circular references
- Check before delete (has children/activities)
- Full CRUD operations với error handling

### 5. CategoriesController
**File**: `src/module/categories/categories.controller.ts`

- Swagger documentation
- Additional endpoints:
  - `GET /categories/main` - Main categories
  - `GET /categories/parent/:parentId` - Sub-categories
  - `GET /categories/slug/:slug` - Find by slug

### 6. Custom Validators (Optional)
**Files**: 
- `validators/is-valid-category-name.validator.ts`
- `validators/is-valid-category-name.decorator.ts`

- Custom validator có thể dùng thay cho `@IsIn()` nếu muốn

## 📝 Valid Category Names

1. Adventure
2. Culture
3. Food
4. Nature
5. Beach & Water Sports
6. Wellness & Spa
7. Nightlife & Entertainment
8. Shopping
9. Photography
10. Wildlife & Safari
11. Religious & Spiritual
12. Sports & Fitness
13. Family & Kids
14. Romantic
15. Educational
16. Transportation
17. Accommodation
18. Festivals & Events
19. Extreme Sports
20. Art & Craft

## 🚀 Usage Examples

### Create Category

```typescript
// ✅ Valid
POST /categories
{
  "name": "Adventure",
  "slug": "adventure",
  "sortOrder": 1
}

// ❌ Invalid - wrong category name
POST /categories
{
  "name": "Invalid Category",  // ← Error: Category name must be one of: ...
  "slug": "invalid"
}
```

### Update Category

```typescript
// ✅ Valid
PATCH /categories/1
{
  "name": "Culture",
  "sortOrder": 2
}

// ❌ Invalid
PATCH /categories/1
{
  "name": "Wrong Name"  // ← Error: Invalid category name
}
```

### Service Usage

```typescript
// In your service/controller
const category = await this.categoriesService.create({
  name: 'Adventure',  // Type-safe, validated
  slug: 'adventure',
});

// Get main categories
const mainCategories = await this.categoriesService.findMainCategories();

// Get sub-categories
const subCategories = await this.categoriesService.findSubCategories(parentId);
```

## 🔍 Validation Flow

1. **DTO Level** (class-validator):
   - `@IsIn(VALID_CATEGORY_NAMES)` - Rejects invalid names at request level
   - Returns 400 Bad Request với error message

2. **Service Level** (additional checks):
   - Double-check với `isValidCategoryName()`
   - Check slug uniqueness
   - Validate parent category exists
   - Prevent circular references
   - Check dependencies before delete

## 📊 Error Responses

### Invalid Category Name
```json
{
  "statusCode": 400,
  "message": [
    "Category name must be one of: Adventure, Culture, Food, ..."
  ],
  "error": "Bad Request"
}
```

### Slug Already Exists
```json
{
  "statusCode": 409,
  "message": "Category with slug \"adventure\" already exists"
}
```

### Parent Not Found
```json
{
  "statusCode": 404,
  "message": "Parent category with ID 999 not found"
}
```

### Cannot Delete (Has Children)
```json
{
  "statusCode": 400,
  "message": "Cannot delete category: it has 3 sub-category(ies). Please delete or reassign them first."
}
```

## 🧪 Testing

### Test Valid Category Names

```typescript
import { VALID_CATEGORY_NAMES, isValidCategoryName } from './constants/category-names.constants';

// Test valid names
VALID_CATEGORY_NAMES.forEach(name => {
  expect(isValidCategoryName(name)).toBe(true);
});

// Test invalid names
expect(isValidCategoryName('Invalid')).toBe(false);
expect(isValidCategoryName('')).toBe(false);
```

### Test DTO Validation

```typescript
import { validate } from 'class-validator';
import { CreateCategoryDto } from './dto/create-category.dto';

const dto = new CreateCategoryDto();
dto.name = 'Invalid Category';
dto.slug = 'invalid';

const errors = await validate(dto);
expect(errors.length).toBeGreaterThan(0);
expect(errors[0].constraints).toHaveProperty('isIn');
```

## 🔄 Migration Notes

- **No database migration needed** - chỉ thêm validation trong code
- Existing data vẫn hoạt động bình thường
- Validation chỉ áp dụng khi create/update mới

## 📌 Benefits

1. ✅ **Type Safety**: TypeScript types cho valid category names
2. ✅ **Runtime Validation**: Rejects invalid names at API level
3. ✅ **Clear Error Messages**: Users biết chính xác categories nào hợp lệ
4. ✅ **No Database Changes**: Không cần migrate database
5. ✅ **Flexible**: Vẫn có thể thêm sub-categories động (không cần validation)
6. ✅ **Backward Compatible**: Existing code vẫn hoạt động

## 🔮 Future Improvements

1. **Multi-language Support**: 
   - Thêm field `nameEn`, `nameVi` cho i18n
   - Validate theo locale

2. **Category Icons**:
   - Thêm field `icon` hoặc `iconUrl`

3. **Category Metadata**:
   - Thêm JSON field cho metadata (color, description, etc.)

4. **Soft Delete**:
   - Thêm `deletedAt` field thay vì hard delete

