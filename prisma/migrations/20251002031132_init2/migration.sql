/*
  Warnings:

  - You are about to drop the column `city` on the `destinations` table. All the data in the column will be lost.
  - You are about to drop the column `country_code` on the `destinations` table. All the data in the column will be lost.
  - Added the required column `city_id` to the `destinations` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "public"."destinations" DROP CONSTRAINT "destinations_country_code_fkey";

-- AlterTable
ALTER TABLE "public"."destinations" DROP COLUMN "city",
DROP COLUMN "country_code",
ADD COLUMN     "city_id" BIGINT NOT NULL;

-- CreateTable
CREATE TABLE "public"."cities" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "country_code" VARCHAR(2) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "cities_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."cities" ADD CONSTRAINT "cities_country_code_fkey" FOREIGN KEY ("country_code") REFERENCES "public"."countries"("code") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."destinations" ADD CONSTRAINT "destinations_city_id_fkey" FOREIGN KEY ("city_id") REFERENCES "public"."cities"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
