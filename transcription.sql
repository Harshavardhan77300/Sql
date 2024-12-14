CREATE DATABASE 'transcriptions_db';
USE `transcriptions_db`;

-- Table for Transcription schema
DROP TABLE IF EXISTS `transcription`;
CREATE TABLE `transcription` (
  `consultationId` int NOT NULL,
  `doctorId` int NOT NULL,
  `patientId` int NOT NULL,
  `transcriptionText` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`consultationid`)
);
