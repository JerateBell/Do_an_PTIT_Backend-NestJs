# Hướng dẫn tạo file SQL với dữ liệu lớn

File SQL này sẽ tạo:
- **120+ users** (100 customers, 15 suppliers, 5 admins)
- **500+ activities** 
- **3000+ bookings**
- **2500+ reviews (ratings)**

## Cách tạo file SQL đầy đủ

### Phương pháp 1: Sử dụng script Python (Khuyến nghị)

1. Cài đặt Python nếu chưa có
2. Chạy script để generate file SQL:

```bash
cd Do_an_PTIT_Backend-NestJs/prisma
python generate-large-sql.py
```

Script sẽ tạo file `seed-large-data-full.sql` với đầy đủ dữ liệu.

### Phương pháp 2: Sử dụng script TypeScript/Node.js

```bash
cd Do_an_PTIT_Backend-NestJs
npx ts-node prisma/generate-large-data-sql.ts
```

### Phương pháp 3: Tạo thủ công từ template

File `seed-large-data.sql` là template. Bạn cần:

1. **Bước 1**: Chạy seed cơ bản trước:
   ```bash
   npm run prisma:seed
   ```

2. **Bước 2**: Xem các IDs trong database:
   ```sql
   -- Xem category IDs
   SELECT id, name, slug FROM categories WHERE parent_id IS NULL;
   
   -- Xem destination IDs  
   SELECT id, name, slug FROM destinations;
   
   -- Xem supplier IDs
   SELECT id, user_id, company_name FROM suppliers;
   ```

3. **Bước 3**: Tạo file SQL với các IDs này

## Cấu trúc file SQL

File SQL sẽ có các phần:

### PART 1: Users
- 100 customer users
- 15 supplier users  
- 5 admin users

### PART 2: Suppliers
- Tạo suppliers từ supplier users

### PART 3: Activities
- 500+ activities với subqueries để lấy category/destination/supplier IDs

### PART 4: Activity Schedules
- Schedules cho các activities

### PART 5: Bookings
- 3000+ bookings từ users

### PART 6: Reviews (Ratings)
- 2500+ reviews từ bookings

## Cách chạy file SQL

```bash
# Với psql
psql -U your_username -d your_database -f prisma/seed-large-data-full.sql

# Hoặc import vào pgAdmin, DBeaver, etc.
```

## Lưu ý

1. **Password hash**: Tất cả users sẽ có password là `password123` (bcrypt hash)
2. **Foreign keys**: File SQL sử dụng subqueries để lấy IDs động
3. **Dữ liệu ngẫu nhiên**: Names, emails, phone numbers được generate ngẫu nhiên
4. **Reviews**: 2500+ reviews được tạo từ các bookings đã completed

## Kiểm tra sau khi import

```sql
-- Đếm số users
SELECT role, COUNT(*) FROM users GROUP BY role;

-- Đếm số activities
SELECT COUNT(*) FROM activities;

-- Đếm số reviews
SELECT COUNT(*) FROM reviews;

-- Kiểm tra ratings
SELECT 
  activity_id, 
  COUNT(*) as review_count,
  AVG(rating) as avg_rating
FROM reviews 
GROUP BY activity_id 
ORDER BY review_count DESC 
LIMIT 10;
```

