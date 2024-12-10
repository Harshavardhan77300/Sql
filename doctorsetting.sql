CREATE DATABASE `doctor_settings_db`;
USE `doctor_settings_db`;

-- Table for Users
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
    `ClinicSpotsID` INT,
    `UserID` INT PRIMARY KEY,
    `Name` VARCHAR(255),
    `PhoneNumber` VARCHAR(15),
    `Email` VARCHAR(255),
    `CreatedBy` INT,
    `UpdatedBy` INT,
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `IsEmailVerified` BOOLEAN,
    `IsActive` BOOLEAN,
    `IsSSO` BOOLEAN,
    `UserType` VARCHAR(50),
    `IsFaceVerified` BOOLEAN,
    `IsSocialUser` BOOLEAN
);

-- Table for Address
DROP TABLE IF EXISTS `Address`;
CREATE TABLE `Address` (
    `ID` INT PRIMARY KEY,
    `AddressLine1` VARCHAR(255),
    `AddressLine2` VARCHAR(255),
    `Locality` VARCHAR(255),
    `City` VARCHAR(100),
    `State` VARCHAR(100),
    `Country` VARCHAR(100),
    `Pincode` VARCHAR(20)
);

-- Table for DoctorDetails
DROP TABLE IF EXISTS `DoctorDetails`;
CREATE TABLE `DoctorDetails` (
    `UserID` INT,
    `ClinicSpotsID` INT,
    `Specialisation` VARCHAR(255),
    `Qualification` VARCHAR(255),
    `PhoneNumber` VARCHAR(15),
    `Email` VARCHAR(255),
    `Experience` INT,
    `CreatedBy` INT,
    `UpdatedBy` INT,
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Institution` VARCHAR(255),
    `ClinicAddress` JSON, -- Array of Address IDs
    `Slots` JSON, -- Array of Slot IDs
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`UserID`),
    FOREIGN KEY (`ClinicSpotsID`) REFERENCES `Users`(`ClinicSpotsID`)
);

-- Table for Slots
DROP TABLE IF EXISTS `Slots`;
CREATE TABLE `Slots` (
    `SlotID` INT PRIMARY KEY,
    `StartDate` DATE,
    `EndDate` DATE,
    `AppointmentDuration` INT, -- in minutes
    `MorningSlotStartTime` TIME,
    `MorningSlotEndTime` TIME,
    `AfternoonSlotStartTime` TIME,
    `AfternoonSlotEndTime` TIME,
    `EveningSlotStartTime` TIME,
    `EveningSlotEndTime` TIME,
    `NightSlotStartTime` TIME,
    `NightSlotEndTime` TIME,
    `CreatedBy` INT,
    `UpdatedBy` INT,
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Unavailability` JSON -- Array of day data
);

-- Table for Appointments
DROP TABLE IF EXISTS `Appointments`;
CREATE TABLE `Appointments` (
    `AppointmentID` INT PRIMARY KEY,
    `StartStop` VARCHAR(50),
    `Repeats` BOOLEAN,
    `MeetingToBeVerified` BOOLEAN,
    `MeetingID` INT,
    `MeetingRoomID` INT,
    `MeetingStatusID` INT,
    `Title` VARCHAR(255),
    `Visit` VARCHAR(255),
    `ClinicAd` VARCHAR(255),
    `StartTime` DATETIME,
    `EndTime` DATETIME,
    `CreatedBy` INT,
    `UpdatedBy` INT,
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Description` TEXT,
    `Participants` JSON, -- Array of participant details
    `AppointmentStatus` JSON -- Array of AppointmentStatus IDs
);

-- Table for AppointmentStatus
DROP TABLE IF EXISTS `AppointmentStatus`;
CREATE TABLE `AppointmentStatus` (
    `AppointmentStatusID` INT PRIMARY KEY,
    `Status` VARCHAR(50),
    `CreatedBy` INT,
    `UpdatedBy` INT,
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME
);
