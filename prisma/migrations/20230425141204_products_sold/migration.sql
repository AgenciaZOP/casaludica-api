-- DropIndex
DROP INDEX `categories_colection_fkey` ON `categories`;

-- DropIndex
DROP INDEX `products_category_fkey` ON `products`;

-- AlterTable
ALTER TABLE `products` ADD COLUMN `sold` INTEGER NOT NULL DEFAULT 0;

-- AddForeignKey
ALTER TABLE `categories` ADD CONSTRAINT `categories_colection_fkey` FOREIGN KEY (`colection`) REFERENCES `colections`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_category_fkey` FOREIGN KEY (`category`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
