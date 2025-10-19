import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function main() {
  console.log('🌱 Starting seed...');

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

  // --- Admin User ---
  const admin = await prisma.user.upsert({
    where: { email: 'admin@example.com' },
    update: {},
    create: {
      email: 'admin@example.com',
      passwordHash: 'hashed_password_here', // TODO: thay bằng hash thật
      firstName: 'Admin',
      lastName: 'User',
      role: 'admin',
    },
  });

  // --- Supplier ---
  const supplierUser = await prisma.user.upsert({
    where: { email: 'supplier@example.com' },
    update: {},
    create: {
      email: 'supplier@example.com',
      passwordHash: 'hashed_password_here',
      firstName: 'John',
      lastName: 'Supplier',
      role: 'supplier',
    },
  });

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

  // --- Destination ---
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
