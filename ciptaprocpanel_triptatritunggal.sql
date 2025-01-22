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
  `parent_account_status` int DEFAULT '0',
  `account_type_id` int DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `acct_account` */

insert  into `acct_account`(`account_id`,`company_id`,`account_code`,`account_name`,`account_group`,`account_suspended`,`account_default_status`,`account_remark`,`account_status`,`account_token`,`parent_account_status`,`account_type_id`,`data_state`,`created_id`,`updated_id`,`created_at`,`updated_at`) values 
(1,2,'100','ASET','100',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(2,2,'101.00','ASET LANCAR','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(3,2,'101.00.1','KAS BESAR','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(4,2,'101.00.2','KAS KECIL','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(5,2,'101.00.3','KAS DI BANK','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(6,2,'101.00.4','Piutang Dagang','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(7,2,'101.00.5','Piutang Lain Lain','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(8,2,'101.00.6','Persediaan Barang','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(9,2,'101.00.7','Biaya/Kontribusi Dibayar Dimuka','101.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(10,2,'102','Aset Tidak Lancar','102',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(11,2,'102.01','ASET TETAP','102.00',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(12,2,'102.01.01','Aset Furniture','102.01',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(13,2,'102.01.02','Aset Peralatan Masak','102.02',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(14,2,'102.01.03','Depresiasi Akumulasi Aset','102.03',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(15,2,'200.01','Liabilitas dan Ekuitas','200.01',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(16,2,'200.01.1','Utang Usaha','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(17,2,'200.01.2','Utang Jangka Panjang','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(18,2,'200.01.3','MODAL/EKUITAS','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(19,2,'200.01.4','Modal','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(20,2,'200.01.5','Modal Belum Disetor','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(21,2,'200.01.6','Modal Disetor','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(22,2,'200.01.7','Saldo Laba','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(23,2,'200.01.8','Saldo Laba Tahun Lalu','200.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(24,2,'200.01.9','Laba/Rugi Bersih Tahun Berjalan','200.01',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(25,2,'300','Pendapatan Usaha','300',0,1,'',1,'',0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(26,2,'300.01','PENJUALAN','300.01',0,1,'',1,'',0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(27,2,'300.01.1','Penjualan Bahan Baku','300.01',0,1,'',1,'',0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(28,2,'300.01.2','Pendapatan Penjualan','300.01',0,1,'',1,'',0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(29,2,'300.01.3','Harga pokok Penjualan','300.01',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(30,2,'400','BEBAN OPERASIONAL','400',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(31,2,'400.01','Beban Usaha','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(32,2,'400.01.01','Beban Tenaga Kerja','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(33,2,'400.01.02','Pembayaran Listrik + PAM + WIFI','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(34,2,'400.01.03','KEPERLUAN PERALATAN DAPUR','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(35,2,'400.01.04','Beban Operasional Lainnya','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(36,2,'400.01.05','PEMBELIAN BARANG DAGANGAN','400.01',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(37,2,'400.01.06','PEMBELIAN BAHAN MINUMAN','400.01',0,0,'',0,'',0,3,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(38,2,'400.01.07','PEMBELIAN PENDUKUNG','400.01',0,0,'',0,'',0,1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(39,2,'400.01.08','LISTRIK + PAM + WIFI','400.01',0,0,'',0,'',0,1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(40,2,'400.01.09','GAS','400.01',0,0,'',0,'',0,1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(41,2,'400.01.10','TENAGA KERJA','400.01',0,0,'',0,'',0,1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(42,2,'400.01.11','MARKETING','400.01',0,0,'',0,'',0,1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(43,2,'400.01.12','PENGELUARAN LAIN-LAIN','400.01',0,0,'',0,'',0,1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(44,2,'400.01.13','RETUR PEMBELIAN','400.01',0,1,'',1,'',0,1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(45,2,'400.02','BEBAN NON OPERASIONAL','400.02',0,0,'',0,'',0,0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(46,2,'400.02.01','Pendapatan Lain Lain','400.02',0,1,'',1,'',0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(47,2,'400.02.02','Beban Lain-Lain','400.02',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(48,2,'400.02.03','Pajak','400.02',0,0,'',0,'',0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(49,2,'400.02.04','Transportasi/Parkir','400.02',0,0,NULL,0,NULL,0,3,0,55,55,NULL,NULL),
(50,2,'400.02.05','Konsumsi','400.02',0,0,NULL,0,NULL,0,3,0,55,55,NULL,NULL),
(51,2,'400.02.06','Utang PPN','400.02',0,1,NULL,1,NULL,0,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(52,2,'300.01.4','Pendapatan Konsinyasi','300.01',0,1,NULL,1,NULL,0,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(53,2,'400.01.10','KEPERLUAN ATK','400.01',0,0,NULL,0,NULL,0,3,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(54,2,'400.02.04','Pembayaran Pajak','400.02',0,0,NULL,0,NULL,0,3,0,NULL,NULL,NULL,NULL),
(55,2,'400.01.15','TRF Ciomas','400.01',0,0,NULL,0,NULL,0,3,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(56,2,'300.01.7','Bu Tomo','300.01',0,1,NULL,1,NULL,0,2,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;

/*Data for the table `acct_account_balance` */

insert  into `acct_account_balance`(`account_balance_id`,`company_id`,`branch_id`,`account_id`,`last_balance`,`created_id`,`created_at`,`updated_at`) values 
(87,2,0,6,666000.00,3,NULL,'2025-01-20 14:38:59'),
(88,2,0,28,-600000.00,3,NULL,'2025-01-20 14:38:59'),
(89,2,0,48,66000.00,3,NULL,'2025-01-20 14:38:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

/*Data for the table `acct_account_balance_detail` */

insert  into `acct_account_balance_detail`(`account_balance_detail_id`,`branch_id`,`company_id`,`transaction_type`,`transaction_code`,`transaction_date`,`transaction_id`,`account_id`,`opening_balance`,`account_in`,`account_out`,`cash_in`,`cash_out`,`bank_in`,`bank_out`,`last_balance`,`created_at`,`updated_at`,`created_id`) values 
(1,0,2,63,'PPP','2025-01-20',1,6,0.00,111000.00,0.00,0.00,0.00,0.00,0.00,111000.00,NULL,'2025-01-20 14:38:59',3),
(2,0,2,63,'PPP','2025-01-20',1,28,0.00,0.00,100000.00,0.00,0.00,0.00,0.00,-100000.00,NULL,'2025-01-20 14:38:59',3),
(3,0,2,63,'PPP','2025-01-20',1,48,0.00,11000.00,0.00,0.00,0.00,0.00,0.00,11000.00,NULL,'2025-01-20 14:38:59',3),
(4,0,2,63,'PPP','2025-01-20',2,6,111000.00,111000.00,0.00,0.00,0.00,0.00,0.00,222000.00,NULL,'2025-01-20 14:52:04',3),
(5,0,2,63,'PPP','2025-01-20',2,28,-100000.00,0.00,100000.00,0.00,0.00,0.00,0.00,-200000.00,NULL,'2025-01-20 14:52:04',3),
(6,0,2,63,'PPP','2025-01-20',2,48,11000.00,11000.00,0.00,0.00,0.00,0.00,0.00,22000.00,NULL,'2025-01-20 14:52:05',3),
(7,0,2,63,'PPP','2025-01-20',3,6,222000.00,111000.00,0.00,0.00,0.00,0.00,0.00,333000.00,NULL,'2025-01-20 14:58:10',3),
(8,0,2,63,'PPP','2025-01-20',3,28,-200000.00,0.00,100000.00,0.00,0.00,0.00,0.00,-300000.00,NULL,'2025-01-20 14:58:10',3),
(9,0,2,63,'PPP','2025-01-20',3,48,22000.00,11000.00,0.00,0.00,0.00,0.00,0.00,33000.00,NULL,'2025-01-20 14:58:10',3),
(10,0,2,63,'PPP','2025-01-20',4,6,333000.00,333000.00,0.00,0.00,0.00,0.00,0.00,666000.00,NULL,'2025-01-20 15:33:59',3),
(11,0,2,63,'PPP','2025-01-20',4,28,-300000.00,0.00,300000.00,0.00,0.00,0.00,0.00,-600000.00,NULL,'2025-01-20 15:33:59',3),
(12,0,2,63,'PPP','2025-01-20',4,48,33000.00,33000.00,0.00,0.00,0.00,0.00,0.00,66000.00,NULL,'2025-01-20 15:33:59',3);

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

/*Data for the table `acct_account_mutation` */

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

/*Data for the table `acct_account_opening_balance` */

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
(370,2,4,'account_cash_purchase_id',1,0,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(371,2,8,'purchase_cash_account_id',0,0,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(372,2,4,'account_credit_purchase_id',1,0,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(373,2,8,'purchase_credit_account_id',0,0,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(374,2,51,'purchase_tax_account_id',1,1,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(375,2,4,'account_payable_return_account_id',1,0,'2022-07-16 11:14:51','2024-12-20 06:51:35'),
(376,2,8,'purchase_return_account_id',0,0,'2023-07-25 10:44:25','2024-12-20 06:51:35'),
(377,2,4,'account_receivable_cash_account_id',0,0,'2024-12-13 11:38:40','2024-12-20 06:51:35'),
(378,2,28,'sales_cash_account_id',1,1,'2024-12-13 11:38:50','2024-12-20 06:51:35'),
(379,2,6,'account_receivable_credit_account_id',0,0,'2024-12-13 11:38:42','2024-12-20 06:51:35'),
(380,2,28,'sales_credit_account_id',1,1,'2024-12-13 11:38:46','2024-12-13 11:38:56'),
(381,2,48,'sales_tax_account_id',0,0,'2024-12-13 11:38:48','2024-12-13 11:38:58'),
(383,2,4,'expenditure_cash_account_id',1,1,'2024-12-13 11:38:44','2024-12-13 11:39:00'),
(384,2,8,'expenditure_account_id',0,0,'2024-12-13 11:39:04','2024-12-13 11:39:02'),
(385,2,4,'sales_collection_cash_account_id',0,0,'2024-12-20 13:46:54','2024-12-20 13:47:00'),
(386,2,6,'sales_collection_account_id',1,1,'2024-12-20 13:46:56','2024-12-20 13:47:02'),
(387,2,16,'purchase_payment_cash_account_id',1,1,'2024-12-20 13:47:07','2024-12-20 13:47:04'),
(388,2,4,'purchase_payment_account_id',0,0,'2024-12-20 13:47:06','2024-12-20 13:47:09');

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

/*Data for the table `acct_account_type` */

insert  into `acct_account_type`(`account_type_id`,`account_type_name`,`account_type_status`,`default_value`,`data_state`,`created_by`,`created_at`,`updated_at`) values 
(1,'Other Current Asset',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(2,'Fixed Asset',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(3,'Accumulated Depreciation',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(4,'Account Receivable',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(5,'Long Term Liability',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(6,'Other Current Liability',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(7,'Account Payable',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(8,'Equity',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(9,'Inventory',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(10,'Revenue',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(11,'Cost of Goods Sold',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(12,'Other Income',1,0,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(13,'Expense',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(14,'Other Expense',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(15,'Cash And Bank',1,1,'0','ADMIN','2015-11-03 16:07:00','2023-06-23 10:52:20'),
(16,'COGM',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(17,'Production Expense',1,1,'0','',NULL,'2023-06-23 10:52:20'),
(18,'Sales Expense',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(19,'Adm & General Expense',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(20,'Notes Receivable',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(21,'Liability',1,0,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(22,'Prepaid Expense',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20'),
(23,'Other Account Receivable',1,1,'0','ADMIN',NULL,'2023-06-23 10:52:20');

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

/*Data for the table `acct_asset` */

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

/*Data for the table `acct_asset_depreciation` */

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

/*Data for the table `acct_asset_depreciation_item` */

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

/*Data for the table `acct_asset_type` */

insert  into `acct_asset_type`(`asset_type_id`,`asset_type_code`,`asset_type_name`,`asset_type_description`,`asset_type_parent`,`asset_type_parent_status`,`data_state`,`created_at`,`updated_at`) values 
(1,'AT0001','Elektronik','',0,0,0,NULL,'2023-06-23 10:52:20'),
(2,'AT0071','Kendaraan','',0,0,0,NULL,'2023-06-23 10:52:20'),
(3,'AT0077','AA','',1,0,1,NULL,'2023-06-23 10:52:20');

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

/*Data for the table `acct_balance_sheet_report` */

insert  into `acct_balance_sheet_report`(`balance_sheet_report_id`,`company_id`,`report_no`,`account_id1`,`account_code1`,`account_name1`,`account_id2`,`account_code2`,`account_name2`,`report_formula1`,`report_operator1`,`report_type1`,`report_tab1`,`report_bold1`,`report_formula2`,`report_operator2`,`report_type2`,`report_tab2`,`report_bold2`,`report_formula3`,`report_operator3`,`balance_report_type`,`balance_report_type1`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,2,1,1,'100','ASET',15,'200.01','Liabilitas dan Ekuitas','','',1,0,1,'','',1,0,1,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(2,2,2,2,'101.00','ASET LANCAR',16,'200.01.1','Utang Lancar','','',2,1,1,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(3,2,3,3,'101.00.1','KAS BESAR',17,'200.01.2','Utang Jangka Panjang','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(4,2,4,4,'101.00.2','KAS KECIL',51,'400.02.06','Utang PPN','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(5,2,5,5,'101.00.3','KAS DI BANK',18,'200.01.3','MODAL/EKUITAS','','',3,2,0,'','',2,1,1,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(6,2,6,6,'101.00.4','Piutang Dagang',19,'200.01.4','Modal','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(7,2,7,7,'101.00.5','Piutang Lain Lain',20,'200.01.5','Modal Belum Disetor','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(8,2,8,8,'101.00.6','Persediaan Barang',21,'200.01.6','Modal Disetor','','',0,0,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(9,2,9,9,'101.00.7','Biaya/Kontribusi Dibayar Dimuka',22,'200.01.7','Saldo Laba','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(10,2,10,10,'102','ASET TIDAK LANCAR',23,'200.01.8','Saldo Laba Tahun Lalu','','',2,1,1,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(11,2,11,11,'102.01','ASET TETAP',37,'300.01','Pendapatan Usaha','','',3,2,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(12,2,12,12,'102.01.01','Aset Kantor',27,'300.02.01','Penjualan Bahan Baku ','','',3,2,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(13,2,13,13,'102.01.02','Aset Peralatan Dapur',28,'300.02.02','Penjualan Menu','','',3,2,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(14,2,14,14,'102.01.03','Depresiasi Akumulasi Aset',52,'300.02.04','Pendapatan Konsinyasi','','',3,2,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(15,2,15,0,'','',32,'400.01.01','Beban Tenaga Kerja','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(16,2,16,0,'','',33,'400.01.02','Pembayaran Listrik + PAM + WIFI','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(17,2,17,0,'','',34,'400.01.03','KEPERLUAN / ATK KANTOR','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(18,2,18,0,'','',35,'400.01.04','Beban Operasional Lainnya','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(19,2,19,0,'','',36,'400.01.05','PEMBELIAN BAHAN BAKU','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(20,2,20,0,'','',49,'400.02.04','Transportasi/Parkir','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(21,2,21,0,'','',50,'400.02.05','Konsumsi','','',0,0,0,'','',10,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(22,2,22,0,'','',46,'400.02.01','Pendapatan Lain Lain','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(23,2,23,0,'','',47,'400.02.02','Beban Lain-Lain','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(24,2,24,0,'','',48,'400.02.03','pajak','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(25,2,25,0,'','',0,'','Laba/Rugi Bersih Tahun Berjalan','','',0,0,0,'11#12#13#14#15#16#17#18#19#20#21#22#23#24','+#+#+#+#-#-#-#-#-#-#-#+#-#-#',11,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(26,2,26,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(27,2,27,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(28,2,28,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(29,2,29,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(30,2,30,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(31,2,31,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(32,2,32,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(33,2,33,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(34,2,34,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(35,2,35,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(36,2,36,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(37,2,37,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(38,2,38,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(39,2,39,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(40,2,40,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(41,2,41,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(42,2,42,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(43,2,43,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(44,2,44,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(45,2,45,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(46,2,46,0,'','',0,'','','','',0,0,0,'','',10,2,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(47,2,47,0,'','',0,'','','','',0,0,0,'','',0,0,0,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00'),
(48,2,48,0,'','JUMLAH ASET',0,'','JUMLAH LIABILITAS DAN EKUITAS','3#4#5#6#7#9#11#12#13#14','+#+#+#+#+#+#+#+#+#+#+#',5,0,1,'2#3#4#6#7#9#10','+#+#+#+#+#+#+#',5,0,1,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00');

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

/*Data for the table `acct_bank_disbursement` */

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

/*Data for the table `acct_bank_disbursement_item` */

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

/*Data for the table `acct_bank_receipt` */

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

/*Data for the table `acct_bank_receipt_item` */

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

/*Data for the table `acct_cash_disbursement` */

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

/*Data for the table `acct_cash_disbursement_item` */

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

/*Data for the table `acct_cash_receipt` */

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

/*Data for the table `acct_cash_receipt_item` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_check_disbursement` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_check_disbursement_item` */

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

/*Data for the table `acct_check_receipt` */

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

/*Data for the table `acct_check_receipt_item` */

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `acct_debt_repayment` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `acct_debt_repayment_item` */

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
  `journal_voucher_status` int DEFAULT '1',
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_journal_voucher` */

insert  into `acct_journal_voucher`(`journal_voucher_id`,`company_id`,`branch_id`,`project_id`,`project_type_id`,`transaction_module_id`,`transaction_journal_id`,`transaction_journal_no`,`journal_voucher_title`,`journal_voucher_no`,`journal_voucher_period`,`journal_voucher_date`,`journal_voucher_description`,`journal_voucher_token`,`journal_voucher_token_void`,`journal_voucher_type_id`,`journal_voucher_status`,`transaction_module_code`,`posted`,`posted_id`,`posted_on`,`voided`,`voided_id`,`voided_on`,`voided_remark`,`data_state`,`created_id`,`created_at`,`updated_at`,`reverse_state`) values 
(3,2,1,0,0,63,11,NULL,'Penjualan Barang','0001/JV/I/2025',202501,'2025-01-20',NULL,NULL,NULL,1,1,'PPP',0,0,NULL,0,0,NULL,NULL,0,3,'2025-01-20 07:58:14','2025-01-20 07:58:14',0),
(4,2,1,0,0,63,12,NULL,'Penjualan Barang','0002/JV/I/2025',202501,'2025-01-20',NULL,NULL,NULL,1,1,'PPP',0,0,NULL,0,0,NULL,NULL,0,3,'2025-01-20 08:34:03','2025-01-20 08:34:03',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_journal_voucher_item` */

insert  into `acct_journal_voucher_item`(`journal_voucher_item_id`,`journal_voucher_id`,`company_id`,`account_id`,`journal_voucher_description`,`journal_voucher_amount`,`account_id_status`,`account_id_default_status`,`journal_voucher_debit_amount`,`journal_voucher_credit_amount`,`journal_voucher_item_token`,`journal_voucher_item_token_void`,`data_state`,`created_at`,`updated_at`,`reverse_state`) values 
(7,3,2,6,NULL,111000.00,0,0,111000.00,0.00,NULL,NULL,0,'2025-01-20 07:58:14','2025-01-20 07:58:14',0),
(8,3,2,28,NULL,100000.00,0,1,0.00,100000.00,NULL,NULL,0,'2025-01-20 07:58:14','2025-01-20 07:58:14',0),
(9,3,2,48,NULL,11000.00,0,0,0.00,11000.00,NULL,NULL,0,'2025-01-20 07:58:14','2025-01-20 07:58:14',0),
(10,4,2,6,NULL,333000.00,0,0,333000.00,0.00,NULL,NULL,0,'2025-01-20 08:34:03','2025-01-20 08:34:03',0),
(11,4,2,28,NULL,300000.00,0,1,0.00,300000.00,NULL,NULL,0,'2025-01-20 08:34:03','2025-01-20 08:34:03',0),
(12,4,2,48,NULL,33000.00,0,0,0.00,33000.00,NULL,NULL,0,'2025-01-20 08:34:03','2025-01-20 08:34:03',0);

/*Table structure for table `acct_journal_voucher_type` */

DROP TABLE IF EXISTS `acct_journal_voucher_type`;

CREATE TABLE `acct_journal_voucher_type` (
  `acct_journal_voucher_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`acct_journal_voucher_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `acct_journal_voucher_type` */

insert  into `acct_journal_voucher_type`(`acct_journal_voucher_type_id`,`type_name`,`created_at`,`updated_at`) values 
(1,'jurnal-umum','2023-07-24 14:05:43','2023-07-24 14:05:42'),
(2,'jurnal-pembelian','2023-07-24 14:05:41','2023-07-24 14:05:40'),
(3,'jurnal-penjualan','2023-07-24 14:05:40','2023-07-24 14:05:38'),
(4,'jurnal-kas-dan-bank','2023-07-24 14:05:38','2023-07-24 14:05:36');

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

/*Data for the table `acct_payment_schedule` */

insert  into `acct_payment_schedule`(`payment_schedule_id`,`branch_id`,`payment_schedule_name`,`payment_schedule_repeat_every`,`payment_schedule_start_date`,`payment_schedule_next_date`,`payment_schedule_last_date`,`payment_schedule_status`,`status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(3,0,'Biaya Listrik, Telepon dan Air',0,'2019-07-09','2019-09-09','2019-08-27',0,0,0,0,NULL,'2023-06-23 10:52:20'),
(4,0,'Uang Sampah',0,'2019-07-03','2019-08-03',NULL,0,0,0,0,NULL,'2023-06-23 10:52:20');

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

/*Data for the table `acct_profit_loss` */

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

/*Data for the table `acct_profit_loss_report` */

insert  into `acct_profit_loss_report`(`profit_loss_report_id`,`company_id`,`format_id`,`report_no`,`account_type_id`,`account_id`,`account_code`,`account_name`,`report_formula`,`report_operator`,`report_type`,`report_tab`,`report_bold`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,2,3,1,2,0,'','RINCIAN PENDAPATAN','','',1,0,1,0,55,NULL,NULL),
(2,2,3,2,2,0,'','PENDAPATAN OPERASIONAL','','',1,1,1,0,55,NULL,NULL),
(3,2,3,3,2,28,'200.1','Pendapatan Penjualan','','',3,2,0,0,55,NULL,NULL),
(4,2,3,4,2,0,'','TOTAL PENDAPATAN','3#','+#',6,0,1,0,55,NULL,NULL),
(5,2,3,5,0,0,'','','','',0,0,0,0,55,NULL,NULL),
(6,2,3,6,3,0,'','RINCIAN BIAYA','','',1,0,1,0,55,NULL,NULL),
(7,2,3,7,3,0,'','BEBAN OPERASIONAL','','',1,1,1,0,55,NULL,NULL),
(8,2,3,8,3,36,'101.1','PEMBELIAN BARANG DAGANGAN','','',3,2,0,0,55,NULL,NULL),
(9,2,3,9,3,38,'101.2','PEMBELIAN PENDUKUNG','','',3,2,0,0,55,NULL,NULL),
(10,2,3,10,3,43,'101.3','PENGELUARAN LAIN-LAIN','','',3,2,0,0,55,NULL,NULL),
(11,2,3,11,3,49,'101.4','Transportasi/Parkir','','',3,2,0,0,55,NULL,NULL),
(12,2,3,12,3,0,'','TOTAL BEBAN','8#9#10#11','+#+#+#+#',6,0,1,0,55,NULL,NULL),
(13,2,3,13,3,0,'','LABA/RUGI BERSIH','3#8#9#10#11','+#-#-#-#-#',6,0,1,0,55,NULL,NULL);

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

/*Data for the table `acct_recalculate_log` */

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

/*Data for the table `acct_report` */

insert  into `acct_report`(`id`,`id_no`,`id_report`,`field_name`,`account_id`,`formula`,`operator`,`type`,`status`,`indent_tab`,`indent_bold`) values 
(559,1,2,'Aktiva Lancar','0','','','title',1,0,1),
(560,2,2,'Kas','1.1.1.1','','','loop',1,1,0),
(561,3,2,'Bank','1.1.1.2','','','loop',1,1,0),
(562,4,2,'Piutang Usaha','1.1.2.1','','','loop',1,1,0),
(563,5,2,'Piutang Retensi','1.1.2.2','','','loop',1,1,0),
(564,6,2,'Tagihan Bruto Pada Pemberi Kerja','1.1.2.3','','','loop',1,1,0),
(565,7,2,'Piutang Non Usaha','1.1.2.4','','','loop',1,1,0),
(566,8,2,'Piutang Lain Lain','1.1.2.5','','','loop',1,1,0),
(567,9,2,'Uang Muka dan Biaya Dibayar Dimuka','1.1.3.1','','','loop',1,1,0),
(568,10,2,'Uang Muka Proyek KSO','1.1.3.2','','','loop',1,1,0),
(569,11,2,'Pajak Dibaya Dimuka','1.1.3.3','','','loop',1,1,0),
(570,12,2,'Persediaan Barang / Dagangan','1.1.4.1','','','loop',1,1,0),
(571,13,2,'Persediaan Barang Dalam Proses (WIP)','1.1.4.2','','','loop',1,1,0),
(572,14,2,'Persediaan Bahan Habis Pakai','1.1.4.3','','','loop',1,1,0),
(573,15,2,'Persediaan Barang Lain - Lain','1.1.4.4','','','loop',1,1,0),
(574,16,2,'Jumlah Aktiva Lancar','0','2#3#4#5#6#7#8#9#10#11#12#13#14#15','+#+#+#+#+#+#+#+#+#+#+#+#+#+','sum',1,2,1),
(575,17,2,'Aktiva Tetap','0','','','title',1,0,1),
(576,18,2,'Aktiva Tetap Berwujud','1.2.1.1','','','title',1,1,1),
(577,19,2,'Tanah','1.2.1.101','','','loop',1,2,0),
(578,20,2,'Bangunan','1.2.1.120','','','loop',1,2,0),
(579,21,2,'Akumulasi Penyusutan Bangunan','1.2.1.121','','','loop',0,2,0),
(580,22,2,'Kendaraan','1.2.1.130','','','loop',1,2,0),
(581,23,2,'Akumulasi Penyusutan Kendaraan','1.2.1.131','','','loop',0,2,0),
(582,24,2,'Mesin','1.2.1.140','','','loop',1,2,0),
(583,25,2,'Akumulasi Penyusutan Mesin','1.2.1.141','','','loop',0,2,0),
(584,26,2,'Inventaris','1.2.1.150','','','loop',1,2,0),
(585,27,2,'Akumulasi Penyusutan Inventaris','1.2.1.151','','','loop',0,2,0),
(586,28,2,'Aktiva Sewa Guna Usaha','1.2.1.160','','','loop',1,2,0),
(587,29,2,'Akm. Penyusutan Aktiva Sewa Guna Usaha','1.2.1.161','','','loop',0,2,0),
(588,30,2,'Aktiva Tetap Tak Berwujud','0','','','title',1,1,1),
(589,31,2,'Aktiva Tetap Tak Berwujud','1.2.2.1','','','loop',1,2,0),
(590,32,2,'Jumlah Aktiva Tetap','0','19#20#21#22#23#24#25#26#27#28#29#31','+#+#-#+#-#+#-#+#-#+#-#+','sum',1,2,1),
(591,33,2,'Aktiva Lain - Lain','0','','','title',1,0,1),
(592,34,2,'Aktiva Lain - Lain','1.3.1.1','','','loop',1,1,0),
(593,35,2,'Jumlah Aktiva Lain - Lain','0','34#','+#','sum',1,2,1),
(594,36,2,'Jumlah Aktiva','0','2#3#4#5#6#7#8#9#10#11#12#13#14#15#19#20#21#22#23#24#25#26#27#28#29#31#34','+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#-#+#-#+#-#+#-#+#-#+#+','sum',1,3,1),
(595,37,2,'Kewajiban','0','','','title',1,0,1),
(596,38,2,'Hutang Usaha','2.1.1.1','','','loop',1,1,0),
(597,39,2,'Hutang Bank Jangka Pendek','2.1.2.1','','','loop',1,1,0),
(598,40,2,'Hutang pajak','2.1.2.2','','','loop',1,1,0),
(599,41,2,'Hutang Bunga Bank','2.1.2.3','','','loop',1,1,0),
(600,42,2,'Hutang Gaji','2.1.2.4','','','loop',1,1,0),
(601,43,2,'Hutang Pendapatan Diterima Dimuka','2.1.2.5','','','loop',1,1,0),
(602,44,2,'Hutang Biaya','2.1.2.6','','','loop',1,1,0),
(603,45,2,'Hutang Leasing','2.1.2.7','','','loop',1,1,0),
(604,46,2,'Jumlah Hutang JK Pendek','0','38#39#40#41#42#43#44#45','+#+#+#+#+#+#+#+','sum',1,2,1),
(605,47,2,'Hutang Bank Jangka Panjang','2.2.1.1','','','loop',1,1,0),
(606,48,2,'Hutang Sewaguna Usaha','2.2.2.1','','','loop',1,1,0),
(607,49,2,'Hutang Jangka Panjang Lain-Lain','2.2.3.1','','','loop',1,1,0),
(608,50,2,'Jumlah Hutang JK Panjang','0','47#48#49','+#+#+','sum',1,2,1),
(609,51,2,'Ekuitas','0','','','title',1,0,1),
(610,52,2,'Modal Disetor','3.1.1.1','','','loop',1,1,0),
(611,53,2,'Saldo Laba','3.1.2.1','','','loop',1,1,0),
(612,54,2,'Jumlah Ekuitas','0','52#53','+#+','sum',1,2,1),
(613,55,2,'Total Pasiva','0','38#39#40#41#42#43#44#45#47#48#49#52#53','+#+#+#+#+#+#+#+#+#+#+#+#+','sum',1,3,1),
(699,1,1,'Pendapatan Penjualan','0','','','title',1,0,1),
(700,2,1,'Pendapatan Penjualan','4.1.1.2','','','loop',1,1,1),
(701,3,1,'Harga Pokok Penjualan (HPP)','0','','','title',1,0,1),
(702,4,1,'Persediaan Awal Produk Jadi','0','','','loop',1,1,0),
(703,5,1,'Harga Pokok Produksi','0','','','title',1,2,1),
(704,6,1,'Persediaan Awal Produk Dalam Proses','0','','','loop',1,2,0),
(705,7,1,'Biaya Biaya Produksi','0','','','title',1,3,1),
(706,8,1,'Persediaan Awal Bahan Baku','0','','','loop',1,4,1),
(707,9,1,'Pembelian Bahan','0','','','loop',1,4,0),
(708,10,1,'Bahan Tersedia Untuk Di Pakai','0','','','loop',1,4,0),
(709,11,1,'Persediaan Akhir Bahan Baku','0','','','loop',1,5,0),
(710,12,1,'Biaya Bahan Baku','0','','','loop',1,6,0),
(711,13,1,'Biaya Tenaga Kerja Langsung','0','','','loop',1,6,0),
(712,14,1,'Biaya Overhead Pabrik','5.15','','','loop',1,6,0),
(713,15,1,'Biaya Biaya Produksi','0','12#13#14','+#+#+','sum',1,6,1),
(714,16,1,'Persediaan Akhir Produk dalam Proses','0','','','loop',1,2,0),
(715,17,1,'Harga Pokok Produksi','0','','','sum',1,6,1),
(716,18,1,'Harga Pokok Produk Jadi Yg Siap di Jual','0','','','sum',1,1,1),
(717,19,1,'Persediaan Akhir Produk Jadi','0','','','loop',1,1,0),
(718,20,1,'Harga Pokok Penjualan (HPP)','0','','','sum',1,6,1),
(719,21,1,'Laba (Rugi) Kotor','0','','','sum',1,0,1),
(720,22,1,'Biaya Biaya Usaha','0','','','title',1,0,1),
(721,23,1,'Biaya Penjualan & Pemasaran','0','','','title',1,1,1),
(722,24,1,'Gaji Sales','6.1.1.103','','','loop',1,2,0);

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

/*Data for the table `acct_report_backup` */

insert  into `acct_report_backup`(`id`,`id_no`,`id_report`,`field_name`,`account_id`,`formula`,`operator`,`type`,`indent_tab`,`indent_bold`) values 
(220,1,1,'Pendapatan','0',NULL,NULL,'title',0,1),
(221,2,1,'Penjualan Plastik','0',NULL,NULL,'subtitle',1,1),
(222,3,1,'Penjualan Plastik','500.001',NULL,NULL,'loop',2,0),
(223,4,1,'Return dan Pototngan Penjualan Plastik','550.001',NULL,NULL,'loop',2,0),
(224,5,1,'Total Penjualan Plastik','0','3#4','-#-','sum',1,1),
(225,6,1,'Penjualan Lem','0',NULL,NULL,'subtitle',1,1),
(226,7,1,'Penjualan Lem','500.002',NULL,NULL,'loop',2,0),
(227,8,1,'Return dan Pototngan Penjualan Lem','550.002',NULL,NULL,'loop',2,0),
(228,9,1,'Total Penjualan Lem','0','7#8','-#-','sum',1,1),
(229,10,1,'Total Penjualan','0','3#4#7#8','+#-#+#-','sum',1,1),
(230,11,1,'COGS','0',NULL,NULL,'title',0,1),
(231,12,1,'COGS Lem','160.007',NULL,NULL,'parent',1,0),
(232,14,1,'Total COGS','0','12#13','+#+','sum',1,1),
(233,15,1,'Biaya Produksi','0',NULL,NULL,'title',0,1),
(234,16,1,'Biaya Bahan','610',NULL,NULL,'loop',1,0),
(235,17,1,'Biaya Gaji Produksi','620',NULL,NULL,'loop',1,0),
(236,18,1,'Pembelian Tunai Bahan','630',NULL,NULL,'loop',1,0),
(237,19,1,'Biaya Perlengkapan','640',NULL,NULL,'loop',1,0),
(238,20,1,'Biaya Penyusutan','650',NULL,NULL,'loop',1,0),
(239,21,1,'Total Biaya Produksi','0','16#17#18#19#20','+#+#+#+#+','sum',1,1),
(240,22,1,'Laba / Rugi (Kotor)','0','3#4#7#8#12#13#16#17#18#19#20','+#-#+#-#-#-#-#-#-#-#-','sum',1,1),
(241,23,1,'Biaya Penjualan','0','0','0','title',0,1),
(242,24,1,'Biaya Penjualan','700','0','0','loop',1,0),
(243,25,1,'Total Biaya Penjualan','0','24#','+#','sum',1,1),
(244,26,1,'Biaya Adm Dan Umum','0','0','0','title',0,1),
(245,27,1,'Biaya Karyawan','810','0','0','loop',1,0),
(246,28,1,'Biaya Adm dan Umum','820','0','0','loop',1,0),
(247,29,1,'Biaya Lain - Lain','830','0','0','loop',1,0),
(248,30,1,'Total Biaya Adm dan Umum','0','27#28#29','+#+#+','sum',1,1),
(249,31,1,'Laba / Rugi Operasional','0','3#4#7#8#12#13#16#17#18#19#20#24#27#28#29','+#-#+#-#-#-#-#-#-#-#-#-#-#-#-','sum',1,1),
(250,32,1,'Pendapatan dan Biaya Lain - Lain','0','0','0','title',0,1),
(251,33,1,'Pendapatan Lain - Lain','0','0','0','subtitle',1,1),
(252,34,1,'Pendapatan Lain - Lain','900','0','0','loop',2,0),
(253,35,1,'Laba Rugi Penjualan Aktiva','910.001','0','0','loop',2,0),
(254,36,1,'Total Pendapatan Lain - Lain','0','34#35','+#+','sum',2,1),
(255,37,1,'Biaya Lain - Lain','0','0','0','title',1,1),
(256,38,1,'Biaya Lain - Lain','910','0','0','loop',2,0),
(257,39,1,'Ikhtisar Laba - Rugi','920','0','0','loop',2,0),
(258,40,1,'Total Biaya Lain - Lain','0','38#39','+#+','sum',2,1),
(259,41,1,'Total Pendapatan dan Biaya Lain2','0','34#35#38#39','+#+#-#-','sum',1,1),
(260,42,1,'Laba / Rugi Bersih','0','3#4#7#8#12#13#16#17#18#19#20#24#27#28#29#34#35#38#39','+#-#+#-#-#-#-#-#-#-#-#-#-#-#-#+#+#-#-','sum',1,1),
(284,123,1,'coba','100','1#2','+#+','title',1,1),
(309,1,2,'Aktiva Lancar','0','0','0','title',0,1),
(310,2,2,'Kas','100','0','0','loop',1,0),
(311,3,2,'Bank','110','0','0','loop',1,0),
(312,4,2,'Piutang Giro','120','0','0','loop',1,0),
(313,5,2,'Piutang Usaha','130','0','0','loop',1,0),
(314,7,2,'Investasi','150','0','0','loop',1,0),
(315,8,2,'Persediaan','160','0','0','loop',1,0),
(316,9,2,'Total Aktiva Lancar','0','2#3#4#5#6#7#8','+#+#+#+#+#','sum',1,1),
(317,10,2,'Aktiva Tetap','0','0','0','title',0,1),
(318,11,2,'Aktiva Tetap','200','0','0','loop',1,0),
(319,12,2,'Akm. Penyusutan Aktiva Tetap','210','0','0','loop',1,0),
(320,13,2,'Total Aktiva Tetap','0','11#12','-#-','sum',1,1),
(321,14,2,'Total Aktiva','0','2#3#4#5#6#7#8#12#13','+#+#+#+#+#+#-','sum',0,1),
(322,15,2,'Passiva','0','0','0','title',0,1),
(323,16,2,'Hutang','3','0','0','loop',1,0),
(324,17,2,'Total Hutang','0','16#','+#','sum',1,1),
(325,18,2,'Modal','0','0','0','title',0,1),
(326,19,2,'Modal','400.001','0','0','loop',1,0),
(327,20,2,'Akumulasi Laba','410','0','0','loop',1,0),
(328,21,2,'Akumulasi Laba tahun Berjalan','420','0','0','loop',1,0),
(329,22,2,'Total Modal','0','19#20#21','+#+#+','sum',1,1),
(330,23,2,'Total Passiva','0','16#19#20#21','+#+#+#+','sum',0,1),
(331,24,2,'Balance','0','2#3#4#5#6#7#8#12#13#16#19#20#21','+#+#+#+#+#+#-#-#-#-#-','sum',0,1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `buyers_acknowledgment` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `buyers_acknowledgment_item` */

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

/*Data for the table `core_agency` */

insert  into `core_agency`(`agency_id`,`branch_id`,`agency_code`,`agency_name`,`agency_phone_number`,`agency_contact_person`,`agency_address`,`agency_email`,`agency_profit_sharing_percentage`,`agency_remark`,`mou_status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,'B001','EXAMPLE AGENSI','0526525','SMG','SEMARANG','-',2.00,NULL,0,0,121,'2019-10-24 11:18:12','2023-12-28 04:42:51'),
(2,0,'tes1','tes','1212','tes','tes','tes',12.00,'tes',0,1,3,'2021-10-15 02:43:48','2023-06-23 10:52:21');

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

/*Data for the table `core_bank` */

insert  into `core_bank`(`bank_id`,`bank_code`,`bank_name`,`account_id`,`bank_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(11,'BM','Bank Mandiri',8,NULL,0,3,'2023-06-09 06:34:35','2023-06-23 10:52:21'),
(12,'5454','BRI Syariah',8,NULL,0,3,'2023-06-20 15:54:32','2023-06-23 10:52:21');

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

/*Data for the table `core_branch` */

insert  into `core_branch`(`branch_id`,`branch_code`,`branch_name`,`branch_address`,`branch_manager`,`branch_status`,`branch_parent_id`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'KME','PBF Menjangan Enam','Semarang',NULL,0,NULL,0,0,NULL,'2023-12-26 10:12:57');

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

/*Data for the table `core_city` */

insert  into `core_city`(`city_id`,`city_code`,`province_id`,`province_code`,`city_name`,`province_no`,`city_no`,`data_state`) values 
(936,'',62,'','Kabupaten Gianyar','','',0),
(937,'',62,'','Kabupaten Bangli','','',0),
(938,'',62,'','Kabupaten Buleleng','','',0),
(939,'',62,'','Kabupaten Tabanan','','',0),
(940,'',62,'','Kabupaten Karangasem','','',0),
(941,'',62,'','Kabupaten Badung','','',0),
(942,'',62,'','Kabupaten Jembrana','','',0),
(943,'',62,'','Kabupaten Klungkung','','',0),
(944,'',62,'','Kota Denpasar','','',0),
(945,'',63,'','Kabupaten Bangka Selatan','','',0),
(946,'',63,'','Kabupaten Bangka Barat','','',0),
(947,'',63,'','Kabupaten Belitung','','',0),
(948,'',63,'','Kota Pangkal Pinang','','',0),
(949,'',63,'','Kabupaten Bangka Tengah','','',0),
(950,'',63,'','Kabupaten Bangka','','',0),
(951,'',63,'','Kabupaten Belitung Timur','','',0),
(952,'',64,'','Kabupaten Lebak','','',0),
(953,'',64,'','Kabupaten Serang','','',0),
(954,'BTN',64,'','Kota Serang','','',0),
(955,'TGR',64,'','Kabupaten Tangerang','','',0),
(956,'TGR',64,'','Kota Tangerang','','',0),
(957,'',64,'','Kabupaten Pandeglang','','',0),
(958,'',64,'','Kota Tangerang Selatan','','',0),
(959,'',64,'','Kota Cilegon','','',0),
(960,'',65,'','Kabupaten Seluma','','',0),
(961,'',65,'','Kabupaten Bengkulu Tengah','','',0),
(962,'',65,'','Kota Bengkulu','','',0),
(963,'',65,'','Kabupaten Muko Muko','','',0),
(964,'',65,'','Kabupaten Rejang Lebong','','',0),
(965,'',65,'','Kabupaten Kaur','','',0),
(966,'',65,'','Kabupaten Bengkulu Selatan','','',0),
(967,'',65,'','Kabupaten Kepahiang','','',0),
(968,'',65,'','Kabupaten Lebong','','',0),
(969,'',65,'','Kabupaten Bengkulu Utara','','',0),
(970,'',66,'','Kabupaten Gunung Kidul','','',0),
(971,'JOG',66,'','Kota Yogyakarta','','',0),
(972,'',66,'','Kabupaten Kulon Progo','','',0),
(973,'',66,'','Kabupaten Sleman','','',0),
(974,'',66,'','Kabupaten Bantul','','',0),
(975,'JKT',67,'','Kota Jakarta Selatan','','',0),
(976,'JKT',67,'','Kota Jakarta Utara','','',0),
(977,'JKT',67,'','Kota Jakarta Pusat','','',0),
(978,'JKT',67,'','Kota Jakarta Barat','','',0),
(979,'JKT',67,'','Kota Jakarta Timur','','',0),
(980,'',67,'','Kabupaten Kepulauan Seribu','','',0),
(981,'',68,'','Kabupaten Boalemo','','',0),
(982,'',68,'','Kabupaten Pohuwato','','',0),
(983,'',68,'','Kabupaten Gorontalo Utara','','',0),
(984,'',68,'','Kabupaten Gorontalo','','',0),
(985,'',68,'','Kabupaten Bone Bolango','','',0),
(986,'',68,'','Kota Gorontalo','','',0),
(987,'',69,'','Kabupaten Tebo','','',0),
(988,'',69,'','Kabupaten Tanjung Jabung Barat','','',0),
(989,'',69,'','Kabupaten Merangin','','',0),
(990,'',69,'','Kota Jambi','','',0),
(991,'',69,'','Kabupaten Bungo','','',0),
(992,'',69,'','Kota Sungaipenuh','','',0),
(993,'',69,'','Kabupaten Muaro Jambi','','',0),
(994,'',69,'','Kabupaten Kerinci','','',0),
(995,'',69,'','Kabupaten Sarolangun','','',0),
(996,'',69,'','Kabupaten Tanjung Jabung Timur','','',0),
(997,'',69,'','Kabupaten Batang Hari','','',0),
(998,'',70,'','Kabupaten Indramayu','','',0),
(999,'',70,'','Kabupaten Cirebon','','',0),
(1000,'',70,'','Kabupaten Cianjur','','',0),
(1001,'',70,'','Kabupaten Sukabumi','','',0),
(1002,'',70,'','Kota Sukabumi','','',0),
(1003,'',70,'','Kabupaten Purwakarta','','',0),
(1004,'',70,'','Kabupaten Garut','','',0),
(1005,'',70,'','Kabupaten Sumedang','','',0),
(1006,'',70,'','Kota Bandung','','',0),
(1007,'',70,'','Kabupaten Karawang','','',0),
(1008,'',70,'','Kabupaten Bogor','','',0),
(1009,'',70,'','Kota Tasikmalaya','','',0),
(1010,'',70,'','Kabupaten Bekasi','','',0),
(1011,'',70,'','Kabupaten Tasikmalaya','','',0),
(1012,'',70,'','Kota Depok','','',0),
(1013,'',70,'','Kabupaten Subang','','',0),
(1014,'BGR',70,'','Kota Bogor','','',0),
(1015,'',70,'','Kabupaten Ciamis','','',0),
(1016,'',70,'','Kabupaten Majalengka','','',0),
(1017,'',70,'','Kabupaten Kuningan','','',0),
(1018,'',70,'','Kabupaten Bandung','','',0),
(1019,'',70,'','Kabupaten Bandung Barat','','',0),
(1020,'',70,'','Kabupaten Pangandaran','','',0),
(1021,'BKS',70,'','Kota Bekasi','','',0),
(1022,'',70,'','Kota Banjar','','',0),
(1023,'',70,'','Kota Cirebon','','',0),
(1024,'',70,'','Kota Cimahi','','',0),
(1025,'',71,'','Kabupaten Wonogiri','','',0),
(1026,'',71,'','Kabupaten Batang','','',0),
(1027,'',71,'','Kabupaten Wonosobo','','',0),
(1028,'BYL',71,'','Kabupaten Boyolali','','',0),
(1029,'KLT',71,'','Kabupaten Klaten','','',0),
(1030,'',71,'','Kabupaten Demak','','',0),
(1031,'',71,'','Kabupaten Pekalongan','','',0),
(1032,'',71,'','Kabupaten Temanggung','','',0),
(1033,'GRB',71,'','Kabupaten Grobogan','','',0),
(1034,'',71,'','Kabupaten Pati','','',0),
(1035,'',71,'','Kabupaten Magelang','','',0),
(1036,'SKH',71,'','Kabupaten Sukoharjo','','',0),
(1037,'',71,'','Kabupaten Kendal','','',0),
(1038,'',71,'','Kabupaten Jepara','','',0),
(1039,'',71,'','Kabupaten Pemalang','','',0),
(1040,'',71,'','Kabupaten Tegal','','',0),
(1041,'BYM',71,'','Kabupaten Banyumas','','',0),
(1042,'',71,'','Kabupaten Banjarnegara','','',0),
(1043,'',71,'','Kabupaten Brebes','','',0),
(1044,'',71,'','Kabupaten Cilacap','','',0),
(1045,'SMG',71,'','Kabupaten Semarang','','',0),
(1046,'KDS',71,'','Kabupaten Kudus','','',0),
(1047,'',71,'','Kabupaten Blora','','',0),
(1048,'SMG',71,'','Kota Semarang','','',0),
(1049,'SLT',71,'','Kota Salatiga','','',0),
(1050,'',71,'','Kota Tegal','','',0),
(1051,'KRA',71,'','Kabupaten Karanganyar','','',0),
(1052,'SRG',71,'','Kabupaten Sragen','','',0),
(1053,'',71,'','Kabupaten Rembang','','',0),
(1054,'',71,'','Kabupaten Kebumen','','',0),
(1055,'SLO',71,'','Kota Surakarta','','',0),
(1056,'',71,'','Kabupaten Purbalingga','','',0),
(1057,'',71,'','Kabupaten Purworejo','','',0),
(1058,'',71,'','Kota Pekalongan','','',0),
(1059,'',71,'','Kota Magelang','','',0),
(1060,'',72,'','Kabupaten Bangkalan','','',0),
(1061,'',72,'','Kabupaten Banyuwangi','','',0),
(1062,'',72,'','Kota Batu','','',0),
(1063,'BLT',72,'','Kota Blitar','','',0),
(1064,'BLT',72,'','Kabupaten Blitar','','',0),
(1065,'',72,'','Kabupaten Bojonegoro','','',0),
(1066,'',72,'','Kabupaten Bondowoso','','',0),
(1067,'',72,'','Kabupaten Gresik','','',0),
(1068,'',72,'','Kabupaten Jember','','',0),
(1069,'',72,'','Kabupaten Jombang','','',0),
(1070,'',72,'','Kota Kediri','','',0),
(1071,'',72,'','Kabupaten Kediri','','',0),
(1072,'',72,'','Kabupaten Lamongan','','',0),
(1073,'',72,'','Kabupaten Lumajang','','',0),
(1074,'',72,'','Kota Madiun','','',0),
(1075,'',72,'','Kabupaten Madiun','','',0),
(1076,'',72,'','Kabupaten Magetan','','',0),
(1077,'',72,'','Kota Malang','','',0),
(1078,'',72,'','Kabupaten Malang','','',0),
(1079,'',72,'','Kota Mojokerto','','',0),
(1080,'',72,'','Kabupaten Mojokerto','','',0),
(1081,'',72,'','Kabupaten Nganjuk','','',0),
(1082,'',72,'','Kabupaten Ngawi','','',0),
(1083,'',72,'','Kabupaten Pacitan','','',0),
(1084,'',72,'','Kabupaten Pamekasan','','',0),
(1085,'',72,'','Kota Pasuruan','','',0),
(1086,'',72,'','Kabupaten Pasuruan','','',0),
(1087,'',72,'','Kabupaten Ponorogo','','',0),
(1088,'',72,'','Kota Probolinggo','','',0),
(1089,'',72,'','Kabupaten Probolinggo','','',0),
(1090,'',72,'','Kabupaten Sampang','','',0),
(1091,'SDJ',72,'','Kabupaten Sidoarjo','','',0),
(1092,'',72,'','Kabupaten Situbondo','','',0),
(1093,'',72,'','Kabupaten Sumenep','','',0),
(1094,'SBY',72,'','Kota Surabaya','','',0),
(1095,'',72,'','Kabupaten Trenggalek','','',0),
(1096,'',72,'','Kabupaten Tuban','','',0),
(1097,'',72,'','Kabupaten Tulungagung','','',0),
(1098,'',73,'','Kabupaten Bengkayang','','',0),
(1099,'',73,'','Kabupaten Kapuas Hulu','','',0),
(1100,'',73,'','Kabupaten Kayong Utara','','',0),
(1101,'',73,'','Kabupaten Ketapang','','',0),
(1102,'',73,'','Kabupaten Kubu Raya','','',0),
(1103,'',73,'','Kabupaten Landak','','',0),
(1104,'',73,'','Kabupaten Melawi','','',0),
(1105,'',73,'','Kabupaten Mempawah','','',0),
(1106,'',73,'','Kota Pontianak','','',0),
(1107,'',73,'','Kabupaten Sambas','','',0),
(1108,'',73,'','Kabupaten Sanggau','','',0),
(1109,'',73,'','Kabupaten Sekadau','','',0),
(1110,'',73,'','Kota Singkawang','','',0),
(1111,'',73,'','Kabupaten Sintang','','',0),
(1112,'',74,'','Kabupaten Balangan','','',0),
(1113,'',74,'','Kabupaten Banjar','','',0),
(1114,'',74,'','Kota Banjarbaru','','',0),
(1115,'',74,'','Kota Banjarmasin','','',0),
(1116,'',74,'','Kabupaten Barito Kuala','','',0),
(1117,'',74,'','Kabupaten Hulu Sungai Selatan','','',0),
(1118,'',74,'','Kabupaten Hulu Sungai Tengah','','',0),
(1119,'',74,'','Kabupaten Hulu Sungai Utara','','',0),
(1120,'',74,'','Kabupaten Kotabaru','','',0),
(1121,'',74,'','Kabupaten Tabalong','','',0),
(1122,'',74,'','Kabupaten Tanah Bumbu','','',0),
(1123,'TNL',74,'','Kabupaten Tanah Laut','','',0),
(1124,'',74,'','Kabupaten Tapin','','',0),
(1125,'',75,'','Kabupaten Barito Selatan','','',0),
(1126,'',75,'','Kabupaten Barito Timur','','',0),
(1127,'',75,'','Kabupaten Barito Utara','','',0),
(1128,'',75,'','Kabupaten Gunung Mas','','',0),
(1129,'',75,'','Kabupaten Kapuas','','',0),
(1130,'',75,'','Kabupaten Katingan','','',0),
(1131,'KWR',75,'','Kabupaten Kotawaringin Barat','','',0),
(1132,'KWR',75,'','Kabupaten Kotawaringin Timur','','',0),
(1133,'',75,'','Kabupaten Lamandau','','',0),
(1134,'',75,'','Kabupaten Murung Raya','','',0),
(1135,'',75,'','Kota Palangka Raya','','',0),
(1136,'',75,'','Kabupaten Pulang Pisau','','',0),
(1137,'',75,'','Kabupaten Seruyan','','',0),
(1138,'',75,'','Kabupaten Sukamara','','',0),
(1139,'',76,'','Kota Balikpapan','','',0),
(1140,'',76,'','Kabupaten Berau','','',0),
(1141,'',76,'','Kota Bontang','','',0),
(1142,'',76,'','Kabupaten Kutai Barat','','',0),
(1143,'',76,'','Kabupaten Kutai Kartanegara','','',0),
(1144,'',76,'','Kabupaten Kutai Timur','','',0),
(1145,'',76,'','Kabupaten Mahakam Ulu','','',0),
(1146,'',76,'','Kabupaten Paser','','',0),
(1147,'',76,'','Kabupaten Penajam Paser Utara','','',0),
(1148,'',76,'','Kota Samarinda','','',0),
(1149,'',77,'','Kabupaten Bulungan','','',0),
(1150,'',77,'','Kabupaten Malinau','','',0),
(1151,'',77,'','Kabupaten Nunukan','','',0),
(1152,'',77,'','Kabupaten Tana Tidung','','',0),
(1153,'',77,'','Kota Tarakan','','',0),
(1154,'',78,'','Kota Batam','','',0),
(1155,'',78,'','Kabupaten Bintan','','',0),
(1156,'',78,'','Kabupaten Karimun','','',0),
(1157,'',78,'','Kabupaten Kepulauan Anambas','','',0),
(1158,'',78,'','Kabupaten Lingga','','',0),
(1159,'',78,'','Kabupaten Natuna','','',0),
(1160,'',78,'','Kota Tanjung Pinang','','',0),
(1161,'',79,'','Kota Bandar Lampung','','',0),
(1162,'',79,'','Kabupaten Lampung Barat','','',0),
(1163,'',79,'','Kabupaten Lampung Selatan','','',0),
(1164,'',79,'','Kabupaten Lampung Tengah','','',0),
(1165,'',79,'','Kabupaten Lampung Timur','','',0),
(1166,'',79,'','Kabupaten Lampung Utara','','',0),
(1167,'',79,'','Kabupaten Mesuji','','',0),
(1168,'',79,'','Kota Metro','','',0),
(1169,'',79,'','Kabupaten Pesawaran','','',0),
(1170,'',79,'','Kabupaten Pesisir Barat','','',0),
(1171,'',79,'','Kabupaten Pringsewu','','',0),
(1172,'',79,'','Kabupaten Tanggamus','','',0),
(1173,'',79,'','Kabupaten Tulang Bawang','','',0),
(1174,'',79,'','Kabupaten Tulang Bawang Barat','','',0),
(1175,'',79,'','Kabupaten Way Kanan','','',0),
(1176,'',80,'','Kota Ambon','','',0),
(1177,'',80,'','Kabupaten Buru','','',0),
(1178,'',80,'','Kabupaten Buru Selatan','','',0),
(1179,'',80,'','Kabupaten Kepulauan Aru','','',0),
(1180,'',80,'','Kabupaten Maluku Barat Daya','','',0),
(1181,'',80,'','Kabupaten Maluku Tengah','','',0),
(1182,'',80,'','Kabupaten Maluku Tenggara','','',0),
(1183,'',80,'','Kabupaten Maluku Tenggara Barat','','',0),
(1184,'',80,'','Kabupaten Seram Bagian Barat','','',0),
(1185,'',80,'','Kabupaten Seram Bagian Timur','','',0),
(1186,'',80,'','Kota Tual','','',0),
(1187,'',81,'','Kabupaten Halmahera Barat','','',0),
(1188,'',81,'','Kabupaten Halmahera Selatan','','',0),
(1189,'',81,'','Kabupaten Halmahera Tengah','','',0),
(1190,'',81,'','Kabupaten Halmahera Timur','','',0),
(1191,'',81,'','Kabupaten Halmahera Utara','','',0),
(1192,'',81,'','Kabupaten Kepulauan Sula','','',0),
(1193,'',81,'','Kabupaten Pulau Morotai','','',0),
(1194,'',81,'','Kabupaten Pulau Taliabu','','',0),
(1195,'',81,'','Kota Ternate','','',0),
(1196,'',81,'','Kota Tidore Kepulauan','','',0),
(1197,'',82,'','Kabupaten Aceh Barat','','',0),
(1198,'',82,'','Kabupaten Aceh Barat Daya','','',0),
(1199,'',82,'','Kabupaten Aceh Besar','','',0),
(1200,'',82,'','Kabupaten Aceh Jaya','','',0),
(1201,'',82,'','Kabupaten Aceh Selatan','','',0),
(1202,'',82,'','Kabupaten Aceh Singkil','','',0),
(1203,'',82,'','Kabupaten Aceh Tamiang','','',0),
(1204,'',82,'','Kabupaten Aceh Tengah','','',0),
(1205,'',82,'','Kabupaten Aceh Tenggara','','',0),
(1206,'',82,'','Kabupaten Aceh Timur','','',0),
(1207,'',82,'','Kabupaten Aceh Utara','','',0),
(1208,'',82,'','Kota Banda Aceh','','',0),
(1209,'',82,'','Kabupaten Bener Meriah','','',0),
(1210,'',82,'','Kabupaten Bireuen','','',0),
(1211,'',82,'','Kabupaten Gayo Lues','','',0),
(1212,'',82,'','Kota Lhokseumawe','','',0),
(1213,'',82,'','Kabupaten Nagan Raya','','',0),
(1214,'',82,'','Kabupaten Pidie','','',0),
(1215,'',82,'','Kabupaten Pidie Jaya','','',0),
(1216,'',82,'','Kota Sabang','','',0),
(1217,'',82,'','Kabupaten Simeulue','','',0),
(1218,'',82,'','Kota Subulussalam','','',0),
(1219,'',83,'','Kota Bima','','',0),
(1220,'',83,'','Kabupaten Bima','','',0),
(1221,'',83,'','Kabupaten Dompu','','',0),
(1222,'',83,'','Kabupaten Lombok Barat','','',0),
(1223,'',83,'','Kabupaten Lombok Tengah','','',0),
(1224,'',83,'','Kabupaten Lombok Timur','','',0),
(1225,'',83,'','Kabupaten Lombok Utara','','',0),
(1226,'',83,'','Kota Mataram','','',0),
(1227,'',83,'','Kabupaten Sumbawa','','',0),
(1228,'',83,'','Kabupaten Sumbawa Barat','','',0),
(1229,'',84,'','Kabupaten Alor','','',0),
(1230,'',84,'','Kabupaten Belu','','',0),
(1231,'',84,'','Kabupaten Ende','','',0),
(1232,'',84,'','Kabupaten Flores Timur','','',0),
(1233,'',84,'','Kota Kupang','','',0),
(1234,'',84,'','Kabupaten Kupang','','',0),
(1235,'',84,'','Kabupaten Lembata','','',0),
(1236,'',84,'','Kabupaten Malaka','','',0),
(1237,'',84,'','Kabupaten Manggarai','','',0),
(1238,'',84,'','Kabupaten Manggarai Barat','','',0),
(1239,'',84,'','Kabupaten Manggarai Timur','','',0),
(1240,'',84,'','Kabupaten Nagekeo','','',0),
(1241,'',84,'','Kabupaten Ngada','','',0),
(1242,'',84,'','Kabupaten Rote Ndao','','',0),
(1243,'',84,'','Kabupaten Sabu Raijua','','',0),
(1244,'',84,'','Kabupaten Sikka','','',0),
(1245,'',84,'','Kabupaten Sumba Barat','','',0),
(1246,'',84,'','Kabupaten Sumba Barat Daya','','',0),
(1247,'',84,'','Kabupaten Sumba Tengah','','',0),
(1248,'',84,'','Kabupaten Sumba Timur','','',0),
(1249,'',84,'','Kabupaten Timor Tengah Selatan','','',0),
(1250,'',84,'','Kabupaten Timor Tengah Utara','','',0),
(1251,'',85,'','Kabupaten Asmat','','',0),
(1252,'',85,'','Kabupaten Biak Numfor','','',0),
(1253,'',85,'','Kabupaten Boven Digoel','','',0),
(1254,'',85,'','Kabupaten Deiyai','','',0),
(1255,'',85,'','Kabupaten Dogiyai','','',0),
(1256,'',85,'','Kabupaten Intan Jaya','','',0),
(1257,'',85,'','Kota Jayapura','','',0),
(1258,'',85,'','Kabupaten Jayapura','','',0),
(1259,'',85,'','Kabupaten Jayawijaya','','',0),
(1260,'',85,'','Kabupaten Keerom','','',0),
(1261,'',85,'','Kabupaten Kepulauan Yapen','','',0),
(1262,'',85,'','Kabupaten Lanny Jaya','','',0),
(1263,'',85,'','Kabupaten Mamberamo Raya','','',0),
(1264,'',85,'','Kabupaten Mamberamo Tengah','','',0),
(1265,'',85,'','Kabupaten Mappi','','',0),
(1266,'',85,'','Kabupaten Merauke','','',0),
(1267,'',85,'','Kabupaten Mimika','','',0),
(1268,'',85,'','Kabupaten Nabire','','',0),
(1269,'',85,'','Kabupaten Nduga','','',0),
(1270,'',85,'','Kabupaten Paniai','','',0),
(1271,'',85,'','Kabupaten Pegunungan Bintang','','',0),
(1272,'',85,'','Kabupaten Puncak','','',0),
(1273,'',85,'','Kabupaten Puncak Jaya','','',0),
(1274,'',85,'','Kabupaten Sarmi','','',0),
(1275,'',85,'','Kabupaten Supiori','','',0),
(1276,'',85,'','Kabupaten Tolikara','','',0),
(1277,'',85,'','Kabupaten Waropen','','',0),
(1278,'',85,'','Kabupaten Yahukimo','','',0),
(1279,'',85,'','Kabupaten Yalimo','','',0),
(1280,'',86,'','Kabupaten Fakfak','','',0),
(1281,'',86,'','Kabupaten Kaimana','','',0),
(1282,'',86,'','Kabupaten Manokwari','','',0),
(1283,'',86,'','Kabupaten Manokwari Selatan','','',0),
(1284,'',86,'','Kabupaten Maybrat','','',0),
(1285,'',86,'','Kabupaten Pegunungan Arfak','','',0),
(1286,'',86,'','Kabupaten Raja Ampat','','',0),
(1287,'',86,'','Kota Sorong','','',0),
(1288,'',86,'','Kabupaten Sorong','','',0),
(1289,'',86,'','Kabupaten Sorong Selatan','','',0),
(1290,'',86,'','Kabupaten Tambrauw','','',0),
(1291,'',86,'','Kabupaten Teluk Bintuni','','',0),
(1292,'',86,'','Kabupaten Teluk Wondama','','',0),
(1293,'',87,'','Kabupaten Bengkalis','','',0),
(1294,'',87,'','Kota Dumai','','',0),
(1295,'',87,'','Kabupaten Indragiri Hilir','','',0),
(1296,'',87,'','Kabupaten Indragiri Hulu','','',0),
(1297,'',87,'','Kabupaten Kampar','','',0),
(1298,'',87,'','Kabupaten Kepulauan Meranti','','',0),
(1299,'',87,'','Kabupaten Kuantan Singingi','','',0),
(1300,'',87,'','Kota Pekanbaru','','',0),
(1301,'',87,'','Kabupaten Pelalawan','','',0),
(1302,'',87,'','Kabupaten Rokan Hilir','','',0),
(1303,'',87,'','Kabupaten Rokan Hulu','','',0),
(1304,'',87,'','Kabupaten Siak','','',0),
(1305,'',88,'','Kabupaten Majene','','',0),
(1306,'',88,'','Kabupaten Mamasa','','',0),
(1307,'',88,'','Kabupaten Mamuju','','',0),
(1308,'',88,'','Kabupaten Mamuju Tengah','','',0),
(1309,'',88,'','Kabupaten Mamuju Utara','','',0),
(1310,'',88,'','Kabupaten Polewali Mandar','','',0),
(1311,'',89,'','Kabupaten Bantaeng','','',0),
(1312,'',89,'','Kabupaten Barru','','',0),
(1313,'',89,'','Kabupaten Bone','','',0),
(1314,'',89,'','Kabupaten Bulukumba','','',0),
(1315,'',89,'','Kabupaten Enrekang','','',0),
(1316,'',89,'','Kabupaten Gowa','','',0),
(1317,'',89,'','Kabupaten Jeneponto','','',0),
(1318,'',89,'','Kabupaten Kepulauan Selayar','','',0),
(1319,'',89,'','Kabupaten Luwu','','',0),
(1320,'',89,'','Kabupaten Luwu Timur','','',0),
(1321,'',89,'','Kabupaten Luwu Utara','','',0),
(1322,'MKS',89,'','Kota Makassar','','',0),
(1323,'',89,'','Kabupaten Maros','','',0),
(1324,'',89,'','Kota Palopo','','',0),
(1325,'',89,'','Kabupaten Pangkajene Kepulauan','','',0),
(1326,'',89,'','Kota Parepare','','',0),
(1327,'',89,'','Kabupaten Pinrang','','',0),
(1328,'',89,'','Kabupaten Sidenreng Rappang','','',0),
(1329,'',89,'','Kabupaten Sinjai','','',0),
(1330,'',89,'','Kabupaten Soppeng','','',0),
(1331,'',89,'','Kabupaten Takalar','','',0),
(1332,'',89,'','Kabupaten Tana Toraja','','',0),
(1333,'',89,'','Kabupaten Toraja Utara','','',0),
(1334,'',89,'','Kabupaten Wajo','','',0),
(1335,'',90,'','Kabupaten Banggai','','',0),
(1336,'',90,'','Kabupaten Banggai Kepulauan','','',0),
(1337,'',90,'','Kabupaten Banggai Laut','','',0),
(1338,'',90,'','Kabupaten Buol','','',0),
(1339,'',90,'','Kabupaten Donggala','','',0),
(1340,'',90,'','Kabupaten Morowali','','',0),
(1341,'',90,'','Kabupaten Morowali Utara','','',0),
(1342,'',90,'','Kota Palu','','',0),
(1343,'',90,'','Kabupaten Parigi Moutong','','',0),
(1344,'',90,'','Kabupaten Poso','','',0),
(1345,'',90,'','Kabupaten Sigi','','',0),
(1346,'',90,'','Kabupaten Tojo Una-Una','','',0),
(1347,'',90,'','Kabupaten Toli-Toli','','',0),
(1348,'',91,'','Kota Bau-Bau','','',0),
(1349,'',91,'','Kabupaten Bombana','','',0),
(1350,'',91,'','Kabupaten Buton','','',0),
(1351,'',91,'','Kabupaten Buton Selatan','','',0),
(1352,'',91,'','Kabupaten Buton Tengah','','',0),
(1353,'',91,'','Kabupaten Buton Utara','','',0),
(1354,'',91,'','Kota Kendari','','',0),
(1355,'',91,'','Kabupaten Kolaka','','',0),
(1356,'',91,'','Kabupaten Kolaka Timur','','',0),
(1357,'',91,'','Kabupaten Kolaka Utara','','',0),
(1358,'',91,'','Kabupaten Konawe','','',0),
(1359,'',91,'','Kabupaten Konawe Kepulauan','','',0),
(1360,'',91,'','Kabupaten Konawe Selatan','','',0),
(1361,'',91,'','Kabupaten Konawe Utara','','',0),
(1362,'',91,'','Kabupaten Muna','','',0),
(1363,'',91,'','Kabupaten Muna Barat','','',0),
(1364,'',91,'','Kabupaten Wakatobi','','',0),
(1365,'',92,'','Kota Bitung','','',0),
(1366,'',92,'','Kabupaten Bolaang Mongondow','','',0),
(1367,'',92,'','Kabupaten Bolaang Mongondow Selatan','','',0),
(1368,'',92,'','Kabupaten Bolaang Mongondow Timur','','',0),
(1369,'',92,'','Kabupaten Bolaang Mongondow Utara','','',0),
(1370,'',92,'','Kabupaten Kepulauan Sangihe','','',0),
(1371,'',92,'','Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro)','','',0),
(1372,'',92,'','Kabupaten Kepulauan Talaud','','',0),
(1373,'',92,'','Kota Kotamobagu','','',0),
(1374,'',92,'','Kota Manado','','',0),
(1375,'',92,'','Kabupaten Minahasa','','',0),
(1376,'',92,'','Kabupaten Minahasa Selatan','','',0),
(1377,'',92,'','Kabupaten Minahasa Tenggara','','',0),
(1378,'',92,'','Kabupaten Minahasa Utara','','',0),
(1379,'',92,'','Kota Tomohon','','',0),
(1380,'',93,'','Kabupaten Agam','','',0),
(1381,'',93,'','Kota Bukittinggi','','',0),
(1382,'',93,'','Kabupaten Dharmasraya','','',0),
(1383,'',93,'','Kabupaten Kepulauan Mentawai','','',0),
(1384,'',93,'','Kabupaten Lima Puluh Kota','','',0),
(1385,'',93,'','Kota Padang','','',0),
(1386,'',93,'','Kota Padang Panjang','','',0),
(1387,'',93,'','Kabupaten Padang Pariaman','','',0),
(1388,'',93,'','Kota Pariaman','','',0),
(1389,'',93,'','Kabupaten Pasaman','','',0),
(1390,'',93,'','Kabupaten Pasaman Barat','','',0),
(1391,'',93,'','Kota Payakumbuh','','',0),
(1392,'',93,'','Kabupaten Pesisir Selatan','','',0),
(1393,'',93,'','Kota Sawah Lunto','','',0),
(1394,'',93,'','Kabupaten Sijunjung','','',0),
(1395,'',93,'','Kota Solok','','',0),
(1396,'',93,'','Kabupaten Solok','','',0),
(1397,'',93,'','Kabupaten Solok Selatan','','',0),
(1398,'',93,'','Kabupaten Tanah Datar','','',0),
(1399,'',94,'','Kabupaten Banyuasin','','',0),
(1400,'',94,'','Kabupaten Empat Lawang','','',0),
(1401,'',94,'','Kabupaten Lahat','','',0),
(1402,'',94,'','Kota Lubuk Linggau','','',0),
(1403,'',94,'','Kabupaten Muara Enim','','',0),
(1404,'',94,'','Kabupaten Musi Banyuasin','','',0),
(1405,'',94,'','Kabupaten Musi Rawas','','',0),
(1406,'',94,'','Kabupaten Musi Rawas Utara','','',0),
(1407,'',94,'','Kabupaten Ogan Ilir','','',0),
(1408,'',94,'','Kabupaten Ogan Komering Ilir','','',0),
(1409,'',94,'','Kabupaten Ogan Komering Ulu','','',0),
(1410,'',94,'','Kabupaten Ogan Komering Ulu Selatan','','',0),
(1411,'',94,'','Kabupaten Ogan Komering Ulu Timur','','',0),
(1412,'',94,'','Kota Pagar Alam','','',0),
(1413,'',94,'','Kota Palembang','','',0),
(1414,'',94,'','Kabupaten Penukal Abab Lematang Ilir','','',0),
(1415,'',94,'','Kota Prabumulih','','',0),
(1416,'',95,'','Kabupaten Asahan','','',0),
(1417,'',95,'','Kabupaten Batu Bara','','',0),
(1418,'',95,'','Kota Binjai','','',0),
(1419,'',95,'','Kabupaten Dairi','','',0),
(1420,'',95,'','Kabupaten Deli Serdang','','',0),
(1421,'',95,'','Kota Gunungsitoli','','',0),
(1422,'',95,'','Kabupaten Humbang Hasundutan','','',0),
(1423,'',95,'','Kabupaten Karo','','',0),
(1424,'',95,'','Kabupaten Labuhanbatu','','',0),
(1425,'',95,'','Kabupaten Labuhanbatu Selatan','','',0),
(1426,'',95,'','Kabupaten Labuhanbatu Utara','','',0),
(1427,'',95,'','Kabupaten Langkat','','',0),
(1428,'',95,'','Kabupaten Mandailing Natal','','',0),
(1429,'',95,'','Kota Medan','','',0),
(1430,'',95,'','Kabupaten Nias','','',0),
(1431,'',95,'','Kabupaten Nias Barat','','',0),
(1432,'',95,'','Kabupaten Nias Selatan','','',0),
(1433,'',95,'','Kabupaten Nias Utara','','',0),
(1434,'',95,'','Kabupaten Padang Lawas','','',0),
(1435,'',95,'','Kabupaten Padang Lawas Utara','','',0),
(1436,'',95,'','Kota Padang Sidempuan','','',0),
(1437,'',95,'','Kabupaten Pakpak Bharat','','',0),
(1438,'',95,'','Kota Pematang Siantar','','',0),
(1439,'',95,'','Kabupaten Samosir','','',0),
(1440,'',95,'','Kabupaten Serdang Bedagai','','',0),
(1441,'',95,'','Kota Sibolga','','',0),
(1442,'',95,'','Kabupaten Simalungun','','',0),
(1443,'',95,'','Kota Tanjung Balai','','',0),
(1444,'',95,'','Kabupaten Tapanuli Selatan','','',0),
(1445,'',95,'','Kabupaten Tapanuli Tengah','','',0),
(1446,'',95,'','Kabupaten Tapanuli Utara','','',0),
(1447,'',95,'','Kota Tebing Tinggi','','',0),
(1448,'',95,'','Kabupaten Toba Samosir','','',0);

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
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_fax_number` varchar(255) DEFAULT NULL,
  `customer_contact_person` varchar(255) DEFAULT NULL,
  `customer_payment_terms` decimal(10,0) DEFAULT NULL,
  `customer_remark` text,
  `debt_limit` int DEFAULT '0',
  `amount_debt` int DEFAULT '0',
  `remaining_limit` int DEFAULT '0',
  `from_store` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `updated_id` int DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_dump` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`),
  KEY `FK_core_customer_province_id` (`province_id`),
  KEY `FK_core_customer_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb3;

/*Data for the table `core_customer` */

insert  into `core_customer`(`customer_id`,`province_id`,`city_id`,`customer_code`,`customer_name`,`customer_tax_no`,`customer_address`,`customer_email`,`customer_fax_number`,`customer_contact_person`,`customer_payment_terms`,`customer_remark`,`debt_limit`,`amount_debt`,`remaining_limit`,`from_store`,`data_state`,`updated_id`,`created_id`,`created_at`,`updated_at`,`data_dump`) values 
(1,71,1045,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SEMARANG',NULL,'JL. INDUSTRI TUGU I KAV 2-4, KWS. INDUSTRI TUGU WIJAYA KUSUMA, RANDUGARUT - SEMARANG, 024-8665660 / 8665657-58',NULL,NULL,'024-8665660 / 8665657-58',NULL,NULL,0,0,0,0,0,NULL,3,'0000-00-00 00:00:00','2023-08-05 05:52:28','Jawa Tengah'),
(2,70,999,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK CIREBON',NULL,'JL. PANGERAN ANTASARI BLOK, PETAPAN RT. 02 / 01 DS. KEDUJEN, KEC. DEPOK - KAB. CIREBON, 0231-247195/247915',NULL,NULL,'0231-247195/247915',NULL,NULL,0,0,0,0,0,NULL,3,'0000-00-00 00:00:00','2023-08-05 05:52:41','Jawa Barat'),
(3,70,1008,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BOGOR 2',NULL,'JL. RAYA BOGOR KM. 46,6, DESA NANGGEWER MEKAR KEC CIBINONG, BOGOR - JAWA BARAT',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,74,'0000-00-00 00:00:00','2023-08-05 05:52:49','Jawa Barat'),
(4,70,1008,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BOGOR',NULL,'JL. RAYA ALTERNATIF SENTUL KM 46, KEL. CIJUJUNG - KEC. SUKARAJA, KAB. BOGOR - 16710, 8796050',NULL,NULL,'8796050',NULL,NULL,0,0,0,0,0,NULL,74,'0000-00-00 00:00:00','2023-08-05 05:52:57','Jawa Barat'),
(5,72,1067,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK GRESIK',NULL,'JL. RAYA DUDUK SAMPEYAN RT 11, RW 04, DS AMBENG-WATANGREJO, KEC. DUDUK SAMPEYAN - GRESIK',NULL,NULL,NULL,0,NULL,0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','2023-08-05 05:53:08','Jawa Timur'),
(6,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PARUNG','','JL. PEMBANGUNAN RAYA GUNUNG, SINDUR NO. 21A RT.01 RW.02, Gunung Sindur - Bogor 16340, 7563078 ','','','7563078',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(7,67,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JAKARTA','','JL. ANCOL BARAT VIII NO. 2, JAKARTA UTARA, 14430, 6919971-74      ','','','6919971-74      ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(8,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MAKASAR','','JL. KIMA 10 BLOK A5 - A5 A, KEL. DAYA KEC. BIRINGKANAYA, MAKASAR SUL-SEL 90241, TELP: 0411-512292 / 5781492 / 512335    ','','',' 0411-512292 / 5781492 / 512335    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(9,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SURABAYA','','JL. JENGGALA NO. 22, GEDANGAN, SIDOARJO - 61254, 8915000 / 8902222       ','','','8915000 / 8902222       ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(10,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SENTUL','','JL. RAYA ALTERNATIF SENTUL KM46, KEL. CIJUJUNG - KEC. SUKARAJA, KAB. BOGOR - 16710, 8796050 ','','','8796050',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(11,79,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK LAMPUNG','','JL. TEMBESU NO. 8 DESA CAMPANG, RAYA - KALI BALOK, BANDAR LAMPUNG - 35122, 0721 - 7699123  ','','','0721 - 7699123  ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(12,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA DC MINI LOMBOK','','JL. BY PASS BANDARA INTERNATIO, NAL LOMBOK, DESA / KEL : BATUJAI / UNGGA, KEC : PRAYA, BP. ARIEF INDARTO, 08562956206        ','','','8562956206',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Nusa Tenggara Barat'),
(13,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK YOGYAKARTA','','JL. RINGROAD BARAT NO. 99, PADUKUHAN SALAKAN RT.08 / RW.26, TRIHANGGO GAMPING - SLEMAN JGY, 0274-6499300    ','','','0274-6499300    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Daerah Istimewa Yogyakarta'),
(14,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PURWAKARTA','','KAWASAN KOTA BUKIT INDAH, SEKTOR N BLOK N 1/5, CIKAMPEK - JAWA BARAT, 0264-8281901    ','','',' 0264-8281901    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(15,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JEMBER','','JL. PIERRE TENDEAN NO. 99A, DUSUN TEGAL BAI, KEL. KARANGREJO, KEC. SUMBERSARI, JEMBER - 68127         ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(16,67,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JAKARTA 2','','JL. ANCOL 8 NO. 2, ANCOL BARAT, JAKARTA 14430           ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(17,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MALANG','','JL. MAYJEND SUNGKONO NO.99, KEL. WONOKOYO KEC. KDNG KANDANG, RT.01 RW.02 KODYA MALANG, JATIM   ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(18,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANDUNG','','JL. JEND. A. YANI NO. 806, KIARACONDONG - CICAHEUM, BANDUNG 40282, 022-7215556     ','','','022-7215556     ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(19,62,936,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BALI',NULL,'JL. RAYA MENGWI - SINGARAJA  NO 17,BANJAR BINONG, DESA WERDHI BUANA, KEC. MENGWI KAB BADUNG, BALI, 0361-829329',NULL,NULL,'0361-829329',0,NULL,0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','2024-05-16 02:02:09','Bali'),
(20,73,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK DEPO PONTIANAK','','JL. TRANS KALIMANTAN KOMPLEK, PERGURUAN PRIMA LESTARI, BLOK D.2 NO. 1-3 - KUBURAYA, KALBAR  ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(21,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK TANGERANG 2','','JL. GATOT SOEBROTO KM. 9, RT. 03/01 KEL. KADE KEC. CURUG, KAB. TANGERANG.         ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(22,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK TANGERANG 1','','JL. RAYA SERANG RT. 003 / 001 KM 09, NO. 1A ZONA INDUSTRI MANIS, DS. KADU JAYA KEC. CURUG, TANGERANG       ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(23,95,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MEDAN','','JL. INDUSTRI DUSUN 1 NO. 60, KEL. TANJUNG MORAWA, KAB. DELI SERDANG 20582, 061-7877060, 7877731    ','','','061-7877060, 7877731    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(24,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JOMBANG','','JL. PETERONGAN KM 71,3, DESA CANDI - DESA SAMBIREJO, KEC. JOGOROTO, KAB JOMBANG              ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(25,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BEKASI','','JL. JABABEKA RAYA BLOK A NO. 6-15, RT. 004 RW. 006 PASIR GOMBONG, CIKARANG UTARA - BEKASI, K       ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(26,92,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MANADO','','KOMP. GUDANG PUSKUD BLOK C2 / C3, JL. RY. MANADO BITUNG, KOLONGAN, TETEMPANGAN JAGA 7, KALAWAT             ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(27,94,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PALEMBANG','','JL. PANGERAN AYIN NO. 326, KEL. SUKAMAJU KEC. SAKO, PALEMBANG - SUMSEL - 30361, 0711-822006     ','','','0711-822006     ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(28,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK LEBAK','','JL. RANGKASBITUNG, PANDEGLANG KM 12 RT 14 RW 05, KP. CIBUAH KERTA MUKTI - BANTEN         ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(29,87,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PEKANBARU','','JL. RAYA KUBANG TERATAK BULUH, RT. 03 / 02 DUSUN II KERAMAT SAKTI, KUBANG JAYA, SIAK HULU - RIAU           ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Riau'),
(30,65,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BENGKULU','','JL. DEPATI PAYUNG NEGARA, KEL, BETUNGAN   KEC, SELEBAR, KOTA BENGKULU           ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Bengkulu'),
(31,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MAKASAR','','JL.KIMA 10 BLOK A5-A5 A, KEC.BIRINGKANAYA MAKASAR, SULAWESI SELATAN 90243, 0411-512292/5781492/512335      ','','',' 0411-512292/5781492/512335    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(32,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK DEPO ACEH','','JL.LAKSAMANA MALAHYATI   DS.BAET, KEC. BAITUSSALAM   KAB. ACEH BESAR, NANGROE ACEH DARUSSALAM         ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Aceh'),
(33,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK KLATEN','','JL. RAYA PENGGUNG-JATINOM, DESA BLENCERAN, KEC. KARANGANOM, KAB. KLATEN, JAWA TENGAH                ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(34,92,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MANADO BARU','','JL. RAYA MANADO - BITUNG, AIRMADIDI ATAS KEC.AIRMADIDI, KAB.MINAHASA UTARA SULUT 95371          ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(35,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PALOPO','','JL. POROS MAKASAR - PALOPO, DESA KARANG KARANGAN, KEC. BUA, KAB. LUWU, SUL-SEL 91991         ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(36,73,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PONTIANAK BARU','','JL. ARTERI SUPADIO  RT. 04  RW. 08, DESA JL.PARIT BARU SUNGAI RAYA, KAB. KUBU RAYA KALIMANTAN BARAT.                ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(37,81,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JATI TERNATE','','JL. SANTO PETRO JEMBATAN 6, NAIK KEDARA, KALUMATA, TERNATE, SELATAN-MALUKU UTARA 97718              ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku Utara'),
(38,74,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANJARMASIN','','JL.A.YANI KM 12,2, KEL.GAMBUT BARAT KAB.BANJAR, BANJARMASIN, 70652   ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Selatan'),
(39,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANGKA','','JL.KETAPANG KAWASAN TPI RT.001, TEMBERAN,BACANG,BUKIT INTAN, KOTA PANGKAL PINANG, KEP. BANGKA BELITUNG    ','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kepulauan Bangka Belitung'),
(40,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cikokol Branch','','Jl. MH. Thamrin No. 9, Cikokol Tangerang 15117, Banten, Indonesia','','','Phone   : 021-5575 5966    ',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(41,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Balaraja Branch','','Jl. Arya Jaya Santika No. 19, RT/RW 001/02, Kp. Seglok Desa Pasir Bolang, Kec. Tigaraksa, Tangerang 15720, Banten','','','Phone   : 021-5990 123    Fax        : 021-5990 388',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(42,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cileungsi Branch 2','','Kawasan Industri Menara Permai Kav. 18 JL.RAYA NAROGONG RT 01/RW 01.KEL,DAYEH','','','Phone : 021-8249 8222, 8249 9234    Fax     : 021-8249 7200, 8249 7500',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(43,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DEPO Balaraja Branch','','Jl. Arya Jaya Santika No. 19, RT/RW 001/02, Kp. Seglok Desa Pasir Bolang, Kec. Tigaraksa, Tangerang 15720, Banten','','','Phone   : 021-5990 123    Fax        : 021-5990 388',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(44,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bekasi Branch','','Kawasan Industri Jababeka 2 Jl. Industri Selatan VI Blok PP No. 6 Cikarang, Jawa Barat','','','Phone : 021- 8984 1456       Fax      : 021- 8984 1455',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(45,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Sidoarjo BULKY BEREBEK (BBRK)','','Jl. BERBEK INDUSTRI VII No 3-5 WARU SIDOARJO','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(46,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bandung Branch 1','','Jl. Soekarno Hatta No. 791, Cisaranten Wetan Bandung 40294, Jawa Barat','','','Fax : 022-7833 215, 7817 247    Fax : 022-7833 215, 7817 247',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(47,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bandung Branch 2','','Jl. Nanjung RT/RW 006/11 (Blok Ajeng), Desa Utama, Kec. Cimahi Selatan Kota Cimahi, Kab. Bandung, Jawa Barat','','','Phone : 022- 6675 300    Fax      : 022- 6671 567',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(48,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cilacap Branch','','Jl. MT. Haryono No. 168 Kawasan Industri Cilacap 53221 Kelurahan Lomanis, Jawa Tengah','','','Phone    : 0282-548 345    Fax       : 0282-548 337',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(49,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Lombok Branch','','Jl. TGH Saleh Hambali Km 20 Dasan Cermen Sandubaya Mataram 83123','','','Phone : 0370-620994',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Nusa Tenggara Barat'),
(50,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Sidoarjo Branch','','Jl. Sukodono No.45 Desa Keboan Sikep Kec.Gedangan Sidoarjo 61254','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(51,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Semarang Branch','','Kawasan Industri Tugu Wijaya Kusuma Jl. Industri I No. 1, Randugarut, Tugu Semarang 50010, Jawa Tengah','','','Phone  : 031-8912 111    Fax      : 031-8911 845',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(52,79,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Lampung Branch','','Jl. Tembesu No.10 Rt.001 Rw. 001 Campang Raya, Sukabumi Kota Bandar Lampung 35122, Lampung','','','Phone : 024-8660 999    Fax       : 024-8660 888',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(53,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Malang Branch','','Jl. Raya Singosari Km 16, Desa Losari Kec. Singosari, Kab. Malang, Jawa Timur','','','Phone : 0721-7699 111    Fax      : 0721-7699 100',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(54,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Klaten Branch','','Jl. Solo - Yogya Km 22, Kaliwingko, Banaran Delanggu, Klaten, Jawa Tengah','','','Phone : 0341-7285 667    Fax    : 0341-454 777',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(55,62,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bali Branch','','Jl. Bypass Ida Bagus Mantra Lingkungan Siut Desa Tulikup Kec. Gianyar Kab. Gianyar 80515','','','Phone : 0272-554 325    Fax      : 0272-557 000',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Bali'),
(56,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Jember Branch','','Jl. Brawijaya Komplek Rejo Agung Mangli - Jember 68153','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(57,95,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Medan Branch','','Jl. Kawasan Industri No 99 S Tanjung Morawa Kab. DELI SERDANG','','','Phone  : 0331-426333    Fax       : 0331-426555',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(58,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bogor Branch','','Jl. Raya Pemda - Karadenan RT 04/RW 10 Kel. Karadenan Kec. Cibinong - Bogor','','','phone  : 061-8050 8000 / 8050 8001    Fax  : 061-8050 8003',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(59,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.cikokol (Bulky Imam Bonjol)','','Jl. IMAM BONJOL No.198 NUSA JAYA KARAWACI TANGERANG','','','Phone : 021-2956 8456    Fax      : 021-2956 8444',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(60,87,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Pekanbaru Branch','','Jl. Siak 2 Air Hitam, Kel. Simpang Baru Kec. Tampan, Pekanbaru','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Riau'),
(61,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Plumbon Branch','','Jl. Pangeran Antasari Blok Kebuyan RT 013/ 005 Desa Lurah, Kec. Plumbon, Kabupaten Cirebon','','','Phone  : 0761-8417 106    Fax      : 0761-8417 102',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(62,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Parung Branch','','Jl. Raya Gunung Sindur RT 010 / RW 005 Kp. Tulang Kuning, Desa Waru, Kec, Parung Kabupaten Bogor, Jawa Barat','','','Phone : 0231-8290 001 / 8290 000    Fax      : 0231-8290 022 / 8290 024',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(63,79,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Kotabumi Branch','','Jl. Lintas Sumatera RT/RW 001/001 Desa Kalibalangan, Kec. Abung Selatan Kotabumi Lampung Utara Depan Polsek Abung Selatan','','','Phone  : 0251-7554422    Fax        : 0251-7554423',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(64,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Karawang Branch','','Jl. Alternatif Tanjungpura-Klari RT 017 RW 004 Desa Mergasari, Kec. Karawang Timur Kabupaten Karawang 41351','','','Phone : 081511636553    Fax      : 0724-3260052',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(65,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Serang Branch','','Jl. Raya Serang Cilegon Km 3.1 Desa Drangon Kec Taktakan Kab Serang','','','Phone  : 0267-8634161    Fax        : 0267-8634160',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(66,94,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC. PALEMBANG Branch','','Jl. Tembus Terminal Alang-Alang Lebar RT.12 RW. 05 Kel. Talang Kelapa Kec. Alang-Alang Lebar Palembang - 30154','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(67,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.CIANJUR','','Alamat : JL.Cianjur Suka Bumi RT.01 / RW.01 Ds.Bunisari , Kec.Warung - Kondang','','','Telp : 02547913535',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(68,89,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.MAKASAR','','JL.Kima Raya VIII Blok SS No.23 Kel.Bira Kec.Tamalanrea Kota Makasar','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(69,73,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRIJAYA, Tbk Branch DEPO PONTIANAK','','Kawasan Borneo Business Icon Jl.Mayor Alianyang ruko B no.6 kab. Kubu Raya prov.Kalimantan Barat 78241','','','Telp ; 081 58 500 4989',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(70,69,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Jambi Branch','','Jl. Raya Palembang- Jambi KM 14 Pondok Meja Kec.Maestong Kab. Muaro Jambi Rov.Jambi','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jambi'),
(71,92,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Manado Branch','','Jl. Raya Worang By Pass Desa Karegesan Jaga IV Kec.Kauditan Kab. Minahasa Utara','','','Telp : ( 0411 ) 4723201 / 4723210    Fax : ( 0411 ) 4733172',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(72,74,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Banjarmasin Branch','','Jl. Raya Nusa Indah RT05/RW02 Kec. Bati bati, Tanah laut 70852 Kalimantan selatan Indonesia','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Selatan'),
(73,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC REMBANG','','Jl Raya Rembang Lasem KM 3 Rt.01/Rw.05.Desa Pasar Banggi,Sawah, Pasar Banggi, Kec. Rembang, Kab. Rembang Jawa Tengah 59219, Indonesia','','','Phone : 0741-5915999    CP : Choerul Anwar ( 08161621148 ext 49169)',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(74,73,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PONTIANAK','','JL. ARTERI SUPADIO RT.04 / RW.08, DESA PARITBARU, KEC. SUNGAI RAYA, KAB. KUBU RAYA, KOTA PONTIANAK, L','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(75,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BANDUNG','','JL. AHMAD YANI NO. 806, CICAHEUM BANDUNG, 40282, 022-7202711','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(76,95,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MEDAN','','JL. SISINGAMANGARAJA KM 6.5, KEC. MEDAN AMPLAS, MEDAN - SUMUT, (061) 7877060, 7877731','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(77,92,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MANADO','','JL. AA MARAMIS NO. 15, KEL. PANIKI SATU, LINGKUNGAN 1, KEC. MAPANGET, MANADO, 95258','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(78,76,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SAMARINDA','','JL. A.W. SYAHRANIE NO. 51, KEL. SEMPAJA SELATAN, SAMARINDA - 75119, 7770734','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Timur'),
(79,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BOGOR','','JL. RAYA BOGOR - JAKARTA KM 46.7, KEL. NANGEWER MEKAR, CIBINONG, KAB. BOGOR 16912','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(80,89,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MAKASAR','','JL. PERINTIS KEMERDEKAAN NO. 17, KM. 18, KEL. PAI KEC. BIRINGKANAYA, KOTA MAKASAR, SULAWESI SELATAN','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(81,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BINTARA','','JL. I GUSTI NGURAH RAI, KEL. BINTARA, KEC. BEKASI BARAT, KOTA BEKASI, 6909471','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(82,67,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIPINANG','','JL. PISANGAN TIMUR, CIPINANG, JAKARTA TIMUR, 4706455','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(83,94,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PALEMBANG','','JL. PANGERAN AYIN RT. 05 / RW. 03, KEL. SUKAMAJU, KEC. SAKO, PALEMBANG, 711822123','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(84,67,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KEMAYORAN','','JL. TERUSAN ANGKASA B2 KAV 1, GUNUNG SAHARI SELATAN, KEMAYORAN JAKARTA PUSAT, 6909471','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(85,71,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SEMARANG','','JL.RAYA KALIGAWE 38KM 5.1, RT01/RW01 TERBOYO WETAN, GENUK SEMARANG, TELP: 024-76928282','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(86,91,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KENDARI','','JL MADUSILA NO.19 KEC POASIA, KEL.ANDUONOHU, KENDARI SULAWESI TENGGARA','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tenggara'),
(87,64,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIPUTAT','','JL RAYA PARUNG CIPUTAT NO 21, RT02/04 KELURAHAN KEDAUNG, KEC, SAWANGAN, KOTA DEPOK','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(88,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG KARAWANG','','JL. KEPUH No.22 KEL. NAGASARI, KEC. KARAWANG BARAT, KAB.KARAWANG JAWA BARAT','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(89,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KARAWANG','','JL. KEPUH No.22, (JL. LINGKAR TANJUNGPURA), KEL.NAGASARI, KEC. KARAWANG BARAT, JAWA BARAT','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(90,80,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR AMBON','','JL. SYARANAMUAL NO. 20 desa HUNUTH, Atau KATE-KATE KEC. PULAU AMBON, KOTA AMBON PROVINSI, MALUKU','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku'),
(91,72,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MALANG','','JL. S. SUPRIADI No 170 A, KEL. KEBONSARI KEC. SUKUN MALANG, MALANG JAWA TIMUR','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(92,79,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BANDAR LAMPUNG','','JL. SUKARNO HATTA NO. 15, KEL. KAMPUNG BARU RAYA, KEC. LABUHAN RATU - BANDAR LAMPUNG','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(93,71,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SOLO','','JL. RAYA SOLO - TAWANGMANGU, KM 7,2 DS DAGEN, KEC. JATEN, KAB. KARANGANYAR - JAWA TENGAH','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(94,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SUKABUMI','','JL.LINGKAR SELATAN NO.26, KEL. SUDAJAYA HILIR KEC BAROS, SUKABUMI-JAWA BARAT 43161','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(95,78,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BATAM','','JL. LETJEND SUPRAPTO (BATAMINDO MUKA KUNING), MUKA KUNING, SEI BEDUK','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kepulauan Riau'),
(96,64,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIKOKOL','','JL.MH.THAMRIN RT.001/RW.002, KEL.CIKOKOL KEC.TANGERANG, TANGERANG - BANTEN 15117','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(97,72,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA SURABAYA','','Jl. BERBEK INDUSTRI VII NO.3 - 5, DESA KEPUH KIRIMAN, WARU, SIDOARJO - SURABAYA (65255), Tlp. (031) 7496 - 001/ 031-7494-001 (BAP) 031-8687-005 (GA), Fax. (031) 7480-006 (OFC) / 031-7480-0078 (DC)','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(98,90,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC PALU','','JL. TRANS SULAWESI KM.16, KEL. KAYUMALUE PAJEKO','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tengah'),
(99,92,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA BITUNG','','JL. INDUSTRI KM 12 KP. KADU DESA BUNDER, RT.03 CIKUPA, TANGERANG / EKS GUDANG BULOG','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(100,70,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA MIDI PASURUHAN','','JL. RY BEJI, DS. CANGKRING, MALANG, RT 02 RW 01, PASURUHAN, PASURUHAN, MALANG, Tlp.(0343)6531973','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(101,70,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA BEKASI','','Jl. Jababeka XI Blok L 3-5, Kawasan Industri Jababeka, Cikarang Utara, Bekasi, Telp. (021) 8984-6688), Fax. (021) 8984-4588','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(102,80,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC AMBON','','JL. SISINGAMANGARAJA NO.88, KEL, PASSO, KEC, BAGULA, KOTA AMBON MALUKU 97232','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku'),
(103,95,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA MEDAN','','Jalan MG. Manurung, Kawasan Industri Amplas, KM 9,5. Kelurahan Timbang Deli, Kecamatan Medan, Amplas, Kota Medan','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(104,90,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC PALU 2','','Jl. Karanjalemba no.16, Birobuli Selatan, Palu Selatan, Kota Palu, Sulawesi Tengah, Kode Pos 94364','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tengah'),
(105,92,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC MANADO','','JL. RAYA MANADO BITUNG KM 15, KOMPLEKS PERGUDANGAN OLIMPIK GRUP, KEL. KOLONGAN KEC KALAWAT, MINAHASA UTARA, MANADO SULUT','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(106,71,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC YOGYAKARTA','','JL. JATI No. 262, TEGAL PASAR, BANGUN TAPAN, BANTUL YOGYAKARTA, Telp. 027404932186','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Daerah Istimewa Yogyakarta'),
(107,89,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC MAKASSAR','','JL. Kima Raya KM.8 SS No. 23, Biringkanaya - Daya, Makasar 90245','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(108,76,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC SAMARINDA','','JL. SURYANATA RT 015 KOMPLEK B, SAMARINDA, Telp., Fax. (0541)111682','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Timur'),
(109,72,1044,'PT. SUMBER HIDUP SEHAT','PT. SUMBER HIDUP SEHAT DC. SIDOARJO','','Komplek Pergudangan dan Industri, Non B3 Meiko Abadi III Blok B 32.','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(110,71,1044,'PT. SUMBER HIDUP SEHAT','PT. SUMBER HIDUP SEHAT DC. SEMARANG','','Jl. Fatmawati No.18 RT. 03 RW 25 Kel. Sendangmulyo, kec. Tembalang.','','','',0,'',0,0,0,0,0,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(111,70,1006,'TOSERBA YOGYA/GRIYA','TOSERBA YOGYA/GRIYA  DC.BUAH BATU',NULL,'Jl.Terusan Buah Batu No.12  Rt.06/Rw.04 \r\nKel. Batununggal   Kec. Bandung Kidul\r\nKota Bandung\r\nBANDUNG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:03:06','2023-08-10 05:03:06',NULL),
(112,70,1006,'TOSERBA YOGYA/GRIYA','TOSERBA YOGYA/GRIYA  DC.GRIYA CENTER',NULL,'JL.JAKARTA  No.53 \r\nBANDUNG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:04:18','2023-08-10 05:04:18',NULL),
(113,66,973,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.YOGYAKARTA',NULL,'JL. MAGELANG KM,6\r\nSINDUADI, MELATI, SLEMAN\r\nDAERAH ISTIMEWA YOGYAKARTA',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:07:26','2023-08-10 05:07:26',NULL),
(114,64,956,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.CIKOKOL',NULL,'JL.MH THAMRIN  RT 001/002\r\nKEL CIKOKOL , KEC TANGERANG\r\nBANTEN - 15117',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:08:38','2023-08-10 05:08:38',NULL),
(115,64,956,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.TANGERANG',NULL,'JL. GATOT SUBROTO KM. 5 NO. 4\r\nRT.001 / 001  JATI UWUNG\r\nTANGERANG,BANTEN 15138',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:09:33','2023-08-10 05:09:33',NULL),
(116,70,1002,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.SUKABUMI',NULL,'JL.LINGKAR SELATAN  NO.26\r\nSUDAJAYA HILIR, BAROS\r\nJAWA BARAT, SUKABUMI - 43161',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:10:37','2023-08-10 05:10:37',NULL),
(117,94,1413,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.PALEMBANG',NULL,'JL. PANGERAN AYIN NO.326 RT. 05 / RW. 03\r\nKEL. SUKAMAJU, KEC. SAKO\r\nPALEMBANG\r\n711822123',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:11:31','2023-08-10 05:11:31',NULL),
(118,64,955,'PT.PERINTIS PELAYANAN PARIPURNA','PT.PERINTIS PELAYANAN PARIPURNA',NULL,'JL. Raya Serang KM.10 Pos Bitung, RT.017/004 \r\nDesa Kadu, Kec.Curug, Kab. Tangerang',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:14:23','2023-08-10 05:14:23',NULL),
(119,64,955,'PT. CENTURY FRANCHISINDO UTAMA','PT. CENTURY FRANCHISINDO UTAMA',NULL,'JL. Raya Serang KM.10 , RT.017/004 \r\nDesa Kadu jaya, Kec.Curug, Kab. Tangerang',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:16:10','2023-08-10 05:16:10',NULL),
(120,70,1021,'PT. Hero Supermarket, Tbk','PT. Hero Supermarket, Tbk',NULL,'JL. INDOFARMA  RT 01  RW 10 \r\nCIBITUNG - BEKASI',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-10 05:17:33','2023-08-10 05:17:33',NULL),
(121,71,1048,'BOOTS','BOOTS DC SEMARANG',NULL,'Jl.Madukoro Raya, Kerobokan Kec, Semarang Barat Kota Semarang',NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,NULL,75,'2023-08-16 04:14:41','2023-08-30 04:41:46',NULL),
(122,87,1300,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PEKANBARU',NULL,'JL.SOEKARNO HATTA NO,18\r\nRT01 RW,08 KEL SIDOMULYOBARAT\r\nKEC TAMPAN, PEKANBARU 28294',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-16 04:35:44','2023-08-16 04:35:44',NULL),
(123,70,1014,'APT','PT.SAPTA PRIMA MEDIKA',NULL,'JL.KP MUARA BERES No.55 \r\nRT.02/RW 04 KEL.SUKAHATI\r\nCIBINONG-BOGOR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-22 04:40:10','2023-08-22 04:40:10',NULL),
(124,72,1094,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .DC SURABAYA',NULL,'JL. RAYA JEMURSARI NO. 351\r\nSURABAYA \r\nTELP. 8439988',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-24 03:34:48','2023-08-24 03:34:48',NULL),
(125,64,955,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS THE BREEZE BSD CITY',NULL,'The Breeze BSD City # L.63A-Lake Level\r\nJl. BSD Green Office Park, Kelurahan Sampora\r\nKec, Cisauk. Kab, Tangerang Banten 15345',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-25 02:20:49','2023-09-01 03:07:35',NULL),
(126,69,990,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .IDG JAMBI',NULL,'JL.LINGKAR SELATAN NO.18 RT.36\r\nKELURAHAN KENALI ASAM BAWAH\r\nKEC.KOTA BARU \r\nKOTA JAMBI',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-26 03:25:03','2023-08-26 03:25:03',NULL),
(127,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS GANDARIA CITY MALL',NULL,'Jl.Sultan Iskandar Muda, Rt.10/Rw.6\r\nKebayora Lama Utara, Kec.Kebayoran Lama\r\nJakarta Selatan.DKI Jakarta 12240',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-30 04:44:20','2023-08-30 04:44:20',NULL),
(128,70,1012,'PT.TEKNOLOGI MEDIKA PRATAMA','PT.TEKNOLOGI MEDIKA PRATAMA',NULL,'Komplek Pergudangan Kubik Logistics\r\nGudang E1 E2 E7\r\nJl. Tugu Raya Rt.10 /Rw.10\r\nDs / Kel Tugu. Kec Cimanggis,Kota Depok\r\nProv .Jawa Barat',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-08-31 04:40:38','2023-08-31 04:40:38',NULL),
(129,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS BLOK M PLAZA',NULL,'Plaza Blok M, UG 03 – 04\r\nJl. Bulungan No.76, Kel, Kramat Pela\r\nKec, Kebayoran Baru, Kota Jakarta Selatan\r\nDKI Jakarta 12130\r\n021-7209175',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-09-02 04:46:37','2023-09-02 04:46:37',NULL),
(130,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS AEON TANJUNG BARAT',NULL,'AEON Mall Tanjung Barat # Level 3F,Unit No.3-12A\r\nJl.Raya Tanjung Barat No.163.Rt 12/Rw 4.\r\nKel, Tanjung Barat. Kec, Jagakarsa. Kota Administrasi \r\nJakarta Selatan. DKI Jakarta 12530',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-09-06 02:27:52','2023-09-06 02:27:52',NULL),
(131,67,978,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS CENTRAL PARK',NULL,'Central Park Mall Lantai LG No. Unit L-214A & L-215\r\nJl. Let.Jend.S. Parman Kav.28, Kel. Tanjung Duren Selatan\r\nKec. Grogol Petamburan, Kota Adm Jakarta Barat\r\nDKI Jakarta 11470',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-09-08 03:45:05','2023-09-08 03:45:05',NULL),
(132,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS RUKO KEMANG',NULL,'Jl. Kemang Raya No.24 A   Rt.10/Rw.05\r\nKel,Bangka.  Kec, Mampang Prapatan\r\nKota Jakarta Selatan.\r\nDKI Jakarta 12730\r\n0858-9235-1967',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-09-19 06:40:09','2023-09-19 06:40:09',NULL),
(133,72,1075,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, DC MADIUN',NULL,'JL. RAYA SURABAYA - MADIUN\r\nDUSUN IV, BONGSOPOTRO\r\nKEC. SARADAN, KAB. MADIUN\r\nJAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-02 06:02:04','2024-05-17 02:58:52',NULL),
(134,74,1113,'PT. INTI CAKRAWALA CITRA','INDOGROSIR BANJARMASIN',NULL,'JL.A.YANI KM 12,2\r\nKEL.GAMBUT BARAT KAB.BANJAR\r\nBANJARMASIN\r\n70652',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-07 03:21:40','2023-10-07 03:21:40',NULL),
(135,95,1427,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC STABAT',NULL,'JL. LINTAS SUMATERA  KEL, KARANG REJO\r\nKEC, STABAT  KOTA STABAT\r\nKAB, LANGKAT SUMATERA UTARA 20811',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-09 04:38:20','2023-10-09 04:38:20',NULL),
(136,67,977,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS SOGO PLAZA SENAYAN',NULL,'Mall Plaza Senayan,lantai 1 #101A0\r\nJl. Asia Afrika No.8, Kelurahan Glora, Kec. Tanah Abang\r\nKota Adm Jakarta Pusat\r\nDKI Jakarta 10270\r\n021-57900058',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-12 06:27:38','2023-10-12 06:27:38',NULL),
(137,64,955,'PT.PERINTIS PELAYANAN PARIPURNA','PT.PERINTIS PELAYANAN PARIPURNA (GUDANG CENTURY)',NULL,'GUDANG CENTURY \r\n JL. Raya Serang KM.10 Pos Bitung, RT.017/004 \r\nDesa Kadu, Kec.Curug, Kab. Tangerang\r\nTelp. 021-59490686',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-16 08:19:11','2023-10-16 08:19:11',NULL),
(138,71,1028,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA .DC BOYOLALI',NULL,'JL. NASIONAL 16 \r\n(JL. SEMARANG SURAKARTA)\r\nKEL.WINONG , KEC. BOYOLALI\r\nKAB.BOYOLALI, JAWA TENGAH',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-20 03:48:27','2023-10-20 03:48:27',NULL),
(139,64,956,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA . IDG TANGERANG',NULL,'JL. GATOT SUBROTO KM. 5 NO. 4\r\nJATI UWUNG\r\nTANGERANG 15138',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-25 08:38:46','2023-10-25 08:38:46',NULL),
(140,67,976,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS GOLF ISLAND BATAVIA PIK',NULL,'Rukan Beach View Batavia Golf Island Blok.A No.80\r\nJl. Pantai Indah Kapuk, Kel. Kamal Muara\r\nKec. Penjaringan, Kota Administrasi Jakarta Utara\r\nProv. DKI Jakarta 14470',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-10-26 06:17:18','2023-10-26 06:17:18',NULL),
(141,72,1077,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.MALANG',NULL,'JL. S . SUPRIADI No 170 A\r\nKEL. KEBONSARI  KEC. SUKUN MALANG\r\nMALANG JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-11-04 02:28:23','2023-11-04 02:28:23',NULL),
(142,95,1427,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC STABAT',NULL,'JL. LINTAS SUMATERA  KEL. KARANG REJO\r\nKEC. STABAT KOTA STABAT\r\nKAB.LANGKAT SUMUT 20811',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-11-06 07:58:54','2023-11-06 07:58:54',NULL),
(143,67,976,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS KELAPA GADING MALL',NULL,'Mall Kelapa Gading,lantai Ground G-73B\r\nJl. Bulevard Kelapa Gading Blok M,Rt 13/ Rw 18\r\nKel, Kelapa Gading Timur. Kec, Kelapa Gading\r\nKota Adm Jakarta Utara, DKI Jakarta 14241',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-11-11 03:06:15','2023-11-11 03:06:15',NULL),
(144,64,955,'WAREHOUSE WATSONS','WAREHOUSE WATSONS',NULL,'KOMPLEK PERGUDANGAN NIHON SEIMA BLOK H \r\n JL. GATOT SUBROTO KM.8 \r\nDesa Kadujaya, Kec.Curug, Kab. Tangerang',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2023-11-21 04:10:02','2023-11-21 04:10:02',NULL),
(145,67,977,'PT.GOGOBLI ASIA TEKNOLOGI','PT.GOGOBLI ASIA TEKNOLOGI',NULL,'Jl.Palmerah Utara  No.61A\r\nGelora Tanah Abang\r\nJakarta Pusat',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-20 02:46:38','2024-01-20 02:46:38',NULL),
(146,71,1040,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, DC TEGAL',NULL,'DC TEGAL\r\nJl. Jalan Raya Lingkar Slawi,desa Paguyangan\r\nPenusupan,Kecamatan Pangkah\r\nKabupaten Tegal Jateng',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-20 04:45:13','2024-01-20 04:45:13',NULL),
(147,89,1322,'APT','APT CHOPPER FARMA',NULL,'JL.PACCARAKANG NO.66 \r\nKEL,PACCERAKKANG\r\nKEC,BIRINGKANAYA  KOTA MAKASAR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:21:10','2024-01-29 12:21:10',NULL),
(148,72,1091,'APT','APT SYAKIRA FARMA',NULL,'RUKO VALENCIA BLOK AA NO.29\r\nKEC.GEDANGAN   KAB. SIDOARJO\r\nPROV.JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:22:40','2024-01-29 12:22:40',NULL),
(149,82,1212,'APT','APT MANDIRI',NULL,'JL.DARUSSALAM  NO.44\r\nGP JAWA BARU\r\nBANDA SAKTI LHOKSEUMAWE',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:24:19','2024-01-29 12:24:19',NULL),
(150,93,1385,'APT','APT SYUHADA',NULL,'JL.TEUKU UMAR  NO.1A \r\nSIMPANG ALAI -  PADANG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:25:37','2024-01-29 12:25:37',NULL),
(151,87,1300,'APT','APT AKASIA FARMA',NULL,'JL.UTAMA / TENGKU BEY KOMP BUMI SEJAHTERA\r\nBLOK A2  NO.05\r\nKEL.SIMPANG TIGA  KEC. BUKIT RAYA\r\nKOTA PEKANBARU',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:28:24','2024-01-29 12:28:24',NULL),
(152,89,1322,'APT','APT ARKA MEDIKA',NULL,'JL.UJUNG BORI LAMA  NO.4\r\nKEL.ANTANG  KEC. MANGGALA\r\nKOTA MAKASAR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:29:23','2024-01-29 12:29:23',NULL),
(153,70,1006,'APT','APT KARNA FARMA',NULL,'JL.RAJAWALI BARAT  NO.7A\r\nKEL.MALEBER  KEC.ANDIR\r\nKOTA BANDUNG. JAWA BARAT',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:32:25','2024-01-29 12:32:25',NULL),
(154,75,1132,'TO ','TO SUBUR MAKMUR',NULL,'JL.D.I PANJAITAN  NO.63\r\nMB KETAPANG\r\nKALIMANTAN TENGAH',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:34:39','2024-01-29 12:34:39',NULL),
(155,70,1006,'APT','APT ALMA FELIZ',NULL,'JL.SOMA  NO.16\r\nBABAKAN SARI\r\nKEC.KIARACONDONG. KOTA BANDUNG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:35:24','2024-01-29 12:35:24',NULL),
(156,92,1374,'APT','APT SEHAT FARMA IV',NULL,'JL.DURIAN RAYA \r\nKEL.PANIKI DUA  KEC.MAPANGET\r\nKOTA MANADO',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:38:31','2024-01-29 12:38:31',NULL),
(157,71,1030,'TO ','TO ABADI',NULL,'JL.SUNAN KALIJAGA 33\r\nDEMAK',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-01-29 12:39:12','2024-01-29 12:39:12',NULL),
(158,71,1041,'TO ','TO BETA',NULL,'JL.JEND SUTOYO  NO.45\r\nKEC,PURWOKERTO BARAT \r\nKAB, BANYUMAS',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 07:54:12','2024-02-02 07:54:12',NULL),
(159,72,1087,'TO ','TO SUMBER SEHAT',NULL,'JL.GATOT SUBROTO  NO.47\r\nRT 02 / RW 02\r\nPAKUNDEN PONOROGO. JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 07:55:38','2024-02-02 07:55:38',NULL),
(160,72,1091,'APT','APT BETRO',NULL,'JL.GARUDA  NO.100\r\nBETRO-SEDATI-SIDOARJO\r\nJAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 07:56:29','2024-02-02 07:56:29',NULL),
(161,72,1097,'TO ','TO SAHABAT',NULL,'JL.KHR.ABDUL FATTAH\r\nDS/KEL.SEMBUNG\r\nKEC.TULUNGAGUNG. JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 07:58:19','2024-02-02 07:58:19',NULL),
(162,70,1009,'APT','APT FITAQA FARMA',NULL,'JL.Ir H.JUANDA\r\nDS / KEL.SUKAMULYA KEC. BUNGURSARI\r\nKOTA TASIKMALAYA. JAWA BARAT',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 07:59:34','2024-02-02 07:59:34',NULL),
(163,63,948,'TO ','TO SEHAT',NULL,'JL.JEND SUDIRMAN  NO.23\r\nPASIR PADI,GIRIMAYA\r\nPANGKAL PINANG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:02:05','2024-02-02 08:02:05',NULL),
(164,95,1429,'APT','APT AK - JAYA',NULL,'JL.BESARDELI TUA KM.8,5  NO.8\r\nDS.SUKA MAKMUR\r\nKOMPLEK SUKA MAKMUR WALK.DELI TUA MEDAN',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:03:49','2024-02-02 08:03:49',NULL),
(165,66,974,'APT','APT KARANG JATI',NULL,'JL.SUNGAPAN JETIS TAMANTIRTO\r\nKASIHAN,BANTUL\r\nYOGYAKARTA',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:05:47','2024-02-02 08:05:47',NULL),
(166,67,978,'APT','APT DZAWIN',NULL,'JL.HAJI SELONG NO.54 B\r\nRT 01 / 01.DURI KOSAMBI - CENGKARENG\r\nJAKARTA  BARAT',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:22:49','2024-02-02 08:22:49',NULL),
(167,94,1413,'APT','APT REFAH',NULL,'JL.SLAMET RIYADI LORONG MENTOK NO.27\r\nRT 08 / 03.  KEL.11 ILIR  KEC.ILIR TIMUR III\r\nKOTA PALEMBANG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:27:04','2024-02-02 08:27:04',NULL),
(168,71,1048,'TIRTA HUSADA FARMA','TIRTA HUSADA FARMA',NULL,'JL.SETIABUDI  NO.29\r\nSRONDOL KULON . BANYUMANIK\r\nSEMARANG',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-02 08:32:14','2024-02-02 08:32:14',NULL),
(169,71,1041,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .DC PURWOKERTO',NULL,'JL.RAYA GERILYA BARAT,TANJUNG\r\nKEDUNGWRINGIN,PURWOKERTO-SELATAN\r\nPATIKRAJA,BANYUMAS.',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-02-07 04:31:15','2024-02-07 04:31:15',NULL),
(170,72,1069,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC JOMBANG 2',NULL,'JL. RAYA PETERONGAN KM 71,3\r\nDESA CANDI - DESA SAMBIREJO\r\nKEC. JOGOROTO, KAB JOMBANG  61485',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-03-05 03:17:55','2024-03-05 03:17:55',NULL),
(171,70,1007,'PT. INTI CAKRAWALA MAJU','PT.INTI CAKRAWALA MAJU. DC KARAWANG',NULL,'JL. Lingkar Tanjung Pura No.22\r\nNagasari, Karawang Barat\r\nKarawang, Jawa Barat - 41312',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-04-05 02:06:59','2024-04-05 02:06:59',NULL),
(172,71,1041,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC PURWOKERTO',NULL,'JL. RAYA GERILYA BARAT, TANJUNG\r\nKEDUNGWRINGIN, PURWOKERTO -\r\nSELATAN, PATIKRAJA, BANYUMAS',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-05-04 02:18:42','2024-05-04 02:18:42',NULL),
(173,76,1148,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC SAMARINDA',NULL,'JL. EKONOMI    NO 1\r\nDESA LOA BUAH. KEC,SUNGAI KUNJANG\r\nKODYA SAMARINDA\r\n0541-7770734',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-06-11 02:16:57','2024-06-11 02:16:57',NULL),
(174,91,1354,'PT. INTI CAKRAWALA MAJU','PT.INTI CAKRAWALA MAJU. DC KENDARI',NULL,'JL MADUSILA NO.19 KEC POASIA\r\nKEL.ANDUONOHU\r\nKENDARI SULAWESI TENGGARA',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-06-11 03:21:02','2024-06-11 03:21:02',NULL),
(175,71,1048,'ICM SEMARANG','PT.INTI CAKRAWALA MAJU. DC SEMARANG',NULL,'JL.RAYA KALIGAWE NO.38 RT.01/01\r\nTERBOYO WETAN,GENUK,SEMARANG,JAWA TENGAH\r\n50112',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,75,'2024-07-02 03:13:37','2024-07-02 03:13:37',NULL),
(176,71,1036,'daffa hanaris','daffa hanaris',NULL,'sumbulan lor rt 02 rw 13\r\nmakamhaji',NULL,NULL,NULL,NULL,NULL,0,-432300,0,0,0,3,3,'2024-10-17 04:42:38','2024-12-23 05:29:32',NULL),
(177,NULL,NULL,NULL,'Arka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,333000,0,0,0,NULL,NULL,'2024-12-19 09:31:42','2024-12-20 07:52:03',NULL),
(178,71,1027,NULL,'Arip Elek',NULL,'bo',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,3,'2025-01-17 06:37:34','2025-01-17 06:37:34',NULL),
(179,71,1027,NULL,'Arip Elek',NULL,'bo',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,3,'2025-01-17 06:38:28','2025-01-17 06:38:28',NULL);

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

/*Data for the table `core_expedition` */

insert  into `core_expedition`(`expedition_id`,`expedition_code`,`expedition_name`,`expedition_route`,`expedition_address`,`expedition_city`,`expedition_home_phone`,`expedition_mobile_phone1`,`expedition_mobile_phone2`,`expedition_fax_number`,`expedition_email`,`expedition_person_in_charge`,`expedition_status`,`expedition_remark`,`expedition_acct_invoice`,`expedition_acct_payable`,`expedition_acct_claim`,`expedition_acct_receivable`,`expedition_token`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(11,'JNE','JNE EXPRESS','NASIONAL','JL KUMUDASMORO',1048,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,0,0,NULL,0,3,'2022-01-10 04:16:02','2023-08-08 04:12:18'),
(12,'TDP','TRIADIPA','NASIONAL','JL PUCANG GADING',1048,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0,0,0,NULL,0,3,'2022-01-13 05:32:26','2023-08-08 04:13:11'),
(13,'SPT','SAPTA','NASIONAL','JL MUARA BERES',1014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,75,'2023-08-08 04:13:42','2023-08-08 04:13:42'),
(14,'KME','KME','SEMARANG','JL.PUSPOWARNO RAYA NO 55 D',1048,'00','00','00','00','00','00',NULL,'00',0,0,0,0,NULL,1,75,'2023-08-16 04:53:03','2025-01-09 09:47:00'),
(15,'GED','GED','INDONESIA','JL.PROF Dr.SOEPOMO SH NO 58 .JAKARTA 12870 INDONESIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL,1,75,'2024-01-29 12:55:38','2025-01-09 09:47:11'),
(16,'TAM','PT.TUNAS ANTARNUSA MUDA','INDONESIA','JL.BAMBU APUS RAYA NO.86 CIPAYUNG JAKARTA TIMUR',979,'021-84974240','00','00','00','00','00',3,'TIDAK ADA',0,0,0,0,NULL,0,75,'2024-03-20 06:12:16','2024-03-20 06:12:16');

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

/*Data for the table `core_grade` */

insert  into `core_grade`(`grade_id`,`grade_name`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'BBB',0,3,'2023-02-14 03:06:58','2023-06-23 10:52:21'),
(16,'SS',0,3,'2022-01-04 03:09:40','2023-06-23 10:52:21'),
(17,'S',0,3,'2022-01-04 03:09:43','2023-06-23 10:52:21'),
(18,'M',0,3,'2022-01-04 03:09:50','2023-06-23 10:52:21'),
(19,'CURAH',0,3,'2022-01-04 03:09:55','2023-06-23 10:52:21'),
(20,'CURAH SUPER',0,3,'2022-01-04 03:10:01','2023-06-23 10:52:21'),
(21,'BB',0,3,'2022-01-13 05:08:06','2023-06-23 10:52:21'),
(22,'S BAL',0,3,'2022-01-13 05:08:46','2023-06-23 10:52:21'),
(23,'SS BAL',0,3,'2022-01-13 05:11:41','2023-06-23 10:52:21'),
(24,'M BAL',0,3,'2022-01-13 05:12:02','2023-06-23 10:52:21'),
(25,'NG',0,3,'2022-01-13 05:12:38','2023-06-23 10:52:21'),
(26,'AB',0,3,'2022-01-13 05:13:42','2023-06-23 10:52:21'),
(27,'SUPER',0,3,'2022-01-13 05:19:20','2023-06-23 10:52:21'),
(28,'SUPER',1,3,'2022-01-13 05:19:20','2023-06-23 10:52:21'),
(29,'SUPER',1,3,'2022-01-13 05:19:20','2023-06-23 10:52:21'),
(30,'D',0,3,'2022-01-13 05:20:44','2023-06-23 10:52:21'),
(31,'DTOP',0,3,'2022-01-13 05:20:52','2023-06-23 10:52:21'),
(32,'BABY',0,3,'2022-01-13 05:21:10','2023-06-23 10:52:21'),
(33,'SPR',1,3,'2022-01-26 00:27:27','2023-06-23 10:52:21'),
(34,'JUMBO',0,3,'2022-01-26 00:28:07','2023-06-23 10:52:21');

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

/*Data for the table `core_package` */

insert  into `core_package`(`package_id`,`package_name`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'PLASTIK BAL',0,3,'2022-01-26 00:30:51','2023-06-23 10:52:21');

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

/*Data for the table `core_project` */

insert  into `core_project`(`project_id`,`branch_id`,`project_type_id`,`project_category_id`,`customer_id`,`project_code`,`project_name`,`project_tender`,`project_remark`,`project_date`,`project_status`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,0,0,0,0,'','',0.00,NULL,NULL,'0',0,0,NULL,'2023-07-24 13:58:27');

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

/*Data for the table `core_project_category` */

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

/*Data for the table `core_province` */

insert  into `core_province`(`province_id`,`province_code`,`province_name`,`province_no`,`data_state`) values 
(62,'','Bali','',0),
(63,'','Bangka Belitung','',0),
(64,'','Banten','',0),
(65,'','Bengkulu','',0),
(66,'','DI Yogyakarta','',0),
(67,'','DKI Jakarta','',0),
(68,'','Gorontalo','',0),
(69,'','Jambi','',0),
(70,'','Jawa Barat','',0),
(71,'','Jawa Tengah','',0),
(72,'','Jawa Timur','',0),
(73,'','Kalimantan Barat','',0),
(74,'','Kalimantan Selatan','',0),
(75,'','Kalimantan Tengah','',0),
(76,'','Kalimantan Timur','',0),
(77,'','Kalimantan Utara','',0),
(78,'','Kepulauan Riau','',0),
(79,'','Lampung','',0),
(80,'','Maluku','',0),
(81,'','Maluku Utara','',0),
(82,'','Nanggroe Aceh Darussalam (NAD)','',0),
(83,'','Nusa Tenggara Barat (NTB)','',0),
(84,'','Nusa Tenggara Timur (NTT)','',0),
(85,'','Papua','',0),
(86,'','Papua Barat','',0),
(87,'','Riau','',0),
(88,'','Sulawesi Barat','',0),
(89,'','Sulawesi Selatan','',0),
(90,'','Sulawesi Tengah','',0),
(91,'','Sulawesi Tenggara','',0),
(92,'','Sulawesi Utara','',0),
(93,'','Sumatera Barat','',0),
(94,'','Sumatera Selatan','',0),
(95,'','Sumatera Utara','',0);

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
  `amount_debt` int DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*Data for the table `core_supplier` */

insert  into `core_supplier`(`supplier_id`,`branch_id`,`province_id`,`city_id`,`supplier_code`,`supplier_name`,`supplier_id_number`,`supplier_address`,`supplier_city`,`supplier_home_phone`,`supplier_mobile_phone1`,`supplier_mobile_phone2`,`supplier_fax_number`,`supplier_email`,`supplier_contact_person`,`supplier_bank_acct_name`,`supplier_bank_acct_no`,`supplier_tax_no`,`supplier_npwp_no`,`supplier_npwp_address`,`supplier_payment_terms`,`supplier_status`,`supplier_remark`,`advance_account_id`,`amount_debt`,`giro_account_id`,`payable_account_id`,`created_id`,`created_at`,`data_state`,`updated_at`) values 
(7,1,71,1048,'','Pabrik',NULL,'Jl. Gedong Songo Timur No.1','','(024) 7604307',NULL,NULL,NULL,NULL,NULL,'Mandiri','1234567',NULL,'1',NULL,NULL,0,NULL,0,0,0,0,74,'2023-06-24 03:54:36',0,'2024-12-23 06:49:04'),
(9,1,67,980,'','Pak Sayyid Azziz',NULL,'Kepulauan Seribu','','0816729293902',NULL,NULL,NULL,NULL,NULL,'Sayyied Azziz','191929292929',NULL,NULL,NULL,NULL,0,NULL,0,0,0,0,3,'2024-12-23 06:48:41',0,'2024-12-23 06:49:16');

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

/*Data for the table `failed_jobs` */

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
  CONSTRAINT `FK_inv_goods_received_note_purchase_order_id` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`purchase_order_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `core_supplier` (`supplier_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `inv_warehouse` (`warehouse_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_goods_received_note` */

insert  into `inv_goods_received_note`(`goods_received_note_id`,`purchase_order_id`,`supplier_id`,`warehouse_id`,`goods_received_note_no`,`goods_received_note_date`,`goods_received_note_expired_date`,`goods_received_note_remark`,`goods_received_note_status_invoice`,`receipt_image`,`delivery_note_no`,`faktur_no`,`subtotal_item`,`item_type`,`data_state`,`voided_remark`,`voided_id`,`voided_at`,`created_id`,`created_at`,`updated_at`) values 
(4,276,7,1,'0001/IGRN/XII/2024','2024-12-13',NULL,'ddaffff',0,'',NULL,'332333',100,0,0,NULL,0,NULL,4,'2024-12-13 09:20:29','2024-12-13 09:20:29'),
(6,277,7,1,'0002/IGRN/XII/2024','2024-12-16',NULL,NULL,0,'',NULL,NULL,150,0,0,NULL,0,NULL,3,'2024-12-16 04:12:19','2024-12-16 04:12:19');

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

/*Data for the table `inv_goods_received_note_batch_number` */

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
  KEY `item_id` (`item_type_id`),
  KEY `FK_goods_received_note_item_goods_received_note_id` (`goods_received_note_id`),
  KEY `FK_goods_received_note_item_purchase_order_id` (`purchase_order_id`),
  KEY `FK_goods_received_note_item_purchase_order_item_id` (`purchase_order_item_id`),
  KEY `FK_invt_goods_received_note_item_item_stock_id` (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_goods_received_note_item` */

insert  into `inv_goods_received_note_item`(`goods_received_note_item_id`,`goods_received_note_id`,`purchase_order_id`,`purchase_order_item_id`,`item_category_id`,`item_type_id`,`item_unit_id`,`item_stock_id`,`quantity`,`quantity_received`,`data_state`,`voided_id`,`voided_at`,`created_id`,`created_at`,`updated_at`) values 
(4,4,276,1,1,1,10,0,100,100,0,0,NULL,4,'2024-12-13 09:20:29','2024-12-13 09:20:29'),
(7,6,277,2,1,1,10,0,100,100,0,0,NULL,3,'2024-12-16 04:12:19','2024-12-16 04:12:19'),
(8,6,277,3,1,2,22,0,50,50,0,0,NULL,3,'2024-12-16 04:12:19','2024-12-16 04:12:19');

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

/*Data for the table `inv_item` */

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

/*Data for the table `inv_item_category` */

insert  into `inv_item_category`(`item_category_id`,`item_category_name`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'Barang',0,3,'0000-00-00 00:00:00','2023-08-04 09:18:38');

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

/*Data for the table `inv_item_old` */

/*Table structure for table `inv_item_stock` */

DROP TABLE IF EXISTS `inv_item_stock`;

CREATE TABLE `inv_item_stock` (
  `item_stock_id` bigint NOT NULL AUTO_INCREMENT,
  `goods_received_note_id` int DEFAULT NULL,
  `goods_received_note_item_id` int DEFAULT NULL,
  `item_stock_date` date DEFAULT NULL,
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
  `item_default_quantity_unit` int DEFAULT '0',
  `quantity_unit` int DEFAULT '0',
  `item_weight_default` int DEFAULT NULL,
  `item_weight_unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `package_id` int DEFAULT NULL,
  `package_total` decimal(10,0) DEFAULT '0',
  `package_unit_id` int DEFAULT '0',
  `package_price` int DEFAULT '0',
  `data_state` int DEFAULT '0',
  `created_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_stock` */

insert  into `inv_item_stock`(`item_stock_id`,`goods_received_note_id`,`goods_received_note_item_id`,`item_stock_date`,`purchase_order_item_id`,`warehouse_id`,`purchase_order_no`,`buyers_acknowledgment_no`,`no_retur_barang`,`nota_retur_pajak`,`item_category_id`,`item_type_id`,`item_id`,`item_unit_id`,`category`,`barang`,`satuan`,`item_total`,`item_unit_cost`,`item_unit_total`,`item_unit_price`,`item_unit_id_default`,`item_default_quantity_unit`,`quantity_unit`,`item_weight_default`,`item_weight_unit`,`package_id`,`package_total`,`package_unit_id`,`package_price`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,0,0,'2024-12-13',0,1,'','','','',1,1,0,10,'','','',1000,1000,0,0,10,0,240,0,'',0,0,0,0,0,0,'2024-12-13','2025-01-20 08:33:11'),
(2,0,0,'2024-12-13',0,1,'','','','',1,2,0,22,'','','',5000,1000,0,0,22,0,4500,0,'',0,0,0,0,0,0,'2024-12-13','2025-01-20 08:33:11'),
(3,0,0,'2024-12-13',0,1,'','','','',1,3,0,10,'','','',0,0,0,0,10,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(4,0,0,'2024-12-13',0,1,'','','','',1,4,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(5,0,0,'2024-12-13',0,1,'','','','',1,5,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(6,0,0,'2024-12-13',0,1,'','','','',1,6,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(7,0,0,'2024-12-13',0,1,'','','','',1,7,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(8,0,0,'2024-12-13',0,1,'','','','',1,8,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(9,0,0,'2024-12-13',0,1,'','','','',1,9,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(10,0,0,'2024-12-13',0,1,'','','','',1,10,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(11,0,0,'2024-12-13',0,1,'','','','',1,11,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(12,0,0,'2024-12-13',0,1,'','','','',1,12,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(13,0,0,'2024-12-13',0,1,'','','','',1,13,0,0,'','','',0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(14,0,0,'2024-12-13',0,1,'','','','',1,14,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(15,0,0,'2024-12-13',0,1,'','','','',1,15,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(16,0,0,'2024-12-13',0,1,'','','','',1,16,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(17,0,0,'2024-12-13',0,1,'','','','',1,17,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(18,0,0,'2024-12-13',0,1,'','','','',1,18,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(19,0,0,'2024-12-13',0,1,'','','','',1,19,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(20,0,0,'2024-12-13',0,1,'','','','',1,20,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(21,0,0,'2024-12-13',0,1,'','','','',1,21,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(22,0,0,'2024-12-13',0,1,'','','','',1,22,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(23,0,0,'2024-12-13',0,1,'','','','',1,23,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(24,0,0,'2024-12-13',0,1,'','','','',1,24,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(25,0,0,'2024-12-13',0,1,'','','','',1,25,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(26,0,0,'2024-12-13',0,1,'','','','',1,26,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(27,0,0,'2024-12-13',0,1,'','','','',1,27,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(28,0,0,'2024-12-13',0,1,'','','','',1,28,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(29,0,0,'2024-12-13',0,1,'','','','',1,29,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(30,0,0,'2024-12-13',0,1,'','','','',1,30,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(31,0,0,'2024-12-13',0,1,'','','','',1,31,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(32,0,0,'2024-12-13',0,1,'','','','',1,32,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(33,0,0,'2024-12-13',0,1,'','','','',1,33,0,3,'','','',0,0,0,0,3,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(34,0,0,'2024-12-13',0,1,'','','','',1,34,0,4,'','','',0,0,0,0,4,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(35,0,0,'2024-12-13',0,1,'','','','',1,35,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(36,0,0,'2024-12-13',0,1,'','','','',1,36,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(37,0,0,'2024-12-13',0,1,'','','','',1,37,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(38,0,0,'2024-12-13',0,1,'','','','',1,38,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(39,0,0,'2024-12-13',0,1,'','','','',1,39,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(40,0,0,'2024-12-13',0,1,'','','','',1,40,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(41,0,0,'2024-12-13',0,1,'','','','',1,41,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(42,0,0,'2024-12-13',0,1,'','','','',1,42,0,12,'','','',0,0,0,0,12,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(43,0,0,'2024-12-13',0,1,'','','','',1,43,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(44,0,0,'2024-12-13',0,1,'','','','',1,44,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(45,0,0,'2024-12-13',0,1,'','','','',1,45,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(46,0,0,'2024-12-13',0,1,'','','','',1,46,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(47,0,0,'2024-12-13',0,1,'','','','',1,47,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(48,0,0,'2024-12-13',0,1,'','','','',1,48,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(49,0,0,'2024-12-13',0,1,'','','','',1,49,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(50,0,0,'2024-12-13',0,1,'','','','',1,50,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(51,0,0,'2024-12-13',0,1,'','','','',1,51,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(52,0,0,'2024-12-13',0,1,'','','','',1,52,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(53,0,0,'2024-12-13',0,1,'','','','',1,53,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(54,0,0,'2024-12-13',0,1,'','','','',1,54,0,2,'','','',0,0,0,0,2,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(55,0,0,'2024-12-13',0,1,'','','','',1,55,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(56,0,0,'2024-12-13',0,1,'','','','',1,56,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(57,0,0,'2024-12-13',0,1,'','','','',1,57,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(58,0,0,'2024-12-13',0,1,'','','','',1,58,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(59,0,0,'2024-12-13',0,1,'','','','',1,59,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(60,0,0,'2024-12-13',0,1,'','','','',1,60,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(61,0,0,'2024-12-13',0,1,'','','','',1,61,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(62,0,0,'2024-12-13',0,1,'','','','',1,62,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(63,0,0,'2024-12-13',0,1,'','','','',1,63,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(64,0,0,'2024-12-13',0,1,'','','','',1,64,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(65,0,0,'2024-12-13',0,1,'','','','',1,65,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(66,0,0,'2024-12-13',0,1,'','','','',1,66,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(67,0,0,'2024-12-13',0,1,'','','','',1,67,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(68,0,0,'2024-12-13',0,1,'','','','',1,68,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(69,0,0,'2024-12-13',0,1,'','','','',1,69,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(70,0,0,'2024-12-13',0,1,'','','','',1,70,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(71,0,0,'2024-12-13',0,1,'','','','',1,71,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(72,0,0,'2024-12-13',0,1,'','','','',1,72,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(73,0,0,'2024-12-13',0,1,'','','','',1,73,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(74,0,0,'2024-12-13',0,1,'','','','',1,74,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(75,0,0,'2024-12-13',0,1,'','','','',1,75,0,9,'','','',0,0,0,0,9,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(76,0,0,'2024-12-13',0,1,'','','','',1,76,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(77,0,0,'2024-12-13',0,1,'','','','',1,77,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(78,0,0,'2024-12-13',0,1,'','','','',1,78,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(79,0,0,'2024-12-13',0,1,'','','','',1,79,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(80,0,0,'2024-12-13',0,1,'','','','',1,80,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(81,0,0,'2024-12-13',0,1,'','','','',1,81,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(82,0,0,'2024-12-13',0,1,'','','','',1,82,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(83,0,0,'2024-12-13',0,1,'','','','',1,83,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(84,0,0,'2024-12-13',0,1,'','','','',1,84,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(85,0,0,'2024-12-13',0,1,'','','','',1,85,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(86,0,0,'2024-12-13',0,1,'','','','',1,86,0,30,'','','',0,0,0,0,30,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(87,0,0,'2024-12-13',0,1,'','','','',1,87,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(88,0,0,'2024-12-13',0,1,'','','','',1,88,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(89,0,0,'2024-12-13',0,1,'','','','',1,89,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(90,0,0,'2024-12-13',0,1,'','','','',1,90,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(91,0,0,'2024-12-13',0,1,'','','','',1,91,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(92,0,0,'2024-12-13',0,1,'','','','',1,92,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(93,0,0,'2024-12-13',0,1,'','','','',1,93,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(94,0,0,'2024-12-13',0,1,'','','','',1,94,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(95,0,0,'2024-12-13',0,1,'','','','',1,95,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(96,0,0,'2024-12-13',0,1,'','','','',1,96,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(97,0,0,'2024-12-13',0,1,'','','','',1,97,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(98,0,0,'2024-12-13',0,1,'','','','',1,98,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(99,0,0,'2024-12-13',0,1,'','','','',1,99,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(100,0,0,'2024-12-13',0,1,'','','','',1,100,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(101,0,0,'2024-12-13',0,1,'','','','',1,101,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(102,0,0,'2024-12-13',0,1,'','','','',1,102,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(103,0,0,'2024-12-13',0,1,'','','','',1,103,0,12,'','','',0,0,0,0,12,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(104,0,0,'2024-12-13',0,1,'','','','',1,104,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(105,0,0,'2024-12-13',0,1,'','','','',1,105,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(106,0,0,'2024-12-13',0,1,'','','','',1,106,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(107,0,0,'2024-12-13',0,1,'','','','',1,107,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(108,0,0,'2024-12-13',0,1,'','','','',1,108,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(109,0,0,'2024-12-13',0,1,'','','','',1,109,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(110,0,0,'2024-12-13',0,1,'','','','',1,110,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(111,0,0,'2024-12-13',0,1,'','','','',1,111,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(112,0,0,'2024-12-13',0,1,'','','','',1,112,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(113,0,0,'2024-12-13',0,1,'','','','',1,113,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(114,0,0,'2024-12-13',0,1,'','','','',1,114,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(115,0,0,'2024-12-13',0,1,'','','','',1,115,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(116,0,0,'2024-12-13',0,1,'','','','',1,116,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(117,0,0,'2024-12-13',0,1,'','','','',1,117,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(118,0,0,'2024-12-13',0,1,'','','','',1,118,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(119,0,0,'2024-12-13',0,1,'','','','',1,119,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(120,0,0,'2024-12-13',0,1,'','','','',1,120,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(121,0,0,'2024-12-13',0,1,'','','','',1,121,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(122,0,0,'2024-12-13',0,1,'','','','',1,122,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(123,0,0,'2024-12-13',0,1,'','','','',1,123,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(124,0,0,'2024-12-13',0,1,'','','','',1,124,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(125,0,0,'2024-12-13',0,1,'','','','',1,125,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(126,0,0,'2024-12-13',0,1,'','','','',1,126,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(127,0,0,'2024-12-13',0,1,'','','','',1,127,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(128,0,0,'2024-12-13',0,1,'','','','',1,128,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(129,0,0,'2024-12-13',0,1,'','','','',1,129,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(130,0,0,'2024-12-13',0,1,'','','','',1,130,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(131,0,0,'2024-12-13',0,1,'','','','',1,131,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(132,0,0,'2024-12-13',0,1,'','','','',1,132,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(133,0,0,'2024-12-13',0,1,'','','','',1,133,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(134,0,0,'2024-12-13',0,1,'','','','',1,134,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(135,0,0,'2024-12-13',0,1,'','','','',1,135,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(136,0,0,'2024-12-13',0,1,'','','','',1,136,0,12,'','','',0,0,0,0,12,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(137,0,0,'2024-12-13',0,1,'','','','',1,137,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(138,0,0,'2024-12-13',0,1,'','','','',1,138,0,11,'','','',0,0,0,0,11,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(139,0,0,'2024-12-13',0,1,'','','','',1,139,0,11,'','','',0,0,0,0,11,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(140,0,0,'2024-12-13',0,1,'','','','',1,140,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(141,0,0,'2024-12-13',0,1,'','','','',1,141,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(142,0,0,'2024-12-13',0,1,'','','','',1,142,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(143,0,0,'2024-12-13',0,1,'','','','',1,143,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(144,0,0,'2024-12-13',0,1,'','','','',1,144,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(145,0,0,'2024-12-13',0,1,'','','','',1,145,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(146,0,0,'2024-12-13',0,1,'','','','',1,146,0,21,'','','',0,0,0,0,21,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(147,0,0,'2024-12-13',0,1,'','','','',1,147,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(148,0,0,'2024-12-13',0,1,'','','','',1,148,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(149,0,0,'2024-12-13',0,1,'','','','',1,149,0,21,'','','',0,0,0,0,21,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(150,0,0,'2024-12-13',0,1,'','','','',1,150,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(151,0,0,'2024-12-13',0,1,'','','','',1,151,0,9,'','','',0,0,0,0,9,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(152,0,0,'2024-12-13',0,1,'','','','',1,152,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(153,0,0,'2024-12-13',0,1,'','','','',1,153,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(154,0,0,'2024-12-13',0,1,'','','','',1,154,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(155,0,0,'2024-12-13',0,1,'','','','',1,155,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(156,0,0,'2024-12-13',0,1,'','','','',1,156,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(157,0,0,'2024-12-13',0,1,'','','','',1,157,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(158,0,0,'2024-12-13',0,1,'','','','',1,158,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(159,0,0,'2024-12-13',0,1,'','','','',1,159,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(160,0,0,'2024-12-13',0,1,'','','','',1,160,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(161,0,0,'2024-12-13',0,1,'','','','',1,161,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(162,0,0,'2024-12-13',0,1,'','','','',1,162,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(163,0,0,'2024-12-13',0,1,'','','','',1,163,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(164,0,0,'2024-12-13',0,1,'','','','',1,164,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(165,0,0,'2024-12-13',0,1,'','','','',1,165,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(166,0,0,'2024-12-13',0,1,'','','','',1,166,0,5,'','','',0,0,0,0,5,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(167,0,0,'2024-12-13',0,1,'','','','',1,167,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(168,0,0,'2024-12-13',0,1,'','','','',1,168,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(169,0,0,'2024-12-13',0,1,'','','','',1,169,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(170,0,0,'2024-12-13',0,1,'','','','',1,170,0,28,'','','',0,0,0,0,28,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(171,0,0,'2024-12-13',0,1,'','','','',1,171,0,6,'','','',0,0,0,0,6,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(172,0,0,'2024-12-13',0,1,'','','','',1,172,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(173,0,0,'2024-12-13',0,1,'','','','',1,173,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(174,0,0,'2024-12-13',0,1,'','','','',1,174,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(175,0,0,'2024-12-13',0,1,'','','','',1,175,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(176,0,0,'2024-12-13',0,1,'','','','',1,176,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(177,0,0,'2024-12-13',0,1,'','','','',1,177,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(178,0,0,'2024-12-13',0,1,'','','','',1,178,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(179,0,0,'2024-12-13',0,1,'','','','',1,179,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(180,0,0,'2024-12-13',0,1,'','','','',1,180,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(181,0,0,'2024-12-13',0,1,'','','','',1,181,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(182,0,0,'2024-12-13',0,1,'','','','',1,182,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(183,0,0,'2024-12-13',0,1,'','','','',1,183,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(184,0,0,'2024-12-13',0,1,'','','','',1,184,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(185,0,0,'2024-12-13',0,1,'','','','',1,185,0,7,'','','',0,0,0,0,7,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(186,0,0,'2024-12-13',0,1,'','','','',1,186,0,25,'','','',0,0,0,0,25,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(187,0,0,'2024-12-13',0,1,'','','','',1,187,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(188,0,0,'2024-12-13',0,1,'','','','',1,188,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(189,0,0,'2024-12-13',0,1,'','','','',1,189,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(190,0,0,'2024-12-13',0,1,'','','','',1,190,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(191,0,0,'2024-12-13',0,1,'','','','',1,191,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(192,0,0,'2024-12-13',0,1,'','','','',1,192,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(193,0,0,'2024-12-13',0,1,'','','','',1,193,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(194,0,0,'2024-12-13',0,1,'','','','',1,194,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(195,0,0,'2024-12-13',0,1,'','','','',1,195,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(196,0,0,'2024-12-13',0,1,'','','','',1,196,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(197,0,0,'2024-12-13',0,1,'','','','',1,197,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(198,0,0,'2024-12-13',0,1,'','','','',1,198,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(199,0,0,'2024-12-13',0,1,'','','','',1,199,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(200,0,0,'2024-12-13',0,1,'','','','',1,200,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(201,0,0,'2024-12-13',0,1,'','','','',1,201,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(202,0,0,'2024-12-13',0,1,'','','','',1,202,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(203,0,0,'2024-12-13',0,1,'','','','',1,203,0,27,'','','',0,0,0,0,27,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(204,0,0,'2024-12-13',0,1,'','','','',1,204,0,0,'','','',0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(205,0,0,'2024-12-13',0,1,'','','','',1,205,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(206,0,0,'2024-12-13',0,1,'','','','',1,206,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(207,0,0,'2024-12-13',0,1,'','','','',1,207,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(208,0,0,'2024-12-13',0,1,'','','','',1,208,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(209,0,0,'2024-12-13',0,1,'','','','',1,209,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(210,0,0,'2024-12-13',0,1,'','','','',1,210,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(211,0,0,'2024-12-13',0,1,'','','','',1,211,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(212,0,0,'2024-12-13',0,1,'','','','',1,212,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(213,0,0,'2024-12-13',0,1,'','','','',1,213,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(214,0,0,'2024-12-13',0,1,'','','','',1,214,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(215,0,0,'2024-12-13',0,1,'','','','',1,215,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(216,0,0,'2024-12-13',0,1,'','','','',1,216,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(217,0,0,'2024-12-13',0,1,'','','','',1,217,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(218,0,0,'2024-12-13',0,1,'','','','',1,218,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(219,0,0,'2024-12-13',0,1,'','','','',1,219,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(220,0,0,'2024-12-13',0,1,'','','','',1,220,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(221,0,0,'2024-12-13',0,1,'','','','',1,221,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(222,0,0,'2024-12-13',0,1,'','','','',1,222,0,8,'','','',0,0,0,0,8,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(223,0,0,'2024-12-13',0,1,'','','','',1,223,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(224,0,0,'2024-12-13',0,1,'','','','',1,224,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(225,0,0,'2024-12-13',0,1,'','','','',1,225,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(226,0,0,'2024-12-13',0,1,'','','','',1,226,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(227,0,0,'2024-12-13',0,1,'','','','',1,227,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(228,0,0,'2024-12-13',0,1,'','','','',1,228,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(229,0,0,'2024-12-13',0,1,'','','','',1,229,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(230,0,0,'2024-12-13',0,1,'','','','',1,230,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(231,0,0,'2024-12-13',0,1,'','','','',1,231,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(232,0,0,'2024-12-13',0,1,'','','','',1,232,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(233,0,0,'2024-12-13',0,1,'','','','',1,233,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(234,0,0,'2024-12-13',0,1,'','','','',1,234,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(235,0,0,'2024-12-13',0,1,'','','','',1,235,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(236,0,0,'2024-12-13',0,1,'','','','',1,236,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(237,0,0,'2024-12-13',0,1,'','','','',1,237,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(238,0,0,'2024-12-13',0,1,'','','','',1,238,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(239,0,0,'2024-12-13',0,1,'','','','',1,239,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(240,0,0,'2024-12-13',0,1,'','','','',1,240,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(241,0,0,'2024-12-13',0,1,'','','','',1,241,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(242,0,0,'2024-12-13',0,1,'','','','',1,242,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(243,0,0,'2024-12-13',0,1,'','','','',1,243,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(244,0,0,'2024-12-13',0,1,'','','','',1,244,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(245,0,0,'2024-12-13',0,1,'','','','',1,245,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(246,0,0,'2024-12-13',0,1,'','','','',1,246,0,9,'','','',0,0,0,0,9,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(247,0,0,'2024-12-13',0,1,'','','','',1,247,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(248,0,0,'2024-12-13',0,1,'','','','',1,248,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(249,0,0,'2024-12-13',0,1,'','','','',1,249,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(250,0,0,'2024-12-13',0,1,'','','','',1,250,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(251,0,0,'2024-12-13',0,1,'','','','',1,251,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(252,0,0,'2024-12-13',0,1,'','','','',1,252,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(253,0,0,'2024-12-13',0,1,'','','','',1,253,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(254,0,0,'2024-12-13',0,1,'','','','',1,254,0,0,'','','',0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(255,0,0,'2024-12-13',0,1,'','','','',1,255,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(256,0,0,'2024-12-13',0,1,'','','','',1,256,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(257,0,0,'2024-12-13',0,1,'','','','',1,257,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(258,0,0,'2024-12-13',0,1,'','','','',1,258,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(259,0,0,'2024-12-13',0,1,'','','','',1,259,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(260,0,0,'2024-12-13',0,1,'','','','',1,260,0,12,'','','',0,0,0,0,12,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(261,0,0,'2024-12-13',0,1,'','','','',1,261,0,12,'','','',0,0,0,0,12,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(262,0,0,'2024-12-13',0,1,'','','','',1,262,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(263,0,0,'2024-12-13',0,1,'','','','',1,263,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(264,0,0,'2024-12-13',0,1,'','','','',1,264,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(265,0,0,'2024-12-13',0,1,'','','','',1,265,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(266,0,0,'2024-12-13',0,1,'','','','',1,266,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(267,0,0,'2024-12-13',0,1,'','','','',1,267,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(268,0,0,'2024-12-13',0,1,'','','','',1,268,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(269,0,0,'2024-12-13',0,1,'','','','',1,269,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(270,0,0,'2024-12-13',0,1,'','','','',1,270,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(271,0,0,'2024-12-13',0,1,'','','','',1,271,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(272,0,0,'2024-12-13',0,1,'','','','',1,272,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(273,0,0,'2024-12-13',0,1,'','','','',1,273,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(274,0,0,'2024-12-13',0,1,'','','','',1,274,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(275,0,0,'2024-12-13',0,1,'','','','',1,275,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(276,0,0,'2024-12-13',0,1,'','','','',1,276,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(277,0,0,'2024-12-13',0,1,'','','','',1,277,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(278,0,0,'2024-12-13',0,1,'','','','',1,278,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(279,0,0,'2024-12-13',0,1,'','','','',1,279,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(280,0,0,'2024-12-13',0,1,'','','','',1,280,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(281,0,0,'2024-12-13',0,1,'','','','',1,281,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(282,0,0,'2024-12-13',0,1,'','','','',1,282,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(283,0,0,'2024-12-13',0,1,'','','','',1,283,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(284,0,0,'2024-12-13',0,1,'','','','',1,284,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(285,0,0,'2024-12-13',0,1,'','','','',1,285,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(286,0,0,'2024-12-13',0,1,'','','','',1,286,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(287,0,0,'2024-12-13',0,1,'','','','',1,287,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(288,0,0,'2024-12-13',0,1,'','','','',1,288,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(289,0,0,'2024-12-13',0,1,'','','','',1,289,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(290,0,0,'2024-12-13',0,1,'','','','',1,290,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(291,0,0,'2024-12-13',0,1,'','','','',1,291,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(292,0,0,'2024-12-13',0,1,'','','','',1,292,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(293,0,0,'2024-12-13',0,1,'','','','',1,293,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(294,0,0,'2024-12-13',0,1,'','','','',1,294,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(295,0,0,'2024-12-13',0,1,'','','','',1,295,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(296,0,0,'2024-12-13',0,1,'','','','',1,296,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(297,0,0,'2024-12-13',0,1,'','','','',1,297,0,26,'','','',0,0,0,0,26,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(298,0,0,'2024-12-13',0,1,'','','','',1,298,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(299,0,0,'2024-12-13',0,1,'','','','',1,299,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(300,0,0,'2024-12-13',0,1,'','','','',1,300,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(301,0,0,'2024-12-13',0,1,'','','','',1,301,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(302,0,0,'2024-12-13',0,1,'','','','',1,302,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(303,0,0,'2024-12-13',0,1,'','','','',1,303,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(304,0,0,'2024-12-13',0,1,'','','','',1,304,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(305,0,0,'2024-12-13',0,1,'','','','',1,305,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(306,0,0,'2024-12-13',0,1,'','','','',1,306,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(307,0,0,'2024-12-13',0,1,'','','','',1,307,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(308,0,0,'2024-12-13',0,1,'','','','',1,308,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(309,0,0,'2024-12-13',0,1,'','','','',1,309,0,1,'','','',0,0,0,0,1,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(310,0,0,'2024-12-13',0,1,'','','','',1,310,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(311,0,0,'2024-12-13',0,1,'','','','',1,311,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(312,0,0,'2024-12-13',0,1,'','','','',1,312,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(313,0,0,'2024-12-13',0,1,'','','','',1,313,0,24,'','','',0,0,0,0,24,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(314,0,0,'2024-12-13',0,1,'','','','',1,314,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(315,0,0,'2024-12-13',0,1,'','','','',1,315,0,0,'','','',0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(316,0,0,'2024-12-13',0,1,'','','','',1,316,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(317,0,0,'2024-12-13',0,1,'','','','',1,317,0,22,'','','',0,0,0,0,22,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(318,0,0,'2024-12-13',0,1,'','','','',1,318,0,0,'','','',0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(319,0,0,'2024-12-13',0,1,'','','','',1,319,0,29,'','','',0,0,0,0,29,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19'),
(320,0,0,'2024-12-13',0,1,'','','','',1,320,0,23,'','','',0,0,0,0,23,0,0,0,'',0,0,0,0,0,0,'2024-12-13','2024-12-13 15:12:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `inv_item_stock_adjustment` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `inv_item_stock_adjustment_item` */

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_stock_card` */

insert  into `inv_item_stock_card`(`item_stock_card_id`,`item_stock_id`,`section_id`,`item_category_id`,`item_type_id`,`warehouse_id`,`supplier_id`,`item_unit_id`,`item_stock_type`,`item_batch_number`,`item_color`,`item_size`,`transaction_id`,`transaction_type`,`transaction_code`,`transaction_date`,`opening_balance`,`opening_balance_unfinished`,`item_stock_card_in`,`item_stock_card_out`,`item_unit_default_quantity`,`last_balance`,`last_balance_unfinished`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(4,1,0,1,1,1,0,10,0,'','',0,4,1,'INVT_GDS_RCV_NOTE','2024-12-13',0,0,100,0,0,100,0,0,NULL,'2024-12-13 16:20:29','2024-12-13 16:20:29'),
(7,1,0,1,1,1,0,10,0,'','',0,6,1,'INVT_GDS_RCV_NOTE','2024-12-16',100,0,100,0,0,200,0,0,NULL,'2024-12-16 11:12:19','2024-12-16 11:12:19'),
(8,2,0,1,2,1,0,22,0,'','',0,6,1,'INVT_GDS_RCV_NOTE','2024-12-16',0,0,50,0,0,50,0,0,NULL,'2024-12-16 11:12:19','2024-12-16 11:12:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_stock_old` */

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

/*Data for the table `inv_item_stock_package` */

/*Table structure for table `inv_item_type` */

DROP TABLE IF EXISTS `inv_item_type`;

CREATE TABLE `inv_item_type` (
  `item_type_id` int NOT NULL AUTO_INCREMENT,
  `item_category_id` int DEFAULT NULL,
  `item_type_name` varchar(250) DEFAULT NULL,
  `item_type_expired_time` int DEFAULT NULL,
  `item_package_status` int DEFAULT '0' COMMENT '0 = warehouse-out, 1 = grading',
  `item_unit_1` int DEFAULT '0',
  `item_quantity_default_1` int DEFAULT '1',
  `item_weight_1` int DEFAULT '1',
  `item_unit_2` varchar(250) DEFAULT NULL,
  `item_quantity_default_2` int DEFAULT '1',
  `item_weight_2` varchar(250) DEFAULT NULL,
  `item_unit_3` varchar(250) DEFAULT NULL,
  `item_quantity_default_3` int DEFAULT '1',
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
  `dump` varchar(250) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_type` */

insert  into `inv_item_type`(`item_type_id`,`item_category_id`,`item_type_name`,`item_type_expired_time`,`item_package_status`,`item_unit_1`,`item_quantity_default_1`,`item_weight_1`,`item_unit_2`,`item_quantity_default_2`,`item_weight_2`,`item_unit_3`,`item_quantity_default_3`,`item_weight_3`,`purchase_account_id`,`purchase_return_account_id`,`purchase_discount_account_id`,`sales_account_id`,`sales_return_account_id`,`sales_discount_account_id`,`inv_account_id`,`inv_return_account_id`,`inv_discount_account_id`,`hpp_account_id`,`hpp_amount`,`data_state`,`created_id`,`created_at`,`updated_at`,`dump`) values 
(1,1,'1 MPA PSI              ( BU LUSI )',0,0,10,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','DUS/PCS'),
(2,1,'12PC DOUBLE OPEN END WRENCH SET ( GAAA1206 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(3,1,'2.5 MPA PSI              ( BU LUSI )',0,0,10,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','DUS/PCS'),
(4,1,'3M 4100 SUPER POLISH',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(5,1,'3M 5100 MERAH',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(6,1,'AFN77675988 ( KARET MEMBRAN REGULATOR NEPPLE ) COUPLING PIPA                KARET MEMBRAN REGULATOR NEPPLE (COUPLING CPL W-PVC/SST FOR NIPPLE PIPE-22 LAYING/FLOOR)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(7,1,'AIR COUPLING NRV 90605-4426                                AIR COUPLING NRV 90605-4426',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(8,1,'ALVA LAVAL LKLA-T NC 8MM 25-63,5',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(9,1,'ALVA LAVAL SERVICE KIT CPMI-2/CPMO-2                  SERVICE KIT ALFALAVAL CPMO-2',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(10,1,'ALVA LAVAL SERVICE KIT EPDM SRC/SMO C/O 51/NW50   SEAL KIT ALVALAVAL ISO 51/TO',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(11,1,'ALVA LAVAL SERVICE KIT EPDM UNIQUE 51-DN50 PLUG SET-UP 12',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(12,1,'AMETEK ITALIA 230-50/60 CL.155                  MOTOR VACCUM CLEANER TYPE 1 STAGE THERMOPROTECTED MERK ECOSPITAL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(13,1,'ANDERSON NEGELE PANJANG NVS-143/500/M/X/XI',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43',''),
(14,1,'ANDERSON-NEGELE NCS-L-11/50/PNP/M12            LEVEL SENSOR NEGELE NCS-L-11/PNP',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(15,1,'ANGLE SEAT DN40 PN25 L4408',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(16,1,'ANGLE SEAT GLOBE VALVE DN40 GEMU    ANGLE SEAT GLOBE VALVE DN40 GEMU',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(17,1,'ANGLE VALVE BURKERT 1415  ( BURKERT ANGLE SEAT VALVE W71MA DN40 )            BURKERT ANGLE SEAT VALVE W71MA DN40',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(18,1,'ARITA 107 CF8 1.5 BUTTERFLY VALVE CI CF8 SS410 CONNECTION UNIVERSAL FLANGE',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(19,1,'ARMATHEM PRESSURE GAUGE EN837-1',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(20,1,'ARMATHERM 100MM 1/2 NPT',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(21,1,'ARMATHERM 63MM 1/4 NPT',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(22,1,'ARMATHERM VGA-121-76GM VACUUM GAUGE 2,5IN     ARMATHERM VGA-121-76GM VACUUM GAUGE 2,5IN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(23,1,'ARV DN65 CF8 025',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(24,1,'AT-70 (KERUCUT BESI)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(25,1,'AVENTICS 0820 055 502             UNI VALVE 5/2 80106167      atau       BI VALVE 5/2 80106168',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(26,1,'AVENTICS MNR : R414002401 ECOLEAN     ECOLEAN E/P PRESSURE REGULATOR 80106-162',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(27,1,'AVENTICS REXROTH 0820 055 052                                           UNI VALVE 5/2 80106167      atau       BI VALVE 5/2 80106168',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(28,1,'BALL KEY WRENCH SET TOPTUL 9PCS LONG ( GAAL0916 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(29,1,'BALL VALVE 1/2',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(30,1,'BALL VALVE 3/4',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(31,1,'BALL VALVE SANKYO 2IN          BALL VALVE SANKYO 2IN',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(32,1,'BAUT BESAR',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(33,1,'BELT FASTENERS CLIPPER 12-12/300MM STRIPES G005A-SS-300W           STEEL BELT LACING 35N SUS304 100X1200MM',0,0,3,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','1 BOX = 6 PSG'),
(34,1,'BENANG JAHIT UNICORN 20/6 BIRU            BENANG JAHIT UNICORN 20/6 BIRU',0,0,4,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','1 DUZ = 100 PC'),
(35,1,'BESI L BERBAGAI UKURAN 4 TOPTUL SNCM+V',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(36,1,'BESI LONJONG',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(37,1,'BOLA KECIL ORANGE',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(38,1,'BORGOL BESAR CLAMP',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(39,1,'BORGOL KECIL CLAMP',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(40,1,'BOX PANEL OPTIONAL UK 30X20X15                         BOX PANEL OPTIONAL UK 30X20X15',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(41,1,'BRACKET PNEUMATIC AL #32X32X44',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(42,1,'BRIDGESTON SELANG BLENDER DOUBLE 1/4IN                                     BRIDGESTON SELANG BLENDER DOUBLE 1/4IN',0,0,12,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','M'),
(43,1,'BULB HID MHE-150 E27 KRIS 150W 4000K (LAMPU)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(44,1,'BURKERT',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(45,1,'BURKET 2000 B 25.0 PTFE VA DN25 PN16',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(46,1,'BURKET FLOW 2000 A 20.0 PTFE VA 316L DN20 PN25',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(47,1,'BURKET FLOW 2000 B 15.0 PTFE VA 316L DN15 PN25',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(48,1,'BURKET FLUID CONTROL SYSTEMS DN 10',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(49,1,'BY5 PROD - FOAMER CUCI PRODUK SNOW WASH         FOAMER CUCI PRODUK/MOBILE FOAMER',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(50,1,'BY-5/THERMOCOUPLE RETORT 8CD      THERMOCOUPLE RETORT 8CD',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(51,1,'CAMOZZI M004-R00 + PRESSURE GAUGE          CAMOZZI M004-R00 + PRESSURE GAUGE',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(52,1,'CAMOZZI MC238-L00 16 BAR 50?C',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(53,1,'CAR SIC VIT HJ92N-55+60 MECH SEAL        MECH SEAL EAGLE BRUGGMAN 0211 HJ92N/55-G',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(54,1,'CARBON BRUSHES HITACHI 999-021          HITACHI CARBON BRUSH 4INCH',0,0,2,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','(1 BX= 10 PC)'),
(55,1,'CAREL IR33W7LR20 ELECTRONIC CONTROLLER                                                                                                 CAREL IR33W7LR20 ELECTRONIC CONTROLLER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(56,1,'CARTUCCIA (FILTER) HEPA 220X180X170 CISF H 1307708',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(57,1,'CHAIN WRENCH 30-160MM ( JJAH0901 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(58,1,'CLAM (BORGOL)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(59,1,'CONNECTING FERRULE 3 RANGE 0-1 MPA 4IN ( PRESSURE GAUGE 4IN 0-1 MPA ) TOKPED  CONNECTING FERRULE 3 RANGE 0-1 MPA 4IN',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(60,1,'COPELAND COMPRESSOR ZR144KC TFD 52E           COPELAND COMPRESSOR AC ZR144KC-TFD 52 E 12PK',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(61,1,'CURRENT TRANSFORMER 75/5A SCHNEIDER   CURRENT TRANSFORMER 75/5A SCHNEIDER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(62,1,'CURTAIN ACCESSORIES-BRACKETS 200MM ( XRSSC-200 )              CURTAIN ACCESSORIES-BRACKETS 200MM ( XRSSC-200 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(63,1,'CURTAIN ACCESSORIES-BRACKETS 300MM ( XRSSC-300 )      CURTAIN ACCESSORIES-BRACKETS 300MM ( XRSSC-300 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(64,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 10IN ( DAAQ2B10 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(65,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 5IN ( DAAQ1A05 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(66,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 7IN ( DAAQ1A07 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(67,1,'CYCLO DRIVE GENUINE PARTS KOYO GSRM0303',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(68,1,'CYLINDER 8202326 ( FESTO DSNU-16 )           CYLINDER 8202326 ( FESTO DSNU-16 )',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(69,1,'DAB PRESSURE SWITCH POMPA 250W             DAB PRESSURE SWITCH POMPA 250W',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(70,1,'DANFOSS COIL SOLENOID VALVE 018F6801 220/230V 50HZ 12W     DANFOSS COIL SOLENOID VALVE 018F6801',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(71,1,'DANFOSS PRESSURE SWITCH KP-15          DANFOSS PRESSURE SWITCH KP-15',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(72,1,'DATA LOGGER LIGHT PANASONIC     DATA LOGGER LIGHT PANASONIC',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(73,1,'DATALOGGER ECOGRAPH T RSG35 (E+5)                                                                      DATALOGGER ECOGRAPH T RSG35 (E+5)',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(74,1,'DC-MICROAMPERE SANWA                DC-MICROAMPERE SANWA  ',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(75,1,'DIAMOND BRAND RANTAI PLASTIK 9MM KUNING         DIAMOND BRAND RANTAI PLASTIK 9MM KUNING',0,0,9,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','DUS'),
(76,1,'DIAPHRAGM L3220/L3250 ( KARET MEMBRAN REGULATOR NEPPLE ) BULAT            KARET MEMBRAN REGULATOR NEPPLE / KARET MEMBRAN 17X0.1CM FABRIKASI',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(77,1,'DISPLAY KWH METER                                            DISPLAY KWH METER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(78,1,'DN 40 PN 25 316L',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(79,1,'DN 40 PN 25 SNS',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(80,1,'DOSING PUMP BPH-DLB 30B            DOSING PUMP PRISTALTIC 12VDC 300MA',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(81,1,'DRUCK-UND TEMPERATUR MESSTECHNIK WIKA 150 PSI 1/2 NPT & 1/2 NPT',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(82,1,'DRY VACUUM CLEANERS 1PC 100 MAX4',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(83,1,'DUDUKAN / MEMBRAN                    Gabungan pressure gauge kecil',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(84,1,'DUNGS AIR PRESSURE SWITCH LGW10 A2 P       DUNGS AIR PRESSURE SWITCH LGW10 A2 P',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(85,1,'ECOLEAN SAFETY RELAY 60506-003              ECOLEAN SAFETY RELAY 60506-003',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(86,1,'ECOLEAN STERILE FILTER 80084-009                     ECOLEAN STERILE FILTER 80084-009',0,0,30,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN = 3PC'),
(87,1,'ELECTRICIAN SCREWDRIVER TEKIRO SET @7PCS       ELECTRICIAN SCREWDRIVER TEKIRO SET @7PCS',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(88,1,'ELECTRONIK TRANSFORMER ET-60VA KRISLITE ',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(89,1,'ELEMENT HEATER CONHEAT ACHT 100WATT 220 VAC                ELEMENT HEATER CONHEAT ACHT 100WATT 220 VAC',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(90,1,'EMERSON EK305 LIQUID LINE FILTER DRYER      EMERSON EK305 LIQUID LINE FILTER DRYER',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(91,1,'ENGINE WASH GUN                                 ENGINE WASH GUN',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(92,1,'E-T-A ROCKER POWER SWITCH 3120-F551-P7T1 W02D 16A FOR KARCHER JET CLEANER                   E-T-A ROCKER POWER SWITCH 3120-F551-P7T1 W02D 16A FOR KARCHER JET CLEANER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(93,1,'EXTERNAL SNAPRING PLIER TEKIRO PL-SR0779 9IN         EXTERNAL SNAPRING PLIER TEKIRO PL-SR0779 9IN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(94,1,'EYES WASH U/ TPS B3                         EYES WASH U/ TPS B3',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(95,1,'FESTO ELECTRONIC (KABEL)',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(96,1,'FILTER 6PC PNJNG 1PC PNDEK            HEPA CATRIDGE IN THE TANK (pendek)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(97,1,'FILTER CARTRIDGE BIO X-METAL ME 20.AB7-SRH        FILTER DOMINICK HUNTER ME20 AB7-SRH',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(98,1,'FITTING NIPPLE ELBOW CAMOZZI 1/8 6M                                                                      NIPPLE FITTING ELBOW SS 1/8 6MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(99,1,'FITTING NIPPLE ELBOW CAMOZZI 6MM M6 SS 304 DRAT    FITTING NIPPLE ELBOW CAMOZZI 6MM M6 SS 304 DRAT',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(100,1,'FLANGE PLUCKER SSK',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(101,1,'FLEXELEC FTSO KABEL HEATER 40W 230V AKO         FLEXELEC FTSO KABEL HEATER 40W 230V AKO',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(102,1,'FLOW CONTROL TURCK FCS-G1/2A4P-AP8-H1141                                                    TURCK FCS-G1/2A4P-AP8X-H1141',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(103,1,'GASKET 0.6MM FIRE BLUNGKET                          GASKET 0.6MM FIRE BLUNGKET',0,0,12,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','M'),
(104,1,'GASKET FERRULE 1,5 INCH                             GASKET FERRULE 1,5 INCH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(105,1,'GASKET HITAM (KARET)    GASKET PHE S37 TIAN BA PHE EPDM HIGH TEMPERATUR HIGH 160',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(106,1,'GASKET PUTIH            GASKET FERRULE 4,5#',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(107,1,'GASKET SMS 1,5 INCH                        GASKET SMS 1,5 INCH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(108,1,'GASKET SMS 2 INCH                         GASKET SMS 2 INCH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(109,1,'GASKET SMS 4 INCH ( SILICONE )                     GASKET SMS 4 INCH ( SILICONE )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(110,1,'GEA ASEPTOMAG AG V-50 2200',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(111,1,'GOOT SOLDER KX60; 60W; 220V JAPAN            GOOT SOLDER KX60; 60W; 220V JAPAN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(112,1,'GRAJI BESI',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(113,1,'GS-P ZS/JB19008 220V & 1200W',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(114,1,'GUGO01042-O-RING D.34.6X1.78 NBR 70SH F/PW-C50 PIH             PVVR00985-HEADRING W151 F/PW-C50 PIH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(115,1,'GUVR00981-PACKING W151 F/PW-C50 PIH             GUVR00981-PACKING W151 F/PW-C50 PIH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(116,1,'GUVR34585-PACKING W151 L.P.F/PW-C50 D2771 PIH                       PVVR34589-INTERMED RING W151 D.20 F/PW-C50 D2771 PIH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(117,1,'GUVR34587-PACKING D.20 RESTOP F/PW-C50 PIH                                      GUVR34587-PACKING D.20 RESTOP F/PW-C50 PIH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(118,1,'HAND RIVETER ( JBAA2446 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(119,1,'HAND SEALERS PFS-400 16IN 400X3MM 220V 600W                                        HAND SEALERS PFS-400 16IN 400X3MM 220V 600W',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(120,1,'HAND TOOLSET ORION TR-007-1          HAND TOOLSET ORION TR-007-1',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(121,1,'HANGER CURTAIN ACCESSORIES-HOOK 1.18M/PC ( XRSSR-304 )            HANGER CURTAIN ACCESSORIES-HOOK 1.18M/PC ( XRSSR-304 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(122,1,'HARRIS KAWAT LAS TEMBAGA TEBAL 1,5MM LEBAR 3,2MM PANJANG 450MM             HARRIS KAWAT LAS TEMBAGA 3,2MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(123,1,'HD 5/11 CAGE KAP ( 019964, 019960 ) KARCHER            1.520-204.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(124,1,'HD 7/11-4 *KAP ( 021963, 021944 ) KARCHER           1.367-305.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(125,1,'HEAVY DUTY ADJUSTABLE WRENCH 10IN ( AMAB3325 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(126,1,'HEAVY DUTY ADJUSTABLE WRENCH 15IN ( AMAB5038 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(127,1,'HEAVY DUTY ADJUSTABLE WRENCH 8IN ( AMAB2920 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(128,1,'HEAVY DUTY HACKSAW 12IN ( SAAA3013 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(129,1,'HITACHI 999067 CARBON BRUSH FOR MESIN GERINDA G10SS2                                                                    HITACHI 999067 CARBON BRUSH FOR MESIN GERINDA G10SS2',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(130,1,'HOULE 5 IK 120R-C2-GU-XG SPEED CONTROL MOTOR GEARBOX 120W 220V 1 PHASE-GEAR HEAD CONTROLLER 90X90X2 SHAFT:15MM        HOULE 5 IK 120R-C2-GU-XG SPEED CONTROL MOTOR GEARBOX ',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(131,1,'INTERNAL SNAPRING PLIER TEKIRO PL-SR0782 9IN              INTERNAL SNAPRING PLIER TEKIRO PL-SR0782 9IN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(132,1,'ISHIDA 000-060-5239-16 PHOTOSENSOR BOARD PWB AS:P-5207:A             ISHIDA 000-060-5239-16 PHOTOSENSOR BOARD PWB AS:P-5207:A',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(133,1,'JET CLEANER NANKAI VAD 70BAR                          JET CLEANER NANKAI VAD 70BAR',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(134,1,'JORAN MATA BOR BETON 10MM       JORAN MATA BOR BETON 10MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(135,1,'KABEL BESAR HITAM',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(136,1,'KABEL HEATER CHEMELEX 50W 230V                                                                             KABEL HEATER CHEMELEX 50W 230V',0,0,12,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','M'),
(137,1,'KABEL KEYENCE FS-N11N PHOTOELECTRIC SENSOR     KABEL KEYENCE FS-N11N PHOTOELECTRIC SENSOR',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(138,1,'KABEL NYYHY 2X0.75MM (6X1,5MM_YG DIKRM/DI PROSES)        KABEL NYYHY 2X0.75MM',0,0,11,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','HRG PER MTR'),
(139,1,'KABEL NYYHY 4X0.75MM                                          KABEL NYYHY 4X0.75MM ',0,0,11,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','HRG PER MTR'),
(140,1,'KABEL SENSOR INFRARED',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(141,1,'KABEL SENSOR THERMOMETER BYGROMETER           KABEL SENSOR THERMOMETER BYGROMETER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(142,1,'KARCHER HD 7/11 PRESSURE SWITCH COMPLETE ONLY FOR REPLACEMENT                                       KARCHER HD 7/11 PRESSURE SWITCH COMPLETE ONLY FOR REPLACEMENT',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(143,1,'KARET GASKET HITAM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(144,1,'KARET GASKET MERAH',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(145,1,'KARET PUTIH KOTAK (1) BULAT (1)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(146,1,'KARET SEAL',0,0,21,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PACK'),
(147,1,'KARET SEAL BESAR',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(148,1,'KARET SEAL KECIL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(149,1,'KARET TANGAN',0,0,21,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PACK'),
(150,1,'KARET/ GASKET BESAR (5) SEDANG (5) KECIL (5)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(151,1,'KCM 40 HP 240 LINKS   (ROLLER CHAIN) RS40 HP (HOLO PIN)                          KCM HOLLOW PIN ROLLER CHAIN 40 HP PITCH 12.70, W.7.95, D.7.92',0,0,9,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','DUS'),
(152,1,'KEB BRAKE RECTIFIER 02.91.020.CE.07                KEB BRAKE RECTIFIER 02.91.020.CE.07',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(153,1,'KECIL-KECIL PLASTIKAN KLIP       DOMINO PART KIT MICRO PUMP',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(154,1,'KERUCUT PUTIH  (membran) MEMBRAN SAMPLING VALVE TANGKY STORAGE 2          MEMBRAN SAMPLING VALVE TANGKI STORAGE 2',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(155,1,'KIT VALVE (6X) FPOS3-30 301002562                                                                             KIT VALVE (6X) FPOS3-30 301002562',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(156,1,'KITZ 10K-80 S14A 80 W3242 (1)         KITZ JOYNECK 10/150 XJMEA 80 (3)                  BUTTERFLY VALVE 3 INCH',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(157,1,'KL 2.0 316L 0000152640 (BESI TABUNG )',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(158,1,'KL PIPA L (SAMBUNGAN MELENGKUNG)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(159,1,'KL PIPA TERMINAL  (SAMBUNGAN T)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(160,1,'KOGAWEI AIR FILTER REGULATOR FR602-03-AW 0.05-0.08 MPA                                                                  KOGAWEI AIR FILTER REGULATOR FR602-03-AW 0.05-0.08 MPA',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(161,1,'KRAN ',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(162,1,'KRAN AIR INJAK 1/2IN               KRAN AIR INJAK 1/2IN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(163,1,'KRAN AUTOMATIC SANITARY WARE   UCI KERAN AIR OTOMATIS NT-UCI 100 SENSOR INFRARED',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(164,1,'KTC BE3-075',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(165,1,'KUNINGAN KECIL        MISTING SPRYER 0.5X1IN FABRIKASI',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(166,1,'LAKBAN AIR 2 (FE KRAFT)     FE KRAFT PAPER GUMMED TAPE 2IN',0,0,5,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','1 DUZ=30 ROLL'),
(167,1,'LAMPU KRISLITE 230 V 50W GU10 BASE MAIN VOLTAGE HALOGEN LAMP',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(168,1,'LEM SILICON TOP WHITE     LEM SILICON OWNER @300GR',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(169,1,'LIMIT SWITCH SAGINOMIYA             LIMIT SWITCH SAGINOMIYA',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(170,1,'LIQUID RUBBER SEALANT SPRAY SKY 15 HITAM 500ML             LIQUID RUBBER SEALANT SPRAY SKY 15 HITAM 500ML',0,0,28,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','TUB/PCS'),
(171,1,'LOCKPIN     (PLASTIK 1 PACK ISI BESI)           PIN LOCK RACKING DEXION',0,0,6,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','1 PACK/PC'),
(172,1,'MAGNETIC FLOAT LEVEL FEEJOY FCI-S5-SA-C00-750MM -20 - 120? C       ( KUBLER_FLOAT LEVEL AFCVE-2 LEK10/TS-L75 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(173,1,'MATA BOR PLONG HOLE SAW 25MM        MATA BOR PLONG HOLE SAW 25MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(174,1,'MECH.SEAL HJ92-40   CAR/SIC/VIT       MECH SEAL H392N EAGLE BRUGMANN',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(175,1,'MECHANICAL SEAL 551B-25MM CAR/SIC/VITON    MECHANICAL SEAL M37G',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(176,1,'MECHANICAL SEAL B-25 ',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(177,1,'MECHANICAL SEAL SG   sama dengan MECH. SEAL MSS 32 (A) SSC-SIC/EPDM',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(178,1,'MECHANICAL SEAL SIHI AS 43MM         MECHANICAL SEAL SIHI AS 43MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(179,1,'MECHANICAL SEAL SMT 32MM ( RDRM )           MECHSEAL RDRM-20 SS316',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(180,1,'MECHANICAL SEAL SMT 32MM MSS B SEAL         MECHSEAL MSS 32-B NISSIN',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(181,1,'MECHANICAL TIGER SEAL  ',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(182,1,'MECHSEAL BAC H16-03                 MECHSEAL BAC H16-03',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(183,1,'MEMBRANE DN50 PTFE/EPDM  (HITAM PUTIH KOTAK/IKAN PARI)     MEMBRANE DN50 PTFE/EPDM (DIAPHRAGN DN50)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(184,1,'MICROMETER ADJUSTABLE TORQUE WRENCH 535 L MM 1/2 DR TOPTUL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(185,1,'MICROSWITCH CZ-7144 10A 250V AC',0,0,7,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','2,8DUS (1 DUS=10PCS'),
(186,1,'MPVR 05953       ( CT-15 SQUEEZE )      SQUEEZE CT-15',0,0,25,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PSG'),
(187,1,'NACHI MATA BOR 7,5MM              NACHI MATA BOR 7,5MM ',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','pcs'),
(188,1,'NEPPLE GREASE 10MM                    NEPPLE GREASE 10MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(189,1,'NEPPLE GREASE 6MM                 NEPPLE GREASE 6MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(190,1,'NETWORK CABLE TESTER RJ45 AND RJ11',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(191,1,'NIKKEN CHAIN SS RS 40 SINGLE ( RANTAI 40-1 SS NIKKEN )   NIKKEN CHAIN SS RS 40 SINGLE',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(192,1,'NITTO ISOLASI HEATER         NITTO ISOLASI HEATER',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(193,1,'NITTO QUICK COUPLER 1/2       NITTO QUICK COUPLER 1/2',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(194,1,'NON WOVEN (PROPAN GURINDA POLES 4IN X 10MM)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(195,1,'NOZZLE KUNINGAN 1/2IN        NOZZLE KUNINGAN 12IN',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(196,1,'NT 30/1 ME CLASSIC *CN ( 048623 ) KARCHER             1.428-569.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(197,1,'NT 40/1 AP L *EU ( 019747 ) KARCHER            1.148-321.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(198,1,'NT 48/1 *EU ( 066750 ) KARCHER            1.428-620.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(199,1,'NUT+BAUT RUBBER COUPLING FCL F2 64X17MM                                                        NUT+BAUT RUBBER COUPLING FCL F2 64X17MM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(200,1,'OBENG DIN 5264 0.8X4X400 TOPTUL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(201,1,'OIL SEAL 75X95X10 STAINLESS             OIL SEAL 75X95X10 STAINLESS',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(202,1,'OMRON Z-15GQ22-B 15A250V',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(203,1,'PACKING KLINGERIT 1000 3MMX1,5MX2M          PACKING KLINGERIT 1000 3MMX1,5MX2M',0,0,27,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','SHT'),
(204,1,'PACKING VALQUA 6502               VAQUA PACKING AMONIAK 1MM',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43',''),
(205,1,'PAD HOLDER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(206,1,'PAHAT BUBUT WIDYA 10X10X100MM EX. GERMANY                  PAHAT BUBUT WIDYA 10X10X100MM EX. GERMANY',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(207,1,'PENTAIR SUDMO ( MEMBRAN KIT SUDMO VALVE )     SPV ACTUATOR MEMBRAN KIT SUDMO VALVE (12.300.000) + DIAPHRAGM (P3) SUDMO = 27.580.000                               ADA 2 BRG',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(208,1,'PENTAIR SUDMO 2131736',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(209,1,'PHE SONDEX SL140TL-50-EE 25 BAR                          PHE 30 BARG',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(210,1,'PIPE WRENCH 12IN ( DDAB1A12 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(211,1,'PIPE WRENCH 14IN ( DDAB1A14 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(212,1,'PIPE WRENCH 18IN ( DDAB1A18 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(213,1,'PISTON SEAL KIT IPH 31000343 FPOS3-30                                                                  PISTON SEAL KIT IPH 31000343 FPOS3-30',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(214,1,'PLASTIK TIRAI POLAR TRANSPARENT LIGHT BLUE/POLOS 30MM X 3MM X 50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(215,1,'POWER METER                         POWER METER',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(216,1,'POWER NOZZLE              KARCHER POWER NOZZLE 25050 2.883-399.0',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(217,1,'PRESSURE GAUGE GMT PRO 100MM 0-10 BAR    GMT PRESSURE GAUGE 4IN 0-10BAR BOTTOM 1/2IN ',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(218,1,'PRESSURE GAUGE RANSBURG MPA BAR EN 837-1 VACUM GAUGE               PRESSURE GAUGE 0-10 BAR MEMBRAN 2IN    (ransburg)            ',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(219,1,'PRESSURE REGULATOR CAMOZZI MC238-D13                                                             PRESSURE REGULATOR CAMOZZI MC238-D13',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(220,1,'PROBE PH ELECTRODE LE438        PROBE PH ELECTRODE LE438',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(221,1,'PROXIMITY SENSOR IFT 203           PROXIMITY SENSOR IFT 203',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(222,1,'PSI MPA (?C) 1,6',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','BOX/PCS'),
(223,1,'PULS (POWER SUPPLY) SL5.300 IN3AC 400-500V OUT DC 24-28V',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(224,1,'PUNYA TURCK ( CONNECTOR SENSOR PROXIMITY )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(225,1,'PVC CURTAIN-ANTI INSECT YELLOW 200MMX2MMX50M ( XR-PEC-YAI2022 )   TIRAI PVC ANTI INSECT 200MMX2MMX50M ( YELLOW )',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(226,1,'PVC CURTAIN-ANTI INSECT YELLOW 300MMX2MMX50M ( XR-PEC-YAI3003 )  TIRAI PVC ANTI INSECT 300MMX2MMX50M ( YELLOW )',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(227,1,'PVC CURTAIN-POLAR CLEAR 200MMX2MMX50M ( XRPEC-L2002 )  TIRAI PVC POLAR GRADE 200MMX2MMX50M ( BLUE )',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(228,1,'PVC CURTAIN-POLAR CLEAR 300MMX3MMX50M ( XRPEC-L3003 )  TIRAI PVC POLAR GRADE 300MMX3MMX50M ( BLUE )',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(229,1,'PVC CURTAIN-POLAR CLEAR RIBBED 300MMX3MMX50M ( XRPER-L3003 )          TIRAI PVC RIBS POLAR GRADE 300MMX3MMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(230,1,'PVC CURTAIN-STANDART CLEAR 200MMX2MMX50M ( XRPEC2002 ) TIRAI PVC STANDART TRANSPARENT GRADE 200MMX2MMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(231,1,'PVC CURTAIN-STANDART CLEAR 300MMX3MMX50M ( XRPEC3033 )  TIRAI PVC STANDART TRANSPARENT GRADE 300MMX3MMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(232,1,'PVC STRIP CURTAIN ANTI INSECT YELLOW GRADE SURFACE SMOOTH 3MM X 300MM X 50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(233,1,'PVC STRIP CURTAIN POLAR GRADE SURFACE SMOOTH 2MM X 200MM X 50M    ( sama dgn yg di bengkel )',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(234,1,'PVC STRIP CURTAIN POLAR GRADE SURFACE SMOOTH 3MM X 300MM X 50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(235,1,'PVC STRIP CURTAIN STANDART YELLOW-ANTI INSECT 3MMX30CMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(236,1,'PVC STRIP POLAR TRANSPARENT LIGHT BLUE 300MM X 3MM X 50M BERTULANG DOUBLE RIBBED',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(237,1,'RAMSET CHEMSET INJECTION SYSTEM EPCON G5',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(238,1,'RANSBURG 4IN X 0-16KG BOTTOM.C FSS 1/2       RANSBURG RACKET EN837-1 PRESSURE GAUGE WITH FLUID DIA 4IN ',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(239,1,'RANSBURG PRESSURE GAUGE 0-25 BAR MEMBRAN 2IN SS     PRESSURE GAUGE 0-25 BAR MEMBRAN 2IN SS',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(240,1,'RANSBURG PRESSURE VACUM -0,1 -0MPA      RANSBURG PRESSURE VACUM -0,1 -0MPA',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(241,1,'REGO LV4403B66 REGULATOR HEATER 3/4IN F.NPT           REGO LV4403B66 REGULATOR HEATER 3/4IN F.NPT',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(242,1,'ROD END BEARINGS ASB BESAR',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(243,1,'ROD END BEARINGS ASB KECIL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(244,1,'RODA RUBET CA 451',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(245,1,'RODA TROLY 3 ( PO SGF RTE 6  )      RODA TROLY 3 ( PO SGF RTE 6  )',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(246,1,'SAFE GUARD',0,0,9,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','DUS'),
(247,1,'SAKLAR ON/OFF GERINDA MAKTEC MT954         SAKLAR ON/OFF GERINDA MAKTEC MT954',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(248,1,'SAKURA FUEL FILTER FC1104      SAKURA FUEL FILTER FC1104',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(249,1,'SAKURA OIL FILTER C1154                 SAKURA OIL FILTER C1154',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(250,1,'SAMBUNGAN KUNINGAN      gabungan thermometer DTM no. 11',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(251,1,'SANCHIN POWER SPRAYER (SEAL KIT) SC-45/SCN-45      SANCHIN SEAL SPRAYER SC45',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(252,1,'SANDFLEX MATA GERGAJI 12IN 18TPI              SANDFLEX MATA GERGAJI 12IN 18TPI',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(253,1,'SANKYO BALL VALVE STEAM 1 IN DRAT DALAM            SANKYO BALL VALVE STEAM 1 IN DRAT DALAM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(254,1,'SANYOU SLC-S-112DM-03',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43',''),
(255,1,'SCREEN ENDOSCOPE',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(256,1,'SCREW CONNECTOR PART 5.401-210.0                                                                      SCREW CONNECTOR PART 5.401-210.0                                                  ',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(257,1,'SCREWDRIVER TEKIRO TPR GO THRU SET @7PCS        SCREWDRIVER TEKIRO TPR GO THRU SET @7PCS',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(258,1,'SCRUBBER AND POLISHER 17 154RPM 1100W MERK KRISBOW',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(259,1,'SEDEL SEPEDA',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(260,1,'SELANG 6MM TEFLON ( TUBING CAMOZZI CM-TRN 6/4 CLEAR )                   SELANG 6MM TEFLON',0,0,12,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','M'),
(261,1,'SELANG 8MM TEFLON ( TUBING CAMOZZI CM-TRN 8/6 CLEAR )             SELANG 8MM TEFLON',0,0,12,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','M'),
(262,1,'SELANG BESI KECIL',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(263,1,'SELANG BESI YULAG 50CM',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(264,1,'SELANG HIJAU',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(265,1,'SELANG HOSE HIGH PRESSURE JET CLEANER FOR LAKONI LAGUNA @20M                                              SELANG HOSE HIGH PRESSURE JET CLEANER FOR LAKONI LAGUNA @20M',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(266,1,'SELENOID DP-10 32A RV9         SELENOID DP-10 32A RV9',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(267,1,'SELENOID VALVE FORSTONE TIPE 2S2-25 SS      SELENOID VALVE FORSTONE TIPE 2S2-25 SS',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(268,1,'SENSOR FLOW TURCK FCS G1 2A4                      SENSOR FLOW TURCK FCS G1 2A4',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(269,1,'SENSOR KRAN WASTAFEL',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(270,1,'SENSOR TF45-11-A-1A          SENSOR TF45-11-A-1A',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(271,1,'SIEMENS ANALOG INPUT 6ES7 331-7KF02-0AB0 SIMATIC S7-300',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(272,1,'SIEMENS FUSE 3NE3 230-0B VDE 0636 315A 1000VAC 50KA           SIEMENS FUSE 3NE3 230-0B VDE 0636 315A 1000VAC 50KA',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(273,1,'SIEMENS SIRIUS 3RT 2017-1AV07',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(274,1,'SIGN GLASS ( FIBERGLASS ) P 150 CM          SIGN GLASS ( FIBERGLASS ) P 150 CM',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(275,1,'SINGLE DISC POLISHER ECNOVAC',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(276,1,'SINO-HOLDING SH-M7N/G60-65MM (SEAL) SS316 BESAR',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(277,1,'SINO-HOLDING SH-N1-32P/SS316L (SEAL) MSS KECIL                                            ( MECHANICAL SEAL SG )   MECH. SEAL MSS 32 (A) SSC-SIC/EPDM',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(278,1,'SOCKET AZBIL',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(279,1,'SPIRAX SARCO 15-20',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(280,1,'SPIRAX SARCO 25-32',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(281,1,'SPIT WATER 10-120 C',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(282,1,'SQUEEZE PAD CT30                          SQUEEZE PAD CT30',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(283,1,'STAR KEY WRENCH SET TOPTUL 9PC EXTRA LONG - SHORT ARM STAR KEY END ( GAAL0923 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(284,1,'STEEL BENCH VISE TOPTUL 5IN ALL CAST ( DJAC0105 )',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(285,1,'STEGO THERMOSTAT KTS-011     STEGO THERMOSTAT KTS-011',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(286,1,'TANG RIVET TEKIRO GT-HR1231         TANG RIVET TEKIRO GT-HR1231',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(287,1,'TBFX 01685 VHA',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(288,1,'TECHNOTRANS FLUIDOS 100-10001/N',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(289,1,'TEFLON SEALING BELT UK.1120X15MMX0.2MM HUALIAN MANUAL BELT SEALER 1MMX15X38CMF FOR HUALIAN 770111',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(290,1,'TEMPERATURE PROBE PT100 RTD SENSOR CABLE 2M 50-400C   TEMPERATURE PROBE PT100 RTD SENSOR CABLE 2M 50-400C',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(291,1,'TEMPERATURMESSTECHNIK DRUCK-UND 230 PSI 1/4 NPT RANSBURG        PRESSURE GAUGE 0-15 MEMBRAN 2 SS',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(292,1,'THERMO SENSE 4IN X 0-200?C PAYUNG              SENSE DIAL THERMOMETER 4IN 0-200DEG C DIAMETER DRAT 1/2IN',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(293,1,'THERMOMETER DTM-481 150MM         & BATU ABC KECIL                                                         THERMOMETER SUHU ANALOG DIGITAL_DTM(UHT) atau  THERMOMETER RETORT WSS-403 (RTE)               harga beda',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(294,1,'TIRAI ANTI-INSECT TRANSPARENT ORANGE YELLOW 200MMX2MMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(295,1,'TIRAI POLAR TRANSPARENT LIGHT BLUE 200MMX200MMX2MMX50M          (2)                  PLASTIK TIRAI PVC SUPER POLAR CLEAR 20CM X 2MM',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(296,1,'TIRAI STANDART TRANSPARENT BLUE 200MMX2MMX50M                                         (1)',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(297,1,'TIRAI STANDART TRANSPARENT NATURE 200MMX2MMX50M',0,0,26,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','ROLL'),
(298,1,'TONGKAT BESI',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(299,1,'TOP 020955',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(300,1,'TOPTUL DAAS 1 A06 CR-MO CR-V',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(301,1,'TOSEN VALVE 2,5#                        TOSEN VALVE 2,5#',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(302,1,'TOUCHLESS AUTOMATIC SOAP DISPENSER',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(303,1,'TOZEN RUBBER FLEXIBLE JOINT 3INX240MM DOUBLE BELLOW                              TOZEN RUBBER FLEXIBLE JOINT 3INX240MM DOUBLE BELLOW',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(304,1,'TRANSMISSION ROLLER CHAIN SENQCIA 50 10FT (3.048 M) 50-304 RS 50',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(305,1,'TUBE SUCTION CT30          TUBE SUCTION CT30',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(306,1,'TURCK FCS-G1/MK96-VP01                 TURCK FCS-G1/MK96-VP01',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(307,1,'UNIVER AG 3051',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(308,1,'VACUUM VALCO',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(309,1,'VALVOLA YORK 1/2 DZ.12           YORK TUSEN KLEP KUNINGAN 1/2 IN',0,0,1,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','(1 BOX=12 PC)'),
(310,1,'VUVG-B10-T32C-AZT-F-1T1L',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(311,1,'WATER METER AMICO 3/4IN LXSG-15E      WATER METER AMICO 3/4IN LXSG-15E',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(312,1,'WEIDMULLER ASK 1              BLOCK FUSE ASK 1 6.3A',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(313,1,'WERBROCK H-C PRESSURE GAUGE 4\" BOTTOM 150 PSI 1/2\" NPT           WIEBROCK PRESSURE GAUGE SS 4IN, 0-10 BAR, CONNECTION BOTTOM KUNINGAN',0,0,24,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS/DUS'),
(314,1,'WIKA GERMANY (?C)',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(315,1,'WIKA PRESS GAUGE 4IN0-16KG/CM1 1/2IN BOTTOM CONNECTION EX GERMAN (TOKPED) WIKA PRESS GAUGE 4IN0-16KG/CM1 1/2IN BOTTOM CONNECTION EX GERMAN',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43',''),
(316,1,'WIKA PRESSURE GAUGE SS 4IN 0-16BAR BOTTOM CONNECTION      WIKA PRESSURE GAUGE SS 4IN 0-16BAR BOTTOM CONNECTION  ',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(317,1,'WIKA THERMOMETER D 4 0-300 DRAT 1/2NPT D.STIK 6MM P.TIK 10CM (tokped serba gauge)              WIKA THERMOMETER MODEL RAKET 1/2IN X 10CM 0-300 C',0,0,22,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PC'),
(318,1,'WILDEN DOVER',0,0,8,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43',''),
(319,1,'WIRE BRUSH 1,5M SS316                     WIRE BRUSH 1,5M SS316',0,0,29,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','UN'),
(320,1,'YUANAN SUS 304 25.4 1811',0,0,23,1,1,NULL,1,'','',1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,'2024-12-13','2024-12-13 16:05:43','PCS'),
(321,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:47',NULL),
(322,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:48',NULL),
(323,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:54',NULL),
(324,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:55',NULL),
(325,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:55',NULL),
(326,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:56',NULL),
(327,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:57',NULL),
(328,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:24:58',NULL),
(329,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:25:01',NULL),
(330,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:25:02',NULL),
(331,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:25:03',NULL),
(332,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:26:06',NULL),
(333,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:27:24',NULL),
(334,1,'Test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:34:46',NULL),
(335,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:35:10',NULL),
(336,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:36:55',NULL),
(337,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:43:17',NULL),
(338,1,'test',NULL,0,0,1,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,'2025-01-13','2025-01-13 07:45:07',NULL);

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

/*Data for the table `inv_item_unit` */

insert  into `inv_item_unit`(`item_unit_id`,`item_unit_code`,`item_unit_name`,`item_unit_default_quantity`,`item_unit_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'(1 BOX=12 PC)','(1 BOX=12 PC)',0,'(1 BOX=12 PC)',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'(1 BX= 10 PC)','(1 BX= 10 PC)',0,'(1 BX= 10 PC)',0,3,'0000-00-00 00:00:00','2023-08-05 21:45:16'),
(3,'1 BOX = 6 PSG','1 BOX = 6 PSG',0,'1 BOX = 6 PSG',0,3,'0000-00-00 00:00:00','2023-08-05 21:45:28'),
(4,'1 DUZ = 100 PC','1 DUZ = 100 PC',0,'1 DUZ = 100 PC',0,74,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'1 DUZ=30 ROLL','1 DUZ=30 ROLL',0,'1 DUZ=30 ROLL',0,75,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'1 PACK/PC','1 PACK/PC',0,'1 PACK/PC',0,75,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,'2,8DUS (1 DUS=10PCS','2,8DUS (1 DUS=10PCS',0,'2,8DUS (1 DUS=10PCS',0,0,'0000-00-00 00:00:00','2023-08-05 09:47:21'),
(8,'BOX/PCS','BOX/PCS',0,'BOX/PCS',0,75,'2023-08-05 21:44:24','2023-08-05 21:44:24'),
(9,'DUS','DUS',0,'DUS',0,75,'2023-08-08 04:43:11','2023-08-08 05:03:15'),
(10,'DUS/PCS','DUS/PCS',0,'DUS/PCS',0,75,'2023-08-08 04:44:19','2023-08-08 05:03:25'),
(11,'HRG PER MTR','HRG PER MTR',0,'HRG PER MTR',0,75,'2023-10-19 08:45:54','2024-04-24 08:25:34'),
(12,'M','M',0,'M',0,75,'2023-10-19 08:46:10','2024-04-24 08:25:39'),
(21,'PACK','PACK',0,'PACK',0,3,'2024-01-15 06:38:14','2024-01-15 06:38:14'),
(22,'PC','PC',0,'PC',0,75,'2024-06-11 07:52:46','2024-06-11 07:52:46'),
(23,'PCS','PCS',0,'PCS',0,75,'2024-06-11 07:54:19','2024-06-11 07:54:19'),
(24,'PCS/DUS','PCS/DUS',0,'PCS/DUS',0,75,'2024-06-11 07:54:38','2024-06-11 07:54:38'),
(25,'PSG','PSG',0,'PSG',0,75,'2024-06-11 07:56:24','2024-06-11 07:56:24'),
(26,'ROLL','ROLL',0,'ROLL',0,75,'2024-06-11 07:56:44','2024-06-11 07:56:44'),
(27,'SHT','SHT',0,'SHT',0,75,'2024-06-11 07:59:16','2024-06-11 07:59:16'),
(28,'TUB/PCS','TUB/PCS',0,'TUB/PCS',0,75,'2024-06-11 08:00:45','2024-06-11 08:00:45'),
(29,'UN','UN',0,'UN',0,75,'2024-06-11 08:02:46','2024-06-11 08:02:46'),
(30,'UN = 3PC','UN = 3PC',0,'UN = 3PC',0,75,'2024-06-11 08:05:47','2024-06-11 08:05:47'),
(31,'tidak ada','tidak ada',0,'tidak ada',0,75,'2024-06-11 08:06:49','2024-06-11 08:06:49');

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

/*Data for the table `inv_item_unit_cost` */

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

/*Data for the table `inv_warehouse` */

insert  into `inv_warehouse`(`warehouse_id`,`warehouse_location_id`,`warehouse_code`,`warehouse_type`,`warehouse_name`,`warehouse_address`,`warehouse_phone`,`warehouse_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,6,'GDRS','1','GUDANG READY STOCK','Jln. Gatot Subroto','0897875559','Gudang untuk barang ready stock',0,3,'2022-01-07 01:16:16','2025-01-09 09:52:05');

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

/*Data for the table `inv_warehouse_in` */

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

/*Data for the table `inv_warehouse_in_item` */

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

/*Data for the table `inv_warehouse_in_type` */

insert  into `inv_warehouse_in_type`(`warehouse_in_type_id`,`warehouse_in_type_name`,`warehouse_in_type_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'Return Barang','Barang Reject',0,3,'2023-02-27 04:59:55','2023-06-23 10:52:21');

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

/*Data for the table `inv_warehouse_location` */

insert  into `inv_warehouse_location`(`warehouse_location_id`,`warehouse_location_code`,`province_id`,`city_id`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(6,'SMG',71,1048,0,3,'2023-02-27 06:40:33','2023-06-23 10:52:21');

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

/*Data for the table `inv_warehouse_out` */

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

/*Data for the table `inv_warehouse_out_item` */

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

/*Data for the table `inv_warehouse_out_type` */

insert  into `inv_warehouse_out_type`(`warehouse_out_type_id`,`warehouse_out_type_name`,`warehouse_out_type_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(4,'Waste','Barang Busuk',1,3,'2022-01-04 03:18:50','2023-06-23 10:52:22'),
(5,'PRODUKSI','produksi',1,3,'2022-02-08 06:48:10','2023-06-23 10:52:22'),
(6,'Antimo Anak Jeruk','Terjual',0,3,'2023-03-01 09:34:04','2023-06-23 10:52:22');

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

/*Data for the table `inv_warehouse_transfer` */

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

/*Data for the table `inv_warehouse_transfer_item` */

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

/*Data for the table `inv_warehouse_transfer_received_note` */

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

/*Data for the table `inv_warehouse_transfer_received_note_item` */

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

/*Data for the table `inv_warehouse_transfer_type` */

insert  into `inv_warehouse_transfer_type`(`warehouse_transfer_type_id`,`warehouse_transfer_type_name`,`warehouse_transfer_type_remark`,`data_state`,`created_id`,`created_at`,`deleted_id`,`deleted_at`,`updated_at`) values 
(9,'Waste','Barang Busuk',1,3,'2022-01-04 03:18:20',0,NULL,'2023-06-23 10:52:22'),
(10,'READY SMG','PRODUK BERADA DI SEMARANG SIAP DIKIRIM KE PEMBELI',0,3,'2022-01-07 13:11:54',0,NULL,'2023-12-27 09:42:31');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2021_07_08_065000_create_p_p_o_b_s_table',1);

/*Table structure for table `p_p_o_b_s` */

DROP TABLE IF EXISTS `p_p_o_b_s`;

CREATE TABLE `p_p_o_b_s` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `p_p_o_b_s` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('administrator@gmail.com','$2y$10$5POYOZVw/qOdocfjS2H1x.4rnpa9gOz2KJNzTLY1awGxW8nIihLoe','2021-09-14 08:11:09');

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

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`created_at`,`updated_at`) values 
(41,'App\\Models\\User',3,'token-name','508636b02eaf5c09cbc9aa4777c7794edaf13dc45f6476c5c06047e2825828be','[\"*\"]','2023-02-10 07:17:54','2023-02-10 07:11:29','2023-02-10 07:17:54'),
(42,'App\\Models\\User',3,'token-name','e4951cc3fed0cd316e8709317b22182d8c735892f12b3708478a9c0214e60bbf','[\"*\"]','2023-02-10 07:21:53','2023-02-10 07:18:11','2023-02-10 07:21:53'),
(43,'App\\Models\\User',3,'token-name','79326c33563ab28f18170d7462079df46c634eeef63d1989ec4bd3fe81d5d93d','[\"*\"]','2023-02-10 07:32:24','2023-02-10 07:31:06','2023-02-10 07:32:24'),
(44,'App\\Models\\User',3,'token-name','f44a4388964324718a0475b7e71f4efb49134c26eb961f82fd04c1d8b7e7ac58','[\"*\"]','2023-02-10 07:38:05','2023-02-10 07:35:45','2023-02-10 07:38:05'),
(45,'App\\Models\\User',3,'token-name','cb59d0c295fee2461a96a6b9eca604c3f6dc604b0cb8e5beb229cba8871e1190','[\"*\"]','2023-02-10 07:56:33','2023-02-10 07:47:44','2023-02-10 07:56:33'),
(46,'App\\Models\\User',3,'token-name','8b4ce5a7bfcd7edb46b1fa7ae144e4f72b1d24291f3b63cb539ac414bb24e409','[\"*\"]','2023-02-10 07:57:21','2023-02-10 07:57:11','2023-02-10 07:57:21'),
(47,'App\\Models\\User',3,'token-name','8d1dc748a071f75b1784eb237eeb80646710bafe827fcc663bba05f3a4b3799e','[\"*\"]','2023-02-10 08:02:41','2023-02-10 08:02:10','2023-02-10 08:02:41'),
(48,'App\\Models\\User',3,'token-name','e59fbb4ea31f5c829793572ee52212eaacad13029e4b25598a56013c71fdf741','[\"*\"]','2023-02-10 08:20:11','2023-02-10 08:03:58','2023-02-10 08:20:11'),
(49,'App\\Models\\User',3,'token-name','2ed847b3b530bc525dcf87d1a058169db1663f5c834c88c7ae66a263f2c0a97d','[\"*\"]','2023-02-10 08:23:34','2023-02-10 08:23:32','2023-02-10 08:23:34'),
(50,'App\\Models\\User',3,'token-name','1743d09ad114f907bbce166c3909442b8371dea343adbd03500c853b90cd65b1','[\"*\"]','2023-02-11 03:17:35','2023-02-11 02:07:11','2023-02-11 03:17:35');

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

/*Data for the table `preference_company` */

insert  into `preference_company`(`company_id`,`company_name`,`company_address`,`company_phone_number`,`company_mobile_number`,`company_email`,`company_website`,`company_tax_number`,`company_account_receivable_due_date`,`company_account_payable_due_date`,`company_logo`,`CDBO_no`,`distribution_no`,`account_inventory_trade_id`,`account_vat_in_id`,`account_vat_out_id`,`account_payable_id`,`account_bank_or_cash_id`,`account_pdp_id`,`account_bank_cash_hpp_id`,`account_receivable_id`,`account_shortover_id`,`account_sales_id`,`ppn_amount_in`,`ppn_amount_out`,`sales_discount_id`,`purchase_discount_id`,`pharmacist_license_no`,`account_sales_return_id`,`account_hpp_id`,`account_bank_id`,`account_cash_id`,`account_cash_on_way_id`,`account_delivery_id`,`account_expense_id`,`created_at`,`updated_at`) values 
(2,'TriptaTriTunggal','PERUM. BUMI WONOREJO - KARANGANYAR','( 024 ) 76623702','08712813691','TriptaTriTunggal@gmail.com','www.TriptaTriTunggal.id','',0,0,NULL,'CDOB1827/S/4-3306/09/2020','FP.01.04/IV/0118-/2019',79,99,48,17,0,82,0,6,4,308,11,11,0,0,'A1111111',340,356,0,4,4,9,0,NULL,'2025-01-17 09:17:38');

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

/*Data for the table `preference_transaction_module` */

insert  into `preference_transaction_module`(`transaction_module_id`,`transaction_module_name`,`transaction_module_code`,`transaction_id`,`transaction_controller`,`status`,`created_by`,`data_state`,`created_at`,`updated_at`) values 
(1,'Supplier','SP',0,'supplier','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(2,'Department','DP',0,'department','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(3,'Location','LC',0,'location','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(4,'Machine','MC',0,'machine','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(5,'Item Category','IC',0,'itemcategory','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(6,'Bank Account','BA',0,'bankaccount','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(7,'Cash Account','CA',0,'cashaccount','0','','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(8,'Warehouse','WHS',0,'warehouse','0','','0','2015-06-09 11:48:41','2023-06-23 10:52:22'),
(9,'Item','IT',0,'item','0','','0','2015-06-10 10:16:52','2023-06-23 10:52:22'),
(10,'Warehouse In','WHI',0,'warehousein','1','','0','2015-06-10 13:52:06','2023-06-23 10:52:22'),
(11,'Warehouse Out Requisition','WOR',0,'warehouseoutrequisition','0','','0','2015-06-10 13:52:30','2023-06-23 10:52:22'),
(12,'Warehouse Out','WHO',0,'warehouseout','1','','0',NULL,'2023-06-23 10:52:22'),
(13,'Warehouse Transfer Requisition','WTR',0,'warehousetransferrequisition','0','','0',NULL,'2023-06-23 10:52:22'),
(14,'Warehouse Transfer','WHT',0,'warehousetransfer','1','','0',NULL,'2023-06-23 10:52:22'),
(15,'Purchase Requisition','PR',0,'warehouserequisition','0','','0',NULL,'2023-06-23 10:52:22'),
(16,'Purchase Order','POA',0,'purchaseorder','0','','0',NULL,'2023-06-23 10:52:22'),
(17,'Purchase Invoice','PI',0,'purchaseinvoice','1','','0',NULL,'2023-06-23 10:52:22'),
(18,'Purchase Return','PR',0,'purchasreturn','1','','0',NULL,'2023-06-23 10:52:22'),
(19,'Purchase Supplier Quotation','PSQ',0,'purchasesupplierquotation','0','','0',NULL,'2023-06-23 10:52:22'),
(20,'Goods Received Note','GRN',0,'goodsreceiptnote','1','','0',NULL,'2023-06-23 10:52:22'),
(21,'Goods Return Note','GTN',0,'goodsreturnnote','1','','0',NULL,'2023-06-23 10:52:22'),
(22,'Quality Control','QC',0,'qualitycontrol','0','','0',NULL,'2023-06-23 10:52:22'),
(23,'Purchase Bank Payment','PBP',0,'purchasebankpayment','0','','0',NULL,'2023-06-23 10:52:22'),
(24,'Purchase Cash Payment','PCP',0,'purchasecashpayment','0','','0',NULL,'2023-06-23 10:52:22'),
(25,'Asset Type','AT',0,'assettype','0','','0',NULL,'2023-06-23 10:52:22'),
(26,'Asset','AS',0,'asset','0','','0',NULL,'2023-06-23 10:52:22'),
(27,'Material Release','MR',0,'materialrelease','1','Administrator','0','2015-07-23 08:12:21','2023-06-23 10:52:22'),
(28,'Production Result','PR',0,'productionresult','1','Administrator','0','2015-07-23 08:12:21','2023-06-23 10:52:22'),
(29,'Work Order','WO',0,'workorder','0','Administrator','0','2015-07-23 00:00:00','2023-06-23 10:52:22'),
(30,'Material Return','MRT',0,'materialreturn','1','Administrator','0','2015-07-23 00:00:00','2023-06-23 10:52:22'),
(31,'Purchase Payment','PP',0,'purchasepayment','1','Administrator','0',NULL,'2023-06-23 10:52:22'),
(32,'Material Reject','MRJ',0,'materialreject','1','','0',NULL,'2023-06-23 10:52:22'),
(33,'Purchase Debit Note','PDN',0,'purchasedebitnote','1','','0',NULL,'2023-06-23 10:52:22'),
(34,'Production Activity Report','PAR',0,'productionactivityreport','0','','0',NULL,'2023-06-23 10:52:22'),
(35,'Sales Order','SO',0,'salesorder','0','Administrator','0','2015-09-17 07:52:35','2023-06-23 10:52:22'),
(36,'Sales Shipment Planning','SSP',0,'saleshipmentplanning','0','Administrator','0','2015-09-17 07:53:04','2023-06-23 10:52:22'),
(37,'Sales Delivery Order','SDO',0,'salesdeliveryorder','0','Administrator','0','2015-09-17 07:53:34','2023-06-23 10:52:22'),
(38,'Sales Delivery Note','SDN',0,'salesdeliverynote','1','Administrator','0','2015-09-17 07:54:04','2023-06-23 10:52:22'),
(39,'Sales Invoice','SI',0,'salesinvoice','1','Administrator','0','2015-09-17 07:54:21','2023-06-23 10:52:22'),
(40,'Sales Return','SR',0,'salesreturn','1','Administrator','0','2015-09-17 07:54:48','2023-06-23 10:52:22'),
(41,'Sales Order Barang Pinjaman','SOBP',0,'salesorder','0','Administrator','0',NULL,'2023-06-23 10:52:22'),
(42,'Sales Goods Returned Note','SGRN',0,'salesgoodsreturnnote','0','','0',NULL,'2023-06-23 10:52:22'),
(43,'Expedition Payment','EP',0,'expeditionpayment','1','Administrator','0',NULL,'2023-06-23 10:52:22'),
(44,'Claim Expedition','CE',0,'claimexpedition','1','Administrator','0',NULL,'2023-06-23 10:52:22'),
(45,'Claim Collection','CC',0,'claimcollection','1','Administrator','0',NULL,'2023-06-23 10:52:22'),
(46,'Cash Receipt','CR',0,'cashreceipt','1','Administrator','0','2015-11-03 08:55:51','2023-06-23 10:52:22'),
(47,'Cash Disbursement','CD',0,'cashdisbursement','1','Administrator','0','2015-11-03 08:56:24','2023-06-23 10:52:22'),
(48,'Bank Receipt','BR',0,'bankreceipt','1','Administrator','0','2015-11-03 08:56:52','2023-06-23 10:52:22'),
(49,'Bank Disbursement','BD',0,'bankdisbursement','1','Administrator','0','2015-11-03 08:57:18','2023-06-23 10:52:22'),
(50,'Assign Bank Transfer','AB',0,'assignbanktransfer','0','Administrator','0','0000-00-00 00:00:00','2023-06-23 10:52:22'),
(51,'Receipt','RC',1,'receipt','0','','0',NULL,'2023-06-23 10:52:22'),
(52,'Disbursement','DS',2,'disbursemen','0','','0',NULL,'2023-06-23 10:52:22'),
(53,'Expedition Invoice','EI',0,'expeditioninvoice','0','Administrator','0','2016-10-04 20:35:50','2023-06-23 10:52:22'),
(54,'Job Costing','JC',0,'warehouseout','0','','0','2016-12-08 20:19:48','2023-06-23 10:52:22'),
(55,'Adjustment Stock Plus','ASP',0,'adjustmentstock','0','','0','2016-12-08 22:17:36','2023-06-23 10:52:22'),
(56,'Adjustment Stock Minus','ASM',0,'adjustmentstock','0','','0','2016-12-08 23:59:45','2023-06-23 10:52:22'),
(57,'Sales Collection','SC',0,'SalesCollection','0','','0',NULL,'2023-06-23 10:52:22'),
(58,'Grading','GR',0,'Grading','0','','0',NULL,'2023-06-23 10:52:22'),
(59,'Return PDP','RPDP',0,'Return PDP','0','','0',NULL,'2023-06-23 10:52:22'),
(60,'Purchase Order Return','POR',0,'Purchase Order Return','0','','0',NULL,'2023-06-23 10:52:22'),
(61,'Sales Order Return','SOR',0,'Sales Order Return','0','','0',NULL,'2023-06-23 10:52:22'),
(62,'PDP Lost On Expedition','PDP_LOE',0,'PDP Lost On Expedition','0','','0',NULL,'2023-06-23 10:52:22'),
(63,'Pengakuan Pihak Pembeli','PPP',0,'Pengakuan Pihak Pembeli','0','','0',NULL,'2023-06-23 10:52:22'),
(64,'Sales Collection Discount','SCD',0,'Pelunasan Piutang Diskon','0','','0',NULL,'2023-12-23 10:57:31'),
(65,'Jurnal Umum','JU',0,'Jurnal Umum','0','','0',NULL,'2024-06-25 14:38:59');

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

/*Data for the table `purchase_invoice` */

insert  into `purchase_invoice`(`purchase_invoice_id`,`goods_received_note_id`,`purchase_order_id`,`branch_id`,`supplier_id`,`warehouse_id`,`payment_method_account_id`,`ongkir_account_id`,`purchase_invoice_date`,`purchase_invoice_payment_terms`,`purchase_invoice_due_date`,`purchase_invoice_no`,`purchase_invoice_reference_no`,`purchase_invoice_remark`,`purchase_police_number`,`subtotal_item`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`purchase_handling_fee`,`ppn_in_amount`,`tax_percentage`,`tax_amount`,`faktur_tax_no`,`total_amount`,`paid_amount`,`payment_discount`,`owing_amount`,`shortover_amount`,`down_payment_amount`,`purchase_return_amount`,`debit_amount`,`purchase_invoice_status`,`purchase_invoice_token`,`purchase_invoice_token_void`,`voided_id`,`voided_on`,`voided_remark`,`record_no`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(28,19,243,1,8,6,0,0,'2024-01-20',0.00,'2024-01-30','0001/PI/I/2024','',NULL,'',264240,1166479552.80,0.00,0.00,0.00,115597073,0.00,0.00,NULL,1166479552.80,1066479553.00,0.00,99999999.80,0.00,0.00,0.00,0.00,0,NULL,NULL,0,NULL,NULL,'',0,75,'2024-01-20 08:05:23','2024-01-20 08:11:23'),
(29,20,244,1,8,6,0,0,'2024-01-20',0.00,'2024-01-30','0002/PI/I/2024','',NULL,'',264240,1261217520.00,0.00,0.00,0.00,124985520,0.00,0.00,NULL,1261217520.00,1261217520.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL,0,NULL,NULL,'',0,75,'2024-01-20 08:14:27','2024-01-20 08:18:08');

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

/*Data for the table `purchase_invoice_item` */

insert  into `purchase_invoice_item`(`purchase_invoice_item_id`,`purchase_invoice_id`,`goods_received_note_item_id`,`item_category_id`,`item_type_id`,`item_id`,`quantity_scale`,`quantity`,`item_unit_id`,`item_unit_cost`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`subtotal_amount_after_discount`,`purchase_invoice_item_token`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(50,28,506,1,1,NULL,0.00,7416.00,1,3977.00,29493432.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:05:23','2024-01-20 08:05:23'),
(51,28,507,1,1,NULL,0.00,99504.00,1,3977.00,395727408.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:05:23','2024-01-20 08:05:23'),
(52,28,508,1,1,NULL,0.00,97416.00,1,3977.00,387423432.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:05:23','2024-01-20 08:05:23'),
(53,28,509,1,1,NULL,0.00,59904.00,1,3977.00,238238208.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:05:23','2024-01-20 08:05:23'),
(54,29,510,1,1,NULL,0.00,99216.00,1,4300.00,426628800.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:14:27','2024-01-20 08:14:27'),
(55,29,511,1,1,NULL,0.00,40248.00,1,4300.00,173066400.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:14:27','2024-01-20 08:14:27'),
(56,29,512,1,1,NULL,0.00,27432.00,1,4300.00,117957600.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:14:27','2024-01-20 08:14:27'),
(57,29,513,1,1,NULL,0.00,97344.00,1,4300.00,418579200.00,0.00,0.00,0.00,NULL,0,75,'2024-01-20 08:14:27','2024-01-20 08:14:27');

/*Table structure for table `purchase_order` */

DROP TABLE IF EXISTS `purchase_order`;

CREATE TABLE `purchase_order` (
  `purchase_order_id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `purchase_order_no` varchar(20) DEFAULT '',
  `purchase_order_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT '1',
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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb3;

/*Data for the table `purchase_order` */

insert  into `purchase_order`(`purchase_order_id`,`supplier_id`,`warehouse_id`,`purchase_order_no`,`purchase_order_date`,`payment_method`,`purchase_order_shipment_date`,`purchase_order_payment_terms`,`purchase_order_remark`,`total_item`,`total_received_item`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`ppn_in_percentage`,`ppn_in_amount`,`subtotal_after_ppn_in`,`tax_percentage`,`tax_amount`,`total_amount`,`down_payment_amount`,`down_payment_amount_balance`,`last_balance_amount`,`purchase_order_type_id`,`purchase_order_status`,`purchase_invoice_status`,`item_type`,`branch_id`,`approved`,`approved_id`,`approved_on`,`approved_remark`,`closed_remark`,`voided_id`,`voided_on`,`voided_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(276,7,1,'0001/PO/XII/2024','2024-12-13','0','2024-12-13',0,NULL,100.00,100.00,0.00,0.00,0.00,11.00,55000.00,555000.00,0.00,0.00,500000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-12-13 08:09:08','2024-12-13 09:20:29'),
(277,7,1,'0002/PO/XII/2024','2024-12-16','0','2024-12-16',0,NULL,150.00,150.00,0.00,0.00,0.00,11.00,16500.00,166500.00,0.00,0.00,150000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-12-16 04:09:18','2024-12-16 04:12:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `purchase_order_item` */

insert  into `purchase_order_item`(`purchase_order_item_id`,`purchase_order_id`,`purchase_requisition_id`,`purchase_requisition_item_id`,`item_category_id`,`item_unit_id`,`item_type_id`,`quantity`,`quantity_outstanding`,`quantity_received`,`quantity_return`,`item_unit_cost`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`subtotal_amount_after_discount`,`purchase_order_item_creassing`,`purchase_order_token`,`data_state`,`created_id`,`created_at`,`voided_id`,`voided_on`,`updated_at`) values 
(1,276,0,0,1,10,1,100,0,100,0,5000,500000,0,0,0,'','',0,0,'2024-12-13 08:09:08',0,NULL,'2024-12-13 09:20:29'),
(2,277,0,0,1,10,1,100,0,100,0,1000,100000,0,0,0,'','',0,0,'2024-12-16 04:09:18',0,NULL,'2024-12-16 04:12:19'),
(3,277,0,0,1,22,2,50,0,50,0,1000,50000,NULL,0,0,'','',0,0,'2024-12-16 04:09:18',0,NULL,'2024-12-16 04:12:19');

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

/*Data for the table `purchase_order_return` */

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

/*Data for the table `purchase_order_return_item` */

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

/*Data for the table `purchase_order_type` */

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

/*Data for the table `purchase_payment` */

insert  into `purchase_payment`(`payment_id`,`branch_id`,`supplier_id`,`payment_date`,`payment_no`,`reference_number`,`cash_account_id`,`payment_remark`,`payment_amount`,`payment_allocated`,`payment_shortover`,`payment_total_amount`,`payment_shortover_remark`,`payment_total_cash_amount`,`payment_total_transfer_amount`,`payment_total_giro_amount`,`payment_token`,`payment_token_void`,`voided_id`,`voided_on`,`voided_remark`,`posted`,`posted_id`,`posted_on`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(30,1,8,'2024-01-20','0001/PH/I/2024','',8,NULL,1066479553.00,1066479553.00,0.00,1066479553.00,'',0.00,1066479553.00,0.00,NULL,NULL,0,NULL,'','0',0,NULL,0,75,'2024-01-20 08:11:23','2024-01-20 08:11:23'),
(31,1,8,'2024-01-20','0002/PH/I/2024','',8,NULL,1261217520.00,1261217520.00,0.00,1261217520.00,'',0.00,1261217520.00,0.00,NULL,NULL,0,NULL,'','0',0,NULL,0,75,'2024-01-20 08:18:08','2024-01-20 08:18:08');

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

/*Data for the table `purchase_payment_item` */

insert  into `purchase_payment_item`(`payment_item_id`,`payment_id`,`purchase_invoice_id`,`purchase_invoice_no`,`purchase_invoice_date`,`purchase_invoice_amount`,`total_amount`,`paid_amount`,`owing_amount`,`shortover_amount`,`allocation_amount`,`payment_discount`,`payment_item_token`,`payment_item_token_void`,`last_balance`,`created_at`,`updated_at`) values 
(29,30,28,'0001/PI/I/2024','2024-01-20',1166479552.80,1166479552.80,0.00,1166479552.80,0.00,1066479553.00,NULL,NULL,NULL,99999999.80,'2024-01-20 08:11:23','2024-01-20 08:11:23'),
(30,31,29,'0002/PI/I/2024','2024-01-20',1261217520.00,1261217520.00,0.00,1261217520.00,0.00,1261217520.00,NULL,NULL,NULL,0.00,'2024-01-20 08:18:08','2024-01-20 08:18:08');

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

/*Data for the table `purchase_payment_transfer` */

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

/*Data for the table `return_pdp` */

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

/*Data for the table `return_pdp_item` */

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

/*Data for the table `return_pdp_lost_on_expedition` */

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

/*Data for the table `return_pdp_lost_on_expedition_item` */

/*Table structure for table `sales_collection` */

DROP TABLE IF EXISTS `sales_collection`;

CREATE TABLE `sales_collection` (
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
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
  CONSTRAINT `FK_sales_collection_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `core_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_collection` */

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_collection_item` */

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

/*Data for the table `sales_customer` */

/*Table structure for table `sales_delivery_note` */

DROP TABLE IF EXISTS `sales_delivery_note`;

CREATE TABLE `sales_delivery_note` (
  `sales_delivery_note_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_order_id` bigint DEFAULT '0',
  `sales_quotation_id` bigint DEFAULT '0',
  `sales_delivery_note_date` date DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_note` */

insert  into `sales_delivery_note`(`sales_delivery_note_id`,`sales_delivery_order_id`,`sales_quotation_id`,`sales_delivery_note_date`,`shipment_planning_id`,`sales_order_id`,`warehouse_id`,`section_id`,`salesman_id`,`customer_id`,`expedition_id`,`sales_delivery_note_cost`,`sales_delivery_note_no`,`ppn_out_amount`,`expedition_receipt_no`,`customer_name`,`customer_address`,`customer_city`,`customer_home_phone`,`customer_mobile_phone1`,`driver_name`,`fleet_police_number`,`purchase_order_no`,`salesman_name`,`sales_delivery_note_status`,`sales_invoice_status`,`sales_delivery_note_remark`,`posted`,`posted_id`,`posted_on`,`voided_id`,`voided_on`,`voided_remark`,`rejected_id`,`rejected_on`,`rejected_remark`,`branch_id`,`return_status`,`pdp_lost_on_expedition_status`,`buyers_acknowledgment_status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(13,0,1,'2025-01-20',0,0,1,NULL,NULL,175,16,0.00,'0001/SDN/I/2025',NULL,'1212121212','',NULL,'','','','Daffa','AD 19281 CU',NULL,'',0,1,'TEST SJ',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,1,0,NULL,0,0,3,'2025-01-20 08:33:11','2025-01-20 08:34:03');

/*Table structure for table `sales_delivery_note_item` */

DROP TABLE IF EXISTS `sales_delivery_note_item`;

CREATE TABLE `sales_delivery_note_item` (
  `sales_delivery_note_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_delivery_note_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_quotation_item_id` bigint DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_note_item` */

insert  into `sales_delivery_note_item`(`sales_delivery_note_item_id`,`sales_delivery_note_id`,`sales_order_id`,`sales_quotation_item_id`,`sales_order_item_id`,`sales_delivery_order_id`,`sales_delivery_order_item_id`,`section_id`,`warehouse_id`,`supplier_id`,`item_category_id`,`item_id`,`item_type_id`,`item_unit_id`,`item_unit_id_unit`,`quantity`,`quantity_unit`,`item_default_quantity_unit`,`item_weight_unit`,`item_batch_number`,`sales_delivery_note_item_token`,`sales_delivery_note_item_token_void`,`return_item_status`,`data_state`,`item_unit_price`,`subtotal_price`,`hpp_amount`,`hpp_account_id`,`created_id`,`created_at`,`updated_at`) values 
(14,13,0,1,0,0,0,0,0,0,0,0,1,10,0,'100.00','0.00','1','0',NULL,NULL,NULL,0,0,1000.00,100000.00,0.00,0,3,'2025-01-20 08:33:11','2025-01-20 08:33:11'),
(15,13,0,2,0,0,0,0,0,0,0,0,2,22,0,'100.00','0.00','1','0',NULL,NULL,NULL,0,0,2000.00,200000.00,0.00,0,3,'2025-01-20 08:33:11','2025-01-20 08:33:11');

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

/*Data for the table `sales_delivery_note_item_stock` */

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

/*Data for the table `sales_delivery_order` */

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

/*Data for the table `sales_delivery_order_item` */

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

/*Data for the table `sales_delivery_order_item_composition` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sales_delivery_order_item_stock` */

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

/*Data for the table `sales_delivery_order_item_stock_temporary` */

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

/*Data for the table `sales_delivery_order_warehouse` */

/*Table structure for table `sales_invoice` */

DROP TABLE IF EXISTS `sales_invoice`;

CREATE TABLE `sales_invoice` (
  `sales_invoice_id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT '0',
  `warehouse_id` int DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `sales_quotation_id` bigint DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_invoice` */

insert  into `sales_invoice`(`sales_invoice_id`,`branch_id`,`warehouse_id`,`customer_id`,`sales_quotation_id`,`sales_order_id`,`sales_delivery_note_id`,`collection_method_account_id`,`services_income_id`,`sales_invoice_no`,`sales_invoice_reference_no`,`sales_invoice_date`,`sales_invoice_due_date`,`sales_invoice_remark`,`sales_invoice_status`,`services_income_amount`,`subtotal_item`,`subtotal_amount`,`subtotal_before_discount`,`discount_percentage`,`discount_amount`,`return_status`,`subtotal_after_discount`,`tax_percentage`,`tax_amount`,`goods_received_note_no`,`faktur_tax_no`,`buyers_acknowledgment_id`,`buyers_acknowledgment_no`,`ttf_no`,`kwitansi_status`,`total_amount`,`paid_amount`,`owing_amount`,`shortover_amount`,`last_balance`,`total_discount_amount`,`paid_discount_amount`,`owing_discount_amount`,`shortover_discount_amount`,`discount_last_balance`,`cash_advance_amount`,`change_amount`,`sales_return_amount`,`sales_collection_date`,`sales_invoice_token`,`sales_invoice_token_void`,`voided_id`,`voided_on`,`voided_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(12,1,1,175,1,0,13,0,0,'0001/TMO.ME/I/2025','','2025-01-20','2025-01-31',NULL,0,0.00,NULL,333000,0,0.00,0,0,300000,0.00,33000.00,NULL,'0',0,'0','',0,333000,0,333000,0,0,0,0,0,0,0,0,0,0.00,NULL,NULL,NULL,0,NULL,NULL,0,3,'2025-01-20 08:34:03','2025-01-20 08:34:03');

/*Table structure for table `sales_invoice_item` */

DROP TABLE IF EXISTS `sales_invoice_item`;

CREATE TABLE `sales_invoice_item` (
  `sales_invoice_item_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_invoice_id` bigint DEFAULT '0',
  `sales_order_id` bigint DEFAULT '0',
  `sales_quotation_id` bigint DEFAULT '0',
  `sales_quotation_item_id` bigint DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_invoice_item` */

insert  into `sales_invoice_item`(`sales_invoice_item_id`,`sales_invoice_id`,`sales_order_id`,`sales_quotation_id`,`sales_quotation_item_id`,`sales_delivery_note_id`,`sales_delivery_note_item_id`,`item_id`,`item_type_id`,`item_unit_id`,`quantity`,`item_unit_price`,`item_unit_price_tax`,`discount_A`,`discount_B`,`subtotal_price_A`,`subtotal_price_B`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(11,12,NULL,1,1,13,14,0,1,10,100,1000,0,NULL,NULL,100000,NULL,0,3,'2025-01-20 08:34:03','2025-01-20 08:34:03'),
(12,12,NULL,1,2,13,15,0,2,22,100,2000,0,NULL,NULL,200000,NULL,0,3,'2025-01-20 08:34:03','2025-01-20 08:34:03');

/*Table structure for table `sales_order` */

DROP TABLE IF EXISTS `sales_order`;

CREATE TABLE `sales_order` (
  `sales_order_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_order_type_id` bigint DEFAULT '0',
  `customer_id` int DEFAULT '0',
  `salesman_id` int DEFAULT '0',
  `receipt_image` varchar(500) DEFAULT '',
  `sales_order_no` varchar(50) DEFAULT '',
  `payment_method` int DEFAULT '0' COMMENT '1 = Cash, 2 = Kredit',
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

/*Data for the table `sales_order` */

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

/*Data for the table `sales_order_item` */

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

/*Data for the table `sales_order_return` */

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

/*Data for the table `sales_order_return_item` */

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

/*Data for the table `sales_order_type` */

insert  into `sales_order_type`(`sales_order_type_id`,`sales_order_type_name`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,'Kwitansi',0,NULL,NULL,'2023-06-23 10:52:23'),
(2,'Invoice',0,NULL,NULL,'2023-06-23 10:52:23');

/*Table structure for table `sales_quotation` */

DROP TABLE IF EXISTS `sales_quotation`;

CREATE TABLE `sales_quotation` (
  `sales_quotation_id` bigint NOT NULL AUTO_INCREMENT,
  `sales_quotation_type_id` bigint DEFAULT '0',
  `purchase_order_customer` varchar(255) DEFAULT '0',
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
  `sales_delivery_note_status` int DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_quotation` */

insert  into `sales_quotation`(`sales_quotation_id`,`sales_quotation_type_id`,`purchase_order_customer`,`customer_id`,`salesman_id`,`receipt_image`,`sales_quotation_no`,`sales_quotation_date`,`sales_quotation_due_date`,`sales_quotation_status`,`sales_quotation_over_limit`,`sales_quotation_over_due_status`,`work_order_status`,`purchase_requisition_status`,`sales_quotation_design_status`,`sales_delivery_order_status`,`sales_delivery_note_status`,`customer_credit_limit_balance`,`sales_invoice_status`,`sales_invoice_last_balance`,`sales_quotation_remark`,`sales_quotation_over_remark`,`total_item`,`subtotal_before_discount`,`discount_percentage`,`discount_amount`,`subtotal_after_discount`,`ppn_out_percentage`,`ppn_out_amount`,`subtotal_after_ppn_out`,`sales_shipment_status`,`paid_amount`,`total_amount`,`last_balance`,`counter_edited`,`branch_id`,`data_state`,`created_id`,`created_at`,`approved`,`approved_id`,`approved_on`,`approved_remark`,`closed`,`closed_id`,`closed_on`,`closed_remark`,`voided_id`,`voided_on`,`voided_remark`,`customer_no`,`updated_at`) values 
(1,0,'0',175,0,'','0001/QO/I/2025','2025-01-20','2025-01-31',0,0.00,0,0,0,0,0,1,0.00,0,0.00,NULL,NULL,200.00,0.00,0.00,0.00,300000.00,11.00,33000.00,333000.00,0,0.00,333000.00,0.00,0,1,0,0,'2025-01-20 08:28:06',1,0,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,'','2025-01-20 08:33:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_quotation_item` */

insert  into `sales_quotation_item`(`sales_quotation_item_id`,`sales_quotation_id`,`item_category_id`,`item_type_id`,`quantity`,`quantity_delivered`,`quantity_shipped`,`quantity_planned`,`quantity_outstanding`,`quantity_received`,`quantity_ordered`,`quantity_cavity`,`quantity_minimum`,`quantity_resulted`,`sales_quotation_item_status`,`item_substance_price`,`item_unit_id`,`item_unit_price`,`item_unit_price_adds`,`purchase_requisition_status`,`purchase_order_status`,`work_order_status`,`sales_delivery_order_status`,`sales_delivery_note_status`,`sales_invoice_status`,`quantity_minimum_status`,`subtotal_amount`,`subtotal_additional_amount`,`subtotal_item_amount`,`sales_quotation_no`,`sales_quotation_status`,`discount_percentage_item`,`discount_percentage_item_b`,`discount_amount_item`,`discount_amount_item_b`,`subtotal_after_discount_item_a`,`subtotal_after_discount_item_b`,`total_price_after_ppn_amount`,`ppn_amount_item`,`record_id`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,1,1,100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0,0.00,10,1000.00,0.00,0,0,0,0,0,0,0,100000.00,0.00,0.00,'',0,NULL,NULL,0.00,NULL,100000.00,NULL,0.00,0.00,0,0,0,'2025-01-20 08:28:07','2025-01-20 08:28:07'),
(2,1,1,2,100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0,0.00,22,2000.00,0.00,0,0,0,0,0,0,0,200000.00,0.00,0.00,'',0,NULL,NULL,0.00,NULL,200000.00,NULL,222000.00,22000.00,0,0,0,'2025-01-20 08:28:07','2025-01-20 08:28:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

/*Data for the table `system_log_user` */

insert  into `system_log_user`(`user_log_id`,`user_id`,`username`,`id_previllage`,`log_stat`,`class_name`,`pk`,`remark`,`log_time`,`created_at`,`updated_at`) values 
(1,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2022-02-08 12:56:56','2022-02-08 12:56:56','2023-06-23 10:52:23'),
(2,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2022-02-08 13:41:13','2022-02-08 13:41:13','2023-06-23 10:52:23'),
(3,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2022-12-24 12:00:23','2022-12-24 12:00:23','2023-06-23 10:52:23'),
(4,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-02-10 15:08:35','2023-02-10 15:08:35','2023-06-23 10:52:23'),
(5,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-02-10 15:09:37','2023-02-10 15:09:37','2023-06-23 10:52:23'),
(6,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-02-13 10:01:27','2023-02-13 10:01:27','2023-06-23 10:52:23'),
(7,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 15:18:31','2023-05-11 15:18:31','2023-06-23 10:52:23'),
(8,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 15:18:31','2023-05-11 15:18:31','2023-06-23 10:52:23'),
(9,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:02:45','2023-05-11 16:02:45','2023-06-23 10:52:23'),
(10,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:09:04','2023-05-11 16:09:04','2023-06-23 10:52:23'),
(11,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:20:53','2023-05-11 16:20:53','2023-06-23 10:52:23'),
(12,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:24:03','2023-05-11 16:24:03','2023-06-23 10:52:23'),
(13,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:26:37','2023-05-11 16:26:37','2023-06-23 10:52:23'),
(14,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:34:13','2023-05-11 16:34:13','2023-06-23 10:52:23'),
(15,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 16:41:29','2023-05-11 16:41:29','2023-06-23 10:52:23'),
(16,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 22:49:59','2023-05-11 22:49:59','2023-06-23 10:52:23'),
(17,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 22:52:46','2023-05-11 22:52:46','2023-06-23 10:52:23'),
(18,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-11 23:08:21','2023-05-11 23:08:21','2023-06-23 10:52:23'),
(19,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-12 00:06:13','2023-05-12 00:06:13','2023-06-23 10:52:23'),
(20,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-12 00:10:18','2023-05-12 00:10:18','2023-06-23 10:52:23'),
(21,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-12 00:14:44','2023-05-12 00:14:44','2023-06-23 10:52:23'),
(22,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-12 17:43:25','2023-05-12 17:43:25','2023-06-23 10:52:23'),
(23,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-12 22:00:24','2023-05-12 22:00:24','2023-06-23 10:52:23'),
(24,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:11:39','2023-05-12 23:11:39','2023-06-23 10:52:23'),
(25,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:11:39','2023-05-12 23:11:39','2023-06-23 10:52:23'),
(26,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:12:17','2023-05-12 23:12:17','2023-06-23 10:52:23'),
(27,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:12:17','2023-05-12 23:12:17','2023-06-23 10:52:23'),
(28,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:33:28','2023-05-12 23:33:28','2023-06-23 10:52:23'),
(29,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:35:04','2023-05-12 23:35:04','2023-06-23 10:52:23'),
(30,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-12 23:36:24','2023-05-12 23:36:24','2023-06-23 10:52:23'),
(31,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:16:37','2023-05-13 00:16:37','2023-06-23 10:52:23'),
(32,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:18:54','2023-05-13 00:18:54','2023-06-23 10:52:23'),
(33,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:21:15','2023-05-13 00:21:15','2023-06-23 10:52:23'),
(34,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:21:51','2023-05-13 00:21:51','2023-06-23 10:52:23'),
(35,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:23:10','2023-05-13 00:23:10','2023-06-23 10:52:23'),
(36,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:55:05','2023-05-13 00:55:05','2023-06-23 10:52:23'),
(37,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 00:55:05','2023-05-13 00:55:05','2023-06-23 10:52:23'),
(38,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-13 01:03:37','2023-05-13 01:03:37','2023-06-23 10:52:23'),
(39,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:15:08','2023-05-13 13:15:08','2023-06-23 10:52:23'),
(40,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:15:08','2023-05-13 13:15:08','2023-06-23 10:52:23'),
(41,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:15:08','2023-05-13 13:15:08','2023-06-23 10:52:23'),
(42,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:15:08','2023-05-13 13:15:08','2023-06-23 10:52:23'),
(43,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:15:08','2023-05-13 13:15:08','2023-06-23 10:52:23'),
(44,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:17:25','2023-05-13 13:17:25','2023-06-23 10:52:23'),
(45,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:19:07','2023-05-13 13:19:07','2023-06-23 10:52:23'),
(46,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:21:11','2023-05-13 13:21:11','2023-06-23 10:52:23'),
(47,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:23:28','2023-05-13 13:23:28','2023-06-23 10:52:23'),
(48,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:25:17','2023-05-13 13:25:17','2023-06-23 10:52:23'),
(49,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-05-13 13:28:35','2023-05-13 13:28:35','2023-06-23 10:52:23'),
(50,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:19:26','2023-05-14 19:19:26','2023-06-23 10:52:23'),
(51,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:19:30','2023-05-14 19:19:30','2023-06-23 10:52:23'),
(52,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:24:44','2023-05-14 19:24:44','2023-06-23 10:52:23'),
(53,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:24:44','2023-05-14 19:24:44','2023-06-23 10:52:23'),
(54,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:36:25','2023-05-14 19:36:25','2023-06-23 10:52:23'),
(55,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:36:25','2023-05-14 19:36:25','2023-06-23 10:52:23'),
(56,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-05-14 19:36:25','2023-05-14 19:36:25','2023-06-23 10:52:23'),
(57,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-06-15 21:22:21','2023-06-15 21:22:21','2023-06-23 10:52:23'),
(58,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:03:25','2023-06-15 22:03:25','2023-06-23 10:52:23'),
(59,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:08:11','2023-06-15 22:08:11','2023-06-23 10:52:23'),
(60,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:09:30','2023-06-15 22:09:30','2023-06-23 10:52:23'),
(61,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:11:01','2023-06-15 22:11:01','2023-06-23 10:52:23'),
(62,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:14:09','2023-06-15 22:14:09','2023-06-23 10:52:23'),
(63,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:17:32','2023-06-15 22:17:32','2023-06-23 10:52:23'),
(64,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:18:26','2023-06-15 22:18:26','2023-06-23 10:52:23'),
(65,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:21:06','2023-06-15 22:21:06','2023-06-23 10:52:23'),
(66,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:22:50','2023-06-15 22:22:50','2023-06-23 10:52:23'),
(67,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-06-15 22:42:57','2023-06-15 22:42:57','2023-06-23 10:52:23'),
(68,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:45:14','2023-06-15 22:45:14','2023-06-23 10:52:23'),
(69,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-06-15 22:53:56','2023-06-15 22:53:57','2023-06-23 10:52:23'),
(70,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-06-15 23:12:40','2023-06-15 23:12:40','2023-06-23 10:52:23'),
(71,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-06-15 23:15:50','2023-06-15 23:15:50','2023-06-23 10:52:23'),
(72,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-07-05 14:25:14','2023-07-05 14:25:14','2023-07-05 14:25:14'),
(73,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-07-05 14:27:14','2023-07-05 14:27:14','2023-07-05 14:27:14'),
(74,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-07-13 11:43:40','2023-07-13 11:43:40','2023-07-13 11:43:40'),
(75,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-07-24 13:54:13','2023-07-24 13:54:13','2023-07-24 13:54:13'),
(76,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-07-24 14:10:19','2023-07-24 14:10:19','2023-07-24 14:10:19'),
(77,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-07-24 14:16:59','2023-07-24 14:16:59','2023-07-24 14:16:59'),
(78,0,'administrator',1089,'1','Application.cashAcctReceipt.cashAcctReceiptinsertprocess','administrator','Add Cash Receipt','2023-07-24 14:17:25','2023-07-24 14:17:25','2023-07-24 14:17:25'),
(79,0,'administrator',1089,'1','Application.cashAcctDisbursement.cashAcctDisbursementinsertprocess','administrator','Add Cash Disbursement','2023-07-24 14:17:49','2023-07-24 14:17:49','2023-07-24 14:17:49'),
(80,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:14:07','2023-08-01 15:14:07','2023-08-01 15:14:07'),
(81,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:25:50','2023-08-01 15:25:50','2023-08-01 15:25:50'),
(82,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:28:41','2023-08-01 15:28:41','2023-08-01 15:28:41'),
(83,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:30:36','2023-08-01 15:30:36','2023-08-01 15:30:36'),
(84,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:30:48','2023-08-01 15:30:48','2023-08-01 15:30:48'),
(85,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:42:46','2023-08-01 15:42:46','2023-08-01 15:42:46'),
(86,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:51:07','2023-08-01 15:51:07','2023-08-01 15:51:07'),
(87,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:52:15','2023-08-01 15:52:15','2023-08-01 15:52:15'),
(88,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:53:06','2023-08-01 15:53:06','2023-08-01 15:53:06'),
(89,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:53:10','2023-08-01 15:53:10','2023-08-01 15:53:10'),
(90,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:54:05','2023-08-01 15:54:05','2023-08-01 15:54:05'),
(91,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:54:23','2023-08-01 15:54:23','2023-08-01 15:54:23'),
(92,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:55:07','2023-08-01 15:55:07','2023-08-01 15:55:07'),
(93,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:55:45','2023-08-01 15:55:45','2023-08-01 15:55:45'),
(94,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:56:10','2023-08-01 15:56:10','2023-08-01 15:56:10'),
(95,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:56:28','2023-08-01 15:56:28','2023-08-01 15:56:28'),
(96,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:56:37','2023-08-01 15:56:37','2023-08-01 15:56:37'),
(97,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:57:37','2023-08-01 15:57:37','2023-08-01 15:57:37'),
(98,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:57:53','2023-08-01 15:57:53','2023-08-01 15:57:53'),
(99,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:58:10','2023-08-01 15:58:10','2023-08-01 15:58:10'),
(100,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-01 15:58:30','2023-08-01 15:58:30','2023-08-01 15:58:30'),
(101,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-11 12:57:39','2023-08-11 12:57:39','2023-08-11 12:57:39'),
(102,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-11 13:20:18','2023-08-11 13:20:18','2023-08-11 13:20:18'),
(103,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-11 13:27:00','2023-08-11 13:27:00','2023-08-11 13:27:00'),
(104,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-11 13:41:27','2023-08-11 13:41:27','2023-08-11 13:41:27'),
(105,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:13:23','2023-08-15 11:13:23','2023-08-15 11:13:23'),
(106,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:15:26','2023-08-15 11:15:26','2023-08-15 11:15:26'),
(107,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:16:02','2023-08-15 11:16:02','2023-08-15 11:16:02'),
(108,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:16:25','2023-08-15 11:16:25','2023-08-15 11:16:25'),
(109,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:26:22','2023-08-15 11:26:22','2023-08-15 11:26:22'),
(110,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:27:12','2023-08-15 11:27:12','2023-08-15 11:27:12'),
(111,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:27:43','2023-08-15 11:27:43','2023-08-15 11:27:43'),
(112,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:32:26','2023-08-15 11:32:26','2023-08-15 11:32:26'),
(113,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-15 11:42:11','2023-08-15 11:42:11','2023-08-15 11:42:11'),
(114,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 09:49:26','2023-08-16 09:49:26','2023-08-16 09:49:26'),
(115,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:11:22','2023-08-16 10:11:22','2023-08-16 10:11:22'),
(116,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:11:57','2023-08-16 10:11:57','2023-08-16 10:11:57'),
(117,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:12:14','2023-08-16 10:12:14','2023-08-16 10:12:14'),
(118,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:20:48','2023-08-16 10:20:48','2023-08-16 10:20:48'),
(119,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:21:33','2023-08-16 10:21:33','2023-08-16 10:21:33'),
(120,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:21:52','2023-08-16 10:21:52','2023-08-16 10:21:52'),
(121,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:08','2023-08-16 10:22:08','2023-08-16 10:22:08'),
(122,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:20','2023-08-16 10:22:20','2023-08-16 10:22:20'),
(123,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:27','2023-08-16 10:22:27','2023-08-16 10:22:27'),
(124,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:33','2023-08-16 10:22:33','2023-08-16 10:22:33'),
(125,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:37','2023-08-16 10:22:37','2023-08-16 10:22:37'),
(126,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:22:54','2023-08-16 10:22:54','2023-08-16 10:22:54'),
(127,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:23:01','2023-08-16 10:23:01','2023-08-16 10:23:01'),
(128,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:23:24','2023-08-16 10:23:24','2023-08-16 10:23:24'),
(129,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:23:40','2023-08-16 10:23:40','2023-08-16 10:23:40'),
(130,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:24:01','2023-08-16 10:24:01','2023-08-16 10:24:01'),
(131,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:24:24','2023-08-16 10:24:24','2023-08-16 10:24:24'),
(132,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:24:50','2023-08-16 10:24:50','2023-08-16 10:24:50'),
(133,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:25:47','2023-08-16 10:25:47','2023-08-16 10:25:47'),
(134,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:26:20','2023-08-16 10:26:20','2023-08-16 10:26:20'),
(135,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:26:46','2023-08-16 10:26:46','2023-08-16 10:26:46'),
(136,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:26:51','2023-08-16 10:26:51','2023-08-16 10:26:51'),
(137,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:27:02','2023-08-16 10:27:02','2023-08-16 10:27:02'),
(138,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:27:07','2023-08-16 10:27:07','2023-08-16 10:27:07'),
(139,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:27:28','2023-08-16 10:27:28','2023-08-16 10:27:28'),
(140,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:27:42','2023-08-16 10:27:42','2023-08-16 10:27:42'),
(141,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 10:28:07','2023-08-16 10:28:07','2023-08-16 10:28:07'),
(142,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-16 10:53:35','2023-08-16 10:53:35','2023-08-16 10:53:35'),
(143,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-08-16 11:13:42','2023-08-16 11:13:42','2023-08-16 11:13:42'),
(144,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 13:29:36','2023-08-23 13:29:36','2023-08-23 13:29:36'),
(145,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 13:38:10','2023-08-23 13:38:10','2023-08-23 13:38:10'),
(146,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 13:38:10','2023-08-23 13:38:10','2023-08-23 13:38:10'),
(147,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 13:38:10','2023-08-23 13:38:10','2023-08-23 13:38:10'),
(148,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:15:17','2023-08-23 14:15:17','2023-08-23 14:15:17'),
(149,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:17:40','2023-08-23 14:17:40','2023-08-23 14:17:40'),
(150,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:20:11','2023-08-23 14:20:11','2023-08-23 14:20:11'),
(151,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:20:16','2023-08-23 14:20:16','2023-08-23 14:20:16'),
(152,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:21:55','2023-08-23 14:21:55','2023-08-23 14:21:55'),
(153,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-23 14:22:53','2023-08-23 14:22:53','2023-08-23 14:22:53'),
(154,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-25 12:53:40','2023-08-25 12:53:40','2023-08-25 12:53:40'),
(155,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-25 12:53:46','2023-08-25 12:53:46','2023-08-25 12:53:46'),
(156,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:34:46','2023-08-29 13:34:46','2023-08-29 13:34:46'),
(157,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:40:48','2023-08-29 13:40:48','2023-08-29 13:40:48'),
(158,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:48:22','2023-08-29 13:48:22','2023-08-29 13:48:22'),
(159,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:51:50','2023-08-29 13:51:50','2023-08-29 13:51:50'),
(160,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:56:56','2023-08-29 13:56:56','2023-08-29 13:56:56'),
(161,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 13:59:36','2023-08-29 13:59:36','2023-08-29 13:59:36'),
(162,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-08-29 14:27:10','2023-08-29 14:27:10','2023-08-29 14:27:10'),
(163,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-09-06 13:20:41','2023-09-06 13:20:41','2023-09-06 13:20:41'),
(164,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-09-11 14:41:59','2023-09-11 14:41:59','2023-09-11 14:41:59'),
(165,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-09-11 15:30:56','2023-09-11 15:30:56','2023-09-11 15:30:56'),
(166,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-10-09 10:21:37','2023-10-09 10:21:37','2023-10-09 10:21:37'),
(167,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-10-10 14:37:28','2023-10-10 14:37:28','2023-10-10 14:37:28'),
(168,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2023-10-19 13:39:12','2023-10-19 13:39:12','2023-10-19 13:39:12'),
(169,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-07 10:31:50','2023-12-07 10:31:50','2023-12-07 10:31:50'),
(170,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-07 13:24:58','2023-12-07 13:24:58','2023-12-07 13:24:58'),
(171,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-09 11:09:18','2023-12-09 11:09:18','2023-12-09 11:09:18'),
(172,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:02:16','2023-12-10 05:02:17','2023-12-10 05:02:17'),
(173,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:09:46','2023-12-10 05:09:46','2023-12-10 05:09:46'),
(174,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:11:28','2023-12-10 05:11:28','2023-12-10 05:11:28'),
(175,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:12:03','2023-12-10 05:12:03','2023-12-10 05:12:03'),
(176,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:12:31','2023-12-10 05:12:31','2023-12-10 05:12:31'),
(177,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:14:11','2023-12-10 05:14:11','2023-12-10 05:14:11'),
(178,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:14:43','2023-12-10 05:14:43','2023-12-10 05:14:43'),
(179,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:15:48','2023-12-10 05:15:48','2023-12-10 05:15:48'),
(180,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:16:02','2023-12-10 05:16:02','2023-12-10 05:16:02'),
(181,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:17:48','2023-12-10 05:17:48','2023-12-10 05:17:48'),
(182,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:18:31','2023-12-10 05:18:31','2023-12-10 05:18:31'),
(183,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:18:48','2023-12-10 05:18:48','2023-12-10 05:18:48'),
(184,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:31:05','2023-12-10 05:31:05','2023-12-10 05:31:05'),
(185,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:31:34','2023-12-10 05:31:34','2023-12-10 05:31:34'),
(186,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:32:27','2023-12-10 05:32:27','2023-12-10 05:32:27'),
(187,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 05:34:18','2023-12-10 05:34:18','2023-12-10 05:34:18'),
(188,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 08:16:54','2023-12-10 08:16:54','2023-12-10 08:16:54'),
(189,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-10 08:36:25','2023-12-10 08:36:25','2023-12-10 08:36:25'),
(190,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:21:47','2023-12-14 10:21:47','2023-12-14 10:21:47'),
(191,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:27:45','2023-12-14 10:27:45','2023-12-14 10:27:45'),
(192,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:28:00','2023-12-14 10:28:00','2023-12-14 10:28:00'),
(193,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:28:27','2023-12-14 10:28:27','2023-12-14 10:28:27'),
(194,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:29:05','2023-12-14 10:29:05','2023-12-14 10:29:05'),
(195,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:29:22','2023-12-14 10:29:22','2023-12-14 10:29:22'),
(196,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:30:10','2023-12-14 10:30:10','2023-12-14 10:30:10'),
(197,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:30:21','2023-12-14 10:30:21','2023-12-14 10:30:21'),
(198,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 10:30:35','2023-12-14 10:30:35','2023-12-14 10:30:35'),
(199,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-14 14:03:44','2023-12-14 14:03:45','2023-12-14 14:03:45'),
(200,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-16 09:51:21','2023-12-16 09:51:21','2023-12-16 09:51:21'),
(201,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-16 10:41:37','2023-12-16 10:41:37','2023-12-16 10:41:37'),
(202,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:34:19','2023-12-22 14:34:19','2023-12-22 14:34:19'),
(203,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:51:08','2023-12-22 14:51:09','2023-12-22 14:51:09'),
(204,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:52:48','2023-12-22 14:52:48','2023-12-22 14:52:48'),
(205,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:53:36','2023-12-22 14:53:36','2023-12-22 14:53:36'),
(206,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:55:57','2023-12-22 14:55:57','2023-12-22 14:55:57'),
(207,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:56:11','2023-12-22 14:56:11','2023-12-22 14:56:11'),
(208,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:56:39','2023-12-22 14:56:39','2023-12-22 14:56:39'),
(209,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:57:26','2023-12-22 14:57:26','2023-12-22 14:57:26'),
(210,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:58:55','2023-12-22 14:58:55','2023-12-22 14:58:55'),
(211,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 14:59:36','2023-12-22 14:59:36','2023-12-22 14:59:36'),
(212,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 15:03:01','2023-12-22 15:03:01','2023-12-22 15:03:01'),
(213,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-22 15:03:41','2023-12-22 15:03:41','2023-12-22 15:03:41'),
(214,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-26 15:18:28','2023-12-26 15:18:28','2023-12-26 15:18:28'),
(215,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2023-12-26 16:33:39','2023-12-26 16:33:39','2023-12-26 16:33:39'),
(216,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 11:12:10','2024-01-20 11:12:10','2024-01-20 11:12:10'),
(217,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 11:14:05','2024-01-20 11:14:05','2024-01-20 11:14:05'),
(218,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 11:59:35','2024-01-20 11:59:35','2024-01-20 11:59:35'),
(219,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 11:59:55','2024-01-20 11:59:55','2024-01-20 11:59:55'),
(220,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 12:21:34','2024-01-20 12:21:34','2024-01-20 12:21:34'),
(221,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 12:23:39','2024-01-20 12:23:39','2024-01-20 12:23:39'),
(222,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-01-20 14:49:23','2024-01-20 14:49:23','2024-01-20 14:49:23'),
(223,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-01-29 14:05:05','2024-01-29 14:05:05','2024-01-29 14:05:05'),
(224,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-06-12 15:17:02','2024-06-12 15:17:02','2024-06-12 15:17:02'),
(225,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-06-13 11:39:56','2024-06-13 11:39:56','2024-06-13 11:39:56'),
(226,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-06-25 10:46:06','2024-06-25 10:46:06','2024-06-25 10:46:06'),
(227,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-06-25 10:46:54','2024-06-25 10:46:54','2024-06-25 10:46:54'),
(228,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-06-25 10:47:39','2024-06-25 10:47:39','2024-06-25 10:47:39'),
(229,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-06-25 15:41:03','2024-06-25 15:41:03','2024-06-25 15:41:03'),
(230,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-06-25 15:42:50','2024-06-25 15:42:50','2024-06-25 15:42:50'),
(231,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-06-26 11:56:49','2024-06-26 11:56:49','2024-06-26 11:56:49'),
(232,0,'PBF',2141,'1','SalesInvoice.printSalesInvoice','PBF','Print Sales Invoice','2024-06-28 09:16:41','2024-06-28 09:16:41','2024-06-28 09:16:41'),
(233,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-12-12 14:17:58','2024-12-12 14:17:58','2024-12-12 14:17:58'),
(234,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-12-27 13:41:14','2024-12-27 13:41:14','2024-12-27 13:41:14');

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

/*Data for the table `system_menu` */

insert  into `system_menu`(`id_menu`,`id`,`type`,`indent_level`,`text`,`image`,`last_update`) values 
('1','#','folder',1,'Persediaan',NULL,'2023-06-23 10:52:23'),
('11','#','folder',2,'Preferensi Produk',NULL,'2023-06-23 10:52:23'),
('111','inv-item','file',3,'Barang',NULL,'2023-06-23 10:52:23'),
('112','inv-item-type','file',3,'Tipe Barang',NULL,'2023-06-23 10:52:23'),
('113','inv-item-category','file',3,'Kategori Barang',NULL,'2023-06-23 10:52:23'),
('114','core-grade','file',3,'Grade',NULL,'2023-06-23 10:52:23'),
('115','inv-item-unit','file',3,'Satuan Barang',NULL,'2023-06-23 10:52:23'),
('116','core-package','file',3,'Package Barang',NULL,'2023-06-23 10:52:23'),
('12','#','folder',2,'Gudang',NULL,'2023-06-23 10:52:23'),
('121','warehouse-location','file',3,'Lokasi Gudang',NULL,'2023-06-23 10:52:23'),
('122','warehouse','file',3,'Gudang',NULL,'2023-06-23 10:52:23'),
('123','warehouse-transfer-type','file',3,'Tipe Transfer Gudang',NULL,'2023-06-23 10:52:23'),
('124','warehouse-transfer','file',3,'Transfer Gudang',NULL,'2023-06-23 10:52:23'),
('125','warehouse-transfer-received-note','file',3,'Penerimaan Transfer Gudang',NULL,'2023-06-23 10:52:23'),
('126','warehouse-out-type','file',3,'Tipe Pengeluaran Barang Gudang',NULL,'2023-06-23 10:52:23'),
('127','warehouse-out-requisition','file',3,'Pengeluaran Barang Gudang',NULL,'2023-06-23 10:52:23'),
('128','warehouse-out-approval','file',3,'Persetujuan Pengeluaran Barang Gudang',NULL,'2023-06-23 10:52:23'),
('129','warehouse-in-type','file',3,'Tipe Penambahan Barang Gudang',NULL,'2023-06-23 10:52:23'),
('130','warehouse-in-requisition','file',3,'Penambahan Barang Gudang',NULL,'2023-06-23 10:52:23'),
('131','warehouse-in-approval','file',3,'Persetujuan Penambahan Barang Gudang',NULL,'2023-06-23 10:52:23'),
('14','goods-received-note','file',2,'Penerimaan Barang',NULL,'2023-06-23 10:52:23'),
('15','item-stock','file',2,'Stock Barang',NULL,'2023-06-23 10:52:23'),
('16','item-stock-adjustment','file',2,'Penyesuaian Stock Barang',NULL,'2023-06-23 10:52:23'),
('17','item-stock-card','file',2,'Kartu Stock',NULL,'2023-06-23 10:52:23'),
('2','#','folder',1,'Pembelian',NULL,'2023-06-23 10:52:23'),
('21','#','folder',2,'Preferensi',NULL,'2023-06-23 10:52:23'),
('211','supplier','file',3,'Pemasok',NULL,'2023-06-23 10:52:23'),
('22','#','folder',2,'Order',NULL,'2023-06-23 10:52:23'),
('221','purchase-order','file',3,'Purchase Order',NULL,'2023-06-23 10:52:23'),
('222','purchase-order-approval','file',3,'Persetujuan Purchase Order',NULL,'2023-06-23 10:52:23'),
('23','#','folder',2,'Invoice',NULL,'2023-06-23 10:52:23'),
('231','purchase-invoice','file',3,'Inovice Pembelian',NULL,'2023-06-23 10:52:23'),
('24','#','folder',2,'Laporan',NULL,'2023-07-26 15:36:17'),
('240','purchase-order-return-report','file',3,'Laporan Retur Pembelian',NULL,'2023-07-26 15:40:54'),
('241','purchase-order-return','file',2,'Return Pembelian',NULL,'2023-06-23 10:52:23'),
('3','#','folder',1,'Penjualan',NULL,'2023-06-23 10:52:23'),
('31','#','folder',2,'Preferensi',NULL,'2023-06-23 10:52:23'),
('311','core-customer','file',3,'Pelanggan',NULL,'2024-12-19 16:10:16'),
('312','agency','file',3,'Agensi',NULL,'2023-06-23 10:52:23'),
('32','#','folder',2,'Quotation',NULL,'2024-10-17 13:36:10'),
('321','sales-quotation','file',3,'Sales Quotation',NULL,'2024-10-23 13:44:07'),
('322','sales-quotation-approval','file',3,'Persetujuan Quotation',NULL,'2024-10-23 13:43:47'),
('33','#','folder',2,'Order',NULL,'2024-10-17 11:26:56'),
('331','sales-order','file',3,'Sales Order',NULL,'2024-10-17 11:26:59'),
('332','sales-order-approval','file',3,'Persetujuan Sales Order',NULL,'2024-10-17 11:27:01'),
('34','#','folder',2,'Invoice',NULL,'2024-10-17 11:26:51'),
('341','sales-invoice','file',3,'Invoice Penjualan',NULL,'2024-10-17 11:26:48'),
('35','#','folder',2,'Laporan',NULL,'2024-10-17 11:26:43'),
('351','sales-invoice-report','file',3,'Laporan Penjualan',NULL,'2024-10-17 11:26:41'),
('36','sales-order-return','file',2,'Return Penjualan',NULL,'2024-10-17 11:26:38'),
('37','print-kwitansi','file',2,'Cetak Kwitansi',NULL,'2024-10-17 11:26:35'),
('4','#','folder',1,'Expedisi',NULL,'2023-06-23 10:52:23'),
('41','#','folder',2,'Preferensi',NULL,'2023-06-23 10:52:23'),
('411','expedition','file',3,'Expedisi',NULL,'2023-06-23 10:52:23'),
('42','#','folder',2,'Sales Delivery',NULL,'2023-06-23 10:52:23'),
('421','sales-delivery-order','file',3,'Sales Delivery Order',NULL,'2023-06-23 10:52:23'),
('422','sales-delivery-note','file',3,'Sales Delivery Note',NULL,'2023-06-23 10:52:23'),
('43','return-pdp','file',2,'Return Perjalanan',NULL,'2023-07-14 09:16:00'),
('44','return-pdp-lost-on-expedition','file',2,'PDP Hilang Di Expedisi',NULL,'2023-06-23 10:52:23'),
('45','buyers-acknowledgment','file',2,'Penerimaan Pihak Pembeli',NULL,'2023-09-01 11:15:34'),
('5','#','folder',1,'Produksi',NULL,'2023-06-23 10:52:23'),
('51','grading','file',2,'Grading',NULL,'2023-06-23 10:52:23'),
('6','#','folder',1,'Keuangan',NULL,'2023-06-23 10:52:23'),
('61','#','folder',2,'Hutang',NULL,'2025-01-13 10:34:08'),
('611','cash-receipt','file',3,'Penerimaan Kas',NULL,'2023-06-23 10:52:23'),
('612','cash-disbursement','file',3,'Pengeluaran Kas',NULL,'2023-06-23 10:52:23'),
('613','bank-receipt','file',3,'Penerimaan Bank',NULL,'2023-06-23 10:52:23'),
('614','bank-disbursement','file',3,'Pengeluaran Bank',NULL,'2023-06-23 10:52:23'),
('615','check-receipt','file',3,'Penerimaan Giro',NULL,'2023-06-23 10:52:23'),
('616','check-disbursement','file',3,'Pengeluaran Giro',NULL,'2023-06-23 10:52:23'),
('617','purchase-payment','file',3,'Pelunasan Hutang',NULL,'2023-06-23 10:52:23'),
('619','sales-discount-collection','file',3,'Pelunasan Piutang Diskon',NULL,'2023-12-11 12:09:13'),
('62','#','folder',2,'Laporan',NULL,'2023-06-23 10:52:23'),
('621','report-cash-receipt','file',3,'Laporan Penerimaan Kas',NULL,'2023-06-23 10:52:23'),
('622','report-cash-disbursement','file',3,'Laporan Pengeluaran Kas',NULL,'2023-06-23 10:52:23'),
('623','report-bank-receipt','file',3,'Laporan Penerimaan Bank',NULL,'2023-06-23 10:52:23'),
('624','report-bank-disbursement','file',3,'Laporan Pengeluaran Bank',NULL,'2023-06-23 10:52:23'),
('625','debt-card','file',3,'Kartu Hutang',NULL,'2023-12-27 16:36:38'),
('626','aging-account-payable','file',3,'Laporan Aging Hutang ',NULL,'2023-12-27 16:41:02'),
('627','aging-account-receivable','file',3,'Laporan Aging Piutang ',NULL,'2023-12-27 16:40:57'),
('63','sales-collection-piece','file',2,'Potongan',NULL,'2023-09-06 11:39:36'),
('64','sales-promotion','file',2,'Cetak Promosi',NULL,'2023-09-06 12:02:42'),
('65','#','file',2,'Piutang',NULL,'2025-01-13 10:34:00'),
('651','sales-collection','file',3,'Pelunasan Piutang',NULL,'2024-12-19 10:19:57'),
('652','cash-report','file',3,'Laporan Kas',NULL,'2024-12-19 10:19:57'),
('7','#','folder',1,'Akuntansi',NULL,'2023-06-23 10:52:23'),
('71','#','folder',2,'Preferensi',NULL,'2023-06-23 10:52:23'),
('711','account','file',3,'No. Perkiraan',NULL,'2023-06-23 10:52:23'),
('712','account-setting','file',3,'Setting Jurnal',NULL,'2024-12-12 15:53:10'),
('72','#','folder',2,'Jurnal',NULL,'2023-06-23 10:52:23'),
('721','journal','file',3,'Jurnal Umum',NULL,'2023-06-23 10:52:23'),
('722','journal-memorial','file',3,'Jurnal Memorial',NULL,'2024-12-12 11:37:16'),
('723','journal-Sales','file',3,'Jurnal Penjualan',NULL,'2023-07-24 11:35:43'),
('724','journal-CashBank','file',3,'Jurnal Kas Dan Bank',NULL,'2023-07-24 14:31:34'),
('73','ledger-report','file',2,'Buku Besar',NULL,'2023-12-07 14:17:07'),
('74','profit-loss-report','file',2,'PHU',NULL,'2023-06-27 23:07:17'),
('75','balance-sheet-report','file',2,'Neraca',NULL,'2023-06-23 10:54:43'),
('8','#','folder',1,'Preference',NULL,'2023-06-23 10:52:23'),
('81','preference-company','file',2,'Preferensi Perusahaan',NULL,'2023-06-23 10:52:23'),
('82','ppn','file',2,'Setting Default PPN',NULL,'2023-07-24 15:01:41'),
('9','#','folder',1,'System',NULL,'2024-10-17 11:39:04'),
('91','system-user-group','file',2,'System User Group',NULL,'2024-10-17 11:39:07'),
('92','system-user','file',2,'System User',NULL,'2024-10-17 11:39:09');

/*Table structure for table `system_menu_mapping` */

DROP TABLE IF EXISTS `system_menu_mapping`;

CREATE TABLE `system_menu_mapping` (
  `menu_mapping_id` int NOT NULL AUTO_INCREMENT,
  `user_group_level` int DEFAULT NULL,
  `id_menu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1985 DEFAULT CHARSET=utf8mb3;

/*Data for the table `system_menu_mapping` */

insert  into `system_menu_mapping`(`menu_mapping_id`,`user_group_level`,`id_menu`,`created_at`,`updated_at`) values 
(1227,1,'0','2024-10-17 04:38:36','2024-10-17 04:38:36'),
(1923,1,'1','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1924,1,'11','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1925,1,'111','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1926,1,'112','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1927,1,'113','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1928,1,'115','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1929,1,'12','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1930,1,'121','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1931,1,'122','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1932,1,'14','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1933,1,'15','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1934,1,'16','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1935,1,'17','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1936,1,'2','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1937,1,'21','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1938,1,'211','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1939,1,'22','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1940,1,'221','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1941,1,'222','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1942,1,'23','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1943,1,'231','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1944,1,'24','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1945,1,'240','2025-01-09 08:27:14','2025-01-09 08:27:14'),
(1946,1,'241','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1947,1,'3','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1948,1,'31','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1949,1,'311','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1950,1,'32','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1951,1,'321','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1952,1,'34','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1953,1,'341','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1954,1,'35','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1955,1,'351','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1956,1,'36','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1957,1,'4','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1958,1,'41','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1959,1,'411','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1960,1,'42','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1961,1,'422','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1962,1,'45','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1963,1,'6','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1964,1,'61','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1965,1,'617','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1966,1,'65','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1967,1,'651','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1968,1,'652','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1969,1,'7','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1970,1,'71','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1971,1,'711','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1972,1,'712','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1973,1,'72','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1974,1,'721','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1975,1,'722','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1976,1,'73','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1977,1,'74','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1978,1,'75','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1979,1,'8','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1980,1,'81','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1981,1,'82','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1982,1,'9','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1983,1,'91','2025-01-09 08:27:15','2025-01-09 08:27:15'),
(1984,1,'92','2025-01-09 08:27:15','2025-01-09 08:27:15');

/*Table structure for table `system_user` */

DROP TABLE IF EXISTS `system_user`;

CREATE TABLE `system_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_group_id` int DEFAULT NULL,
  `company_id` int DEFAULT '0',
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

/*Data for the table `system_user` */

insert  into `system_user`(`user_id`,`user_group_id`,`company_id`,`name`,`branch_id`,`email`,`email_verified_at`,`password`,`remember_token`,`data_state`,`created_at`,`updated_at`) values 
(3,1,2,'administrator',1,NULL,NULL,'$2y$10$E8BvoK6I2D7CDzz/mjKmE.3LQ4AW4rdcpU1ynbVqXzZCZYEGOcH0O',NULL,0,'2021-09-18 02:14:46','2023-02-06 04:15:25'),
(4,1,2,'demo',1,NULL,NULL,'$2y$10$E8BvoK6I2D7CDzz/mjKmE.3LQ4AW4rdcpU1ynbVqXzZCZYEGOcH0O',NULL,0,NULL,NULL);

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

/*Data for the table `system_user_group` */

insert  into `system_user_group`(`user_group_id`,`user_group_level`,`user_group_name`,`user_group_token`,`data_state`,`created_id`,`created_at`,`updated_id`,`updated_on`,`deleted_id`,`deleted_on`,`updated_at`) values 
(1,1,'admin','',0,0,NULL,0,NULL,0,NULL,'2023-06-23 10:52:23'),
(25,2,'APJ (Apoteker Penanggung Jawab)','',1,0,'2023-03-01 06:51:21',0,NULL,0,NULL,'2025-01-09 04:22:33');

/*Table structure for table `user_locations` */

DROP TABLE IF EXISTS `user_locations`;

CREATE TABLE `user_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `latitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `data_state` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_locations` */

insert  into `user_locations`(`id`,`user_id`,`latitude`,`longitude`,`data_state`,`created_at`,`updated_at`,`ip`) values 
(1,NULL,'-7.5558771','110.8642444',0,'2025-01-22 10:08:52','2025-01-22 10:08:52',NULL),
(2,NULL,'-7.5558771','110.8642444',0,'2025-01-22 10:10:28','2025-01-22 10:10:28','127.0.0.1');

/* Trigger structure for table `acct_bank_disbursement` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_bank_disbursement` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_bank_disbursement` BEFORE INSERT ON `acct_bank_disbursement` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nDisbursementNo		VARCHAR(20);
	
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.bank_disbursement_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.bank_disbursement_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.bank_disbursement_date)), 2));
	
	SET nDisbursementNo = CONCAT('BBK', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(bank_disbursement_no), 4) 
		FROM acct_bank_disbursement
		WHERE LEFT(TRIM(bank_disbursement_no), 7) = nDisbursementNo
		ORDER BY bank_disbursement_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nDisbursementNo = CONCAT(nDisbursementNo, period);
		
	SET new.bank_disbursement_no = nDisbursementNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_bank_receipt` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_bank_receipt` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_bank_receipt` BEFORE INSERT ON `acct_bank_receipt` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nReceiptNo		VARCHAR(20);
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.bank_receipt_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.bank_receipt_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.bank_receipt_date)), 2));
	
	SET nReceiptNo = CONCAT('BBM', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(bank_receipt_no), 4) 
		FROM acct_bank_receipt
		WHERE LEFT(TRIM(bank_receipt_no), 7) = nReceiptNo
		ORDER BY bank_receipt_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nReceiptNo = CONCAT(nReceiptNo, period);
		
	SET new.bank_receipt_no = nReceiptNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_cash_disbursement` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_cash_disbursement` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_cash_disbursement` BEFORE INSERT ON `acct_cash_disbursement` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nDisbursementNo		VARCHAR(20);
	
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.cash_disbursement_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.cash_disbursement_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.cash_disbursement_date)), 2));
	
	SET nDisbursementNo = CONCAT('BKK', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(cash_disbursement_no), 4) 
		FROM acct_cash_disbursement
		WHERE LEFT(TRIM(cash_disbursement_no), 7) = nDisbursementNo
		ORDER BY cash_disbursement_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nDisbursementNo = CONCAT(nDisbursementNo, period);
		
	SET new.cash_disbursement_no = nDisbursementNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_cash_receipt` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_cash_receipt` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_cash_receipt` BEFORE INSERT ON `acct_cash_receipt` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nReceiptNo		VARCHAR(20);
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.cash_receipt_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.cash_receipt_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.cash_receipt_date)), 2));
	
	SET nReceiptNo = CONCAT('BKM', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(cash_receipt_no), 4) 
		FROM acct_cash_receipt
		WHERE LEFT(TRIM(cash_receipt_no), 7) = nReceiptNo
		ORDER BY cash_receipt_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nReceiptNo = CONCAT(nReceiptNo, period);
		
	SET new.cash_receipt_no = nReceiptNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_check_disbursement` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_check_disbursement` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_check_disbursement` BEFORE INSERT ON `acct_check_disbursement` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nDisbursementNo		VARCHAR(20);
	
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.check_disbursement_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.check_disbursement_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.check_disbursement_date)), 2));
	
	SET nDisbursementNo = CONCAT('BGK', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(check_disbursement_no), 4) 
		FROM acct_check_disbursement
		WHERE LEFT(TRIM(check_disbursement_no), 7) = nDisbursementNo
		ORDER BY check_disbursement_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nDisbursementNo = CONCAT(nDisbursementNo, period);
		
	SET new.check_disbursement_no = nDisbursementNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_check_receipt` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_check_receipt` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_check_receipt` BEFORE INSERT ON `acct_check_receipt` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE day_period 		VARCHAR(20);
	DECLARE period 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nReceiptNo		VARCHAR(20);
	
	DECLARE nOpeningBalance		DECIMAL(20,2);
	DECLARE nLastBalance		DECIMAL(20,2);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	
	SET year_period = (SELECT RIGHT(YEAR(new.check_receipt_date),2));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.check_receipt_date)), 2));
	
	SET day_period = (SELECT RIGHT(CONCAT('0', DAY(new.check_receipt_date)), 2));
	
	SET nReceiptNo = CONCAT('BGM', year_period, month_period);
		
	SET period = (SELECT RIGHT(TRIM(check_receipt_no), 4) 
		FROM acct_check_receipt
		WHERE LEFT(TRIM(check_receipt_no), 7) = nReceiptNo
		ORDER BY check_receipt_id DESC 
		LIMIT 1);
	
	IF (period IS NULL ) THEN 
		SET period = "0000";
	END IF;
	
	SET tPeriod = CAST(period AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET period = RIGHT(CONCAT('000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nReceiptNo = CONCAT(nReceiptNo, period);
		
	SET new.check_receipt_no = nReceiptNo;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_journal_voucher` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_journal_voucher` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_journal_voucher` BEFORE INSERT ON `acct_journal_voucher` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nJournalVoucherNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	
	SET year_period = (YEAR(new.journal_voucher_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.journal_voucher_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(journal_voucher_no), 4) 
			FROM acct_journal_voucher
			WHERE RIGHT(TRIM(journal_voucher_no), 4) = year_period
			ORDER BY journal_voucher_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nJournalVoucherNo = CONCAT(PERIOD, '/JV/', monthPeriod, '/', year_period);
		
	SET new.journal_voucher_no = nJournalVoucherNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `acct_journal_voucher_item` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_journal_voucher_item` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_acct_journal_voucher_item` BEFORE INSERT ON `acct_journal_voucher_item` FOR EACH ROW BEGIN
	DECLARE nAccountIDDefaultStatus		DECIMAL(1);
	
	DECLARE nAccountID		INT(10);
	DECLARE nBranchID		INT(10);
	DECLARE nOpeningBalance		DECIMAL(20);
	DECLARE nLastBalance		DECIMAL(20);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	DECLARE nAccountIn		DECIMAL(20);
	DECLARE nAccountOut		DECIMAL(20);
	DECLARE nCreatedId		INT(10);
	
	
	SET nCreatedId			= (SELECT created_id FROM acct_journal_voucher
						WHERE journal_voucher_id = new.journal_voucher_id);
	
	SET nBranchID 			= (SELECT company_id FROM acct_journal_voucher
						WHERE journal_voucher_id = new.journal_voucher_id);
						
	SET nOpeningBalance 		= (SELECT last_balance FROM acct_account_balance
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
						
	IF ( nOpeningBalance IS NULL ) THEN
		SET nOpeningBalance = 0;
	END IF;
				
	SET nAccountIDDefaultStatus 	= (SELECT account_default_status FROM acct_account 
						WHERE account_id = new.account_id);
						
	IF (new.account_id_status = nAccountIDDefaultStatus) THEN
		SET nLastBalance 	= nOpeningBalance + new.journal_voucher_amount;
		SET nAccountIn 		= new.journal_voucher_amount;
		SET nAccountOut		= 0;
	ELSE
		SET nLastBalance 	= nOpeningBalance - new.journal_voucher_amount;
		SET nAccountIn 		= 0;
		SET nAccountOut		= new.journal_voucher_amount;
	END IF; 
	
	SET nAccountID 			= (SELECT account_id FROM acct_account_balance 
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
	
	IF (nAccountID IS NULL) THEN
		INSERT INTO acct_account_balance (company_id, account_id, last_balance, created_id) VALUES (nBranchID, new.account_id, nLastBalance, nCreatedId);
	ELSE 
		UPDATE acct_account_balance SET last_balance = nLastBalance
			WHERE account_id = new.account_id
			AND company_id = nBranchID;
	END IF;
	
		
	SET nTransactionType 		= (SELECT transaction_module_id FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
		
	SET nTransactionCode 		= (SELECT transaction_module_code FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
	
	SET nTransactionID 		= new.journal_voucher_id;
		
	SET nTransactionDate 		= (SELECT journal_voucher_date FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
		
	INSERT INTO acct_account_balance_detail (company_id, transaction_type, transaction_code, transaction_id, transaction_date, 
		account_id, opening_balance, account_in, account_out, last_balance, created_id)
		VALUES (nBranchID, nTransactionType, nTransactionCode, nTransactionID, nTransactionDate, 
			new.account_id, nOpeningBalance, nAccountIn, nAccountOut, nLastBalance, nCreatedId);
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_goods_received_note` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_goods_received_note` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_goods_received_note` BEFORE INSERT ON `inv_goods_received_note` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nInvGoodsReceivedNoteNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenInvGoodsReceivedNoteNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.goods_received_note_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.goods_received_note_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(goods_received_note_no), 4) 
			FROM inv_goods_received_note
			WHERE RIGHT(TRIM(goods_received_note_no), 4) = year_period
			ORDER BY goods_received_note_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvGoodsReceivedNoteNo = CONCAT(PERIOD, '/IGRN/', monthPeriod, '/', year_period);
		
	SET new.goods_received_note_no = nInvGoodsReceivedNoteNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_goods_received_note_item` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_item_stock_card_in` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_item_stock_card_in` AFTER INSERT ON `inv_goods_received_note_item` FOR EACH ROW BEGIN
	DECLARE nOpeningBalance 		DECIMAL(20,5); 
	DECLARE nLastOpeningBalance 		DECIMAL(20,5);  
	DECLARE nLastBalance	 		DECIMAL(20,5);
	DECLARE nQuantityReceived	 	DECIMAL(20,5);
	DECLARE nItemID				INT(18);
	DECLARE nWarehouseID			INT(10);
	DECLARE nSectionID			INT(10);
	
	DECLARE nTransactionID			BIGINT(22);
	DECLARE nTransactionType		DECIMAL(10);
	DECLARE nTransactionCode		VARCHAR(20);
	DECLARE nTransactionDate		DATE;
	
	DECLARE nQuantity 			DECIMAL(10,2);
	DECLARE nReceivedQuantity 		DECIMAL(10,2);
	DECLARE nItemStockID			BIGINT(22);
	DECLARE nLastItemStockID		BIGINT(22);
	DECLARE nFirstItemStockID			BIGINT(22);
	DECLARE nSecondItemStockID			BIGINT(22);
	
	
	SET nWarehouseID 	= (SELECT warehouse_id FROM inv_goods_received_note 
						WHERE goods_received_note_id = new.goods_received_note_id);
				
	SET nTransactionType 	= 1;
	
	SET nTransactionID 	= new.goods_received_note_id;
	
	SET nTransactionCode 	= 'INVT_GDS_RCV_NOTE';
	
	SET nTransactionDate 	= (SELECT goods_received_note_date FROM inv_goods_received_note
					WHERE goods_received_note_id = new.goods_received_note_id);
					
	SET nLastOpeningBalance = (SELECT last_balance FROM inv_item_stock_card
					WHERE item_type_id = new.item_type_id
					ORDER BY item_stock_card_id DESC LIMIT 1);
					
	SET nSecondItemStockID 	= (SELECT item_stock_id FROM inv_item_stock
					ORDER BY item_stock_id DESC LIMIT 1);
	
	SET nLastItemStockID 	= (SELECT item_stock_id FROM inv_item_stock 
					WHERE item_type_id = new.item_type_id
					ORDER BY item_stock_id DESC LIMIT 1);
					
					
	select auto_increment into nFirstItemStockID
	from information_schema.tables
	where table_name = 'inv_item_stock'
	and table_schema = database();
	
					
	IF (nLastItemStockID IS NULL) THEN
		if (nSecondItemStockID is null) then
			SET nItemStockID     = nFirstItemStockID;
		else
			SET nItemStockID     = nSecondItemStockID + 1;
		end if;
	ELSE
		SET nItemStockID     = nLastItemStockID;
	END IF;	
	
	SET nQuantityReceived   = new.quantity_received;
						
		
	if (nLastOpeningBalance is null) then
		SET nOpeningBalance     = 0;
		set nLastOpeningBalance = 0 + nQuantityReceived;
	else
		SET nOpeningBalance     = nLastOpeningBalance;
		set nLastOpeningBalance = nLastOpeningBalance + nQuantityReceived;
	end if;
	
	
	INSERT INTO inv_item_stock_card (item_stock_id, item_category_id, item_type_id, item_unit_id, warehouse_id, 
		transaction_id, transaction_type, transaction_code, transaction_date, 
		opening_balance, item_stock_card_in, last_balance)
		VALUES (nItemStockID, new.item_category_id, new.item_type_id, new.item_unit_id, nWarehouseID, 
			nTransactionID, nTransactionType, nTransactionCode, nTransactionDate,
			nOpeningBalance, nQuantityReceived, nLastOpeningBalance);
			
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_warehouse_in` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_warehouse_in` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_warehouse_in` BEFORE INSERT ON `inv_warehouse_in` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nInvWarehouseInNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenInvWarehouseInNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.warehouse_in_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.warehouse_in_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(warehouse_in_no), 4) 
			FROM inv_warehouse_in
			WHERE RIGHT(TRIM(warehouse_in_no), 4) = year_period
			ORDER BY warehouse_in_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvWarehouseInNo = CONCAT(PERIOD, '/WI/', monthPeriod, '/', year_period);
		
	SET new.warehouse_in_no = nInvWarehouseInNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_warehouse_out` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_warehouse_out` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_warehouse_out` BEFORE INSERT ON `inv_warehouse_out` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nInvWarehouseOutNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenInvWarehouseOutNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.warehouse_out_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.warehouse_out_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(warehouse_out_no), 4) 
			FROM inv_warehouse_out
			WHERE RIGHT(TRIM(warehouse_out_no), 4) = year_period
			ORDER BY warehouse_out_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvWarehouseOutNo = CONCAT(PERIOD, '/WO/', monthPeriod, '/', year_period);
		
	SET new.warehouse_out_no = nInvWarehouseOutNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_warehouse_transfer` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_warehouse_transfer` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_warehouse_transfer` BEFORE INSERT ON `inv_warehouse_transfer` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nInvWarehouseTransferNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenInvWarehouseTransferNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.warehouse_transfer_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.warehouse_transfer_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(warehouse_transfer_no), 4) 
			FROM inv_warehouse_transfer
			WHERE RIGHT(TRIM(warehouse_transfer_no), 4) = year_period
			ORDER BY warehouse_transfer_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvWarehouseTransferNo = CONCAT(PERIOD, '/WT/', monthPeriod, '/', year_period);
		
	SET new.warehouse_transfer_no = nInvWarehouseTransferNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `inv_warehouse_transfer_received_note` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_inv_warehouse_transfer_received_note` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_inv_warehouse_transfer_received_note` BEFORE INSERT ON `inv_warehouse_transfer_received_note` FOR EACH ROW BEGIN
	DECLARE year_period 				VARCHAR(20);
	DECLARE month_period 				VARCHAR(20);
	DECLARE PERIOD 					VARCHAR(20);
	DECLARE tPeriod					INT;
	DECLARE nInvWarehouseTransferReceivedNoteNo	VARCHAR(20);
	DECLARE monthPeriod				VARCHAR(20);
	DECLARE lenInvWarehouseTransferReceivedNoteNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.warehouse_transfer_received_note_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.warehouse_transfer_received_note_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(warehouse_transfer_received_note_no), 4) 
			FROM inv_warehouse_transfer_received_note
			WHERE RIGHT(TRIM(warehouse_transfer_received_note_no), 4) = year_period
			ORDER BY warehouse_transfer_received_note_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvWarehouseTransferReceivedNoteNo = CONCAT(PERIOD, '/WTRN/', monthPeriod, '/', year_period);
		
	SET new.warehouse_transfer_received_note_no = nInvWarehouseTransferReceivedNoteNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_invoice` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_purchase_invoice` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_purchase_invoice` BEFORE INSERT ON `purchase_invoice` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nPurchaseInvoiceNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenPurchaseInvoiceNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.purchase_invoice_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.purchase_invoice_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(purchase_invoice_no), 4) 
			FROM purchase_invoice
			WHERE RIGHT(TRIM(purchase_invoice_no), 4) = year_period
			ORDER BY purchase_invoice_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nPurchaseInvoiceNo = CONCAT(PERIOD, '/PI/', monthPeriod, '/', year_period);
		
	SET new.purchase_invoice_no = nPurchaseInvoiceNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_order` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_purchase_order` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_purchase_order` BEFORE INSERT ON `purchase_order` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nPurchaseOrderNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenPurchaseOrderNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.purchase_order_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.purchase_order_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(purchase_order_no), 4) 
			FROM purchase_order
			WHERE RIGHT(TRIM(purchase_order_no), 4) = year_period
			ORDER BY purchase_order_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nPurchaseOrderNo = CONCAT(PERIOD, '/PO/', monthPeriod, '/', year_period);
		
	SET new.purchase_order_no = nPurchaseOrderNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_order_return` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_purchase_order_return` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_purchase_order_return` BEFORE INSERT ON `purchase_order_return` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nPurchaseOrderReturnNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenPurchaseOrderReturnNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.purchase_order_return_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.purchase_order_return_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(purchase_order_return_no), 4) 
			FROM purchase_order_return
			WHERE RIGHT(TRIM(purchase_order_return_no), 4) = year_period
			ORDER BY purchase_order_return_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nPurchaseOrderReturnNo = CONCAT(PERIOD, '/PR/', monthPeriod, '/', year_period);
		
	SET new.purchase_order_return_no = nPurchaseOrderReturnNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_payment` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_purchase_payment` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_purchase_payment` BEFORE INSERT ON `purchase_payment` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nPurchasePaymentNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenPurchasePaymentNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.payment_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.payment_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(payment_no), 4) 
			FROM purchase_payment
			WHERE RIGHT(TRIM(payment_no), 4) = year_period
			ORDER BY payment_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nPurchasePaymentNo = CONCAT(PERIOD, '/PH/', monthPeriod, '/', year_period);
		
	SET new.payment_no = nPurchasePaymentNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_delivery_note` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_delivery_note` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_sales_delivery_note` BEFORE INSERT ON `sales_delivery_note` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nSalesDeliveryNoteNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenSalesDeliveryNoteNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_delivery_note_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_delivery_note_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_delivery_note_no), 4) 
			FROM sales_delivery_note
			WHERE RIGHT(TRIM(sales_delivery_note_no), 4) = year_period
			ORDER BY sales_delivery_note_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesDeliveryNoteNo = CONCAT(PERIOD, '/SDN/', monthPeriod, '/', year_period);
		
	SET new.sales_delivery_note_no = nSalesDeliveryNoteNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_delivery_order` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_delivery_order` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_sales_delivery_order` BEFORE INSERT ON `sales_delivery_order` FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nSalesDeliveryOrderNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenSalesDeliveryOrderNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_delivery_order_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_delivery_order_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_delivery_order_no), 4) 
			FROM sales_delivery_order
			WHERE RIGHT(TRIM(sales_delivery_order_no), 4) = year_period
			ORDER BY sales_delivery_order_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesDeliveryOrderNo = CONCAT(PERIOD, '/SDO/', monthPeriod, '/', year_period);
		
	SET new.sales_delivery_order_no = nSalesDeliveryOrderNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_invoice` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_invoice` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_sales_invoice` BEFORE INSERT ON `sales_invoice` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(50);
	DECLARE month_period 		VARCHAR(50);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesInvoiceNo		VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesInvoiceNo	DECIMAL(10);
	DECLARE roman_month		VARCHAR(4);
	
	SET year_period = (YEAR(new.sales_invoice_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_invoice_date)), 2));
    CASE month_period
        WHEN '01' THEN SET roman_month = 'I';
        WHEN '02' THEN SET roman_month = 'II';
        WHEN '03' THEN SET roman_month = 'III';
        WHEN '04' THEN SET roman_month = 'IV';
        WHEN '05' THEN SET roman_month = 'V';
        WHEN '06' THEN SET roman_month = 'VI';
        WHEN '07' THEN SET roman_month = 'VII';
        WHEN '08' THEN SET roman_month = 'VIII';
        WHEN '09' THEN SET roman_month = 'IX';
        WHEN '10' THEN SET roman_month = 'X';
        WHEN '11' THEN SET roman_month = 'XI';
        WHEN '12' THEN SET roman_month = 'XII';
        ELSE SET roman_month = '';
    END CASE;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_invoice_no), 4) 
			FROM sales_invoice
			WHERE RIGHT(TRIM(sales_invoice_no), 4) = year_period
			ORDER BY sales_invoice_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesInvoiceNo = CONCAT(PERIOD, '/TMO.ME/', roman_month, '/', year_period);
		
	SET new.sales_invoice_no = nSalesInvoiceNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_order` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_order` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_sales_order` BEFORE INSERT ON `sales_order` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesOrderNo		VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesOrderNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_order_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_order_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_order_no), 4) 
			FROM sales_order
			WHERE RIGHT(TRIM(sales_order_no), 4) = year_period
			ORDER BY sales_order_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesOrderNo = CONCAT(PERIOD, '/SO/', monthPeriod, '/', year_period);
		
	SET new.sales_order_no = nSalesOrderNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_quotation` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_quotation` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'daffa'@'%' */ /*!50003 TRIGGER `insert_sales_quotation` BEFORE INSERT ON `sales_quotation` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesQuotationNo		VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesQuotationrNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_quotation_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_quotation_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_quotation_no), 4) 
			FROM sales_quotation
			WHERE RIGHT(TRIM(sales_quotation_no), 4) = year_period
			ORDER BY sales_quotation_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesQuotationNo = CONCAT(PERIOD, '/QO/', monthPeriod, '/', year_period);
		
	SET new.sales_quotation_no = nSalesQuotationNo;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
