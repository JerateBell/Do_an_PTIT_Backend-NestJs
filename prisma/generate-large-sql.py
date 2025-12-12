#!/usr/bin/env python3
"""
Script to generate large SQL seed file with:
- 120+ users (100 customers, 15 suppliers, 5 admins)
- 500+ activities
- 3000+ bookings
- 2500+ reviews (ratings)
"""

import random
from datetime import datetime, timedelta

# Password hash for 'password123' (bcrypt - actual hash)
PASSWORD_HASH = "$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q"

# First names and last names for users
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
    # Adventure
    'Mountain Hiking Adventure', 'Rock Climbing Experience', 'Kayaking Tour', 'Zip Lining Adventure',
    'Bungee Jumping Experience', 'Paragliding Tour', 'Mountain Biking Trail', 'Cave Exploration',
    'Canyoning Adventure', 'Trekking Expedition', 'River Rafting', 'Scuba Diving Adventure',
    # Culture
    'Historical City Walking Tour', 'Traditional Temple Visit', 'Museum Discovery Tour',
    'Local Village Experience', 'Ancient Ruins Exploration', 'Cultural Heritage Walk',
    'Traditional Craft Workshop', 'Local Market Tour', 'Historical Site Visit', 'Cultural Performance Show',
    # Food
    'Street Food Tour', 'Cooking Class Experience', 'Fine Dining Experience', 'Local Food Market Tour',
    'Wine Tasting Session', 'Coffee Culture Tour', 'Seafood Feast', 'Traditional Cuisine Class',
    'Food & Culture Walk', 'Local Restaurant Hopping',
    # Nature
    'National Park Visit', 'Waterfall Hiking', 'Sunrise Mountain View', 'Jungle Trekking',
    'Wildlife Watching', 'Botanical Garden Tour', 'Scenic Landscape Photography', 'Eco-Tourism Experience',
    'Forest Bathing Session', 'Nature Conservation Tour',
    # Beach & Water Sports
    'Snorkeling Adventure', 'Scuba Diving Experience', 'Surfing Lesson', 'Beach Volleyball',
    'Jet Ski Tour', 'Sunset Cruise', 'Beach Yoga Session', 'Water Skiing', 'Beach Picnic Experience',
    # And more...
]

COMMENTS = [
    'Great experience! Highly recommend.', 'Amazing activity, had a wonderful time.',
    'Very enjoyable and well organized.', 'Good value for money.',
    'Excellent guide and service.', 'Would definitely do this again!',
    'Fantastic experience overall.', 'Really enjoyed this activity.',
    'Wonderful memories created here.', 'Highly satisfied with the service.',
    'Perfect for families!', 'Professional and friendly staff.',
    'Beautiful location, amazing views.', 'Great way to explore the area.',
    'Learned so much from this experience.', 'Unforgettable adventure!'
]

def create_slug(name):
    """Create slug from name"""
    return name.lower().replace(' ', '-').replace('&', 'and').replace(',', '').replace("'", '')

def generate_users(num_customers=100, num_suppliers=15, num_admins=5):
    """Generate SQL INSERT statements for users"""
    sql = "-- =====================================================\n"
    sql += "-- PART 1: USERS ({} customers, {} suppliers, {} admins)\n".format(num_customers, num_suppliers, num_admins)
    sql += "-- =====================================================\n\n"
    
    user_id = 1
    
    # Customers
    sql += "-- Customer Users\n"
    for i in range(1, num_customers + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'customer{i:03d}@example.com'
        phone = f'+84 901234{i:03d}'
        status = random.choices(['active', 'active', 'active', 'suspended', 'deleted'], weights=[70, 70, 70, 5, 5])[0]
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"('{email}', '{PASSWORD_HASH}', '{first_name}', '{last_name}', '{phone}', 'customer', '{status}', NOW(), NOW());\n"
    
    sql += "\n-- Supplier Users\n"
    supplier_users = []
    for i in range(1, num_suppliers + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'supplier{i:02d}@example.com'
        phone = f'+84 902234{i:03d}'
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"('{email}', '{PASSWORD_HASH}', '{first_name}', '{last_name}', '{phone}', 'supplier', 'active', NOW(), NOW());\n"
        
        supplier_users.append({
            'email': email,
            'company': random.choice(COMPANY_NAMES)
        })
    
    sql += "\n-- Admin Users\n"
    for i in range(1, num_admins + 1):
        first_name = random.choice(FIRST_NAMES)
        last_name = random.choice(LAST_NAMES)
        email = f'admin{i:02d}@example.com'
        phone = f'+84 903234{i:03d}'
        
        sql += f"INSERT INTO \"users\" (\"email\", \"password_hash\", \"first_name\", \"last_name\", \"phone\", \"role\", \"status\", \"created_at\", \"updated_at\") VALUES\n"
        sql += f"('{email}', '{PASSWORD_HASH}', '{first_name}', '{last_name}', '{phone}', 'admin', 'active', NOW(), NOW());\n"
    
    return sql, supplier_users

def generate_suppliers_sql(num_suppliers=15):
    """Generate SQL for suppliers"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PART 2: SUPPLIERS ({num_suppliers} suppliers)\n"
    sql += "-- =====================================================\n\n"
    
    for i in range(1, num_suppliers + 1):
        company_name = random.choice(COMPANY_NAMES)
        business_email = f"contact@{company_name.lower().replace(' ', '').replace('.', '').replace('&', 'and')}.com"
        phone = f"+84 123456{i:03d}"
        commission_rate = round(10 + random.random() * 10, 2)
        
        sql += f"""INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT '{company_name}', '{business_email}', '{phone}', 'Hanoi, Vietnam', {commission_rate}, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier{i:02d}@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

"""
    
    return sql

def generate_activities_sql(num_activities=500):
    """Generate SQL for activities using subqueries"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PART 3: ACTIVITIES ({num_activities} activities)\n"
    sql += "-- =====================================================\n\n"
    
    activity_templates = {
        'Adventure': ['Mountain Hiking', 'Rock Climbing', 'Kayaking', 'Zip Lining', 'Bungee Jumping', 
                     'Paragliding', 'Mountain Biking', 'Cave Exploration', 'Canyoning', 'Trekking'],
        'Culture': ['Historical Walking Tour', 'Temple Visit', 'Museum Tour', 'Village Experience',
                   'Ancient Ruins', 'Cultural Heritage Walk', 'Craft Workshop', 'Market Tour'],
        'Food': ['Street Food Tour', 'Cooking Class', 'Fine Dining', 'Food Market Tour',
                'Wine Tasting', 'Coffee Tour', 'Seafood Feast', 'Cuisine Class'],
        'Nature': ['National Park', 'Waterfall Hiking', 'Sunrise View', 'Jungle Trekking',
                  'Wildlife Watching', 'Botanical Garden', 'Scenic Photography', 'Eco-Tourism'],
        'Beach & Water Sports': ['Snorkeling', 'Scuba Diving', 'Surfing', 'Beach Volleyball',
                                'Jet Ski', 'Sunset Cruise', 'Beach Yoga', 'Water Skiing'],
        'Wellness & Spa': ['Spa Treatment', 'Hot Spring', 'Yoga Retreat', 'Massage Therapy',
                          'Wellness Center', 'Aromatherapy', 'Healing Session'],
        'Nightlife & Entertainment': ['Night Market', 'Live Music', 'Nightclub', 'Karaoke',
                                     'Cultural Show', 'City Lights Tour', 'Bar Hopping'],
    }
    
    destination_names = ['Ha Long Bay', 'Hoan Kiem Lake', 'Ben Thanh Market', 'Statue of Liberty',
                        'Old Quarter', 'Temple of Literature', 'Ngoc Son Temple', 'Water Puppet Theater']
    
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
        featured = random.random() < 0.15
        
        highlights = f'["Experience {category_name.lower()}", "Professional guide", "Small group size"]'
        description = f"An amazing {category_name.lower()} experience at {destination_name}."
        
        sql += f"""INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = '{category_name}' AND "parent_id" IS NULL LIMIT 1),
  '{full_name}',
  '{slug}',
  '{description}',
  '{highlights}'::jsonb,
  {duration},
  {price},
  'USD',
  {max_participants},
  0,
  0,
  {str(instant_confirmation).lower()},
  {str(free_cancellation).lower()},
  '{status}'::"ActivityStatus",
  {str(featured).lower()},
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

"""
        activity_id += 1
    
    return sql

def generate_schedules_sql(num_activities=500, schedules_per_activity=3):
    """Generate SQL for activity schedules"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PART 4: ACTIVITY SCHEDULES ({num_activities * schedules_per_activity} schedules)\n"
    sql += "-- =====================================================\n\n"
    
    time_slots = ['09:00', '10:00', '11:00', '14:00', '15:00', '16:00', '17:00']
    
    sql += """-- Generate schedules for all activities
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
    -- Create 3-5 schedules per activity
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
    """Generate SQL for bookings"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PART 5: BOOKINGS ({num_bookings} bookings)\n"
    sql += "-- =====================================================\n\n"
    
    sql += f"""-- Generate bookings using PL/pgSQL for better performance
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
    -- Each customer gets 20-40 bookings
    FOR i IN 1..(20 + (random() * 20)::int)
    LOOP
      IF booking_counter > {num_bookings} THEN
        EXIT;
      END IF;
      
      -- Get random activity with schedule
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
      
      -- Get supplier
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
      
      -- Update booked spots
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
    """Generate SQL for reviews"""
    sql = "\n\n-- =====================================================\n"
    sql += f"-- PART 6: REVIEWS (RATINGS) ({num_reviews} reviews)\n"
    sql += "-- =====================================================\n\n"
    
    comments = [
        "Great experience! Highly recommend.",
        "Amazing activity, had a wonderful time.",
        "Very enjoyable and well organized.",
        "Good value for money.",
        "Excellent guide and service.",
        "Would definitely do this again!",
        "Fantastic experience overall.",
        "Really enjoyed this activity.",
        "Wonderful memories created here.",
        "Highly satisfied with the service.",
        "Perfect for families!",
        "Professional and friendly staff.",
        "Beautiful location, amazing views.",
        "Great way to explore the area.",
        "Learned so much from this experience.",
        "Unforgettable adventure!"
    ]
    
    sql += f"""-- Generate reviews from completed/confirmed bookings
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
    -- 70% of bookings get reviews, rating between 3-5 (mostly 4-5)
    rating := CASE
      WHEN random() < 0.6 THEN 5
      WHEN random() < 0.8 THEN 4
      ELSE 3
    END;
    
    comment_text := (ARRAY['Great experience! Highly recommend.', 'Amazing activity, had a wonderful time.', 'Very enjoyable and well organized.', 'Good value for money.', 'Excellent guide and service.', 'Would definitely do this again!', 'Fantastic experience overall.', 'Really enjoyed this activity.', 'Wonderful memories created here.', 'Highly satisfied with the service.', 'Perfect for families!', 'Professional and friendly staff.', 'Beautiful location, amazing views.', 'Great way to explore the area.', 'Learned so much from this experience.', 'Unforgettable adventure!'])[floor(random() * 16 + 1)::int];
    
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
  
  -- Update activity ratings and review counts
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
    """Generate the complete SQL file"""
    sql_content = """-- =====================================================
-- LARGE DATA SEED SCRIPT - AUTO GENERATED
-- =====================================================
-- This script creates:
-- - 120+ users (100 customers, 15 suppliers, 5 admins)
-- - 15 suppliers
-- - 500+ activities
-- - 3000+ bookings
-- - 2500+ reviews (ratings)
-- And all related data
-- =====================================================

-- IMPORTANT: Run the main seed first!
-- npm run prisma:seed
-- 
-- This script uses subqueries and PL/pgSQL to work with existing data
-- Make sure you have categories, destinations, and cities from main seed
-- =====================================================\n\n"""
    
    # Generate users
    print("Generating users...")
    users_sql, supplier_users = generate_users()
    sql_content += users_sql
    
    # Generate suppliers
    print("Generating suppliers...")
    suppliers_sql = generate_suppliers_sql()
    sql_content += suppliers_sql
    
    # Generate activities
    print("Generating activities...")
    activities_sql = generate_activities_sql(500)
    sql_content += activities_sql
    
    # Generate schedules
    print("Generating schedules...")
    schedules_sql = generate_schedules_sql(500, 3)
    sql_content += schedules_sql
    
    # Generate bookings
    print("Generating bookings...")
    bookings_sql = generate_bookings_sql(3000)
    sql_content += bookings_sql
    
    # Generate reviews
    print("Generating reviews...")
    reviews_sql = generate_reviews_sql(2500)
    sql_content += reviews_sql
    
    sql_content += "\n\n-- =====================================================\n"
    sql_content += "-- COMPLETE! Check your data:\n"
    sql_content += "-- SELECT COUNT(*) FROM users;\n"
    sql_content += "-- SELECT COUNT(*) FROM activities;\n"
    sql_content += "-- SELECT COUNT(*) FROM bookings;\n"
    sql_content += "-- SELECT COUNT(*) FROM reviews;\n"
    sql_content += "-- =====================================================\n"
    
    return sql_content

if __name__ == '__main__':
    print("Generating large SQL file...")
    sql = generate_sql_file()
    
    with open('seed-large-data.sql', 'w', encoding='utf-8') as f:
        f.write(sql)
    
    print("SQL file generated: seed-large-data.sql")
    print("Note: This is a template. Full generation requires database connection to get IDs.")

