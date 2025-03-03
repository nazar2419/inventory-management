/*
  Warnings:

  - The primary key for the `Purchases` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `purchaseId` on the `Purchases` table. All the data in the column will be lost.
  - You are about to drop the `PurchaseSummary` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `purchasedId` to the `Purchases` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Purchases" DROP CONSTRAINT "Purchases_pkey",
DROP COLUMN "purchaseId",
ADD COLUMN     "purchasedId" TEXT NOT NULL,
ADD CONSTRAINT "Purchases_pkey" PRIMARY KEY ("purchasedId");

-- DropTable
DROP TABLE "PurchaseSummary";

-- CreateTable
CREATE TABLE "PurchasesSummary" (
    "purchasesSummaryId" TEXT NOT NULL,
    "totalPurchased" DOUBLE PRECISION NOT NULL,
    "changePercentage" DOUBLE PRECISION NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PurchasesSummary_pkey" PRIMARY KEY ("purchasesSummaryId")
);
