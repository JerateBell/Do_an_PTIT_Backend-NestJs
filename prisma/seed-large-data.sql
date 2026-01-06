-- =====================================================
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
-- =====================================================

-- =====================================================
-- PHẦN 1: USERS (100 khách hàng, 15 nhà cung cấp, 5 admin)
-- =====================================================

-- Khách hàng
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer001@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Patricia', 'Gutierrez', '+84 901234001', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer002@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Perez', '+84 901234002', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer003@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sarah', 'Murphy', '+84 901234003', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer004@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'White', '+84 901234004', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer005@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Raymond', 'Rodriguez', '+84 901234005', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer006@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Nguyen', '+84 901234006', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer007@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ronald', 'Jones', '+84 901234007', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer008@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jennifer', 'Mendoza', '+84 901234008', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer009@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Collins', '+84 901234009', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer010@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Castillo', '+84 901234010', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer011@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Amy', 'Carter', '+84 901234011', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer012@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Hughes', '+84 901234012', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer013@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Anthony', 'Ramos', '+84 901234013', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer014@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Lisa', 'Hall', '+84 901234014', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer015@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kathleen', 'Phillips', '+84 901234015', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer016@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Laura', 'Ortiz', '+84 901234016', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer017@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Nicholas', 'Collins', '+84 901234017', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer018@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Elizabeth', 'Peterson', '+84 901234018', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer019@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Flores', '+84 901234019', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer020@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ashley', 'Nelson', '+84 901234020', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer021@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Margaret', 'Johnson', '+84 901234021', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer022@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jason', 'Rivera', '+84 901234022', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer023@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Betty', 'Lopez', '+84 901234023', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer024@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brandon', 'Bailey', '+84 901234024', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer025@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Donald', 'Ramos', '+84 901234025', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer026@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Daniel', 'Diaz', '+84 901234026', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer027@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Gray', '+84 901234027', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer028@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Carol', 'King', '+84 901234028', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer029@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Robert', 'Jones', '+84 901234029', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer030@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephen', 'Lewis', '+84 901234030', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer031@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'William', 'Thompson', '+84 901234031', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer032@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kimberly', 'Scott', '+84 901234032', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer033@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Matthew', 'Hughes', '+84 901234033', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer034@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Matthew', 'Moore', '+84 901234034', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer035@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Thomas', '+84 901234035', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer036@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Turner', '+84 901234036', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer037@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Samuel', 'Myers', '+84 901234037', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer038@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Frank', 'Reed', '+84 901234038', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer039@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Michelle', 'Moore', '+84 901234039', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer040@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brian', 'Patel', '+84 901234040', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer041@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Thompson', '+84 901234041', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer042@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Elizabeth', 'Ross', '+84 901234042', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer043@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Eric', 'Lewis', '+84 901234043', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer044@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Carol', 'White', '+84 901234044', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer045@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Allen', '+84 901234045', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer046@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'John', 'Carter', '+84 901234046', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer047@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'John', 'Ross', '+84 901234047', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer048@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kimberly', 'Patel', '+84 901234048', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer049@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Amanda', 'Parker', '+84 901234049', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer050@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'Hughes', '+84 901234050', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer051@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Kim', '+84 901234051', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer052@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ronald', 'Walker', '+84 901234052', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer053@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Harris', '+84 901234053', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer054@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ryan', 'Jackson', '+84 901234054', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer055@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Frank', 'Taylor', '+84 901234055', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer056@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Larry', 'Rivera', '+84 901234056', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer057@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kimberly', 'Collins', '+84 901234057', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer058@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kenneth', 'Murphy', '+84 901234058', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer059@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Rebecca', 'Hernandez', '+84 901234059', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer060@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Nicholas', 'Edwards', '+84 901234060', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer061@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Dorothy', 'Williams', '+84 901234061', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer062@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Frank', 'Patel', '+84 901234062', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer063@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sandra', 'Howard', '+84 901234063', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer064@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Laura', 'Jackson', '+84 901234064', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer065@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Brooks', '+84 901234065', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer066@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Scott', 'Garcia', '+84 901234066', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer067@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Christine', 'Reed', '+84 901234067', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer068@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'Alvarez', '+84 901234068', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer069@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jacob', 'Carter', '+84 901234069', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer070@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Gray', '+84 901234070', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer071@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Brian', 'Mitchell', '+84 901234071', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer072@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jessica', 'Ramos', '+84 901234072', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer073@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Andrew', 'Parker', '+84 901234073', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer074@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Nicole', 'Thompson', '+84 901234074', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer075@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephanie', 'Morgan', '+84 901234075', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer076@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jonathan', 'White', '+84 901234076', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer077@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sarah', 'Williams', '+84 901234077', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer078@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Christopher', 'Robinson', '+84 901234078', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer079@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ashley', 'Smith', '+84 901234079', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer080@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Anderson', '+84 901234080', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer081@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Melissa', 'White', '+84 901234081', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer082@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'John', 'Moore', '+84 901234082', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer083@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Dorothy', 'Brooks', '+84 901234083', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer084@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Timothy', 'Wood', '+84 901234084', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer085@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Amanda', 'Allen', '+84 901234085', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer086@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Michelle', 'Lopez', '+84 901234086', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer087@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Gary', 'Reyes', '+84 901234087', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer088@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Cynthia', 'Gutierrez', '+84 901234088', 'customer', 'deleted', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer089@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ashley', 'Moore', '+84 901234089', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer090@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Lee', '+84 901234090', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer091@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Paul', 'White', '+84 901234091', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer092@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Stephen', 'Cook', '+84 901234092', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer093@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kathleen', 'Hernandez', '+84 901234093', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer094@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Dorothy', 'Cruz', '+84 901234094', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer095@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Michael', 'Thomas', '+84 901234095', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer096@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Sharon', 'Williams', '+84 901234096', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer097@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ryan', 'Lee', '+84 901234097', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer098@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Matthew', 'White', '+84 901234098', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer099@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Watson', '+84 901234099', 'customer', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('customer100@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jonathan', 'Carter', '+84 901234100', 'customer', 'active', NOW(), NOW());

-- Nhà cung cấp
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier01@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Ashley', 'Mendoza', '+84 902234001', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier02@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jennifer', 'Parker', '+84 902234002', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier03@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Kevin', 'Stewart', '+84 902234003', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier04@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Mark', 'Smith', '+84 902234004', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier05@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Scott', 'Robinson', '+84 902234005', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier06@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'David', 'Collins', '+84 902234006', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier07@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Larry', 'Bennett', '+84 902234007', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier08@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jessica', 'Clark', '+84 902234008', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier09@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Emily', 'Howard', '+84 902234009', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier10@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Raymond', 'Castillo', '+84 902234010', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier11@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Karen', 'Kelly', '+84 902234011', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier12@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Laura', 'Castillo', '+84 902234012', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier13@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jacob', 'Sanders', '+84 902234013', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier14@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Edward', 'Parker', '+84 902234014', 'supplier', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('supplier15@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'George', 'Ward', '+84 902234015', 'supplier', 'active', NOW(), NOW());

-- Admin
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin01@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Justin', 'Garcia', '+84 903234001', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin02@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Cynthia', 'Murphy', '+84 903234002', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin03@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Anna', 'Parker', '+84 903234003', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin04@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Deborah', 'Brooks', '+84 903234004', 'admin', 'active', NOW(), NOW());
INSERT INTO "users" ("email", "password_hash", "first_name", "last_name", "phone", "role", "status", "created_at", "updated_at") VALUES
('admin05@example.com', '$2b$10$rOzJ5X5V5qN5qN5qN5qN5uO1qN5qN5qN5qN5qN5qN5qN5qN5qN5q', 'Jason', 'Cruz', '+84 903234005', 'admin', 'active', NOW(), NOW());


-- =====================================================
-- PHẦN 2: SUPPLIERS (15 nhà cung cấp)
-- =====================================================

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Blue Sky Travel Agency', 'contact@blueskytravelagency.com', '+84 123456001', 'Hanoi, Vietnam', 19.14, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier01@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Explore Vietnam Travel', 'contact@explorevietnamtravel.com', '+84 123456002', 'Hanoi, Vietnam', 16.32, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier02@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Luxury Travel Experience', 'contact@luxurytravelexperience.com', '+84 123456003', 'Hanoi, Vietnam', 11.59, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier03@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Beach Paradise Travel', 'contact@beachparadisetravel.com', '+84 123456004', 'Hanoi, Vietnam', 15.0, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier04@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Mountain View Tours', 'contact@mountainviewtours.com', '+84 123456005', 'Hanoi, Vietnam', 15.06, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier05@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Golden Gate Adventures', 'contact@goldengateadventures.com', '+84 123456006', 'Hanoi, Vietnam', 13.7, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier06@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Beach Paradise Travel', 'contact@beachparadisetravel.com', '+84 123456007', 'Hanoi, Vietnam', 15.22, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier07@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Adventure Tours Co.', 'contact@adventuretoursco.com', '+84 123456008', 'Hanoi, Vietnam', 11.16, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier08@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Adventure Tours Co.', 'contact@adventuretoursco.com', '+84 123456009', 'Hanoi, Vietnam', 15.79, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier09@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Luxury Travel Experience', 'contact@luxurytravelexperience.com', '+84 123456010', 'Hanoi, Vietnam', 11.55, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier10@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Beach Paradise Travel', 'contact@beachparadisetravel.com', '+84 123456011', 'Hanoi, Vietnam', 18.54, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier11@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Golden Gate Adventures', 'contact@goldengateadventures.com', '+84 123456012', 'Hanoi, Vietnam', 18.87, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier12@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Ocean Breeze Adventures', 'contact@oceanbreezeadventures.com', '+84 123456013', 'Hanoi, Vietnam', 16.8, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier13@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Mystic Journey Tours', 'contact@mysticjourneytours.com', '+84 123456014', 'Hanoi, Vietnam', 14.89, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier14@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);

INSERT INTO "suppliers" ("company_name", "business_email", "phone", "address", "commission_rate", "user_id", "created_at", "updated_at")
SELECT 'Beach Paradise Travel', 'contact@beachparadisetravel.com', '+84 123456015', 'Hanoi, Vietnam', 10.68, u.id, NOW(), NOW()
FROM "users" u
WHERE u.email = 'supplier15@example.com'
  AND u.role = 'supplier'
  AND NOT EXISTS (SELECT 1 FROM "suppliers" s WHERE s.user_id = u.id);



-- =====================================================
-- PHẦN 3: ACTIVITIES (500 hoạt động)
-- =====================================================

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((1 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Vịnh Hạ Long',
  'thử-rượu-vang---vịnh-hạ-long-1',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  59.13,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((2 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Văn Miếu',
  'ngắm-động-vật-hoang-dã---văn-miếu-2',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  80.86,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((3 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Tượng Nữ thần Tự do',
  'yoga-retreat---tượng-nữ-thần-tự-do-3',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  79.97,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((4 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Vịnh Hạ Long',
  'buổi-chữa-lành---vịnh-hạ-long-4',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  164.58,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((5 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Hồ Hoàn Kiếm',
  'karaoke---hồ-hoàn-kiếm-5',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  106.18,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((6 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Vịnh Hạ Long',
  'tour-chợ---vịnh-hạ-long-6',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  182.94,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((7 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Đền Ngọc Sơn',
  'ngắm-động-vật-hoang-dã---đền-ngọc-sơn-7',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  256.03,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((8 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Nhà hát múa rối nước',
  'buổi-biểu-diễn-văn-hóa---nhà-hát-múa-rối-nước-8',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  164.28,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((9 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Văn Miếu',
  'massage-trị-liệu---văn-miếu-9',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  218.86,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((10 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Vịnh Hạ Long',
  'tour-đi-bộ-lịch-sử---vịnh-hạ-long-10',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  111.91,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((11 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Chợ Bến Thành',
  'chợ-đêm---chợ-bến-thành-11',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  49.02,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((12 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Vịnh Hạ Long',
  'tour-ánh-sáng-thành-phố---vịnh-hạ-long-12',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Vịnh Hạ Long.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  64.7,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((13 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Tượng Nữ thần Tự do',
  'tour-chợ---tượng-nữ-thần-tự-do-13',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  235.69,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((14 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Tượng Nữ thần Tự do',
  'ngắm-động-vật-hoang-dã---tượng-nữ-thần-tự-do-14',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  73.65,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((15 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Nhà hát múa rối nước',
  'fine-dining---nhà-hát-múa-rối-nước-15',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  165.13,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((16 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Đền Ngọc Sơn',
  'zipline---đền-ngọc-sơn-16',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  154.54,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((17 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Tượng Nữ thần Tự do',
  'bữa-tiệc-hải-sản---tượng-nữ-thần-tự-do-17',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  236.89,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((18 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Tượng Nữ thần Tự do',
  'leo-núi-đá---tượng-nữ-thần-tự-do-18',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  57.86,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((19 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Nhà hát múa rối nước',
  'workshop-thủ-công---nhà-hát-múa-rối-nước-19',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  49.23,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((20 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Hồ Hoàn Kiếm',
  'lặn-biển---hồ-hoàn-kiếm-20',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  259.08,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((21 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Chợ Bến Thành',
  'đi-bộ-thác-nước---chợ-bến-thành-21',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  66.5,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((22 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Nhà hát múa rối nước',
  'tham-quan-đền-chùa---nhà-hát-múa-rối-nước-22',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  223.92,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((23 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Nhà hát múa rối nước',
  'jet-ski---nhà-hát-múa-rối-nước-23',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  258.43,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((24 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Tượng Nữ thần Tự do',
  'yoga-retreat---tượng-nữ-thần-tự-do-24',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  163.97,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((25 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Chợ Bến Thành',
  'chợ-đêm---chợ-bến-thành-25',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  298.49,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((26 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Văn Miếu',
  'bữa-tiệc-hải-sản---văn-miếu-26',
  'Trải nghiệm tuyệt vời về ẩm thực tại Văn Miếu.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  254.25,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((27 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Tượng Nữ thần Tự do',
  'khám-phá-hang-động---tượng-nữ-thần-tự-do-27',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  211.91,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((28 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Phố cổ',
  'lớp-học-nấu-ăn---phố-cổ-28',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  181.81,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((29 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Chợ Bến Thành',
  'lớp-học-nấu-ăn---chợ-bến-thành-29',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  250.6,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((30 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Phố cổ',
  'du-thuyền-hoàng-hôn---phố-cổ-30',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Phố cổ.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  281.49,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((31 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Tượng Nữ thần Tự do',
  'trung-tâm-wellness---tượng-nữ-thần-tự-do-31',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  278.31,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((32 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Nhà hát múa rối nước',
  'dù-lượn---nhà-hát-múa-rối-nước-32',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  287.11,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((33 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Đền Ngọc Sơn',
  'dù-lượn---đền-ngọc-sơn-33',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  24.61,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((34 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Nhà hát múa rối nước',
  'lớp-học-nấu-ăn---nhà-hát-múa-rối-nước-34',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  286.22,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((35 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Tượng Nữ thần Tự do',
  'chèo-thuyền-kayak---tượng-nữ-thần-tự-do-35',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  54.38,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((36 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Đền Ngọc Sơn',
  'workshop-thủ-công---đền-ngọc-sơn-36',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  36.02,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((37 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Đền Ngọc Sơn',
  'karaoke---đền-ngọc-sơn-37',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  274.81,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((38 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Văn Miếu',
  'du-lịch-sinh-thái---văn-miếu-38',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  206.22,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((39 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Văn Miếu',
  'đi-bộ-thác-nước---văn-miếu-39',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  41.47,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((40 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Văn Miếu',
  'bóng-chuyền-bãi-biển---văn-miếu-40',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  43.6,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((41 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Đền Ngọc Sơn',
  'thử-rượu-vang---đền-ngọc-sơn-41',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  103.42,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((42 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Đền Ngọc Sơn',
  'bữa-tiệc-hải-sản---đền-ngọc-sơn-42',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  53.24,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((43 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Chợ Bến Thành',
  'tour-cà-phê---chợ-bến-thành-43',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  80.72,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((44 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Chợ Bến Thành',
  'bar-hopping---chợ-bến-thành-44',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  105.23,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((45 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Hồ Hoàn Kiếm',
  'tour-chợ-thực-phẩm---hồ-hoàn-kiếm-45',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  37.6,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((46 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Tượng Nữ thần Tự do',
  'lặn-biển---tượng-nữ-thần-tự-do-46',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  267.86,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((47 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Chợ Bến Thành',
  'jet-ski---chợ-bến-thành-47',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  248.92,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((48 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Phố cổ',
  'liệu-pháp-hương-thơm---phố-cổ-48',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  287.22,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((49 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Hồ Hoàn Kiếm',
  'đạp-xe-leo-núi---hồ-hoàn-kiếm-49',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  160.2,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((50 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Nhà hát múa rối nước',
  'lặn-ống-thở---nhà-hát-múa-rối-nước-50',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  268.01,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((51 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Phố cổ',
  'vườn-quốc-gia---phố-cổ-51',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  40.88,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((52 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Vịnh Hạ Long',
  'tour-cà-phê---vịnh-hạ-long-52',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  110.03,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((53 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Văn Miếu',
  'bữa-tiệc-hải-sản---văn-miếu-53',
  'Trải nghiệm tuyệt vời về ẩm thực tại Văn Miếu.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  60.3,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((54 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Văn Miếu',
  'suối-nước-nóng---văn-miếu-54',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  31.43,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((55 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Phố cổ',
  'câu-lạc-bộ-đêm---phố-cổ-55',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  173.69,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((56 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Hồ Hoàn Kiếm',
  'buổi-biểu-diễn-văn-hóa---hồ-hoàn-kiếm-56',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  259.64,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((57 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Phố cổ',
  'lớp-học-nấu-ăn---phố-cổ-57',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  73.38,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((58 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Nhà hát múa rối nước',
  'karaoke---nhà-hát-múa-rối-nước-58',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  36.42,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((59 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Nhà hát múa rối nước',
  'buổi-chữa-lành---nhà-hát-múa-rối-nước-59',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Nhà hát múa rối nước.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  249.07,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((60 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Vịnh Hạ Long',
  'dù-lượn---vịnh-hạ-long-60',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  156.38,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((61 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Nhà hát múa rối nước',
  'nhảy-bungee---nhà-hát-múa-rối-nước-61',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  288.49,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((62 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Nhà hát múa rối nước',
  'đi-bộ-di-sản-văn-hóa---nhà-hát-múa-rối-nước-62',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  276.18,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((63 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn bách thảo - Nhà hát múa rối nước',
  'vườn-bách-thảo---nhà-hát-múa-rối-nước-63',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  241.48,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((64 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Nhà hát múa rối nước',
  'tour-đi-bộ-lịch-sử---nhà-hát-múa-rối-nước-64',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  44.29,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((65 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Vịnh Hạ Long',
  'du-lịch-sinh-thái---vịnh-hạ-long-65',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  160.97,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((66 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Đền Ngọc Sơn',
  'nhạc-sống---đền-ngọc-sơn-66',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  191.23,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((67 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Hồ Hoàn Kiếm',
  'đạp-xe-leo-núi---hồ-hoàn-kiếm-67',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  295.17,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((68 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Nhà hát múa rối nước',
  'lướt-sóng---nhà-hát-múa-rối-nước-68',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  37.5,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((69 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Tượng Nữ thần Tự do',
  'chợ-đêm---tượng-nữ-thần-tự-do-69',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  133.54,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((70 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Đền Ngọc Sơn',
  'yoga-bãi-biển---đền-ngọc-sơn-70',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  202.66,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((71 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Chợ Bến Thành',
  'jet-ski---chợ-bến-thành-71',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  171.06,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((72 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Hồ Hoàn Kiếm',
  'lặn-ống-thở---hồ-hoàn-kiếm-72',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  103.13,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((73 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Văn Miếu',
  'dù-lượn---văn-miếu-73',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  151.98,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((74 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Vịnh Hạ Long',
  'zipline---vịnh-hạ-long-74',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  296.49,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((75 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Chợ Bến Thành',
  'karaoke---chợ-bến-thành-75',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  139.56,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((76 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Phố cổ',
  'fine-dining---phố-cổ-76',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  249.47,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((77 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Phố cổ',
  'tour-chợ---phố-cổ-77',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  159.18,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((78 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Hồ Hoàn Kiếm',
  'tour-đi-bộ-lịch-sử---hồ-hoàn-kiếm-78',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  255.51,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((79 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Nhà hát múa rối nước',
  'suối-nước-nóng---nhà-hát-múa-rối-nước-79',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Nhà hát múa rối nước.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  173.69,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((80 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Vịnh Hạ Long',
  'liệu-pháp-hương-thơm---vịnh-hạ-long-80',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  117.16,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((81 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Nhà hát múa rối nước',
  'karaoke---nhà-hát-múa-rối-nước-81',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  177.98,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((82 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Phố cổ',
  'ngắm-động-vật-hoang-dã---phố-cổ-82',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  247.23,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((83 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Văn Miếu',
  'bóng-chuyền-bãi-biển---văn-miếu-83',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  184.39,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((84 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Phố cổ',
  'chụp-ảnh-phong-cảnh---phố-cổ-84',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  294.98,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((85 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Vịnh Hạ Long',
  'tour-ẩm-thực-đường-phố---vịnh-hạ-long-85',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  257.61,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((86 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Phố cổ',
  'suối-nước-nóng---phố-cổ-86',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  112.14,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((87 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Phố cổ',
  'du-thuyền-hoàng-hôn---phố-cổ-87',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Phố cổ.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  43.44,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((88 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Tượng Nữ thần Tự do',
  'liệu-pháp-hương-thơm---tượng-nữ-thần-tự-do-88',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  78.9,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((89 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Tượng Nữ thần Tự do',
  'tour-chợ---tượng-nữ-thần-tự-do-89',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  287.36,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((90 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Văn Miếu',
  'đi-bộ-di-sản-văn-hóa---văn-miếu-90',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  223.44,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((91 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Đền Ngọc Sơn',
  'tour-ẩm-thực-đường-phố---đền-ngọc-sơn-91',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  223.86,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((92 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Đền Ngọc Sơn',
  'workshop-thủ-công---đền-ngọc-sơn-92',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  182.15,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((93 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Hồ Hoàn Kiếm',
  'đạp-xe-leo-núi---hồ-hoàn-kiếm-93',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  114.48,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((94 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Đền Ngọc Sơn',
  'trekking-rừng-rậm---đền-ngọc-sơn-94',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  64.53,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((95 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Tượng Nữ thần Tự do',
  'lặn-ống-thở---tượng-nữ-thần-tự-do-95',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  30.59,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((96 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Tượng Nữ thần Tự do',
  'yoga-retreat---tượng-nữ-thần-tự-do-96',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  136.36,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((97 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Phố cổ',
  'điều-trị-spa---phố-cổ-97',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  52.89,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((98 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Hồ Hoàn Kiếm',
  'dù-lượn---hồ-hoàn-kiếm-98',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  264.39,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((99 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Đền Ngọc Sơn',
  'workshop-thủ-công---đền-ngọc-sơn-99',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  185.36,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((100 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Chợ Bến Thành',
  'tour-chợ-thực-phẩm---chợ-bến-thành-100',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  122.26,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((101 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Phố cổ',
  'du-lịch-sinh-thái---phố-cổ-101',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  212.45,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((102 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn bách thảo - Hồ Hoàn Kiếm',
  'vườn-bách-thảo---hồ-hoàn-kiếm-102',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  41.65,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((103 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Hồ Hoàn Kiếm',
  'leo-núi-đá---hồ-hoàn-kiếm-103',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  258.6,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((104 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Chợ Bến Thành',
  'điều-trị-spa---chợ-bến-thành-104',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  276.61,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((105 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Văn Miếu',
  'trekking-rừng-rậm---văn-miếu-105',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  235.53,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((106 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Tượng Nữ thần Tự do',
  'tour-ánh-sáng-thành-phố---tượng-nữ-thần-tự-do-106',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  242.34,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((107 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học ẩm thực - Hồ Hoàn Kiếm',
  'lớp-học-ẩm-thực---hồ-hoàn-kiếm-107',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  248.99,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((108 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Đền Ngọc Sơn',
  'bóng-chuyền-bãi-biển---đền-ngọc-sơn-108',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  69.5,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((109 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Đền Ngọc Sơn',
  'dù-lượn---đền-ngọc-sơn-109',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  128.4,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((110 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Tượng Nữ thần Tự do',
  'tham-quan-đền-chùa---tượng-nữ-thần-tự-do-110',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  144.43,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((111 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Chợ Bến Thành',
  'ngắm-bình-minh---chợ-bến-thành-111',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  80.38,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((112 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Chợ Bến Thành',
  'đi-bộ-di-sản-văn-hóa---chợ-bến-thành-112',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  178.26,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((113 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Hồ Hoàn Kiếm',
  'điều-trị-spa---hồ-hoàn-kiếm-113',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  131.61,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((114 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Hồ Hoàn Kiếm',
  'đi-bộ-thác-nước---hồ-hoàn-kiếm-114',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  234.3,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((115 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Tượng Nữ thần Tự do',
  'lướt-sóng---tượng-nữ-thần-tự-do-115',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  167.41,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((116 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Văn Miếu',
  'trung-tâm-wellness---văn-miếu-116',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  69.43,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((117 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Vịnh Hạ Long',
  'leo-núi-đá---vịnh-hạ-long-117',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  255.01,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((118 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Phố cổ',
  'tour-cà-phê---phố-cổ-118',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  28.75,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((119 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Văn Miếu',
  'leo-núi-đá---văn-miếu-119',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  149.2,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((120 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Đền Ngọc Sơn',
  'lặn-biển---đền-ngọc-sơn-120',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  235.63,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((121 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Đền Ngọc Sơn',
  'tour-chợ---đền-ngọc-sơn-121',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  106.74,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((122 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Chợ Bến Thành',
  'chụp-ảnh-phong-cảnh---chợ-bến-thành-122',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  31.07,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((123 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Nhà hát múa rối nước',
  'buổi-chữa-lành---nhà-hát-múa-rối-nước-123',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Nhà hát múa rối nước.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  52.3,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((124 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Đền Ngọc Sơn',
  'tour-chợ-thực-phẩm---đền-ngọc-sơn-124',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  283.05,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((125 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Văn Miếu',
  'đi-bộ-di-sản-văn-hóa---văn-miếu-125',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  208.8,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((126 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Phố cổ',
  'liệu-pháp-hương-thơm---phố-cổ-126',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  110.38,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((127 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Đền Ngọc Sơn',
  'du-thuyền-hoàng-hôn---đền-ngọc-sơn-127',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  127.63,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((128 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Chợ Bến Thành',
  'đi-bộ-leo-núi---chợ-bến-thành-128',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Chợ Bến Thành.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  170.98,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((129 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn bách thảo - Phố cổ',
  'vườn-bách-thảo---phố-cổ-129',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  187.64,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((130 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Hồ Hoàn Kiếm',
  'liệu-pháp-hương-thơm---hồ-hoàn-kiếm-130',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  288.5,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((131 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Dù lượn - Nhà hát múa rối nước',
  'dù-lượn---nhà-hát-múa-rối-nước-131',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  90.71,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((132 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Văn Miếu',
  'buổi-chữa-lành---văn-miếu-132',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  274.78,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((133 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Vịnh Hạ Long',
  'chèo-thuyền-kayak---vịnh-hạ-long-133',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  210.88,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((134 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Hồ Hoàn Kiếm',
  'tour-ẩm-thực-đường-phố---hồ-hoàn-kiếm-134',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  44.34,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((135 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Chợ Bến Thành',
  'chụp-ảnh-phong-cảnh---chợ-bến-thành-135',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  240.82,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((136 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Trượt nước - Vịnh Hạ Long',
  'trượt-nước---vịnh-hạ-long-136',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  139.97,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((137 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Chợ Bến Thành',
  'di-tích-cổ-xưa---chợ-bến-thành-137',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  108.68,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((138 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Chợ Bến Thành',
  'nhạc-sống---chợ-bến-thành-138',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  46.27,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((139 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Chợ Bến Thành',
  'suối-nước-nóng---chợ-bến-thành-139',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  22.88,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((140 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Tượng Nữ thần Tự do',
  'thử-rượu-vang---tượng-nữ-thần-tự-do-140',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  234.5,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((141 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Hồ Hoàn Kiếm',
  'buổi-biểu-diễn-văn-hóa---hồ-hoàn-kiếm-141',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  200.67,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((142 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Tượng Nữ thần Tự do',
  'lớp-học-nấu-ăn---tượng-nữ-thần-tự-do-142',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  100.0,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((143 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Đền Ngọc Sơn',
  'tour-chợ---đền-ngọc-sơn-143',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  142.06,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((144 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Hồ Hoàn Kiếm',
  'yoga-retreat---hồ-hoàn-kiếm-144',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  74.97,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((145 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Nhà hát múa rối nước',
  'chụp-ảnh-phong-cảnh---nhà-hát-múa-rối-nước-145',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  42.14,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((146 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Đền Ngọc Sơn',
  'liệu-pháp-hương-thơm---đền-ngọc-sơn-146',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Đền Ngọc Sơn.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  182.83,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((147 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Đền Ngọc Sơn',
  'du-thuyền-hoàng-hôn---đền-ngọc-sơn-147',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  54.22,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((148 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Văn Miếu',
  'massage-trị-liệu---văn-miếu-148',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  63.51,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((149 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Phố cổ',
  'du-thuyền-hoàng-hôn---phố-cổ-149',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Phố cổ.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  233.45,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((150 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Nhà hát múa rối nước',
  'bar-hopping---nhà-hát-múa-rối-nước-150',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  251.85,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((151 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Vịnh Hạ Long',
  'điều-trị-spa---vịnh-hạ-long-151',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  140.41,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((152 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Vịnh Hạ Long',
  'chèo-thuyền-kayak---vịnh-hạ-long-152',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  115.75,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((153 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Phố cổ',
  'đi-bộ-thác-nước---phố-cổ-153',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  67.66,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((154 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Văn Miếu',
  'chụp-ảnh-phong-cảnh---văn-miếu-154',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  56.62,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((155 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Tượng Nữ thần Tự do',
  'ngắm-động-vật-hoang-dã---tượng-nữ-thần-tự-do-155',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  297.37,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((156 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Chợ Bến Thành',
  'ngắm-bình-minh---chợ-bến-thành-156',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  105.03,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((157 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Phố cổ',
  'tour-bảo-tàng---phố-cổ-157',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  93.88,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((158 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Chợ Bến Thành',
  'tour-chợ-thực-phẩm---chợ-bến-thành-158',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  91.18,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((159 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Tượng Nữ thần Tự do',
  'leo-núi-đá---tượng-nữ-thần-tự-do-159',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  124.19,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((160 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Tượng Nữ thần Tự do',
  'karaoke---tượng-nữ-thần-tự-do-160',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  263.65,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((161 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Vịnh Hạ Long',
  'lặn-ống-thở---vịnh-hạ-long-161',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  171.6,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((162 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Tượng Nữ thần Tự do',
  'du-thuyền-hoàng-hôn---tượng-nữ-thần-tự-do-162',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  140.13,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((163 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Hồ Hoàn Kiếm',
  'di-tích-cổ-xưa---hồ-hoàn-kiếm-163',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  23.21,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((164 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Nhà hát múa rối nước',
  'nhảy-bungee---nhà-hát-múa-rối-nước-164',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  168.08,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((165 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Văn Miếu',
  'chụp-ảnh-phong-cảnh---văn-miếu-165',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  38.18,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((166 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Vịnh Hạ Long',
  'du-thuyền-hoàng-hôn---vịnh-hạ-long-166',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  234.34,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((167 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Hồ Hoàn Kiếm',
  'câu-lạc-bộ-đêm---hồ-hoàn-kiếm-167',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  258.58,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((168 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Đền Ngọc Sơn',
  'workshop-thủ-công---đền-ngọc-sơn-168',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  230.47,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((169 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Vịnh Hạ Long',
  'lặn-biển---vịnh-hạ-long-169',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  180.96,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((170 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Đền Ngọc Sơn',
  'trekking-rừng-rậm---đền-ngọc-sơn-170',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  82.44,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((171 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Nhà hát múa rối nước',
  'ngắm-động-vật-hoang-dã---nhà-hát-múa-rối-nước-171',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  293.76,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((172 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Hồ Hoàn Kiếm',
  'câu-lạc-bộ-đêm---hồ-hoàn-kiếm-172',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  24.8,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((173 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Tượng Nữ thần Tự do',
  'trekking-rừng-rậm---tượng-nữ-thần-tự-do-173',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  25.2,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((174 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Chợ Bến Thành',
  'di-tích-cổ-xưa---chợ-bến-thành-174',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  30.67,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((175 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Tượng Nữ thần Tự do',
  'lặn-biển---tượng-nữ-thần-tự-do-175',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  119.35,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((176 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Phố cổ',
  'chợ-đêm---phố-cổ-176',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  81.07,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((177 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Văn Miếu',
  'canyoning---văn-miếu-177',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  79.17,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((178 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Vịnh Hạ Long',
  'tour-ánh-sáng-thành-phố---vịnh-hạ-long-178',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Vịnh Hạ Long.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  247.75,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((179 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Chợ Bến Thành',
  'zipline---chợ-bến-thành-179',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Chợ Bến Thành.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  21.0,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((180 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Văn Miếu',
  'karaoke---văn-miếu-180',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Văn Miếu.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  99.26,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((181 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Vịnh Hạ Long',
  'lướt-sóng---vịnh-hạ-long-181',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  244.51,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((182 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Nhà hát múa rối nước',
  'buổi-biểu-diễn-văn-hóa---nhà-hát-múa-rối-nước-182',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  180.72,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((183 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Chợ Bến Thành',
  'bar-hopping---chợ-bến-thành-183',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  32.52,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((184 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Đền Ngọc Sơn',
  'chụp-ảnh-phong-cảnh---đền-ngọc-sơn-184',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  152.5,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((185 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Vịnh Hạ Long',
  'tour-bảo-tàng---vịnh-hạ-long-185',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  287.79,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((186 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Đền Ngọc Sơn',
  'ngắm-động-vật-hoang-dã---đền-ngọc-sơn-186',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  298.65,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((187 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Vịnh Hạ Long',
  'du-lịch-sinh-thái---vịnh-hạ-long-187',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  62.9,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((188 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Tượng Nữ thần Tự do',
  'du-thuyền-hoàng-hôn---tượng-nữ-thần-tự-do-188',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  64.3,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((189 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Vịnh Hạ Long',
  'chụp-ảnh-phong-cảnh---vịnh-hạ-long-189',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  212.61,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((190 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Nhà hát múa rối nước',
  'ngắm-động-vật-hoang-dã---nhà-hát-múa-rối-nước-190',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  258.36,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((191 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Văn Miếu',
  'du-lịch-sinh-thái---văn-miếu-191',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  136.25,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((192 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Tượng Nữ thần Tự do',
  'câu-lạc-bộ-đêm---tượng-nữ-thần-tự-do-192',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  78.34,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((193 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Nhà hát múa rối nước',
  'chợ-đêm---nhà-hát-múa-rối-nước-193',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  147.8,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((194 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Đền Ngọc Sơn',
  'di-tích-cổ-xưa---đền-ngọc-sơn-194',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  139.16,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((195 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Đền Ngọc Sơn',
  'lớp-học-nấu-ăn---đền-ngọc-sơn-195',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  68.63,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((196 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học ẩm thực - Hồ Hoàn Kiếm',
  'lớp-học-ẩm-thực---hồ-hoàn-kiếm-196',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  175.89,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((197 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Nhà hát múa rối nước',
  'trekking---nhà-hát-múa-rối-nước-197',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  135.16,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((198 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Hồ Hoàn Kiếm',
  'workshop-thủ-công---hồ-hoàn-kiếm-198',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  217.79,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((199 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Văn Miếu',
  'đi-bộ-di-sản-văn-hóa---văn-miếu-199',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  275.88,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((200 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Vịnh Hạ Long',
  'đi-bộ-leo-núi---vịnh-hạ-long-200',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  61.43,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((201 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Nhà hát múa rối nước',
  'bữa-tiệc-hải-sản---nhà-hát-múa-rối-nước-201',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  119.83,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((202 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Tượng Nữ thần Tự do',
  'lướt-sóng---tượng-nữ-thần-tự-do-202',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  138.39,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((203 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Văn Miếu',
  'tour-cà-phê---văn-miếu-203',
  'Trải nghiệm tuyệt vời về ẩm thực tại Văn Miếu.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  26.73,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((204 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Văn Miếu',
  'karaoke---văn-miếu-204',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Văn Miếu.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  293.67,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((205 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Phố cổ',
  'câu-lạc-bộ-đêm---phố-cổ-205',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  183.73,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((206 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Vịnh Hạ Long',
  'buổi-chữa-lành---vịnh-hạ-long-206',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  296.36,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((207 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Nhà hát múa rối nước',
  'leo-núi-đá---nhà-hát-múa-rối-nước-207',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  80.01,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((208 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Đền Ngọc Sơn',
  'chèo-thuyền-kayak---đền-ngọc-sơn-208',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  231.14,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((209 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Nhà hát múa rối nước',
  'thử-rượu-vang---nhà-hát-múa-rối-nước-209',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  177.15,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((210 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Vịnh Hạ Long',
  'đi-bộ-thác-nước---vịnh-hạ-long-210',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  133.21,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((211 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Tượng Nữ thần Tự do',
  'tour-chợ---tượng-nữ-thần-tự-do-211',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  81.34,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((212 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Nhà hát múa rối nước',
  'nhạc-sống---nhà-hát-múa-rối-nước-212',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  294.34,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((213 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Văn Miếu',
  'đạp-xe-leo-núi---văn-miếu-213',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  111.25,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((214 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Đền Ngọc Sơn',
  'jet-ski---đền-ngọc-sơn-214',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  66.23,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((215 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Hồ Hoàn Kiếm',
  'tour-đi-bộ-lịch-sử---hồ-hoàn-kiếm-215',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  78.66,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((216 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Trải nghiệm làng quê - Tượng Nữ thần Tự do',
  'trải-nghiệm-làng-quê---tượng-nữ-thần-tự-do-216',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  273.69,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((217 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Hồ Hoàn Kiếm',
  'lớp-học-nấu-ăn---hồ-hoàn-kiếm-217',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  87.21,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((218 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Nhà hát múa rối nước',
  'fine-dining---nhà-hát-múa-rối-nước-218',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  235.21,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((219 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Phố cổ',
  'ngắm-động-vật-hoang-dã---phố-cổ-219',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  106.74,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((220 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Tượng Nữ thần Tự do',
  'yoga-retreat---tượng-nữ-thần-tự-do-220',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  250.25,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((221 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Phố cổ',
  'karaoke---phố-cổ-221',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  216.82,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((222 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Chợ Bến Thành',
  'tour-cà-phê---chợ-bến-thành-222',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  36.58,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((223 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Nhà hát múa rối nước',
  'bóng-chuyền-bãi-biển---nhà-hát-múa-rối-nước-223',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  38.4,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((224 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Tượng Nữ thần Tự do',
  'trung-tâm-wellness---tượng-nữ-thần-tự-do-224',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  34.08,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((225 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Văn Miếu',
  'liệu-pháp-hương-thơm---văn-miếu-225',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  279.31,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((226 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Nhà hát múa rối nước',
  'tham-quan-đền-chùa---nhà-hát-múa-rối-nước-226',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  109.91,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((227 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Phố cổ',
  'tour-ẩm-thực-đường-phố---phố-cổ-227',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  98.85,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((228 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Chợ Bến Thành',
  'fine-dining---chợ-bến-thành-228',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  263.13,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((229 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Đền Ngọc Sơn',
  'karaoke---đền-ngọc-sơn-229',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  233.42,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((230 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Văn Miếu',
  'tour-đi-bộ-lịch-sử---văn-miếu-230',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  118.97,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((231 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Tượng Nữ thần Tự do',
  'workshop-thủ-công---tượng-nữ-thần-tự-do-231',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  100.89,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((232 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Nhà hát múa rối nước',
  'bóng-chuyền-bãi-biển---nhà-hát-múa-rối-nước-232',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  220.36,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((233 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Nhà hát múa rối nước',
  'lướt-sóng---nhà-hát-múa-rối-nước-233',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  117.81,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((234 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Vịnh Hạ Long',
  'tham-quan-đền-chùa---vịnh-hạ-long-234',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  155.86,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((235 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Đền Ngọc Sơn',
  'thử-rượu-vang---đền-ngọc-sơn-235',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  107.77,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((236 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Đền Ngọc Sơn',
  'yoga-bãi-biển---đền-ngọc-sơn-236',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  126.73,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((237 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Tượng Nữ thần Tự do',
  'trekking-rừng-rậm---tượng-nữ-thần-tự-do-237',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  130.62,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((238 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Đền Ngọc Sơn',
  'bar-hopping---đền-ngọc-sơn-238',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  222.81,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((239 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Tượng Nữ thần Tự do',
  'chợ-đêm---tượng-nữ-thần-tự-do-239',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  266.21,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((240 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Văn Miếu',
  'buổi-chữa-lành---văn-miếu-240',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  237.36,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((241 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Phố cổ',
  'buổi-biểu-diễn-văn-hóa---phố-cổ-241',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  161.29,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((242 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Phố cổ',
  'trekking-rừng-rậm---phố-cổ-242',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  281.36,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((243 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Nhà hát múa rối nước',
  'du-lịch-sinh-thái---nhà-hát-múa-rối-nước-243',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  268.04,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((244 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Vịnh Hạ Long',
  'tour-chợ-thực-phẩm---vịnh-hạ-long-244',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  30.61,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((245 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Tượng Nữ thần Tự do',
  'suối-nước-nóng---tượng-nữ-thần-tự-do-245',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  101.53,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((246 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Nhà hát múa rối nước',
  'bữa-tiệc-hải-sản---nhà-hát-múa-rối-nước-246',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  286.53,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((247 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Vịnh Hạ Long',
  'lặn-biển---vịnh-hạ-long-247',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  198.79,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((248 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Chợ Bến Thành',
  'chụp-ảnh-phong-cảnh---chợ-bến-thành-248',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  220.61,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((249 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Vịnh Hạ Long',
  'lớp-học-nấu-ăn---vịnh-hạ-long-249',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  285.72,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((250 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Phố cổ',
  'massage-trị-liệu---phố-cổ-250',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  227.94,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((251 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Vịnh Hạ Long',
  'tour-ẩm-thực-đường-phố---vịnh-hạ-long-251',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  268.31,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((252 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Chợ Bến Thành',
  'trekking---chợ-bến-thành-252',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Chợ Bến Thành.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  70.46,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((253 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Hồ Hoàn Kiếm',
  'buổi-biểu-diễn-văn-hóa---hồ-hoàn-kiếm-253',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  137.41,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((254 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Văn Miếu',
  'du-thuyền-hoàng-hôn---văn-miếu-254',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  190.64,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((255 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Vịnh Hạ Long',
  'tour-bảo-tàng---vịnh-hạ-long-255',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  141.2,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((256 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Nhà hát múa rối nước',
  'yoga-retreat---nhà-hát-múa-rối-nước-256',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Nhà hát múa rối nước.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  282.22,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((257 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Phố cổ',
  'chụp-ảnh-phong-cảnh---phố-cổ-257',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  292.57,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((258 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Chợ Bến Thành',
  'karaoke---chợ-bến-thành-258',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  213.95,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((259 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Văn Miếu',
  'nhảy-bungee---văn-miếu-259',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  299.28,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((260 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Văn Miếu',
  'trekking---văn-miếu-260',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  129.52,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((261 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Hồ Hoàn Kiếm',
  'liệu-pháp-hương-thơm---hồ-hoàn-kiếm-261',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  148.59,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((262 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Phố cổ',
  'điều-trị-spa---phố-cổ-262',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  186.26,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((263 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Phố cổ',
  'suối-nước-nóng---phố-cổ-263',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  88.55,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((264 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Đền Ngọc Sơn',
  'đạp-xe-leo-núi---đền-ngọc-sơn-264',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  292.07,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((265 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Chợ Bến Thành',
  'tour-ánh-sáng-thành-phố---chợ-bến-thành-265',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  286.78,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((266 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Vịnh Hạ Long',
  'nhạc-sống---vịnh-hạ-long-266',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Vịnh Hạ Long.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  93.45,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((267 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Trải nghiệm làng quê - Vịnh Hạ Long',
  'trải-nghiệm-làng-quê---vịnh-hạ-long-267',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  233.92,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((268 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Phố cổ',
  'suối-nước-nóng---phố-cổ-268',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  125.67,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((269 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Nhà hát múa rối nước',
  'bữa-tiệc-hải-sản---nhà-hát-múa-rối-nước-269',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  176.65,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((270 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Nhà hát múa rối nước',
  'di-tích-cổ-xưa---nhà-hát-múa-rối-nước-270',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  231.65,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((271 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Hồ Hoàn Kiếm',
  'canyoning---hồ-hoàn-kiếm-271',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  249.08,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((272 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Nhà hát múa rối nước',
  'jet-ski---nhà-hát-múa-rối-nước-272',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  170.06,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((273 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Đền Ngọc Sơn',
  'massage-trị-liệu---đền-ngọc-sơn-273',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Đền Ngọc Sơn.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  235.62,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((274 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Văn Miếu',
  'chèo-thuyền-kayak---văn-miếu-274',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  273.24,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((275 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Hồ Hoàn Kiếm',
  'chụp-ảnh-phong-cảnh---hồ-hoàn-kiếm-275',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  38.05,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((276 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Vịnh Hạ Long',
  'khám-phá-hang-động---vịnh-hạ-long-276',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Vịnh Hạ Long.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  207.46,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((277 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Nhà hát múa rối nước',
  'tour-cà-phê---nhà-hát-múa-rối-nước-277',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  239.18,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((278 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Hồ Hoàn Kiếm',
  'đi-bộ-leo-núi---hồ-hoàn-kiếm-278',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  101.39,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((279 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Tượng Nữ thần Tự do',
  'trekking---tượng-nữ-thần-tự-do-279',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  36.2,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((280 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Vịnh Hạ Long',
  'jet-ski---vịnh-hạ-long-280',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  146.54,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((281 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Văn Miếu',
  'workshop-thủ-công---văn-miếu-281',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  173.72,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((282 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Phố cổ',
  'tour-đi-bộ-lịch-sử---phố-cổ-282',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  132.27,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((283 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Đền Ngọc Sơn',
  'lướt-sóng---đền-ngọc-sơn-283',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  23.53,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((284 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Hồ Hoàn Kiếm',
  'đi-bộ-di-sản-văn-hóa---hồ-hoàn-kiếm-284',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  129.66,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((285 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Nhà hát múa rối nước',
  'vườn-quốc-gia---nhà-hát-múa-rối-nước-285',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  284.41,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((286 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Đền Ngọc Sơn',
  'vườn-quốc-gia---đền-ngọc-sơn-286',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  213.27,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((287 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Chợ Bến Thành',
  'buổi-biểu-diễn-văn-hóa---chợ-bến-thành-287',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  40.0,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((288 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Văn Miếu',
  'du-thuyền-hoàng-hôn---văn-miếu-288',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  42.75,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((289 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Phố cổ',
  'leo-núi-đá---phố-cổ-289',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  52.97,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((290 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Hồ Hoàn Kiếm',
  'đạp-xe-leo-núi---hồ-hoàn-kiếm-290',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  141.91,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((291 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Văn Miếu',
  'ngắm-bình-minh---văn-miếu-291',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  210.65,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((292 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Văn Miếu',
  'chụp-ảnh-phong-cảnh---văn-miếu-292',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  193.5,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((293 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Tượng Nữ thần Tự do',
  'du-lịch-sinh-thái---tượng-nữ-thần-tự-do-293',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  119.33,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((294 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Vịnh Hạ Long',
  'du-thuyền-hoàng-hôn---vịnh-hạ-long-294',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  196.09,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((295 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Tượng Nữ thần Tự do',
  'lướt-sóng---tượng-nữ-thần-tự-do-295',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  94.1,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((296 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Hồ Hoàn Kiếm',
  'di-tích-cổ-xưa---hồ-hoàn-kiếm-296',
  'Trải nghiệm tuyệt vời về văn hóa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  264.9,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((297 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Chợ Bến Thành',
  'karaoke---chợ-bến-thành-297',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  107.86,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((298 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn biển - Chợ Bến Thành',
  'lặn-biển---chợ-bến-thành-298',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  65.38,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((299 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Hồ Hoàn Kiếm',
  'tour-cà-phê---hồ-hoàn-kiếm-299',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  23.9,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((300 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Chợ Bến Thành',
  'tour-ánh-sáng-thành-phố---chợ-bến-thành-300',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  275.09,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((301 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Hồ Hoàn Kiếm',
  'bữa-tiệc-hải-sản---hồ-hoàn-kiếm-301',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  108.69,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((302 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Đền Ngọc Sơn',
  'tour-ánh-sáng-thành-phố---đền-ngọc-sơn-302',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  261.12,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((303 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Chợ Bến Thành',
  'zipline---chợ-bến-thành-303',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Chợ Bến Thành.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  253.78,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((304 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Văn Miếu',
  'trekking---văn-miếu-304',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  207.17,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((305 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Đền Ngọc Sơn',
  'suối-nước-nóng---đền-ngọc-sơn-305',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Đền Ngọc Sơn.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  275.83,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((306 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Đền Ngọc Sơn',
  'bar-hopping---đền-ngọc-sơn-306',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  205.95,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((307 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Nhà hát múa rối nước',
  'lặn-ống-thở---nhà-hát-múa-rối-nước-307',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  24.59,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((308 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Văn Miếu',
  'yoga-retreat---văn-miếu-308',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  274.18,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((309 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Nhà hát múa rối nước',
  'buổi-chữa-lành---nhà-hát-múa-rối-nước-309',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Nhà hát múa rối nước.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  86.63,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((310 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Nhà hát múa rối nước',
  'leo-núi-đá---nhà-hát-múa-rối-nước-310',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  65.71,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((311 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Hồ Hoàn Kiếm',
  'fine-dining---hồ-hoàn-kiếm-311',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  70.17,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((312 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Phố cổ',
  'khám-phá-hang-động---phố-cổ-312',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  192.0,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((313 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Văn Miếu',
  'trung-tâm-wellness---văn-miếu-313',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  277.3,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((314 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học ẩm thực - Phố cổ',
  'lớp-học-ẩm-thực---phố-cổ-314',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  184.68,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((315 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Vịnh Hạ Long',
  'jet-ski---vịnh-hạ-long-315',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  45.38,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((316 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Phố cổ',
  'zipline---phố-cổ-316',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  189.39,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((317 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Chợ Bến Thành',
  'suối-nước-nóng---chợ-bến-thành-317',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  35.6,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((318 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Nhà hát múa rối nước',
  'du-lịch-sinh-thái---nhà-hát-múa-rối-nước-318',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  92.89,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((319 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Tượng Nữ thần Tự do',
  'đạp-xe-leo-núi---tượng-nữ-thần-tự-do-319',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  109.67,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((320 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Chợ Bến Thành',
  'trung-tâm-wellness---chợ-bến-thành-320',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  91.23,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((321 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Phố cổ',
  'workshop-thủ-công---phố-cổ-321',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  149.37,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((322 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Tượng Nữ thần Tự do',
  'massage-trị-liệu---tượng-nữ-thần-tự-do-322',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  240.39,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((323 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Vịnh Hạ Long',
  'du-lịch-sinh-thái---vịnh-hạ-long-323',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  204.51,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((324 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Chợ Bến Thành',
  'du-lịch-sinh-thái---chợ-bến-thành-324',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  41.51,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((325 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Đền Ngọc Sơn',
  'tour-bảo-tàng---đền-ngọc-sơn-325',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  192.53,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((326 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Nhà hát múa rối nước',
  'đạp-xe-leo-núi---nhà-hát-múa-rối-nước-326',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  119.79,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((327 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Chợ Bến Thành',
  'lướt-sóng---chợ-bến-thành-327',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  155.52,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((328 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Hồ Hoàn Kiếm',
  'jet-ski---hồ-hoàn-kiếm-328',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  44.12,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((329 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ thác nước - Vịnh Hạ Long',
  'đi-bộ-thác-nước---vịnh-hạ-long-329',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  273.76,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((330 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Vịnh Hạ Long',
  'tour-chợ---vịnh-hạ-long-330',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  63.14,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((331 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Tour ánh sáng thành phố - Nhà hát múa rối nước',
  'tour-ánh-sáng-thành-phố---nhà-hát-múa-rối-nước-331',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  219.3,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((332 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Phố cổ',
  'tham-quan-đền-chùa---phố-cổ-332',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  272.77,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((333 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Tượng Nữ thần Tự do',
  'trekking-rừng-rậm---tượng-nữ-thần-tự-do-333',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  257.6,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((334 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Chợ Bến Thành',
  'vườn-quốc-gia---chợ-bến-thành-334',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  121.56,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((335 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Nhà hát múa rối nước',
  'đi-bộ-leo-núi---nhà-hát-múa-rối-nước-335',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  250.23,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((336 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Hồ Hoàn Kiếm',
  'trung-tâm-wellness---hồ-hoàn-kiếm-336',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  248.62,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((337 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học ẩm thực - Nhà hát múa rối nước',
  'lớp-học-ẩm-thực---nhà-hát-múa-rối-nước-337',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  191.15,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((338 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Chợ Bến Thành',
  'tour-đi-bộ-lịch-sử---chợ-bến-thành-338',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  247.65,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((339 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Đền Ngọc Sơn',
  'trekking-rừng-rậm---đền-ngọc-sơn-339',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  81.55,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((340 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Nhà hát múa rối nước',
  'du-thuyền-hoàng-hôn---nhà-hát-múa-rối-nước-340',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Nhà hát múa rối nước.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  54.5,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((341 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Hồ Hoàn Kiếm',
  'du-thuyền-hoàng-hôn---hồ-hoàn-kiếm-341',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  101.72,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((342 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Đền Ngọc Sơn',
  'du-lịch-sinh-thái---đền-ngọc-sơn-342',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Đền Ngọc Sơn.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  154.45,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((343 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Vịnh Hạ Long',
  'yoga-bãi-biển---vịnh-hạ-long-343',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  180.41,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((344 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Karaoke - Tượng Nữ thần Tự do',
  'karaoke---tượng-nữ-thần-tự-do-344',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  260.77,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((345 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Tượng Nữ thần Tự do',
  'tham-quan-đền-chùa---tượng-nữ-thần-tự-do-345',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  35.44,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((346 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Chợ Bến Thành',
  'lướt-sóng---chợ-bến-thành-346',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  110.89,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((347 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Chợ Bến Thành',
  'chợ-đêm---chợ-bến-thành-347',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  134.03,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((348 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Hồ Hoàn Kiếm',
  'bữa-tiệc-hải-sản---hồ-hoàn-kiếm-348',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  126.36,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((349 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Chợ Bến Thành',
  'du-thuyền-hoàng-hôn---chợ-bến-thành-349',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Chợ Bến Thành.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  254.31,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((350 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Tượng Nữ thần Tự do',
  'điều-trị-spa---tượng-nữ-thần-tự-do-350',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  209.24,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((351 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Trải nghiệm làng quê - Đền Ngọc Sơn',
  'trải-nghiệm-làng-quê---đền-ngọc-sơn-351',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  186.49,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((352 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Vịnh Hạ Long',
  'buổi-chữa-lành---vịnh-hạ-long-352',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  28.74,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((353 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Phố cổ',
  'tour-chợ---phố-cổ-353',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  218.23,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((354 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Phố cổ',
  'câu-lạc-bộ-đêm---phố-cổ-354',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  228.08,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((355 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Phố cổ',
  'câu-lạc-bộ-đêm---phố-cổ-355',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  259.31,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((356 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Tượng Nữ thần Tự do',
  'du-lịch-sinh-thái---tượng-nữ-thần-tự-do-356',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  58.53,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((357 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Chợ Bến Thành',
  'bữa-tiệc-hải-sản---chợ-bến-thành-357',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  165.82,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((358 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học ẩm thực - Văn Miếu',
  'lớp-học-ẩm-thực---văn-miếu-358',
  'Trải nghiệm tuyệt vời về ẩm thực tại Văn Miếu.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  254.42,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((359 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Phố cổ',
  'đi-bộ-leo-núi---phố-cổ-359',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  72.42,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((360 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Chợ Bến Thành',
  'tham-quan-đền-chùa---chợ-bến-thành-360',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  199.68,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((361 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Tượng Nữ thần Tự do',
  'yoga-bãi-biển---tượng-nữ-thần-tự-do-361',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  189.89,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((362 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Vịnh Hạ Long',
  'điều-trị-spa---vịnh-hạ-long-362',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  83.53,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((363 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Phố cổ',
  'điều-trị-spa---phố-cổ-363',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  276.22,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((364 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Hồ Hoàn Kiếm',
  'lặn-ống-thở---hồ-hoàn-kiếm-364',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  164.85,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((365 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Vịnh Hạ Long',
  'liệu-pháp-hương-thơm---vịnh-hạ-long-365',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  22.15,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((366 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Phố cổ',
  'tour-chợ---phố-cổ-366',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  28.06,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((367 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Đền Ngọc Sơn',
  'thử-rượu-vang---đền-ngọc-sơn-367',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  41.79,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((368 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Nhà hát múa rối nước',
  'chợ-đêm---nhà-hát-múa-rối-nước-368',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  240.06,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((369 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Nhà hát múa rối nước',
  'đi-bộ-di-sản-văn-hóa---nhà-hát-múa-rối-nước-369',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  71.18,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((370 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Phố cổ',
  'workshop-thủ-công---phố-cổ-370',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  136.19,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((371 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Nhà hát múa rối nước',
  'ngắm-bình-minh---nhà-hát-múa-rối-nước-371',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  154.23,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((372 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn bách thảo - Nhà hát múa rối nước',
  'vườn-bách-thảo---nhà-hát-múa-rối-nước-372',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  243.55,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((373 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Văn Miếu',
  'yoga-retreat---văn-miếu-373',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  196.59,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((374 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Văn Miếu',
  'trekking---văn-miếu-374',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  38.69,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((375 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Phố cổ',
  'trung-tâm-wellness---phố-cổ-375',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  78.82,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((376 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Vịnh Hạ Long',
  'tour-cà-phê---vịnh-hạ-long-376',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  240.5,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((377 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Phố cổ',
  'di-tích-cổ-xưa---phố-cổ-377',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  102.69,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((378 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Phố cổ',
  'di-tích-cổ-xưa---phố-cổ-378',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  279.87,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((379 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Đền Ngọc Sơn',
  'suối-nước-nóng---đền-ngọc-sơn-379',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Đền Ngọc Sơn.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  167.44,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((380 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Phố cổ',
  'yoga-retreat---phố-cổ-380',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  72.24,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((381 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Nhà hát múa rối nước',
  'canyoning---nhà-hát-múa-rối-nước-381',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  225.39,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((382 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Đền Ngọc Sơn',
  'canyoning---đền-ngọc-sơn-382',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  231.45,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((383 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Chợ Bến Thành',
  'nhạc-sống---chợ-bến-thành-383',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  32.66,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((384 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Phố cổ',
  'thử-rượu-vang---phố-cổ-384',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  163.8,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((385 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Nhà hát múa rối nước',
  'tour-chợ-thực-phẩm---nhà-hát-múa-rối-nước-385',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  30.05,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((386 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Nhà hát múa rối nước',
  'du-lịch-sinh-thái---nhà-hát-múa-rối-nước-386',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  26.66,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((387 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Phố cổ',
  'vườn-quốc-gia---phố-cổ-387',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  54.5,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((388 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Hồ Hoàn Kiếm',
  'fine-dining---hồ-hoàn-kiếm-388',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  94.14,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((389 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Phố cổ',
  'thử-rượu-vang---phố-cổ-389',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  236.7,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((390 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Nhà hát múa rối nước',
  'đi-bộ-di-sản-văn-hóa---nhà-hát-múa-rối-nước-390',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  120.23,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((391 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Điều trị spa - Văn Miếu',
  'điều-trị-spa---văn-miếu-391',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  204.84,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((392 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Đền Ngọc Sơn',
  'workshop-thủ-công---đền-ngọc-sơn-392',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  61.61,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((393 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Nhà hát múa rối nước',
  'khám-phá-hang-động---nhà-hát-múa-rối-nước-393',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  200.8,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((394 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Nhà hát múa rối nước',
  'đạp-xe-leo-núi---nhà-hát-múa-rối-nước-394',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  22.58,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((395 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Trượt nước - Tượng Nữ thần Tự do',
  'trượt-nước---tượng-nữ-thần-tự-do-395',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  290.2,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((396 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Chợ Bến Thành',
  'ngắm-động-vật-hoang-dã---chợ-bến-thành-396',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  169.31,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((397 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Văn Miếu',
  'zipline---văn-miếu-397',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  86.07,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((398 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Nhà hát múa rối nước',
  'buổi-biểu-diễn-văn-hóa---nhà-hát-múa-rối-nước-398',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  222.8,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((399 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đạp xe leo núi - Tượng Nữ thần Tự do',
  'đạp-xe-leo-núi---tượng-nữ-thần-tự-do-399',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  101.88,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((400 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Phố cổ',
  'du-lịch-sinh-thái---phố-cổ-400',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  200.35,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((401 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Đền Ngọc Sơn',
  'tour-bảo-tàng---đền-ngọc-sơn-401',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  143.68,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((402 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Văn Miếu',
  'đi-bộ-di-sản-văn-hóa---văn-miếu-402',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  102.63,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((403 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Nhà hát múa rối nước',
  'tour-cà-phê---nhà-hát-múa-rối-nước-403',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  271.72,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((404 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Phố cổ',
  'đi-bộ-leo-núi---phố-cổ-404',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  26.42,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((405 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Chợ Bến Thành',
  'chụp-ảnh-phong-cảnh---chợ-bến-thành-405',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  138.79,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((406 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Đền Ngọc Sơn',
  'yoga-bãi-biển---đền-ngọc-sơn-406',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  32.87,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((407 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Hồ Hoàn Kiếm',
  'trekking-rừng-rậm---hồ-hoàn-kiếm-407',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  193.72,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((408 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour cà phê - Tượng Nữ thần Tự do',
  'tour-cà-phê---tượng-nữ-thần-tự-do-408',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  269.09,
  'USD',
  20,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((409 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Chợ Bến Thành',
  'đi-bộ-di-sản-văn-hóa---chợ-bến-thành-409',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  186.57,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((410 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Chợ Bến Thành',
  'chụp-ảnh-phong-cảnh---chợ-bến-thành-410',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  212.28,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((411 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Vịnh Hạ Long',
  'nhạc-sống---vịnh-hạ-long-411',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Vịnh Hạ Long.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  124.9,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((412 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Hồ Hoàn Kiếm',
  'đi-bộ-leo-núi---hồ-hoàn-kiếm-412',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  207.08,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((413 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Phố cổ',
  'workshop-thủ-công---phố-cổ-413',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  247.25,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((414 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Văn Miếu',
  'chèo-thuyền-kayak---văn-miếu-414',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  69.14,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((415 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Workshop thủ công - Văn Miếu',
  'workshop-thủ-công---văn-miếu-415',
  'Trải nghiệm tuyệt vời về văn hóa tại Văn Miếu.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  176.27,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((416 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Đền Ngọc Sơn',
  'jet-ski---đền-ngọc-sơn-416',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  82.05,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((417 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Chợ Bến Thành',
  'yoga-retreat---chợ-bến-thành-417',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  106.99,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((418 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Tượng Nữ thần Tự do',
  'thử-rượu-vang---tượng-nữ-thần-tự-do-418',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  193.79,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((419 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Tượng Nữ thần Tự do',
  'lớp-học-nấu-ăn---tượng-nữ-thần-tự-do-419',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  94.44,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((420 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Phố cổ',
  'tour-chợ-thực-phẩm---phố-cổ-420',
  'Trải nghiệm tuyệt vời về ẩm thực tại Phố cổ.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  113.41,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((421 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ leo núi - Đền Ngọc Sơn',
  'đi-bộ-leo-núi---đền-ngọc-sơn-421',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Đền Ngọc Sơn.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  61.1,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((422 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Vịnh Hạ Long',
  'câu-lạc-bộ-đêm---vịnh-hạ-long-422',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Vịnh Hạ Long.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  185.54,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((423 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Canyoning - Tượng Nữ thần Tự do',
  'canyoning---tượng-nữ-thần-tự-do-423',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  195.07,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((424 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Hồ Hoàn Kiếm',
  'tour-ẩm-thực-đường-phố---hồ-hoàn-kiếm-424',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  90.41,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((425 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Vịnh Hạ Long',
  'di-tích-cổ-xưa---vịnh-hạ-long-425',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  291.63,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((426 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Phố cổ',
  'bar-hopping---phố-cổ-426',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  206.92,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((427 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn quốc gia - Tượng Nữ thần Tự do',
  'vườn-quốc-gia---tượng-nữ-thần-tự-do-427',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  254.32,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((428 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Tượng Nữ thần Tự do',
  'leo-núi-đá---tượng-nữ-thần-tự-do-428',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  240.68,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((429 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Văn Miếu',
  'nhảy-bungee---văn-miếu-429',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  205.45,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((430 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Nhà hát múa rối nước',
  'nhảy-bungee---nhà-hát-múa-rối-nước-430',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  278.4,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((431 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Vườn bách thảo - Hồ Hoàn Kiếm',
  'vườn-bách-thảo---hồ-hoàn-kiếm-431',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  46.67,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((432 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Nhà hát múa rối nước',
  'chèo-thuyền-kayak---nhà-hát-múa-rối-nước-432',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Nhà hát múa rối nước.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  225.18,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((433 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour ẩm thực đường phố - Chợ Bến Thành',
  'tour-ẩm-thực-đường-phố---chợ-bến-thành-433',
  'Trải nghiệm tuyệt vời về ẩm thực tại Chợ Bến Thành.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  185.15,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((434 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Hồ Hoàn Kiếm',
  'khám-phá-hang-động---hồ-hoàn-kiếm-434',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  179.41,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((435 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Vịnh Hạ Long',
  'ngắm-động-vật-hoang-dã---vịnh-hạ-long-435',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  105.67,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((436 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Hồ Hoàn Kiếm',
  'jet-ski---hồ-hoàn-kiếm-436',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  158.07,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((437 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Buổi biểu diễn văn hóa - Tượng Nữ thần Tự do',
  'buổi-biểu-diễn-văn-hóa---tượng-nữ-thần-tự-do-437',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  80.27,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((438 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Đền Ngọc Sơn',
  'tour-chợ---đền-ngọc-sơn-438',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  290.43,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((439 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Nhà hát múa rối nước',
  'lớp-học-nấu-ăn---nhà-hát-múa-rối-nước-439',
  'Trải nghiệm tuyệt vời về ẩm thực tại Nhà hát múa rối nước.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  170.97,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((440 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Phố cổ',
  'ngắm-bình-minh---phố-cổ-440',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  100.89,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((441 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Jet ski - Hồ Hoàn Kiếm',
  'jet-ski---hồ-hoàn-kiếm-441',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  198.01,
  'USD',
  15,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((442 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Chèo thuyền kayak - Tượng Nữ thần Tự do',
  'chèo-thuyền-kayak---tượng-nữ-thần-tự-do-442',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  235.72,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((443 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Nhà hát múa rối nước',
  'di-tích-cổ-xưa---nhà-hát-múa-rối-nước-443',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  248.18,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((444 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Chợ Bến Thành',
  'trung-tâm-wellness---chợ-bến-thành-444',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Chợ Bến Thành.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  116.04,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((445 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Tượng Nữ thần Tự do',
  'fine-dining---tượng-nữ-thần-tự-do-445',
  'Trải nghiệm tuyệt vời về ẩm thực tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  195.92,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((446 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Hồ Hoàn Kiếm',
  'buổi-chữa-lành---hồ-hoàn-kiếm-446',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  262.88,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((447 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Phố cổ',
  'trung-tâm-wellness---phố-cổ-447',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  269.62,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((448 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Chợ Bến Thành',
  'nhạc-sống---chợ-bến-thành-448',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Chợ Bến Thành.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  116.5,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((449 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Massage trị liệu - Hồ Hoàn Kiếm',
  'massage-trị-liệu---hồ-hoàn-kiếm-449',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  99.27,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((450 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Zipline - Văn Miếu',
  'zipline---văn-miếu-450',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Văn Miếu.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  144.54,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((451 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Chợ Bến Thành',
  'trekking---chợ-bến-thành-451',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Chợ Bến Thành.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  177.82,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((452 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Trekking - Phố cổ',
  'trekking---phố-cổ-452',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  231.29,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((453 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Tượng Nữ thần Tự do',
  'buổi-chữa-lành---tượng-nữ-thần-tự-do-453',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  216.75,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((454 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Tượng Nữ thần Tự do',
  'tour-đi-bộ-lịch-sử---tượng-nữ-thần-tự-do-454',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  200.65,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((455 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Vịnh Hạ Long',
  'tour-đi-bộ-lịch-sử---vịnh-hạ-long-455',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  91.88,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((456 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Yoga retreat - Hồ Hoàn Kiếm',
  'yoga-retreat---hồ-hoàn-kiếm-456',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  155.58,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((457 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Tượng Nữ thần Tự do',
  'chợ-đêm---tượng-nữ-thần-tự-do-457',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  173.23,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((458 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tham quan đền chùa - Đền Ngọc Sơn',
  'tham-quan-đền-chùa---đền-ngọc-sơn-458',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  34.5,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((459 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Văn Miếu',
  'bóng-chuyền-bãi-biển---văn-miếu-459',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  86.66,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((460 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Vịnh Hạ Long',
  'yoga-bãi-biển---vịnh-hạ-long-460',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Vịnh Hạ Long.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  247.25,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((461 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Trung tâm wellness - Phố cổ',
  'trung-tâm-wellness---phố-cổ-461',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Phố cổ.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  97.57,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((462 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Đền Ngọc Sơn',
  'nhạc-sống---đền-ngọc-sơn-462',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Đền Ngọc Sơn.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  218.96,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((463 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Bóng chuyền bãi biển - Hồ Hoàn Kiếm',
  'bóng-chuyền-bãi-biển---hồ-hoàn-kiếm-463',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  25.42,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((464 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Hồ Hoàn Kiếm',
  'khám-phá-hang-động---hồ-hoàn-kiếm-464',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  277.68,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((465 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour bảo tàng - Tượng Nữ thần Tự do',
  'tour-bảo-tàng---tượng-nữ-thần-tự-do-465',
  'Trải nghiệm tuyệt vời về văn hóa tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  258.12,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((466 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Nhà hát múa rối nước',
  'bar-hopping---nhà-hát-múa-rối-nước-466',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Nhà hát múa rối nước.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  148.97,
  'USD',
  20,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((467 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Bar hopping - Phố cổ',
  'bar-hopping---phố-cổ-467',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Phố cổ.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  116.22,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((468 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Yoga bãi biển - Đền Ngọc Sơn',
  'yoga-bãi-biển---đền-ngọc-sơn-468',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Đền Ngọc Sơn.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  37.37,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((469 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Chợ Bến Thành',
  'di-tích-cổ-xưa---chợ-bến-thành-469',
  'Trải nghiệm tuyệt vời về văn hóa tại Chợ Bến Thành.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  288.11,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'draft'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((470 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Du thuyền hoàng hôn - Tượng Nữ thần Tự do',
  'du-thuyền-hoàng-hôn---tượng-nữ-thần-tự-do-470',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  43.27,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((471 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Fine dining - Đền Ngọc Sơn',
  'fine-dining---đền-ngọc-sơn-471',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  111.33,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((472 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Hồ Hoàn Kiếm',
  'trekking-rừng-rậm---hồ-hoàn-kiếm-472',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  185.32,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((473 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Đi bộ di sản văn hóa - Phố cổ',
  'đi-bộ-di-sản-văn-hóa---phố-cổ-473',
  'Trải nghiệm tuyệt vời về văn hóa tại Phố cổ.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  200.73,
  'USD',
  10,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((474 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Phố cổ',
  'ngắm-động-vật-hoang-dã---phố-cổ-474',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  220.38,
  'USD',
  15,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((475 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Nhạc sống - Văn Miếu',
  'nhạc-sống---văn-miếu-475',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Văn Miếu.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  103.03,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((476 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Nhảy bungee - Tượng Nữ thần Tự do',
  'nhảy-bungee---tượng-nữ-thần-tự-do-476',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  183.51,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((477 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Leo núi đá - Phố cổ',
  'leo-núi-đá---phố-cổ-477',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  269.97,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((478 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Văn Miếu',
  'chụp-ảnh-phong-cảnh---văn-miếu-478',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  203.99,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((479 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Du lịch sinh thái - Vịnh Hạ Long',
  'du-lịch-sinh-thái---vịnh-hạ-long-479',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Vịnh Hạ Long.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  198.58,
  'USD',
  10,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((480 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Liệu pháp hương thơm - Vịnh Hạ Long',
  'liệu-pháp-hương-thơm---vịnh-hạ-long-480',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Vịnh Hạ Long.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  66.74,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((481 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Adventure' AND "parent_id" IS NULL LIMIT 1),
  'Khám phá hang động - Phố cổ',
  'khám-phá-hang-động---phố-cổ-481',
  'Trải nghiệm tuyệt vời về phiêu lưu tại Phố cổ.',
  '["Trải nghiệm phiêu lưu", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  125.51,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((482 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Suối nước nóng - Hồ Hoàn Kiếm',
  'suối-nước-nóng---hồ-hoàn-kiếm-482',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  61.22,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((483 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Tượng Nữ thần Tự do',
  'lặn-ống-thở---tượng-nữ-thần-tự-do-483',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  252.63,
  'USD',
  30,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((484 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Lớp học nấu ăn - Vịnh Hạ Long',
  'lớp-học-nấu-ăn---vịnh-hạ-long-484',
  'Trải nghiệm tuyệt vời về ẩm thực tại Vịnh Hạ Long.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  117.03,
  'USD',
  15,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((485 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Chợ đêm - Văn Miếu',
  'chợ-đêm---văn-miếu-485',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Văn Miếu.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  102.58,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((486 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm động vật hoang dã - Nhà hát múa rối nước',
  'ngắm-động-vật-hoang-dã---nhà-hát-múa-rối-nước-486',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Nhà hát múa rối nước.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  169.97,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((487 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lặn ống thở - Tượng Nữ thần Tự do',
  'lặn-ống-thở---tượng-nữ-thần-tự-do-487',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Tượng Nữ thần Tự do.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  300,
  205.31,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((488 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ - Nhà hát múa rối nước',
  'tour-chợ---nhà-hát-múa-rối-nước-488',
  'Trải nghiệm tuyệt vời về văn hóa tại Nhà hát múa rối nước.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  292.24,
  'USD',
  20,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((489 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Phố cổ',
  'ngắm-bình-minh---phố-cổ-489',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  27.18,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((490 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Chụp ảnh phong cảnh - Phố cổ',
  'chụp-ảnh-phong-cảnh---phố-cổ-490',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Phố cổ.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  248.7,
  'USD',
  30,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((491 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Di tích cổ xưa - Vịnh Hạ Long',
  'di-tích-cổ-xưa---vịnh-hạ-long-491',
  'Trải nghiệm tuyệt vời về văn hóa tại Vịnh Hạ Long.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  87.68,
  'USD',
  30,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((492 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Bữa tiệc hải sản - Hồ Hoàn Kiếm',
  'bữa-tiệc-hải-sản---hồ-hoàn-kiếm-492',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  73.11,
  'USD',
  15,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((493 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Tour chợ thực phẩm - Hồ Hoàn Kiếm',
  'tour-chợ-thực-phẩm---hồ-hoàn-kiếm-493',
  'Trải nghiệm tuyệt vời về ẩm thực tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  104.44,
  'USD',
  25,
  0,
  0,
  false,
  true,
  'inactive'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((494 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Ngắm bình minh - Văn Miếu',
  'ngắm-bình-minh---văn-miếu-494',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Văn Miếu.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  235.48,
  'USD',
  25,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((495 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Food' AND "parent_id" IS NULL LIMIT 1),
  'Thử rượu vang - Đền Ngọc Sơn',
  'thử-rượu-vang---đền-ngọc-sơn-495',
  'Trải nghiệm tuyệt vời về ẩm thực tại Đền Ngọc Sơn.',
  '["Trải nghiệm ẩm thực", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  240,
  191.04,
  'USD',
  10,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((496 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nightlife & Entertainment' AND "parent_id" IS NULL LIMIT 1),
  'Câu lạc bộ đêm - Hồ Hoàn Kiếm',
  'câu-lạc-bộ-đêm---hồ-hoàn-kiếm-496',
  'Trải nghiệm tuyệt vời về giải trí & đêm tại Hồ Hoàn Kiếm.',
  '["Trải nghiệm giải trí & đêm", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  245.32,
  'USD',
  25,
  0,
  0,
  false,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((497 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Beach & Water Sports' AND "parent_id" IS NULL LIMIT 1),
  'Lướt sóng - Văn Miếu',
  'lướt-sóng---văn-miếu-497',
  'Trải nghiệm tuyệt vời về bãi biển & thể thao dưới nước tại Văn Miếu.',
  '["Trải nghiệm bãi biển & thể thao dưới nước", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  60,
  165.02,
  'USD',
  20,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((498 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Wellness & Spa' AND "parent_id" IS NULL LIMIT 1),
  'Buổi chữa lành - Văn Miếu',
  'buổi-chữa-lành---văn-miếu-498',
  'Trải nghiệm tuyệt vời về sức khỏe & spa tại Văn Miếu.',
  '["Trải nghiệm sức khỏe & spa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  180,
  229.49,
  'USD',
  30,
  0,
  0,
  false,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((499 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Nature' AND "parent_id" IS NULL LIMIT 1),
  'Trekking rừng rậm - Chợ Bến Thành',
  'trekking-rừng-rậm---chợ-bến-thành-499',
  'Trải nghiệm tuyệt vời về thiên nhiên tại Chợ Bến Thành.',
  '["Trải nghiệm thiên nhiên", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  480,
  33.18,
  'USD',
  25,
  0,
  0,
  true,
  false,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;

INSERT INTO "activities" (
  "supplier_id", "destination_id", "category_id", "name", "slug", "description",
  "highlights", "duration", "price", "currency", "max_participants",
  "rating", "review_count", "instant_confirmation", "free_cancellation",
  "status", "created_at", "updated_at"
)
SELECT 
  (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY id) - 1 as rn FROM suppliers) s WHERE s.rn = ((500 - 1) % (SELECT COUNT(*) FROM suppliers))),
  (SELECT id FROM "destinations" ORDER BY RANDOM() LIMIT 1),
  (SELECT id FROM "categories" WHERE "name" = 'Culture' AND "parent_id" IS NULL LIMIT 1),
  'Tour đi bộ lịch sử - Đền Ngọc Sơn',
  'tour-đi-bộ-lịch-sử---đền-ngọc-sơn-500',
  'Trải nghiệm tuyệt vời về văn hóa tại Đền Ngọc Sơn.',
  '["Trải nghiệm văn hóa", "Hướng dẫn viên chuyên nghiệp", "Nhóm nhỏ"]'::jsonb,
  120,
  121.08,
  'USD',
  10,
  0,
  0,
  true,
  true,
  'active'::"ActivityStatus",
  NOW(),
  NOW()
ON CONFLICT (slug) DO NOTHING;



-- =====================================================
-- PHẦN 4: LỊCH TRÌNH ACTIVITIES (1500 lịch trình)
-- =====================================================

-- Tạo lịch trình cho tất cả activities
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



-- =====================================================
-- PHẦN 5: BOOKINGS (3000 đặt chỗ)
-- =====================================================

-- Tạo bookings sử dụng PL/pgSQL để hiệu suất tốt hơn
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
      IF booking_counter > 3000 THEN
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
    
    IF booking_counter > 3000 THEN
      EXIT;
    END IF;
  END LOOP;
END $$;



-- =====================================================
-- PHẦN 6: REVIEWS (ĐÁNH GIÁ) (2500 đánh giá)
-- =====================================================

-- Tạo reviews từ các bookings đã hoàn thành/xác nhận
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
    LIMIT 2500
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



-- =====================================================
-- HOÀN TẤT! Kiểm tra dữ liệu:
-- SELECT COUNT(*) FROM users;
-- SELECT COUNT(*) FROM activities;
-- SELECT COUNT(*) FROM bookings;
-- SELECT COUNT(*) FROM reviews;
-- =====================================================
