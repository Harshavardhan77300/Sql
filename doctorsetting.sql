CREATE DATABASE `doctor_settings_db`;
USE `doctor_settings_db`;

-- Table for Users
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
    `Id` INT,
    `ClinicSpotsID` INT,
    `Name` VARCHAR(255),
    `PhoneNumber` VARCHAR(15),
    `Email` VARCHAR(255),
    `CreatedBy` VARCHAR(15),
    `UpdatedBy` VARCHAR(15),
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `IsEmailVerified` BOOLEAN,
    `IsActive` BOOLEAN,
    `IsSSO` BOOLEAN,
    `UserType` VARCHAR(50),
    `IsFaceVerified` BOOLEAN,
    `IsSocialUser` BOOLEAN,
    PRIMARY KEY ( `Id` )
);

-- Table for Address
DROP TABLE IF EXISTS `Address`;
CREATE TABLE `Address` (
    `Id` INT,
    `UserID` INT,
    `AddressLine1` VARCHAR(255),
    `AddressLine2` VARCHAR(255),
    `Locality` VARCHAR(255),
    `City` VARCHAR(100),
    `State` VARCHAR(100),
    `Country` VARCHAR(100),
    `Pincode` VARCHAR(20),
    `CreatedBy` VARCHAR(15),
    `UpdatedBy` VARCHAR(15),
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`Id`),
);

-- Table for DoctorDetails
DROP TABLE IF EXISTS `DoctorDetails`;
CREATE TABLE `DoctorDetails` (
    `Id` INT,
    `UserID` INT,
    `ClinicSpotsID` INT,
    `Specialisation` VARCHAR(255),
    `Qualification` VARCHAR(255),
    `PhoneNumber` VARCHAR(15),
    `Email` VARCHAR(255),
    `Experience` INT,
    `CreatedBy` VARCHAR(15),
    `UpdatedBy` VARCHAR(15),
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Institution` VARCHAR(255),
    `ClinicAddress` JSON, -- Array of Address IDs
    `Slots` JSON, -- Array of Slot IDs
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`UserID`) REFERENCES `Users`(`Id`),
    FOREIGN KEY (`ClinicSpotsID`) REFERENCES `Users`(`ClinicSpotsID`)
);

-- Table for Slots
DROP TABLE IF EXISTS `Slots`;
CREATE TABLE `Slots` (
    `Id` INT,
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
    `CreatedBy` VARCHAR(15),
    `UpdatedBy` VARCHAR(15),
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Unavailability` JSON,
    PRIMARY KEY(`Id`)
);

-- Table for Appointments
DROP TABLE IF EXISTS `Appointments`;
CREATE TABLE `Appointments` (
    `Id` INT,
    `StartStop` VARCHAR(50),
    `Repeats` BOOLEAN,
    `MeetingToBeVerified` BOOLEAN,
    `MeetingID` INT,
    `MeetingRoomID` INT,
    `MeetingStatusID` INT,
    `Title` VARCHAR(255),
    `Visit` VARCHAR(255),
    `ClinicAddress` VARCHAR(255),
    `StartTime` DATETIME,
    `EndTime` DATETIME,
    `CreatedBy` VARCHAR(15),
    `UpdatedBy` VARCHAR(15),
    `CreatedAt` DATETIME,
    `UpdatedAt` DATETIME,
    `Description` TEXT,
    `Participants` JSON, -- Array of participant details
    `AppointmentStatus` JSON, -- Array of AppointmentStatus IDs
    PRIMARY KEY (`Id`)
);

-- Table for AppointmentsStats
DROP TABLE IF EXISTS `AppointmentsStats`;
CREATE TABLE `AppointmentsStats` (
    `Id` INT,
    `UserId` INT,
    `MeetingId` INT,
    `StartTime` DATETIME,
    `UpdateTime` DATETIME,
    `StartStop` JSONS,
    PRIMARY KEY (`Id`)
);

