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

/*Table structure for table `sales_collection` */

DROP TABLE IF EXISTS `sales_collection`;

CREATE TABLE `sales_collection` (
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `section_id` int DEFAULT NULL,
  `project_id` int DEFAULT '0',
  `cash_account_id` int NOT NULL DEFAULT '0',
  `collection_no` varchar(20) DEFAULT '',
  `collection_date` date DEFAULT NULL,
  `reference_number` varchar(20) DEFAULT '',
  `collection_remark` text,
  `collection_amount` decimal(20,2) DEFAULT '0.00',
  `collection_allocated` decimal(20,2) DEFAULT '0.00',
  `collection_shortover` decimal(20,2) DEFAULT '0.00',
  `collection_total_amount` decimal(20,2) DEFAULT '0.00',
  `collection_shortover_remark` text,
  `collection_total_cash_amount` decimal(20,2) DEFAULT '0.00',
  `collection_total_transfer_amount` decimal(20,2) DEFAULT '0.00',
  `collection_total_giro_amount` decimal(20,2) DEFAULT '0.00',
  `collection_giro_status` decimal(1,0) DEFAULT '0',
  `collection_token` varchar(250) DEFAULT NULL,
  `collection_token_void` varchar(250) DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `posted` enum('1','0') DEFAULT '0',
  `posted_by` varchar(20) DEFAULT '',
  `posted_on` datetime DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_id`),
  UNIQUE KEY `collection_token` (`collection_token`),
  UNIQUE KEY `collection_token_void` (`collection_token_void`),
  KEY `FK_sales_collection_salesman_id` (`salesman_id`),
  KEY `FK_sales_collection_section_id` (`section_id`),
  KEY `FK_sales_collection_customer_id` (`customer_id`),
  KEY `FK_sales_collection_company_id` (`company_id`),
  CONSTRAINT `FK_sales_collection_company_id` FOREIGN KEY (`company_id`) REFERENCES `preference_company` (`company_id`),
  CONSTRAINT `FK_sales_collection_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `core_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_collection_item` */

DROP TABLE IF EXISTS `sales_collection_item`;

CREATE TABLE `sales_collection_item` (
  `collection_item_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_id` bigint DEFAULT '0',
  `sales_invoice_id` bigint DEFAULT '0',
  `sales_invoice_no` varchar(20) DEFAULT '',
  `sales_invoice_date` date DEFAULT NULL,
  `sales_invoice_amount` decimal(20,0) DEFAULT '0',
  `subtotal_invoice_amount` decimal(20,0) DEFAULT '0',
  `discount_percentage` decimal(20,0) DEFAULT '0',
  `discount_amount` decimal(20,0) DEFAULT '0',
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `paid_amount` decimal(20,2) DEFAULT '0.00',
  `owing_amount` decimal(20,2) DEFAULT '0.00',
  `shortover_amount` decimal(20,2) DEFAULT '0.00',
  `allocation_amount` decimal(20,2) DEFAULT '0.00',
  `collection_discount` decimal(20,2) DEFAULT '0.00',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `collection_item_token` varchar(250) DEFAULT NULL,
  `collection_item_token_void` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_item_id`),
  UNIQUE KEY `collection_item_token` (`collection_item_token`),
  UNIQUE KEY `collection_item_token_void` (`collection_item_token_void`),
  KEY `FK_sales_collection_collection_id` (`collection_id`) USING BTREE,
  KEY `FK_sales_collection_sales_invoice_id` (`sales_invoice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
