-- Insert coupons cho người dùng có email "tiendungzzz987@gmail.com"
-- Lưu ý: Coupons là global, không gắn với user cụ thể, nhưng có thể tạo code đặc biệt

-- Coupon 1: Giảm 10% (tối đa 50$), đơn tối thiểu 100$
INSERT INTO coupons (
    code,
    name,
    discount_type,
    discount_value,
    min_amount,
    max_discount,
    usage_limit,
    used_count,
    valid_from,
    valid_to,
    is_active,
    created_at
) VALUES (
    'TIENDUNG10',
    'Giảm 10% cho khách hàng thân thiết',
    'percentage',
    10.00,
    100.00,
    50.00,
    5,
    0,
    NOW(),
    NOW() + INTERVAL '6 months',
    true,
    NOW()
);

-- Coupon 2: Giảm 20$ cố định, đơn tối thiểu 150$
INSERT INTO coupons (
    code,
    name,
    discount_type,
    discount_value,
    min_amount,
    max_discount,
    usage_limit,
    used_count,
    valid_from,
    valid_to,
    is_active,
    created_at
) VALUES (
    'TIENDUNG20',
    'Giảm 20$ cho đơn hàng từ 150$',
    'fixed',
    20.00,
    150.00,
    NULL,
    3,
    0,
    NOW(),
    NOW() + INTERVAL '3 months',
    true,
    NOW()
);

-- Coupon 3: Giảm 15% không giới hạn, đơn tối thiểu 50$
INSERT INTO coupons (
    code,
    name,
    discount_type,
    discount_value,
    min_amount,
    max_discount,
    usage_limit,
    used_count,
    valid_from,
    valid_to,
    is_active,
    created_at
) VALUES (
    'TIENDUNG15',
    'Giảm 15% không giới hạn',
    'percentage',
    15.00,
    50.00,
    NULL,
    NULL,
    0,
    NOW(),
    NOW() + INTERVAL '12 months',
    true,
    NOW()
);

-- Coupon 4: Giảm 30$ cho đơn hàng lớn (từ 300$)
INSERT INTO coupons (
    code,
    name,
    discount_type,
    discount_value,
    min_amount,
    max_discount,
    usage_limit,
    used_count,
    valid_from,
    valid_to,
    is_active,
    created_at
) VALUES (
    'TIENDUNG30',
    'Giảm 30$ cho đơn hàng từ 300$',
    'fixed',
    30.00,
    300.00,
    NULL,
    2,
    0,
    NOW(),
    NOW() + INTERVAL '4 months',
    true,
    NOW()
);

-- Coupon 5: Giảm 25% (tối đa 100$), đơn tối thiểu 200$
INSERT INTO coupons (
    code,
    name,
    discount_type,
    discount_value,
    min_amount,
    max_discount,
    usage_limit,
    used_count,
    valid_from,
    valid_to,
    is_active,
    created_at
) VALUES (
    'TIENDUNG25',
    'Giảm 25% tối đa 100$ cho đơn từ 200$',
    'percentage',
    25.00,
    200.00,
    100.00,
    1,
    0,
    NOW(),
    NOW() + INTERVAL '2 months',
    true,
    NOW()
);

