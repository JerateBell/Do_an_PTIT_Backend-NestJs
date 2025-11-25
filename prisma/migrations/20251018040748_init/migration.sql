/*
  Warnings:

  - You are about to drop the column `status` on the `suppliers` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[name,country_code]` on the table `cities` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId]` on the table `suppliers` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `userId` to the `suppliers` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "public"."users" DROP CONSTRAINT "users_supplier_id_fkey";

-- AlterTable
ALTER TABLE "public"."suppliers" DROP COLUMN "status",
ADD COLUMN     "userId" BIGINT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "cities_name_country_code_key" ON "public"."cities"("name", "country_code");

-- CreateIndex
CREATE UNIQUE INDEX "suppliers_userId_key" ON "public"."suppliers"("userId");

-- AddForeignKey
ALTER TABLE "public"."suppliers" ADD CONSTRAINT "suppliers_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
