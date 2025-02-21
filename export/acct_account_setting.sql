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

/*Table structure for table `acct_account_setting` */

DROP TABLE IF EXISTS `acct_account_setting`;

CREATE TABLE `acct_account_setting` (
  `account_setting_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `account_setting_name` varchar(225) DEFAULT NULL,
  `account_setting_status` int DEFAULT NULL,
  `account_default_status` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`account_setting_id`),
  KEY `FK_account_id` (`account_id`),
  CONSTRAINT `FK_account_id` FOREIGN KEY (`account_id`) REFERENCES `acct_account` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=latin1;

/*Data for the table `acct_account_setting` */

insert  into `acct_account_setting`(`account_setting_id`,`company_id`,`account_id`,`account_setting_name`,`account_setting_status`,`account_default_status`,`created_at`,`updated_at`) values 
(370,2,3,'account_cash_purchase_id',1,0,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(371,2,7,'purchase_cash_account_id',0,0,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(372,2,16,'account_credit_purchase_id',1,1,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(373,2,7,'purchase_credit_account_id',0,0,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(374,2,58,'purchase_tax_account_id',0,0,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(375,2,3,'account_payable_return_account_id',0,0,'2022-07-16 11:14:51','2025-02-21 04:16:24'),
(376,2,26,'purchase_return_account_id',1,0,'2023-07-25 10:44:25','2025-02-21 04:16:24'),
(377,2,3,'account_receivable_cash_account_id',0,0,'2024-12-13 11:38:40','2025-02-21 04:16:24'),
(378,2,23,'sales_cash_account_id',1,1,'2024-12-13 11:38:50','2025-02-21 04:16:24'),
(379,2,4,'account_receivable_credit_account_id',0,0,'2024-12-13 11:38:42','2025-02-21 04:16:24'),
(380,2,23,'sales_credit_account_id',1,1,'2024-12-13 11:38:46','2024-12-13 11:38:56'),
(381,2,57,'sales_tax_account_id',1,1,'2024-12-13 11:38:48','2024-12-13 11:38:58'),
(383,2,4,'expenditure_cash_account_id',1,1,'2024-12-13 11:38:44','2024-12-13 11:39:00'),
(384,2,8,'expenditure_account_id',0,0,'2024-12-13 11:39:04','2024-12-13 11:39:02'),
(385,2,3,'sales_collection_cash_account_id',0,0,'2024-12-20 13:46:54','2024-12-20 13:47:00'),
(386,2,4,'sales_collection_account_id',1,1,'2024-12-20 13:46:56','2024-12-20 13:47:02'),
(387,2,3,'purchase_payment_cash_account_id',1,1,'2024-12-20 13:47:07','2024-12-20 13:47:04'),
(388,2,16,'purchase_payment_account_id',0,0,'2024-12-20 13:47:06','2024-12-20 13:47:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
