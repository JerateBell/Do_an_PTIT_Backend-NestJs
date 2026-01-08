-- AUTO GENERATED SEED FILE – RECOMMENDER READY

-- USERS + USER_PREFERENCES


INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer1@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer1@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer2@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer2@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer3@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer3@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer4@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer4@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer5@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer5@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer6@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer6@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer7@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer7@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer8@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer8@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer9@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer9@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer10@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer10@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer11@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer11@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer12@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer12@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer13@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer13@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer14@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer14@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer15@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer15@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer16@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer16@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer17@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer17@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer18@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer18@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer19@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer19@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer20@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer20@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer21@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer21@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer22@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer22@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer23@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer23@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer24@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer24@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer25@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer25@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer26@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer26@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer27@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer27@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer28@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer28@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer29@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer29@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer30@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer30@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer31@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer31@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer32@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer32@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer33@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer33@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer34@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer34@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer35@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer35@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer36@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer36@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer37@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer37@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer38@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer38@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer39@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer39@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer40@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer40@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer41@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer41@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer42@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer42@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer43@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer43@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer44@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer44@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer45@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer45@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer46@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer46@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer47@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer47@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer48@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer48@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer49@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer49@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer50@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer50@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer51@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer51@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer52@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer52@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer53@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer53@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer54@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer54@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer55@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer55@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer56@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer56@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer57@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer57@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer58@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer58@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer59@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer59@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer60@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer60@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer61@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer61@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer62@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer62@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer63@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer63@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer64@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer64@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer65@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer65@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer66@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer66@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer67@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer67@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer68@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer68@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer69@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer69@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer70@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer70@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer71@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer71@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer72@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer72@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer73@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer73@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer74@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer74@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer75@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer75@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer76@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer76@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer77@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer77@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer78@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer78@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer79@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer79@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer80@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer80@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer81@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer81@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer82@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer82@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer83@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer83@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer84@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer84@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer85@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer85@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer86@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer86@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer87@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer87@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer88@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer88@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer89@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer89@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer90@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer90@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer91@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer91@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer92@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Wellness & Spa'
FROM users
WHERE email = 'customer92@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer93@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer93@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer94@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Nature'
FROM users
WHERE email = 'customer94@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer95@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer95@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer96@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer96@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer97@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Culture'
FROM users
WHERE email = 'customer97@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer98@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Beach & Water Sports'
FROM users
WHERE email = 'customer98@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer99@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Food'
FROM users
WHERE email = 'customer99@mail.com';

INSERT INTO users (email, password_hash, role, status, created_at)
VALUES ('customer100@mail.com', '$2b$10$examplehashedpasswordxxxxxxxxxxxxxxxxxxxxx', 'customer', 'active', NOW());

INSERT INTO user_preferences (user_id, favorite_category)
SELECT id, 'Adventure'
FROM users
WHERE email = 'customer100@mail.com';

-- ACTIVITIES


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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #1',
  86,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #2',
  24,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #3',
  230,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #4',
  114,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #5',
  43,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #6',
  100,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #7',
  268,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #8',
  153,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #9',
  231,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #10',
  206,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #11',
  134,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #12',
  45,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #13',
  209,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #14',
  195,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #15',
  165,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #16',
  115,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #17',
  21,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #18',
  149,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #19',
  292,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #20',
  23,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #21',
  110,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #22',
  209,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #23',
  66,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #24',
  197,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #25',
  209,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #26',
  183,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #27',
  167,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #28',
  200,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #29',
  147,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #30',
  236,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #31',
  208,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #32',
  245,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #33',
  176,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #34',
  236,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #35',
  257,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #36',
  276,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #37',
  153,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #38',
  193,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #39',
  90,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #40',
  268,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #41',
  129,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #42',
  176,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #43',
  264,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #44',
  280,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #45',
  108,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #46',
  216,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #47',
  122,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #48',
  208,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #49',
  72,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #50',
  97,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #51',
  44,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #52',
  128,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #53',
  272,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #54',
  201,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #55',
  237,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #56',
  44,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #57',
  172,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #58',
  194,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #59',
  85,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #60',
  291,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #61',
  176,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #62',
  113,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #63',
  179,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #64',
  280,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #65',
  254,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #66',
  137,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #67',
  168,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #68',
  127,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #69',
  120,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #70',
  240,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #71',
  65,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #72',
  56,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #73',
  43,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #74',
  105,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #75',
  39,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #76',
  38,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #77',
  154,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #78',
  164,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #79',
  166,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #80',
  77,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #81',
  201,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #82',
  260,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #83',
  164,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #84',
  93,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #85',
  63,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #86',
  95,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #87',
  127,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #88',
  226,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #89',
  121,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #90',
  204,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #91',
  129,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #92',
  63,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #93',
  214,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #94',
  292,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #95',
  133,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #96',
  125,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #97',
  134,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #98',
  211,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #99',
  285,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #100',
  120,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #101',
  201,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #102',
  38,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #103',
  97,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #104',
  46,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #105',
  178,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #106',
  100,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #107',
  213,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #108',
  118,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #109',
  178,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #110',
  240,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #111',
  181,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #112',
  247,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #113',
  70,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #114',
  177,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #115',
  117,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #116',
  169,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #117',
  171,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #118',
  143,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #119',
  203,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #120',
  27,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #121',
  273,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #122',
  238,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #123',
  52,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #124',
  23,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #125',
  162,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #126',
  43,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #127',
  299,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #128',
  264,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #129',
  213,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #130',
  21,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #131',
  41,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #132',
  183,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #133',
  281,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #134',
  168,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #135',
  233,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #136',
  96,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #137',
  74,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #138',
  162,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #139',
  284,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #140',
  180,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #141',
  290,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #142',
  192,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #143',
  287,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #144',
  152,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #145',
  201,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #146',
  199,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #147',
  154,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #148',
  182,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #149',
  31,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #150',
  192,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #151',
  273,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #152',
  140,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #153',
  54,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #154',
  65,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #155',
  221,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #156',
  70,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #157',
  213,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #158',
  35,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #159',
  144,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #160',
  75,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #161',
  24,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #162',
  115,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #163',
  20,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #164',
  85,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #165',
  284,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #166',
  246,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #167',
  189,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #168',
  117,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #169',
  171,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #170',
  115,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #171',
  166,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #172',
  178,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #173',
  252,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #174',
  243,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #175',
  100,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #176',
  95,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #177',
  242,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #178',
  216,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #179',
  116,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #180',
  115,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #181',
  179,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #182',
  240,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #183',
  212,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #184',
  167,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #185',
  242,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #186',
  104,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #187',
  27,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #188',
  63,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #189',
  58,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #190',
  233,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #191',
  224,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #192',
  163,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #193',
  264,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #194',
  132,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #195',
  88,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #196',
  80,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #197',
  225,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #198',
  107,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #199',
  153,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #200',
  80,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #201',
  173,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #202',
  213,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #203',
  169,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #204',
  90,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #205',
  61,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #206',
  98,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #207',
  135,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #208',
  60,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #209',
  155,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #210',
  239,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #211',
  148,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #212',
  73,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #213',
  297,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #214',
  72,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #215',
  297,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #216',
  106,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #217',
  117,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #218',
  89,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #219',
  279,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #220',
  35,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #221',
  233,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #222',
  188,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #223',
  129,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #224',
  117,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #225',
  268,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #226',
  122,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #227',
  40,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #228',
  138,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #229',
  270,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #230',
  263,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #231',
  274,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #232',
  60,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #233',
  156,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #234',
  203,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #235',
  135,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #236',
  88,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #237',
  158,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #238',
  276,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #239',
  77,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #240',
  214,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #241',
  93,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #242',
  182,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #243',
  77,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #244',
  294,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #245',
  33,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #246',
  165,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #247',
  170,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #248',
  103,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #249',
  203,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #250',
  285,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #251',
  196,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #252',
  56,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #253',
  135,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #254',
  70,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #255',
  69,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #256',
  255,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #257',
  102,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #258',
  175,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #259',
  224,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #260',
  194,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #261',
  169,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #262',
  216,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #263',
  44,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #264',
  152,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #265',
  217,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #266',
  194,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #267',
  219,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #268',
  29,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Culture' LIMIT 1),
  'Culture Experience #269',
  166,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #270',
  86,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #271',
  273,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #272',
  156,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #273',
  67,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #274',
  63,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #275',
  199,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #276',
  116,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #277',
  250,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #278',
  133,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #279',
  78,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #280',
  69,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #281',
  99,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #282',
  233,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #283',
  146,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #284',
  58,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #285',
  284,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #286',
  109,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #287',
  219,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #288',
  145,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #289',
  71,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Beach & Water Sports' LIMIT 1),
  'Beach & Water Sports Experience #290',
  111,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #291',
  108,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #292',
  204,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Wellness & Spa' LIMIT 1),
  'Wellness & Spa Experience #293',
  178,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Adventure' LIMIT 1),
  'Adventure Experience #294',
  210,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #295',
  109,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #296',
  37,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Food' LIMIT 1),
  'Food Experience #297',
  128,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #298',
  109,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #299',
  173,
  'active',
  0,
  0,
  NOW();

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
  (SELECT id FROM categories WHERE name = 'Nature' LIMIT 1),
  'Nature Experience #300',
  193,
  'active',
  0,
  0,
  NOW();

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
      EXIT WHEN cnt > 3000;

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
    LIMIT 2500
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
      comment := (ARRAY['Trải nghiệm tuyệt vời!', 'Rất đáng tiền.', 'Hoạt động rất phù hợp với sở thích của tôi.', 'Hướng dẫn viên rất chuyên nghiệp.', 'Chắc chắn sẽ quay lại!'])[floor(random()*5+1)];
    ELSE
      rating := CASE
        WHEN random() < 0.2 THEN 5
        WHEN random() < 0.5 THEN 4
        WHEN random() < 0.8 THEN 3
        ELSE 2
      END;
      comment := (ARRAY['Trải nghiệm ổn.', 'Không tệ nhưng chưa thật sự xuất sắc.', 'Phù hợp để thử một lần.', 'Khá ổn so với giá tiền.', 'Không đúng kỳ vọng.', 'Trải nghiệm bình thường.', 'Không phù hợp với sở thích cá nhân.'])[
        floor(random()*7+1)
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
