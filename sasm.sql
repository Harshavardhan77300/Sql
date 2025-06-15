
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
    `eCommerceInstanceReference` VARCHAR(50) PRIMARY KEY,
    `eCommercePlatformName` VARCHAR(100),
    `merchantReference` VARCHAR(50),
    `productReference` VARCHAR(50),
    `orderReference` VARCHAR(50),
    `paymentReference` VARCHAR(50)
);

DROP TABLE IF EXISTS `merchant`;
CREATE TABLE  `merchant` (
    `merchantReference` VARCHAR(50) PRIMARY KEY,
    `merchantName` VARCHAR(100) NOT NULL,
    `merchantTaxID` VARCHAR(50),
    `merchantStatus` ENUM('Active', 'Inactive', 'Suspended') NOT NULL,
    `eCommerceInstanceReference` VARCHAR(50),
    FOREIGN KEY (eCommerceInstanceReference) REFERENCES ecommercefacility(eCommerceInstanceReference)
);

DROP TABLE IF EXISTS `payment`;
CREATE TABLE  `payment` (
    `paymentReference` VARCHAR(50) PRIMARY KEY,
    `paymentAmount` DECIMAL(10, 2) NOT NULL,
    `paymentMethod` ENUM('CreditCard', 'PayPal', 'BankTransfer') NOT NULL,
    `paymentStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `eCommerceInstanceReference` VARCHAR(50),
    `orderReference` VARCHAR(50),
    FOREIGN KEY (eCommerceInstanceReference) REFERENCES ecommercefacility(eCommerceInstanceReference),
    FOREIGN KEY (orderReference) REFERENCES orders(orderReference)

);

DROP TABLE IF EXISTS `merchantpayout`:
CREATE TABLE `merchantpayout` (
    `payoutReference` VARCHAR(50) PRIMARY KEY,
    `payoutAmount` DECIMAL(10, 2) NOT NULL,
    `payoutMethod` ENUM('BankTransfer', 'PayPal') NOT NULL,
    `payoutStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `eCommerceInstanceReference` VARCHAR(50),
    `merchantReference` VARCHAR(50),
    FOREIGN KEY (eCommerceInstanceReference) REFERENCES ecommercefacility(eCommerceInstanceReference),
    FOREIGN KEY (merchantReference) REFERENCES merchant(merchantReference)
);
