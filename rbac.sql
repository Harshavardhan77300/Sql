
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

-- Contexts Table
DROP TABLE IF EXISTS `contexts`;
CREATE TABLE `contexts` (
    `id` SERIAL,
    `name` VARCHAR(50) UNIQUE NOT NULL,          -- Example: Savings Account, Checking Account, etc.
    `description` TEXT,                          -- Optional description of the context
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

-- Resources Table (Renamed from Pages)
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
    `id` SERIAL,
    `context_id` INT REFERENCES contexts(id) ON DELETE CASCADE, -- Links resource to a context
    `name` VARCHAR(50) NOT NULL,                                -- Example: Deposits, Withdrawal, etc.
    `description` TEXT,                                         -- Optional description of the resource
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

-- Actions Table
DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions` (
    `id` SERIAL PRIMARY KEY,
    `name` VARCHAR(50) UNIQUE NOT NULL,        -- Example: View, Edit, Delete
    `description` TEXT,                        -- Optional description of the action
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

-- Policies Table
DROP TABLE IF EXISTS `policies`;
CREATE TABLE `policies` (
    `id` SERIAL,
    `client_id` INT REFERENCES clients(id) ON DELETE CASCADE,  -- Links policy to a client
    `subject` VARCHAR(50) NOT NULL,                            -- Subject name
    `context_id` INT REFERENCES contexts(id),                  -- Links to the context
    `resource_id` INT REFERENCES resources(id),                -- Links to the resource
    `action_id` INT REFERENCES actions(id),                    -- Links to the action
    `is_active` BOOLEAN DEFAULT TRUE,                          -- Enables or disables the policy
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);
