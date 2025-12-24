/*
  Warnings:

  - You are about to drop the `search_history` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_behaviors` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "public"."search_history" DROP CONSTRAINT "search_history_user_id_fkey";

-- DropForeignKey
ALTER TABLE "public"."user_behaviors" DROP CONSTRAINT "user_behaviors_activity_id_fkey";

-- DropForeignKey
ALTER TABLE "public"."user_behaviors" DROP CONSTRAINT "user_behaviors_user_id_fkey";

-- AlterTable
ALTER TABLE "public"."activities" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."admin_bank_accounts" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."bookings" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."categories" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."cities" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."countries" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."coupons" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."destinations" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."payments" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."reviews" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."suppliers" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."users" ADD COLUMN     "deleted_at" TIMESTAMP(3);

-- DropTable
DROP TABLE "public"."search_history";

-- DropTable
DROP TABLE "public"."user_behaviors";

-- CreateIndex
CREATE INDEX "activities_deleted_at_idx" ON "public"."activities"("deleted_at");

-- CreateIndex
CREATE INDEX "admin_bank_accounts_deleted_at_idx" ON "public"."admin_bank_accounts"("deleted_at");

-- CreateIndex
CREATE INDEX "bookings_deleted_at_idx" ON "public"."bookings"("deleted_at");

-- CreateIndex
CREATE INDEX "categories_deleted_at_idx" ON "public"."categories"("deleted_at");

-- CreateIndex
CREATE INDEX "cities_deleted_at_idx" ON "public"."cities"("deleted_at");

-- CreateIndex
CREATE INDEX "countries_deleted_at_idx" ON "public"."countries"("deleted_at");

-- CreateIndex
CREATE INDEX "coupons_deleted_at_idx" ON "public"."coupons"("deleted_at");

-- CreateIndex
CREATE INDEX "destinations_deleted_at_idx" ON "public"."destinations"("deleted_at");

-- CreateIndex
CREATE INDEX "payments_deleted_at_idx" ON "public"."payments"("deleted_at");

-- CreateIndex
CREATE INDEX "reviews_deleted_at_idx" ON "public"."reviews"("deleted_at");

-- CreateIndex
CREATE INDEX "suppliers_deleted_at_idx" ON "public"."suppliers"("deleted_at");

-- CreateIndex
CREATE INDEX "users_deleted_at_idx" ON "public"."users"("deleted_at");
