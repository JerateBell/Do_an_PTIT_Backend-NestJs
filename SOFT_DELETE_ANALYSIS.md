# PHÂN TÍCH SOFT DELETE CHO DATABASE

## Tổng quan
Soft delete sử dụng field `deletedAt` (DateTime nullable) thay vì xóa vĩnh viễn record. Khi `deletedAt IS NULL` = record còn tồn tại, khi `deletedAt IS NOT NULL` = record đã bị xóa.

---

## ✅ CÁC BẢNG NÊN CÓ SOFT DELETE

### 1. **User** ⭐⭐⭐ (Rất quan trọng)
**Lý do:**
- Dữ liệu người dùng quan trọng, cần lưu lịch sử
- Có nhiều quan hệ: bookings, payments, reviews
- Cần audit trail cho compliance
- Hiện tại đã có `status = 'deleted'` nhưng nên thêm `deletedAt` để track thời gian

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 2. **Activity** ⭐⭐⭐ (Rất quan trọng)
**Lý do:**
- Có nhiều quan hệ: bookings, reviews, wishlists, recommendations
- Xóa hard delete sẽ mất lịch sử bookings và reviews
- Cần lưu lại để audit và thống kê
- Supplier có thể muốn khôi phục

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 3. **Supplier** ⭐⭐⭐ (Rất quan trọng)
**Lý do:**
- Liên quan đến nhiều activities và bookings
- Cần lưu lịch sử hoạt động
- Có thể cần khôi phục tài khoản

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 4. **Booking** ⭐⭐⭐ (Rất quan trọng)
**Lý do:**
- Dữ liệu tài chính quan trọng
- Cần lưu lịch sử cho audit và compliance
- Liên quan đến payments và reviews
- Không nên xóa vĩnh viễn

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 5. **Payment** ⭐⭐⭐ (Rất quan trọng)
**Lý do:**
- Dữ liệu tài chính cực kỳ quan trọng
- Bắt buộc phải lưu lịch sử cho audit
- Compliance và legal requirements
- Không bao giờ nên hard delete

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 6. **Review** ⭐⭐ (Quan trọng)
**Lý do:**
- Lưu lịch sử đánh giá của users
- Có thể cần khôi phục nếu xóa nhầm
- Liên quan đến rating của activities

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 7. **Category** ⭐⭐ (Quan trọng)
**Lý do:**
- Có quan hệ với nhiều activities
- Có thể có cấu trúc phân cấp (parent-child)
- Xóa hard delete có thể ảnh hưởng đến activities

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 8. **Destination** ⭐⭐ (Quan trọng)
**Lý do:**
- Có quan hệ với nhiều activities
- Dữ liệu địa lý quan trọng
- Có thể cần khôi phục

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 9. **City** ⭐ (Nên có)
**Lý do:**
- Có quan hệ với destinations
- Dữ liệu địa lý, ít khi thay đổi
- Có thể cần khôi phục

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 10. **Country** ⭐ (Nên có)
**Lý do:**
- Có quan hệ với cities
- Dữ liệu địa lý, ít khi thay đổi
- Có thể cần khôi phục

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 11. **Coupon** ⭐ (Nên có)
**Lý do:**
- Có thể cần lưu lịch sử sử dụng
- Có thể cần khôi phục
- Liên quan đến bookings

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

### 12. **AdminBankAccount** ⭐ (Nên có)
**Lý do:**
- Thông tin tài chính quan trọng
- Có thể cần lưu lịch sử
- Đã có `isActive` nhưng nên thêm `deletedAt`

**Thêm field:**
```prisma
deletedAt DateTime? @map("deleted_at")
```

---

## ❌ CÁC BẢNG KHÔNG CẦN SOFT DELETE

### 1. **ActivityImage**
- Phụ thuộc vào Activity
- Có thể hard delete khi Activity bị xóa
- Dữ liệu không quan trọng

### 2. **ActivitySchedule**
- Phụ thuộc vào Activity
- Dữ liệu tạm thời (theo ngày)
- Có thể hard delete

### 3. **Wishlist**
- Dữ liệu tạm thời, cá nhân
- Không cần lưu lịch sử
- Có thể hard delete

### 4. **CartItem**
- Dữ liệu tạm thời, session-based
- Tự động expire
- Không cần soft delete

### 5. **Notification**
- Dữ liệu tạm thời
- Đã có `isRead` để filter
- Có thể hard delete sau một thời gian

### 6. **UserBehavior**
- Dữ liệu analytics/logs
- Có thể archive và hard delete
- Không cần soft delete

### 7. **SearchHistory**
- Dữ liệu tạm thời
- Có thể xóa sau một thời gian
- Không cần soft delete

### 8. **Recommendation**
- Có thể regenerate từ ML model
- Dữ liệu không cần lưu lịch sử
- Có thể hard delete

### 9. **SupplierRequest**
- Đã có `status` (pending/approved/rejected)
- Có thể lưu lịch sử nhưng không cần soft delete
- Có thể archive sau khi processed

---

## 📋 TÓM TẮT ĐỀ XUẤT

### Bảng cần thêm `deletedAt` (12 bảng):
1. ✅ **User** - Rất quan trọng
2. ✅ **Activity** - Rất quan trọng
3. ✅ **Supplier** - Rất quan trọng
4. ✅ **Booking** - Rất quan trọng (audit)
5. ✅ **Payment** - Rất quan trọng (audit, compliance)
6. ✅ **Review** - Quan trọng
7. ✅ **Category** - Quan trọng
8. ✅ **Destination** - Quan trọng
9. ✅ **City** - Nên có
10. ✅ **Country** - Nên có
11. ✅ **Coupon** - Nên có
12. ✅ **AdminBankAccount** - Nên có

### Bảng không cần soft delete (9 bảng):
- ActivityImage
- ActivitySchedule
- Wishlist
- CartItem
- Notification
- UserBehavior
- SearchHistory
- Recommendation
- SupplierRequest

---

## 🔧 IMPLEMENTATION

### 1. Thêm field vào schema.prisma:
```prisma
model User {
  // ... existing fields
  deletedAt DateTime? @map("deleted_at")
}

model Activity {
  // ... existing fields
  deletedAt DateTime? @map("deleted_at")
}

// ... tương tự cho các bảng khác
```

### 2. Tạo migration:
```bash
npx prisma migrate dev --name add_soft_delete_fields
```

### 3. Cập nhật Prisma queries:
- Thêm filter `where: { deletedAt: null }` cho các query thông thường
- Tạo helper function để query bao gồm cả deleted records (cho admin)

### 4. Cập nhật Service layer:
- Thay `delete()` bằng `update({ deletedAt: new Date() })`
- Thêm method `restore()` để khôi phục
- Thêm method `forceDelete()` cho hard delete (chỉ admin)

---

## 📊 ƯU ĐIỂM SOFT DELETE

1. **Data Recovery**: Có thể khôi phục dữ liệu nếu xóa nhầm
2. **Audit Trail**: Lưu lịch sử thay đổi và xóa
3. **Referential Integrity**: Giữ nguyên foreign keys
4. **Analytics**: Có thể phân tích dữ liệu đã xóa
5. **Compliance**: Đáp ứng yêu cầu pháp lý về lưu trữ dữ liệu

## ⚠️ LƯU Ý

1. **Performance**: Cần index trên `deletedAt` để query nhanh
2. **Storage**: Dữ liệu không bị xóa nên tốn storage hơn
3. **Cleanup**: Có thể cần job để hard delete sau một thời gian (ví dụ: 1-2 năm)
4. **Queries**: Luôn filter `deletedAt IS NULL` trong queries thông thường

---

**Ngày tạo**: [Ngày hiện tại]  
**Version**: 1.0

