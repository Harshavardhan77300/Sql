CREATE TABLE `client_website_page_queries` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `client_website_id` INT NOT NULL,
  `client_website_page_id` INT NOT NULL,
  `query` VARCHAR NOT NULL,
  `clicks` INT,
  `impressions` INT,
  `extracted_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `extracted_to` DATETIME,
  `extracted_from` DATETIME
);
