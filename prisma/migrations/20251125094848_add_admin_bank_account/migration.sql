-- CreateTable
CREATE TABLE "public"."admin_bank_accounts" (
    "id" SERIAL NOT NULL,
    "bankName" VARCHAR(100) NOT NULL,
    "accountNo" VARCHAR(50) NOT NULL,
    "ownerName" VARCHAR(100) NOT NULL,
    "qrCode" VARCHAR(255),
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "admin_bank_accounts_pkey" PRIMARY KEY ("id")
);
