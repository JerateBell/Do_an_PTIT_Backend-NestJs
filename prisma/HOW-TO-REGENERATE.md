# Cách tạo lại file SQL sau khi sửa script

Sau khi sửa script `generate-large-sql.py`, bạn cần tạo lại file SQL:

```bash
cd Do_an_PTIT_Backend-NestJs/prisma
python generate-large-sql.py
```

File sẽ được tạo ra: `seed-large-data.sql`

## Lưu ý

- File SQL có thể rất lớn (>10MB) nên quá trình tạo có thể mất vài giây
- Nếu file cũ đã tồn tại, nó sẽ bị ghi đè
- Đảm bảo đã chạy `npm run prisma:seed` trước khi import file SQL này

## Sửa lỗi đã thực hiện

✅ **Fixed**: Lỗi "column reference 'time_slot' is ambiguous"
- Đổi tên các biến PL/pgSQL để tránh conflict với tên cột
- Tất cả biến giờ có prefix `v_` để phân biệt rõ ràng

