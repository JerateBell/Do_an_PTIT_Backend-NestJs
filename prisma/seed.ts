import { PrismaClient } from '@prisma/client';
import * as bcrypt from 'bcrypt';
const prisma = new PrismaClient();

async function main() {
  console.log('🌱 Starting seed...');

  const passwordHash = await bcrypt.hash('password123', 10);

  // --- Countries ---
  await prisma.country.upsert({
    where: { code: 'VN' },
    update: {},
    create: { code: 'VN', name: 'Vietnam' },
  });

  await prisma.country.upsert({
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
  await prisma.user.upsert({
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

  // --- Customers ---
  const customers = [
    {
      email: 'customer1@example.com',
      firstName: 'Jane',
      lastName: 'Doe',
      phone: '+84 903456789',
      status: 'active',
    },
    {
      email: 'customer2@example.com',
      firstName: 'Bob',
      lastName: 'Smith',
      phone: '+84 904567890',
      status: 'active',
    },
    {
      email: 'customer3@example.com',
      firstName: 'Alice',
      lastName: 'Johnson',
      phone: '+84 905678901',
      status: 'suspended',
    },
    {
      email: 'customer4@example.com',
      firstName: 'David',
      lastName: 'Brown',
      phone: '+84 906789012',
      status: 'active',
    },
    {
      email: 'customer5@example.com',
      firstName: 'Emily',
      lastName: 'Davis',
      phone: '+84 907890123',
      status: 'active',
    },
    {
      email: 'customer6@example.com',
      firstName: 'Frank',
      lastName: 'Miller',
      phone: '+84 908901234',
      status: 'deleted',
    },
    {
      email: 'customer7@example.com',
      firstName: 'Grace',
      lastName: 'Wilson',
      phone: '+84 909012345',
      status: 'active',
    },
    {
      email: 'customer8@example.com',
      firstName: 'Henry',
      lastName: 'Moore',
      phone: '+84 910123456',
      status: 'active',
    },
    {
      email: 'customer9@example.com',
      firstName: 'Isabel',
      lastName: 'Taylor',
      phone: '+84 911234567',
      status: 'suspended',
    },
    {
      email: 'customer10@example.com',
      firstName: 'Jack',
      lastName: 'Anderson',
      phone: '+84 912345678',
      status: 'active',
    },
    {
      email: 'customer11@example.com',
      firstName: 'Karen',
      lastName: 'Thomas',
      phone: '+84 913456789',
      status: 'active',
    },
    {
      email: 'customer12@example.com',
      firstName: 'Leo',
      lastName: 'Jackson',
      phone: '+84 914567890',
      status: 'active',
    },
    {
      email: 'customer13@example.com',
      firstName: 'Maria',
      lastName: 'White',
      phone: '+84 915678901',
      status: 'deleted',
    },
    {
      email: 'customer14@example.com',
      firstName: 'Nathan',
      lastName: 'Harris',
      phone: '+84 916789012',
      status: 'active',
    },
    {
      email: 'customer15@example.com',
      firstName: 'Olivia',
      lastName: 'Martin',
      phone: '+84 917890123',
      status: 'active',
    },
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

  // --- Supplier ---
  const supplier = await prisma.supplier.upsert({
    where: { userId: supplierUser.id },
    update: {},
    create: {
      companyName: 'Vietnam Adventures Co.',
      businessEmail: 'contact@vnadventures.com',
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

  // --- Activities ---
  const halongCruise = await prisma.activity.upsert({
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
      status: 'active',
    },
  });

  const cultureActivity = await prisma.activity.upsert({
    where: { slug: 'hanoi-old-quarter-walking-tour' },
    update: {},
    create: {
      supplierId: supplier.id,
      destinationId: destination.id,
      categoryId: culture.id,
      name: 'Hanoi Old Quarter Walking Tour',
      slug: 'hanoi-old-quarter-walking-tour',
      description:
        'Explore the historic Old Quarter of Hanoi with a local guide.',
      price: 45.0,
      duration: 120,
      rating: 4.5,
      freeCancellation: true,
      instantConfirmation: true,
      status: 'active',
    },
  });

  // --- Activity Schedules ---
  const today = new Date();
  const tomorrow = new Date(today);
  tomorrow.setDate(tomorrow.getDate() + 1);
  const nextWeek = new Date(today);
  nextWeek.setDate(nextWeek.getDate() + 7);

  const schedule1 = await prisma.activitySchedule.upsert({
    where: {
      activityId_date_timeSlot: {
        activityId: halongCruise.id,
        date: tomorrow,
        timeSlot: '09:00',
      },
    },
    update: {},
    create: {
      activityId: halongCruise.id,
      date: tomorrow,
      timeSlot: '09:00',
      availableSpots: 20,
      bookedSpots: 5,
      price: 120.0,
    },
  });

  const schedule2 = await prisma.activitySchedule.upsert({
    where: {
      activityId_date_timeSlot: {
        activityId: halongCruise.id,
        date: nextWeek,
        timeSlot: '14:00',
      },
    },
    update: {},
    create: {
      activityId: halongCruise.id,
      date: nextWeek,
      timeSlot: '14:00',
      availableSpots: 20,
      bookedSpots: 3,
      price: 120.0,
    },
  });

  const schedule3 = await prisma.activitySchedule.upsert({
    where: {
      activityId_date_timeSlot: {
        activityId: cultureActivity.id,
        date: tomorrow,
        timeSlot: '10:00',
      },
    },
    update: {},
    create: {
      activityId: cultureActivity.id,
      date: tomorrow,
      timeSlot: '10:00',
      availableSpots: 15,
      bookedSpots: 2,
      price: 45.0,
    },
  });

  // Get customer users
  const customer1 = await prisma.user.findUnique({
    where: { email: 'customer1@example.com' },
  });
  const customer2 = await prisma.user.findUnique({
    where: { email: 'customer2@example.com' },
  });
  const customer4 = await prisma.user.findUnique({
    where: { email: 'customer4@example.com' },
  });
  const customer5 = await prisma.user.findUnique({
    where: { email: 'customer5@example.com' },
  });

  // --- Bookings ---
  const booking1 = await prisma.booking.upsert({
    where: { bookingRef: 'BK001' },
    update: {},
    create: {
      bookingRef: 'BK001',
      userId: customer1!.id,
      activityId: halongCruise.id,
      scheduleId: schedule1.id,
      supplierId: supplier.id,
      customerName: `${customer1!.firstName} ${customer1!.lastName}`,
      customerEmail: customer1!.email,
      customerPhone: customer1!.phone,
      bookingDate: tomorrow,
      participants: 2,
      subtotal: 240.0,
      discount: 0,
      total: 240.0,
      currency: 'USD',
      status: 'confirmed',
      paymentStatus: 'paid',
    },
  });

  const booking2 = await prisma.booking.upsert({
    where: { bookingRef: 'BK002' },
    update: {},
    create: {
      bookingRef: 'BK002',
      userId: customer2!.id,
      activityId: halongCruise.id,
      scheduleId: schedule1.id,
      supplierId: supplier.id,
      customerName: `${customer2!.firstName} ${customer2!.lastName}`,
      customerEmail: customer2!.email,
      customerPhone: customer2!.phone,
      bookingDate: tomorrow,
      participants: 3,
      subtotal: 360.0,
      discount: 20.0,
      total: 340.0,
      currency: 'USD',
      status: 'confirmed',
      paymentStatus: 'paid',
    },
  });

  const booking3 = await prisma.booking.upsert({
    where: { bookingRef: 'BK003' },
    update: {},
    create: {
      bookingRef: 'BK003',
      userId: customer4!.id,
      activityId: halongCruise.id,
      scheduleId: schedule2.id,
      supplierId: supplier.id,
      customerName: `${customer4!.firstName} ${customer4!.lastName}`,
      customerEmail: customer4!.email,
      customerPhone: customer4!.phone,
      bookingDate: nextWeek,
      participants: 2,
      subtotal: 240.0,
      discount: 0,
      total: 240.0,
      currency: 'USD',
      status: 'pending',
      paymentStatus: 'pending',
    },
  });

  const booking4 = await prisma.booking.upsert({
    where: { bookingRef: 'BK004' },
    update: {},
    create: {
      bookingRef: 'BK004',
      userId: customer5!.id,
      activityId: cultureActivity.id,
      scheduleId: schedule3.id,
      supplierId: supplier.id,
      customerName: `${customer5!.firstName} ${customer5!.lastName}`,
      customerEmail: customer5!.email,
      customerPhone: customer5!.phone,
      bookingDate: tomorrow,
      participants: 1,
      subtotal: 45.0,
      discount: 0,
      total: 45.0,
      currency: 'USD',
      status: 'completed',
      paymentStatus: 'paid',
    },
  });

  const booking5 = await prisma.booking.upsert({
    where: { bookingRef: 'BK005' },
    update: {},
    create: {
      bookingRef: 'BK005',
      userId: customer1!.id,
      activityId: cultureActivity.id,
      scheduleId: schedule3.id,
      supplierId: supplier.id,
      customerName: `${customer1!.firstName} ${customer1!.lastName}`,
      customerEmail: customer1!.email,
      customerPhone: customer1!.phone,
      bookingDate: tomorrow,
      participants: 1,
      subtotal: 45.0,
      discount: 5.0,
      total: 40.0,
      currency: 'USD',
      status: 'cancelled',
      paymentStatus: 'refunded',
    },
  });

  // --- Payments ---
  await prisma.payment.upsert({
    where: { id: 1 },
    update: {},
    create: {
      bookingId: booking1.id,
      method: 'credit_card',
      amount: 240.0,
      currency: 'USD',
      transactionId: 'TXN001',
      status: 'paid',
    },
  });

  await prisma.payment.upsert({
    where: { id: 2 },
    update: {},
    create: {
      bookingId: booking2.id,
      method: 'paypal',
      amount: 340.0,
      currency: 'USD',
      transactionId: 'TXN002',
      status: 'paid',
    },
  });

  await prisma.payment.upsert({
    where: { id: 3 },
    update: {},
    create: {
      bookingId: booking4.id,
      method: 'credit_card',
      amount: 45.0,
      currency: 'USD',
      transactionId: 'TXN004',
      status: 'paid',
    },
  });

  await prisma.payment.upsert({
    where: { id: 4 },
    update: {},
    create: {
      bookingId: booking5.id,
      method: 'credit_card',
      amount: 40.0,
      currency: 'USD',
      transactionId: 'TXN005',
      status: 'refunded',
    },
  });

  // --- Reviews ---
  await prisma.review.upsert({
    where: { bookingId: booking1.id },
    update: {},
    create: {
      bookingId: booking1.id,
      userId: customer1!.id,
      activityId: halongCruise.id,
      rating: 5,
      comment:
        'Amazing experience! The cruise was fantastic and the scenery was breathtaking.',
    },
  });

  await prisma.review.upsert({
    where: { bookingId: booking2.id },
    update: {},
    create: {
      bookingId: booking2.id,
      userId: customer2!.id,
      activityId: halongCruise.id,
      rating: 4,
      comment:
        'Great tour, but the weather could have been better. Overall a good experience.',
    },
  });

  await prisma.review.upsert({
    where: { bookingId: booking4.id },
    update: {},
    create: {
      bookingId: booking4.id,
      userId: customer5!.id,
      activityId: cultureActivity.id,
      rating: 5,
      comment:
        'Loved the walking tour! The guide was very knowledgeable about Hanoi history.',
    },
  });

  console.log('✅ Seed completed successfully!');
}

// Execute main
main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
