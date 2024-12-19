/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.30 : Database - ciptaprocpanel_triptatritunggal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ciptaprocpanel_triptatritunggal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ciptaprocpanel_triptatritunggal`;

/*Table structure for table `acct_debt_repayment` */

DROP TABLE IF EXISTS `acct_debt_repayment`;

CREATE TABLE `acct_debt_repayment` (
  `debt_repayment_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `debt_repayment_date` datetime DEFAULT NULL,
  `total_repayment` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  PRIMARY KEY (`debt_repayment_id`),
  KEY `FK_acct_debt_repayment_company_id` (`company_id`),
  CONSTRAINT `FK_acct_debt_repayment_company_id` FOREIGN KEY (`company_id`) REFERENCES `preference_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `acct_debt_repayment_item` */

DROP TABLE IF EXISTS `acct_debt_repayment_item`;

CREATE TABLE `acct_debt_repayment_item` (
  `debt_repayment_item_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `debt_repayment_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `debt_repayment_amount` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  PRIMARY KEY (`debt_repayment_item_id`),
  KEY `FK_acct_debt_repayment_item_company_id` (`company_id`),
  KEY `FK_acct_debt_repayment_item_debt_repayment_id` (`debt_repayment_id`),
  KEY `FK_acct_debt_repayment_item_employee_id` (`employee_id`),
  CONSTRAINT `FK_acct_debt_repayment_item_company_id` FOREIGN KEY (`company_id`) REFERENCES `preference_company` (`company_id`),
  CONSTRAINT `FK_acct_debt_repayment_item_debt_repayment_id` FOREIGN KEY (`debt_repayment_id`) REFERENCES `acct_debt_repayment` (`debt_repayment_id`),
  CONSTRAINT `FK_acct_debt_repayment_item_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `core_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
