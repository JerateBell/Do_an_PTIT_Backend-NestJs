#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
SCRIPT TẠO DỮ LIỆU REALISTIC – CHUẨN RECOMMENDER SYSTEM

- Users + Preferences
- Activities theo category
- Bookings theo preference (70% match, 30% explore)
- Reviews phụ thuộc mức độ hài lòng (preference-aware)
"""

import random
import sys
import io

# =====================================================
# FIX ENCODING (Windows)
# =====================================================
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8')

# =====================================================
# CONSTANTS
# =====================================================
PASSWORD_HASH = "$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx"

CATEGORIES = [
    'Adventure',
    'Culture',
    'Food',
    'Nature',
    'Beach & Water Sports',
    'Wellness & Spa'
]

COMMENTS_POSITIVE = [
    'Trải nghiệm tuyệt vời!',
    'Rất đáng tiền.',
    'Hoạt động rất phù hợp với sở thích của tôi.',
    'Hướng dẫn viên rất chuyên nghiệp.',
    'Chắc chắn sẽ quay lại!'
]

COMMENTS_NEUTRAL = [
    'Trải nghiệm ổn.',
    'Không tệ nhưng chưa thật sự xuất sắc.',
    'Phù hợp để thử một lần.',
    'Khá ổn so với giá tiền.'
]

COMMENTS_NEGATIVE = [
    'Không đúng kỳ vọng.',
    'Trải nghiệm bình thường.',
    'Không phù hợp với sở thích cá nhân.',
]

# =====================================================
# UTILS
# =====================================================
def esc(s):
    if s is None:
        return 'NULL'
    return "'" + str(s).replace("'", "''") + "'"

# =====================================================
# USERS + PREFERENCES
# =====================================================
def generate_users_sql(num_customers=100):
    sql = "\n-- USERS + USER_PREFERENCES\n\n"

    for i in range(1, num_customers + 1):
        pref = random.choice(CATEGORIES)

        sql += f"""
INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer{i}@mail.com', '{PASSWORD_HASH}', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, '{pref}'
FROM users
WHERE email = 'customer{i}@mail.com';
"""

    return sql

# =====================================================
# ACTIVITIES
# =====================================================
def generate_activities_sql(num_activities=300):
    sql = "\n-- ACTIVITIES\n\n"

    for i in range(1, num_activities + 1):
        cat = random.choice(CATEGORIES)
        price = random.randint(20, 300)

        sql += f"""
INSERT INTO activities (
  supplier_id,
  category_id,
  name,
  price,
  status,
  rating,
  review_count,
  created_at
)
SELECT
  (SELECT id FROM suppliers ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM categories WHERE name = '{cat}' LIMIT 1),
  '{cat} Experience #{i}',
  {price},
  'active',
  0,
  0,
  NOW();
"""

    return sql

# =====================================================
# BOOKINGS – PREFERENCE AWARE
# =====================================================
def generate_bookings_sql(max_bookings=3000):
    return f"""
-- BOOKINGS (PREFERENCE-AWARE)

DO $$
DECLARE
  u RECORD;
  a RECORD;
  pref TEXT;
  cnt INT := 1;
BEGIN
  FOR u IN SELECT id FROM users WHERE role = 'customer'
  LOOP
    SELECT favorite_category INTO pref
    FROM user_preferences
    WHERE user_id = u.id;

    FOR i IN 1..(20 + (random() * 15)::int)
    LOOP
      EXIT WHEN cnt > {max_bookings};

      IF random() < 0.7 THEN
        -- MATCH PREFERENCE
        SELECT id, supplier_id, price INTO a
        FROM activities act
        JOIN categories c ON c.id = act.category_id
        WHERE c.name = pref
        ORDER BY RANDOM()
        LIMIT 1;
      ELSE
        -- EXPLORE
        SELECT id, supplier_id, price INTO a
        FROM activities act
        JOIN categories c ON c.id = act.category_id
        WHERE c.name <> pref
        ORDER BY RANDOM()
        LIMIT 1;
      END IF;

      CONTINUE WHEN a.id IS NULL;

      INSERT INTO bookings (
        booking_ref,
        user_id,
        activity_id,
        supplier_id,
        participants,
        total,
        status,
        created_at
      )
      VALUES (
        'BK' || LPAD(cnt::text, 8, '0'),
        u.id,
        a.id,
        a.supplier_id,
        (random() * 4 + 1)::int,
        a.price,
        'completed',
        NOW()
      );

      cnt := cnt + 1;
    END LOOP;
  END LOOP;
END $$;
"""

# =====================================================
# REVIEWS – RECOMMENDER STANDARD
# =====================================================
def generate_reviews_sql(max_reviews=2500):
    return f"""
-- REVIEWS (REALISTIC – DEPEND ON PREFERENCE)

DO $$
DECLARE
  b RECORD;
  pref TEXT;
  cat TEXT;
  rating INT;
  comment TEXT;
BEGIN
  FOR b IN
    SELECT b.id, b.user_id, b.activity_id
    FROM bookings b
    ORDER BY RANDOM()
    LIMIT {max_reviews}
  LOOP
    SELECT favorite_category INTO pref
    FROM user_preferences
    WHERE user_id = b.user_id;

    SELECT c.name INTO cat
    FROM activities a
    JOIN categories c ON c.id = a.category_id
    WHERE a.id = b.activity_id;

    IF pref = cat THEN
      rating := CASE
        WHEN random() < 0.6 THEN 5
        ELSE 4
      END;
      comment := (ARRAY{COMMENTS_POSITIVE})[floor(random()*{len(COMMENTS_POSITIVE)}+1)];
    ELSE
      rating := CASE
        WHEN random() < 0.2 THEN 5
        WHEN random() < 0.5 THEN 4
        WHEN random() < 0.8 THEN 3
        ELSE 2
      END;
      comment := (ARRAY{COMMENTS_NEUTRAL + COMMENTS_NEGATIVE})[
        floor(random()*{len(COMMENTS_NEUTRAL + COMMENTS_NEGATIVE)}+1)
      ];
    END IF;

    INSERT INTO reviews (
      booking_id,
      user_id,
      activity_id,
      rating,
      comment,
      created_at
    )
    VALUES (
      b.id,
      b.user_id,
      b.activity_id,
      rating,
      comment,
      NOW()
    )
    ON CONFLICT DO NOTHING;
  END LOOP;

  -- UPDATE ACTIVITY STATS
  UPDATE activities a
  SET
    rating = ROUND((SELECT AVG(r.rating) FROM reviews r WHERE r.activity_id = a.id), 2),
    review_count = (SELECT COUNT(*) FROM reviews r WHERE r.activity_id = a.id)
  WHERE EXISTS (SELECT 1 FROM reviews r WHERE r.activity_id = a.id);
END $$;
"""

# =====================================================
# MAIN FILE GENERATOR
# =====================================================
def generate_sql_file():
    sql = "-- AUTO GENERATED SEED FILE – RECOMMENDER READY\n"

    sql += generate_users_sql()
    sql += generate_activities_sql()
    sql += generate_bookings_sql()
    sql += generate_reviews_sql()

    return sql

# =====================================================
# RUN
# =====================================================
if __name__ == "__main__":
    with open("seed-large-data.sql", "w", encoding="utf-8") as f:
        f.write(generate_sql_file())

    print("✅ Generated seed-large-data.sql successfully")
