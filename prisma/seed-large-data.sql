-- =====================================================
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
-- =====================================================

-- =====================================================
-- PART 1: USERS (100 customers, 15 suppliers, 5 admins)
-- =====================================================

-- Customer Users
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer001@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sharon', 'Foster', '+84 901234001', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer002@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Green', '+84 901234002', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer003@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Walker', '+84 901234003', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer004@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Lisa', 'Cook', '+84 901234004', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer005@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Carol', 'Long', '+84 901234005', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer006@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Wilson', '+84 901234006', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer007@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Gregory', 'Cooper', '+84 901234007', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer008@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Rebecca', 'Nguyen', '+84 901234008', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer009@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Anthony', 'Clark', '+84 901234009', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer010@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Catherine', 'Martinez', '+84 901234010', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer011@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Andrew', 'Wilson', '+84 901234011', 'customer', 'deleted', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer012@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Eric', 'Kelly', '+84 901234012', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer013@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Margaret', 'Hernandez', '+84 901234013', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer014@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Nicole', 'Reyes', '+84 901234014', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer015@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Adams', '+84 901234015', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer016@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Susan', 'Bennett', '+84 901234016', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer017@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Gray', '+84 901234017', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer018@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Cook', '+84 901234018', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer019@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephanie', 'Myers', '+84 901234019', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer020@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Cynthia', 'Flores', '+84 901234020', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer021@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Morgan', '+84 901234021', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer022@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ronald', 'Hill', '+84 901234022', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer023@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Betty', 'Hernandez', '+84 901234023', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer024@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Cook', '+84 901234024', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer025@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jonathan', 'Bennett', '+84 901234025', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer026@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sarah', 'Clark', '+84 901234026', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer027@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Cox', '+84 901234027', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer028@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Robert', 'Anderson', '+84 901234028', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer029@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Eric', 'Walker', '+84 901234029', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer030@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Frank', 'Long', '+84 901234030', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer031@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kathleen', 'Diaz', '+84 901234031', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer032@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Mark', 'Hall', '+84 901234032', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer033@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Long', '+84 901234033', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer034@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Elizabeth', 'Morgan', '+84 901234034', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer035@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Gregory', 'Hughes', '+84 901234035', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer036@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Price', '+84 901234036', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer037@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Foster', '+84 901234037', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer038@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Samuel', 'Morris', '+84 901234038', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer039@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'James', 'Wood', '+84 901234039', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer040@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Lisa', 'Martinez', '+84 901234040', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer041@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ronald', 'Thomas', '+84 901234041', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer042@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephanie', 'Young', '+84 901234042', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer043@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Michael', 'Patel', '+84 901234043', 'customer', 'deleted', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer044@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Ortiz', '+84 901234044', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer045@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Amanda', 'Sanders', '+84 901234045', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer046@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Andrew', 'Morgan', '+84 901234046', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer047@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Angela', 'Sanchez', '+84 901234047', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer048@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Angela', 'Peterson', '+84 901234048', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer049@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Justin', 'Carter', '+84 901234049', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer050@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Myers', '+84 901234050', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer051@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Joshua', 'Davis', '+84 901234051', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer052@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Kim', '+84 901234052', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer053@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephen', 'Wright', '+84 901234053', 'customer', 'suspended', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer054@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Gregory', 'Ramirez', '+84 901234054', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer055@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Donna', 'Rivera', '+84 901234055', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer056@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Morales', '+84 901234056', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer057@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jessica', 'Reed', '+84 901234057', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer058@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Lopez', '+84 901234058', 'customer', 'deleted', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer059@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Daniel', 'Parker', '+84 901234059', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer060@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Carter', '+84 901234060', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer061@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brian', 'Anderson', '+84 901234061', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer062@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Eric', 'Ruiz', '+84 901234062', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer063@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'David', 'Wood', '+84 901234063', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer064@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jeffrey', 'Ortiz', '+84 901234064', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer065@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jacob', 'Smith', '+84 901234065', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer066@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Betty', 'Hill', '+84 901234066', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer067@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ronald', 'Williams', '+84 901234067', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer068@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Donald', 'Ward', '+84 901234068', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer069@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Cynthia', 'Wilson', '+84 901234069', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer070@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Jackson', '+84 901234070', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer071@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Laura', 'Ortiz', '+84 901234071', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer072@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Justin', 'Patel', '+84 901234072', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer073@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Eric', 'Rodriguez', '+84 901234073', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer074@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sarah', 'Nelson', '+84 901234074', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer075@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Dorothy', 'Wood', '+84 901234075', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer076@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Jackson', '+84 901234076', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer077@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Donna', 'Robinson', '+84 901234077', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer078@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Kim', '+84 901234078', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer079@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Susan', 'Martinez', '+84 901234079', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer080@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Rebecca', 'Wood', '+84 901234080', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer081@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Walker', '+84 901234081', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer082@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Gregory', 'Stewart', '+84 901234082', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer083@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Morgan', '+84 901234083', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer084@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Benjamin', 'Ortiz', '+84 901234084', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer085@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sarah', 'Lee', '+84 901234085', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer086@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kevin', 'Baker', '+84 901234086', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer087@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Karen', 'Moore', '+84 901234087', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer088@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Justin', 'Long', '+84 901234088', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer089@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kevin', 'Watson', '+84 901234089', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer090@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Nguyen', '+84 901234090', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer091@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brian', 'Phillips', '+84 901234091', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer092@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Thomas', '+84 901234092', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer093@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Donna', 'Allen', '+84 901234093', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer094@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Carol', 'Myers', '+84 901234094', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer095@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Hernandez', '+84 901234095', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer096@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ashley', 'Castillo', '+84 901234096', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer097@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sharon', 'Hall', '+84 901234097', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer098@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jeffrey', 'Turner', '+84 901234098', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer099@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Margaret', 'Peterson', '+84 901234099', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer100@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Garcia', '+84 901234100', 'customer', 'active', NOW(), NOW());

-- Supplier Users
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier01@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jason', 'Stewart', '+84 902234001', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier02@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Rebecca', 'Edwards', '+84 902234002', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier03@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Elizabeth', 'Brown', '+84 902234003', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier04@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Christine', 'Roberts', '+84 902234004', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier05@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Gomez', '+84 902234005', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier06@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'James', 'Williams', '+84 902234006', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier07@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Reed', '+84 902234007', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier08@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jennifer', 'Lee', '+84 902234008', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier09@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sharon', 'Green', '+84 902234009', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier10@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Andrew', 'Morris', '+84 902234010', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier11@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Lisa', 'Perez', '+84 902234011', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier12@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Nicole', 'Rodriguez', '+84 902234012', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier13@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Carol', 'Richardson', '+84 902234013', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier14@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Laura', 'Sanders', '+84 902234014', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier15@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sharon', 'Reyes', '+84 902234015', 'supplier', 'active', NOW(), NOW());

-- Admin Users
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin01@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jennifer', 'Diaz', '+84 903234001', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin02@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Gray', '+84 903234002', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin03@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Reed', '+84 903234003', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin04@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Karen', 'Martin', '+84 903234004', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin05@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Garcia', '+84 903234005', 'admin', 'active', NOW(), NOW());


-- =====================================================
-- PART 2: SUPPLIERS (15 suppliers)
-- =====================================================

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Elite Travel Services', 'contact@elitetravelservices.com', '+84 123456001', 'Hanoi, Vietnam', 14.67, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier01@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Heritage Trail Travel', 'contact@heritagetrailtravel.com', '+84 123456002', 'Hanoi, Vietnam', 12.87, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier02@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Blue Sky Travel Agency', 'contact@blueskytravelagency.com', '+84 123456003', 'Hanoi, Vietnam', 14.66, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier03@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'City Discovery Tours', 'contact@citydiscoverytours.com', '+84 123456004', 'Hanoi, Vietnam', 11.87, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier04@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Blue Sky Travel Agency', 'contact@blueskytravelagency.com', '+84 123456005', 'Hanoi, Vietnam', 19.6, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier05@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Ocean Breeze Adventures', 'contact@oceanbreezeadventures.com', '+84 123456006', 'Hanoi, Vietnam', 17.99, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier06@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Wild Nature Expeditions', 'contact@wildnatureexpeditions.com', '+84 123456007', 'Hanoi, Vietnam', 16.61, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier07@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Luxury Travel Experience', 'contact@luxurytravelexperience.com', '+84 123456008', 'Hanoi, Vietnam', 10.03, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier08@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Mountain View Tours', 'contact@mountainviewtours.com', '+84 123456009', 'Hanoi, Vietnam', 13.33, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier09@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Golden Gate Adventures', 'contact@goldengateadventures.com', '+84 123456010', 'Hanoi, Vietnam', 17.61, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier10@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Blue Sky Travel Agency', 'contact@blueskytravelagency.com', '+84 123456011', 'Hanoi, Vietnam', 17.48, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier11@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Blue Sky Travel Agency', 'contact@blueskytravelagency.com', '+84 123456012', 'Hanoi, Vietnam', 12.66, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier12@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Sunset Travel Agency', 'contact@sunsettravelagency.com', '+84 123456013', 'Hanoi, Vietnam', 18.01, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier13@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Ocean Breeze Adventures', 'contact@oceanbreezeadventures.com', '+84 123456014', 'Hanoi, Vietnam', 10.94, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier14@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Heritage Trail Travel', 'contact@heritagetrailtravel.com', '+84 123456015', 'Hanoi, Vietnam', 13.61, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier15@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);



-- =====================================================
-- PART 3: ACTIVITIES (500 activities)
-- =====================================================

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Aromatherapy - Ngoc Son Temple',
  'aromatherapy---ngoc-son-temple-1',
  'An amazing wellness & spa experience at Ngoc Son Temple.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  145.25,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Sunset Cruise - Ngoc Son Temple',
  'sunset-cruise---ngoc-son-temple-2',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  270.13,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Water Puppet Theater',
  'cuisine-class---water-puppet-theater-3',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  252.23,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Ben Thanh Market',
  'cave-exploration---ben-thanh-market-4',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  254.13,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Hoan Kiem Lake',
  'hot-spring---hoan-kiem-lake-5',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  224.46,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Hoan Kiem Lake',
  'cooking-class---hoan-kiem-lake-6',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  246.1,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Statue of Liberty',
  'cave-exploration---statue-of-liberty-7',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  192.16,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Ben Thanh Market',
  'trekking---ben-thanh-market-8',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  288.76,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Old Quarter',
  'nightclub---old-quarter-9',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  169.06,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ben Thanh Market',
  'bungee-jumping---ben-thanh-market-10',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  87.3,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Statue of Liberty',
  'museum-tour---statue-of-liberty-11',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  218.48,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Old Quarter',
  'cultural-show---old-quarter-12',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  197.09,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Ha Long Bay',
  'cooking-class---ha-long-bay-13',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  33.48,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Temple of Literature',
  'seafood-feast---temple-of-literature-14',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  245.74,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Old Quarter',
  'rock-climbing---old-quarter-15',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  142.98,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Hoan Kiem Lake',
  'ancient-ruins---hoan-kiem-lake-16',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  128.05,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Statue of Liberty',
  'wildlife-watching---statue-of-liberty-17',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  98.54,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Statue of Liberty',
  'village-experience---statue-of-liberty-18',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  288.46,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Scenic Photography - Water Puppet Theater',
  'scenic-photography---water-puppet-theater-19',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  186.84,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Ha Long Bay',
  'trekking---ha-long-bay-20',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  28.24,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Ngoc Son Temple',
  'temple-visit---ngoc-son-temple-21',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  235.86,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Statue of Liberty',
  'hot-spring---statue-of-liberty-22',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  196.67,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Ben Thanh Market',
  'scuba-diving---ben-thanh-market-23',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  208.6,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ben Thanh Market',
  'bungee-jumping---ben-thanh-market-24',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  265.87,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ngoc Son Temple',
  'hot-spring---ngoc-son-temple-25',
  'An amazing wellness & spa experience at Ngoc Son Temple.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  191.18,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Statue of Liberty',
  'beach-volleyball---statue-of-liberty-26',
  'An amazing beach & water sports experience at Statue of Liberty.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  62.91,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Statue of Liberty',
  'botanical-garden---statue-of-liberty-27',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  183.73,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Spa Treatment - Hoan Kiem Lake',
  'spa-treatment---hoan-kiem-lake-28',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  22.92,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Ngoc Son Temple',
  'karaoke---ngoc-son-temple-29',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  39.34,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Temple of Literature',
  'waterfall-hiking---temple-of-literature-30',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  132.94,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-31',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  82.37,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Ha Long Bay',
  'trekking---ha-long-bay-32',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  235.44,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Old Quarter',
  'live-music---old-quarter-33',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  86.25,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Ben Thanh Market',
  'yoga-retreat---ben-thanh-market-34',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  147.24,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Ha Long Bay',
  'healing-session---ha-long-bay-35',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  141.1,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Water Puppet Theater',
  'cuisine-class---water-puppet-theater-36',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  52.18,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Ha Long Bay',
  'massage-therapy---ha-long-bay-37',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  148.5,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ben Thanh Market',
  'wildlife-watching---ben-thanh-market-38',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  112.73,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ngoc Son Temple',
  'beach-volleyball---ngoc-son-temple-39',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  61.78,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Water Puppet Theater',
  'night-market---water-puppet-theater-40',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  244.92,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Aromatherapy - Temple of Literature',
  'aromatherapy---temple-of-literature-41',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  73.92,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Statue of Liberty',
  'coffee-tour---statue-of-liberty-42',
  'An amazing food experience at Statue of Liberty.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  22.64,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ben Thanh Market',
  'beach-volleyball---ben-thanh-market-43',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  268.56,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Water Puppet Theater',
  'live-music---water-puppet-theater-44',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  294.39,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Old Quarter',
  'nightclub---old-quarter-45',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  266.98,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Temple of Literature',
  'hot-spring---temple-of-literature-46',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  74.55,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Hoan Kiem Lake',
  'cultural-show---hoan-kiem-lake-47',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  198.72,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Old Quarter',
  'seafood-feast---old-quarter-48',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  180.36,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Ngoc Son Temple',
  'cultural-heritage-walk---ngoc-son-temple-49',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  286.84,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Ha Long Bay',
  'wellness-center---ha-long-bay-50',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  90.47,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Statue of Liberty',
  'bungee-jumping---statue-of-liberty-51',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  297.28,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Ha Long Bay',
  'food-market-tour---ha-long-bay-52',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  129.91,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Temple of Literature',
  'food-market-tour---temple-of-literature-53',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  206.21,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Water Puppet Theater',
  'massage-therapy---water-puppet-theater-54',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  167.9,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Hoan Kiem Lake',
  'market-tour---hoan-kiem-lake-55',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  33.8,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Ngoc Son Temple',
  'wine-tasting---ngoc-son-temple-56',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  44.5,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ngoc Son Temple',
  'wildlife-watching---ngoc-son-temple-57',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  121.19,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Old Quarter',
  'wine-tasting---old-quarter-58',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  228.79,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Hoan Kiem Lake',
  'scuba-diving---hoan-kiem-lake-59',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  282.24,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Water Puppet Theater',
  'village-experience---water-puppet-theater-60',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  84.32,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Hoan Kiem Lake',
  'water-skiing---hoan-kiem-lake-61',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  275.37,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Temple of Literature',
  'wildlife-watching---temple-of-literature-62',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  182.02,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Water Puppet Theater',
  'historical-walking-tour---water-puppet-theater-63',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  258.05,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Statue of Liberty',
  'bar-hopping---statue-of-liberty-64',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  143.8,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Statue of Liberty',
  'scuba-diving---statue-of-liberty-65',
  'An amazing beach & water sports experience at Statue of Liberty.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  71.45,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Street Food Tour - Water Puppet Theater',
  'street-food-tour---water-puppet-theater-66',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  61.22,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Ha Long Bay',
  'night-market---ha-long-bay-67',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  39.3,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Ngoc Son Temple',
  'historical-walking-tour---ngoc-son-temple-68',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  128.07,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Statue of Liberty',
  'yoga-retreat---statue-of-liberty-69',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  230.33,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Ben Thanh Market',
  'mountain-hiking---ben-thanh-market-70',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  142.47,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ben Thanh Market',
  'kayaking---ben-thanh-market-71',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  102.51,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Old Quarter',
  'surfing---old-quarter-72',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  55.37,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Ha Long Bay',
  'waterfall-hiking---ha-long-bay-73',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  92.25,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Ha Long Bay',
  'nightclub---ha-long-bay-74',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  159.67,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Statue of Liberty',
  'ancient-ruins---statue-of-liberty-75',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  176.16,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Temple of Literature',
  'night-market---temple-of-literature-76',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  90.39,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Ngoc Son Temple',
  'live-music---ngoc-son-temple-77',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  30.9,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Statue of Liberty',
  'museum-tour---statue-of-liberty-78',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  266.05,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Ben Thanh Market',
  'karaoke---ben-thanh-market-79',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  294.13,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Hoan Kiem Lake',
  'nightclub---hoan-kiem-lake-80',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  152.19,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Old Quarter',
  'fine-dining---old-quarter-81',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  88.51,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ben Thanh Market',
  'cultural-show---ben-thanh-market-82',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  29.3,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Ben Thanh Market',
  'food-market-tour---ben-thanh-market-83',
  'An amazing food experience at Ben Thanh Market.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  43.3,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Hoan Kiem Lake',
  'ancient-ruins---hoan-kiem-lake-84',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  196.41,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Ben Thanh Market',
  'yoga-retreat---ben-thanh-market-85',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  46.5,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Ben Thanh Market',
  'canyoning---ben-thanh-market-86',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  37.79,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Water Puppet Theater',
  'cuisine-class---water-puppet-theater-87',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  278.4,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Ngoc Son Temple',
  'wine-tasting---ngoc-son-temple-88',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  159.56,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Ben Thanh Market',
  'scuba-diving---ben-thanh-market-89',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  137.81,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Ben Thanh Market',
  'coffee-tour---ben-thanh-market-90',
  'An amazing food experience at Ben Thanh Market.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  79.28,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Hoan Kiem Lake',
  'cooking-class---hoan-kiem-lake-91',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  59.77,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Statue of Liberty',
  'cave-exploration---statue-of-liberty-92',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  133.65,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ha Long Bay',
  'wildlife-watching---ha-long-bay-93',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  256.42,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Hoan Kiem Lake',
  'village-experience---hoan-kiem-lake-94',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  79.99,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Water Puppet Theater',
  'cooking-class---water-puppet-theater-95',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  85.22,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Ha Long Bay',
  'night-market---ha-long-bay-96',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  90.44,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Temple of Literature',
  'live-music---temple-of-literature-97',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  96.71,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Water Puppet Theater',
  'healing-session---water-puppet-theater-98',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  154.39,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Sunset Cruise - Ha Long Bay',
  'sunset-cruise---ha-long-bay-99',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  254.93,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Water Puppet Theater',
  'cave-exploration---water-puppet-theater-100',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  193.55,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Old Quarter',
  'cultural-heritage-walk---old-quarter-101',
  'An amazing culture experience at Old Quarter.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  205.62,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Hoan Kiem Lake',
  'beach-yoga---hoan-kiem-lake-102',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  184.52,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Water Puppet Theater',
  'hot-spring---water-puppet-theater-103',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  240,
  50.23,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Water Puppet Theater',
  'fine-dining---water-puppet-theater-104',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  96.63,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Statue of Liberty',
  'temple-visit---statue-of-liberty-105',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  127.14,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Paragliding - Ben Thanh Market',
  'paragliding---ben-thanh-market-106',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  224.78,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Hoan Kiem Lake',
  'healing-session---hoan-kiem-lake-107',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  231.84,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Water Puppet Theater',
  'market-tour---water-puppet-theater-108',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  137.08,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Ha Long Bay',
  'canyoning---ha-long-bay-109',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  242.29,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Old Quarter',
  'live-music---old-quarter-110',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  234.6,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Hoan Kiem Lake',
  'night-market---hoan-kiem-lake-111',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  252.01,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ben Thanh Market',
  'beach-volleyball---ben-thanh-market-112',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  222.85,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Ha Long Bay',
  'surfing---ha-long-bay-113',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  166.26,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Aromatherapy - Statue of Liberty',
  'aromatherapy---statue-of-liberty-114',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  51.65,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Water Puppet Theater',
  'historical-walking-tour---water-puppet-theater-115',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  198.33,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Ben Thanh Market',
  'wellness-center---ben-thanh-market-116',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  80.78,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ben Thanh Market',
  'hot-spring---ben-thanh-market-117',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  186.91,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Old Quarter',
  'city-lights-tour---old-quarter-118',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  223.17,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Ben Thanh Market',
  'beach-yoga---ben-thanh-market-119',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  211.08,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Temple of Literature',
  'waterfall-hiking---temple-of-literature-120',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  96.57,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Hoan Kiem Lake',
  'food-market-tour---hoan-kiem-lake-121',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  146.22,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Ngoc Son Temple',
  'jungle-trekking---ngoc-son-temple-122',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  293.57,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Water Puppet Theater',
  'beach-yoga---water-puppet-theater-123',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  83.15,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Old Quarter',
  'massage-therapy---old-quarter-124',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  116.53,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ben Thanh Market',
  'kayaking---ben-thanh-market-125',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  197.33,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Temple of Literature',
  'coffee-tour---temple-of-literature-126',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  155.57,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ngoc Son Temple',
  'botanical-garden---ngoc-son-temple-127',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  47.17,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Temple of Literature',
  'night-market---temple-of-literature-128',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  79.15,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Ben Thanh Market',
  'live-music---ben-thanh-market-129',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  104.79,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Ngoc Son Temple',
  'craft-workshop---ngoc-son-temple-130',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  261.14,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Paragliding - Old Quarter',
  'paragliding---old-quarter-131',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  154.97,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Hoan Kiem Lake',
  'historical-walking-tour---hoan-kiem-lake-132',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  219.91,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Hoan Kiem Lake',
  'waterfall-hiking---hoan-kiem-lake-133',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  81.6,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Ben Thanh Market',
  'karaoke---ben-thanh-market-134',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  229.98,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Temple of Literature',
  'yoga-retreat---temple-of-literature-135',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  146.16,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Scenic Photography - Water Puppet Theater',
  'scenic-photography---water-puppet-theater-136',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  244.29,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Temple of Literature',
  'wine-tasting---temple-of-literature-137',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  44.33,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Old Quarter',
  'cuisine-class---old-quarter-138',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  65.6,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Water Puppet Theater',
  'karaoke---water-puppet-theater-139',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  149.68,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Hoan Kiem Lake',
  'surfing---hoan-kiem-lake-140',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  243.36,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Hoan Kiem Lake',
  'cultural-show---hoan-kiem-lake-141',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  32.64,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Hoan Kiem Lake',
  'hot-spring---hoan-kiem-lake-142',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  83.7,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Ha Long Bay',
  'healing-session---ha-long-bay-143',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  208.82,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ben Thanh Market',
  'hot-spring---ben-thanh-market-144',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  258.1,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Ha Long Bay',
  'cooking-class---ha-long-bay-145',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  140.29,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Water Puppet Theater',
  'yoga-retreat---water-puppet-theater-146',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  293.47,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Temple of Literature',
  'healing-session---temple-of-literature-147',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  88.0,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Ngoc Son Temple',
  'beach-yoga---ngoc-son-temple-148',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  270.52,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Ben Thanh Market',
  'craft-workshop---ben-thanh-market-149',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  191.5,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Old Quarter',
  'cultural-show---old-quarter-150',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  64.96,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Water Puppet Theater',
  'city-lights-tour---water-puppet-theater-151',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  214.86,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Old Quarter',
  'water-skiing---old-quarter-152',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  295.99,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Hoan Kiem Lake',
  'craft-workshop---hoan-kiem-lake-153',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  278.54,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Old Quarter',
  'food-market-tour---old-quarter-154',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  279.54,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ha Long Bay',
  'cultural-show---ha-long-bay-155',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  181.18,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Hoan Kiem Lake',
  'market-tour---hoan-kiem-lake-156',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  164.41,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ngoc Son Temple',
  'kayaking---ngoc-son-temple-157',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  34.29,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Ngoc Son Temple',
  'coffee-tour---ngoc-son-temple-158',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  103.16,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Statue of Liberty',
  'temple-visit---statue-of-liberty-159',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  52.78,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ben Thanh Market',
  'botanical-garden---ben-thanh-market-160',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  297.52,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Ben Thanh Market',
  'eco-tourism---ben-thanh-market-161',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  266.45,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Hoan Kiem Lake',
  'wildlife-watching---hoan-kiem-lake-162',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  49.17,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Statue of Liberty',
  'waterfall-hiking---statue-of-liberty-163',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  25.31,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Ha Long Bay',
  'water-skiing---ha-long-bay-164',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  81.7,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Old Quarter',
  'food-market-tour---old-quarter-165',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  40.08,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ben Thanh Market',
  'hot-spring---ben-thanh-market-166',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  186.47,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Old Quarter',
  'scuba-diving---old-quarter-167',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  206.61,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Old Quarter',
  'healing-session---old-quarter-168',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  142.9,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Ha Long Bay',
  'sunrise-view---ha-long-bay-169',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  39.33,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Ha Long Bay',
  'yoga-retreat---ha-long-bay-170',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  240,
  98.01,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Biking - Hoan Kiem Lake',
  'mountain-biking---hoan-kiem-lake-171',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  146.25,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ngoc Son Temple',
  'beach-volleyball---ngoc-son-temple-172',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  27.79,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Statue of Liberty',
  'sunrise-view---statue-of-liberty-173',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  168.45,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-174',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  286.47,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Water Puppet Theater',
  'ancient-ruins---water-puppet-theater-175',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  55.07,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Hoan Kiem Lake',
  'beach-yoga---hoan-kiem-lake-176',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  200.86,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zip Lining - Temple of Literature',
  'zip-lining---temple-of-literature-177',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  136.48,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ngoc Son Temple',
  'botanical-garden---ngoc-son-temple-178',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  221.62,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-179',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  248.11,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Ha Long Bay',
  'scuba-diving---ha-long-bay-180',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  66.79,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Ben Thanh Market',
  'city-lights-tour---ben-thanh-market-181',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  47.02,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Temple of Literature',
  'jungle-trekking---temple-of-literature-182',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  269.99,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Statue of Liberty',
  'kayaking---statue-of-liberty-183',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  244.89,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ngoc Son Temple',
  'cultural-show---ngoc-son-temple-184',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  182.41,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Water Puppet Theater',
  'rock-climbing---water-puppet-theater-185',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  275.82,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Street Food Tour - Hoan Kiem Lake',
  'street-food-tour---hoan-kiem-lake-186',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  216.65,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Sunset Cruise - Ngoc Son Temple',
  'sunset-cruise---ngoc-son-temple-187',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  114.88,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Ngoc Son Temple',
  'night-market---ngoc-son-temple-188',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  195.47,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Old Quarter',
  'canyoning---old-quarter-189',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  42.17,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Water Puppet Theater',
  'karaoke---water-puppet-theater-190',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  203.78,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Ben Thanh Market',
  'mountain-hiking---ben-thanh-market-191',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  162.91,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Ben Thanh Market',
  'village-experience---ben-thanh-market-192',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  135.23,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Snorkeling - Ben Thanh Market',
  'snorkeling---ben-thanh-market-193',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  134.66,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ha Long Bay',
  'wildlife-watching---ha-long-bay-194',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  94.14,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ben Thanh Market',
  'cultural-show---ben-thanh-market-195',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  226.4,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ha Long Bay',
  'hot-spring---ha-long-bay-196',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  254.96,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Old Quarter',
  'market-tour---old-quarter-197',
  'An amazing culture experience at Old Quarter.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  33.72,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Water Puppet Theater',
  'wellness-center---water-puppet-theater-198',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  142.35,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Hoan Kiem Lake',
  'cultural-heritage-walk---hoan-kiem-lake-199',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  155.8,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Water Puppet Theater',
  'bungee-jumping---water-puppet-theater-200',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  167.36,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Old Quarter',
  'temple-visit---old-quarter-201',
  'An amazing culture experience at Old Quarter.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  122.61,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Ngoc Son Temple',
  'canyoning---ngoc-son-temple-202',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  196.15,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Water Puppet Theater',
  'mountain-hiking---water-puppet-theater-203',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  271.34,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Temple of Literature',
  'sunrise-view---temple-of-literature-204',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  89.11,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Temple of Literature',
  'cuisine-class---temple-of-literature-205',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  276.33,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Hoan Kiem Lake',
  'kayaking---hoan-kiem-lake-206',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  177.15,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Hoan Kiem Lake',
  'cultural-heritage-walk---hoan-kiem-lake-207',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  280.06,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Old Quarter',
  'mountain-hiking---old-quarter-208',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  270.95,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Ben Thanh Market',
  'rock-climbing---ben-thanh-market-209',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  199.47,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Ben Thanh Market',
  'historical-walking-tour---ben-thanh-market-210',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  129.23,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Hoan Kiem Lake',
  'botanical-garden---hoan-kiem-lake-211',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  277.07,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ha Long Bay',
  'bungee-jumping---ha-long-bay-212',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  160.26,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Ben Thanh Market',
  'museum-tour---ben-thanh-market-213',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  150.51,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Ben Thanh Market',
  'jungle-trekking---ben-thanh-market-214',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  87.22,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Hoan Kiem Lake',
  'live-music---hoan-kiem-lake-215',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  137.74,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Statue of Liberty',
  'temple-visit---statue-of-liberty-216',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  24.85,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Statue of Liberty',
  'cultural-heritage-walk---statue-of-liberty-217',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  143.92,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Snorkeling - Hoan Kiem Lake',
  'snorkeling---hoan-kiem-lake-218',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  230.08,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-219',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  283.69,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Ben Thanh Market',
  'yoga-retreat---ben-thanh-market-220',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  151.18,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Biking - Hoan Kiem Lake',
  'mountain-biking---hoan-kiem-lake-221',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  278.42,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Ngoc Son Temple',
  'bar-hopping---ngoc-son-temple-222',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  230.32,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Ha Long Bay',
  'eco-tourism---ha-long-bay-223',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  262.01,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ngoc Son Temple',
  'beach-volleyball---ngoc-son-temple-224',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  215.6,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Statue of Liberty',
  'kayaking---statue-of-liberty-225',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  186.95,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Ha Long Bay',
  'cave-exploration---ha-long-bay-226',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  142.61,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Hoan Kiem Lake',
  'trekking---hoan-kiem-lake-227',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  188.52,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Hoan Kiem Lake',
  'cave-exploration---hoan-kiem-lake-228',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  171.51,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Ngoc Son Temple',
  'market-tour---ngoc-son-temple-229',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  133.75,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Water Puppet Theater',
  'yoga-retreat---water-puppet-theater-230',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  227.39,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Water Puppet Theater',
  'temple-visit---water-puppet-theater-231',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  116.14,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Statue of Liberty',
  'kayaking---statue-of-liberty-232',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  70.05,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Temple of Literature',
  'museum-tour---temple-of-literature-233',
  'An amazing culture experience at Temple of Literature.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  48.28,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Temple of Literature',
  'bungee-jumping---temple-of-literature-234',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  200.53,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Hoan Kiem Lake',
  'sunrise-view---hoan-kiem-lake-235',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  124.25,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Ben Thanh Market',
  'massage-therapy---ben-thanh-market-236',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  97.47,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Ngoc Son Temple',
  'temple-visit---ngoc-son-temple-237',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  270.07,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ha Long Bay',
  'botanical-garden---ha-long-bay-238',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  263.24,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Hoan Kiem Lake',
  'wellness-center---hoan-kiem-lake-239',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  42.87,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Ngoc Son Temple',
  'jungle-trekking---ngoc-son-temple-240',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  139.31,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Ha Long Bay',
  'craft-workshop---ha-long-bay-241',
  'An amazing culture experience at Ha Long Bay.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  293.37,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Hoan Kiem Lake',
  'hot-spring---hoan-kiem-lake-242',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  98.09,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Hoan Kiem Lake',
  'scuba-diving---hoan-kiem-lake-243',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  163.87,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'draft'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Ben Thanh Market',
  'surfing---ben-thanh-market-244',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  162.93,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Hoan Kiem Lake',
  'cave-exploration---hoan-kiem-lake-245',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  198.83,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Snorkeling - Ben Thanh Market',
  'snorkeling---ben-thanh-market-246',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  241.33,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Old Quarter',
  'hot-spring---old-quarter-247',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  36.55,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Hoan Kiem Lake',
  'scuba-diving---hoan-kiem-lake-248',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  188.82,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Statue of Liberty',
  'historical-walking-tour---statue-of-liberty-249',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  140.19,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Ben Thanh Market',
  'eco-tourism---ben-thanh-market-250',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  121.84,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Old Quarter',
  'national-park---old-quarter-251',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  199.19,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Temple of Literature',
  'eco-tourism---temple-of-literature-252',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  241.02,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Statue of Liberty',
  'rock-climbing---statue-of-liberty-253',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  278.64,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Statue of Liberty',
  'coffee-tour---statue-of-liberty-254',
  'An amazing food experience at Statue of Liberty.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  220.9,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-255',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  279.92,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Ngoc Son Temple',
  'wine-tasting---ngoc-son-temple-256',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  294.75,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Old Quarter',
  'cooking-class---old-quarter-257',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  98.29,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Water Puppet Theater',
  'jet-ski---water-puppet-theater-258',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  60.21,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Temple of Literature',
  'wildlife-watching---temple-of-literature-259',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  294.99,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Temple of Literature',
  'healing-session---temple-of-literature-260',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  247.84,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Temple of Literature',
  'village-experience---temple-of-literature-261',
  'An amazing culture experience at Temple of Literature.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  96.34,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Water Puppet Theater',
  'karaoke---water-puppet-theater-262',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  99.17,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Spa Treatment - Ben Thanh Market',
  'spa-treatment---ben-thanh-market-263',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  234.66,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Old Quarter',
  'massage-therapy---old-quarter-264',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  248.55,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Old Quarter',
  'wellness-center---old-quarter-265',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  61.54,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Ngoc Son Temple',
  'rock-climbing---ngoc-son-temple-266',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  66.03,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Water Puppet Theater',
  'food-market-tour---water-puppet-theater-267',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  261.73,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Ben Thanh Market',
  'ancient-ruins---ben-thanh-market-268',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  80.21,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Statue of Liberty',
  'live-music---statue-of-liberty-269',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  126.8,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Ben Thanh Market',
  'city-lights-tour---ben-thanh-market-270',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  297.06,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Ha Long Bay',
  'surfing---ha-long-bay-271',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  274.41,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Water Puppet Theater',
  'wine-tasting---water-puppet-theater-272',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  23.54,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Hoan Kiem Lake',
  'sunrise-view---hoan-kiem-lake-273',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  25.73,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Ha Long Bay',
  'yoga-retreat---ha-long-bay-274',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  196.32,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Old Quarter',
  'jet-ski---old-quarter-275',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  215.92,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Hoan Kiem Lake',
  'surfing---hoan-kiem-lake-276',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  214.76,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ha Long Bay',
  'botanical-garden---ha-long-bay-277',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  110.23,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Water Puppet Theater',
  'museum-tour---water-puppet-theater-278',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  99.59,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Water Puppet Theater',
  'live-music---water-puppet-theater-279',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  37.99,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Temple of Literature',
  'village-experience---temple-of-literature-280',
  'An amazing culture experience at Temple of Literature.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  159.27,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Biking - Ngoc Son Temple',
  'mountain-biking---ngoc-son-temple-281',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  153.85,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Temple of Literature',
  'jet-ski---temple-of-literature-282',
  'An amazing beach & water sports experience at Temple of Literature.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  126.59,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Hoan Kiem Lake',
  'seafood-feast---hoan-kiem-lake-283',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  260.27,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Ha Long Bay',
  'beach-yoga---ha-long-bay-284',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  294.94,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Water Puppet Theater',
  'waterfall-hiking---water-puppet-theater-285',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  52.77,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Hoan Kiem Lake',
  'live-music---hoan-kiem-lake-286',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  29.57,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Water Puppet Theater',
  'historical-walking-tour---water-puppet-theater-287',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  169.46,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Ben Thanh Market',
  'canyoning---ben-thanh-market-288',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  137.84,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Ha Long Bay',
  'cuisine-class---ha-long-bay-289',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  130.57,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Old Quarter',
  'seafood-feast---old-quarter-290',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  141.54,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Statue of Liberty',
  'craft-workshop---statue-of-liberty-291',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  63.0,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Temple of Literature',
  'live-music---temple-of-literature-292',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  252.8,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Hoan Kiem Lake',
  'ancient-ruins---hoan-kiem-lake-293',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  130.83,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ha Long Bay',
  'hot-spring---ha-long-bay-294',
  'An amazing wellness & spa experience at Ha Long Bay.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  49.3,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Ben Thanh Market',
  'temple-visit---ben-thanh-market-295',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  45.97,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Sunset Cruise - Hoan Kiem Lake',
  'sunset-cruise---hoan-kiem-lake-296',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  190.97,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Water Puppet Theater',
  'night-market---water-puppet-theater-297',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  249.59,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Old Quarter',
  'waterfall-hiking---old-quarter-298',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  266.92,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Hoan Kiem Lake',
  'market-tour---hoan-kiem-lake-299',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  172.15,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Ha Long Bay',
  'craft-workshop---ha-long-bay-300',
  'An amazing culture experience at Ha Long Bay.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  154.65,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Statue of Liberty',
  'temple-visit---statue-of-liberty-301',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  129.56,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Water Puppet Theater',
  'coffee-tour---water-puppet-theater-302',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  208.99,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Water Puppet Theater',
  'city-lights-tour---water-puppet-theater-303',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  227.57,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Hoan Kiem Lake',
  'jet-ski---hoan-kiem-lake-304',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  275.18,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Hoan Kiem Lake',
  'sunrise-view---hoan-kiem-lake-305',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  39.63,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Ha Long Bay',
  'beach-volleyball---ha-long-bay-306',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  129.25,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zip Lining - Old Quarter',
  'zip-lining---old-quarter-307',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  147.22,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Water Puppet Theater',
  'waterfall-hiking---water-puppet-theater-308',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  135.34,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Water Puppet Theater',
  'surfing---water-puppet-theater-309',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  107.71,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Temple of Literature',
  'trekking---temple-of-literature-310',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  206.04,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Old Quarter',
  'botanical-garden---old-quarter-311',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  132.89,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ngoc Son Temple',
  'kayaking---ngoc-son-temple-312',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  73.44,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Ha Long Bay',
  'nightclub---ha-long-bay-313',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  300,
  39.02,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Water Puppet Theater',
  'kayaking---water-puppet-theater-314',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  265.17,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ngoc Son Temple',
  'kayaking---ngoc-son-temple-315',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  119.96,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Statue of Liberty',
  'massage-therapy---statue-of-liberty-316',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  76.7,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Water Puppet Theater',
  'jungle-trekking---water-puppet-theater-317',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  244.7,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Water Puppet Theater',
  'surfing---water-puppet-theater-318',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  162.92,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Temple of Literature',
  'wildlife-watching---temple-of-literature-319',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  79.81,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Statue of Liberty',
  'water-skiing---statue-of-liberty-320',
  'An amazing beach & water sports experience at Statue of Liberty.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  191.05,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Ngoc Son Temple',
  'bar-hopping---ngoc-son-temple-321',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  67.46,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Scenic Photography - Statue of Liberty',
  'scenic-photography---statue-of-liberty-322',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  104.17,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Hoan Kiem Lake',
  'national-park---hoan-kiem-lake-323',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  230.85,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Temple of Literature',
  'night-market---temple-of-literature-324',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  55.44,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Hoan Kiem Lake',
  'massage-therapy---hoan-kiem-lake-325',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  210.27,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Ben Thanh Market',
  'cave-exploration---ben-thanh-market-326',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  256.89,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Ngoc Son Temple',
  'night-market---ngoc-son-temple-327',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  183.25,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ben Thanh Market',
  'cultural-show---ben-thanh-market-328',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  109.06,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Old Quarter',
  'cuisine-class---old-quarter-329',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  185.79,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Ngoc Son Temple',
  'historical-walking-tour---ngoc-son-temple-330',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  209.54,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Temple of Literature',
  'cooking-class---temple-of-literature-331',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  44.28,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Water Puppet Theater',
  'museum-tour---water-puppet-theater-332',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  227.89,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Old Quarter',
  'food-market-tour---old-quarter-333',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  212.51,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Ngoc Son Temple',
  'botanical-garden---ngoc-son-temple-334',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  284.44,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Water Puppet Theater',
  'cuisine-class---water-puppet-theater-335',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  297.42,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Old Quarter',
  'kayaking---old-quarter-336',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  107.79,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Ngoc Son Temple',
  'village-experience---ngoc-son-temple-337',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  197.8,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Water Puppet Theater',
  'rock-climbing---water-puppet-theater-338',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  207.07,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ngoc Son Temple',
  'wildlife-watching---ngoc-son-temple-339',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  58.22,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zip Lining - Temple of Literature',
  'zip-lining---temple-of-literature-340',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  272.16,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Temple of Literature',
  'seafood-feast---temple-of-literature-341',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  111.43,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Statue of Liberty',
  'cultural-show---statue-of-liberty-342',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  191.81,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ngoc Son Temple',
  'bungee-jumping---ngoc-son-temple-343',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  128.32,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Temple of Literature',
  'seafood-feast---temple-of-literature-344',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  243.32,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Ngoc Son Temple',
  'market-tour---ngoc-son-temple-345',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  202.52,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Statue of Liberty',
  'waterfall-hiking---statue-of-liberty-346',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  139.76,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Temple of Literature',
  'nightclub---temple-of-literature-347',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  151.59,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Old Quarter',
  'fine-dining---old-quarter-348',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  215.28,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Temple of Literature',
  'waterfall-hiking---temple-of-literature-349',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  216.57,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Hoan Kiem Lake',
  'kayaking---hoan-kiem-lake-350',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  257.18,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Water Puppet Theater',
  'mountain-hiking---water-puppet-theater-351',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  265.23,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Hoan Kiem Lake',
  'eco-tourism---hoan-kiem-lake-352',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  116.12,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ben Thanh Market',
  'bungee-jumping---ben-thanh-market-353',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  240.05,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Water Puppet Theater',
  'karaoke---water-puppet-theater-354',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  23.39,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Ben Thanh Market',
  'hot-spring---ben-thanh-market-355',
  'An amazing wellness & spa experience at Ben Thanh Market.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  70.04,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Hoan Kiem Lake',
  'wildlife-watching---hoan-kiem-lake-356',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  274.28,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Ngoc Son Temple',
  'village-experience---ngoc-son-temple-357',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  67.82,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Ngoc Son Temple',
  'sunrise-view---ngoc-son-temple-358',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  110.71,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Ngoc Son Temple',
  'jet-ski---ngoc-son-temple-359',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  300,
  265.89,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Snorkeling - Water Puppet Theater',
  'snorkeling---water-puppet-theater-360',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  289.02,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Hoan Kiem Lake',
  'cultural-heritage-walk---hoan-kiem-lake-361',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  283.23,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Ha Long Bay',
  'national-park---ha-long-bay-362',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  187.13,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Water Puppet Theater',
  'village-experience---water-puppet-theater-363',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  68.4,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Water Puppet Theater',
  'craft-workshop---water-puppet-theater-364',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  106.16,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Hoan Kiem Lake',
  'cultural-heritage-walk---hoan-kiem-lake-365',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  59.6,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Statue of Liberty',
  'cultural-show---statue-of-liberty-366',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  144.96,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Paragliding - Ben Thanh Market',
  'paragliding---ben-thanh-market-367',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  184.51,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Water Puppet Theater',
  'village-experience---water-puppet-theater-368',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  199.29,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Scuba Diving - Hoan Kiem Lake',
  'scuba-diving---hoan-kiem-lake-369',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  271.76,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Aromatherapy - Hoan Kiem Lake',
  'aromatherapy---hoan-kiem-lake-370',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  253.69,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Ha Long Bay',
  'wine-tasting---ha-long-bay-371',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  20.76,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Statue of Liberty',
  'hot-spring---statue-of-liberty-372',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  99.29,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ben Thanh Market',
  'cultural-show---ben-thanh-market-373',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  151.11,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Hoan Kiem Lake',
  'historical-walking-tour---hoan-kiem-lake-374',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  216.69,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Wine Tasting - Hoan Kiem Lake',
  'wine-tasting---hoan-kiem-lake-375',
  'An amazing food experience at Hoan Kiem Lake.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  114.34,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Craft Workshop - Hoan Kiem Lake',
  'craft-workshop---hoan-kiem-lake-376',
  'An amazing culture experience at Hoan Kiem Lake.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  205.13,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Old Quarter',
  'bar-hopping---old-quarter-377',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  58.35,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Hoan Kiem Lake',
  'rock-climbing---hoan-kiem-lake-378',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  130.03,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Water Puppet Theater',
  'wellness-center---water-puppet-theater-379',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  39.92,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Temple of Literature',
  'historical-walking-tour---temple-of-literature-380',
  'An amazing culture experience at Temple of Literature.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  218.27,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Ha Long Bay',
  'bar-hopping---ha-long-bay-381',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  109.7,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Ben Thanh Market',
  'village-experience---ben-thanh-market-382',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  252.06,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Old Quarter',
  'jungle-trekking---old-quarter-383',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  137.95,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Ngoc Son Temple',
  'nightclub---ngoc-son-temple-384',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  183.73,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Hoan Kiem Lake',
  'massage-therapy---hoan-kiem-lake-385',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  300,
  82.67,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Old Quarter',
  'bungee-jumping---old-quarter-386',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  202.7,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Old Quarter',
  'hot-spring---old-quarter-387',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  240,
  294.35,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Ancient Ruins - Water Puppet Theater',
  'ancient-ruins---water-puppet-theater-388',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  52.15,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Temple of Literature',
  'jungle-trekking---temple-of-literature-389',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  90.25,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Temple of Literature',
  'canyoning---temple-of-literature-390',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  170.25,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Ngoc Son Temple',
  'cave-exploration---ngoc-son-temple-391',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  252.89,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Ngoc Son Temple',
  'wellness-center---ngoc-son-temple-392',
  'An amazing wellness & spa experience at Ngoc Son Temple.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  240,
  212.91,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar Hopping - Hoan Kiem Lake',
  'bar-hopping---hoan-kiem-lake-393',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  145.87,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Statue of Liberty',
  'seafood-feast---statue-of-liberty-394',
  'An amazing food experience at Statue of Liberty.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  200.67,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Statue of Liberty',
  'cultural-show---statue-of-liberty-395',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  162.59,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Old Quarter',
  'karaoke---old-quarter-396',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  221.71,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Old Quarter',
  'jungle-trekking---old-quarter-397',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  48.56,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Paragliding - Water Puppet Theater',
  'paragliding---water-puppet-theater-398',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  169.83,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Old Quarter',
  'eco-tourism---old-quarter-399',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  41.5,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Old Quarter',
  'fine-dining---old-quarter-400',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  175.98,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Statue of Liberty',
  'museum-tour---statue-of-liberty-401',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  64.02,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Botanical Garden - Statue of Liberty',
  'botanical-garden---statue-of-liberty-402',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  194.42,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Ha Long Bay',
  'bungee-jumping---ha-long-bay-403',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  106.49,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Spa Treatment - Water Puppet Theater',
  'spa-treatment---water-puppet-theater-404',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  89.03,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage Therapy - Statue of Liberty',
  'massage-therapy---statue-of-liberty-405',
  'An amazing wellness & spa experience at Statue of Liberty.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  174.29,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Ha Long Bay',
  'cultural-heritage-walk---ha-long-bay-406',
  'An amazing culture experience at Ha Long Bay.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  57.71,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Ben Thanh Market',
  'kayaking---ben-thanh-market-407',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  156.54,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Hoan Kiem Lake',
  'yoga-retreat---hoan-kiem-lake-408',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  180,
  272.56,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Temple of Literature',
  'fine-dining---temple-of-literature-409',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  219.88,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Hoan Kiem Lake',
  'jungle-trekking---hoan-kiem-lake-410',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  127.31,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Old Quarter',
  'national-park---old-quarter-411',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  162.23,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Hoan Kiem Lake',
  'wildlife-watching---hoan-kiem-lake-412',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  480,
  266.03,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Ha Long Bay',
  'beach-yoga---ha-long-bay-413',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  265.86,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Scenic Photography - Ngoc Son Temple',
  'scenic-photography---ngoc-son-temple-414',
  'An amazing nature experience at Ngoc Son Temple.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  276.92,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Hoan Kiem Lake',
  'kayaking---hoan-kiem-lake-415',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  179.78,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga Retreat - Water Puppet Theater',
  'yoga-retreat---water-puppet-theater-416',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  178.33,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Snorkeling - Water Puppet Theater',
  'snorkeling---water-puppet-theater-417',
  'An amazing beach & water sports experience at Water Puppet Theater.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  167.5,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Aromatherapy - Ngoc Son Temple',
  'aromatherapy---ngoc-son-temple-418',
  'An amazing wellness & spa experience at Ngoc Son Temple.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  122.36,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Old Quarter',
  'live-music---old-quarter-419',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  218.0,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Old Quarter',
  'wellness-center---old-quarter-420',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  117.65,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Ha Long Bay',
  'cooking-class---ha-long-bay-421',
  'An amazing food experience at Ha Long Bay.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  189.52,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Hoan Kiem Lake',
  'night-market---hoan-kiem-lake-422',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  239.62,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Hoan Kiem Lake',
  'healing-session---hoan-kiem-lake-423',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  120,
  170.36,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Cave Exploration - Water Puppet Theater',
  'cave-exploration---water-puppet-theater-424',
  'An amazing adventure experience at Water Puppet Theater.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  300,
  107.26,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Old Quarter',
  'healing-session---old-quarter-425',
  'An amazing wellness & spa experience at Old Quarter.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  229.86,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Bungee Jumping - Old Quarter',
  'bungee-jumping---old-quarter-426',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  72.82,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Ben Thanh Market',
  'wildlife-watching---ben-thanh-market-427',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  32.71,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Biking - Old Quarter',
  'mountain-biking---old-quarter-428',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  170.96,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Ngoc Son Temple',
  'nightclub---ngoc-son-temple-429',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  152.92,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Ngoc Son Temple',
  'surfing---ngoc-son-temple-430',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  64.08,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Statue of Liberty',
  'national-park---statue-of-liberty-431',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  113.85,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Statue of Liberty',
  'waterfall-hiking---statue-of-liberty-432',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  119.38,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Statue of Liberty',
  'mountain-hiking---statue-of-liberty-433',
  'An amazing adventure experience at Statue of Liberty.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  23.44,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Ngoc Son Temple',
  'jet-ski---ngoc-son-temple-434',
  'An amazing beach & water sports experience at Ngoc Son Temple.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  161.57,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Ben Thanh Market',
  'seafood-feast---ben-thanh-market-435',
  'An amazing food experience at Ben Thanh Market.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  136.64,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Biking - Ngoc Son Temple',
  'mountain-biking---ngoc-son-temple-436',
  'An amazing adventure experience at Ngoc Son Temple.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  60,
  77.97,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Ngoc Son Temple',
  'fine-dining---ngoc-son-temple-437',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  238.09,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Kayaking - Temple of Literature',
  'kayaking---temple-of-literature-438',
  'An amazing adventure experience at Temple of Literature.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  31.96,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Rock Climbing - Ha Long Bay',
  'rock-climbing---ha-long-bay-439',
  'An amazing adventure experience at Ha Long Bay.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  180,
  146.44,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Statue of Liberty',
  'city-lights-tour---statue-of-liberty-440',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  255.1,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nightclub - Water Puppet Theater',
  'nightclub---water-puppet-theater-441',
  'An amazing nightlife & entertainment experience at Water Puppet Theater.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  158.96,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Ha Long Bay',
  'jet-ski---ha-long-bay-442',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  246.43,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Old Quarter',
  'water-skiing---old-quarter-443',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  240,
  144.87,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Market Tour - Water Puppet Theater',
  'market-tour---water-puppet-theater-444',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  267.97,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Old Quarter',
  'night-market---old-quarter-445',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  67.53,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Ha Long Bay',
  'cultural-show---ha-long-bay-446',
  'An amazing nightlife & entertainment experience at Ha Long Bay.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  270.23,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Ngoc Son Temple',
  'night-market---ngoc-son-temple-447',
  'An amazing nightlife & entertainment experience at Ngoc Son Temple.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  216.74,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Old Quarter',
  'cultural-show---old-quarter-448',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  91.67,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Statue of Liberty',
  'national-park---statue-of-liberty-449',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  159.98,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Wellness Center - Hoan Kiem Lake',
  'wellness-center---hoan-kiem-lake-450',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  299.63,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cooking Class - Water Puppet Theater',
  'cooking-class---water-puppet-theater-451',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  240,
  187.29,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Old Quarter',
  'mountain-hiking---old-quarter-452',
  'An amazing adventure experience at Old Quarter.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  82.58,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Temple of Literature',
  'hot-spring---temple-of-literature-453',
  'An amazing wellness & spa experience at Temple of Literature.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  240,
  275.53,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Water Puppet Theater',
  'village-experience---water-puppet-theater-454',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  480,
  209.68,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Hoan Kiem Lake',
  'jet-ski---hoan-kiem-lake-455',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  51.58,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Ngoc Son Temple',
  'seafood-feast---ngoc-son-temple-456',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  30.34,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Cuisine Class - Temple of Literature',
  'cuisine-class---temple-of-literature-457',
  'An amazing food experience at Temple of Literature.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  158.23,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Hot Spring - Hoan Kiem Lake',
  'hot-spring---hoan-kiem-lake-458',
  'An amazing wellness & spa experience at Hoan Kiem Lake.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  60,
  143.15,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Ben Thanh Market',
  'trekking---ben-thanh-market-459',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  223.81,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Hoan Kiem Lake',
  'surfing---hoan-kiem-lake-460',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  120,
  112.78,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet Ski - Hoan Kiem Lake',
  'jet-ski---hoan-kiem-lake-461',
  'An amazing beach & water sports experience at Hoan Kiem Lake.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  80.67,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Coffee Tour - Old Quarter',
  'coffee-tour---old-quarter-462',
  'An amazing food experience at Old Quarter.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  300,
  44.74,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Statue of Liberty',
  'city-lights-tour---statue-of-liberty-463',
  'An amazing nightlife & entertainment experience at Statue of Liberty.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  60,
  257.52,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Yoga - Ha Long Bay',
  'beach-yoga---ha-long-bay-464',
  'An amazing beach & water sports experience at Ha Long Bay.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  175.05,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Old Quarter',
  'wildlife-watching---old-quarter-465',
  'An amazing nature experience at Old Quarter.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  30.06,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'City Lights Tour - Temple of Literature',
  'city-lights-tour---temple-of-literature-466',
  'An amazing nightlife & entertainment experience at Temple of Literature.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  240,
  115.51,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Ben Thanh Market',
  'national-park---ben-thanh-market-467',
  'An amazing nature experience at Ben Thanh Market.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  93.81,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Beach Volleyball - Old Quarter',
  'beach-volleyball---old-quarter-468',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  243.39,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Heritage Walk - Ngoc Son Temple',
  'cultural-heritage-walk---ngoc-son-temple-469',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  206.98,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Sunrise View - Water Puppet Theater',
  'sunrise-view---water-puppet-theater-470',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  243.41,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Temple Visit - Old Quarter',
  'temple-visit---old-quarter-471',
  'An amazing culture experience at Old Quarter.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  48.66,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Eco-Tourism - Water Puppet Theater',
  'eco-tourism---water-puppet-theater-472',
  'An amazing nature experience at Water Puppet Theater.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  180,
  288.47,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Sunset Cruise - Old Quarter',
  'sunset-cruise---old-quarter-473',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  480,
  189.42,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Ben Thanh Market',
  'historical-walking-tour---ben-thanh-market-474',
  'An amazing culture experience at Ben Thanh Market.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  255.48,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Old Quarter',
  'surfing---old-quarter-475',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  55.4,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Museum Tour - Old Quarter',
  'museum-tour---old-quarter-476',
  'An amazing culture experience at Old Quarter.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  60,
  57.78,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Cultural Show - Hoan Kiem Lake',
  'cultural-show---hoan-kiem-lake-477',
  'An amazing nightlife & entertainment experience at Hoan Kiem Lake.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  180,
  246.54,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'National Park - Statue of Liberty',
  'national-park---statue-of-liberty-478',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  60,
  298.19,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Food Market Tour - Ngoc Son Temple',
  'food-market-tour---ngoc-son-temple-479',
  'An amazing food experience at Ngoc Son Temple.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  480,
  84.94,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Ngoc Son Temple',
  'historical-walking-tour---ngoc-son-temple-480',
  'An amazing culture experience at Ngoc Son Temple.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  180,
  134.75,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Wildlife Watching - Hoan Kiem Lake',
  'wildlife-watching---hoan-kiem-lake-481',
  'An amazing nature experience at Hoan Kiem Lake.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  131.91,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Paragliding - Ben Thanh Market',
  'paragliding---ben-thanh-market-482',
  'An amazing adventure experience at Ben Thanh Market.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  240,
  265.83,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Healing Session - Water Puppet Theater',
  'healing-session---water-puppet-theater-483',
  'An amazing wellness & spa experience at Water Puppet Theater.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  197.95,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Ha Long Bay',
  'village-experience---ha-long-bay-484',
  'An amazing culture experience at Ha Long Bay.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  240,
  192.66,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Ben Thanh Market',
  'seafood-feast---ben-thanh-market-485',
  'An amazing food experience at Ben Thanh Market.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  60,
  282.94,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Statue of Liberty',
  'waterfall-hiking---statue-of-liberty-486',
  'An amazing nature experience at Statue of Liberty.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  78.17,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Night Market - Old Quarter',
  'night-market---old-quarter-487',
  'An amazing nightlife & entertainment experience at Old Quarter.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  480,
  261.2,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Spa Treatment - Ngoc Son Temple',
  'spa-treatment---ngoc-son-temple-488',
  'An amazing wellness & spa experience at Ngoc Son Temple.',
  '["Experience wellness & spa", "Professional guide", "Small group size"]'::jsonb,
  480,
  149.66,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Mountain Hiking - Hoan Kiem Lake',
  'mountain-hiking---hoan-kiem-lake-489',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  120,
  272.85,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Hoan Kiem Lake',
  'canyoning---hoan-kiem-lake-490',
  'An amazing adventure experience at Hoan Kiem Lake.',
  '["Experience adventure", "Professional guide", "Small group size"]'::jsonb,
  480,
  58.52,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Historical Walking Tour - Statue of Liberty',
  'historical-walking-tour---statue-of-liberty-491',
  'An amazing culture experience at Statue of Liberty.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  300,
  67.08,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Village Experience - Water Puppet Theater',
  'village-experience---water-puppet-theater-492',
  'An amazing culture experience at Water Puppet Theater.',
  '["Experience culture", "Professional guide", "Small group size"]'::jsonb,
  120,
  126.83,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Water Skiing - Ben Thanh Market',
  'water-skiing---ben-thanh-market-493',
  'An amazing beach & water sports experience at Ben Thanh Market.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  180,
  217.43,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Seafood Feast - Water Puppet Theater',
  'seafood-feast---water-puppet-theater-494',
  'An amazing food experience at Water Puppet Theater.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  120,
  133.22,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Jungle Trekking - Ha Long Bay',
  'jungle-trekking---ha-long-bay-495',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  300,
  187.88,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine Dining - Statue of Liberty',
  'fine-dining---statue-of-liberty-496',
  'An amazing food experience at Statue of Liberty.',
  '["Experience food", "Professional guide", "Small group size"]'::jsonb,
  180,
  274.82,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Surfing - Old Quarter',
  'surfing---old-quarter-497',
  'An amazing beach & water sports experience at Old Quarter.',
  '["Experience beach & water sports", "Professional guide", "Small group size"]'::jsonb,
  60,
  201.94,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Temple of Literature',
  'waterfall-hiking---temple-of-literature-498',
  'An amazing nature experience at Temple of Literature.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  120,
  77.15,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Live Music - Ben Thanh Market',
  'live-music---ben-thanh-market-499',
  'An amazing nightlife & entertainment experience at Ben Thanh Market.',
  '["Experience nightlife & entertainment", "Professional guide", "Small group size"]'::jsonb,
  120,
  269.08,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'draft'::"ActivityStatus",
  true,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "featured", "created_at", "updated_at"
)
SELECT 
  s.id,
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Waterfall Hiking - Ha Long Bay',
  'waterfall-hiking---ha-long-bay-500',
  'An amazing nature experience at Ha Long Bay.',
  '["Experience nature", "Professional guide", "Small group size"]'::jsonb,
  240,
  213.8,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  false,
  NOW(),
  NOW()
FROM "suppliers" s
ORDER BY RANDOM()
LIMIT 1
ON CONFLICT (slug) DO NOTHING;



-- =====================================================
-- PART 4: ACTIVITY SCHEDULES (1500 schedules)
-- =====================================================

-- Generate schedules for all activities
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



-- =====================================================
-- PART 5: BOOKINGS (3000 bookings)
-- =====================================================

-- Generate bookings using PL/pgSQL for better performance
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
      IF booking_counter > 3000 THEN
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
    
    IF booking_counter > 3000 THEN
      EXIT;
    END IF;
  END LOOP;
END $$;



-- =====================================================
-- PART 6: REVIEWS (RATINGS) (2500 reviews)
-- =====================================================

-- Generate reviews from completed/confirmed bookings
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
    WHERE b.status IN ('completed', 'confirmed')
      AND NOT EXISTS (SELECT 1 FROM "reviews" r WHERE r.booking_id = b.id)
    ORDER BY RANDOM()
    LIMIT 2500
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



-- =====================================================
-- COMPLETE! Check your data:
-- SELECT COUNT(*) FROM users;
-- SELECT COUNT(*) FROM activities;
-- SELECT COUNT(*) FROM bookings;
-- SELECT COUNT(*) FROM reviews;
-- =====================================================
