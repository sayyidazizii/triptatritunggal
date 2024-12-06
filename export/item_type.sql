/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.40-0ubuntu0.22.04.1 : Database - ciptaprocpanel_triptatritunggal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ciptaprocpanel_triptatritunggal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ciptaprocpanel_triptatritunggal`;

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
