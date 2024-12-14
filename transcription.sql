CREATE DATABASE 'transcriptions_db';
USE `transcriptions_db`;

-- Table for Transcription schema
DROP TABLE IF EXISTS `transcription`;
CREATE TABLE `transcription` (
  `consultationid` int NOT NULL,
  `doctorid` int NOT NULL,
  `patientid` int NOT NULL,
  `transcription_text` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`consultationid`)
);
