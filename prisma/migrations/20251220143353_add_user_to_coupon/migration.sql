-- AlterTable
ALTER TABLE "public"."coupons" ADD COLUMN     "user_id" BIGINT;

-- AddForeignKey
ALTER TABLE "public"."coupons" ADD CONSTRAINT "coupons_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
