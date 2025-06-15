
-- Products Table
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    `productReference` VARCHAR(50) UNIQUE NOT NULL,
    `productName` VARCHAR(100) NOT NULL,
    `productDescription` TEXT,
    `currency` VARCHAR(100) NOT NULL,
    `productPrice` DECIMAL(10,2) NOT NULL,
    `productStatus` VARCHAR(20) NOT NULL CHECK (status IN ('active', 'inactive', 'archived')),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`platform_id`) REFERENCES `ecommerce_platforms`(`id`) ON DELETE CASCADE
);

-- Orders Table
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    `currency` VARCHAR(100) NOT NULL,
    `platformType` VARCHAR(50) UNIQUE NOT NULL,
    `orderReference` VARCHAR(50) UNIQUE NOT NULL,
    `orderStatus` VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'processing', 'shipped', 'delivered', 'cancelled', 'refunded')),
    `orderAmount` DECIMAL(10,2) NOT NULL,
    `order_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `customer_reference` VARCHAR(50) NOT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`platform_id`) REFERENCES `ecommerce_platforms`(`id`) ON DELETE CASCADE
);

DROP TABLE IF EXIST `ecommercefacility`;
CREATE TABLE `ecommercefacility` (
    `ECommerceInstanceReference` VARCHAR(50) PRIMARY KEY,
    `ECommercePlatformName` VARCHAR(100),
    `MerchantReference` VARCHAR(50),
    `ProductReference` VARCHAR(50),
    `OrderReference` VARCHAR(50),
    `PaymentReference` VARCHAR(50)
);

DROP TABLE IF EXISTS `merchant`;
CREATE TABLE  `merchant` (
    `MerchantReference` VARCHAR(50) PRIMARY KEY,
    `MerchantName` VARCHAR(100) NOT NULL,
    `MerchantTaxID` VARCHAR(50),
    `MerchantStatus` ENUM('Active', 'Inactive', 'Suspended') NOT NULL,
    `ECommerceInstanceReference` VARCHAR(50),
    FOREIGN KEY (ECommerceInstanceReference) REFERENCES ecommercefacility(ECommerceInstanceReference)
);

DROP TABLE IF EXISTS `payment`;
CREATE TABLE  `payment` (
    `PaymentReference` VARCHAR(50) PRIMARY KEY,
    `PaymentAmount` DECIMAL(10, 2) NOT NULL,
    `PaymentMethod` ENUM('CreditCard', 'PayPal', 'BankTransfer') NOT NULL,
    `PaymentStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `ECommerceInstanceReference` VARCHAR(50),
    `OrderReference` VARCHAR(50),
    FOREIGN KEY (ECommerceInstanceReference) REFERENCES ecommercefacility(ECommerceInstanceReference),
    FOREIGN KEY (OrderReference) REFERENCES orders(OrderReference)

);

DROP TABLE IF EXISTS `merchantpayout`:
CREATE TABLE `merchantpayout` (
    `PayoutReference` VARCHAR(50) PRIMARY KEY,
    `PayoutAmount` DECIMAL(10, 2) NOT NULL,
    `PayoutMethod` ENUM('BankTransfer', 'PayPal') NOT NULL,
    `PayoutStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `ECommerceInstanceReference` VARCHAR(50),
    `MerchantReference` VARCHAR(50),
    FOREIGN KEY (ECommerceInstanceReference) REFERENCES ecommercefacility(ECommerceInstanceReference),
    FOREIGN KEY (MerchantReference) REFERENCES merchant(MerchantReference)
);
