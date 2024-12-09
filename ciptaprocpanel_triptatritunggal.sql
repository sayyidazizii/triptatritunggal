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

/*Table structure for table `acct_account` */

DROP TABLE IF EXISTS `acct_account`;

CREATE TABLE `acct_account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `account_code` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_group` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_suspended` int DEFAULT '0',
  `account_default_status` int DEFAULT '0',
  `account_remark` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_status` int DEFAULT '0',
  `account_token` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_type_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `acct_account_balance` */

DROP TABLE IF EXISTS `acct_account_balance`;

CREATE TABLE `acct_account_balance` (
  `account_balance_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL DEFAULT '2',
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_balance_id`),
  KEY `FK_acct_account_balance_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_account_balance_detail` */

DROP TABLE IF EXISTS `acct_account_balance_detail`;

CREATE TABLE `acct_account_balance_detail` (
  `account_balance_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `company_id` int NOT NULL DEFAULT '2',
  `transaction_type` int DEFAULT NULL,
  `transaction_code` varchar(20) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_id` bigint DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `opening_balance` decimal(20,2) DEFAULT '0.00',
  `account_in` decimal(20,2) DEFAULT '0.00',
  `account_out` decimal(20,2) DEFAULT '0.00',
  `cash_in` decimal(20,2) DEFAULT '0.00',
  `cash_out` decimal(20,2) DEFAULT '0.00',
  `bank_in` decimal(20,2) DEFAULT '0.00',
  `bank_out` decimal(20,2) DEFAULT '0.00',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_id` int DEFAULT NULL,
  PRIMARY KEY (`account_balance_detail_id`),
  KEY `FK_acct_account_balance_detail_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_account_mutation` */

DROP TABLE IF EXISTS `acct_account_mutation`;

CREATE TABLE `acct_account_mutation` (
  `account_mutation_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `mutation_in_amount` decimal(20,2) DEFAULT '0.00',
  `mutation_out_amount` decimal(20,2) DEFAULT '0.00',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `month_period` varchar(2) DEFAULT '0',
  `year_period` year DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_mutation_id`),
  KEY `FK_acct_account_mutation_branch_id` (`branch_id`),
  KEY `F_acct_account_mutation_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_account_opening_balance` */

DROP TABLE IF EXISTS `acct_account_opening_balance`;

CREATE TABLE `acct_account_opening_balance` (
  `account_opening_balance_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `opening_balance` decimal(20,2) DEFAULT '0.00',
  `month_period` varchar(2) DEFAULT '0',
  `year_period` year DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_opening_balance_id`),
  KEY `FK_acct_account_opening_balance_branch_id` (`branch_id`),
  KEY `FK_acct_account_opening_balance_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_account_setting` */

DROP TABLE IF EXISTS `acct_account_setting`;

CREATE TABLE `acct_account_setting` (
  `account_setting_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT '0',
  `account_setting_code` varchar(20) DEFAULT '',
  `account_setting_description` varchar(50) DEFAULT '',
  `account_setting_name` varchar(50) DEFAULT '',
  `account_setting_status` decimal(1,0) DEFAULT '0' COMMENT '1 = Debit, 0 = Credit',
  `account_status` decimal(1,0) DEFAULT '0',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_account_type` */

DROP TABLE IF EXISTS `acct_account_type`;

CREATE TABLE `acct_account_type` (
  `account_type_id` int NOT NULL AUTO_INCREMENT,
  `account_type_name` varchar(50) DEFAULT '',
  `account_type_status` decimal(1,0) DEFAULT '0' COMMENT '1 : Active, 0 : Not Active',
  `default_value` decimal(1,0) DEFAULT '0' COMMENT '1 : Debet, 0 : Credit',
  `data_state` enum('0','1','2','3') DEFAULT '0',
  `created_by` varchar(20) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_asset` */

DROP TABLE IF EXISTS `acct_asset`;

CREATE TABLE `acct_asset` (
  `asset_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `asset_type_id` int DEFAULT '0',
  `location_id` int DEFAULT '0',
  `item_category_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `asset_depreciation_type` int DEFAULT '0',
  `asset_code` varchar(20) DEFAULT '',
  `asset_name` varchar(30) DEFAULT '',
  `asset_description` text,
  `asset_location_detail` text,
  `asset_quantity` decimal(10,0) DEFAULT '0',
  `asset_purchase_date` date DEFAULT NULL,
  `asset_purchase_value` decimal(20,2) DEFAULT '0.00',
  `asset_disposal_date` date DEFAULT NULL,
  `asset_disposal_value` decimal(20,2) DEFAULT '0.00',
  `asset_usage_date` date DEFAULT NULL,
  `asset_estimated_lifespan` decimal(10,2) DEFAULT '0.00',
  `asset_book_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_value` decimal(20,2) DEFAULT '0.00',
  `asset_salvage_value` decimal(20,2) DEFAULT '0.00',
  `voided` decimal(1,0) DEFAULT '0',
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_id`),
  KEY `FK_acct_asset_location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_asset_depreciation` */

DROP TABLE IF EXISTS `acct_asset_depreciation`;

CREATE TABLE `acct_asset_depreciation` (
  `asset_depreciation_id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT '0',
  `branch_id` int DEFAULT '0',
  `asset_depreciation_no` varchar(20) DEFAULT '',
  `asset_depreciation_date` date DEFAULT NULL,
  `asset_depreciation_duration` decimal(10,0) DEFAULT '0',
  `asset_depreciation_start_month` decimal(10,0) DEFAULT '0',
  `asset_depreciation_start_year` decimal(10,0) DEFAULT '0',
  `asset_depreciation_end_month` decimal(10,0) DEFAULT '0',
  `asset_depreciation_end_year` decimal(10,0) DEFAULT '0',
  `asset_depreciation_book_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_beginning_book_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_ending_book_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_salvage_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_status` decimal(1,0) DEFAULT '0',
  `asset_depreciation_type` decimal(1,0) DEFAULT '0',
  `asset_depreciation_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_depreciation_id`),
  KEY `FK_acct_asset_depreciation_asset_id` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_asset_depreciation_item` */

DROP TABLE IF EXISTS `acct_asset_depreciation_item`;

CREATE TABLE `acct_asset_depreciation_item` (
  `asset_depreciation_item_id` bigint NOT NULL AUTO_INCREMENT,
  `asset_depreciation_id` bigint DEFAULT '0',
  `asset_depreciation_item_year_to` int DEFAULT '0',
  `asset_depreciation_item_month` decimal(10,0) DEFAULT '0',
  `asset_depreciation_item_year` decimal(10,0) DEFAULT '0',
  `asset_depreciation_item_amount` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_item_accumulation_amount` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_item_book_value` decimal(20,2) DEFAULT '0.00',
  `asset_depreciation_item_journal_status` int DEFAULT '0',
  `asset_depreciation_item_journal_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_depreciation_item_id`),
  KEY `FK_acct_asset_depreciation_item_asset_depreciation_id` (`asset_depreciation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_asset_type` */

DROP TABLE IF EXISTS `acct_asset_type`;

CREATE TABLE `acct_asset_type` (
  `asset_type_id` int NOT NULL AUTO_INCREMENT,
  `asset_type_code` varchar(20) DEFAULT '',
  `asset_type_name` varchar(50) DEFAULT '',
  `asset_type_description` text,
  `asset_type_parent` int DEFAULT '0',
  `asset_type_parent_status` decimal(1,0) DEFAULT '0',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_balance_sheet_report` */

DROP TABLE IF EXISTS `acct_balance_sheet_report`;

CREATE TABLE `acct_balance_sheet_report` (
  `balance_sheet_report_id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `report_no` int DEFAULT '0',
  `account_id1` int DEFAULT '0',
  `account_code1` varchar(20) DEFAULT '',
  `account_name1` varchar(100) DEFAULT '',
  `account_id2` int DEFAULT '0',
  `account_code2` varchar(20) DEFAULT '',
  `account_name2` varchar(100) DEFAULT '',
  `report_formula1` varchar(255) DEFAULT '',
  `report_operator1` varchar(255) DEFAULT '',
  `report_type1` int DEFAULT '0',
  `report_tab1` int DEFAULT '0',
  `report_bold1` int DEFAULT '0',
  `report_formula2` varchar(255) DEFAULT '',
  `report_operator2` varchar(255) DEFAULT '',
  `report_type2` int DEFAULT '0',
  `report_tab2` int DEFAULT '0',
  `report_bold2` int DEFAULT '0',
  `report_formula3` varchar(255) DEFAULT '',
  `report_operator3` varchar(255) DEFAULT '',
  `balance_report_type` decimal(1,0) NOT NULL,
  `balance_report_type1` decimal(1,0) NOT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `last_update` time DEFAULT '00:00:00',
  PRIMARY KEY (`balance_sheet_report_id`),
  KEY `account_id1` (`account_id1`),
  KEY `account_id2` (`account_id2`),
  KEY `fk_company_id_sheet_report` (`company_id`),
  CONSTRAINT `fk_company_id_sheet_report` FOREIGN KEY (`company_id`) REFERENCES `preference_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_bank_disbursement` */

DROP TABLE IF EXISTS `acct_bank_disbursement`;

CREATE TABLE `acct_bank_disbursement` (
  `bank_disbursement_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `customer_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `bank_disbursement_date` date DEFAULT NULL,
  `bank_disbursement_title` varchar(200) DEFAULT NULL,
  `bank_disbursement_no` varchar(30) DEFAULT '',
  `bank_disbursement_description` text,
  `bank_disbursement_amount_total` decimal(20,2) DEFAULT '0.00',
  `bank_disbursement_token` varchar(100) DEFAULT NULL,
  `bank_disbursement_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(10,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` int DEFAULT '0',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_disbursement_id`),
  KEY `FK_acct_disbursement_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`),
  KEY `disbursement_token` (`bank_disbursement_token`),
  KEY `disbursement_token_void` (`bank_disbursement_token_void`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_bank_disbursement_item` */

DROP TABLE IF EXISTS `acct_bank_disbursement_item`;

CREATE TABLE `acct_bank_disbursement_item` (
  `bank_disbursement_item_id` bigint NOT NULL AUTO_INCREMENT,
  `bank_disbursement_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `bank_disbursement_item_title` varchar(200) DEFAULT '',
  `bank_disbursement_item_amount` decimal(20,2) DEFAULT '0.00',
  `bank_disbursement_item_token` varchar(200) DEFAULT NULL,
  `bank_disbursement_item_token_void` varbinary(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_disbursement_item_id`),
  KEY `FK_acct_disbursement_item_account_id` (`account_id`),
  KEY `disbursement_item_token` (`bank_disbursement_item_token`),
  KEY `disbursement_item_token_void` (`bank_disbursement_item_token_void`),
  KEY `FK_acct_disbursement_item_disbursement_id` (`bank_disbursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_bank_receipt` */

DROP TABLE IF EXISTS `acct_bank_receipt`;

CREATE TABLE `acct_bank_receipt` (
  `bank_receipt_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `customer_id` int DEFAULT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `bank_receipt_date` date DEFAULT NULL,
  `bank_receipt_no` varchar(30) DEFAULT '',
  `bank_receipt_title` varchar(200) DEFAULT NULL,
  `bank_receipt_description` text,
  `bank_receipt_amount_total` decimal(20,2) DEFAULT '0.00',
  `bank_receipt_token` varchar(250) DEFAULT NULL,
  `bank_receipt_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` varchar(20) DEFAULT '',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_receipt_id`),
  UNIQUE KEY `receipt_token` (`bank_receipt_token`),
  UNIQUE KEY `receipt_token_void` (`bank_receipt_token_void`),
  KEY `FK_acct_receipt_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_bank_receipt_item` */

DROP TABLE IF EXISTS `acct_bank_receipt_item`;

CREATE TABLE `acct_bank_receipt_item` (
  `bank_receipt_item_id` bigint NOT NULL AUTO_INCREMENT,
  `bank_receipt_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `bank_receipt_item_title` varchar(200) DEFAULT '',
  `bank_receipt_item_amount` decimal(20,2) DEFAULT '0.00',
  `bank_receipt_item_token` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `careated_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_receipt_item_id`),
  UNIQUE KEY `receipt_item_token` (`bank_receipt_item_token`),
  KEY `FK_acct_receipt_item_receipt_id` (`bank_receipt_id`),
  KEY `FK_acct_receipt_item_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_cash_disbursement` */

DROP TABLE IF EXISTS `acct_cash_disbursement`;

CREATE TABLE `acct_cash_disbursement` (
  `cash_disbursement_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `customer_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `cash_disbursement_date` date DEFAULT NULL,
  `cash_disbursement_title` varchar(200) DEFAULT NULL,
  `cash_disbursement_no` varchar(30) DEFAULT '',
  `cash_disbursement_description` text,
  `cash_disbursement_amount_total` decimal(20,2) DEFAULT '0.00',
  `cash_disbursement_token` varchar(100) DEFAULT NULL,
  `cash_disbursement_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(10,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` int DEFAULT '0',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cash_disbursement_id`),
  KEY `FK_acct_disbursement_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`),
  KEY `disbursement_token` (`cash_disbursement_token`),
  KEY `disbursement_token_void` (`cash_disbursement_token_void`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_cash_disbursement_item` */

DROP TABLE IF EXISTS `acct_cash_disbursement_item`;

CREATE TABLE `acct_cash_disbursement_item` (
  `cash_disbursement_item_id` bigint NOT NULL AUTO_INCREMENT,
  `cash_disbursement_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `cash_disbursement_item_title` varchar(200) DEFAULT '',
  `cash_disbursement_item_amount` decimal(20,2) DEFAULT '0.00',
  `cash_disbursement_item_token` varchar(200) DEFAULT NULL,
  `cash_disbursement_item_token_void` varbinary(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cash_disbursement_item_id`),
  KEY `FK_acct_disbursement_item_account_id` (`account_id`),
  KEY `disbursement_item_token` (`cash_disbursement_item_token`),
  KEY `disbursement_item_token_void` (`cash_disbursement_item_token_void`),
  KEY `FK_acct_disbursement_item_disbursement_id` (`cash_disbursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_cash_receipt` */

DROP TABLE IF EXISTS `acct_cash_receipt`;

CREATE TABLE `acct_cash_receipt` (
  `cash_receipt_id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `cash_receipt_date` date DEFAULT NULL,
  `cash_receipt_no` varchar(30) DEFAULT '',
  `cash_receipt_title` varchar(200) DEFAULT NULL,
  `cash_receipt_description` text,
  `cash_receipt_amount_total` decimal(20,2) DEFAULT '0.00',
  `cash_receipt_token` varchar(250) DEFAULT NULL,
  `cash_receipt_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` varchar(20) DEFAULT '',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cash_receipt_id`),
  UNIQUE KEY `receipt_token` (`cash_receipt_token`),
  UNIQUE KEY `receipt_token_void` (`cash_receipt_token_void`),
  KEY `FK_acct_receipt_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_cash_receipt_item` */

DROP TABLE IF EXISTS `acct_cash_receipt_item`;

CREATE TABLE `acct_cash_receipt_item` (
  `cash_receipt_item_id` bigint NOT NULL AUTO_INCREMENT,
  `cash_receipt_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `cash_receipt_item_title` varchar(200) DEFAULT '',
  `cash_receipt_item_amount` decimal(20,2) DEFAULT '0.00',
  `cash_receipt_item_token` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cash_receipt_item_id`),
  UNIQUE KEY `receipt_item_token` (`cash_receipt_item_token`),
  KEY `FK_acct_receipt_item_receipt_id` (`cash_receipt_id`),
  KEY `FK_acct_receipt_item_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_check_disbursement` */

DROP TABLE IF EXISTS `acct_check_disbursement`;

CREATE TABLE `acct_check_disbursement` (
  `check_disbursement_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `customer_id` int DEFAULT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `check_disbursement_date` date DEFAULT NULL,
  `check_disbursement_due_date` date DEFAULT NULL,
  `check_number` varchar(50) DEFAULT NULL,
  `check_disbursement_no` varchar(30) DEFAULT '',
  `check_disbursement_title` varchar(200) DEFAULT NULL,
  `check_disbursement_description` text,
  `check_disbursement_amount_total` decimal(20,2) DEFAULT '0.00',
  `check_disbursement_token` varchar(250) DEFAULT NULL,
  `check_disbursement_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` varchar(20) DEFAULT '',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`check_disbursement_id`),
  KEY `FK_acct_receipt_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`),
  KEY `receipt_token` (`check_disbursement_token`),
  KEY `receipt_token_void` (`check_disbursement_token_void`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_check_disbursement_item` */

DROP TABLE IF EXISTS `acct_check_disbursement_item`;

CREATE TABLE `acct_check_disbursement_item` (
  `check_disbursement_item_id` bigint NOT NULL AUTO_INCREMENT,
  `check_disbursement_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `check_disbursement_item_title` varchar(200) DEFAULT '',
  `check_disbursement_item_amount` decimal(20,2) DEFAULT '0.00',
  `check_disbursement_item_token` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`check_disbursement_item_id`),
  KEY `FK_acct_receipt_item_account_id` (`account_id`),
  KEY `receipt_item_token` (`check_disbursement_item_token`),
  KEY `FK_acct_receipt_item_receipt_id` (`check_disbursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_check_receipt` */

DROP TABLE IF EXISTS `acct_check_receipt`;

CREATE TABLE `acct_check_receipt` (
  `check_receipt_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `account_id` int DEFAULT '0',
  `customer_id` int DEFAULT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `check_receipt_date` date DEFAULT NULL,
  `check_receipt_due_date` date DEFAULT NULL,
  `check_number` varchar(50) DEFAULT NULL,
  `check_receipt_no` varchar(30) DEFAULT '',
  `check_receipt_title` varchar(200) DEFAULT NULL,
  `check_receipt_description` text,
  `check_receipt_amount_total` decimal(20,2) DEFAULT '0.00',
  `check_receipt_token` varchar(250) DEFAULT NULL,
  `check_receipt_token_void` varchar(250) DEFAULT NULL,
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `unposted_id` varchar(20) DEFAULT '',
  `unposted_on` datetime DEFAULT NULL,
  `unposted_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`check_receipt_id`),
  KEY `FK_acct_receipt_account_id` (`account_id`),
  KEY `project_type_id` (`project_type_id`),
  KEY `receipt_token` (`check_receipt_token`),
  KEY `receipt_token_void` (`check_receipt_token_void`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_check_receipt_item` */

DROP TABLE IF EXISTS `acct_check_receipt_item`;

CREATE TABLE `acct_check_receipt_item` (
  `check_receipt_item_id` bigint NOT NULL AUTO_INCREMENT,
  `check_receipt_id` bigint DEFAULT '0',
  `account_id` int DEFAULT '0',
  `check_receipt_item_title` varchar(200) DEFAULT '',
  `check_receipt_item_amount` decimal(20,2) DEFAULT '0.00',
  `check_receipt_item_token` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`check_receipt_item_id`),
  KEY `FK_acct_receipt_item_account_id` (`account_id`),
  KEY `receipt_item_token` (`check_receipt_item_token`),
  KEY `FK_acct_receipt_item_receipt_id` (`check_receipt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_journal_voucher` */

DROP TABLE IF EXISTS `acct_journal_voucher`;

CREATE TABLE `acct_journal_voucher` (
  `journal_voucher_id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL DEFAULT '2',
  `branch_id` int DEFAULT '0',
  `project_id` int DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `transaction_module_id` int DEFAULT '0',
  `transaction_journal_id` bigint DEFAULT '0',
  `transaction_journal_no` varchar(100) DEFAULT '',
  `journal_voucher_title` varchar(50) DEFAULT '',
  `journal_voucher_no` varchar(50) DEFAULT '',
  `journal_voucher_period` decimal(20,0) DEFAULT '0',
  `journal_voucher_date` date DEFAULT NULL,
  `journal_voucher_description` varchar(200) DEFAULT '',
  `journal_voucher_token` varchar(250) DEFAULT NULL,
  `journal_voucher_token_void` varchar(250) DEFAULT NULL,
  `journal_voucher_type_id` int DEFAULT '1',
  `transaction_module_code` varchar(20) DEFAULT '',
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `voided` decimal(1,0) DEFAULT '0',
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reverse_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`journal_voucher_id`),
  UNIQUE KEY `journal_voucher_token` (`journal_voucher_token`),
  UNIQUE KEY `journal_voucher_token_void` (`journal_voucher_token_void`),
  KEY `transaction_journal_no` (`transaction_journal_no`),
  KEY `project_id` (`project_id`),
  KEY `project_type_id` (`project_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_journal_voucher_item` */

DROP TABLE IF EXISTS `acct_journal_voucher_item`;

CREATE TABLE `acct_journal_voucher_item` (
  `journal_voucher_item_id` bigint NOT NULL AUTO_INCREMENT,
  `journal_voucher_id` bigint DEFAULT '0',
  `company_id` int NOT NULL DEFAULT '2',
  `account_id` int DEFAULT '0',
  `journal_voucher_description` varchar(200) DEFAULT '',
  `journal_voucher_amount` decimal(20,2) DEFAULT '0.00',
  `account_id_status` decimal(1,0) DEFAULT '0',
  `account_id_default_status` decimal(1,0) DEFAULT '0',
  `journal_voucher_debit_amount` decimal(20,2) DEFAULT '0.00',
  `journal_voucher_credit_amount` decimal(20,2) DEFAULT '0.00',
  `journal_voucher_item_token` varchar(250) DEFAULT NULL,
  `journal_voucher_item_token_void` varchar(250) DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reverse_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`journal_voucher_item_id`),
  UNIQUE KEY `journal_voucher_item_token` (`journal_voucher_item_token`),
  UNIQUE KEY `journal_voucher_item_token_void` (`journal_voucher_item_token_void`),
  KEY `FK_acct_journal_voucher_item_journal_voucher_id` (`journal_voucher_id`) USING BTREE,
  KEY `FK_acct_journal_voucher_item_account_id` (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `acct_journal_voucher_type` */

DROP TABLE IF EXISTS `acct_journal_voucher_type`;

CREATE TABLE `acct_journal_voucher_type` (
  `acct_journal_voucher_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`acct_journal_voucher_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `acct_payment_schedule` */

DROP TABLE IF EXISTS `acct_payment_schedule`;

CREATE TABLE `acct_payment_schedule` (
  `payment_schedule_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `payment_schedule_name` varchar(200) DEFAULT '',
  `payment_schedule_repeat_every` int DEFAULT '0',
  `payment_schedule_start_date` date DEFAULT NULL,
  `payment_schedule_next_date` date DEFAULT NULL,
  `payment_schedule_last_date` date DEFAULT NULL,
  `payment_schedule_status` int DEFAULT '0',
  `status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_profit_loss` */

DROP TABLE IF EXISTS `acct_profit_loss`;

CREATE TABLE `acct_profit_loss` (
  `profit_loss_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `profit_loss_amount` decimal(20,2) DEFAULT '0.00',
  `month_period` varchar(2) DEFAULT '0',
  `year_period` year DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profit_loss_id`),
  KEY `FK_acct_profit_loss_branch_id` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_profit_loss_report` */

DROP TABLE IF EXISTS `acct_profit_loss_report`;

CREATE TABLE `acct_profit_loss_report` (
  `profit_loss_report_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `format_id` int DEFAULT NULL,
  `report_no` int DEFAULT NULL,
  `account_type_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `account_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `report_formula` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `report_operator` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `report_type` int DEFAULT NULL,
  `report_tab` int DEFAULT NULL,
  `report_bold` int DEFAULT NULL,
  `data_state` int DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`profit_loss_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `acct_recalculate_log` */

DROP TABLE IF EXISTS `acct_recalculate_log`;

CREATE TABLE `acct_recalculate_log` (
  `recalculate_log_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `month_period` varchar(2) DEFAULT '0',
  `year_period` year DEFAULT NULL,
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`recalculate_log_id`),
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_report` */

DROP TABLE IF EXISTS `acct_report`;

CREATE TABLE `acct_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_no` int DEFAULT NULL,
  `id_report` int DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `account_id` varchar(50) DEFAULT NULL,
  `formula` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `type` enum('title','subtitle','loop','sum','grantotal','parent') DEFAULT NULL,
  `status` int DEFAULT '1',
  `indent_tab` int DEFAULT NULL,
  `indent_bold` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `acct_report_backup` */

DROP TABLE IF EXISTS `acct_report_backup`;

CREATE TABLE `acct_report_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_no` int DEFAULT NULL,
  `id_report` int DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `account_id` varchar(50) DEFAULT NULL,
  `formula` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `type` enum('title','subtitle','loop','sum','grantotal','parent') DEFAULT NULL,
  `indent_tab` int DEFAULT NULL,
  `indent_bold` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `buyers_acknowledgment` */

DROP TABLE IF EXISTS `buyers_acknowledgment`;

CREATE TABLE `buyers_acknowledgment` (
  `buyers_acknowledgment_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `warehouse_id` bigint DEFAULT '8',
  `customer_id` int DEFAULT NULL,
  `buyers_acknowledgment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `buyers_acknowledgment_date` date DEFAULT NULL,
  `buyers_acknowledgment_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sales_invoice_status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`buyers_acknowledgment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `buyers_acknowledgment_item` */

DROP TABLE IF EXISTS `buyers_acknowledgment_item`;

CREATE TABLE `buyers_acknowledgment_item` (
  `buyers_acknowledgment_item_id` bigint NOT NULL AUTO_INCREMENT,
  `buyers_acknowledgment_id` bigint DEFAULT NULL,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_note_item_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `quantity_received` decimal(10,0) DEFAULT NULL,
  `item_unit_cost` decimal(10,0) DEFAULT NULL,
  `item_unit_price` decimal(10,0) DEFAULT NULL,
  `subtotal_price` decimal(10,0) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`buyers_acknowledgment_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `core_agency` */

DROP TABLE IF EXISTS `core_agency`;

CREATE TABLE `core_agency` (
  `agency_id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `agency_code` varchar(20) DEFAULT '',
  `agency_name` varchar(100) DEFAULT '',
  `agency_phone_number` varchar(25) DEFAULT '',
  `agency_contact_person` varchar(100) DEFAULT '',
  `agency_address` text,
  `agency_email` varchar(100) DEFAULT '',
  `agency_profit_sharing_percentage` decimal(10,2) DEFAULT '0.00',
  `agency_remark` text,
  `mou_status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_bank` */

DROP TABLE IF EXISTS `core_bank`;

CREATE TABLE `core_bank` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_code` varchar(20) DEFAULT '',
  `bank_name` varchar(50) DEFAULT '',
  `account_id` int DEFAULT NULL,
  `bank_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_id`),
  KEY `FK_core_bank_created_id` (`created_id`),
  KEY `FK_core_bank_account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_branch` */

DROP TABLE IF EXISTS `core_branch`;

CREATE TABLE `core_branch` (
  `branch_id` int NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(50) DEFAULT '',
  `branch_name` varchar(250) DEFAULT '',
  `branch_address` text,
  `branch_manager` varchar(100) DEFAULT NULL,
  `branch_status` int DEFAULT '0',
  `branch_parent_id` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`branch_id`),
  KEY `branch_parent_id` (`branch_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_city` */

DROP TABLE IF EXISTS `core_city`;

CREATE TABLE `core_city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_code` char(4) NOT NULL,
  `province_id` int DEFAULT '0',
  `province_code` char(2) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `province_no` varchar(20) DEFAULT '',
  `city_no` varchar(20) DEFAULT '',
  `data_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  KEY `regencies_province_id_index` (`province_code`),
  KEY `city_id` (`city_id`),
  KEY `FK_core_city_province_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1449 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_customer` */

DROP TABLE IF EXISTS `core_customer`;

CREATE TABLE `core_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `province_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `customer_code` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_tax_no` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_home_phone` varchar(255) DEFAULT NULL,
  `customer_mobile_phone1` varchar(255) DEFAULT NULL,
  `customer_mobile_phone2` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_fax_number` varchar(255) DEFAULT NULL,
  `customer_contact_person` varchar(255) DEFAULT NULL,
  `customer_payment_terms` decimal(10,0) DEFAULT NULL,
  `customer_remark` text,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_dump` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`),
  KEY `FK_core_customer_province_id` (`province_id`),
  KEY `FK_core_customer_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_expedition` */

DROP TABLE IF EXISTS `core_expedition`;

CREATE TABLE `core_expedition` (
  `expedition_id` int NOT NULL AUTO_INCREMENT,
  `expedition_code` varchar(20) DEFAULT '',
  `expedition_name` varchar(50) DEFAULT '',
  `expedition_route` varchar(50) DEFAULT '',
  `expedition_address` text,
  `expedition_city` int DEFAULT NULL,
  `expedition_home_phone` varchar(50) DEFAULT '',
  `expedition_mobile_phone1` varchar(50) DEFAULT '',
  `expedition_mobile_phone2` varchar(50) DEFAULT '',
  `expedition_fax_number` varchar(50) DEFAULT '',
  `expedition_email` varchar(50) DEFAULT '',
  `expedition_person_in_charge` varchar(50) DEFAULT '',
  `expedition_status` decimal(1,0) DEFAULT '0',
  `expedition_remark` text,
  `expedition_acct_invoice` int DEFAULT '0',
  `expedition_acct_payable` int DEFAULT '0',
  `expedition_acct_claim` int DEFAULT '0',
  `expedition_acct_receivable` int DEFAULT '0',
  `expedition_token` varchar(250) DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`expedition_id`),
  KEY `FK_core_expedition_expedition_city` (`expedition_city`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `core_grade` */

DROP TABLE IF EXISTS `core_grade`;

CREATE TABLE `core_grade` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_package` */

DROP TABLE IF EXISTS `core_package`;

CREATE TABLE `core_package` (
  `package_id` bigint NOT NULL AUTO_INCREMENT,
  `package_name` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_project` */

DROP TABLE IF EXISTS `core_project`;

CREATE TABLE `core_project` (
  `project_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `project_type_id` int DEFAULT '0',
  `project_category_id` bigint DEFAULT '0',
  `customer_id` bigint DEFAULT '0',
  `project_code` varchar(20) DEFAULT '',
  `project_name` varchar(50) DEFAULT '',
  `project_tender` decimal(20,2) DEFAULT '0.00',
  `project_remark` text,
  `project_date` date DEFAULT NULL,
  `project_status` varchar(10) DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_project_category` */

DROP TABLE IF EXISTS `core_project_category`;

CREATE TABLE `core_project_category` (
  `project_category_id` int NOT NULL AUTO_INCREMENT,
  `project_category_code` varchar(20) DEFAULT '',
  `project_category_name` varchar(250) DEFAULT '',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_province` */

DROP TABLE IF EXISTS `core_province`;

CREATE TABLE `core_province` (
  `province_id` int NOT NULL AUTO_INCREMENT,
  `province_code` char(2) NOT NULL,
  `province_name` varchar(255) NOT NULL,
  `province_no` varchar(20) DEFAULT '',
  `data_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`province_id`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `core_supplier` */

DROP TABLE IF EXISTS `core_supplier`;

CREATE TABLE `core_supplier` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '1',
  `province_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `supplier_code` varchar(20) DEFAULT '',
  `supplier_name` varchar(50) DEFAULT '',
  `supplier_id_number` varchar(30) DEFAULT '',
  `supplier_address` text,
  `supplier_city` varchar(50) DEFAULT '',
  `supplier_home_phone` varchar(200) DEFAULT '',
  `supplier_mobile_phone1` varchar(200) DEFAULT '',
  `supplier_mobile_phone2` varchar(200) DEFAULT '',
  `supplier_fax_number` varchar(200) DEFAULT '',
  `supplier_email` varchar(200) DEFAULT '',
  `supplier_contact_person` varchar(50) DEFAULT '',
  `supplier_bank_acct_name` varchar(50) DEFAULT '',
  `supplier_bank_acct_no` varchar(30) DEFAULT '',
  `supplier_tax_no` varchar(30) DEFAULT '',
  `supplier_npwp_no` varchar(255) DEFAULT NULL,
  `supplier_npwp_address` text,
  `supplier_payment_terms` decimal(10,0) DEFAULT '0',
  `supplier_status` decimal(1,0) DEFAULT '0' COMMENT '1 : Active, 0 : Suspended',
  `supplier_remark` text,
  `advance_account_id` int DEFAULT '0',
  `giro_account_id` int DEFAULT '0',
  `payable_account_id` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`),
  KEY `FK_core_supplier_province_id` (`province_id`),
  KEY `FK_core_supplier_city_id` (`city_id`),
  KEY `FK_core_supplier_branch_id` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `inv_goods_received_note` */

DROP TABLE IF EXISTS `inv_goods_received_note`;

CREATE TABLE `inv_goods_received_note` (
  `goods_received_note_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint DEFAULT '0',
  `supplier_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `goods_received_note_no` varchar(20) DEFAULT '',
  `goods_received_note_date` date DEFAULT NULL,
  `goods_received_note_expired_date` date DEFAULT NULL,
  `goods_received_note_remark` text,
  `goods_received_note_status_invoice` decimal(1,0) NOT NULL DEFAULT '0',
  `receipt_image` varchar(500) DEFAULT NULL,
  `delivery_note_no` varchar(250) DEFAULT NULL,
  `faktur_no` varchar(255) DEFAULT NULL,
  `subtotal_item` decimal(20,0) DEFAULT '0',
  `item_type` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `voided_remark` text,
  `voided_id` int DEFAULT '0',
  `voided_at` datetime DEFAULT NULL,
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_received_note_id`),
  KEY `data_state` (`data_state`),
  KEY `created_id` (`created_id`),
  KEY `item_type` (`item_type`),
  KEY `FK_goods_received_note_warehouse_id` (`warehouse_id`),
  KEY `FK_goods_received_note_supplier_id` (`supplier_id`),
  KEY `FK_goods_received_note_purchase_order_id` (`purchase_order_id`),
  CONSTRAINT `FK_inv_goods_received_note_purchase_order_id` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`purchase_order_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `core_supplier` (`supplier_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `inv_warehouse` (`warehouse_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_goods_received_note_batch_number` */

DROP TABLE IF EXISTS `inv_goods_received_note_batch_number`;

CREATE TABLE `inv_goods_received_note_batch_number` (
  `goods_received_note_batch_number_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_batch_number` varchar(50) DEFAULT '',
  `quantity_batch_number` decimal(10,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_received_note_batch_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_goods_received_note_item` */

DROP TABLE IF EXISTS `inv_goods_received_note_item`;

CREATE TABLE `inv_goods_received_note_item` (
  `goods_received_note_item_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` bigint DEFAULT '0',
  `purchase_order_id` bigint DEFAULT '0',
  `purchase_order_item_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_stock_id` bigint DEFAULT '0',
  `quantity` decimal(10,0) DEFAULT '0',
  `quantity_received` decimal(10,0) DEFAULT '0',
  `item_batch_number` varchar(250) DEFAULT '',
  `item_expired_date` date DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `voided_id` int DEFAULT '0',
  `voided_at` datetime DEFAULT NULL,
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_received_note_item_id`),
  KEY `data_state` (`data_state`),
  KEY `item_category_id` (`item_category_id`),
  KEY `item_unit_id` (`item_unit_id`),
  KEY `created_id` (`created_id`),
  KEY `deleted_id` (`voided_id`),
  KEY `item_batch_number` (`item_batch_number`),
  KEY `item_id` (`item_type_id`),
  KEY `FK_goods_received_note_item_goods_received_note_id` (`goods_received_note_id`),
  KEY `FK_goods_received_note_item_purchase_order_id` (`purchase_order_id`),
  KEY `FK_goods_received_note_item_purchase_order_item_id` (`purchase_order_item_id`),
  KEY `FK_invt_goods_received_note_item_item_stock_id` (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item` */

DROP TABLE IF EXISTS `inv_item`;

CREATE TABLE `inv_item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_type_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT '0',
  `grade_id` int DEFAULT NULL,
  `item_parent_id` int DEFAULT '0',
  `item_code` varchar(20) DEFAULT '',
  `item_name` varchar(100) DEFAULT '',
  `purchase_account_id` int NOT NULL DEFAULT '0',
  `purchase_return_account_id` int NOT NULL DEFAULT '0',
  `purchase_discount_account_id` int NOT NULL DEFAULT '0',
  `sales_account_id` int NOT NULL DEFAULT '0',
  `sales_return_account_id` int NOT NULL DEFAULT '0',
  `sales_discount_account_id` int NOT NULL DEFAULT '0',
  `inv_account_id` int NOT NULL DEFAULT '0',
  `inv_return_account_id` int NOT NULL DEFAULT '0',
  `inv_discount_account_id` int NOT NULL DEFAULT '0',
  `hpp_account_id` int NOT NULL DEFAULT '0',
  `hpp_amount` int NOT NULL DEFAULT '0',
  `inventory_account_id` int NOT NULL DEFAULT '0',
  `wip_account_id` int NOT NULL DEFAULT '0',
  `item_status` decimal(1,0) DEFAULT '0',
  `item_remark` text,
  `item_barcode` varchar(50) DEFAULT '',
  `item_reorder_point` decimal(10,0) DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_default_quantity` decimal(10,0) DEFAULT '0',
  `item_unit_price` decimal(10,0) DEFAULT '0',
  `item_unit_cost` decimal(10,0) DEFAULT '0',
  `item_picture` varchar(50) DEFAULT '',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`),
  KEY `FK_invt_item_item_category_id` (`item_category_id`),
  KEY `FK_invt_item_item_parent_id` (`item_parent_id`),
  KEY `item_unit_id1` (`item_unit_id`),
  KEY `FK_inv_item_item_type_id` (`item_type_id`),
  KEY `FK_inv_item_grade_id` (`grade_id`),
  KEY `FK_inv_item_purchase_account_id` (`purchase_account_id`),
  KEY `FK_inv_item_purchase_return_account_id` (`purchase_return_account_id`),
  KEY `FK_inv_item_purchase_discount_account_id` (`purchase_discount_account_id`),
  KEY `FK_inv_item_sales_account_id` (`sales_account_id`),
  KEY `FK_inv_item_sales_return_account_id` (`sales_return_account_id`),
  KEY `FK_inv_item_sales_discount_account_id` (`sales_discount_account_id`),
  KEY `FK_inv_item_inv_account_id` (`inv_account_id`),
  KEY `FK_inv_item_inv_return_account_id` (`inv_return_account_id`),
  KEY `FK_inv_item_inv_discount_account_id` (`inv_discount_account_id`),
  KEY `FK_inv_item_hpp_account_id` (`hpp_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_category` */

DROP TABLE IF EXISTS `inv_item_category`;

CREATE TABLE `inv_item_category` (
  `item_category_id` int NOT NULL AUTO_INCREMENT,
  `item_category_name` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_old` */

DROP TABLE IF EXISTS `inv_item_old`;

CREATE TABLE `inv_item_old` (
  `item_id` bigint NOT NULL AUTO_INCREMENT,
  `item_category_id` bigint DEFAULT NULL,
  `item_type_id` bigint DEFAULT NULL,
  `grade_id` bigint DEFAULT NULL,
  `item_price` bigint DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`),
  KEY `FK_core_product_grade_id` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_stock` */

DROP TABLE IF EXISTS `inv_item_stock`;

CREATE TABLE `inv_item_stock` (
  `item_stock_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` int DEFAULT NULL,
  `goods_received_note_item_id` int DEFAULT NULL,
  `item_stock_date` date DEFAULT NULL,
  `item_stock_expired_date` date DEFAULT NULL,
  `item_batch_number` varchar(250) DEFAULT '',
  `purchase_order_item_id` bigint DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `purchase_order_no` varchar(255) NOT NULL,
  `buyers_acknowledgment_no` varchar(255) NOT NULL,
  `no_retur_barang` varchar(255) NOT NULL,
  `nota_retur_pajak` varchar(255) NOT NULL,
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '5',
  `category` varchar(255) DEFAULT NULL,
  `barang` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `item_total` decimal(10,0) DEFAULT '0',
  `item_unit_cost` decimal(20,0) DEFAULT '0',
  `item_unit_total` decimal(20,0) DEFAULT '0',
  `item_unit_price` decimal(20,0) DEFAULT '0',
  `item_unit_id_default` int DEFAULT NULL,
  `item_default_quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `item_weight_default` int DEFAULT NULL,
  `item_weight_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `package_id` int DEFAULT NULL,
  `package_total` decimal(10,0) DEFAULT '0',
  `package_unit_id` int DEFAULT '0',
  `package_price` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_stock_adjustment` */

DROP TABLE IF EXISTS `inv_item_stock_adjustment`;

CREATE TABLE `inv_item_stock_adjustment` (
  `stock_adjustment_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_id` int DEFAULT NULL,
  `stock_adjustment_date` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`stock_adjustment_id`),
  KEY `FK_warehouse_adjustment` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `inv_item_stock_adjustment_item` */

DROP TABLE IF EXISTS `inv_item_stock_adjustment_item`;

CREATE TABLE `inv_item_stock_adjustment_item` (
  `stock_adjustment_item_id` int NOT NULL AUTO_INCREMENT,
  `stock_adjustment_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_stock_id` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_first_amount` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_adjustment_amount` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_last_amount` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_adjustment_remark` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`stock_adjustment_item_id`),
  KEY `FK_adjustment_id` (`stock_adjustment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `inv_item_stock_card` */

DROP TABLE IF EXISTS `inv_item_stock_card`;

CREATE TABLE `inv_item_stock_card` (
  `item_stock_card_id` bigint NOT NULL AUTO_INCREMENT,
  `item_stock_id` int DEFAULT '0',
  `section_id` int DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `supplier_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_stock_type` decimal(1,0) DEFAULT '0',
  `item_batch_number` varchar(20) DEFAULT '',
  `item_color` varchar(20) DEFAULT '',
  `item_size` int DEFAULT '0',
  `transaction_id` decimal(10,0) DEFAULT '0',
  `transaction_type` decimal(10,0) DEFAULT '0',
  `transaction_code` varchar(250) DEFAULT '0',
  `transaction_date` date DEFAULT NULL,
  `opening_balance` decimal(20,0) DEFAULT '0',
  `opening_balance_unfinished` decimal(20,0) DEFAULT '0',
  `item_stock_card_in` decimal(20,0) DEFAULT '0',
  `item_stock_card_out` decimal(20,0) DEFAULT '0',
  `item_unit_default_quantity` decimal(10,0) DEFAULT '0',
  `last_balance` decimal(20,0) DEFAULT '0',
  `last_balance_unfinished` decimal(20,0) DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_card_id`),
  KEY `FK_inv_item_stock_card_item_id` (`item_type_id`),
  KEY `FK_inv_item_stock_card_supplier_id` (`supplier_id`),
  KEY `FK_inv_item_stock_card_warehouse_id` (`warehouse_id`),
  KEY `FK_inv_item_stock_card_item_category_id` (`item_category_id`),
  KEY `FK_inv_item_stock_card_item_unit_id` (`item_unit_id`),
  KEY `FK_inv_item_stock_card_section_id` (`section_id`),
  KEY `item_batch_number` (`item_batch_number`)
) ENGINE=InnoDB AUTO_INCREMENT=74963 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_stock_old` */

DROP TABLE IF EXISTS `inv_item_stock_old`;

CREATE TABLE `inv_item_stock_old` (
  `item_stock_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` int DEFAULT NULL,
  `goods_received_note_item_id` int DEFAULT NULL,
  `item_stock_date` date DEFAULT NULL,
  `item_stock_expired_date` date DEFAULT NULL,
  `item_batch_number` varchar(250) DEFAULT '',
  `purchase_order_item_id` bigint DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `purchase_order_no` varchar(255) NOT NULL,
  `buyers_acknowledgment_no` varchar(255) NOT NULL,
  `no_retur_barang` varchar(255) NOT NULL,
  `nota_retur_pajak` varchar(255) NOT NULL,
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '1',
  `item_total` decimal(10,0) DEFAULT '0',
  `item_unit_cost` decimal(20,0) DEFAULT '0',
  `item_unit_total` decimal(20,0) DEFAULT '0',
  `item_unit_price` decimal(20,0) DEFAULT '0',
  `item_unit_id_default` int DEFAULT NULL,
  `item_default_quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `item_weight_default` int DEFAULT NULL,
  `item_weight_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `package_id` int DEFAULT NULL,
  `package_total` decimal(10,0) DEFAULT '0',
  `package_unit_id` int DEFAULT '0',
  `package_price` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_stock_package` */

DROP TABLE IF EXISTS `inv_item_stock_package`;

CREATE TABLE `inv_item_stock_package` (
  `item_stock_package_id` bigint NOT NULL AUTO_INCREMENT,
  `item_stock_id` bigint DEFAULT NULL,
  `package_stock_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `package_unit_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_type` */

DROP TABLE IF EXISTS `inv_item_type`;

CREATE TABLE `inv_item_type` (
  `item_type_id` int NOT NULL AUTO_INCREMENT,
  `item_category_id` int DEFAULT NULL,
  `item_type_name` varchar(250) DEFAULT NULL,
  `item_type_expired_time` int DEFAULT NULL,
  `item_package_status` int DEFAULT '0' COMMENT '0 = warehouse-out, 1 = grading',
  `item_unit_1` varchar(250) DEFAULT NULL,
  `item_quantity_default_1` varchar(250) DEFAULT NULL,
  `item_weight_1` varchar(250) DEFAULT NULL,
  `item_unit_2` varchar(250) DEFAULT NULL,
  `item_quantity_default_2` varchar(250) DEFAULT NULL,
  `item_weight_2` varchar(250) DEFAULT NULL,
  `item_unit_3` varchar(250) DEFAULT NULL,
  `item_quantity_default_3` varchar(250) DEFAULT NULL,
  `item_weight_3` varchar(250) DEFAULT NULL,
  `purchase_account_id` int DEFAULT NULL,
  `purchase_return_account_id` int DEFAULT NULL,
  `purchase_discount_account_id` int DEFAULT NULL,
  `sales_account_id` int DEFAULT NULL,
  `sales_return_account_id` int DEFAULT NULL,
  `sales_discount_account_id` int DEFAULT NULL,
  `inv_account_id` int DEFAULT NULL,
  `inv_return_account_id` int DEFAULT NULL,
  `inv_discount_account_id` int DEFAULT NULL,
  `hpp_account_id` int DEFAULT NULL,
  `hpp_amount` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_type_id`),
  KEY `FK_core_product_type_product_catedory_id` (`item_category_id`),
  KEY `FK_inv_item_type_purchase_account_id` (`purchase_account_id`),
  KEY `FK_inv_item_type_purchase_return_account_id` (`purchase_return_account_id`),
  KEY `FK_inv_item_type_purchase_discount_account_id` (`purchase_discount_account_id`),
  KEY `FK_inv_item_type_sales_account_id` (`sales_account_id`),
  KEY `FK_inv_item_type_sales_return_account_id` (`sales_return_account_id`),
  KEY `FK_inv_item_type_sales_discount_account_id` (`sales_discount_account_id`),
  KEY `FK_inv_item_type_inv_account_id` (`inv_account_id`),
  KEY `FK_inv_item_type_inv_return_account_id` (`inv_return_account_id`),
  KEY `FK_inv_item_type_inv_discount_account_id` (`inv_discount_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_unit` */

DROP TABLE IF EXISTS `inv_item_unit`;

CREATE TABLE `inv_item_unit` (
  `item_unit_id` int NOT NULL AUTO_INCREMENT,
  `item_unit_code` varchar(20) DEFAULT '',
  `item_unit_name` varchar(50) DEFAULT '',
  `item_unit_default_quantity` decimal(10,0) DEFAULT '1',
  `item_unit_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_item_unit_cost` */

DROP TABLE IF EXISTS `inv_item_unit_cost`;

CREATE TABLE `inv_item_unit_cost` (
  `item_unit_cost_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_batch_number` varchar(50) DEFAULT '',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `last_balance_stock` decimal(10,2) DEFAULT '0.00',
  `item_unit_cost` decimal(20,2) DEFAULT '0.00',
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `last_balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_unit_cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse` */

DROP TABLE IF EXISTS `inv_warehouse`;

CREATE TABLE `inv_warehouse` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_location_id` int DEFAULT NULL,
  `warehouse_code` varchar(20) DEFAULT '',
  `warehouse_type` varchar(10) DEFAULT NULL,
  `warehouse_name` varchar(50) DEFAULT '',
  `warehouse_address` text,
  `warehouse_phone` varchar(50) DEFAULT NULL,
  `warehouse_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_id`),
  KEY `FK_inv_warehouse_warehouse_location` (`warehouse_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_in` */

DROP TABLE IF EXISTS `inv_warehouse_in`;

CREATE TABLE `inv_warehouse_in` (
  `warehouse_in_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_in_no` varchar(50) DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `warehouse_in_type_id` int DEFAULT NULL,
  `warehouse_in_date` date DEFAULT NULL,
  `warehouse_in_remark` text,
  `warehouse_in_status` int DEFAULT '0',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_in_id`),
  KEY `FK_inv_warehouse_out_warehouse_id` (`warehouse_id`),
  KEY `FK_inv_warehouse_out_warehouse_out_type_id` (`warehouse_in_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_in_item` */

DROP TABLE IF EXISTS `inv_warehouse_in_item`;

CREATE TABLE `inv_warehouse_in_item` (
  `warehouse_in_item_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_in_id` int DEFAULT NULL,
  `item_stock_id` bigint DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_in_item_id`),
  KEY `FK_inv_warehouse_out_item_item_stock_id` (`item_stock_id`),
  KEY `FK_inv_warehouse_out_item_item_unit_id` (`item_unit_id`),
  KEY `FK_inv_warehouse_out_item_warehouse_out_id` (`warehouse_in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_in_type` */

DROP TABLE IF EXISTS `inv_warehouse_in_type`;

CREATE TABLE `inv_warehouse_in_type` (
  `warehouse_in_type_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_in_type_name` varchar(250) DEFAULT NULL,
  `warehouse_in_type_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_in_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_location` */

DROP TABLE IF EXISTS `inv_warehouse_location`;

CREATE TABLE `inv_warehouse_location` (
  `warehouse_location_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_location_code` varchar(20) DEFAULT '',
  `province_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_location_id`),
  KEY `FK_warehouse_location_province_id` (`province_id`),
  KEY `FK_warehouse_location_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_out` */

DROP TABLE IF EXISTS `inv_warehouse_out`;

CREATE TABLE `inv_warehouse_out` (
  `warehouse_out_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_out_no` varchar(50) DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `warehouse_out_type_id` int DEFAULT NULL,
  `warehouse_out_date` date DEFAULT NULL,
  `warehouse_out_remark` text,
  `warehouse_out_status` int DEFAULT '0',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_out_id`),
  KEY `FK_inv_warehouse_out_warehouse_id` (`warehouse_id`),
  KEY `FK_inv_warehouse_out_warehouse_out_type_id` (`warehouse_out_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_out_item` */

DROP TABLE IF EXISTS `inv_warehouse_out_item`;

CREATE TABLE `inv_warehouse_out_item` (
  `warehouse_out_item_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_out_id` int DEFAULT NULL,
  `item_stock_id` bigint DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_out_item_id`),
  KEY `FK_inv_warehouse_out_item_item_stock_id` (`item_stock_id`),
  KEY `FK_inv_warehouse_out_item_item_unit_id` (`item_unit_id`),
  KEY `FK_inv_warehouse_out_item_warehouse_out_id` (`warehouse_out_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_out_type` */

DROP TABLE IF EXISTS `inv_warehouse_out_type`;

CREATE TABLE `inv_warehouse_out_type` (
  `warehouse_out_type_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_out_type_name` varchar(250) DEFAULT NULL,
  `warehouse_out_type_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_out_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_transfer` */

DROP TABLE IF EXISTS `inv_warehouse_transfer`;

CREATE TABLE `inv_warehouse_transfer` (
  `warehouse_transfer_id` bigint NOT NULL AUTO_INCREMENT,
  `expedition_id` int DEFAULT NULL,
  `warehouse_transfer_no` varchar(250) DEFAULT NULL,
  `warehouse_transfer_date` date DEFAULT NULL,
  `warehouse_transfer_remark` text,
  `warehouse_transfer_from` int DEFAULT NULL,
  `warehouse_transfer_to` int DEFAULT NULL,
  `warehouse_transfer_type_id` int DEFAULT NULL,
  `warehouse_transfer_status` int DEFAULT '0' COMMENT '0 = belum diterima, 1 = diterima',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_transfer_id`),
  KEY `FK_inv_warehouse_transfer_warehouse_transfer_from` (`warehouse_transfer_from`),
  KEY `FK_inv_warehouse_transfer_warehouse_transform_to` (`warehouse_transfer_to`),
  KEY `FK_inv_warehouse_transfer_warehouse_transfer_type_id` (`warehouse_transfer_type_id`),
  KEY `FK_inv_warehouse_transfer_expedition_id` (`expedition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_transfer_item` */

DROP TABLE IF EXISTS `inv_warehouse_transfer_item`;

CREATE TABLE `inv_warehouse_transfer_item` (
  `warehouse_transfer_item_id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_transfer_id` bigint DEFAULT '0',
  `purchase_invoice_id` bigint DEFAULT '0',
  `item_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT '0',
  `item_stock_id` int DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `warehouse_transfer_item_remark` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_transfer_item_id`),
  KEY `FK_invt_warehouse_transfer_item_warehouse_transfer_id` (`warehouse_transfer_id`),
  KEY `FK_inv_warehouse_transfer_item_purchase_invoice_id` (`purchase_invoice_id`),
  KEY `FK_inv_warehouse_transfer_item` (`item_category_id`),
  KEY `FK_inv_warehouse_transfer_item_type_id` (`item_type_id`),
  KEY `FK_inv_warehouse_transfer_item_item_unit_id` (`item_unit_id`),
  KEY `FK_inv_warehouse_transfer_item_item_stock_id` (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_transfer_received_note` */

DROP TABLE IF EXISTS `inv_warehouse_transfer_received_note`;

CREATE TABLE `inv_warehouse_transfer_received_note` (
  `warehouse_transfer_received_note_id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_transfer_id` bigint DEFAULT NULL,
  `warehouse_transfer_received_note_no` varchar(250) DEFAULT NULL,
  `warehouse_transfer_received_note_date` date DEFAULT NULL,
  `warehouse_transfer_received_note_remark` varchar(250) DEFAULT NULL,
  `goods_received_note_id` bigint DEFAULT NULL,
  `goods_received_note_date` date DEFAULT NULL,
  `warehouse_transfer_to` int DEFAULT NULL,
  `warehouse_transfer_from` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_transfer_received_note_id`),
  KEY `FK_received_note_warehouse_transfer_id` (`warehouse_transfer_id`),
  KEY `FK_received_note_goods_received_note_id` (`goods_received_note_id`),
  KEY `FK_received_note_warehouse_transfer_to` (`warehouse_transfer_to`),
  KEY `FK_received_note_warehouse_transfer_from` (`warehouse_transfer_from`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_transfer_received_note_item` */

DROP TABLE IF EXISTS `inv_warehouse_transfer_received_note_item`;

CREATE TABLE `inv_warehouse_transfer_received_note_item` (
  `warehouse_transfer_received_note_item_id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_transfer_item_id` bigint DEFAULT NULL,
  `warehouse_transfer_received_note_id` bigint DEFAULT '0',
  `item_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_stock_id` int DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT '0.00',
  `item_batch_number` varchar(250) DEFAULT '',
  `data_state` int DEFAULT '0',
  `voided_id` int DEFAULT '0',
  `voided_at` datetime DEFAULT NULL,
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_transfer_received_note_item_id`),
  KEY `data_state` (`data_state`),
  KEY `item_category_id` (`item_category_id`),
  KEY `item_unit_id` (`item_unit_id`),
  KEY `created_id` (`created_id`),
  KEY `deleted_id` (`voided_id`),
  KEY `item_batch_number` (`item_batch_number`),
  KEY `item_id` (`item_type_id`),
  KEY `FK_received_note_item_warehouse_transfer_item_id` (`warehouse_transfer_item_id`),
  KEY `FK_received_note_item_warehouse_transfer_received_note_id` (`warehouse_transfer_received_note_id`),
  KEY `FK_received_note_item_item_stock_id` (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `inv_warehouse_transfer_type` */

DROP TABLE IF EXISTS `inv_warehouse_transfer_type`;

CREATE TABLE `inv_warehouse_transfer_type` (
  `warehouse_transfer_type_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_transfer_type_name` varchar(50) DEFAULT '',
  `warehouse_transfer_type_remark` text,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `deleted_id` int DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warehouse_transfer_type_id`),
  KEY `data_state` (`data_state`),
  KEY `created_id` (`created_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `p_p_o_b_s` */

DROP TABLE IF EXISTS `p_p_o_b_s`;

CREATE TABLE `p_p_o_b_s` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `preference_company` */

DROP TABLE IF EXISTS `preference_company`;

CREATE TABLE `preference_company` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT '',
  `company_address` text,
  `company_phone_number` varchar(30) DEFAULT '',
  `company_mobile_number` varchar(30) DEFAULT '',
  `company_email` varchar(250) DEFAULT '',
  `company_website` varchar(250) DEFAULT '',
  `company_tax_number` varchar(250) DEFAULT '',
  `company_account_receivable_due_date` int DEFAULT '0',
  `company_account_payable_due_date` int DEFAULT '0',
  `company_logo` longblob,
  `CDBO_no` varchar(255) DEFAULT NULL,
  `distribution_no` varchar(255) DEFAULT NULL,
  `account_inventory_trade_id` int NOT NULL DEFAULT '0',
  `account_vat_in_id` int NOT NULL DEFAULT '0',
  `account_vat_out_id` int NOT NULL DEFAULT '0',
  `account_payable_id` int NOT NULL DEFAULT '0',
  `account_bank_or_cash_id` int NOT NULL,
  `account_pdp_id` int NOT NULL,
  `account_bank_cash_hpp_id` int NOT NULL,
  `account_receivable_id` int NOT NULL DEFAULT '0',
  `account_shortover_id` int DEFAULT '0',
  `account_sales_id` int NOT NULL,
  `ppn_amount_in` decimal(20,0) DEFAULT '10',
  `ppn_amount_out` decimal(20,0) DEFAULT '10',
  `sales_discount_id` int NOT NULL DEFAULT '0',
  `purchase_discount_id` int NOT NULL DEFAULT '0',
  `pharmacist_license_no` varchar(255) DEFAULT NULL,
  `account_sales_return_id` int NOT NULL,
  `account_hpp_id` int NOT NULL,
  `account_bank_id` int NOT NULL,
  `account_cash_id` int NOT NULL DEFAULT '0',
  `account_cash_on_way_id` int DEFAULT '0',
  `account_delivery_id` int DEFAULT '0',
  `account_expense_id` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_id`),
  KEY `FK_preference_company_account_payable_id` (`account_payable_id`),
  KEY `FK_preference_company_account_receivable_id` (`account_receivable_id`),
  KEY `FK_preference_company_account_shortover_id` (`account_shortover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `preference_transaction_module` */

DROP TABLE IF EXISTS `preference_transaction_module`;

CREATE TABLE `preference_transaction_module` (
  `transaction_module_id` int NOT NULL AUTO_INCREMENT,
  `transaction_module_name` varchar(50) DEFAULT '',
  `transaction_module_code` varchar(50) DEFAULT '',
  `transaction_id` decimal(10,0) DEFAULT '0',
  `transaction_controller` varchar(200) DEFAULT '',
  `status` enum('1','0') DEFAULT '0',
  `created_by` varchar(20) DEFAULT '',
  `data_state` enum('0','1','2','3') DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_invoice` */

DROP TABLE IF EXISTS `purchase_invoice`;

CREATE TABLE `purchase_invoice` (
  `purchase_invoice_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` bigint DEFAULT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `branch_id` int DEFAULT '0',
  `supplier_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `payment_method_account_id` int NOT NULL DEFAULT '0',
  `ongkir_account_id` int DEFAULT '0',
  `purchase_invoice_date` date DEFAULT NULL,
  `purchase_invoice_payment_terms` decimal(10,2) DEFAULT '0.00',
  `purchase_invoice_due_date` date DEFAULT NULL,
  `purchase_invoice_no` varchar(50) DEFAULT '',
  `purchase_invoice_reference_no` varchar(50) DEFAULT '',
  `purchase_invoice_remark` text,
  `purchase_police_number` varchar(20) DEFAULT '',
  `subtotal_item` decimal(10,0) DEFAULT '0',
  `subtotal_amount` decimal(20,2) DEFAULT '0.00',
  `discount_percentage` decimal(5,2) DEFAULT '0.00',
  `discount_amount` decimal(20,2) DEFAULT '0.00',
  `purchase_handling_fee` decimal(20,2) DEFAULT '0.00',
  `ppn_in_amount` decimal(20,0) DEFAULT '0',
  `tax_percentage` decimal(5,2) DEFAULT '0.00',
  `tax_amount` decimal(20,2) DEFAULT '0.00',
  `faktur_tax_no` varchar(255) DEFAULT NULL,
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `paid_amount` decimal(20,2) DEFAULT '0.00',
  `payment_discount` decimal(20,2) DEFAULT '0.00',
  `owing_amount` decimal(20,2) DEFAULT '0.00',
  `shortover_amount` decimal(20,2) DEFAULT '0.00',
  `down_payment_amount` decimal(20,2) DEFAULT '0.00',
  `purchase_return_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `debit_amount` decimal(20,2) DEFAULT '0.00',
  `purchase_invoice_status` decimal(1,0) DEFAULT '0' COMMENT '0 : Belum Lunas, 1 : Lunas',
  `purchase_invoice_token` varchar(250) DEFAULT NULL,
  `purchase_invoice_token_void` varchar(250) DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `record_no` varchar(20) DEFAULT '',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_invoice_id`),
  UNIQUE KEY `purchase_invoice_token` (`purchase_invoice_token`),
  UNIQUE KEY `purchase_invoice_token_void` (`purchase_invoice_token_void`),
  KEY `FK_purchase_invoice_goods_received_note_id` (`goods_received_note_id`),
  KEY `FK_purchase_invoice_purchase_order_id` (`purchase_order_id`),
  KEY `FK_purchase_invoice_branch_id` (`branch_id`),
  KEY `FK_purchase_invoice_supplier_id` (`supplier_id`),
  KEY `FK_purchase_invoice_warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_invoice_item` */

DROP TABLE IF EXISTS `purchase_invoice_item`;

CREATE TABLE `purchase_invoice_item` (
  `purchase_invoice_item_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_invoice_id` bigint DEFAULT '0',
  `goods_received_note_item_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `quantity_scale` decimal(10,2) DEFAULT '0.00',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `item_unit_id` int DEFAULT '0',
  `item_unit_cost` decimal(10,2) DEFAULT '0.00',
  `subtotal_amount` decimal(20,2) DEFAULT '0.00',
  `discount_percentage` decimal(5,2) DEFAULT '0.00',
  `discount_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_amount_after_discount` decimal(20,2) DEFAULT '0.00',
  `purchase_invoice_item_token` varbinary(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_invoice_item_id`),
  UNIQUE KEY `purchase_invoice_item_token` (`purchase_invoice_item_token`),
  KEY `FK_purchase_invoice_item_purchase_invoice_id` (`purchase_invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_order` */

DROP TABLE IF EXISTS `purchase_order`;

CREATE TABLE `purchase_order` (
  `purchase_order_id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `purchase_order_no` varchar(20) DEFAULT '',
  `purchase_order_date` date DEFAULT NULL,
  `purchase_order_shipment_date` date DEFAULT NULL,
  `purchase_order_payment_terms` decimal(10,0) DEFAULT '0',
  `purchase_order_remark` text,
  `total_item` decimal(10,2) DEFAULT '0.00',
  `total_received_item` decimal(20,2) DEFAULT '0.00',
  `subtotal_amount` decimal(20,2) DEFAULT '0.00',
  `discount_percentage` decimal(5,2) DEFAULT '0.00',
  `discount_amount` decimal(20,2) DEFAULT '0.00',
  `ppn_in_percentage` decimal(5,2) DEFAULT '0.00',
  `ppn_in_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_after_ppn_in` decimal(20,2) DEFAULT '0.00',
  `tax_percentage` decimal(5,2) DEFAULT '0.00',
  `tax_amount` decimal(20,2) DEFAULT '0.00',
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `down_payment_amount` decimal(20,2) DEFAULT '0.00',
  `down_payment_amount_balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `last_balance_amount` decimal(20,2) DEFAULT '0.00',
  `purchase_order_type_id` bigint DEFAULT '0',
  `purchase_order_status` int DEFAULT '0' COMMENT '0= Dalam Proses, 1= Sebagian Diterima, 2=Sudah Diterima',
  `purchase_invoice_status` int NOT NULL DEFAULT '0',
  `item_type` int DEFAULT '0',
  `branch_id` int DEFAULT NULL,
  `approved` int DEFAULT '0',
  `approved_id` int DEFAULT '0',
  `approved_on` datetime DEFAULT NULL,
  `approved_remark` text,
  `closed_remark` text,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_id`),
  KEY `FK_purchase_order_supplier_id` (`supplier_id`),
  KEY `data_state` (`data_state`),
  KEY `created_id` (`created_id`),
  KEY `FK_purchase_order_warehouse_id` (`warehouse_id`),
  KEY `FK_purchase_order_purchase_order_type_id` (`purchase_order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_order_item` */

DROP TABLE IF EXISTS `purchase_order_item`;

CREATE TABLE `purchase_order_item` (
  `purchase_order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint DEFAULT '0',
  `purchase_requisition_id` bigint DEFAULT '0',
  `purchase_requisition_item_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_type_id` int DEFAULT '0',
  `quantity` decimal(10,0) DEFAULT '0',
  `quantity_outstanding` decimal(10,0) DEFAULT '0',
  `quantity_received` decimal(10,0) DEFAULT '0',
  `quantity_return` decimal(10,0) DEFAULT '0',
  `item_unit_cost` decimal(20,0) DEFAULT '0',
  `subtotal_amount` decimal(20,0) DEFAULT '0',
  `discount_percentage` decimal(5,0) DEFAULT '0',
  `discount_amount` decimal(20,0) DEFAULT '0',
  `subtotal_amount_after_discount` decimal(20,0) DEFAULT '0',
  `purchase_order_item_creassing` varchar(250) DEFAULT '',
  `purchase_order_token` varchar(250) DEFAULT '',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_item_id`),
  KEY `data_state` (`data_state`),
  KEY `created_id` (`created_id`),
  KEY `purchase_order_token` (`purchase_order_token`),
  KEY `item_flute_id` (`item_type_id`),
  KEY `FK_purchase_order_item_purchase_order_id` (`purchase_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_order_return` */

DROP TABLE IF EXISTS `purchase_order_return`;

CREATE TABLE `purchase_order_return` (
  `purchase_order_return_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint DEFAULT NULL,
  `purchase_invoice_id` decimal(20,0) DEFAULT '0',
  `supplier_id` bigint DEFAULT NULL,
  `warehouse_id` bigint DEFAULT '7',
  `purchase_order_return_no` varchar(200) DEFAULT NULL,
  `purchase_order_return_date` date DEFAULT NULL,
  `purchase_order_return_remark` text,
  `ppn_in_amount` decimal(20,0) DEFAULT '0',
  `ppn_in_percentage` decimal(20,0) DEFAULT '0',
  `subtotal_amount` decimal(20,0) DEFAULT '0',
  `subtotal_amount_after_ppn` decimal(20,0) DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_return_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_order_return_item` */

DROP TABLE IF EXISTS `purchase_order_return_item`;

CREATE TABLE `purchase_order_return_item` (
  `purchase_order_return_item_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_order_return_id` bigint DEFAULT NULL,
  `purchase_invoice_item_id` bigint DEFAULT NULL,
  `purchase_order_item_id` bigint DEFAULT NULL,
  `item_category_id` bigint DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_batch_number` varchar(200) DEFAULT NULL,
  `item_expired_date` date DEFAULT NULL,
  `quantity_order` decimal(20,0) DEFAULT '0',
  `quantity_return` decimal(10,0) DEFAULT '0',
  `total_amount` decimal(20,0) DEFAULT '0',
  `data_state` bigint DEFAULT '0',
  `created_id` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_return_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_order_type` */

DROP TABLE IF EXISTS `purchase_order_type`;

CREATE TABLE `purchase_order_type` (
  `purchase_order_type_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_order_type_name` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_payment` */

DROP TABLE IF EXISTS `purchase_payment`;

CREATE TABLE `purchase_payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '1',
  `supplier_id` int DEFAULT '0',
  `payment_date` date DEFAULT NULL,
  `payment_no` varchar(20) DEFAULT '',
  `reference_number` varchar(20) DEFAULT '',
  `cash_account_id` int DEFAULT '0',
  `payment_remark` text,
  `payment_amount` decimal(20,2) DEFAULT '0.00',
  `payment_allocated` decimal(20,2) DEFAULT '0.00',
  `payment_shortover` decimal(20,2) DEFAULT '0.00',
  `payment_total_amount` decimal(20,2) DEFAULT '0.00',
  `payment_shortover_remark` varchar(200) DEFAULT '',
  `payment_total_cash_amount` decimal(20,2) DEFAULT '0.00',
  `payment_total_transfer_amount` decimal(20,2) DEFAULT '0.00',
  `payment_total_giro_amount` decimal(20,2) DEFAULT '0.00',
  `payment_token` varchar(250) DEFAULT NULL,
  `payment_token_void` varchar(250) DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` varchar(100) DEFAULT '',
  `posted` enum('0','1') DEFAULT '0',
  `posted_id` int DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_token` (`payment_token`),
  UNIQUE KEY `payment_token_void` (`payment_token_void`),
  KEY `FK_purchase_payment_supplier_id` (`supplier_id`) USING BTREE,
  KEY `FK_purchase_payment_branch_id` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `purchase_payment_giro` */

DROP TABLE IF EXISTS `purchase_payment_giro`;

CREATE TABLE `purchase_payment_giro` (
  `payment_giro_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint DEFAULT '0',
  `account_id` int NOT NULL DEFAULT '0',
  `payment_giro_bank_name` varchar(50) DEFAULT '',
  `payment_giro_account_name` varchar(100) DEFAULT '',
  `payment_giro_number` varchar(50) DEFAULT '',
  `payment_giro_amount` varchar(20) DEFAULT '0',
  `payment_giro_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_giro_id`),
  UNIQUE KEY `payment_giro_token` (`payment_giro_token`),
  KEY `FK_purchase_payment_giro_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `purchase_payment_item` */

DROP TABLE IF EXISTS `purchase_payment_item`;

CREATE TABLE `purchase_payment_item` (
  `payment_item_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint DEFAULT '0',
  `purchase_invoice_id` bigint DEFAULT '0',
  `purchase_invoice_no` varchar(20) DEFAULT '',
  `purchase_invoice_date` date DEFAULT NULL,
  `purchase_invoice_amount` decimal(20,2) DEFAULT '0.00',
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `paid_amount` decimal(20,2) DEFAULT '0.00',
  `owing_amount` decimal(20,2) DEFAULT '0.00',
  `shortover_amount` decimal(20,2) DEFAULT '0.00',
  `allocation_amount` decimal(20,2) DEFAULT '0.00',
  `payment_discount` decimal(20,2) DEFAULT NULL,
  `payment_item_token` varchar(250) DEFAULT NULL,
  `payment_item_token_void` varchar(250) DEFAULT NULL,
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_item_id`),
  UNIQUE KEY `payment_item_token` (`payment_item_token`),
  UNIQUE KEY `payment_item_token_void` (`payment_item_token_void`),
  KEY `FK_purchase_payment_item_purchase_invoice_id` (`purchase_invoice_id`) USING BTREE,
  KEY `FK_purchase_payment_item_payment_id` (`payment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `purchase_payment_transfer` */

DROP TABLE IF EXISTS `purchase_payment_transfer`;

CREATE TABLE `purchase_payment_transfer` (
  `payment_transfer_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint DEFAULT NULL,
  `bank_id` int DEFAULT NULL,
  `account_id` int NOT NULL DEFAULT '0',
  `payment_transfer_bank_name` varchar(50) DEFAULT NULL,
  `payment_transfer_amount` decimal(20,2) DEFAULT '0.00',
  `payment_transfer_account_name` varchar(50) DEFAULT NULL,
  `payment_transfer_account_no` varchar(20) DEFAULT '0',
  `payment_transfer_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_transfer_id`),
  UNIQUE KEY `payment_transfer_token` (`payment_transfer_token`),
  KEY `FK_purchase_payment_transfer_payment_id` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `return_pdp` */

DROP TABLE IF EXISTS `return_pdp`;

CREATE TABLE `return_pdp` (
  `return_pdp_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `warehouse_id` bigint DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `return_pdp_date` date DEFAULT NULL,
  `return_pdp_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_pdp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `return_pdp_item` */

DROP TABLE IF EXISTS `return_pdp_item`;

CREATE TABLE `return_pdp_item` (
  `return_pdp_item_id` bigint NOT NULL AUTO_INCREMENT,
  `return_pdp_id` bigint DEFAULT NULL,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_note_item_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `quantity_return` decimal(10,0) DEFAULT NULL,
  `item_unit_price` decimal(10,0) DEFAULT NULL,
  `subtotal_price` decimal(10,0) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_pdp_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `return_pdp_lost_on_expedition` */

DROP TABLE IF EXISTS `return_pdp_lost_on_expedition`;

CREATE TABLE `return_pdp_lost_on_expedition` (
  `return_pdp_lost_on_expedition_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `warehouse_id` bigint DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `return_pdp_lost_on_expedition_date` date DEFAULT NULL,
  `return_pdp_lost_on_expedition_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_pdp_lost_on_expedition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `return_pdp_lost_on_expedition_item` */

DROP TABLE IF EXISTS `return_pdp_lost_on_expedition_item`;

CREATE TABLE `return_pdp_lost_on_expedition_item` (
  `return_pdp_lost_on_expedition_item_id` bigint NOT NULL AUTO_INCREMENT,
  `return_pdp_lost_on_expedition_id` bigint DEFAULT NULL,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_note_item_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `quantity_return` decimal(10,0) DEFAULT NULL,
  `item_unit_price` decimal(10,0) DEFAULT NULL,
  `subtotal_price` decimal(10,0) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`return_pdp_lost_on_expedition_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_collection` */

DROP TABLE IF EXISTS `sales_collection`;

CREATE TABLE `sales_collection` (
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `customer_id` bigint DEFAULT NULL,
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
  KEY `FK_sales_collection_customer_id` (`customer_id`),
  KEY `FK_sales_collection_salesman_id` (`salesman_id`),
  KEY `FK_sales_collection_section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_collection_discount` */

DROP TABLE IF EXISTS `sales_collection_discount`;

CREATE TABLE `sales_collection_discount` (
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `customer_id` bigint DEFAULT NULL,
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
  KEY `FK_sales_collection_customer_id` (`customer_id`),
  KEY `FK_sales_collection_salesman_id` (`salesman_id`),
  KEY `FK_sales_collection_section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_collection_giro` */

DROP TABLE IF EXISTS `sales_collection_giro`;

CREATE TABLE `sales_collection_giro` (
  `collection_giro_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_id` bigint DEFAULT '0',
  `account_id` int NOT NULL DEFAULT '0',
  `collection_giro_bank_name` varchar(50) DEFAULT '',
  `collection_giro_number` varchar(20) DEFAULT '',
  `collection_giro_amount` decimal(20,2) DEFAULT '0.00',
  `collection_giro_due_date` date DEFAULT NULL,
  `collection_giro_account_name` varchar(50) DEFAULT '',
  `collection_giro_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_giro_id`),
  UNIQUE KEY `collection_giro_token` (`collection_giro_token`),
  KEY `FK_sales_collection_giro_bank_id` (`collection_giro_bank_name`),
  KEY `FK_sales_collection_giro_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_collection_giro_discount` */

DROP TABLE IF EXISTS `sales_collection_giro_discount`;

CREATE TABLE `sales_collection_giro_discount` (
  `collection_giro_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_id` bigint DEFAULT '0',
  `account_id` int NOT NULL DEFAULT '0',
  `collection_giro_bank_name` varchar(50) DEFAULT '',
  `collection_giro_number` varchar(20) DEFAULT '',
  `collection_giro_amount` decimal(20,2) DEFAULT '0.00',
  `collection_giro_due_date` date DEFAULT NULL,
  `collection_giro_account_name` varchar(50) DEFAULT '',
  `collection_giro_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_giro_id`),
  UNIQUE KEY `collection_giro_token` (`collection_giro_token`),
  KEY `FK_sales_collection_giro_bank_id` (`collection_giro_bank_name`),
  KEY `FK_sales_collection_giro_collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_collection_item_discount` */

DROP TABLE IF EXISTS `sales_collection_item_discount`;

CREATE TABLE `sales_collection_item_discount` (
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
  KEY `FK_sales_collection_collection_id` (`collection_id`),
  KEY `FK_sales_collection_sales_invoice_id` (`sales_invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_collection_piece` */

DROP TABLE IF EXISTS `sales_collection_piece`;

CREATE TABLE `sales_collection_piece` (
  `sales_collection_piece_id` int NOT NULL AUTO_INCREMENT,
  `sales_invoice_id` int DEFAULT NULL,
  `sales_invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sales_collection_piece_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sales_collection_piece_type_id` int NOT NULL,
  `memo_no` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `promotion_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  `piece_amount` int DEFAULT NULL,
  `total_amount_after_piece` int DEFAULT NULL,
  `claim_date` date DEFAULT NULL,
  `claim_status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sales_collection_piece_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_collection_transfer` */

DROP TABLE IF EXISTS `sales_collection_transfer`;

CREATE TABLE `sales_collection_transfer` (
  `collection_giro_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_id` bigint DEFAULT '0',
  `account_id` int NOT NULL DEFAULT '0',
  `collection_transfer_bank_name` varchar(50) DEFAULT '',
  `collection_transfer_amount` decimal(20,2) DEFAULT '0.00',
  `collection_transfer_account_name` varchar(100) DEFAULT '',
  `collection_transfer_account_no` varchar(20) DEFAULT '0',
  `collection_transfer_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_giro_id`),
  UNIQUE KEY `collection_transfer_token` (`collection_transfer_token`),
  KEY `sales_collection_transfer_collection_id` (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_collection_transfer_discount` */

DROP TABLE IF EXISTS `sales_collection_transfer_discount`;

CREATE TABLE `sales_collection_transfer_discount` (
  `collection_giro_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_id` bigint DEFAULT '0',
  `account_id` int NOT NULL DEFAULT '0',
  `collection_transfer_bank_name` varchar(50) DEFAULT '',
  `collection_transfer_amount` decimal(20,2) DEFAULT '0.00',
  `collection_transfer_account_name` varchar(100) DEFAULT '',
  `collection_transfer_account_no` varchar(20) DEFAULT '0',
  `collection_transfer_token` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_giro_id`),
  UNIQUE KEY `collection_transfer_token` (`collection_transfer_token`),
  KEY `sales_collection_transfer_collection_id` (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_customer` */

DROP TABLE IF EXISTS `sales_customer`;

CREATE TABLE `sales_customer` (
  `customer_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '1',
  `province_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `customer_code` varchar(20) DEFAULT '',
  `customer_registration_date` date DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT '',
  `customer_owner_name` varchar(50) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT '',
  `customer_tax_no` varchar(30) DEFAULT '',
  `customer_address` text,
  `customer_city` varchar(50) DEFAULT '',
  `customer_post_code` varchar(10) DEFAULT '',
  `customer_kelurahan` varchar(50) DEFAULT '',
  `customer_kecamatan` varchar(50) DEFAULT '',
  `customer_inv_address` text,
  `customer_inv_city` varchar(50) DEFAULT '',
  `customer_inv_post_code` varchar(10) DEFAULT '',
  `customer_inv_kelurahan` varchar(50) DEFAULT '',
  `customer_inv_kecamatan` varchar(50) DEFAULT '',
  `customer_contact_person` varchar(50) DEFAULT '',
  `customer_home_phone` varchar(100) DEFAULT '',
  `customer_mobile_phone1` varchar(100) DEFAULT '',
  `customer_mobile_phone2` varchar(100) DEFAULT '',
  `customer_fax_number` varchar(100) DEFAULT '',
  `customer_payment_terms` decimal(10,0) DEFAULT '0' COMMENT 'Default Payment Terms',
  `customer_latitude` decimal(20,10) DEFAULT '0.0000000000',
  `customer_longitude` decimal(20,10) DEFAULT '0.0000000000',
  `customer_credit_limit` decimal(20,2) DEFAULT '0.00',
  `customer_credit_limit_balance` decimal(20,2) DEFAULT '0.00',
  `customer_remark` text,
  `customer_status` decimal(1,0) DEFAULT '1' COMMENT '1 : Active, 0 : Not Active',
  `customer_no` varchar(50) DEFAULT '',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `record_id` int DEFAULT '0',
  PRIMARY KEY (`customer_id`),
  KEY `customer_no` (`customer_no`),
  KEY `FK_sales_customer_province_id` (`province_id`),
  KEY `FK_sales_customer_city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_delivery_note` */

DROP TABLE IF EXISTS `sales_delivery_note`;

CREATE TABLE `sales_delivery_note` (
  `sales_delivery_note_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT '0',
  `shipment_planning_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `section_id` int DEFAULT NULL,
  `salesman_id` int DEFAULT NULL,
  `customer_id` bigint DEFAULT '0',
  `expedition_id` int DEFAULT '0',
  `sales_delivery_note_cost` decimal(20,2) DEFAULT '0.00',
  `sales_delivery_note_no` varchar(20) DEFAULT '',
  `ppn_out_amount` decimal(20,2) DEFAULT NULL,
  `expedition_receipt_no` varchar(255) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT '',
  `customer_address` text,
  `customer_city` varchar(50) DEFAULT '',
  `customer_home_phone` varchar(50) DEFAULT '',
  `customer_mobile_phone1` varchar(50) DEFAULT '',
  `driver_name` varchar(50) DEFAULT '',
  `fleet_police_number` varchar(20) DEFAULT '',
  `purchase_order_no` varchar(50) DEFAULT NULL,
  `salesman_name` varchar(50) DEFAULT '',
  `sales_delivery_note_date` date DEFAULT NULL,
  `sales_delivery_note_status` decimal(1,0) DEFAULT '0',
  `sales_invoice_status` decimal(1,0) DEFAULT '0',
  `sales_delivery_note_remark` text,
  `posted` decimal(1,0) DEFAULT '0',
  `posted_id` int DEFAULT NULL,
  `posted_on` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `rejected_id` int DEFAULT '0',
  `rejected_on` datetime DEFAULT NULL,
  `rejected_remark` text,
  `branch_id` int DEFAULT NULL,
  `return_status` int DEFAULT '0',
  `pdp_lost_on_expedition_status` int DEFAULT NULL,
  `buyers_acknowledgment_status` int DEFAULT '0',
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_note_id`),
  KEY `FK_sales_delivery_note_sales_delivery_order_id` (`sales_delivery_order_id`),
  KEY `FK_sales_delivery_note_sales_order_id` (`sales_order_id`),
  KEY `FK_sales_delivery_note_warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_note_item` */

DROP TABLE IF EXISTS `sales_delivery_note_item`;

CREATE TABLE `sales_delivery_note_item` (
  `sales_delivery_note_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_order_item_id` int DEFAULT '0',
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_delivery_order_item_id` int DEFAULT NULL,
  `section_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `supplier_id` int DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_type_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_unit_id_unit` int DEFAULT '0',
  `quantity` varchar(100) DEFAULT NULL,
  `quantity_unit` varchar(100) DEFAULT NULL,
  `item_default_quantity_unit` varchar(100) DEFAULT NULL,
  `item_weight_unit` varchar(100) DEFAULT '0',
  `item_batch_number` varchar(100) DEFAULT NULL,
  `sales_delivery_note_item_token` varchar(250) DEFAULT NULL,
  `sales_delivery_note_item_token_void` varchar(250) DEFAULT NULL,
  `return_item_status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `item_unit_price` decimal(10,2) DEFAULT '0.00',
  `subtotal_price` decimal(20,2) DEFAULT '0.00',
  `hpp_amount` decimal(20,2) DEFAULT '0.00',
  `hpp_account_id` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_note_item_id`),
  UNIQUE KEY `sales_delivery_note_item_token` (`sales_delivery_note_item_token`),
  UNIQUE KEY `sales_delivery_note_item_token_void` (`sales_delivery_note_item_token_void`),
  KEY `account_id_hpp` (`hpp_account_id`),
  KEY `section_id` (`section_id`),
  KEY `FK_sales_delivery_note_item_sales_delivery_note_id` (`sales_delivery_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_note_item_stock` */

DROP TABLE IF EXISTS `sales_delivery_note_item_stock`;

CREATE TABLE `sales_delivery_note_item_stock` (
  `sales_delivery_note_item_stock_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_delivery_order_item_id` int DEFAULT NULL,
  `sales_delivery_order_item_stock_id` int DEFAULT NULL,
  `sales_delivery_note_id` bigint DEFAULT NULL,
  `sales_delivery_note_item_id` bigint DEFAULT NULL,
  `item_batch_number` varchar(255) DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_stock_id` int NOT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_unit_id_unit` int DEFAULT NULL,
  `quantity` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_default_quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `item_weight_default` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_weight_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_note_item_stock_id`),
  KEY `FK_sales_delivery_note_item_stock_sales_delivery_note_id` (`sales_delivery_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_order` */

DROP TABLE IF EXISTS `sales_delivery_order`;

CREATE TABLE `sales_delivery_order` (
  `sales_delivery_order_id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_id` int DEFAULT '0',
  `sales_order_id` bigint DEFAULT NULL,
  `sales_delivery_order_no` varchar(20) DEFAULT '',
  `sales_delivery_order_date` date DEFAULT NULL,
  `sales_delivery_order_status` decimal(10,0) DEFAULT '0',
  `sales_delivery_order_remark` text,
  `sales_delivery_note_status` decimal(1,0) DEFAULT '0',
  `sales_delivery_order_cost` decimal(20,2) DEFAULT NULL,
  `ppn_out_amount` decimal(11,0) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `updated_id` int DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  `updated_remark` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_order_item` */

DROP TABLE IF EXISTS `sales_delivery_order_item`;

CREATE TABLE `sales_delivery_order_item` (
  `sales_delivery_order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_order_item_id` bigint DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `customer_id` bigint DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_batch_number` varchar(50) DEFAULT '',
  `item_type_id` int DEFAULT NULL,
  `quantity` varchar(222) DEFAULT NULL,
  `quantity_ordered` varchar(222) DEFAULT NULL,
  `item_unit_price` decimal(10,0) DEFAULT '0',
  `subtotal_price` decimal(20,2) DEFAULT '0.00',
  `sales_delivery_note_status` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_order_item_composition` */

DROP TABLE IF EXISTS `sales_delivery_order_item_composition`;

CREATE TABLE `sales_delivery_order_item_composition` (
  `sales_delivery_order_compt_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT '0',
  `stockist_id` bigint DEFAULT '0',
  `item_id` int DEFAULT '0',
  `material_id` int DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `outstanding_quantity` decimal(10,2) DEFAULT '0.00',
  `sales_order_id` bigint DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_compt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_order_item_piece` */

DROP TABLE IF EXISTS `sales_delivery_order_item_piece`;

CREATE TABLE `sales_delivery_order_item_piece` (
  `sales_delivery_order_item_piece_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT '0',
  `sales_delivery_order_item_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_order_item_id` bigint DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `customer_id` bigint DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `item_model_id` int DEFAULT '0',
  `item_flute_id` int DEFAULT '0',
  `item_substance_id` int DEFAULT '0',
  `item_category_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `item_unit_id` int DEFAULT '0',
  `item_stock_id` bigint DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `item_batch_number` varchar(50) DEFAULT '',
  `sales_order_item_length` int DEFAULT '0',
  `sales_order_item_width` int DEFAULT '0',
  `sales_order_item_height` int DEFAULT '9',
  `sales_delivery_order_item_piece_token` varchar(250) DEFAULT '',
  `sales_delivery_order_item_piece_token_void` varchar(250) DEFAULT '',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_item_piece_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_delivery_order_item_stock` */

DROP TABLE IF EXISTS `sales_delivery_order_item_stock`;

CREATE TABLE `sales_delivery_order_item_stock` (
  `sales_delivery_order_item_stock_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_delivery_order_item_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_total_stock` decimal(10,0) DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_delivery_order_item_stock_temporary` */

DROP TABLE IF EXISTS `sales_delivery_order_item_stock_temporary`;

CREATE TABLE `sales_delivery_order_item_stock_temporary` (
  `sales_delivery_order_item_stock_temporary_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_delivery_order_item_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_stock_quantity` decimal(10,0) DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_item_stock_temporary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_delivery_order_warehouse` */

DROP TABLE IF EXISTS `sales_delivery_order_warehouse`;

CREATE TABLE `sales_delivery_order_warehouse` (
  `sales_delivery_order_warehouse_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT NULL,
  `sales_order_id` bigint DEFAULT '0',
  `customer_id` bigint DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT '0.00',
  `item_batch_number` varchar(20) NOT NULL,
  `item_stock_type` decimal(1,0) DEFAULT '0',
  `sales_delivery_order_warehouse_token` varchar(250) DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_delivery_order_warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_invoice` */

DROP TABLE IF EXISTS `sales_invoice`;

CREATE TABLE `sales_invoice` (
  `sales_invoice_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `sales_order_id` bigint NOT NULL DEFAULT '0',
  `sales_delivery_note_id` bigint NOT NULL DEFAULT '0',
  `collection_method_account_id` int NOT NULL DEFAULT '0',
  `services_income_id` int NOT NULL DEFAULT '0',
  `sales_invoice_no` varchar(255) DEFAULT NULL,
  `sales_invoice_reference_no` varchar(30) NOT NULL DEFAULT '',
  `sales_invoice_date` date DEFAULT NULL,
  `sales_invoice_due_date` date DEFAULT NULL,
  `sales_invoice_remark` text,
  `sales_invoice_status` decimal(1,0) DEFAULT '0' COMMENT '0 = draft, 1 = closed',
  `services_income_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `subtotal_item` decimal(10,2) DEFAULT '0.00',
  `subtotal_amount` int DEFAULT '0',
  `subtotal_before_discount` int DEFAULT '0',
  `discount_percentage` decimal(10,2) DEFAULT '0.00',
  `discount_amount` int DEFAULT '0',
  `return_status` decimal(1,0) DEFAULT '0',
  `subtotal_after_discount` int DEFAULT '0',
  `tax_percentage` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `goods_received_note_no` varchar(255) DEFAULT NULL,
  `faktur_tax_no` varchar(255) DEFAULT NULL,
  `buyers_acknowledgment_id` int NOT NULL,
  `buyers_acknowledgment_no` varchar(255) NOT NULL,
  `ttf_no` varchar(255) NOT NULL,
  `kwitansi_status` int NOT NULL,
  `total_amount` int DEFAULT '0',
  `paid_amount` int DEFAULT '0',
  `owing_amount` int DEFAULT '0',
  `shortover_amount` int DEFAULT '0',
  `last_balance` int DEFAULT '0',
  `total_discount_amount` int DEFAULT '0',
  `paid_discount_amount` int DEFAULT '0',
  `owing_discount_amount` int DEFAULT '0',
  `shortover_discount_amount` int DEFAULT '0',
  `discount_last_balance` int DEFAULT '0',
  `cash_advance_amount` int DEFAULT '0',
  `change_amount` int DEFAULT '0',
  `sales_return_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `sales_collection_date` date DEFAULT NULL,
  `sales_invoice_token` varchar(250) DEFAULT NULL,
  `sales_invoice_token_void` varchar(250) DEFAULT NULL,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `data_state` decimal(1,0) DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_invoice_item` */

DROP TABLE IF EXISTS `sales_invoice_item`;

CREATE TABLE `sales_invoice_item` (
  `sales_invoice_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_invoice_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_delivery_note_id` bigint DEFAULT '0',
  `sales_delivery_note_item_id` bigint DEFAULT '0',
  `item_id` bigint DEFAULT '0',
  `item_type_id` int DEFAULT NULL,
  `item_unit_id` bigint DEFAULT '0',
  `quantity` int DEFAULT '0',
  `item_unit_price` int DEFAULT '0',
  `item_unit_price_tax` int DEFAULT '0',
  `discount_A` int DEFAULT '0',
  `discount_B` int DEFAULT '0',
  `subtotal_price_A` int DEFAULT '0',
  `subtotal_price_B` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `sales_invoice_item_id` (`sales_invoice_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_kwitansi` */

DROP TABLE IF EXISTS `sales_kwitansi`;

CREATE TABLE `sales_kwitansi` (
  `sales_kwitansi_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_kwitansi_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sales_tagihan_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `customer_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sales_kwitansi_date` date DEFAULT NULL,
  `print_type` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sales_kwitansi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_kwitansi_item` */

DROP TABLE IF EXISTS `sales_kwitansi_item`;

CREATE TABLE `sales_kwitansi_item` (
  `sales_kwitansi_item_id` int NOT NULL AUTO_INCREMENT,
  `sales_kwitansi_id` int DEFAULT NULL,
  `sales_invoice_id` int DEFAULT NULL,
  `buyers_acknowledgment_id` int DEFAULT NULL,
  `checked` int DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sales_kwitansi_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_order` */

DROP TABLE IF EXISTS `sales_order`;

CREATE TABLE `sales_order` (
  `sales_order_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_type_id` bigint DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `receipt_image` varchar(500) DEFAULT '',
  `sales_order_no` varchar(50) DEFAULT '',
  `purchase_order_no` varchar(50) DEFAULT '0',
  `sales_order_date` date DEFAULT NULL,
  `sales_order_delivery_date` date DEFAULT NULL,
  `sales_order_status` int DEFAULT '0',
  `sales_order_over_limit` decimal(20,2) DEFAULT '0.00',
  `sales_order_over_due_status` int NOT NULL DEFAULT '0',
  `purchase_order_status` int DEFAULT '0',
  `work_order_status` int DEFAULT '0' COMMENT '0 : Draft, 1 : Processed',
  `purchase_requisition_status` int DEFAULT '0',
  `sales_order_design_status` int DEFAULT '0',
  `sales_delivery_order_status` int DEFAULT '0',
  `customer_credit_limit_balance` decimal(20,2) DEFAULT '0.00',
  `sales_invoice_status` int DEFAULT '0',
  `sales_invoice_last_balance` decimal(20,2) DEFAULT '0.00',
  `sales_order_remark` text,
  `sales_order_over_remark` text,
  `total_item` decimal(10,2) DEFAULT '0.00',
  `subtotal_before_discount` decimal(20,2) DEFAULT '0.00',
  `discount_percentage` decimal(20,2) DEFAULT '0.00',
  `discount_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_after_discount` decimal(20,2) DEFAULT '0.00',
  `ppn_out_percentage` decimal(20,2) DEFAULT '0.00',
  `ppn_out_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_after_ppn_out` decimal(20,2) DEFAULT '0.00',
  `sales_shipment_status` decimal(1,0) DEFAULT '0',
  `paid_amount` decimal(20,2) DEFAULT '0.00',
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `counter_edited` decimal(5,0) DEFAULT '0',
  `branch_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `approved` int DEFAULT '0',
  `approved_id` int DEFAULT '0',
  `approved_on` datetime DEFAULT NULL,
  `approved_remark` text,
  `closed` int DEFAULT '0',
  `closed_id` int DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  `closed_remark` text,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `customer_no` varchar(50) DEFAULT '',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_order_id`),
  KEY `sales_order_id` (`sales_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_order_item` */

DROP TABLE IF EXISTS `sales_order_item`;

CREATE TABLE `sales_order_item` (
  `sales_order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `quantity_delivered` decimal(10,2) DEFAULT '0.00',
  `quantity_shipped` decimal(10,2) DEFAULT '0.00',
  `quantity_planned` decimal(10,2) DEFAULT '0.00',
  `quantity_outstanding` decimal(10,2) DEFAULT '0.00',
  `quantity_received` decimal(10,2) DEFAULT '0.00',
  `quantity_ordered` decimal(10,2) DEFAULT '0.00',
  `quantity_cavity` decimal(10,2) DEFAULT '0.00',
  `quantity_minimum` decimal(10,2) DEFAULT '0.00',
  `quantity_resulted` decimal(10,2) DEFAULT '0.00',
  `sales_order_item_status` int DEFAULT '0',
  `item_substance_price` decimal(10,2) DEFAULT '0.00',
  `item_unit_id` int DEFAULT NULL,
  `item_unit_price` decimal(10,2) DEFAULT '0.00',
  `item_unit_price_adds` decimal(10,2) DEFAULT '0.00',
  `purchase_requisition_status` int DEFAULT '0',
  `purchase_order_status` int DEFAULT '0',
  `work_order_status` int DEFAULT '0',
  `sales_delivery_order_status` int NOT NULL DEFAULT '0',
  `sales_delivery_note_status` int DEFAULT '0',
  `sales_invoice_status` int DEFAULT '0',
  `quantity_minimum_status` int DEFAULT '0',
  `subtotal_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_additional_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_item_amount` decimal(20,2) DEFAULT '0.00',
  `sales_order_no` varchar(50) DEFAULT '',
  `sales_order_status` int DEFAULT '0',
  `discount_percentage_item` decimal(10,2) DEFAULT '0.00',
  `discount_percentage_item_b` decimal(10,2) DEFAULT NULL,
  `discount_amount_item` decimal(10,2) DEFAULT '0.00',
  `discount_amount_item_b` decimal(10,2) DEFAULT NULL,
  `subtotal_after_discount_item_a` decimal(10,2) DEFAULT '0.00',
  `subtotal_after_discount_item_b` decimal(10,2) DEFAULT NULL,
  `total_price_after_ppn_amount` decimal(20,2) NOT NULL,
  `ppn_amount_item` decimal(20,2) NOT NULL,
  `record_id` bigint DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_order_item_id`),
  KEY `sales_order_item_id` (`sales_order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_order_return` */

DROP TABLE IF EXISTS `sales_order_return`;

CREATE TABLE `sales_order_return` (
  `sales_order_return_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_order_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `sales_invoice_id` int DEFAULT NULL,
  `warehouse_id` bigint DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `sales_order_return_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_retur_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nota_retur_pajak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `barang_kembali` int DEFAULT '0',
  `sales_order_return_date` date DEFAULT NULL,
  `sales_order_return_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_order_return_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_order_return_item` */

DROP TABLE IF EXISTS `sales_order_return_item`;

CREATE TABLE `sales_order_return_item` (
  `sales_order_return_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_return_id` bigint DEFAULT NULL,
  `sales_delivery_note_id` int DEFAULT NULL,
  `sales_delivery_note_item_id` int DEFAULT NULL,
  `sales_order_id` int DEFAULT NULL,
  `sales_invoice_id` int DEFAULT NULL,
  `sales_order_item_id` int DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `item_stock_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT NULL,
  `item_unit_id` int DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `quantity_return` decimal(10,0) DEFAULT NULL,
  `item_unit_price` decimal(10,0) DEFAULT NULL,
  `subtotal_price` decimal(10,0) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_order_return_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Table structure for table `sales_order_type` */

DROP TABLE IF EXISTS `sales_order_type`;

CREATE TABLE `sales_order_type` (
  `sales_order_type_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_type_name` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_order_type_id`),
  KEY `sales_order_type_id` (`sales_order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `sales_quotation` */

DROP TABLE IF EXISTS `sales_quotation`;

CREATE TABLE `sales_quotation` (
  `sales_quotation_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_quotation_type_id` bigint DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `receipt_image` varchar(500) DEFAULT '',
  `sales_quotation_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `sales_quotation_date` date DEFAULT NULL,
  `sales_quotation_due_date` date DEFAULT NULL,
  `sales_quotation_status` int DEFAULT '0',
  `sales_quotation_over_limit` decimal(20,2) DEFAULT '0.00',
  `sales_quotation_over_due_status` int NOT NULL DEFAULT '0',
  `work_order_status` int DEFAULT '0' COMMENT '0 : Draft, 1 : Processed',
  `purchase_requisition_status` int DEFAULT '0',
  `sales_quotation_design_status` int DEFAULT '0',
  `sales_delivery_order_status` int DEFAULT '0',
  `customer_credit_limit_balance` decimal(20,2) DEFAULT '0.00',
  `sales_invoice_status` int DEFAULT '0',
  `sales_invoice_last_balance` decimal(20,2) DEFAULT '0.00',
  `sales_quotation_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `sales_quotation_over_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `total_item` decimal(10,2) DEFAULT '0.00',
  `subtotal_before_discount` decimal(20,2) DEFAULT '0.00',
  `discount_percentage` decimal(20,2) DEFAULT '0.00',
  `discount_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_after_discount` decimal(20,2) DEFAULT '0.00',
  `ppn_out_percentage` decimal(20,2) DEFAULT '0.00',
  `ppn_out_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_after_ppn_out` decimal(20,2) DEFAULT '0.00',
  `sales_shipment_status` decimal(1,0) DEFAULT '0',
  `paid_amount` decimal(20,2) DEFAULT '0.00',
  `total_amount` decimal(20,2) DEFAULT '0.00',
  `last_balance` decimal(20,2) DEFAULT '0.00',
  `counter_edited` decimal(5,0) DEFAULT '0',
  `branch_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `approved` int DEFAULT '0' COMMENT '0 = proses, 1 = Approved, 2 = DisApprove',
  `approved_id` int DEFAULT '0',
  `approved_on` datetime DEFAULT NULL,
  `approved_remark` text,
  `closed` int DEFAULT '0',
  `closed_id` int DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  `closed_remark` text,
  `voided_id` int DEFAULT '0',
  `voided_on` datetime DEFAULT NULL,
  `voided_remark` text,
  `customer_no` varchar(50) DEFAULT '',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_quotation_id`),
  KEY `sales_order_id` (`sales_quotation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `sales_quotation_item` */

DROP TABLE IF EXISTS `sales_quotation_item`;

CREATE TABLE `sales_quotation_item` (
  `sales_quotation_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_quotation_id` bigint DEFAULT '0',
  `item_category_id` int DEFAULT NULL,
  `item_type_id` int DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `quantity_delivered` decimal(10,2) DEFAULT '0.00',
  `quantity_shipped` decimal(10,2) DEFAULT '0.00',
  `quantity_planned` decimal(10,2) DEFAULT '0.00',
  `quantity_outstanding` decimal(10,2) DEFAULT '0.00',
  `quantity_received` decimal(10,2) DEFAULT '0.00',
  `quantity_ordered` decimal(10,2) DEFAULT '0.00',
  `quantity_cavity` decimal(10,2) DEFAULT '0.00',
  `quantity_minimum` decimal(10,2) DEFAULT '0.00',
  `quantity_resulted` decimal(10,2) DEFAULT '0.00',
  `sales_quotation_item_status` int DEFAULT '0',
  `item_substance_price` decimal(10,2) DEFAULT '0.00',
  `item_unit_id` int DEFAULT NULL,
  `item_unit_price` decimal(10,2) DEFAULT '0.00',
  `item_unit_price_adds` decimal(10,2) DEFAULT '0.00',
  `purchase_requisition_status` int DEFAULT '0',
  `purchase_order_status` int DEFAULT '0',
  `work_order_status` int DEFAULT '0',
  `sales_delivery_order_status` int NOT NULL DEFAULT '0',
  `sales_delivery_note_status` int DEFAULT '0',
  `sales_invoice_status` int DEFAULT '0',
  `quantity_minimum_status` int DEFAULT '0',
  `subtotal_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_additional_amount` decimal(20,2) DEFAULT '0.00',
  `subtotal_item_amount` decimal(20,2) DEFAULT '0.00',
  `sales_quotation_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `sales_quotation_status` int DEFAULT '0',
  `discount_percentage_item` decimal(10,2) DEFAULT '0.00',
  `discount_percentage_item_b` decimal(10,2) DEFAULT NULL,
  `discount_amount_item` decimal(10,2) DEFAULT '0.00',
  `discount_amount_item_b` decimal(10,2) DEFAULT NULL,
  `subtotal_after_discount_item_a` decimal(10,2) DEFAULT '0.00',
  `subtotal_after_discount_item_b` decimal(10,2) DEFAULT NULL,
  `total_price_after_ppn_amount` decimal(20,2) NOT NULL,
  `ppn_amount_item` decimal(20,2) NOT NULL,
  `record_id` bigint DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_quotation_item_id`),
  KEY `sales_order_item_id` (`sales_quotation_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Table structure for table `system_log_user` */

DROP TABLE IF EXISTS `system_log_user`;

CREATE TABLE `system_log_user` (
  `user_log_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `id_previllage` int DEFAULT '0',
  `log_stat` enum('0','1') DEFAULT NULL,
  `class_name` varchar(250) DEFAULT '',
  `pk` varchar(20) DEFAULT '',
  `remark` varchar(50) DEFAULT '',
  `log_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

/*Table structure for table `system_menu` */

DROP TABLE IF EXISTS `system_menu`;

CREATE TABLE `system_menu` (
  `id_menu` varchar(10) NOT NULL,
  `id` varchar(100) DEFAULT NULL,
  `type` enum('folder','file','function') DEFAULT NULL,
  `indent_level` int DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `system_menu_mapping` */

DROP TABLE IF EXISTS `system_menu_mapping`;

CREATE TABLE `system_menu_mapping` (
  `menu_mapping_id` int NOT NULL AUTO_INCREMENT,
  `user_group_level` int DEFAULT NULL,
  `id_menu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1460 DEFAULT CHARSET=utf8mb3;

/*Table structure for table `system_user` */

DROP TABLE IF EXISTS `system_user`;

CREATE TABLE `system_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_group_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `branch_id` int DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `system_user_group` */

DROP TABLE IF EXISTS `system_user_group`;

CREATE TABLE `system_user_group` (
  `user_group_id` int NOT NULL,
  `user_group_level` int DEFAULT NULL,
  `user_group_name` varchar(50) DEFAULT NULL,
  `user_group_token` varchar(250) DEFAULT '',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_id` int DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  `deleted_id` int DEFAULT '0',
  `deleted_on` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
