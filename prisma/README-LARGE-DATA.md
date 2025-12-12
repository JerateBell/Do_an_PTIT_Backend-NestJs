# Hướng dẫn tạo dữ liệu lớn bằng SQL

Script `generate-large-sql.py` sẽ tạo file SQL với:
- ✅ **120+ users** (100 customers, 15 suppliers, 5 admins)
- ✅ **15 suppliers** (từ supplier users)
- ✅ **500+ activities** (với đầy đủ các trường)
- ✅ **Activity schedules** (3-5 schedules cho mỗi activity)
- ✅ **3000+ bookings** (từ customers)
- ✅ **2500+ reviews (ratings)** (từ các bookings đã completed)

## Cách sử dụng

### Bước 1: Chạy seed cơ bản trước

```bash
cd Do_an_PTIT_Backend-NestJs
npm run prisma:seed
```

Script seed cơ bản sẽ tạo:
- Countries, Cities
- Categories (20 categories chính)
- Destinations (một số destinations mẫu)
- Và một số users/suppliers/activities mẫu

### Bước 2: Generate file SQL lớn

```bash
cd prisma
python generate-large-sql.py
```

Script sẽ tạo file `seed-large-data.sql` với đầy đủ dữ liệu.

### Bước 3: Chạy file SQL vào database

```bash
# Với psql
psql -U your_username -d your_database -f seed-large-data.sql

# Hoặc import qua pgAdmin, DBeaver, etc.
```

## Cấu trúc file SQL được generate

File SQL sẽ có các phần:

### PART 1: Users
- 100 customer users (email: customer001@example.com, ..., customer100@example.com)
- 15 supplier users (email: supplier01@example.com, ..., supplier15@example.com)
- 5 admin users (email: admin01@example.com, ..., admin05@example.com)
- **Password cho tất cả**: `password123` (bcrypt hash)

### PART 2: Suppliers
- 15 suppliers được tạo từ supplier users
- Mỗi supplier có company name, business email, phone, address, commission rate

### PART 3: Activities
- 500 activities được tạo với:
  - Categories ngẫu nhiên từ database
  - Destinations ngẫu nhiên từ database
  - Suppliers ngẫu nhiên
  - Price: $20-$300
  - Duration: 60, 120, 180, 240, 300, hoặc 480 phút
  - Status: chủ yếu 'active', một số 'draft' hoặc 'inactive'

### PART 4: Activity Schedules
- Mỗi activity (status = 'active') có 3-5 schedules
- Schedules trong vòng 60 ngày tới
- Time slots: 09:00, 10:00, 11:00, 14:00, 15:00, 16:00

### PART 5: Bookings
- 3000 bookings được tạo:
  - Mỗi customer (active) có 20-40 bookings
  - Bookings từ các activities và schedules có sẵn
  - Status: confirmed, completed, pending
  - Payment status: paid, pending

### PART 6: Reviews (Ratings)
- 2500 reviews được tạo từ các bookings đã completed/confirmed
- Rating: 3-5 stars (chủ yếu 4-5 stars)
- Mỗi review có comment ngẫu nhiên
- Activity ratings và review_count được tự động cập nhật

## Kiểm tra dữ liệu sau khi import

```sql
-- Đếm số users
SELECT role, COUNT(*) as count FROM users GROUP BY role;

-- Đếm số activities
SELECT status, COUNT(*) as count FROM activities GROUP BY status;
SELECT COUNT(*) as total_activities FROM activities;

-- Đếm số bookings
SELECT status, COUNT(*) as count FROM bookings GROUP BY status;
SELECT COUNT(*) as total_bookings FROM bookings;

-- Đếm số reviews
SELECT COUNT(*) as total_reviews FROM reviews;
SELECT 
  activity_id, 
  COUNT(*) as review_count,
  ROUND(AVG(rating)::numeric, 2) as avg_rating
FROM reviews 
GROUP BY activity_id 
ORDER BY review_count DESC 
LIMIT 10;

-- Kiểm tra ratings trong activities
SELECT 
  id, 
  name, 
  rating, 
  review_count 
FROM activities 
WHERE review_count > 0
ORDER BY rating DESC 
LIMIT 10;
```

## Lưu ý

1. **Foreign Keys**: Script sử dụng subqueries và PL/pgSQL để lấy IDs động từ database, không cần biết trước IDs cụ thể.

2. **Performance**: File SQL có thể rất lớn (> 10MB). Quá trình import có thể mất vài phút tùy vào hiệu năng database.

3. **Duplicate Prevention**: Script sử dụng `ON CONFLICT DO NOTHING` để tránh duplicate khi chạy lại.

4. **Random Data**: Dữ liệu được generate ngẫu nhiên (names, prices, ratings, etc.) nên mỗi lần chạy sẽ khác nhau.

5. **Dependencies**: Script yêu cầu:
   - Python 3.x
   - Database đã có các bảng từ Prisma migrations
   - Base data từ main seed (categories, destinations, cities)

## Troubleshooting

### Lỗi: "relation does not exist"
- Đảm bảo đã chạy Prisma migrations: `npx prisma migrate deploy`

### Lỗi: "duplicate key value violates unique constraint"
- Có thể đã có dữ liệu trong database
- Script đã có `ON CONFLICT DO NOTHING` để tránh lỗi này

### Lỗi: "permission denied"
- Kiểm tra quyền của database user
- Đảm bảo user có quyền INSERT, UPDATE, SELECT

## Tùy chỉnh số lượng dữ liệu

Bạn có thể chỉnh sửa trong `generate-large-sql.py`:

```python
# Thay đổi số lượng
users_sql, supplier_users = generate_users(100, 15, 5)  # customers, suppliers, admins
activities_sql = generate_activities_sql(500)           # số activities
schedules_sql = generate_schedules_sql(500, 3)          # số activities, schedules mỗi activity
bookings_sql = generate_bookings_sql(3000)              # số bookings
reviews_sql = generate_reviews_sql(2500)                # số reviews
```

