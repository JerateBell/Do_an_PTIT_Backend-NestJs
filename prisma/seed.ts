import { PrismaClient } from '@prisma/client';
import * as bcrypt from 'bcrypt';

// initialize Prisma Client
const prisma = new PrismaClient();

async function main() {
  // --- Countries ---
  const vn = await prisma.country.create({
    data: {
      code: 'VN',
      name: 'Vietnam',
    },
  });

  const jp = await prisma.country.create({
    data: {
      code: 'JP',
      name: 'Japan',
    },
  });

  const fr = await prisma.country.create({
    data: {
      code: 'FR',
      name: 'France',
    },
  });

  // --- Cities ---
  const hanoi = await prisma.city.create({
    data: { name: 'Hanoi', countryCode: vn.code },
  });

  const tokyo = await prisma.city.create({
    data: { name: 'Tokyo', countryCode: jp.code },
  });

  const paris = await prisma.city.create({
    data: { name: 'Paris', countryCode: fr.code },
  });

  // --- Destinations ---
  await prisma.destination.create({
    data: {
      name: 'Hoan Kiem Lake',
      slug: 'hoan-kiem-lake',
      cityId: hanoi.id,
      imageUrl: 'https://example.com/hoan-kiem.jpg',
    },
  });

  await prisma.destination.create({
    data: {
      name: 'Tokyo Tower',
      slug: 'tokyo-tower',
      cityId: tokyo.id,
      imageUrl: 'https://example.com/tokyo-tower.jpg',
    },
  });

  await prisma.destination.create({
    data: {
      name: 'Eiffel Tower',
      slug: 'eiffel-tower',
      cityId: paris.id,
      imageUrl: 'https://example.com/eiffel-tower.jpg',
    },
  });

  //  ========== SUPPLIER
  const supplierUser = await prisma.user.create({
    data: {
      email: 'supplier@example.com',
      passwordHash: await bcrypt.hash('password456', 10),
      firstName: 'John',
      lastName: 'Supplier',
      phone: '0987654321',
      role: 'supplier',
      status: 'active',
    },
  });

  const supplier = await prisma.supplier.create({
    data: {
      companyName: 'Global Travel Co.',
      email: 'contact@globaltravel.com',
      phone: '+84123456789',
      address: '123 Main Street, Hanoi, Vietnam',
      commissionRate: 15.0, // mặc định cũng ok, có thể bỏ
      status: 'active', // enum UserStatus
      user: {
        connect: { id: supplierUser.id }, // userId là id của user đã có
      }
    },
  });
  // ========== CATEGORY ==========
  const tourCategory = await prisma.category.create({
    data: {
      name: 'Tour',
      slug: 'tour',
      children: {
        create: [
          { name: 'Tour nhiều ngày', slug: 'multi-day-tour' },
          { name: 'Tour 1 ngày', slug: 'one-day-tour' },
        ],
      },
    },
  });

  const ticketCategory = await prisma.category.create({
    data: {
      name: 'Vé',
      slug: 'ticket',
      children: {
        create: [
          { name: 'Vé xe', slug: 'bus-ticket' },
          { name: 'Vé vào chơi', slug: 'entrance-ticket' },
        ],
      },
    },
  });

  // Lấy lại các category con để gắn vào Activity
  const oneDayTour = await prisma.category.findUnique({
    where: { slug: 'one-day-tour' },
  });
  const multiDayTour = await prisma.category.findUnique({
    where: { slug: 'multi-day-tour' },
  });
  const entranceTicket = await prisma.category.findUnique({
    where: { slug: 'entrance-ticket' },
  });

  // ========== ACTIVITY ==========
  // Lưu ý: bạn cần supplierId hợp lệ (ví dụ supplier.id = 1) → mình giả định ở đây
  const supplierId = 1;

  const hoanKiemTour = await prisma.activity.create({
    data: {
      supplierId,
      destinationId: (await prisma.destination.findUnique({
        where: { slug: 'hoan-kiem-lake' },
      }))!.id,
      categoryId: oneDayTour!.id,
      name: 'Tour tham quan Hồ Hoàn Kiếm 1 ngày',
      slug: 'hoan-kiem-1-day-tour',
      description: 'Khám phá Hồ Hoàn Kiếm và phố cổ Hà Nội chỉ trong một ngày.',
      highlights: ['Hồ Hoàn Kiếm', 'Phố cổ Hà Nội'],
      duration: 480, // 8 tiếng
      price: 50.0,
      currency: 'USD',
    },
  });

  const tokyoMultiDay = await prisma.activity.create({
    data: {
      supplierId,
      destinationId: (await prisma.destination.findUnique({
        where: { slug: 'tokyo-tower' },
      }))!.id,
      categoryId: multiDayTour!.id,
      name: 'Tour khám phá Tokyo 3 ngày',
      slug: 'tokyo-3-day-tour',
      description:
        'Hành trình 3 ngày tham quan Tokyo, bao gồm Tokyo Tower và nhiều địa điểm nổi tiếng.',
      highlights: ['Tokyo Tower', 'Shinjuku', 'Asakusa'],
      duration: 4320, // 3 ngày
      price: 300.0,
      currency: 'USD',
    },
  });

  const eiffelTicket = await prisma.activity.create({
    data: {
      supplierId,
      destinationId: (await prisma.destination.findUnique({
        where: { slug: 'eiffel-tower' },
      }))!.id,
      categoryId: entranceTicket!.id,
      name: 'Vé tham quan Tháp Eiffel',
      slug: 'eiffel-tower-ticket',
      description:
        'Vé vào cổng tham quan Tháp Eiffel, biểu tượng của nước Pháp.',
      highlights: ['Tháp Eiffel', 'Paris view'],
      duration: 120,
      price: 25.0,
      currency: 'EUR',
    },
  });

  const password1 = await bcrypt.hash('password123', 10);
  const password2 = await bcrypt.hash('password456', 10);
  const password3 = await bcrypt.hash('password789', 10);

  await prisma.user.createMany({
    data: [
      {
        email: 'admin@example.com',
        passwordHash: password1,
        firstName: 'Admin',
        lastName: 'User',
        phone: '0123456789',
        role: 'admin',
        status: 'active',
      },
      {
        email: 'supplier@example.com',
        passwordHash: password2,
        firstName: 'John',
        lastName: 'Supplier',
        phone: '0987654321',
        role: 'supplier',
        status: 'active',
      },
      {
        email: 'customer@example.com',
        passwordHash: password3,
        firstName: 'Jane',
        lastName: 'Customer',
        phone: '0909090909',
        role: 'customer',
        status: 'active',
      },
    ],
  });

  console.log('✅ Seeded 3 users successfully!');

  console.log('Seed completed:', {
    tourCategory,
    ticketCategory,
    hoanKiemTour,
    tokyoMultiDay,
    eiffelTicket,
  });
}

// execute the main function
main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    // close Prisma Client at the end
    await prisma.$disconnect();
  });
