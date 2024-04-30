create database loginSystem;

use loginSystem;

CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` TIMESTAMP DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`role_id`)
);


CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` TIMESTAMP DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`person_id`),
   FOREIGN KEY (role_id) REFERENCES roles(role_id)
);