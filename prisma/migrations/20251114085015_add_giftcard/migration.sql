-- AlterTable
ALTER TABLE "public"."users" ADD COLUMN     "balance" INTEGER NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "public"."GiftCard" (
    "id" SERIAL NOT NULL,
    "amount" INTEGER NOT NULL,
    "message" TEXT,
    "senderId" BIGINT NOT NULL,
    "recipientId" BIGINT NOT NULL,
    "sentAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "status" TEXT NOT NULL DEFAULT 'unused',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "GiftCard_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."GiftCard" ADD CONSTRAINT "GiftCard_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."GiftCard" ADD CONSTRAINT "GiftCard_recipientId_fkey" FOREIGN KEY ("recipientId") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
