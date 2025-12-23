# HƯỚNG DẪN SỬ DỤNG SOFT DELETE

## Tổng quan

Đã thêm field `deletedAt` (DateTime nullable) vào 12 bảng và xóa 2 bảng không sử dụng:
- ✅ Đã thêm `deletedAt` vào: User, Supplier, Activity, Booking, Payment, Review, Category, Destination, City, Country, Coupon, AdminBankAccount
- ✅ Đã xóa: UserBehavior, SearchHistory

## Cách sử dụng trong Prisma

### 1. Query bình thường (chỉ lấy records chưa bị xóa)

```typescript
// ❌ SAI - Lấy cả records đã xóa
const users = await prisma.user.findMany();

// ✅ ĐÚNG - Chỉ lấy records chưa bị xóa
const users = await prisma.user.findMany({
  where: {
    deletedAt: null
  }
});
```

### 2. Soft Delete (đánh dấu xóa)

```typescript
// ❌ SAI - Hard delete
await prisma.user.delete({
  where: { id: userId }
});

// ✅ ĐÚNG - Soft delete
await prisma.user.update({
  where: { id: userId },
  data: {
    deletedAt: new Date()
  }
});
```

### 3. Restore (khôi phục)

```typescript
// Khôi phục record đã bị xóa
await prisma.user.update({
  where: { id: userId },
  data: {
    deletedAt: null
  }
});
```

### 4. Query bao gồm cả records đã xóa (cho admin)

```typescript
// Lấy tất cả, kể cả đã xóa
const allUsers = await prisma.user.findMany({
  where: {} // Không filter deletedAt
});

// Lấy chỉ records đã xóa
const deletedUsers = await prisma.user.findMany({
  where: {
    deletedAt: { not: null }
  }
});
```

### 5. Hard Delete (chỉ admin, cẩn thận!)

```typescript
// Hard delete - chỉ dùng khi thực sự cần xóa vĩnh viễn
await prisma.user.delete({
  where: { id: userId }
});
```

## Cập nhật Services

### Ví dụ: UserService

```typescript
// Before
async remove(id: bigint) {
  return this.prisma.user.delete({
    where: { id }
  });
}

// After - Soft Delete
async remove(id: bigint) {
  return this.prisma.user.update({
    where: { id },
    data: {
      deletedAt: new Date()
    }
  });
}

// Find all - chỉ lấy chưa xóa
async findAll() {
  return this.prisma.user.findMany({
    where: {
      deletedAt: null
    }
  });
}

// Find one - chỉ lấy chưa xóa
async findOne(id: bigint) {
  return this.prisma.user.findFirst({
    where: {
      id,
      deletedAt: null
    }
  });
}

// Restore
async restore(id: bigint) {
  return this.prisma.user.update({
    where: { id },
    data: {
      deletedAt: null
    }
  });
}

// Hard delete (chỉ admin)
async forceDelete(id: bigint) {
  return this.prisma.user.delete({
    where: { id }
  });
}
```

## Các bảng đã có soft delete

1. ✅ **User** - `deletedAt`
2. ✅ **Supplier** - `deletedAt`
3. ✅ **Activity** - `deletedAt`
4. ✅ **Booking** - `deletedAt`
5. ✅ **Payment** - `deletedAt`
6. ✅ **Review** - `deletedAt`
7. ✅ **Category** - `deletedAt`
8. ✅ **Destination** - `deletedAt`
9. ✅ **City** - `deletedAt`
10. ✅ **Country** - `deletedAt`
11. ✅ **Coupon** - `deletedAt`
12. ✅ **AdminBankAccount** - `deletedAt`

## Các bảng đã xóa

1. ❌ **UserBehavior** - Đã xóa khỏi schema
2. ❌ **SearchHistory** - Đã xóa khỏi schema

## Lưu ý quan trọng

1. **Luôn filter `deletedAt: null`** trong các query thông thường
2. **Index đã được tạo** trên `deletedAt` để query nhanh
3. **Foreign keys vẫn hoạt động** với soft delete
4. **Cần cập nhật tất cả services** để sử dụng soft delete thay vì hard delete
5. **Payment và Booking** - Không bao giờ nên hard delete (audit requirement)

## Migration đã apply

Migration: `20251223065248_add_soft_delete_and_remove_unused_tables`
- ✅ Đã thêm `deleted_at` column vào 12 bảng
- ✅ Đã tạo index trên `deleted_at` cho tất cả bảng
- ✅ Đã xóa bảng `user_behaviors` và `search_history`
- ✅ Đã xóa foreign keys liên quan

## Next Steps

1. Cập nhật tất cả services để sử dụng soft delete
2. Thêm method `restore()` cho các services
3. Thêm method `forceDelete()` cho admin (nếu cần)
4. Cập nhật controllers để hỗ trợ restore
5. Cập nhật frontend để hiển thị và quản lý soft deleted records

---

**Ngày tạo**: 2025-12-23  
**Version**: 1.0

