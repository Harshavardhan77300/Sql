
-- Clients Table
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
    `id` SERIAL,
    `name` VARCHAR(50) UNIQUE NOT NULL,        -- Example: Fincuro, Ust, Iravx
    `type` VARCHAR(10) NOT NULL CHECK (type IN ('B2B', 'B2C')), -- Client type: B2B or B2C
    `description` TEXT,                        -- Optional description
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);


-- Subjects Table (Renamed from User Subjects)
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
    `id` SERIAL,
    `subject` VARCHAR(50) NOT NULL,                           -- Subject: CEO, Director, etc.
    `client_id` INT REFERENCES clients(id) ON DELETE CASCADE, -- Links subject to a client
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

