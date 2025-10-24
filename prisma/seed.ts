import { PrismaClient } from '@prisma/client';
import * as bcrypt from 'bcrypt';
const prisma = new PrismaClient();

async function main() {
  console.log('🌱 Starting seed...');
  
  const passwordHash = await bcrypt.hash('password123', 10);

  // --- Countries ---
  const vn = await prisma.country.upsert({
    where: { code: 'VN' },
    update: {},
    create: { code: 'VN', name: 'Vietnam' },
  });

  const us = await prisma.country.upsert({
    where: { code: 'US' },
    update: {},
    create: { code: 'US', name: 'United States' },
  });

  await prisma.country.upsert({
    where: { code: 'JP' },
    update: {},
    create: { code: 'JP', name: 'Japan' },
  });

  await prisma.country.upsert({
    where: { code: 'KR' },
    update: {},
    create: { code: 'KR', name: 'South Korea' },
  });

  await prisma.country.upsert({
    where: { code: 'TH' },
    update: {},
    create: { code: 'TH', name: 'Thailand' },
  });

  await prisma.country.upsert({
    where: { code: 'SG' },
    update: {},
    create: { code: 'SG', name: 'Singapore' },
  });

  // --- Cities ---
  const hanoi = await prisma.city.upsert({
    where: { name_countryCode: { name: 'Hanoi', countryCode: 'VN' } },
    update: {},
    create: { name: 'Hanoi', countryCode: 'VN' },
  });

  const hcm = await prisma.city.upsert({
    where: {
      name_countryCode: { name: 'Ho Chi Minh City', countryCode: 'VN' },
    },
    update: {},
    create: { name: 'Ho Chi Minh City', countryCode: 'VN' },
  });

  const nyc = await prisma.city.upsert({
    where: { name_countryCode: { name: 'New York', countryCode: 'US' } },
    update: {},
    create: { name: 'New York', countryCode: 'US' },
  });

  await prisma.city.upsert({
    where: { name_countryCode: { name: 'Da Nang', countryCode: 'VN' } },
    update: {},
    create: { name: 'Da Nang', countryCode: 'VN' },
  });

  await prisma.city.upsert({
    where: { name_countryCode: { name: 'Nha Trang', countryCode: 'VN' } },
    update: {},
    create: { name: 'Nha Trang', countryCode: 'VN' },
  });

  await prisma.city.upsert({
    where: { name_countryCode: { name: 'Los Angeles', countryCode: 'US' } },
    update: {},
    create: { name: 'Los Angeles', countryCode: 'US' },
  });

  await prisma.city.upsert({
    where: { name_countryCode: { name: 'San Francisco', countryCode: 'US' } },
    update: {},
    create: { name: 'San Francisco', countryCode: 'US' },
  });

  // --- Categories ---
  const adventure = await prisma.category.upsert({
    where: { slug: 'adventure' },
    update: {},
    create: { name: 'Adventure', slug: 'adventure' },
  });

  const culture = await prisma.category.upsert({
    where: { slug: 'culture' },
    update: {},
    create: { name: 'Culture', slug: 'culture' },
  });

  // --- Admin Users ---
  const admin = await prisma.user.upsert({
    where: { email: 'admin@example.com' },
    update: {},
    create: {
      email: 'admin@example.com',
      passwordHash,
      firstName: 'Admin',
      lastName: 'User',
      phone: '+84 901234567',
      role: 'admin',
    },
  });

  await prisma.user.upsert({
    where: { email: 'admin2@example.com' },
    update: {},
    create: {
      email: 'admin2@example.com',
      passwordHash,
      firstName: 'Sarah',
      lastName: 'Admin',
      phone: '+84 901234568',
      role: 'admin',
    },
  });

  // --- Supplier Users ---
  const supplierUser = await prisma.user.upsert({
    where: { email: 'supplier@example.com' },
    update: {},
    create: {
      email: 'supplier@example.com',
      passwordHash,
      firstName: 'John',
      lastName: 'Supplier',
      phone: '+84 902345678',
      role: 'supplier',
    },
  });

  await prisma.user.upsert({
    where: { email: 'supplier2@example.com' },
    update: {},
    create: {
      email: 'supplier2@example.com',
      passwordHash,
      firstName: 'Emma',
      lastName: 'Travel',
      phone: '+84 902345679',
      role: 'supplier',
    },
  });

  await prisma.user.upsert({
    where: { email: 'supplier3@example.com' },
    update: {},
    create: {
      email: 'supplier3@example.com',
      passwordHash,
      firstName: 'Michael',
      lastName: 'Tours',
      phone: '+84 902345680',
      role: 'supplier',
    },
  });
  
  // --- Customer Users (15 customers) ---
  const customers = [
    { email: 'customer1@example.com', firstName: 'Jane', lastName: 'Doe', phone: '+84 903456789', status: 'active' },
    { email: 'customer2@example.com', firstName: 'Bob', lastName: 'Smith', phone: '+84 904567890', status: 'active' },
    { email: 'customer3@example.com', firstName: 'Alice', lastName: 'Johnson', phone: '+84 905678901', status: 'suspended' },
    { email: 'customer4@example.com', firstName: 'David', lastName: 'Brown', phone: '+84 906789012', status: 'active' },
    { email: 'customer5@example.com', firstName: 'Emily', lastName: 'Davis', phone: '+84 907890123', status: 'active' },
    { email: 'customer6@example.com', firstName: 'Frank', lastName: 'Miller', phone: '+84 908901234', status: 'deleted' },
    { email: 'customer7@example.com', firstName: 'Grace', lastName: 'Wilson', phone: '+84 909012345', status: 'active' },
    { email: 'customer8@example.com', firstName: 'Henry', lastName: 'Moore', phone: '+84 910123456', status: 'active' },
    { email: 'customer9@example.com', firstName: 'Isabel', lastName: 'Taylor', phone: '+84 911234567', status: 'suspended' },
    { email: 'customer10@example.com', firstName: 'Jack', lastName: 'Anderson', phone: '+84 912345678', status: 'active' },
    { email: 'customer11@example.com', firstName: 'Karen', lastName: 'Thomas', phone: '+84 913456789', status: 'active' },
    { email: 'customer12@example.com', firstName: 'Leo', lastName: 'Jackson', phone: '+84 914567890', status: 'active' },
    { email: 'customer13@example.com', firstName: 'Maria', lastName: 'White', phone: '+84 915678901', status: 'deleted' },
    { email: 'customer14@example.com', firstName: 'Nathan', lastName: 'Harris', phone: '+84 916789012', status: 'active' },
    { email: 'customer15@example.com', firstName: 'Olivia', lastName: 'Martin', phone: '+84 917890123', status: 'active' },
  ];

  for (const customer of customers) {
    await prisma.user.upsert({
      where: { email: customer.email },
      update: {},
      create: {
        email: customer.email,
        passwordHash,
        firstName: customer.firstName,
        lastName: customer.lastName,
        phone: customer.phone,
        role: 'customer',
        status: customer.status as any,
      },
    });
  }

  const supplier = await prisma.supplier.upsert({
    where: { userId: supplierUser.id },
    update: {},
    create: {
      companyName: 'Vietnam Adventures Co.',
      email: 'contact@vnadventures.com',
      userId: supplierUser.id,
      phone: '+84 123456789',
      address: 'Hanoi, Vietnam',
      commissionRate: 15.0,
    },
  });

  // --- Destinations ---
  const destination = await prisma.destination.upsert({
    where: { slug: 'halong-bay' },
    update: {},
    create: {
      name: 'Ha Long Bay',
      slug: 'halong-bay',
      cityId: hanoi.id,
      imageUrl: 'https://example.com/halong.jpg',
    },
  });

  await prisma.destination.upsert({
    where: { slug: 'hoan-kiem-lake' },
    update: {},
    create: {
      name: 'Hoan Kiem Lake',
      slug: 'hoan-kiem-lake',
      cityId: hanoi.id,
    },
  });

  await prisma.destination.upsert({
    where: { slug: 'ben-thanh-market' },
    update: {},
    create: {
      name: 'Ben Thanh Market',
      slug: 'ben-thanh-market',
      cityId: hcm.id,
    },
  });

  await prisma.destination.upsert({
    where: { slug: 'statue-of-liberty' },
    update: {},
    create: {
      name: 'Statue of Liberty',
      slug: 'statue-of-liberty',
      cityId: nyc.id,
    },
  });

  // --- Activity ---
  await prisma.activity.upsert({
    where: { slug: 'halong-cruise' },
    update: {},
    create: {
      supplierId: supplier.id,
      destinationId: destination.id,
      categoryId: adventure.id,
      name: 'Ha Long Bay Cruise',
      slug: 'halong-cruise',
      description: 'A breathtaking cruise through Ha Long Bay.',
      price: 120.0,
      duration: 180,
      rating: 4.8,
      freeCancellation: true,
      instantConfirmation: true,
    },
  });

  console.log('✅ Seed completed successfully!');
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
