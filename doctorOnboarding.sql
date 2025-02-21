CREATE DATABASE IF NOT EXISTS `doctorOnboarding_db`
USE `doctorOnboarding_db`;

-- Doctors Table
DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` SERIAL,
  `firstName` VARCHAR(255) NOT NULL,
  `middleName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `whatsappNumber` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- Doctor_registration
DROP TABLE IF EXISTS `doctor_registration`;
CREATE TABLE `doctor_registration` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `doctorRegistrationNumber` VARCHAR(255) NOT NULL,
  `councilName` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Doctors_educations
DROP TABLE IF EXISTS `doctors_educations`;
CREATE TABLE `doctors_educations` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `qualification` VARCHAR(255) NOT NULL,
  `specialzation` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Facility
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `facilityName` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `clinicName` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Doctor_visit
DROP TABLE IF EXISTS `doctor_visit`;
CREATE TABLE `doctor_visit` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `facilityId` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Doctor_expirence
DROP TABLE IF EXISTS `doctor_expirence`;
CREATE TABLE `doctor_expirence` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `workDetails` VARCHAR(255) NOT NULL,
  `yearsOfExpirence` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Doctor Details
DROP TABLE IF EXISTS `doctor_details`;
CREATE TABLE `doctor_details` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `firstName` VARCHAR(255) NOT NULL,
  `middleName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `whatsappNumber` VARCHAR(255) NOT NULL,
  `qualification` VARCHAR(255) NOT NULL,
  `specialization` VARCHAR(255) NOT NULL,
  `yearsOfExpirence` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Addresses 
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` SERIAL,
  `doctorDetailsId` VARCHAR(255) NOT NULL,
  `facilityName` VARCHAR(255) NOT NULL,
  `facilityId` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `clinicName` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`doctorDetailsId`) REFERENCES `doctors_details`(`id`)
);
    
-- Verifications Table
DROP TABLE IF EXISTS `verifications`;
CREATE TABLE `verifications` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `fieldName` VARCHAR(255) NOT NULL,
  `fieldValue` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `verificationMethod` VARCHAR(255) NOT NULL,
  `comments` VARCHAR(255),
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Verification Summary
DROP TABLE IF EXISTS `verification_summary`;
CREATE TABLE `verification_summary` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `overallStatus` VARCHAR(255) NOT NULL,
  `lastVerified` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Accreditations
DROP TABLE IF EXISTS `sccreditations`;
CREATE TABLE `accreditations` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `documentType` VARCHAR(255) NOT NULL,
  `documentUrl` VARCHAR(255) NOT NULL,
  `verificationStatus` VARCHAR(255) NOT NULL,
  `comments` VARCHAR(255),
  `uploaded_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` ( 
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `message` VARCHAR(255) NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- HPRID Sessions
DROP TABLE IF EXISTS `hprid_sessions`;
CREATE TABLE `hprid_sessions` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `sessionId` VARCHAR(255) NOT NULL,
  `accessToken` VARCHAR(255) NOT NULL,
  `expires_at` TIMESTAMP,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- Logs
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` ( 
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `action` VARCHAR(255) NOT NULL,
  `apiCalled` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `response` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- kyc
DROP TABLE IF EXISTS `kyc`;
CREATE TABLE `kyc` (
  `id` SERIAL,
  `doctorId` VARCHAR(255) NOT NULL,
  `aadharNumber` VARCHAR(255) NOT NULL,
  `panNumber` VARCHAR(255) NOT NULL,
  `kycId` VARCHAR(255) NOT NULL,
  `kycStatus` VARCHAR(255) NOT NULL,
  `kycProvider` VARCHAR(255),
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- kyb
DROP TABLE IF EXISTS `kyb`;
CREATE TABLE `kyb` (
  `kybId` VARCHAR(255) NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  `Id` VARCHAR(255) NOT NULL,
  `registrationNo` VARCHAR(255) NOT NULL,
  `registrationDocument` VARCHAR(255) NOT NULL,
  `registrationType` VARCHAR(255) NOT NULL,
  `registrationValidTill` VARCHAR(255) NOT NULL,
  `registrationFrom` VARCHAR(255) NOT NULL,
  `registrationState` VARCHAR(255) NOT NULL,
  `kybStatus` VARCHAR(255) NOT NULL,
  `kybProvider` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctorId`) REFERENCES `doctors`(`id`)
);

-- stages
DROP TABLE IF EXISTS `stages`;
CREATE TABLE `stages` (
  `stage1` VARCHAR(50) NOT NULL,
  `stage2` VARCHAR(50) NOT NULL,
  `stage3` VARCHAR(50) NOT NULL,
);
