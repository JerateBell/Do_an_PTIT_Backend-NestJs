-- CreateEnum
CREATE TYPE "public"."RequestType" AS ENUM ('become_supplier', 'add_country', 'add_city', 'add_destination');

-- CreateEnum
CREATE TYPE "public"."RequestStatus" AS ENUM ('pending', 'approved', 'rejected');

-- CreateTable
CREATE TABLE "public"."supplier_requests" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT NOT NULL,
    "type" "public"."RequestType" NOT NULL,
    "status" "public"."RequestStatus" NOT NULL DEFAULT 'pending',
    "request_data" JSONB NOT NULL,
    "admin_notes" TEXT,
    "processed_by" BIGINT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "processed_at" TIMESTAMP(3),

    CONSTRAINT "supplier_requests_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "supplier_requests_user_id_idx" ON "public"."supplier_requests"("user_id");

-- CreateIndex
CREATE INDEX "supplier_requests_type_idx" ON "public"."supplier_requests"("type");

-- CreateIndex
CREATE INDEX "supplier_requests_status_idx" ON "public"."supplier_requests"("status");

-- AddForeignKey
ALTER TABLE "public"."supplier_requests" ADD CONSTRAINT "supplier_requests_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
