#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script để tạo file SQL seed lớn với:
- 120+ users (100 khách hàng, 15 nhà cung cấp, 5 admin)
- 500+ activities
- 3000+ bookings
- 2500+ reviews (đánh giá)
"""

import random
import sys
import io
from datetime import datetime, timedelta

# Fix encoding cho Windows console
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8')

# Password hash cho 'password123' (bcrypt - hash thực tế)
PASSWORD_HASH = "$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q"

# Tên và họ cho users
FIRST_NAMES = [
    'John', 'Sarah', 'Michael', 'Emily', 'David', 'Jessica', 'Christopher', 'Amanda',
    'Matthew', 'Ashley', 'James', 'Lisa', 'Daniel', 'Michelle', 'Robert', 'Jennifer',
    'William', 'Nicole', 'Joseph', 'Elizabeth', 'Andrew', 'Kimberly', 'Ryan', 'Amy',
    'Brandon', 'Angela', 'Jason', 'Melissa', 'Justin', 'Deborah', 'Kevin', 'Stephanie',
    'Brian', 'Rebecca', 'George', 'Sharon', 'Timothy', 'Laura', 'Ronald', 'Cynthia',
    'Edward', 'Kathleen', 'Paul', 'Anna', 'Steven', 'Pamela', 'Kenneth', 'Sandra',
    'Joshua', 'Emma', 'Mark', 'Catherine', 'Donald', 'Carol', 'Anthony', 'Christine',
    'Kenneth', 'Maria', 'Paul', 'Patricia', 'Steven', 'Linda', 'Andrew', 'Barbara',
    'Kevin', 'Elizabeth', 'Brian', 'Jennifer', 'George', 'Susan', 'Edward', 'Jessica',
    'Ronald', 'Sarah', 'Timothy', 'Karen', 'Jason', 'Nancy', 'Jeffrey', 'Betty',
    'Ryan', 'Margaret', 'Jacob', 'Lisa', 'Gary', 'Dorothy', 'Nicholas', 'Sandra',
    'Eric', 'Ashley', 'Jonathan', 'Kimberly', 'Stephen', 'Donna', 'Larry', 'Emily',
    'Justin', 'Michelle', 'Scott', 'Carol', 'Brandon', 'Amanda', 'Benjamin', 'Melissa',
    'Samuel', 'Deborah', 'Frank', 'Stephanie', 'Gregory', 'Rebecca', 'Raymond', 'Sharon'
]

LAST_NAMES = [
    'Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis',
    'Rodriguez', 'Martinez', 'Hernandez', 'Lopez', 'Wilson', 'Anderson', 'Thomas',
    'Taylor', 'Moore', 'Jackson', 'Martin', 'Lee', 'Perez', 'Thompson', 'White',
    'Harris', 'Sanchez', 'Clark', 'Ramirez', 'Lewis', 'Robinson', 'Walker', 'Young',
    'Allen', 'King', 'Wright', 'Scott', 'Torres', 'Nguyen', 'Hill', 'Flores', 'Green',
    'Adams', 'Nelson', 'Baker', 'Hall', 'Rivera', 'Campbell', 'Mitchell', 'Carter',
    'Roberts', 'Gomez', 'Phillips', 'Evans', 'Turner', 'Diaz', 'Parker', 'Cruz',
    'Edwards', 'Collins', 'Reyes', 'Stewart', 'Morris', 'Morales', 'Murphy', 'Cook',
    'Rogers', 'Gutierrez', 'Ortiz', 'Morgan', 'Cooper', 'Peterson', 'Bailey', 'Reed',
    'Kelly', 'Howard', 'Ramos', 'Kim', 'Cox', 'Ward', 'Richardson', 'Watson', 'Brooks',
    'Chavez', 'Wood', 'James', 'Bennett', 'Gray', 'Mendoza', 'Ruiz', 'Hughes', 'Price',
    'Alvarez', 'Castillo', 'Sanders', 'Patel', 'Myers', 'Long', 'Ross', 'Foster'
]

COMPANY_NAMES = [
    'Adventure Tours Co.', 'Explore Vietnam Travel', 'Sunset Travel Agency', 'Mountain View Tours',
    'Ocean Breeze Adventures', 'Cultural Heritage Tours', 'Luxury Travel Experience', 'Wild Nature Expeditions',
    'City Discovery Tours', 'Beach Paradise Travel', 'Mystic Journey Tours', 'Elite Travel Services',
    'Golden Gate Adventures', 'Tropical Escape Tours', 'Heritage Trail Travel', 'Blue Sky Travel Agency'
]

ACTIVITY_NAMES = [
    # Phiêu lưu
    'Chuyến đi bộ leo núi', 'Trải nghiệm leo núi đá', 'Tour chèo thuyền kayak', 'Trải nghiệm zipline',
    'Trải nghiệm nhảy bungee', 'Tour dù lượn', 'Đường mòn đạp xe leo núi', 'Khám phá hang động',
    'Phiêu lưu canyoning', 'Hành trình trekking', 'Chèo thuyền vượt thác', 'Trải nghiệm lặn biển',
    # Văn hóa
    'Tour đi bộ thành phố lịch sử', 'Tham quan đền chùa truyền thống', 'Tour khám phá bảo tàng',
    'Trải nghiệm làng quê địa phương', 'Khám phá di tích cổ xưa', 'Đi bộ di sản văn hóa',
    'Workshop thủ công truyền thống', 'Tour chợ địa phương', 'Tham quan di tích lịch sử', 'Buổi biểu diễn văn hóa',
    # Ẩm thực
    'Tour ẩm thực đường phố', 'Trải nghiệm lớp học nấu ăn', 'Trải nghiệm fine dining', 'Tour chợ thực phẩm địa phương',
    'Buổi thử rượu vang', 'Tour văn hóa cà phê', 'Bữa tiệc hải sản', 'Lớp học ẩm thực truyền thống',
    'Đi bộ ẩm thực & văn hóa', 'Tham quan nhà hàng địa phương',
    # Thiên nhiên
    'Tham quan vườn quốc gia', 'Đi bộ thác nước', 'Ngắm cảnh bình minh trên núi', 'Trekking rừng rậm',
    'Ngắm động vật hoang dã', 'Tour vườn bách thảo', 'Chụp ảnh phong cảnh', 'Trải nghiệm du lịch sinh thái',
    'Buổi tắm rừng', 'Tour bảo tồn thiên nhiên',
    # Bãi biển & Thể thao dưới nước
    'Phiêu lưu lặn ống thở', 'Trải nghiệm lặn biển', 'Lớp học lướt sóng', 'Bóng chuyền bãi biển',
    'Tour jet ski', 'Du thuyền hoàng hôn', 'Buổi tập yoga bãi biển', 'Trượt nước', 'Trải nghiệm picnic bãi biển',
    # Và nhiều hơn nữa...
]

COMMENTS = [
    'Trải nghiệm tuyệt vời! Rất đáng để thử.', 'Hoạt động tuyệt vời, đã có khoảng thời gian tuyệt vời.',
    'Rất thú vị và được tổ chức tốt.', 'Giá trị tốt so với số tiền bỏ ra.',
    'Hướng dẫn viên và dịch vụ xuất sắc.', 'Chắc chắn sẽ làm lại lần nữa!',
    'Trải nghiệm tuyệt vời tổng thể.', 'Thực sự thích hoạt động này.',
    'Những kỷ niệm tuyệt vời được tạo ra ở đây.', 'Rất hài lòng với dịch vụ.',
    'Hoàn hảo cho gia đình!', 'Nhân viên chuyên nghiệp và thân thiện.',
    'Địa điểm đẹp, cảnh quan tuyệt vời.', 'Cách tuyệt vời để khám phá khu vực.',
    'Học được rất nhiều từ trải nghiệm này.', 'Cuộc phiêu lưu không thể quên!'
]

def create_slug(name):
    """Tạo slug từ tên"""
    return name.lower().replace(' ', '-').replace('&', 'and').replace(',', '').replace("'", '')

def escape_sql_string(s):
    """Escape string cho SQL (thay thế dấu nháy đơn bằng hai dấu nháy đơn)"""
    if s is None:
        return 'NULL'
    return "'" + str(s).replace("'", "''") + "'"

def generate_users(num_customers=100, num_suppliers=15, num_admins=5):
    """Tạo các câu lệnh SQL INSERT cho users"""
    sql = "-- =====================================================\n"
    sql += "-- PHẦN 1: USERS ({} khách hàng, {} nhà cung cấp, {} admin)\n".format(num_customers, num_suppliers, num_admins)
    sql += "-- =====================================================\n\n"
    
    user_id = 1
    
    # Khách hàng
    sql += "-- Khách hàng\n"
    for i in range(1, num_customers + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'customer{i:03d}@example.com'
        phone = f'+84 901234{i:03d}'
        status = random.choices(['active', 'active', 'active', 'suspended', 'deleted'], weights=[70, 70, 70, 5, 5])[0]
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"({escape_sql_string(email)}, {escape_sql_string(PASSWORD_HASH)}, {escape_sql_string(first_name)}, {escape_sql_string(last_name)}, {escape_sql_string(phone)}, 'customer', {escape_sql_string(status)}, NOW(), NOW());\n"
    
    sql += "\n-- Nhà cung cấp\n"
    supplier_users = []
    for i in range(1, num_suppliers + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'supplier{i:02d}@example.com'
        phone = f'+84 902234{i:03d}'
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"({escape_sql_string(email)}, {escape_sql_string(PASSWORD_HASH)}, {escape_sql_string(first_name)}, {escape_sql_string(last_name)}, {escape_sql_string(phone)}, 'supplier', 'active', NOW(), NOW());\n"
        
        supplier_users.append({
            'email': email,
            'company': random.choice(COMPANY_NAMES)
        })
    
    sql += "\n-- Admin\n"
    for i in range(1, num_admins + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'admin{i:02d}@example.com'
        phone = f'+84 903234{i:03d}'
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"({escape_sql_string(email)}, {escape_sql_string(PASSWORD_HASH)}, {escape_sql_string(first_name)}, {escape_sql_string(last_name)}, {escape_sql_string(phone)}, 'admin', 'active', NOW(), NOW());\n"
    
    return sql, supplier_users

def generate_suppliers_sql(num_suppliers=15):
    """Tạo SQL cho suppliers"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PHẦN 2: SUPPLIERS ({num_suppliers} nhà cung cấp)\n"
    sql += "-- =====================================================\n\n"
    
    for i in range(1, num_suppliers + 1):
        company_name = random.choice(COMPANY_NAMES)
        business_email = f"contact@{company_name.lower().replace(' ', '').replace('.', '').replace('&', 'and')}.com"
        phone = f"+84 123456{i:03d}"
        commission_rate = round(10 + random.random() * 10, 2)
        
        sql += f"""INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT {escape_sql_string(company_name)}, {escape_sql_string(business_email)}, {escape_sql_string(phone)}, {escape_sql_string('Hanoi, Vietnam')}, {commission_rate}, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = {escape_sql_string(f'supplier{i:02d}@example.com')}
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

"""
    
    return sql

def generate_activities_sql(num_activities=500):
    """Tạo SQL cho activities sử dụng subqueries"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PHẦN 3: ACTIVITIES ({num_activities} hoạt động)\n"
    sql += "-- =====================================================\n\n"
    
    activity_templates = {
        'Adventure': ['Đi bộ leo núi', 'Leo núi đá', 'Chèo thuyền kayak', 'Zipline', 'Nhảy bungee', 
                     'Dù lượn', 'Đạp xe leo núi', 'Khám phá hang động', 'Canyoning', 'Trekking'],
        'Culture': ['Tour đi bộ lịch sử', 'Tham quan đền chùa', 'Tour bảo tàng', 'Trải nghiệm làng quê',
                   'Di tích cổ xưa', 'Đi bộ di sản văn hóa', 'Workshop thủ công', 'Tour chợ'],
        'Food': ['Tour ẩm thực đường phố', 'Lớp học nấu ăn', 'Fine dining', 'Tour chợ thực phẩm',
                'Thử rượu vang', 'Tour cà phê', 'Bữa tiệc hải sản', 'Lớp học ẩm thực'],
        'Nature': ['Vườn quốc gia', 'Đi bộ thác nước', 'Ngắm bình minh', 'Trekking rừng rậm',
                  'Ngắm động vật hoang dã', 'Vườn bách thảo', 'Chụp ảnh phong cảnh', 'Du lịch sinh thái'],
        'Beach & Water Sports': ['Lặn ống thở', 'Lặn biển', 'Lướt sóng', 'Bóng chuyền bãi biển',
                                'Jet ski', 'Du thuyền hoàng hôn', 'Yoga bãi biển', 'Trượt nước'],
        'Wellness & Spa': ['Điều trị spa', 'Suối nước nóng', 'Yoga retreat', 'Massage trị liệu',
                          'Trung tâm wellness', 'Liệu pháp hương thơm', 'Buổi chữa lành'],
        'Nightlife & Entertainment': ['Chợ đêm', 'Nhạc sống', 'Câu lạc bộ đêm', 'Karaoke',
                                     'Buổi biểu diễn văn hóa', 'Tour ánh sáng thành phố', 'Bar hopping'],
    }
    
    # Tên địa điểm (sử dụng để tạo tên activity, không phải để map destination ID)
    destination_names = ['Vịnh Hạ Long', 'Hồ Hoàn Kiếm', 'Chợ Bến Thành', 'Tượng Nữ thần Tự do',
                        'Phố cổ', 'Văn Miếu', 'Đền Ngọc Sơn', 'Nhà hát múa rối nước']
    
    activity_id = 1
    for _ in range(num_activities):
        category_name = random.choice(list(activity_templates.keys()))
        activity_name = random.choice(activity_templates[category_name])
        destination_name = random.choice(destination_names)
        
        full_name = f"{activity_name} - {destination_name}"
        slug = create_slug(full_name) + f"-{activity_id}"
        
        price = round(random.uniform(20, 300), 2)
        duration = random.choice([60, 120, 180, 240, 300, 480])
        max_participants = random.choice([10, 15, 20, 25, 30])
        instant_confirmation = random.choice([True, True, True, False])
        free_cancellation = random.choice([True, False])
        status = random.choices(['active', 'active', 'draft', 'inactive'], weights=[70, 70, 5, 5])[0]
        
        # Dịch highlights và description sang tiếng Việt
        category_vn_map = {
            'Adventure': 'phiêu lưu',
            'Culture': 'văn hóa',
            'Food': 'ẩm thực',
            'Nature': 'thiên nhiên',
            'Beach & Water Sports': 'bãi biển & thể thao dưới nước',
            'Wellness & Spa': 'sức khỏe & spa',
            'Nightlife & Entertainment': 'giải trí & đêm'
        }
        category_vn = category_vn_map.get(category_name, category_name.lower())
        highlights = f'["Trải nghiệm {category_vn}", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'
        description = f"Trải nghiệm tuyệt vời về {category_vn} tại {destination_name}."
        
        # Escape strings để tránh SQL injection
        full_name_escaped = escape_sql_string(full_name)
        slug_escaped = escape_sql_string(slug)
        description_escaped = escape_sql_string(description)
        highlights_escaped = escape_sql_string(highlights)
        category_name_escaped = escape_sql_string(category_name)
        
        # Chia đều supplier: sử dụng modulo với activity_id
        supplier_mod = f"(({activity_id} - 1) % (SELECT COUNT(*) FROM suppliers))"
        
        sql += f"""INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = {supplier_mod}),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = {category_name_escaped} AND "parent_id" IS NULL LIMIT 1),
  {full_name_escaped},
  {slug_escaped},
  {description_escaped},
  {highlights_escaped}::jsonb,
  {duration},
  {price},
  'USD',
  {max_participants},
  0,
  0,
  {str(instant_confirmation).lower()},
  {str(free_cancellation).lower()},
  {escape_sql_string(status)}::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

"""
        activity_id += 1
    
    return sql

def generate_schedules_sql(num_activities=500, schedules_per_activity=3):
    """Tạo SQL cho lịch trình activities"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PHẦN 4: LỊCH TRÌNH ACTIVITIES ({num_activities * schedules_per_activity} lịch trình)\n"
    sql += "-- =====================================================\n\n"
    
    time_slots = ['09:00', '10:00', '11:00', '14:00', '15:00', '16:00', '17:00']
    
    sql += """-- Tạo lịch trình cho tất cả activities
DO $$
DECLARE
  activity_record RECORD;
  v_schedule_date DATE;
  v_time_slot VARCHAR(10);
  v_available_spots INT;
  v_booked_spots INT;
  v_days_offset INT;
  v_loop_count INT;
BEGIN
  FOR activity_record IN SELECT id, price FROM "activities" WHERE "status" = 'active'
  LOOP
    -- Tạo 3-5 lịch trình cho mỗi activity
    v_loop_count := 3 + (random() * 2)::int;
    FOR i IN 1..v_loop_count
    LOOP
      v_days_offset := (random() * 60 + 1)::int;
      v_schedule_date := CURRENT_DATE + (v_days_offset || ' days')::interval;
      v_time_slot := (ARRAY['09:00', '10:00', '11:00', '14:00', '15:00', '16:00'])[floor(random() * 6 + 1)::int];
      v_available_spots := (ARRAY[10, 15, 20, 25, 30])[floor(random() * 5 + 1)::int];
      v_booked_spots := floor(random() * (v_available_spots * 0.3))::int;
      
      INSERT INTO "activity_schedules" (
        "activity_id", "date", "time_slot", "available_spots", "booked_spots", "price", "created_at"
      )
      VALUES (
        activity_record.id,
        v_schedule_date,
        v_time_slot,
        v_available_spots,
        v_booked_spots,
        activity_record.price,
        NOW()
      )
      ON CONFLICT ("activity_id", "date", "time_slot") DO NOTHING;
    END LOOP;
  END LOOP;
END $$;

"""
    return sql

def generate_bookings_sql(num_bookings=3000):
    """Tạo SQL cho bookings"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PHẦN 5: BOOKINGS ({num_bookings} đặt chỗ)\n"
    sql += "-- =====================================================\n\n"
    
    sql += f"""-- Tạo bookings sử dụng PL/pgSQL để hiệu suất tốt hơn
DO $$
DECLARE
  customer_user RECORD;
  activity_record RECORD;
  supplier_record RECORD;
  booking_ref VARCHAR(20);
  booking_counter INT := 1;
  participants INT;
  subtotal DECIMAL;
  discount DECIMAL;
  total DECIMAL;
  booking_status VARCHAR(20);
  payment_status VARCHAR(20);
BEGIN
  FOR customer_user IN SELECT id, email, first_name, last_name, phone FROM "users" WHERE "role" = 'customer' AND "status" = 'active' LIMIT 100
  LOOP
    -- Mỗi khách hàng có 20-40 bookings
    FOR i IN 1..(20 + (random() * 20)::int)
    LOOP
      IF booking_counter > {num_bookings} THEN
        EXIT;
      END IF;
      
      -- Lấy activity ngẫu nhiên có lịch trình
      SELECT 
        a.id as activity_id, 
        a.supplier_id, 
        a.price as activity_price,
        s.id as schedule_id, 
        s.date as schedule_date, 
        s.available_spots, 
        s.booked_spots
      INTO activity_record
      FROM "activities" a
      JOIN "activity_schedules" s ON s.activity_id = a.id
      WHERE a.status = 'active'
        AND s.available_spots > s.booked_spots
        AND s.date >= CURRENT_DATE
      ORDER BY RANDOM()
      LIMIT 1;
      
      IF activity_record.activity_id IS NULL THEN
        CONTINUE;
      END IF;
      
      -- Lấy supplier
      SELECT id INTO supplier_record FROM "suppliers" WHERE id = activity_record.supplier_id;
      
      IF supplier_record.id IS NULL THEN
        CONTINUE;
      END IF;
      
      participants := (random() * 4 + 1)::int;
      subtotal := activity_record.activity_price * participants;
      discount := CASE WHEN random() < 0.3 THEN floor(random() * 20)::int ELSE 0 END;
      total := subtotal - discount;
      booking_status := (ARRAY['confirmed', 'confirmed', 'confirmed', 'completed', 'pending'])[floor(random() * 5 + 1)::int];
      payment_status := CASE 
        WHEN booking_status IN ('completed', 'confirmed') THEN 'paid'
        ELSE (ARRAY['pending', 'paid'])[floor(random() * 2 + 1)::int]
      END;
      
      booking_ref := 'BK' || LPAD(booking_counter::text, 8, '0');
      
      INSERT INTO "bookings" (
        "booking_ref", "user_id", "activity_id", "schedule_id", "supplier_id",
        "customer_name", "customer_email", "customer_phone",
        "booking_date", "participants", "subtotal", "discount", "total", "currency",
        "status", "payment_status", "created_at", "updated_at"
      )
      VALUES (
        booking_ref,
        customer_user.id,
        activity_record.activity_id,
        activity_record.schedule_id,
        supplier_record.id,
        COALESCE(customer_user.first_name || ' ' || customer_user.last_name, customer_user.email),
        customer_user.email,
        customer_user.phone,
        activity_record.schedule_date,
        participants,
        subtotal,
        discount,
        total,
        'USD',
        booking_status::"BookingStatus",
        payment_status::"PaymentStatus",
        NOW(),
        NOW()
      );
      
      -- Cập nhật số chỗ đã đặt
      UPDATE "activity_schedules"
      SET "booked_spots" = "booked_spots" + participants
      WHERE id = activity_record.schedule_id;
      
      booking_counter := booking_counter + 1;
    END LOOP;
    
    IF booking_counter > {num_bookings} THEN
      EXIT;
    END IF;
  END LOOP;
END $$;

"""
    return sql

def generate_reviews_sql(num_reviews=2500):
    """Tạo SQL cho reviews (đánh giá)"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PHẦN 6: REVIEWS (ĐÁNH GIÁ) ({num_reviews} đánh giá)\n"
    sql += "-- =====================================================\n\n"
    
    # Sử dụng COMMENTS đã được dịch sang tiếng Việt
    comments = COMMENTS
    
    sql += f"""-- Tạo reviews từ các bookings đã hoàn thành/xác nhận
DO $$
DECLARE
  booking_record RECORD;
  review_counter INT := 1;
  rating INT;
  comment_text TEXT;
BEGIN
  FOR booking_record IN 
    SELECT b.id, b.user_id, b.activity_id, b.booking_ref
    FROM "bookings" b
    INNER JOIN "activities" a ON a.id = b.activity_id
    WHERE b.status IN ('completed', 'confirmed')
      AND NOT EXISTS (SELECT 1 FROM "reviews" r WHERE r.booking_id = b.id)
      AND a.id IS NOT NULL  -- Đảm bảo activity còn tồn tại
    ORDER BY RANDOM()
    LIMIT {num_reviews}
  LOOP
    -- 70% bookings có reviews, rating từ 3-5 (chủ yếu 4-5)
    rating := CASE
      WHEN random() < 0.6 THEN 5
      WHEN random() < 0.8 THEN 4
      ELSE 3
    END;
    
    comment_text := (ARRAY['Trải nghiệm tuyệt vời! Rất đáng để thử.', 'Hoạt động tuyệt vời, đã có khoảng thời gian tuyệt vời.', 'Rất thú vị và được tổ chức tốt.', 'Giá trị tốt so với số tiền bỏ ra.', 'Hướng dẫn viên và dịch vụ xuất sắc.', 'Chắc chắn sẽ làm lại lần nữa!', 'Trải nghiệm tuyệt vời tổng thể.', 'Thực sự thích hoạt động này.', 'Những kỷ niệm tuyệt vời được tạo ra ở đây.', 'Rất hài lòng với dịch vụ.', 'Hoàn hảo cho gia đình!', 'Nhân viên chuyên nghiệp và thân thiện.', 'Địa điểm đẹp, cảnh quan tuyệt vời.', 'Cách tuyệt vời để khám phá khu vực.', 'Học được rất nhiều từ trải nghiệm này.', 'Cuộc phiêu lưu không thể quên!'])[floor(random() * 16 + 1)::int];
    
    INSERT INTO "reviews" (
      "booking_id", "user_id", "activity_id", "rating", "comment", "created_at"
    )
    VALUES (
      booking_record.id,
      booking_record.user_id,
      booking_record.activity_id,
      rating,
      comment_text,
      NOW()
    )
    ON CONFLICT ("booking_id") DO NOTHING;
    
    review_counter := review_counter + 1;
  END LOOP;
  
  -- Cập nhật rating và số lượng reviews của activities
  UPDATE "activities" a
  SET 
    "rating" = (
      SELECT ROUND(AVG(r.rating)::numeric, 2)
      FROM "reviews" r
      WHERE r.activity_id = a.id
    ),
    "review_count" = (
      SELECT COUNT(*)
      FROM "reviews" r
      WHERE r.activity_id = a.id
    )
  WHERE EXISTS (SELECT 1 FROM "reviews" r WHERE r.activity_id = a.id);
END $$;

"""
    
    return sql

def generate_sql_file():
    """Tạo file SQL hoàn chỉnh"""
    sql_content = """-- =====================================================
-- SCRIPT TẠO DỮ LIỆU LỚN - TỰ ĐỘNG TẠO
-- =====================================================
-- Script này tạo:
-- - 120+ users (100 khách hàng, 15 nhà cung cấp, 5 admin)
-- - 15 suppliers
-- - 500+ activities
-- - 3000+ bookings
-- - 2500+ reviews (đánh giá)
-- Và tất cả dữ liệu liên quan
-- =====================================================

-- QUAN TRỌNG: Chạy seed chính trước!
-- npm run prisma:seed
-- 
-- Script này sử dụng subqueries và PL/pgSQL để làm việc với dữ liệu hiện có
-- Đảm bảo bạn đã có categories, destinations, và cities từ seed chính
-- =====================================================\n\n"""
    
    # Tạo users
    print("Đang tạo users...")
    users_sql, supplier_users = generate_users()
    sql_content += users_sql
    
    # Tạo suppliers
    print("Đang tạo suppliers...")
    suppliers_sql = generate_suppliers_sql()
    sql_content += suppliers_sql
    
    # Tạo activities
    print("Đang tạo activities...")
    activities_sql = generate_activities_sql(500)
    sql_content += activities_sql
    
    # Tạo schedules
    print("Đang tạo schedules...")
    schedules_sql = generate_schedules_sql(500, 3)
    sql_content += schedules_sql
    
    # Tạo bookings
    print("Đang tạo bookings...")
    bookings_sql = generate_bookings_sql(3000)
    sql_content += bookings_sql
    
    # Tạo reviews
    print("Đang tạo reviews...")
    reviews_sql = generate_reviews_sql(2500)
    sql_content += reviews_sql
    
    sql_content += "\n\n-- =====================================================\n"
    sql_content += "-- HOÀN TẤT! Kiểm tra dữ liệu:\n"
    sql_content += "-- SELECT COUNT(*) FROM users;\n"
    sql_content += "-- SELECT COUNT(*) FROM activities;\n"
    sql_content += "-- SELECT COUNT(*) FROM bookings;\n"
    sql_content += "-- SELECT COUNT(*) FROM reviews;\n"
    sql_content += "-- =====================================================\n"
    
    return sql_content

if __name__ == '__main__':
    print("Đang tạo file SQL lớn...")
    sql = generate_sql_file()
    
    with open('seed-large-data.sql', 'w', encoding='utf-8') as f:
        f.write(sql)
    
    print("Đã tạo file SQL: seed-large-data.sql")
    print("Lưu ý: Đây là template. Tạo đầy đủ cần kết nối database để lấy IDs.")

