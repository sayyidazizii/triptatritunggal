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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb3;

/*Data for the table `acct_account_balance` */

insert  into `acct_account_balance`(`account_balance_id`,`company_id`,`branch_id`,`account_id`,`last_balance`,`created_id`,`created_at`,`updated_at`) values 
(1,2,0,344,16965178243.00,3,NULL,'2024-06-22 12:07:55'),
(2,2,0,372,-133054273.00,3,NULL,'2024-06-22 12:07:55'),
(3,2,0,396,16208721023.00,3,NULL,'2024-06-22 12:07:55'),
(4,2,0,418,38273257.00,3,NULL,'2024-06-22 12:07:55'),
(5,2,0,433,196866672.00,3,NULL,'2024-06-22 12:07:55'),
(6,2,0,435,6510158.00,3,NULL,'2024-06-22 12:07:55'),
(7,2,0,438,3250196.00,3,NULL,'2024-06-22 12:07:55'),
(8,2,0,439,28646949.00,3,NULL,'2024-06-22 12:07:55'),
(9,2,0,447,9279900.00,3,NULL,'2024-06-22 12:07:55'),
(10,2,0,449,250000.00,3,NULL,'2024-06-22 12:07:55'),
(11,2,0,451,8060000.00,3,NULL,'2024-06-22 12:07:55'),
(12,2,0,452,30470064.00,3,NULL,'2024-06-22 12:07:55'),
(13,2,0,455,29141267.00,3,NULL,'2024-06-22 12:07:55'),
(14,2,0,457,10041027.00,3,NULL,'2024-06-22 12:07:55'),
(15,2,0,463,1669100.00,3,NULL,'2024-06-22 12:07:55'),
(16,2,0,464,13514250.00,3,NULL,'2024-06-22 12:07:55'),
(17,2,0,468,2227005.00,3,NULL,'2024-06-22 12:07:55'),
(18,2,0,483,45572578.00,3,NULL,'2024-06-22 12:07:55'),
(19,2,0,485,1192660.00,3,NULL,'2024-06-22 12:07:55'),
(20,2,0,487,38346457.00,3,NULL,'2024-06-22 12:07:55'),
(21,2,0,493,5842000.00,3,NULL,'2024-06-22 12:07:55'),
(22,2,0,497,760000.00,3,NULL,'2024-06-22 12:07:55'),
(23,2,0,499,41572317.00,3,NULL,'2024-06-22 12:07:55'),
(24,2,0,501,821106.00,3,NULL,'2024-06-22 12:07:55'),
(25,2,0,503,15439318.00,3,NULL,'2024-06-22 12:07:55'),
(26,2,0,505,141653.00,3,NULL,'2024-06-22 12:07:55'),
(27,2,0,507,333500.00,3,NULL,'2024-06-22 12:07:55'),
(28,2,0,518,7802050.00,3,NULL,'2024-06-22 12:07:55'),
(29,2,0,527,226489.00,3,NULL,'2024-06-22 12:07:55'),
(30,2,0,529,1539283141.00,3,NULL,'2024-06-22 12:07:55'),
(31,2,0,533,-1560410.00,3,NULL,'2024-06-22 12:07:55'),
(32,2,0,535,-1026036.00,3,NULL,'2024-06-22 12:07:55'),
(33,2,0,539,-10049.00,3,NULL,'2024-06-22 12:07:55'),
(34,2,0,5,9753870.00,3,NULL,'2024-06-22 13:25:04'),
(35,2,0,6,5183000.00,3,NULL,'2024-06-22 13:25:04'),
(36,2,0,11,845105198.00,3,NULL,'2024-06-22 13:25:04'),
(37,2,0,46,4083144668.00,3,NULL,'2024-06-22 13:25:04'),
(38,2,0,47,1236496080.00,3,NULL,'2024-06-22 13:25:04'),
(39,2,0,52,547249298.00,3,NULL,'2024-06-22 13:25:04'),
(40,2,0,54,5819024871.00,3,NULL,'2024-06-22 13:25:04'),
(41,2,0,55,23877463.00,3,NULL,'2024-06-22 13:25:04'),
(42,2,0,60,344357136.00,3,NULL,'2024-06-22 13:25:04'),
(43,2,0,62,10310257.00,3,NULL,'2024-06-22 13:25:04'),
(44,2,0,68,0.00,3,NULL,'2024-06-22 13:25:04'),
(45,2,0,69,0.00,3,NULL,'2024-06-22 13:25:04'),
(46,2,0,72,90000000.00,3,NULL,'2024-06-22 13:25:04'),
(47,2,0,83,1833000.00,3,NULL,'2024-06-22 13:25:04'),
(48,2,0,86,14900929169.00,3,NULL,'2024-06-22 13:25:04'),
(49,2,0,87,159287772.00,3,NULL,'2024-06-22 13:25:04'),
(50,2,0,94,251397.00,3,NULL,'2024-06-22 13:25:04'),
(51,2,0,110,17912681987.00,3,NULL,'2024-06-22 13:25:04'),
(52,2,0,111,26075952.00,3,NULL,'2024-06-22 13:25:04'),
(53,2,0,167,1533840000.00,3,NULL,'2024-06-22 13:25:04'),
(54,2,0,169,1997013510.00,3,NULL,'2024-06-22 13:25:04'),
(55,2,0,172,19706545.00,3,NULL,'2024-06-22 13:25:04'),
(56,2,0,174,-213917760.00,3,NULL,'2024-06-22 13:25:04'),
(57,2,0,177,-367281740.00,3,NULL,'2024-06-22 13:25:04'),
(58,2,0,179,-19706545.00,3,NULL,'2024-06-22 13:25:04'),
(59,2,0,181,132372513.00,3,NULL,'2024-06-22 13:25:04'),
(60,2,0,192,21191550.00,3,NULL,'2024-06-22 13:25:04'),
(61,2,0,206,0.00,3,NULL,'2024-06-22 13:25:04'),
(62,2,0,207,0.00,3,NULL,'2024-06-22 13:25:04'),
(63,2,0,211,27919021795.00,3,NULL,'2024-06-22 13:25:04'),
(64,2,0,244,16019498228.00,3,NULL,'2024-06-22 13:25:04'),
(65,2,0,258,37982.00,3,NULL,'2024-06-22 13:25:04'),
(66,2,0,262,-105679650.00,3,NULL,'2024-06-22 13:25:04'),
(67,2,0,278,350000.00,3,NULL,'2024-06-22 13:25:04'),
(68,2,0,286,776458999.00,3,NULL,'2024-06-22 13:25:04'),
(69,2,0,297,100000000.00,3,NULL,'2024-06-22 13:25:04'),
(70,2,0,302,2932102633.00,3,NULL,'2024-06-22 13:25:04'),
(71,2,0,324,0.00,3,NULL,'2024-06-22 13:25:04'),
(72,2,0,239,0.00,3,NULL,'2024-06-22 15:03:01'),
(73,2,0,82,-43505304.00,75,NULL,'2024-08-02 10:50:05'),
(74,2,0,106,-4802083.00,75,NULL,'2024-08-02 10:50:05'),
(75,2,0,205,-48457387.00,75,NULL,'2024-08-02 10:50:05'),
(76,2,0,42,150446.00,3,NULL,'2024-10-17 12:41:44'),
(77,2,0,338,150000.00,3,NULL,'2024-10-17 12:41:44'),
(78,2,0,238,446.00,3,NULL,'2024-10-17 12:41:44'),
(79,2,0,390,150000.00,3,NULL,'2024-10-17 12:41:44'),
(80,2,0,28,-166500.00,3,NULL,'2024-12-10 11:45:44'),
(81,2,0,NULL,0.00,3,NULL,'2024-12-10 11:45:44'),
(82,2,0,NULL,-16500.00,3,NULL,'2024-12-10 11:45:44'),
(83,2,0,48,33000.00,3,NULL,'2024-12-10 12:01:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;

/*Data for the table `acct_account_balance_detail` */

insert  into `acct_account_balance_detail`(`account_balance_detail_id`,`branch_id`,`company_id`,`transaction_type`,`transaction_code`,`transaction_date`,`transaction_id`,`account_id`,`opening_balance`,`account_in`,`account_out`,`cash_in`,`cash_out`,`bank_in`,`bank_out`,`last_balance`,`created_at`,`updated_at`,`created_id`) values 
(1,0,2,65,'JU','2024-06-22',1,344,0.00,16965178243.00,0.00,0.00,0.00,0.00,0.00,16965178243.00,NULL,'2024-06-22 12:07:55',3),
(2,0,2,65,'JU','2024-06-22',1,372,0.00,-133054273.00,0.00,0.00,0.00,0.00,0.00,-133054273.00,NULL,'2024-06-22 12:07:55',3),
(3,0,2,65,'JU','2024-06-22',1,396,0.00,16208721023.00,0.00,0.00,0.00,0.00,0.00,16208721023.00,NULL,'2024-06-22 12:07:55',3),
(4,0,2,65,'JU','2024-06-22',1,418,0.00,38273257.00,0.00,0.00,0.00,0.00,0.00,38273257.00,NULL,'2024-06-22 12:07:55',3),
(5,0,2,65,'JU','2024-06-22',1,433,0.00,196866672.00,0.00,0.00,0.00,0.00,0.00,196866672.00,NULL,'2024-06-22 12:07:55',3),
(6,0,2,65,'JU','2024-06-22',1,435,0.00,6510158.00,0.00,0.00,0.00,0.00,0.00,6510158.00,NULL,'2024-06-22 12:07:55',3),
(7,0,2,65,'JU','2024-06-22',1,438,0.00,3250196.00,0.00,0.00,0.00,0.00,0.00,3250196.00,NULL,'2024-06-22 12:07:55',3),
(8,0,2,65,'JU','2024-06-22',1,439,0.00,28646949.00,0.00,0.00,0.00,0.00,0.00,28646949.00,NULL,'2024-06-22 12:07:55',3),
(9,0,2,65,'JU','2024-06-22',1,447,0.00,9279900.00,0.00,0.00,0.00,0.00,0.00,9279900.00,NULL,'2024-06-22 12:07:55',3),
(10,0,2,65,'JU','2024-06-22',1,449,0.00,250000.00,0.00,0.00,0.00,0.00,0.00,250000.00,NULL,'2024-06-22 12:07:55',3),
(11,0,2,65,'JU','2024-06-22',1,451,0.00,8060000.00,0.00,0.00,0.00,0.00,0.00,8060000.00,NULL,'2024-06-22 12:07:55',3),
(12,0,2,65,'JU','2024-06-22',1,452,0.00,30470064.00,0.00,0.00,0.00,0.00,0.00,30470064.00,NULL,'2024-06-22 12:07:55',3),
(13,0,2,65,'JU','2024-06-22',1,455,0.00,29141267.00,0.00,0.00,0.00,0.00,0.00,29141267.00,NULL,'2024-06-22 12:07:55',3),
(14,0,2,65,'JU','2024-06-22',1,457,0.00,10041027.00,0.00,0.00,0.00,0.00,0.00,10041027.00,NULL,'2024-06-22 12:07:55',3),
(15,0,2,65,'JU','2024-06-22',1,463,0.00,1669100.00,0.00,0.00,0.00,0.00,0.00,1669100.00,NULL,'2024-06-22 12:07:55',3),
(16,0,2,65,'JU','2024-06-22',1,464,0.00,13514250.00,0.00,0.00,0.00,0.00,0.00,13514250.00,NULL,'2024-06-22 12:07:55',3),
(17,0,2,65,'JU','2024-06-22',1,468,0.00,2227005.00,0.00,0.00,0.00,0.00,0.00,2227005.00,NULL,'2024-06-22 12:07:55',3),
(18,0,2,65,'JU','2024-06-22',1,483,0.00,45572578.00,0.00,0.00,0.00,0.00,0.00,45572578.00,NULL,'2024-06-22 12:07:55',3),
(19,0,2,65,'JU','2024-06-22',1,485,0.00,1192660.00,0.00,0.00,0.00,0.00,0.00,1192660.00,NULL,'2024-06-22 12:07:55',3),
(20,0,2,65,'JU','2024-06-22',1,487,0.00,38346457.00,0.00,0.00,0.00,0.00,0.00,38346457.00,NULL,'2024-06-22 12:07:55',3),
(21,0,2,65,'JU','2024-06-22',1,493,0.00,5842000.00,0.00,0.00,0.00,0.00,0.00,5842000.00,NULL,'2024-06-22 12:07:55',3),
(22,0,2,65,'JU','2024-06-22',1,497,0.00,760000.00,0.00,0.00,0.00,0.00,0.00,760000.00,NULL,'2024-06-22 12:07:55',3),
(23,0,2,65,'JU','2024-06-22',1,499,0.00,41572317.00,0.00,0.00,0.00,0.00,0.00,41572317.00,NULL,'2024-06-22 12:07:55',3),
(24,0,2,65,'JU','2024-06-22',1,501,0.00,821106.00,0.00,0.00,0.00,0.00,0.00,821106.00,NULL,'2024-06-22 12:07:55',3),
(25,0,2,65,'JU','2024-06-22',1,503,0.00,15439318.00,0.00,0.00,0.00,0.00,0.00,15439318.00,NULL,'2024-06-22 12:07:55',3),
(26,0,2,65,'JU','2024-06-22',1,505,0.00,141653.00,0.00,0.00,0.00,0.00,0.00,141653.00,NULL,'2024-06-22 12:07:55',3),
(27,0,2,65,'JU','2024-06-22',1,507,0.00,333500.00,0.00,0.00,0.00,0.00,0.00,333500.00,NULL,'2024-06-22 12:07:55',3),
(28,0,2,65,'JU','2024-06-22',1,518,0.00,7802050.00,0.00,0.00,0.00,0.00,0.00,7802050.00,NULL,'2024-06-22 12:07:55',3),
(29,0,2,65,'JU','2024-06-22',1,527,0.00,226489.00,0.00,0.00,0.00,0.00,0.00,226489.00,NULL,'2024-06-22 12:07:55',3),
(30,0,2,65,'JU','2024-06-22',1,529,0.00,1539283141.00,0.00,0.00,0.00,0.00,0.00,1539283141.00,NULL,'2024-06-22 12:07:55',3),
(31,0,2,65,'JU','2024-06-22',1,533,0.00,-1560410.00,0.00,0.00,0.00,0.00,0.00,-1560410.00,NULL,'2024-06-22 12:07:55',3),
(32,0,2,65,'JU','2024-06-22',1,535,0.00,-1026036.00,0.00,0.00,0.00,0.00,0.00,-1026036.00,NULL,'2024-06-22 12:07:55',3),
(33,0,2,65,'JU','2024-06-22',1,539,0.00,-10049.00,0.00,0.00,0.00,0.00,0.00,-10049.00,NULL,'2024-06-22 12:07:55',3),
(34,0,2,65,'JU','2024-06-22',2,5,0.00,9753870.00,0.00,0.00,0.00,0.00,0.00,9753870.00,NULL,'2024-06-22 13:25:04',3),
(35,0,2,65,'JU','2024-06-22',2,6,0.00,5000000.00,0.00,0.00,0.00,0.00,0.00,5000000.00,NULL,'2024-06-22 13:25:04',3),
(36,0,2,65,'JU','2024-06-22',2,11,0.00,845105198.00,0.00,0.00,0.00,0.00,0.00,845105198.00,NULL,'2024-06-22 13:25:04',3),
(37,0,2,65,'JU','2024-06-22',2,46,0.00,4083144668.00,0.00,0.00,0.00,0.00,0.00,4083144668.00,NULL,'2024-06-22 13:25:04',3),
(38,0,2,65,'JU','2024-06-22',2,47,0.00,1236496080.00,0.00,0.00,0.00,0.00,0.00,1236496080.00,NULL,'2024-06-22 13:25:04',3),
(39,0,2,65,'JU','2024-06-22',2,52,0.00,547249298.00,0.00,0.00,0.00,0.00,0.00,547249298.00,NULL,'2024-06-22 13:25:04',3),
(40,0,2,65,'JU','2024-06-22',2,54,0.00,5819024871.00,0.00,0.00,0.00,0.00,0.00,5819024871.00,NULL,'2024-06-22 13:25:04',3),
(41,0,2,65,'JU','2024-06-22',2,55,0.00,23877463.00,0.00,0.00,0.00,0.00,0.00,23877463.00,NULL,'2024-06-22 13:25:04',3),
(42,0,2,65,'JU','2024-06-22',2,60,0.00,344357136.00,0.00,0.00,0.00,0.00,0.00,344357136.00,NULL,'2024-06-22 13:25:04',3),
(43,0,2,65,'JU','2024-06-22',2,62,0.00,10310257.00,0.00,0.00,0.00,0.00,0.00,10310257.00,NULL,'2024-06-22 13:25:04',3),
(44,0,2,65,'JU','2024-06-22',2,68,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 13:25:04',3),
(45,0,2,65,'JU','2024-06-22',2,69,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 13:25:04',3),
(46,0,2,65,'JU','2024-06-22',2,72,0.00,90000000.00,0.00,0.00,0.00,0.00,0.00,90000000.00,NULL,'2024-06-22 13:25:04',3),
(47,0,2,65,'JU','2024-06-22',2,83,0.00,1833000.00,0.00,0.00,0.00,0.00,0.00,1833000.00,NULL,'2024-06-22 13:25:04',3),
(48,0,2,65,'JU','2024-06-22',2,86,0.00,14900929169.00,0.00,0.00,0.00,0.00,0.00,14900929169.00,NULL,'2024-06-22 13:25:04',3),
(49,0,2,65,'JU','2024-06-22',2,87,0.00,159287772.00,0.00,0.00,0.00,0.00,0.00,159287772.00,NULL,'2024-06-22 13:25:04',3),
(50,0,2,65,'JU','2024-06-22',2,94,0.00,251397.00,0.00,0.00,0.00,0.00,0.00,251397.00,NULL,'2024-06-22 13:25:04',3),
(51,0,2,65,'JU','2024-06-22',2,110,0.00,17912681987.00,0.00,0.00,0.00,0.00,0.00,17912681987.00,NULL,'2024-06-22 13:25:04',3),
(52,0,2,65,'JU','2024-06-22',2,111,0.00,26075952.00,0.00,0.00,0.00,0.00,0.00,26075952.00,NULL,'2024-06-22 13:25:04',3),
(53,0,2,65,'JU','2024-06-22',2,167,0.00,1533840000.00,0.00,0.00,0.00,0.00,0.00,1533840000.00,NULL,'2024-06-22 13:25:04',3),
(54,0,2,65,'JU','2024-06-22',2,169,0.00,1997013510.00,0.00,0.00,0.00,0.00,0.00,1997013510.00,NULL,'2024-06-22 13:25:04',3),
(55,0,2,65,'JU','2024-06-22',2,172,0.00,19706545.00,0.00,0.00,0.00,0.00,0.00,19706545.00,NULL,'2024-06-22 13:25:04',3),
(56,0,2,65,'JU','2024-06-22',2,174,0.00,0.00,213917760.00,0.00,0.00,0.00,0.00,-213917760.00,NULL,'2024-06-22 13:25:04',3),
(57,0,2,65,'JU','2024-06-22',2,177,0.00,-367281740.00,0.00,0.00,0.00,0.00,0.00,-367281740.00,NULL,'2024-06-22 13:25:04',3),
(58,0,2,65,'JU','2024-06-22',2,179,0.00,-19706545.00,0.00,0.00,0.00,0.00,0.00,-19706545.00,NULL,'2024-06-22 13:25:04',3),
(59,0,2,65,'JU','2024-06-22',2,181,0.00,0.00,-132372513.00,0.00,0.00,0.00,0.00,132372513.00,NULL,'2024-06-22 13:25:04',3),
(60,0,2,65,'JU','2024-06-22',2,192,0.00,21191550.00,0.00,0.00,0.00,0.00,0.00,21191550.00,NULL,'2024-06-22 13:25:04',3),
(61,0,2,65,'JU','2024-06-22',2,206,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 13:25:04',3),
(62,0,2,65,'JU','2024-06-22',2,207,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 13:25:04',3),
(63,0,2,65,'JU','2024-06-22',2,211,0.00,27919021795.00,0.00,0.00,0.00,0.00,0.00,27919021795.00,NULL,'2024-06-22 13:25:04',3),
(64,0,2,65,'JU','2024-06-22',2,244,0.00,16019498228.00,0.00,0.00,0.00,0.00,0.00,16019498228.00,NULL,'2024-06-22 13:25:04',3),
(65,0,2,65,'JU','2024-06-22',2,258,0.00,37982.00,0.00,0.00,0.00,0.00,0.00,37982.00,NULL,'2024-06-22 13:25:04',3),
(66,0,2,65,'JU','2024-06-22',2,262,0.00,-105679650.00,0.00,0.00,0.00,0.00,0.00,-105679650.00,NULL,'2024-06-22 13:25:04',3),
(67,0,2,65,'JU','2024-06-22',2,278,0.00,350000.00,0.00,0.00,0.00,0.00,0.00,350000.00,NULL,'2024-06-22 13:25:04',3),
(68,0,2,65,'JU','2024-06-22',2,286,0.00,776458999.00,0.00,0.00,0.00,0.00,0.00,776458999.00,NULL,'2024-06-22 13:25:04',3),
(69,0,2,65,'JU','2024-06-22',2,297,0.00,100000000.00,0.00,0.00,0.00,0.00,0.00,100000000.00,NULL,'2024-06-22 13:25:04',3),
(70,0,2,65,'JU','2024-06-22',2,302,0.00,2932102633.00,0.00,0.00,0.00,0.00,0.00,2932102633.00,NULL,'2024-06-22 13:25:04',3),
(71,0,2,65,'JU','2024-06-22',2,324,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 13:25:04',3),
(72,0,2,65,'JU','2024-06-22',4,239,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-06-22 15:03:01',3),
(73,0,2,20,'GRN','2024-06-20',5,82,0.00,0.00,43655304.00,0.00,0.00,0.00,0.00,-43655304.00,NULL,'2024-08-02 10:50:05',75),
(74,0,2,20,'GRN','2024-06-20',5,106,0.00,0.00,4802083.00,0.00,0.00,0.00,0.00,-4802083.00,NULL,'2024-08-02 10:50:05',75),
(75,0,2,20,'GRN','2024-06-20',5,205,0.00,0.00,48457387.00,0.00,0.00,0.00,0.00,-48457387.00,NULL,'2024-08-02 10:50:05',75),
(76,0,2,63,'PPP','2024-10-20',8,42,0.00,150446.00,0.00,0.00,0.00,0.00,0.00,150446.00,NULL,'2024-10-17 12:41:44',3),
(77,0,2,63,'PPP','2024-10-20',8,338,0.00,150000.00,0.00,0.00,0.00,0.00,0.00,150000.00,NULL,'2024-10-17 12:41:44',3),
(78,0,2,63,'PPP','2024-10-20',8,238,0.00,446.00,0.00,0.00,0.00,0.00,0.00,446.00,NULL,'2024-10-17 12:41:44',3),
(79,0,2,63,'PPP','2024-10-20',8,390,0.00,150000.00,0.00,0.00,0.00,0.00,0.00,150000.00,NULL,'2024-10-17 12:41:44',3),
(80,0,2,63,'PPP','2024-10-20',8,82,-43655304.00,150000.00,0.00,0.00,0.00,0.00,0.00,-43505304.00,NULL,'2024-10-17 12:41:44',3),
(81,0,2,63,'PPP','2024-12-10',2,28,0.00,0.00,16500.00,0.00,0.00,0.00,0.00,-16500.00,NULL,'2024-12-10 11:45:44',3),
(82,0,2,63,'PPP','2024-12-10',2,NULL,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'2024-12-10 11:45:44',3),
(83,0,2,63,'PPP','2024-12-10',2,NULL,0.00,0.00,16500.00,0.00,0.00,0.00,0.00,-16500.00,NULL,'2024-12-10 11:45:44',3),
(84,0,2,63,'PPP','2024-12-10',3,6,5000000.00,16500.00,0.00,0.00,0.00,0.00,0.00,5016500.00,NULL,'2024-12-10 12:01:26',3),
(85,0,2,63,'PPP','2024-12-10',3,28,-16500.00,0.00,0.00,0.00,0.00,0.00,0.00,-16500.00,NULL,'2024-12-10 12:01:26',3),
(86,0,2,63,'PPP','2024-12-10',3,48,0.00,16500.00,0.00,0.00,0.00,0.00,0.00,16500.00,NULL,'2024-12-10 12:01:26',3),
(87,0,2,63,'PPP','2024-12-10',4,6,5016500.00,166500.00,0.00,0.00,0.00,0.00,0.00,5183000.00,NULL,'2024-12-10 12:09:10',3),
(88,0,2,63,'PPP','2024-12-10',4,28,-16500.00,0.00,150000.00,0.00,0.00,0.00,0.00,-166500.00,NULL,'2024-12-10 12:09:10',3),
(89,0,2,63,'PPP','2024-12-10',4,48,16500.00,16500.00,0.00,0.00,0.00,0.00,0.00,33000.00,NULL,'2024-12-10 12:09:10',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=latin1;

/*Data for the table `acct_account_setting` */

insert  into `acct_account_setting`(`account_setting_id`,`company_id`,`account_id`,`account_setting_name`,`account_setting_status`,`account_default_status`,`created_at`,`updated_at`) values 
(370,2,4,'account_cash_purchase_id',1,0,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(371,2,8,'purchase_cash_account_id',0,0,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(372,2,16,'account_credit_purchase_id',1,0,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(373,2,8,'purchase_credit_account_id',0,0,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(374,2,51,'purchase_tax_account_id',0,0,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(375,2,4,'account_payable_return_account_id',1,1,'2022-07-16 11:14:51','2023-12-12 23:54:05'),
(376,2,8,'purchase_return_account_id',0,0,'2023-07-25 10:44:25','2023-12-12 23:54:05'),
(377,2,4,'account_receivable_cash_account_id',1,1,'2024-12-13 11:38:40','2023-12-12 23:54:05'),
(378,2,28,'sales_cash_account_id',1,0,'2024-12-13 11:38:50','2024-12-13 11:38:52'),
(379,2,6,'account_receivable_credit_account_id',0,1,'2024-12-13 11:38:42','2024-12-13 11:38:54'),
(380,2,28,'sales_credit_account_id',1,1,'2024-12-13 11:38:46','2024-12-13 11:38:56'),
(381,2,48,'sales_tax_account_id',0,0,'2024-12-13 11:38:48','2024-12-13 11:38:58'),
(383,2,4,'expenditure_cash_account_id',1,1,'2024-12-13 11:38:44','2024-12-13 11:39:00'),
(384,2,8,'expenditure_account_id',0,0,'2024-12-13 11:39:04','2024-12-13 11:39:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_check_disbursement` */

insert  into `acct_check_disbursement`(`check_disbursement_id`,`branch_id`,`account_id`,`customer_id`,`project_id`,`project_type_id`,`check_disbursement_date`,`check_disbursement_due_date`,`check_number`,`check_disbursement_no`,`check_disbursement_title`,`check_disbursement_description`,`check_disbursement_amount_total`,`check_disbursement_token`,`check_disbursement_token_void`,`posted`,`posted_id`,`posted_on`,`voided_id`,`voided_on`,`voided_remark`,`unposted_id`,`unposted_on`,`unposted_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,NULL,3,0,0,'2023-05-14',NULL,NULL,'BGK23050001',NULL,'dsdsgs',100000.00,'cf162483d8d6cf6bb21f140a2207fd6b',NULL,0,0,NULL,0,NULL,NULL,'',NULL,NULL,0,3,'2023-05-14 12:18:32','2023-06-23 10:52:20'),
(2,1,NULL,3,0,0,'2023-05-14',NULL,NULL,'BGK23050002',NULL,'dsdsgs',100000.00,'e75ff1512d1b00eef444819d3eea3729',NULL,0,0,NULL,0,NULL,NULL,'',NULL,NULL,0,3,'2023-05-14 12:19:26','2023-06-23 10:52:20'),
(3,1,NULL,3,0,0,'2023-05-14',NULL,NULL,'BGK23050003',NULL,'dsdsgs',100000.00,'a9b565082b33c1efe3fbf60ed8b74380',NULL,0,0,NULL,0,NULL,NULL,'',NULL,NULL,0,3,'2023-05-14 12:19:30','2023-06-23 10:52:20'),
(4,1,10,2,0,0,'2023-05-16',NULL,NULL,'BGK23050004','ffdfdfd','fdfdfd',4100000.00,'00924e04cd9ddfff9f1f165c4ef2698e',NULL,0,0,NULL,0,NULL,NULL,'',NULL,NULL,0,3,'2023-05-14 12:24:44','2023-06-23 10:52:20'),
(5,1,2,2,0,0,'2023-05-14','2023-05-14','97797979000','BGK23050005','ffdfdfd','gfgfgfgffff',12000000.00,'74e01d96da4eb50bdfda60e1229d012e',NULL,0,0,NULL,0,NULL,NULL,'',NULL,NULL,0,3,'2023-05-14 12:36:25','2023-06-23 10:52:20');

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

/*Data for the table `acct_check_disbursement_item` */

insert  into `acct_check_disbursement_item`(`check_disbursement_item_id`,`check_disbursement_id`,`account_id`,`check_disbursement_item_title`,`check_disbursement_item_amount`,`check_disbursement_item_token`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,2,7,'dgdgddg',100000.00,'e75ff1512d1b00eef444819d3eea372970',0,NULL,'2023-05-14 12:19:26','2023-06-23 10:52:20'),
(2,3,7,'dgdgddg',100000.00,'a9b565082b33c1efe3fbf60ed8b7438070',0,NULL,'2023-05-14 12:19:30','2023-06-23 10:52:20'),
(3,4,7,'dgdgddg',100000.00,'00924e04cd9ddfff9f1f165c4ef2698e70',0,NULL,'2023-05-14 12:24:44','2023-06-23 10:52:20'),
(4,4,2,'dgdgddg',4000000.00,'00924e04cd9ddfff9f1f165c4ef2698e21',0,NULL,'2023-05-14 19:24:44','2023-06-23 10:52:20'),
(5,5,3,'dgdgddg',4000000.00,'74e01d96da4eb50bdfda60e1229d012e30',0,NULL,'2023-05-14 12:36:25','2023-06-23 10:52:20'),
(6,5,3,'dgdgddg',4000000.00,'74e01d96da4eb50bdfda60e1229d012e31',0,NULL,'2023-05-14 19:36:25','2023-06-23 10:52:20'),
(7,5,3,'dgdgddg',4000000.00,'74e01d96da4eb50bdfda60e1229d012e32',0,NULL,'2023-05-14 19:36:25','2023-06-23 10:52:20');

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
(4,2,1,0,0,63,1,'1','Penjualan 0','0001/JV/XII/2024',202412,'2024-12-10',NULL,NULL,NULL,1,1,'PPP',0,0,NULL,0,0,NULL,NULL,0,3,'2024-12-10 05:09:10','2024-12-10 05:09:10',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `acct_journal_voucher_item` */

insert  into `acct_journal_voucher_item`(`journal_voucher_item_id`,`journal_voucher_id`,`company_id`,`account_id`,`journal_voucher_description`,`journal_voucher_amount`,`account_id_status`,`account_id_default_status`,`journal_voucher_debit_amount`,`journal_voucher_credit_amount`,`journal_voucher_item_token`,`journal_voucher_item_token_void`,`data_state`,`created_at`,`updated_at`,`reverse_state`) values 
(7,4,2,6,NULL,166500.00,0,0,166500.00,0.00,NULL,NULL,0,'2024-12-10 05:09:10','2024-12-10 05:09:10',0),
(8,4,2,28,NULL,150000.00,0,0,0.00,150000.00,NULL,NULL,0,'2024-12-10 05:09:10','2024-12-10 05:09:10',0),
(9,4,2,48,NULL,16500.00,0,0,0.00,16500.00,NULL,NULL,0,'2024-12-10 05:09:10','2024-12-10 05:09:10',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `buyers_acknowledgment` */

insert  into `buyers_acknowledgment`(`buyers_acknowledgment_id`,`sales_delivery_note_id`,`sales_delivery_order_id`,`account_id`,`sales_order_id`,`warehouse_id`,`customer_id`,`buyers_acknowledgment_no`,`buyers_acknowledgment_date`,`buyers_acknowledgment_remark`,`sales_invoice_status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(285,1,2,6,1,0,176,'1','2024-12-10',NULL,1,0,3,'2024-12-10 05:09:09','2024-12-10 05:09:09');

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
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `buyers_acknowledgment_item` */

insert  into `buyers_acknowledgment_item`(`buyers_acknowledgment_item_id`,`buyers_acknowledgment_id`,`sales_delivery_note_id`,`sales_delivery_note_item_id`,`sales_order_id`,`sales_order_item_id`,`warehouse_id`,`supplier_id`,`item_category_id`,`item_type_id`,`item_stock_id`,`item_unit_id`,`quantity`,`quantity_received`,`item_unit_cost`,`item_unit_price`,`subtotal_price`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(433,285,1,1,1,1,NULL,NULL,1,1,1,10,100,100,1000,1500,150000,0,3,'2024-12-10 05:09:09','2024-12-10 05:09:09');

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

/*Data for the table `core_customer` */

insert  into `core_customer`(`customer_id`,`province_id`,`city_id`,`customer_code`,`customer_name`,`customer_tax_no`,`customer_address`,`customer_home_phone`,`customer_mobile_phone1`,`customer_mobile_phone2`,`customer_email`,`customer_fax_number`,`customer_contact_person`,`customer_payment_terms`,`customer_remark`,`data_state`,`created_id`,`created_at`,`updated_at`,`data_dump`) values 
(1,71,1045,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SEMARANG',NULL,'JL. INDUSTRI TUGU I KAV 2-4, KWS. INDUSTRI TUGU WIJAYA KUSUMA, RANDUGARUT - SEMARANG, 024-8665660 / 8665657-58','024-8665660 / 8665657-58',NULL,NULL,NULL,NULL,'024-8665660 / 8665657-58',NULL,NULL,0,3,'0000-00-00 00:00:00','2023-08-05 05:52:28','Jawa Tengah'),
(2,70,999,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK CIREBON',NULL,'JL. PANGERAN ANTASARI BLOK, PETAPAN RT. 02 / 01 DS. KEDUJEN, KEC. DEPOK - KAB. CIREBON, 0231-247195/247915','0231-247195/247915',NULL,NULL,NULL,NULL,'0231-247195/247915',NULL,NULL,0,3,'0000-00-00 00:00:00','2023-08-05 05:52:41','Jawa Barat'),
(3,70,1008,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BOGOR 2',NULL,'JL. RAYA BOGOR KM. 46,6, DESA NANGGEWER MEKAR KEC CIBINONG, BOGOR - JAWA BARAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,74,'0000-00-00 00:00:00','2023-08-05 05:52:49','Jawa Barat'),
(4,70,1008,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BOGOR',NULL,'JL. RAYA ALTERNATIF SENTUL KM 46, KEL. CIJUJUNG - KEC. SUKARAJA, KAB. BOGOR - 16710, 8796050','8796050',NULL,NULL,NULL,NULL,'8796050',NULL,NULL,0,74,'0000-00-00 00:00:00','2023-08-05 05:52:57','Jawa Barat'),
(5,72,1067,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK GRESIK',NULL,'JL. RAYA DUDUK SAMPEYAN RT 11, RW 04, DS AMBENG-WATANGREJO, KEC. DUDUK SAMPEYAN - GRESIK',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,'0000-00-00 00:00:00','2023-08-05 05:53:08','Jawa Timur'),
(6,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PARUNG','','JL. PEMBANGUNAN RAYA GUNUNG, SINDUR NO. 21A RT.01 RW.02, Gunung Sindur - Bogor 16340, 7563078 ','7563078','','','','','7563078',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(7,67,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JAKARTA','','JL. ANCOL BARAT VIII NO. 2, JAKARTA UTARA, 14430, 6919971-74      ','6919971-74      ','','','','','6919971-74      ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(8,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MAKASAR','','JL. KIMA 10 BLOK A5 - A5 A, KEL. DAYA KEC. BIRINGKANAYA, MAKASAR SUL-SEL 90241, TELP: 0411-512292 / 5781492 / 512335    ',' 0411-512292 / 5781492 / 512335    ','','','','',' 0411-512292 / 5781492 / 512335    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(9,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SURABAYA','','JL. JENGGALA NO. 22, GEDANGAN, SIDOARJO - 61254, 8915000 / 8902222       ','8915000 / 8902222       ','','','','','8915000 / 8902222       ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(10,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK SENTUL','','JL. RAYA ALTERNATIF SENTUL KM46, KEL. CIJUJUNG - KEC. SUKARAJA, KAB. BOGOR - 16710, 8796050 ','8796050','','','','','8796050',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(11,79,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK LAMPUNG','','JL. TEMBESU NO. 8 DESA CAMPANG, RAYA - KALI BALOK, BANDAR LAMPUNG - 35122, 0721 - 7699123  ','0721 - 7699123  ','','','','','0721 - 7699123  ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(12,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA DC MINI LOMBOK','','JL. BY PASS BANDARA INTERNATIO, NAL LOMBOK, DESA / KEL : BATUJAI / UNGGA, KEC : PRAYA, BP. ARIEF INDARTO, 08562956206        ','8562956206','','','','','8562956206',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Nusa Tenggara Barat'),
(13,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK YOGYAKARTA','','JL. RINGROAD BARAT NO. 99, PADUKUHAN SALAKAN RT.08 / RW.26, TRIHANGGO GAMPING - SLEMAN JGY, 0274-6499300    ','0274-6499300    ','','','','','0274-6499300    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Daerah Istimewa Yogyakarta'),
(14,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PURWAKARTA','','KAWASAN KOTA BUKIT INDAH, SEKTOR N BLOK N 1/5, CIKAMPEK - JAWA BARAT, 0264-8281901    ',' 0264-8281901    ','','','','',' 0264-8281901    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(15,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JEMBER','','JL. PIERRE TENDEAN NO. 99A, DUSUN TEGAL BAI, KEL. KARANGREJO, KEC. SUMBERSARI, JEMBER - 68127         ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(16,67,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JAKARTA 2','','JL. ANCOL 8 NO. 2, ANCOL BARAT, JAKARTA 14430           ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(17,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MALANG','','JL. MAYJEND SUNGKONO NO.99, KEL. WONOKOYO KEC. KDNG KANDANG, RT.01 RW.02 KODYA MALANG, JATIM   ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(18,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANDUNG','','JL. JEND. A. YANI NO. 806, KIARACONDONG - CICAHEUM, BANDUNG 40282, 022-7215556     ','022-7215556     ','','','','','022-7215556     ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(19,62,936,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BALI',NULL,'JL. RAYA MENGWI - SINGARAJA  NO 17,BANJAR BINONG, DESA WERDHI BUANA, KEC. MENGWI KAB BADUNG, BALI, 0361-829329','0361-829329',NULL,NULL,NULL,NULL,'0361-829329',0,NULL,0,0,'0000-00-00 00:00:00','2024-05-16 02:02:09','Bali'),
(20,73,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK DEPO PONTIANAK','','JL. TRANS KALIMANTAN KOMPLEK, PERGURUAN PRIMA LESTARI, BLOK D.2 NO. 1-3 - KUBURAYA, KALBAR  ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(21,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK TANGERANG 2','','JL. GATOT SOEBROTO KM. 9, RT. 03/01 KEL. KADE KEC. CURUG, KAB. TANGERANG.         ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(22,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK TANGERANG 1','','JL. RAYA SERANG RT. 003 / 001 KM 09, NO. 1A ZONA INDUSTRI MANIS, DS. KADU JAYA KEC. CURUG, TANGERANG       ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(23,95,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MEDAN','','JL. INDUSTRI DUSUN 1 NO. 60, KEL. TANJUNG MORAWA, KAB. DELI SERDANG 20582, 061-7877060, 7877731    ','061-7877060, 7877731    ','','','','','061-7877060, 7877731    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(24,72,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JOMBANG','','JL. PETERONGAN KM 71,3, DESA CANDI - DESA SAMBIREJO, KEC. JOGOROTO, KAB JOMBANG              ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(25,70,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BEKASI','','JL. JABABEKA RAYA BLOK A NO. 6-15, RT. 004 RW. 006 PASIR GOMBONG, CIKARANG UTARA - BEKASI, K       ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(26,92,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MANADO','','KOMP. GUDANG PUSKUD BLOK C2 / C3, JL. RY. MANADO BITUNG, KOLONGAN, TETEMPANGAN JAGA 7, KALAWAT             ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(27,94,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PALEMBANG','','JL. PANGERAN AYIN NO. 326, KEL. SUKAMAJU KEC. SAKO, PALEMBANG - SUMSEL - 30361, 0711-822006     ','0711-822006     ','','','','','0711-822006     ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(28,64,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK LEBAK','','JL. RANGKASBITUNG, PANDEGLANG KM 12 RT 14 RW 05, KP. CIBUAH KERTA MUKTI - BANTEN         ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(29,87,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PEKANBARU','','JL. RAYA KUBANG TERATAK BULUH, RT. 03 / 02 DUSUN II KERAMAT SAKTI, KUBANG JAYA, SIAK HULU - RIAU           ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Riau'),
(30,65,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BENGKULU','','JL. DEPATI PAYUNG NEGARA, KEL, BETUNGAN   KEC, SELEBAR, KOTA BENGKULU           ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Bengkulu'),
(31,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MAKASAR','','JL.KIMA 10 BLOK A5-A5 A, KEC.BIRINGKANAYA MAKASAR, SULAWESI SELATAN 90243, 0411-512292/5781492/512335      ',' 0411-512292/5781492/512335    ','','','','',' 0411-512292/5781492/512335    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(32,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK DEPO ACEH','','JL.LAKSAMANA MALAHYATI   DS.BAET, KEC. BAITUSSALAM   KAB. ACEH BESAR, NANGROE ACEH DARUSSALAM         ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Aceh'),
(33,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK KLATEN','','JL. RAYA PENGGUNG-JATINOM, DESA BLENCERAN, KEC. KARANGANOM, KAB. KLATEN, JAWA TENGAH                ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(34,92,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK MANADO BARU','','JL. RAYA MANADO - BITUNG, AIRMADIDI ATAS KEC.AIRMADIDI, KAB.MINAHASA UTARA SULUT 95371          ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(35,89,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PALOPO','','JL. POROS MAKASAR - PALOPO, DESA KARANG KARANGAN, KEC. BUA, KAB. LUWU, SUL-SEL 91991         ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(36,73,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK PONTIANAK BARU','','JL. ARTERI SUPADIO  RT. 04  RW. 08, DESA JL.PARIT BARU SUNGAI RAYA, KAB. KUBU RAYA KALIMANTAN BARAT.                ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(37,81,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK JATI TERNATE','','JL. SANTO PETRO JEMBATAN 6, NAIK KEDARA, KALUMATA, TERNATE, SELATAN-MALUKU UTARA 97718              ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku Utara'),
(38,74,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANJARMASIN','','JL.A.YANI KM 12,2, KEL.GAMBUT BARAT KAB.BANJAR, BANJARMASIN, 70652   ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Selatan'),
(39,71,1044,'PT. INDOMARCO PRISMATAMA','PT. INDOMARCO PRISMATAMA GUDANG INDUK BANGKA','','JL.KETAPANG KAWASAN TPI RT.001, TEMBERAN,BACANG,BUKIT INTAN, KOTA PANGKAL PINANG, KEP. BANGKA BELITUNG    ','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kepulauan Bangka Belitung'),
(40,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cikokol Branch','','Jl. MH. Thamrin No. 9, Cikokol Tangerang 15117, Banten, Indonesia','Phone   : 021-5575 5966    ','','','','','Phone   : 021-5575 5966    ',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(41,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Balaraja Branch','','Jl. Arya Jaya Santika No. 19, RT/RW 001/02, Kp. Seglok Desa Pasir Bolang, Kec. Tigaraksa, Tangerang 15720, Banten','Phone   : 021-5990 123    Fax        : 021-5990 388','','','','','Phone   : 021-5990 123    Fax        : 021-5990 388',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(42,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cileungsi Branch 2','','Kawasan Industri Menara Permai Kav. 18 JL.RAYA NAROGONG RT 01/RW 01.KEL,DAYEH','Phone : 021-8249 8222, 8249 9234    Fax     : 021-8249 7200, 8249 7500','','','','','Phone : 021-8249 8222, 8249 9234    Fax     : 021-8249 7200, 8249 7500',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(43,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DEPO Balaraja Branch','','Jl. Arya Jaya Santika No. 19, RT/RW 001/02, Kp. Seglok Desa Pasir Bolang, Kec. Tigaraksa, Tangerang 15720, Banten','Phone   : 021-5990 123    Fax        : 021-5990 388','','','','','Phone   : 021-5990 123    Fax        : 021-5990 388',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(44,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bekasi Branch','','Kawasan Industri Jababeka 2 Jl. Industri Selatan VI Blok PP No. 6 Cikarang, Jawa Barat','Phone : 021- 8984 1456       Fax      : 021- 8984 1455','','','','','Phone : 021- 8984 1456       Fax      : 021- 8984 1455',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(45,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Sidoarjo BULKY BEREBEK (BBRK)','','Jl. BERBEK INDUSTRI VII No 3-5 WARU SIDOARJO','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(46,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bandung Branch 1','','Jl. Soekarno Hatta No. 791, Cisaranten Wetan Bandung 40294, Jawa Barat','Fax : 022-7833 215, 7817 247    Fax : 022-7833 215, 7817 247','','','','','Fax : 022-7833 215, 7817 247    Fax : 022-7833 215, 7817 247',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(47,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bandung Branch 2','','Jl. Nanjung RT/RW 006/11 (Blok Ajeng), Desa Utama, Kec. Cimahi Selatan Kota Cimahi, Kab. Bandung, Jawa Barat','Phone : 022- 6675 300    Fax      : 022- 6671 567','','','','','Phone : 022- 6675 300    Fax      : 022- 6671 567',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(48,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Cilacap Branch','','Jl. MT. Haryono No. 168 Kawasan Industri Cilacap 53221 Kelurahan Lomanis, Jawa Tengah','Phone    : 0282-548 345    Fax       : 0282-548 337','','','','','Phone    : 0282-548 345    Fax       : 0282-548 337',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(49,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Lombok Branch','','Jl. TGH Saleh Hambali Km 20 Dasan Cermen Sandubaya Mataram 83123','Phone : 0370-620994','','','','','Phone : 0370-620994',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Nusa Tenggara Barat'),
(50,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Sidoarjo Branch','','Jl. Sukodono No.45 Desa Keboan Sikep Kec.Gedangan Sidoarjo 61254','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(51,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Semarang Branch','','Kawasan Industri Tugu Wijaya Kusuma Jl. Industri I No. 1, Randugarut, Tugu Semarang 50010, Jawa Tengah','Phone  : 031-8912 111    Fax      : 031-8911 845','','','','','Phone  : 031-8912 111    Fax      : 031-8911 845',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(52,79,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Lampung Branch','','Jl. Tembesu No.10 Rt.001 Rw. 001 Campang Raya, Sukabumi Kota Bandar Lampung 35122, Lampung','Phone : 024-8660 999    Fax       : 024-8660 888','','','','','Phone : 024-8660 999    Fax       : 024-8660 888',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(53,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Malang Branch','','Jl. Raya Singosari Km 16, Desa Losari Kec. Singosari, Kab. Malang, Jawa Timur','Phone : 0721-7699 111    Fax      : 0721-7699 100','','','','','Phone : 0721-7699 111    Fax      : 0721-7699 100',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(54,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Klaten Branch','','Jl. Solo - Yogya Km 22, Kaliwingko, Banaran Delanggu, Klaten, Jawa Tengah','Phone : 0341-7285 667    Fax    : 0341-454 777','','','','','Phone : 0341-7285 667    Fax    : 0341-454 777',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(55,62,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bali Branch','','Jl. Bypass Ida Bagus Mantra Lingkungan Siut Desa Tulikup Kec. Gianyar Kab. Gianyar 80515','Phone : 0272-554 325    Fax      : 0272-557 000','','','','','Phone : 0272-554 325    Fax      : 0272-557 000',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Bali'),
(56,72,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Jember Branch','','Jl. Brawijaya Komplek Rejo Agung Mangli - Jember 68153','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(57,95,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Medan Branch','','Jl. Kawasan Industri No 99 S Tanjung Morawa Kab. DELI SERDANG','Phone  : 0331-426333    Fax       : 0331-426555','','','','','Phone  : 0331-426333    Fax       : 0331-426555',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(58,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Bogor Branch','','Jl. Raya Pemda - Karadenan RT 04/RW 10 Kel. Karadenan Kec. Cibinong - Bogor','phone  : 061-8050 8000 / 8050 8001    Fax  : 061-8050 8003','','','','','phone  : 061-8050 8000 / 8050 8001    Fax  : 061-8050 8003',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(59,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.cikokol (Bulky Imam Bonjol)','','Jl. IMAM BONJOL No.198 NUSA JAYA KARAWACI TANGERANG','Phone : 021-2956 8456    Fax      : 021-2956 8444','','','','','Phone : 021-2956 8456    Fax      : 021-2956 8444',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(60,87,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Pekanbaru Branch','','Jl. Siak 2 Air Hitam, Kel. Simpang Baru Kec. Tampan, Pekanbaru','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Riau'),
(61,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Plumbon Branch','','Jl. Pangeran Antasari Blok Kebuyan RT 013/ 005 Desa Lurah, Kec. Plumbon, Kabupaten Cirebon','Phone  : 0761-8417 106    Fax      : 0761-8417 102','','','','','Phone  : 0761-8417 106    Fax      : 0761-8417 102',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(62,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Parung Branch','','Jl. Raya Gunung Sindur RT 010 / RW 005 Kp. Tulang Kuning, Desa Waru, Kec, Parung Kabupaten Bogor, Jawa Barat','Phone : 0231-8290 001 / 8290 000    Fax      : 0231-8290 022 / 8290 024','','','','','Phone : 0231-8290 001 / 8290 000    Fax      : 0231-8290 022 / 8290 024',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(63,79,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Kotabumi Branch','','Jl. Lintas Sumatera RT/RW 001/001 Desa Kalibalangan, Kec. Abung Selatan Kotabumi Lampung Utara Depan Polsek Abung Selatan','Phone  : 0251-7554422    Fax        : 0251-7554423','','','','','Phone  : 0251-7554422    Fax        : 0251-7554423',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(64,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Karawang Branch','','Jl. Alternatif Tanjungpura-Klari RT 017 RW 004 Desa Mergasari, Kec. Karawang Timur Kabupaten Karawang 41351','Phone : 081511636553    Fax      : 0724-3260052','','','','','Phone : 081511636553    Fax      : 0724-3260052',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(65,64,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Serang Branch','','Jl. Raya Serang Cilegon Km 3.1 Desa Drangon Kec Taktakan Kab Serang','Phone  : 0267-8634161    Fax        : 0267-8634160','','','','','Phone  : 0267-8634161    Fax        : 0267-8634160',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(66,94,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC. PALEMBANG Branch','','Jl. Tembus Terminal Alang-Alang Lebar RT.12 RW. 05 Kel. Talang Kelapa Kec. Alang-Alang Lebar Palembang - 30154','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(67,70,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.CIANJUR','','Alamat : JL.Cianjur Suka Bumi RT.01 / RW.01 Ds.Bunisari , Kec.Warung - Kondang','Telp : 02547913535','','','','','Telp : 02547913535',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(68,89,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC.MAKASAR','','JL.Kima Raya VIII Blok SS No.23 Kel.Bira Kec.Tamalanrea Kota Makasar','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(69,73,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRIJAYA, Tbk Branch DEPO PONTIANAK','','Kawasan Borneo Business Icon Jl.Mayor Alianyang ruko B no.6 kab. Kubu Raya prov.Kalimantan Barat 78241','Telp ; 081 58 500 4989','','','','','Telp ; 081 58 500 4989',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(70,69,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Jambi Branch','','Jl. Raya Palembang- Jambi KM 14 Pondok Meja Kec.Maestong Kab. Muaro Jambi Rov.Jambi','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jambi'),
(71,92,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Manado Branch','','Jl. Raya Worang By Pass Desa Karegesan Jaga IV Kec.Kauditan Kab. Minahasa Utara','Telp : ( 0411 ) 4723201 / 4723210    Fax : ( 0411 ) 4733172','','','','','Telp : ( 0411 ) 4723201 / 4723210    Fax : ( 0411 ) 4733172',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(72,74,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk Banjarmasin Branch','','Jl. Raya Nusa Indah RT05/RW02 Kec. Bati bati, Tanah laut 70852 Kalimantan selatan Indonesia','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Selatan'),
(73,71,1044,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, Tbk DC REMBANG','','Jl Raya Rembang Lasem KM 3 Rt.01/Rw.05.Desa Pasar Banggi,Sawah, Pasar Banggi, Kec. Rembang, Kab. Rembang Jawa Tengah 59219, Indonesia','Phone : 0741-5915999    CP : Choerul Anwar ( 08161621148 ext 49169)','','','','','Phone : 0741-5915999    CP : Choerul Anwar ( 08161621148 ext 49169)',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(74,73,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PONTIANAK','','JL. ARTERI SUPADIO RT.04 / RW.08, DESA PARITBARU, KEC. SUNGAI RAYA, KAB. KUBU RAYA, KOTA PONTIANAK, L','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Barat'),
(75,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BANDUNG','','JL. AHMAD YANI NO. 806, CICAHEUM BANDUNG, 40282, 022-7202711','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(76,95,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MEDAN','','JL. SISINGAMANGARAJA KM 6.5, KEC. MEDAN AMPLAS, MEDAN - SUMUT, (061) 7877060, 7877731','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(77,92,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MANADO','','JL. AA MARAMIS NO. 15, KEL. PANIKI SATU, LINGKUNGAN 1, KEC. MAPANGET, MANADO, 95258','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(78,76,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SAMARINDA','','JL. A.W. SYAHRANIE NO. 51, KEL. SEMPAJA SELATAN, SAMARINDA - 75119, 7770734','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Timur'),
(79,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BOGOR','','JL. RAYA BOGOR - JAKARTA KM 46.7, KEL. NANGEWER MEKAR, CIBINONG, KAB. BOGOR 16912','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(80,89,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MAKASAR','','JL. PERINTIS KEMERDEKAAN NO. 17, KM. 18, KEL. PAI KEC. BIRINGKANAYA, KOTA MAKASAR, SULAWESI SELATAN','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(81,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BINTARA','','JL. I GUSTI NGURAH RAI, KEL. BINTARA, KEC. BEKASI BARAT, KOTA BEKASI, 6909471','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(82,67,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIPINANG','','JL. PISANGAN TIMUR, CIPINANG, JAKARTA TIMUR, 4706455','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(83,94,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PALEMBANG','','JL. PANGERAN AYIN RT. 05 / RW. 03, KEL. SUKAMAJU, KEC. SAKO, PALEMBANG, 711822123','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Selatan'),
(84,67,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KEMAYORAN','','JL. TERUSAN ANGKASA B2 KAV 1, GUNUNG SAHARI SELATAN, KEMAYORAN JAKARTA PUSAT, 6909471','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','DKI Jakarta'),
(85,71,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SEMARANG','','JL.RAYA KALIGAWE 38KM 5.1, RT01/RW01 TERBOYO WETAN, GENUK SEMARANG, TELP: 024-76928282','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(86,91,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KENDARI','','JL MADUSILA NO.19 KEC POASIA, KEL.ANDUONOHU, KENDARI SULAWESI TENGGARA','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tenggara'),
(87,64,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIPUTAT','','JL RAYA PARUNG CIPUTAT NO 21, RT02/04 KELURAHAN KEDAUNG, KEC, SAWANGAN, KOTA DEPOK','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(88,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG KARAWANG','','JL. KEPUH No.22 KEL. NAGASARI, KEC. KARAWANG BARAT, KAB.KARAWANG JAWA BARAT','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(89,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR KARAWANG','','JL. KEPUH No.22, (JL. LINGKAR TANJUNGPURA), KEL.NAGASARI, KEC. KARAWANG BARAT, JAWA BARAT','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(90,80,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR AMBON','','JL. SYARANAMUAL NO. 20 desa HUNUTH, Atau KATE-KATE KEC. PULAU AMBON, KOTA AMBON PROVINSI, MALUKU','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku'),
(91,72,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR MALANG','','JL. S. SUPRIADI No 170 A, KEL. KEBONSARI KEC. SUKUN MALANG, MALANG JAWA TIMUR','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(92,79,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BANDAR LAMPUNG','','JL. SUKARNO HATTA NO. 15, KEL. KAMPUNG BARU RAYA, KEC. LABUHAN RATU - BANDAR LAMPUNG','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Lampung'),
(93,71,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SOLO','','JL. RAYA SOLO - TAWANGMANGU, KM 7,2 DS DAGEN, KEC. JATEN, KAB. KARANGANYAR - JAWA TENGAH','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(94,70,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR SUKABUMI','','JL.LINGKAR SELATAN NO.26, KEL. SUDAJAYA HILIR KEC BAROS, SUKABUMI-JAWA BARAT 43161','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(95,78,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR BATAM','','JL. LETJEND SUPRAPTO (BATAMINDO MUKA KUNING), MUKA KUNING, SEI BEDUK','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kepulauan Riau'),
(96,64,1044,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR CIKOKOL','','JL.MH.THAMRIN RT.001/RW.002, KEL.CIKOKOL KEC.TANGERANG, TANGERANG - BANTEN 15117','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Banten'),
(97,72,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA SURABAYA','','Jl. BERBEK INDUSTRI VII NO.3 - 5, DESA KEPUH KIRIMAN, WARU, SIDOARJO - SURABAYA (65255), Tlp. (031) 7496 - 001/ 031-7494-001 (BAP) 031-8687-005 (GA), Fax. (031) 7480-006 (OFC) / 031-7480-0078 (DC)','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(98,90,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC PALU','','JL. TRANS SULAWESI KM.16, KEL. KAYUMALUE PAJEKO','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tengah'),
(99,92,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA BITUNG','','JL. INDUSTRI KM 12 KP. KADU DESA BUNDER, RT.03 CIKUPA, TANGERANG / EKS GUDANG BULOG','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(100,70,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA MIDI PASURUHAN','','JL. RY BEJI, DS. CANGKRING, MALANG, RT 02 RW 01, PASURUHAN, PASURUHAN, MALANG, Tlp.(0343)6531973','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(101,70,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA BEKASI','','Jl. Jababeka XI Blok L 3-5, Kawasan Industri Jababeka, Cikarang Utara, Bekasi, Telp. (021) 8984-6688), Fax. (021) 8984-4588','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Barat'),
(102,80,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC AMBON','','JL. SISINGAMANGARAJA NO.88, KEL, PASSO, KEC, BAGULA, KOTA AMBON MALUKU 97232','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Maluku'),
(103,95,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA MEDAN','','Jalan MG. Manurung, Kawasan Industri Amplas, KM 9,5. Kelurahan Timbang Deli, Kecamatan Medan, Amplas, Kota Medan','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sumatera Utara'),
(104,90,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC PALU 2','','Jl. Karanjalemba no.16, Birobuli Selatan, Palu Selatan, Kota Palu, Sulawesi Tengah, Kode Pos 94364','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Tengah'),
(105,92,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC MANADO','','JL. RAYA MANADO BITUNG KM 15, KOMPLEKS PERGUDANGAN OLIMPIK GRUP, KEL. KOLONGAN KEC KALAWAT, MINAHASA UTARA, MANADO SULUT','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Utara'),
(106,71,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC YOGYAKARTA','','JL. JATI No. 262, TEGAL PASAR, BANGUN TAPAN, BANTUL YOGYAKARTA, Telp. 027404932186','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Daerah Istimewa Yogyakarta'),
(107,89,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC MAKASSAR','','JL. Kima Raya KM.8 SS No. 23, Biringkanaya - Daya, Makasar 90245','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Sulawesi Selatan'),
(108,76,1044,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA DC SAMARINDA','','JL. SURYANATA RT 015 KOMPLEK B, SAMARINDA, Telp., Fax. (0541)111682','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Kalimantan Timur'),
(109,72,1044,'PT. SUMBER HIDUP SEHAT','PT. SUMBER HIDUP SEHAT DC. SIDOARJO','','Komplek Pergudangan dan Industri, Non B3 Meiko Abadi III Blok B 32.','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Timur'),
(110,71,1044,'PT. SUMBER HIDUP SEHAT','PT. SUMBER HIDUP SEHAT DC. SEMARANG','','Jl. Fatmawati No.18 RT. 03 RW 25 Kel. Sendangmulyo, kec. Tembalang.','','','','','','',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Jawa Tengah'),
(111,70,1006,'TOSERBA YOGYA/GRIYA','TOSERBA YOGYA/GRIYA  DC.BUAH BATU',NULL,'Jl.Terusan Buah Batu No.12  Rt.06/Rw.04 \r\nKel. Batununggal   Kec. Bandung Kidul\r\nKota Bandung\r\nBANDUNG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:03:06','2023-08-10 05:03:06',NULL),
(112,70,1006,'TOSERBA YOGYA/GRIYA','TOSERBA YOGYA/GRIYA  DC.GRIYA CENTER',NULL,'JL.JAKARTA  No.53 \r\nBANDUNG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:04:18','2023-08-10 05:04:18',NULL),
(113,66,973,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.YOGYAKARTA',NULL,'JL. MAGELANG KM,6\r\nSINDUADI, MELATI, SLEMAN\r\nDAERAH ISTIMEWA YOGYAKARTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:07:26','2023-08-10 05:07:26',NULL),
(114,64,956,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.CIKOKOL',NULL,'JL.MH THAMRIN  RT 001/002\r\nKEL CIKOKOL , KEC TANGERANG\r\nBANTEN - 15117',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:08:38','2023-08-10 05:08:38',NULL),
(115,64,956,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.TANGERANG',NULL,'JL. GATOT SUBROTO KM. 5 NO. 4\r\nRT.001 / 001  JATI UWUNG\r\nTANGERANG,BANTEN 15138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:09:33','2023-08-10 05:09:33',NULL),
(116,70,1002,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.SUKABUMI',NULL,'JL.LINGKAR SELATAN  NO.26\r\nSUDAJAYA HILIR, BAROS\r\nJAWA BARAT, SUKABUMI - 43161',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:10:37','2023-08-10 05:10:37',NULL),
(117,94,1413,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.PALEMBANG',NULL,'JL. PANGERAN AYIN NO.326 RT. 05 / RW. 03\r\nKEL. SUKAMAJU, KEC. SAKO\r\nPALEMBANG\r\n711822123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:11:31','2023-08-10 05:11:31',NULL),
(118,64,955,'PT.PERINTIS PELAYANAN PARIPURNA','PT.PERINTIS PELAYANAN PARIPURNA',NULL,'JL. Raya Serang KM.10 Pos Bitung, RT.017/004 \r\nDesa Kadu, Kec.Curug, Kab. Tangerang','021-59490686',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:14:23','2023-08-10 05:14:23',NULL),
(119,64,955,'PT. CENTURY FRANCHISINDO UTAMA','PT. CENTURY FRANCHISINDO UTAMA',NULL,'JL. Raya Serang KM.10 , RT.017/004 \r\nDesa Kadu jaya, Kec.Curug, Kab. Tangerang','021-59490686',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:16:10','2023-08-10 05:16:10',NULL),
(120,70,1021,'PT. Hero Supermarket, Tbk','PT. Hero Supermarket, Tbk',NULL,'JL. INDOFARMA  RT 01  RW 10 \r\nCIBITUNG - BEKASI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-10 05:17:33','2023-08-10 05:17:33',NULL),
(121,71,1048,'BOOTS','BOOTS DC SEMARANG',NULL,'Jl.Madukoro Raya, Kerobokan Kec, Semarang Barat Kota Semarang',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,75,'2023-08-16 04:14:41','2023-08-30 04:41:46',NULL),
(122,87,1300,'PT. INTI CAKRAWALA CITRA','CABANG INDOGROSIR PEKANBARU',NULL,'JL.SOEKARNO HATTA NO,18\r\nRT01 RW,08 KEL SIDOMULYOBARAT\r\nKEC TAMPAN, PEKANBARU 28294','0761-564641',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-16 04:35:44','2023-08-16 04:35:44',NULL),
(123,70,1014,'APT','PT.SAPTA PRIMA MEDIKA',NULL,'JL.KP MUARA BERES No.55 \r\nRT.02/RW 04 KEL.SUKAHATI\r\nCIBINONG-BOGOR',NULL,'085751000668',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-22 04:40:10','2023-08-22 04:40:10',NULL),
(124,72,1094,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .DC SURABAYA',NULL,'JL. RAYA JEMURSARI NO. 351\r\nSURABAYA \r\nTELP. 8439988',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-24 03:34:48','2023-08-24 03:34:48',NULL),
(125,64,955,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS THE BREEZE BSD CITY',NULL,'The Breeze BSD City # L.63A-Lake Level\r\nJl. BSD Green Office Park, Kelurahan Sampora\r\nKec, Cisauk. Kab, Tangerang Banten 15345','0812-5710-1891','Apj. Karla Violleta  (0812-5710-1891)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-25 02:20:49','2023-09-01 03:07:35',NULL),
(126,69,990,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .IDG JAMBI',NULL,'JL.LINGKAR SELATAN NO.18 RT.36\r\nKELURAHAN KENALI ASAM BAWAH\r\nKEC.KOTA BARU \r\nKOTA JAMBI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-26 03:25:03','2023-08-26 03:25:03',NULL),
(127,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS GANDARIA CITY MALL',NULL,'Jl.Sultan Iskandar Muda, Rt.10/Rw.6\r\nKebayora Lama Utara, Kec.Kebayoran Lama\r\nJakarta Selatan.DKI Jakarta 12240','021-27085901',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-30 04:44:20','2023-08-30 04:44:20',NULL),
(128,70,1012,'PT.TEKNOLOGI MEDIKA PRATAMA','PT.TEKNOLOGI MEDIKA PRATAMA',NULL,'Komplek Pergudangan Kubik Logistics\r\nGudang E1 E2 E7\r\nJl. Tugu Raya Rt.10 /Rw.10\r\nDs / Kel Tugu. Kec Cimanggis,Kota Depok\r\nProv .Jawa Barat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-08-31 04:40:38','2023-08-31 04:40:38',NULL),
(129,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS BLOK M PLAZA',NULL,'Plaza Blok M, UG 03 – 04\r\nJl. Bulungan No.76, Kel, Kramat Pela\r\nKec, Kebayoran Baru, Kota Jakarta Selatan\r\nDKI Jakarta 12130\r\n021-7209175',NULL,'Apj. Arlin Wahyudi (0812-8568-6696)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-09-02 04:46:37','2023-09-02 04:46:37',NULL),
(130,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS AEON TANJUNG BARAT',NULL,'AEON Mall Tanjung Barat # Level 3F,Unit No.3-12A\r\nJl.Raya Tanjung Barat No.163.Rt 12/Rw 4.\r\nKel, Tanjung Barat. Kec, Jagakarsa. Kota Administrasi \r\nJakarta Selatan. DKI Jakarta 12530',NULL,'Apj. Yudha Iswara Yunanto   (0812-1199-4725)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-09-06 02:27:52','2023-09-06 02:27:52',NULL),
(131,67,978,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS CENTRAL PARK',NULL,'Central Park Mall Lantai LG No. Unit L-214A & L-215\r\nJl. Let.Jend.S. Parman Kav.28, Kel. Tanjung Duren Selatan\r\nKec. Grogol Petamburan, Kota Adm Jakarta Barat\r\nDKI Jakarta 11470',NULL,'Apj. Luh Jenny Wahyuni  ( 0878-4568-7002)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-09-08 03:45:05','2023-09-08 03:45:05',NULL),
(132,67,975,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS RUKO KEMANG',NULL,'Jl. Kemang Raya No.24 A   Rt.10/Rw.05\r\nKel,Bangka.  Kec, Mampang Prapatan\r\nKota Jakarta Selatan.\r\nDKI Jakarta 12730\r\n0858-9235-1967',NULL,'Apj. Muhammad Rifky Firdaus (0858-9107-7885)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-09-19 06:40:09','2023-09-19 06:40:09',NULL),
(133,72,1075,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, DC MADIUN',NULL,'JL. RAYA SURABAYA - MADIUN\r\nDUSUN IV, BONGSOPOTRO\r\nKEC. SARADAN, KAB. MADIUN\r\nJAWA TIMUR',NULL,'PIC. FRANSISKA TELP. 085646595127',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-02 06:02:04','2024-05-17 02:58:52',NULL),
(134,74,1113,'PT. INTI CAKRAWALA CITRA','INDOGROSIR BANJARMASIN',NULL,'JL.A.YANI KM 12,2\r\nKEL.GAMBUT BARAT KAB.BANJAR\r\nBANJARMASIN\r\n70652',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-07 03:21:40','2023-10-07 03:21:40',NULL),
(135,95,1427,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC STABAT',NULL,'JL. LINTAS SUMATERA  KEL, KARANG REJO\r\nKEC, STABAT  KOTA STABAT\r\nKAB, LANGKAT SUMATERA UTARA 20811',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-09 04:38:20','2023-10-09 04:38:20',NULL),
(136,67,977,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS SOGO PLAZA SENAYAN',NULL,'Mall Plaza Senayan,lantai 1 #101A0\r\nJl. Asia Afrika No.8, Kelurahan Glora, Kec. Tanah Abang\r\nKota Adm Jakarta Pusat\r\nDKI Jakarta 10270\r\n021-57900058',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-12 06:27:38','2023-10-12 06:27:38',NULL),
(137,64,955,'PT.PERINTIS PELAYANAN PARIPURNA','PT.PERINTIS PELAYANAN PARIPURNA (GUDANG CENTURY)',NULL,'GUDANG CENTURY \r\n JL. Raya Serang KM.10 Pos Bitung, RT.017/004 \r\nDesa Kadu, Kec.Curug, Kab. Tangerang\r\nTelp. 021-59490686',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-16 08:19:11','2023-10-16 08:19:11',NULL),
(138,71,1028,'PT. MIDI UTAMA INDONESIA','PT. MIDI UTAMA INDONESIA .DC BOYOLALI',NULL,'JL. NASIONAL 16 \r\n(JL. SEMARANG SURAKARTA)\r\nKEL.WINONG , KEC. BOYOLALI\r\nKAB.BOYOLALI, JAWA TENGAH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-20 03:48:27','2023-10-20 03:48:27',NULL),
(139,64,956,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA . IDG TANGERANG',NULL,'JL. GATOT SUBROTO KM. 5 NO. 4\r\nJATI UWUNG\r\nTANGERANG 15138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-25 08:38:46','2023-10-25 08:38:46',NULL),
(140,67,976,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS GOLF ISLAND BATAVIA PIK',NULL,'Rukan Beach View Batavia Golf Island Blok.A No.80\r\nJl. Pantai Indah Kapuk, Kel. Kamal Muara\r\nKec. Penjaringan, Kota Administrasi Jakarta Utara\r\nProv. DKI Jakarta 14470',NULL,'Apj. Asep Kurnia (081287854074)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-10-26 06:17:18','2023-10-26 06:17:18',NULL),
(141,72,1077,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC.MALANG',NULL,'JL. S . SUPRIADI No 170 A\r\nKEL. KEBONSARI  KEC. SUKUN MALANG\r\nMALANG JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-11-04 02:28:23','2023-11-04 02:28:23',NULL),
(142,95,1427,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC STABAT',NULL,'JL. LINTAS SUMATERA  KEL. KARANG REJO\r\nKEC. STABAT KOTA STABAT\r\nKAB.LANGKAT SUMUT 20811',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-11-06 07:58:54','2023-11-06 07:58:54',NULL),
(143,67,976,'PT.PANEN SELARAS ADIPERKASA','PT.PANEN SELARAS ADIPERKASA.BOOTS KELAPA GADING MALL',NULL,'Mall Kelapa Gading,lantai Ground G-73B\r\nJl. Bulevard Kelapa Gading Blok M,Rt 13/ Rw 18\r\nKel, Kelapa Gading Timur. Kec, Kelapa Gading\r\nKota Adm Jakarta Utara, DKI Jakarta 14241',NULL,'Apj. Maitri Vimala  (082350208680)',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-11-11 03:06:15','2023-11-11 03:06:15',NULL),
(144,64,955,'WAREHOUSE WATSONS','WAREHOUSE WATSONS',NULL,'KOMPLEK PERGUDANGAN NIHON SEIMA BLOK H \r\n JL. GATOT SUBROTO KM.8 \r\nDesa Kadujaya, Kec.Curug, Kab. Tangerang',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2023-11-21 04:10:02','2023-11-21 04:10:02',NULL),
(145,67,977,'PT.GOGOBLI ASIA TEKNOLOGI','PT.GOGOBLI ASIA TEKNOLOGI',NULL,'Jl.Palmerah Utara  No.61A\r\nGelora Tanah Abang\r\nJakarta Pusat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-20 02:46:38','2024-01-20 02:46:38',NULL),
(146,71,1040,'PT. SUMBER ALFARIA TRJAYA','PT. SUMBER ALFARIA TRJAYA, DC TEGAL',NULL,'DC TEGAL\r\nJl. Jalan Raya Lingkar Slawi,desa Paguyangan\r\nPenusupan,Kecamatan Pangkah\r\nKabupaten Tegal Jateng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-20 04:45:13','2024-01-20 04:45:13',NULL),
(147,89,1322,'APT','APT CHOPPER FARMA',NULL,'JL.PACCARAKANG NO.66 \r\nKEL,PACCERAKKANG\r\nKEC,BIRINGKANAYA  KOTA MAKASAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:21:10','2024-01-29 12:21:10',NULL),
(148,72,1091,'APT','APT SYAKIRA FARMA',NULL,'RUKO VALENCIA BLOK AA NO.29\r\nKEC.GEDANGAN   KAB. SIDOARJO\r\nPROV.JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:22:40','2024-01-29 12:22:40',NULL),
(149,82,1212,'APT','APT MANDIRI',NULL,'JL.DARUSSALAM  NO.44\r\nGP JAWA BARU\r\nBANDA SAKTI LHOKSEUMAWE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:24:19','2024-01-29 12:24:19',NULL),
(150,93,1385,'APT','APT SYUHADA',NULL,'JL.TEUKU UMAR  NO.1A \r\nSIMPANG ALAI -  PADANG',NULL,'085375751616',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:25:37','2024-01-29 12:25:37',NULL),
(151,87,1300,'APT','APT AKASIA FARMA',NULL,'JL.UTAMA / TENGKU BEY KOMP BUMI SEJAHTERA\r\nBLOK A2  NO.05\r\nKEL.SIMPANG TIGA  KEC. BUKIT RAYA\r\nKOTA PEKANBARU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:28:24','2024-01-29 12:28:24',NULL),
(152,89,1322,'APT','APT ARKA MEDIKA',NULL,'JL.UJUNG BORI LAMA  NO.4\r\nKEL.ANTANG  KEC. MANGGALA\r\nKOTA MAKASAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:29:23','2024-01-29 12:29:23',NULL),
(153,70,1006,'APT','APT KARNA FARMA',NULL,'JL.RAJAWALI BARAT  NO.7A\r\nKEL.MALEBER  KEC.ANDIR\r\nKOTA BANDUNG. JAWA BARAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:32:25','2024-01-29 12:32:25',NULL),
(154,75,1132,'TO ','TO SUBUR MAKMUR',NULL,'JL.D.I PANJAITAN  NO.63\r\nMB KETAPANG\r\nKALIMANTAN TENGAH',NULL,'082255307575',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:34:39','2024-01-29 12:34:39',NULL),
(155,70,1006,'APT','APT ALMA FELIZ',NULL,'JL.SOMA  NO.16\r\nBABAKAN SARI\r\nKEC.KIARACONDONG. KOTA BANDUNG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:35:24','2024-01-29 12:35:24',NULL),
(156,92,1374,'APT','APT SEHAT FARMA IV',NULL,'JL.DURIAN RAYA \r\nKEL.PANIKI DUA  KEC.MAPANGET\r\nKOTA MANADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:38:31','2024-01-29 12:38:31',NULL),
(157,71,1030,'TO ','TO ABADI',NULL,'JL.SUNAN KALIJAGA 33\r\nDEMAK',NULL,'082227111107',NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-01-29 12:39:12','2024-01-29 12:39:12',NULL),
(158,71,1041,'TO ','TO BETA',NULL,'JL.JEND SUTOYO  NO.45\r\nKEC,PURWOKERTO BARAT \r\nKAB, BANYUMAS','089508940924',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 07:54:12','2024-02-02 07:54:12',NULL),
(159,72,1087,'TO ','TO SUMBER SEHAT',NULL,'JL.GATOT SUBROTO  NO.47\r\nRT 02 / RW 02\r\nPAKUNDEN PONOROGO. JAWA TIMUR','08123433375',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 07:55:38','2024-02-02 07:55:38',NULL),
(160,72,1091,'APT','APT BETRO',NULL,'JL.GARUDA  NO.100\r\nBETRO-SEDATI-SIDOARJO\r\nJAWA TIMUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 07:56:29','2024-02-02 07:56:29',NULL),
(161,72,1097,'TO ','TO SAHABAT',NULL,'JL.KHR.ABDUL FATTAH\r\nDS/KEL.SEMBUNG\r\nKEC.TULUNGAGUNG. JAWA TIMUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 07:58:19','2024-02-02 07:58:19',NULL),
(162,70,1009,'APT','APT FITAQA FARMA',NULL,'JL.Ir H.JUANDA\r\nDS / KEL.SUKAMULYA KEC. BUNGURSARI\r\nKOTA TASIKMALAYA. JAWA BARAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 07:59:34','2024-02-02 07:59:34',NULL),
(163,63,948,'TO ','TO SEHAT',NULL,'JL.JEND SUDIRMAN  NO.23\r\nPASIR PADI,GIRIMAYA\r\nPANGKAL PINANG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:02:05','2024-02-02 08:02:05',NULL),
(164,95,1429,'APT','APT AK - JAYA',NULL,'JL.BESARDELI TUA KM.8,5  NO.8\r\nDS.SUKA MAKMUR\r\nKOMPLEK SUKA MAKMUR WALK.DELI TUA MEDAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:03:49','2024-02-02 08:03:49',NULL),
(165,66,974,'APT','APT KARANG JATI',NULL,'JL.SUNGAPAN JETIS TAMANTIRTO\r\nKASIHAN,BANTUL\r\nYOGYAKARTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:05:47','2024-02-02 08:05:47',NULL),
(166,67,978,'APT','APT DZAWIN',NULL,'JL.HAJI SELONG NO.54 B\r\nRT 01 / 01.DURI KOSAMBI - CENGKARENG\r\nJAKARTA  BARAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:22:49','2024-02-02 08:22:49',NULL),
(167,94,1413,'APT','APT REFAH',NULL,'JL.SLAMET RIYADI LORONG MENTOK NO.27\r\nRT 08 / 03.  KEL.11 ILIR  KEC.ILIR TIMUR III\r\nKOTA PALEMBANG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:27:04','2024-02-02 08:27:04',NULL),
(168,71,1048,'TIRTA HUSADA FARMA','TIRTA HUSADA FARMA',NULL,'JL.SETIABUDI  NO.29\r\nSRONDOL KULON . BANYUMANIK\r\nSEMARANG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-02 08:32:14','2024-02-02 08:32:14',NULL),
(169,71,1041,'PT. INTI CAKRAWALA CITRA','PT.INTI CAKRAWALA CITRA .DC PURWOKERTO',NULL,'JL.RAYA GERILYA BARAT,TANJUNG\r\nKEDUNGWRINGIN,PURWOKERTO-SELATAN\r\nPATIKRAJA,BANYUMAS.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-02-07 04:31:15','2024-02-07 04:31:15',NULL),
(170,72,1069,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC JOMBANG 2',NULL,'JL. RAYA PETERONGAN KM 71,3\r\nDESA CANDI - DESA SAMBIREJO\r\nKEC. JOGOROTO, KAB JOMBANG  61485',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-03-05 03:17:55','2024-03-05 03:17:55',NULL),
(171,70,1007,'PT. INTI CAKRAWALA MAJU','PT.INTI CAKRAWALA MAJU. DC KARAWANG',NULL,'JL. Lingkar Tanjung Pura No.22\r\nNagasari, Karawang Barat\r\nKarawang, Jawa Barat - 41312',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-04-05 02:06:59','2024-04-05 02:06:59',NULL),
(172,71,1041,'PT. INTI CAKRAWALA MAJU','PT. INTI CAKRAWALA MAJU DC PURWOKERTO',NULL,'JL. RAYA GERILYA BARAT, TANJUNG\r\nKEDUNGWRINGIN, PURWOKERTO -\r\nSELATAN, PATIKRAJA, BANYUMAS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-05-04 02:18:42','2024-05-04 02:18:42',NULL),
(173,76,1148,'PT. INDOMARCO PRISMATAMA','PT.INDOMARCO PRISMATAMA DC SAMARINDA',NULL,'JL. EKONOMI    NO 1\r\nDESA LOA BUAH. KEC,SUNGAI KUNJANG\r\nKODYA SAMARINDA\r\n0541-7770734',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-06-11 02:16:57','2024-06-11 02:16:57',NULL),
(174,91,1354,'PT. INTI CAKRAWALA MAJU','PT.INTI CAKRAWALA MAJU. DC KENDARI',NULL,'JL MADUSILA NO.19 KEC POASIA\r\nKEL.ANDUONOHU\r\nKENDARI SULAWESI TENGGARA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-06-11 03:21:02','2024-06-11 03:21:02',NULL),
(175,71,1048,'ICM SEMARANG','PT.INTI CAKRAWALA MAJU. DC SEMARANG',NULL,'JL.RAYA KALIGAWE NO.38 RT.01/01\r\nTERBOYO WETAN,GENUK,SEMARANG,JAWA TENGAH\r\n50112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,75,'2024-07-02 03:13:37','2024-07-02 03:13:37',NULL),
(176,71,1036,'daffa hanaris','daffa hanaris',NULL,'sumbulan lor rt 02 rw 13\r\nmakamhaji','04849484',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,'2024-10-17 04:42:38','2024-10-17 04:42:38',NULL);

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
(14,'KME','KME','SEMARANG','JL.PUSPOWARNO RAYA NO 55 D',1048,'00','00','00','00','00','00',NULL,'00',0,0,0,0,NULL,0,75,'2023-08-16 04:53:03','2023-08-16 04:53:03'),
(15,'GED','GED','INDONESIA','JL.PROF Dr.SOEPOMO SH NO 58 .JAKARTA 12870 INDONESIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,75,'2024-01-29 12:55:38','2024-01-29 12:55:38'),
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

/*Data for the table `core_supplier` */

insert  into `core_supplier`(`supplier_id`,`branch_id`,`province_id`,`city_id`,`supplier_code`,`supplier_name`,`supplier_id_number`,`supplier_address`,`supplier_city`,`supplier_home_phone`,`supplier_mobile_phone1`,`supplier_mobile_phone2`,`supplier_fax_number`,`supplier_email`,`supplier_contact_person`,`supplier_bank_acct_name`,`supplier_bank_acct_no`,`supplier_tax_no`,`supplier_npwp_no`,`supplier_npwp_address`,`supplier_payment_terms`,`supplier_status`,`supplier_remark`,`advance_account_id`,`giro_account_id`,`payable_account_id`,`created_id`,`created_at`,`data_state`,`updated_at`) values 
(7,1,71,1048,'','KIMIA FARMA',NULL,'Jl. Gedong Songo Timur No.1','','(024) 7604307',NULL,NULL,NULL,NULL,NULL,'Mandiri KIMIA FARMA','1234567',NULL,'1',NULL,NULL,0,NULL,0,0,0,74,'2023-06-24 03:54:36',0,'2023-12-28 04:41:31'),
(8,1,71,1048,'','PHAPROS, PT',NULL,'Jl. Simongan No.131','','(024) 7607330',NULL,NULL,NULL,NULL,NULL,'Mandiri PHAPROS, PT','12345678',NULL,'2',NULL,NULL,0,NULL,0,0,0,74,'2023-06-24 03:55:48',0,'2023-12-28 04:42:01');

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
  CONSTRAINT `FK_inv_goods_received_note_purchase_order_id` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`purchase_order_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `core_supplier` (`supplier_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_inv_goods_received_note_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `inv_warehouse` (`warehouse_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_goods_received_note` */

insert  into `inv_goods_received_note`(`goods_received_note_id`,`purchase_order_id`,`supplier_id`,`warehouse_id`,`goods_received_note_no`,`goods_received_note_date`,`goods_received_note_expired_date`,`goods_received_note_remark`,`goods_received_note_status_invoice`,`receipt_image`,`delivery_note_no`,`faktur_no`,`subtotal_item`,`item_type`,`data_state`,`voided_remark`,`voided_id`,`voided_at`,`created_id`,`created_at`,`updated_at`) values 
(19,243,8,1,'0001/IGRN/I/2024','2024-01-03',NULL,NULL,1,'',NULL,'CIV000024545',264240,0,0,NULL,0,NULL,75,'2024-01-20 02:13:16','2024-01-20 08:05:23'),
(20,244,8,1,'0002/IGRN/I/2024','2024-01-03',NULL,NULL,1,'',NULL,'CIV000024546',264240,0,0,NULL,0,NULL,75,'2024-01-20 02:22:06','2024-01-20 08:14:27'),
(21,245,7,1,'0003/IGRN/I/2024','2024-01-24',NULL,NULL,0,'',NULL,'2807088587',9984,0,0,NULL,0,NULL,75,'2024-01-24 03:12:49','2024-01-24 03:12:49'),
(22,246,7,1,'0004/IGRN/I/2024','2024-01-24',NULL,NULL,0,'',NULL,'2807088595',8016,0,0,NULL,0,NULL,75,'2024-01-24 03:14:29','2024-01-24 03:14:29'),
(23,247,7,1,'0005/IGRN/I/2024','2024-01-24',NULL,NULL,0,'',NULL,'2807088635',8000,0,0,NULL,0,NULL,75,'2024-01-24 03:26:38','2024-01-24 03:26:38'),
(24,248,7,1,'0006/IGRN/I/2024','2024-01-24',NULL,NULL,0,'',NULL,'2807088640',4315,0,0,NULL,0,NULL,75,'2024-01-24 03:27:54','2024-01-24 03:27:54'),
(25,249,7,1,'0007/IGRN/I/2024','2024-01-23',NULL,NULL,0,'',NULL,'2807088584',720,0,0,NULL,0,NULL,75,'2024-02-02 02:59:28','2024-02-02 02:59:28'),
(26,250,7,1,'0008/IGRN/I/2024','2024-01-31',NULL,NULL,0,'',NULL,'2807112044',18000,0,0,NULL,0,NULL,75,'2024-02-02 03:03:20','2024-02-02 03:03:20'),
(27,251,7,1,'0009/IGRN/I/2024','2024-01-31',NULL,NULL,0,'',NULL,'2807114578',485,0,0,NULL,0,NULL,75,'2024-02-02 03:04:27','2024-02-02 03:04:27'),
(28,252,7,1,'0010/IGRN/I/2024','2024-01-31',NULL,NULL,0,'',NULL,'2807112061',12000,0,0,NULL,0,NULL,75,'2024-02-02 03:05:21','2024-02-02 03:05:21'),
(29,254,7,1,'0011/IGRN/II/2024','2024-02-28',NULL,NULL,0,'',NULL,NULL,4786,0,0,NULL,0,NULL,75,'2024-02-29 03:04:58','2024-02-29 03:04:58'),
(30,255,7,1,'0012/IGRN/II/2024','2024-02-28',NULL,NULL,0,'',NULL,NULL,9614,0,0,NULL,0,NULL,75,'2024-02-29 03:05:27','2024-02-29 03:05:27'),
(31,253,8,1,'0013/IGRN/II/2024','2024-02-13',NULL,NULL,0,'',NULL,NULL,870,0,0,NULL,0,NULL,75,'2024-03-02 03:05:15','2024-03-02 03:05:15'),
(32,256,7,1,'0014/IGRN/II/2024','2024-02-29',NULL,NULL,0,'',NULL,NULL,25632,0,0,NULL,0,NULL,75,'2024-03-02 03:15:39','2024-03-02 03:15:39'),
(33,257,7,1,'0015/IGRN/II/2024','2024-02-29',NULL,NULL,0,'',NULL,NULL,14400,0,0,NULL,0,NULL,75,'2024-03-02 03:16:27','2024-03-02 03:16:27'),
(34,269,8,1,'0016/IGRN/VI/2024','2024-06-20',NULL,NULL,0,'',NULL,'CIV000006656',154,0,0,NULL,0,NULL,75,'2024-08-02 03:50:04','2024-08-02 03:50:04'),
(35,270,8,1,'0017/IGRN/VI/2024','2024-06-26',NULL,NULL,0,'',NULL,'CIV000007215',18,0,0,NULL,0,NULL,75,'2024-08-02 03:51:58','2024-08-02 03:51:58'),
(36,270,8,1,'0018/IGRN/VI/2024','2024-06-26',NULL,NULL,0,'',NULL,'CIV000007215',18,0,0,NULL,0,NULL,75,'2024-08-02 03:57:16','2024-08-02 03:57:16');

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
  KEY `item_id` (`item_type_id`),
  KEY `FK_goods_received_note_item_goods_received_note_id` (`goods_received_note_id`),
  KEY `FK_goods_received_note_item_purchase_order_id` (`purchase_order_id`),
  KEY `FK_goods_received_note_item_purchase_order_item_id` (`purchase_order_item_id`),
  KEY `FK_invt_goods_received_note_item_item_stock_id` (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_goods_received_note_item` */

insert  into `inv_goods_received_note_item`(`goods_received_note_item_id`,`goods_received_note_id`,`purchase_order_id`,`purchase_order_item_id`,`item_category_id`,`item_type_id`,`item_unit_id`,`item_stock_id`,`quantity`,`quantity_received`,`item_expired_date`,`data_state`,`voided_id`,`voided_at`,`created_id`,`created_at`,`updated_at`) values 
(506,19,243,22,1,1,1,0,7416,7416,'2026-11-07',0,0,NULL,75,'2024-01-20 02:13:16','2024-01-20 02:13:16'),
(507,19,243,22,1,1,1,0,99504,99504,'2026-11-07',0,0,NULL,75,'2024-01-20 02:13:16','2024-01-20 02:13:16'),
(508,19,243,22,1,1,1,0,97416,97416,'2026-11-07',0,0,NULL,75,'2024-01-20 02:13:16','2024-01-20 02:13:16'),
(509,19,243,22,1,1,1,0,59904,59904,'2026-11-07',0,0,NULL,75,'2024-01-20 02:13:16','2024-01-20 02:13:16'),
(510,20,244,23,1,1,1,0,99216,99216,'2026-11-07',0,0,NULL,75,'2024-01-20 02:22:06','2024-01-20 02:22:06'),
(511,20,244,23,1,1,1,0,40248,40248,'2026-11-07',0,0,NULL,75,'2024-01-20 02:22:06','2024-01-20 02:22:06'),
(512,20,244,23,1,1,1,0,27432,27432,'2024-12-09',0,0,NULL,75,'2024-01-20 02:22:06','2024-01-20 02:22:06'),
(513,20,244,23,1,1,1,0,97344,97344,'2026-11-08',0,0,NULL,75,'2024-01-20 02:22:06','2024-01-20 02:22:06'),
(514,21,245,24,2,25,5,0,9984,9984,'2028-12-20',0,0,NULL,75,'2024-01-24 03:12:49','2024-01-24 03:12:49'),
(515,22,246,25,2,25,5,0,8016,8016,'2029-01-16',0,0,NULL,75,'2024-01-24 03:14:29','2024-01-24 03:14:29'),
(516,23,247,26,2,25,5,0,6000,6000,'2029-01-16',0,0,NULL,75,'2024-01-24 03:26:38','2024-01-24 03:26:38'),
(517,23,247,27,2,32,5,0,2000,2000,'2028-12-12',0,0,NULL,75,'2024-01-24 03:26:38','2024-01-24 03:26:38'),
(518,24,248,28,2,22,4,0,4315,4315,'2025-11-29',0,0,NULL,75,'2024-01-24 03:27:54','2024-01-24 03:27:54'),
(519,25,249,29,1,3,3,0,720,720,'2025-10-03',0,0,NULL,75,'2024-02-02 02:59:28','2024-02-02 02:59:28'),
(520,26,250,30,2,24,5,0,8467,8467,'2028-05-23',0,0,NULL,75,'2024-02-02 03:03:20','2024-02-02 03:03:20'),
(521,26,250,31,2,24,5,0,7554,7554,'2028-05-23',0,0,NULL,75,'2024-02-02 03:03:20','2024-02-02 03:03:20'),
(522,26,250,32,2,24,5,0,1979,1979,'2028-05-23',0,0,NULL,75,'2024-02-02 03:03:20','2024-02-02 03:03:20'),
(523,27,251,33,2,22,4,0,485,485,'2025-12-04',0,0,NULL,75,'2024-02-02 03:04:27','2024-02-02 03:04:27'),
(524,28,252,34,2,22,4,0,12000,12000,'2025-12-04',0,0,NULL,75,'2024-02-02 03:05:21','2024-02-02 03:05:21'),
(525,29,254,37,2,24,5,0,4786,4786,'2028-05-31',0,0,NULL,75,'2024-02-29 03:04:58','2024-02-29 03:04:58'),
(526,30,255,38,2,24,5,0,9614,9614,'2028-06-30',0,0,NULL,75,'2024-02-29 03:05:27','2024-02-29 03:05:27'),
(527,31,253,35,1,3,3,0,720,720,'2025-11-28',0,0,NULL,75,'2024-03-02 03:05:16','2024-03-02 03:05:16'),
(528,31,253,36,1,5,3,0,150,150,'2026-07-02',0,0,NULL,75,'2024-03-02 03:05:16','2024-03-02 03:05:16'),
(529,32,256,39,1,2,3,0,25632,25632,'2025-11-23',0,0,NULL,75,'2024-03-02 03:15:39','2024-03-02 03:15:39'),
(530,33,257,40,1,3,3,0,14400,14400,'2025-12-05',0,0,NULL,75,'2024-03-02 03:16:27','2024-03-02 03:16:27'),
(531,34,269,85,1,52,3,0,154,154,'2028-07-24',0,0,NULL,75,'2024-08-02 03:50:04','2024-08-02 03:50:04'),
(532,35,270,86,1,68,44,0,18,18,'2027-05-20',0,0,NULL,75,'2024-08-02 03:51:58','2024-08-02 03:51:58'),
(533,36,270,86,1,68,44,0,18,18,'2027-05-20',0,0,NULL,75,'2024-08-02 03:57:16','2024-08-02 03:57:16');

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
  `item_stock_expired_date` date DEFAULT NULL,
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
  `created_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_stock` */

insert  into `inv_item_stock`(`item_stock_id`,`goods_received_note_id`,`goods_received_note_item_id`,`item_stock_date`,`item_stock_expired_date`,`purchase_order_item_id`,`warehouse_id`,`purchase_order_no`,`buyers_acknowledgment_no`,`no_retur_barang`,`nota_retur_pajak`,`item_category_id`,`item_type_id`,`item_id`,`item_unit_id`,`category`,`barang`,`satuan`,`item_total`,`item_unit_cost`,`item_unit_total`,`item_unit_price`,`item_unit_id_default`,`item_default_quantity_unit`,`quantity_unit`,`item_weight_default`,`item_weight_unit`,`package_id`,`package_total`,`package_unit_id`,`package_price`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,1,0,10,'','','',0,1000,0,0,10,'','0',0,'',0,0,0,0,0,0,'0000-00-00','2024-12-09 09:01:12'),
(2,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,2,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(3,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,3,0,10,'','','',0,0,0,0,10,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(4,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,4,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(5,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,5,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(6,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,6,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(7,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,7,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(8,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,8,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(9,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,9,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(10,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,10,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(11,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,11,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(12,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,12,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(13,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,13,0,0,'','','',0,0,0,0,0,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(14,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,14,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(15,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,15,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(16,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,16,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(17,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,17,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(18,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,18,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(19,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,19,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(20,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,20,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(21,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,21,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(22,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,22,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(23,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,23,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(24,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,24,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(25,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,25,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(26,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,26,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(27,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,27,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(28,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,28,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(29,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,29,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(30,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,30,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(31,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,31,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(32,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,32,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(33,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,33,0,3,'','','',0,0,0,0,3,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(34,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,34,0,4,'','','',0,0,0,0,4,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(35,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,35,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(36,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,36,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(37,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,37,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(38,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,38,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(39,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,39,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(40,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,40,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(41,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,41,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(42,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,42,0,12,'','','',0,0,0,0,12,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(43,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,43,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(44,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,44,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(45,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,45,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(46,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,46,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(47,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,47,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(48,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,48,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(49,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,49,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(50,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,50,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(51,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,51,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(52,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,52,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(53,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,53,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(54,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,54,0,2,'','','',0,0,0,0,2,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(55,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,55,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(56,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,56,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(57,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,57,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(58,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,58,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(59,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,59,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(60,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,60,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(61,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,61,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(62,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,62,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(63,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,63,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(64,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,64,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(65,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,65,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(66,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,66,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(67,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,67,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(68,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,68,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(69,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,69,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(70,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,70,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(71,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,71,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(72,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,72,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(73,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,73,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(74,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,74,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(75,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,75,0,9,'','','',0,0,0,0,9,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(76,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,76,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(77,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,77,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(78,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,78,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(79,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,79,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(80,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,80,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(81,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,81,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(82,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,82,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(83,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,83,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(84,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,84,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(85,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,85,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(86,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,86,0,30,'','','',0,0,0,0,30,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(87,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,87,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(88,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,88,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(89,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,89,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(90,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,90,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(91,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,91,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(92,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,92,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(93,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,93,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(94,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,94,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(95,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,95,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(96,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,96,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(97,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,97,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(98,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,98,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(99,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,99,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(100,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,100,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(101,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,101,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(102,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,102,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(103,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,103,0,12,'','','',0,0,0,0,12,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(104,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,104,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(105,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,105,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(106,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,106,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(107,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,107,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(108,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,108,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(109,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,109,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(110,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,110,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(111,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,111,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(112,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,112,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(113,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,113,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(114,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,114,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(115,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,115,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(116,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,116,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(117,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,117,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(118,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,118,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(119,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,119,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(120,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,120,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(121,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,121,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(122,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,122,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(123,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,123,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(124,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,124,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(125,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,125,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(126,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,126,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(127,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,127,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(128,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,128,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(129,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,129,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(130,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,130,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(131,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,131,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(132,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,132,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(133,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,133,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(134,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,134,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(135,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,135,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(136,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,136,0,12,'','','',0,0,0,0,12,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(137,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,137,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(138,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,138,0,11,'','','',0,0,0,0,11,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(139,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,139,0,11,'','','',0,0,0,0,11,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(140,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,140,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(141,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,141,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(142,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,142,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(143,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,143,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(144,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,144,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(145,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,145,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(146,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,146,0,21,'','','',0,0,0,0,21,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(147,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,147,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(148,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,148,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(149,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,149,0,21,'','','',0,0,0,0,21,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(150,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,150,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(151,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,151,0,9,'','','',0,0,0,0,9,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(152,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,152,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(153,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,153,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(154,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,154,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(155,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,155,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(156,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,156,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(157,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,157,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(158,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,158,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(159,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,159,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(160,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,160,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(161,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,161,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(162,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,162,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(163,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,163,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(164,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,164,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(165,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,165,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(166,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,166,0,5,'','','',0,0,0,0,5,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(167,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,167,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(168,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,168,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(169,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,169,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(170,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,170,0,28,'','','',0,0,0,0,28,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(171,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,171,0,6,'','','',0,0,0,0,6,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(172,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,172,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(173,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,173,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(174,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,174,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(175,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,175,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(176,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,176,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(177,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,177,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(178,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,178,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(179,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,179,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(180,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,180,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(181,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,181,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(182,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,182,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(183,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,183,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(184,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,184,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(185,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,185,0,7,'','','',0,0,0,0,7,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(186,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,186,0,25,'','','',0,0,0,0,25,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(187,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,187,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(188,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,188,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(189,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,189,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(190,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,190,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(191,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,191,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(192,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,192,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(193,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,193,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(194,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,194,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(195,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,195,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(196,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,196,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(197,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,197,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(198,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,198,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(199,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,199,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(200,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,200,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(201,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,201,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(202,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,202,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(203,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,203,0,27,'','','',0,0,0,0,27,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(204,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,204,0,0,'','','',0,0,0,0,0,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(205,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,205,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(206,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,206,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(207,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,207,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(208,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,208,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(209,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,209,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(210,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,210,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(211,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,211,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(212,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,212,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(213,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,213,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(214,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,214,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(215,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,215,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(216,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,216,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(217,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,217,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(218,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,218,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(219,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,219,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(220,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,220,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(221,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,221,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(222,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,222,0,8,'','','',0,0,0,0,8,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(223,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,223,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(224,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,224,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(225,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,225,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(226,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,226,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(227,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,227,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(228,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,228,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(229,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,229,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(230,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,230,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(231,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,231,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(232,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,232,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(233,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,233,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(234,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,234,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(235,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,235,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(236,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,236,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(237,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,237,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(238,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,238,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(239,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,239,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(240,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,240,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(241,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,241,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(242,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,242,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(243,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,243,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(244,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,244,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(245,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,245,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(246,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,246,0,9,'','','',0,0,0,0,9,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(247,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,247,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(248,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,248,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(249,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,249,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(250,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,250,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(251,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,251,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(252,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,252,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(253,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,253,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(254,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,254,0,0,'','','',0,0,0,0,0,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(255,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,255,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(256,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,256,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(257,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,257,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(258,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,258,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(259,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,259,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(260,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,260,0,12,'','','',0,0,0,0,12,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(261,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,261,0,12,'','','',0,0,0,0,12,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(262,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,262,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(263,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,263,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(264,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,264,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(265,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,265,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(266,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,266,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(267,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,267,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(268,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,268,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(269,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,269,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(270,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,270,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(271,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,271,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(272,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,272,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(273,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,273,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(274,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,274,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(275,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,275,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(276,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,276,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(277,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,277,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(278,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,278,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(279,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,279,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(280,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,280,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(281,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,281,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(282,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,282,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(283,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,283,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(284,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,284,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(285,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,285,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(286,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,286,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(287,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,287,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(288,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,288,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(289,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,289,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(290,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,290,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(291,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,291,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(292,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,292,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(293,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,293,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(294,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,294,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(295,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,295,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(296,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,296,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(297,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,297,0,26,'','','',0,0,0,0,26,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(298,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,298,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(299,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,299,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(300,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,300,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(301,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,301,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(302,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,302,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(303,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,303,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(304,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,304,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(305,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,305,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(306,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,306,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(307,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,307,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(308,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,308,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(309,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,309,0,1,'','','',0,0,0,0,1,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(310,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,310,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(311,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,311,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(312,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,312,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(313,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,313,0,24,'','','',0,0,0,0,24,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(314,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,314,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(315,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,315,0,0,'','','',0,0,0,0,0,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(316,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,316,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(317,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,317,0,22,'','','',0,0,0,0,22,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(318,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,318,0,0,'','','',0,0,0,0,0,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(319,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,319,0,29,'','','',0,0,0,0,29,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00'),
(320,0,0,'0000-00-00','0000-00-00',0,1,'','','','',1,320,0,23,'','','',0,0,0,0,23,'','',0,'',0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00');

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

/*Data for the table `inv_item_stock_adjustment` */

insert  into `inv_item_stock_adjustment`(`stock_adjustment_id`,`warehouse_id`,`stock_adjustment_date`,`data_state`,`created_id`,`updated_id`,`created_at`,`updated_at`) values 
(101,6,'2024-02-12',0,75,NULL,'2024-02-12 04:00:04','2024-02-12 04:00:04'),
(102,6,'2024-02-12',0,75,NULL,'2024-02-12 04:29:45','2024-02-12 04:29:45'),
(103,6,'2024-02-22',0,75,NULL,'2024-02-22 03:18:03','2024-02-22 03:18:03'),
(104,6,'2024-02-24',0,75,NULL,'2024-02-24 04:52:22','2024-02-24 04:52:22'),
(105,6,'2024-02-24',0,75,NULL,'2024-02-24 04:53:29','2024-02-24 04:53:29'),
(106,6,'2024-02-24',0,75,NULL,'2024-02-24 04:55:25','2024-02-24 04:55:25'),
(107,6,'2024-02-26',0,75,NULL,'2024-02-26 05:48:41','2024-02-26 05:48:41'),
(108,6,'2024-04-16',0,75,NULL,'2024-04-16 03:07:51','2024-04-16 03:07:51'),
(109,6,'2024-04-17',0,75,NULL,'2024-04-17 03:29:44','2024-04-17 03:29:44'),
(110,6,'2024-05-07',0,75,NULL,'2024-05-07 02:32:58','2024-05-07 02:32:58'),
(111,6,'2024-05-07',0,75,NULL,'2024-05-07 02:33:18','2024-05-07 02:33:18'),
(112,6,'2024-06-19',0,75,NULL,'2024-06-19 03:29:45','2024-06-19 03:29:45'),
(113,6,'2024-07-23',0,75,NULL,'2024-07-23 03:49:17','2024-07-23 03:49:17'),
(114,6,'2024-07-29',0,75,NULL,'2024-07-29 04:37:51','2024-07-29 04:37:51');

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

/*Data for the table `inv_item_stock_adjustment_item` */

insert  into `inv_item_stock_adjustment_item`(`stock_adjustment_item_id`,`stock_adjustment_id`,`item_unit_id`,`item_stock_id`,`item_first_amount`,`item_adjustment_amount`,`item_last_amount`,`item_adjustment_remark`,`data_state`,`created_id`,`updated_id`,`created_at`,`updated_at`) values 
(56,101,5,'103','-74','-1745','1671','STOK DIGUDANG',0,NULL,NULL,'2024-02-12 04:29:45','2024-02-12 04:29:45'),
(57,101,21,'113','105902','NaN',NULL,NULL,0,NULL,NULL,'2024-02-22 03:18:03','2024-02-22 03:18:03'),
(58,101,5,'458','-1246','-8432','7186','-',0,NULL,NULL,'2024-02-24 04:52:22','2024-02-24 04:52:22'),
(59,101,5,'459','-558','-7744','7186','-',0,NULL,NULL,'2024-02-24 04:53:29','2024-02-24 04:53:29'),
(60,101,21,'114','-705','-7891','7186','-',0,NULL,NULL,'2024-02-24 04:55:25','2024-02-24 04:55:25'),
(61,101,5,'103','231','-5325','5556','-',0,NULL,NULL,'2024-02-26 05:48:41','2024-02-26 05:48:41'),
(62,101,3,'51','-602','-890','288','STOK  DIGUDANG',0,NULL,NULL,'2024-04-16 03:07:51','2024-04-16 03:07:51'),
(63,101,3,'54','-84','-243','159','STOK DI GUDANG',0,NULL,NULL,'2024-04-17 03:29:45','2024-04-17 03:29:45'),
(64,101,1,'164','-2664','-71136','68472','stok di gudang',0,NULL,NULL,'2024-06-19 03:29:45','2024-06-19 03:29:45'),
(65,101,1,'2','41544','1872','39672',NULL,0,NULL,NULL,'2024-07-23 03:49:17','2024-07-23 03:49:17'),
(66,101,1,'42','99720','-144','99864',NULL,0,NULL,NULL,'2024-07-23 03:49:17','2024-07-23 03:49:17'),
(67,101,1,'2','-7056','-53280','46224','STOK DIGUDANG',0,NULL,NULL,'2024-07-29 04:37:51','2024-07-29 04:37:51');

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

/*Data for the table `inv_item_stock_card` */

insert  into `inv_item_stock_card`(`item_stock_card_id`,`item_stock_id`,`section_id`,`item_category_id`,`item_type_id`,`warehouse_id`,`supplier_id`,`item_unit_id`,`item_stock_type`,`item_batch_number`,`item_color`,`item_size`,`transaction_id`,`transaction_type`,`transaction_code`,`transaction_date`,`opening_balance`,`opening_balance_unfinished`,`item_stock_card_in`,`item_stock_card_out`,`item_unit_default_quantity`,`last_balance`,`last_balance_unfinished`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(74929,40,0,1,1,6,0,1,0,'1111','',0,16,1,'INVT_GDS_RCV_NOTE','2023-12-12',0,0,-47426,47431,0,5,0,0,NULL,'2023-12-12 16:37:25','2023-12-12 16:37:25'),
(74930,41,0,1,2,6,0,6,0,'2222','',0,16,1,'INVT_GDS_RCV_NOTE','2023-12-12',0,0,-33602,33607,0,5,0,0,NULL,'2023-12-12 16:37:25','2023-12-12 16:37:25'),
(74931,44,0,1,1,6,0,1,0,'123','',0,17,1,'INVT_GDS_RCV_NOTE','2023-12-13',0,0,0,100,0,100,0,0,NULL,'2023-12-13 10:15:12','2023-12-13 10:15:12'),
(74932,45,0,1,2,6,0,6,0,'456','',0,17,1,'INVT_GDS_RCV_NOTE','2023-12-13',0,0,-41616,41816,0,200,0,0,NULL,'2023-12-13 10:15:12','2023-12-13 10:15:12'),
(74933,48,0,2,24,6,0,5,0,'121212','',0,18,1,'INVT_GDS_RCV_NOTE','2023-12-13',0,0,0,50,0,50,0,0,NULL,'2023-12-13 14:57:52','2023-12-13 14:57:52'),
(74934,49,0,2,26,6,0,5,0,'131313','',0,18,1,'INVT_GDS_RCV_NOTE','2023-12-13',0,0,-21,121,0,100,0,0,NULL,'2023-12-13 14:57:53','2023-12-13 14:57:53'),
(74935,159,0,1,1,6,0,1,0,'66002348','',0,19,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-10656,18072,0,7416,0,0,NULL,'2024-01-20 09:13:16','2024-01-20 09:13:16'),
(74936,160,0,1,1,6,0,1,0,'66002349','',0,19,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,3456,96048,0,99504,0,0,NULL,'2024-01-20 09:13:16','2024-01-20 09:13:16'),
(74937,161,0,1,1,6,0,1,0,'66002350','',0,19,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-14760,112176,0,97416,0,0,NULL,'2024-01-20 09:13:16','2024-01-20 09:13:16'),
(74938,162,0,1,1,6,0,1,0,'66002351','',0,19,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-42840,102744,0,59904,0,0,NULL,'2024-01-20 09:13:16','2024-01-20 09:13:16'),
(74939,163,0,1,1,6,0,1,0,'66002352','',0,20,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-2880,102096,0,99216,0,0,NULL,'2024-01-20 09:22:06','2024-01-20 09:22:06'),
(74940,162,0,1,1,6,0,1,0,'66002351','',0,20,1,'INVT_GDS_RCV_NOTE','2024-01-03',59904,0,-62496,102744,0,100152,0,0,NULL,'2024-01-20 09:22:06','2024-01-20 09:22:06'),
(74941,164,0,1,1,6,0,1,0,'66002354','',0,20,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-91080,118512,0,27432,0,0,NULL,'2024-01-20 09:22:06','2024-01-20 09:22:06'),
(74942,165,0,1,1,6,0,1,0,'66002353','',0,20,1,'INVT_GDS_RCV_NOTE','2024-01-03',0,0,-4464,101808,0,97344,0,0,NULL,'2024-01-20 09:22:06','2024-01-20 09:22:06'),
(74943,209,0,2,25,6,0,5,0,'L30350S','',0,21,1,'INVT_GDS_RCV_NOTE','2024-01-24',0,0,1824,8160,0,9984,0,0,NULL,'2024-01-24 10:12:49','2024-01-24 10:12:49'),
(74944,220,0,2,25,6,0,5,0,'A40025S','',0,22,1,'INVT_GDS_RCV_NOTE','2024-01-24',0,0,1824,6192,0,8016,0,0,NULL,'2024-01-24 10:14:29','2024-01-24 10:14:29'),
(74945,220,0,2,25,6,0,5,0,'A40025S','',0,23,1,'INVT_GDS_RCV_NOTE','2024-01-24',8016,0,-192,6192,0,14016,0,0,NULL,'2024-01-24 10:26:38','2024-01-24 10:26:38'),
(74946,226,0,2,32,6,0,5,0,'L30323S','',0,23,1,'INVT_GDS_RCV_NOTE','2024-01-24',0,0,1808,192,0,2000,0,0,NULL,'2024-01-24 10:26:38','2024-01-24 10:26:38'),
(74947,218,0,2,22,6,0,4,0,'K32312N','',0,24,1,'INVT_GDS_RCV_NOTE','2024-01-24',0,0,4315,0,0,4315,0,0,NULL,'2024-01-24 10:27:54','2024-01-24 10:27:54'),
(74948,456,0,1,3,6,0,3,0,'66141051','',0,25,1,'INVT_GDS_RCV_NOTE','2024-01-23',0,0,115,605,0,720,0,0,NULL,'2024-02-02 09:59:28','2024-02-02 09:59:28'),
(74949,457,0,2,24,6,0,5,0,'E30769S','',0,26,1,'INVT_GDS_RCV_NOTE','2024-01-31',0,0,-354,8821,0,8467,0,0,NULL,'2024-02-02 10:03:20','2024-02-02 10:03:20'),
(74950,458,0,2,24,6,0,5,0,'E30770S','',0,26,1,'INVT_GDS_RCV_NOTE','2024-01-31',0,0,-8041,15595,0,7554,0,0,NULL,'2024-02-02 10:03:20','2024-02-02 10:03:20'),
(74951,459,0,2,24,6,0,5,0,'E30772S','',0,26,1,'INVT_GDS_RCV_NOTE','2024-01-31',0,0,-3028,5007,0,1979,0,0,NULL,'2024-02-02 10:03:20','2024-02-02 10:03:20'),
(74952,460,0,2,22,6,0,4,0,'L32313N','',0,27,1,'INVT_GDS_RCV_NOTE','2024-01-31',0,0,-10621,11106,0,485,0,0,NULL,'2024-02-02 10:04:27','2024-02-02 10:04:27'),
(74953,460,0,2,22,6,0,4,0,'L32313N','',0,28,1,'INVT_GDS_RCV_NOTE','2024-01-31',485,0,894,11106,0,12485,0,0,NULL,'2024-02-02 10:05:21','2024-02-02 10:05:21'),
(74954,1189,0,2,24,6,0,5,0,'E30764S','',0,29,1,'INVT_GDS_RCV_NOTE','2024-02-28',0,0,-1206,5992,0,4786,0,0,NULL,'2024-02-29 10:04:58','2024-02-29 10:04:58'),
(74955,1190,0,2,24,6,0,5,0,'F30857S','',0,30,1,'INVT_GDS_RCV_NOTE','2024-02-28',0,0,1124,8490,0,9614,0,0,NULL,'2024-02-29 10:05:27','2024-02-29 10:05:27'),
(74956,1244,0,1,3,6,0,3,0,'66141106','',0,31,1,'INVT_GDS_RCV_NOTE','2024-02-13',0,0,137,583,0,720,0,0,NULL,'2024-03-02 10:05:16','2024-03-02 10:05:16'),
(74957,1245,0,1,5,6,0,3,0,'56003023','',0,31,1,'INVT_GDS_RCV_NOTE','2024-02-13',0,0,112,38,0,150,0,0,NULL,'2024-03-02 10:05:16','2024-03-02 10:05:16'),
(74958,1246,0,1,2,6,0,3,0,'66107232','',0,32,1,'INVT_GDS_RCV_NOTE','2024-02-29',0,0,20294,5338,0,25632,0,0,NULL,'2024-03-02 10:15:39','2024-03-02 10:15:39'),
(74959,1247,0,1,3,6,0,3,0,'66141122','',0,33,1,'INVT_GDS_RCV_NOTE','2024-02-29',0,0,14038,362,0,14400,0,0,NULL,'2024-03-02 10:16:27','2024-03-02 10:16:27'),
(74960,2313,0,1,52,6,0,3,0,'66127002','',0,34,1,'INVT_GDS_RCV_NOTE','2024-06-20',0,0,154,0,0,154,0,0,NULL,'2024-08-02 10:50:05','2024-08-02 10:50:05'),
(74961,2315,0,1,68,6,0,44,0,'76174001','',0,35,1,'INVT_GDS_RCV_NOTE','2024-06-26',0,0,18,0,0,18,0,0,NULL,'2024-08-02 10:51:58','2024-08-02 10:51:58'),
(74962,2315,0,1,68,6,0,44,0,'76174001','',0,36,1,'INVT_GDS_RCV_NOTE','2024-06-26',18,0,18,0,0,36,0,0,NULL,'2024-08-02 10:57:16','2024-08-02 10:57:16');

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

/*Data for the table `inv_item_stock_old` */

insert  into `inv_item_stock_old`(`item_stock_id`,`goods_received_note_id`,`goods_received_note_item_id`,`item_stock_date`,`item_stock_expired_date`,`item_batch_number`,`purchase_order_item_id`,`warehouse_id`,`purchase_order_no`,`buyers_acknowledgment_no`,`no_retur_barang`,`nota_retur_pajak`,`item_category_id`,`item_type_id`,`item_id`,`item_unit_id`,`item_total`,`item_unit_cost`,`item_unit_total`,`item_unit_price`,`item_unit_id_default`,`item_default_quantity_unit`,`quantity_unit`,`item_weight_default`,`item_weight_unit`,`package_id`,`package_total`,`package_unit_id`,`package_price`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(40,16,500,'2023-12-12','2026-12-12','1111',15,6,'','','','',1,1,0,1,5,1000,0,0,1,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-12 09:37:25','2023-12-22 07:32:20'),
(41,16,501,'2023-12-12','2026-12-12','2222',16,6,'','','','',1,2,0,6,5,2000,0,0,6,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-12 09:37:25','2023-12-22 07:32:20'),
(42,0,0,'2023-12-12','2026-12-12','1111',15,7,'','','','',1,1,0,1,0,1000,0,0,1,'1','5',0,'',0,0,0,0,0,3,'2023-12-12 09:38:55','2023-12-12 09:38:55'),
(43,0,0,'2023-12-12','2026-12-12','2222',16,7,'','','','',1,2,0,6,0,2000,0,0,6,'1','5',0,'',0,0,0,0,0,3,'2023-12-12 09:38:55','2023-12-12 09:38:55'),
(44,17,502,'2023-12-13','2025-12-13','123',17,6,'','','','',1,1,0,1,100,1000,0,0,1,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 03:15:12','2023-12-13 03:51:36'),
(45,17,503,'2023-12-13','2025-12-13','456',18,6,'','','','',1,2,0,6,200,1500,0,0,6,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 03:15:12','2023-12-13 03:51:36'),
(46,17,503,'2023-12-13','2025-12-13','456',18,8,'0001/POC/XII/2023','','','',1,2,0,6,200,1000,0,2000,6,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 03:51:36','2023-12-13 07:53:15'),
(47,17,502,'2023-12-13','2025-12-13','123',17,8,'0001/POC/XII/2023','','','',1,1,0,1,100,1500,0,3000,1,'1','-300',NULL,'',NULL,0,0,0,0,3,'2023-12-13 03:51:36','2023-12-13 07:53:15'),
(48,18,504,'2023-12-13','2023-12-13','121212',19,6,'','','','',2,24,0,5,50,1000,0,0,5,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 07:57:53','2023-12-13 08:58:48'),
(49,18,505,'2023-12-13','2023-12-13','131313',20,6,'','','','',2,26,0,5,100,1000,0,0,5,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 07:57:53','2023-12-13 08:58:48'),
(50,18,504,'2023-12-13','2023-12-13','121212',19,8,'0002/PO/XII/2023','','','',2,24,0,5,50,1000,0,1500,5,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 08:58:48','2023-12-13 09:07:53'),
(51,18,505,'2023-12-13','2023-12-13','131313',20,8,'0002/PO/XII/2023','','','',2,26,0,5,100,1000,0,1500,5,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-13 08:58:48','2023-12-13 09:07:54'),
(52,16,501,'2023-12-14','2026-12-12','2222',16,8,'0003/PO/XII/2023','','','',1,2,0,6,5,2000,0,1500,6,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-14 07:29:48','2023-12-14 07:30:31'),
(53,16,500,'2023-12-14','2026-12-12','1111',15,8,'0003/PO/XII/2023','','','',1,1,0,1,5,1000,0,2000,1,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-14 07:29:48','2023-12-14 07:30:31'),
(54,16,500,'2023-12-22','2026-12-12','1111',15,8,'0004/PO/I/2023','','','',1,1,0,1,5,1000,0,1500,1,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-22 07:32:20','2023-12-22 07:32:50'),
(55,16,501,'2023-12-22','2026-12-12','2222',16,8,'0004/PO/I/2023','','','',1,2,0,6,5,2000,0,2000,6,'1','0',NULL,'',NULL,0,0,0,0,3,'2023-12-22 07:32:20','2023-12-22 07:32:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb3;

/*Data for the table `inv_item_type` */

insert  into `inv_item_type`(`item_type_id`,`item_category_id`,`item_type_name`,`item_type_expired_time`,`item_package_status`,`item_unit_1`,`item_quantity_default_1`,`item_weight_1`,`item_unit_2`,`item_quantity_default_2`,`item_weight_2`,`item_unit_3`,`item_quantity_default_3`,`item_weight_3`,`purchase_account_id`,`purchase_return_account_id`,`purchase_discount_account_id`,`sales_account_id`,`sales_return_account_id`,`sales_discount_account_id`,`inv_account_id`,`inv_return_account_id`,`inv_discount_account_id`,`hpp_account_id`,`hpp_amount`,`data_state`,`created_id`,`created_at`,`updated_at`,`dump`) values 
(1,1,'1 MPA PSI              ( BU LUSI )',0,0,'10','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','DUS/PCS'),
(2,1,'12PC DOUBLE OPEN END WRENCH SET ( GAAA1206 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(3,1,'2.5 MPA PSI              ( BU LUSI )',0,0,'10','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','DUS/PCS'),
(4,1,'3M 4100 SUPER POLISH',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(5,1,'3M 5100 MERAH',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(6,1,'AFN77675988 ( KARET MEMBRAN REGULATOR NEPPLE ) COUPLING PIPA                KARET MEMBRAN REGULATOR NEPPLE (COUPLING CPL W-PVC/SST FOR NIPPLE PIPE-22 LAYING/FLOOR)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(7,1,'AIR COUPLING NRV 90605-4426                                AIR COUPLING NRV 90605-4426',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(8,1,'ALVA LAVAL LKLA-T NC 8MM 25-63,5',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(9,1,'ALVA LAVAL SERVICE KIT CPMI-2/CPMO-2                  SERVICE KIT ALFALAVAL CPMO-2',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(10,1,'ALVA LAVAL SERVICE KIT EPDM SRC/SMO C/O 51/NW50   SEAL KIT ALVALAVAL ISO 51/TO',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(11,1,'ALVA LAVAL SERVICE KIT EPDM UNIQUE 51-DN50 PLUG SET-UP 12',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(12,1,'AMETEK ITALIA 230-50/60 CL.155                  MOTOR VACCUM CLEANER TYPE 1 STAGE THERMOPROTECTED MERK ECOSPITAL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(13,1,'ANDERSON NEGELE PANJANG NVS-143/500/M/X/XI',0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00',''),
(14,1,'ANDERSON-NEGELE NCS-L-11/50/PNP/M12            LEVEL SENSOR NEGELE NCS-L-11/PNP',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(15,1,'ANGLE SEAT DN40 PN25 L4408',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(16,1,'ANGLE SEAT GLOBE VALVE DN40 GEMU    ANGLE SEAT GLOBE VALVE DN40 GEMU',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(17,1,'ANGLE VALVE BURKERT 1415  ( BURKERT ANGLE SEAT VALVE W71MA DN40 )            BURKERT ANGLE SEAT VALVE W71MA DN40',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(18,1,'ARITA 107 CF8 1.5 BUTTERFLY VALVE CI CF8 SS410 CONNECTION UNIVERSAL FLANGE',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(19,1,'ARMATHEM PRESSURE GAUGE EN837-1',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(20,1,'ARMATHERM 100MM 1/2 NPT',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(21,1,'ARMATHERM 63MM 1/4 NPT',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(22,1,'ARMATHERM VGA-121-76GM VACUUM GAUGE 2,5IN     ARMATHERM VGA-121-76GM VACUUM GAUGE 2,5IN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(23,1,'ARV DN65 CF8 025',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(24,1,'AT-70 (KERUCUT BESI)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(25,1,'AVENTICS 0820 055 502             UNI VALVE 5/2 80106167      atau       BI VALVE 5/2 80106168',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(26,1,'AVENTICS MNR : R414002401 ECOLEAN     ECOLEAN E/P PRESSURE REGULATOR 80106-162',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(27,1,'AVENTICS REXROTH 0820 055 052                                           UNI VALVE 5/2 80106167      atau       BI VALVE 5/2 80106168',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(28,1,'BALL KEY WRENCH SET TOPTUL 9PCS LONG ( GAAL0916 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(29,1,'BALL VALVE 1/2',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(30,1,'BALL VALVE 3/4',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(31,1,'BALL VALVE SANKYO 2IN          BALL VALVE SANKYO 2IN',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(32,1,'BAUT BESAR',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(33,1,'BELT FASTENERS CLIPPER 12-12/300MM STRIPES G005A-SS-300W           STEEL BELT LACING 35N SUS304 100X1200MM',0,0,'3','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','1 BOX = 6 PSG'),
(34,1,'BENANG JAHIT UNICORN 20/6 BIRU            BENANG JAHIT UNICORN 20/6 BIRU',0,0,'4','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','1 DUZ = 100 PC'),
(35,1,'BESI L BERBAGAI UKURAN 4 TOPTUL SNCM+V',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(36,1,'BESI LONJONG',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(37,1,'BOLA KECIL ORANGE',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(38,1,'BORGOL BESAR CLAMP',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(39,1,'BORGOL KECIL CLAMP',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(40,1,'BOX PANEL OPTIONAL UK 30X20X15                         BOX PANEL OPTIONAL UK 30X20X15',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(41,1,'BRACKET PNEUMATIC AL #32X32X44',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(42,1,'BRIDGESTON SELANG BLENDER DOUBLE 1/4IN                                     BRIDGESTON SELANG BLENDER DOUBLE 1/4IN',0,0,'12','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','M'),
(43,1,'BULB HID MHE-150 E27 KRIS 150W 4000K (LAMPU)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(44,1,'BURKERT',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(45,1,'BURKET 2000 B 25.0 PTFE VA DN25 PN16',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(46,1,'BURKET FLOW 2000 A 20.0 PTFE VA 316L DN20 PN25',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(47,1,'BURKET FLOW 2000 B 15.0 PTFE VA 316L DN15 PN25',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(48,1,'BURKET FLUID CONTROL SYSTEMS DN 10',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(49,1,'BY5 PROD - FOAMER CUCI PRODUK SNOW WASH         FOAMER CUCI PRODUK/MOBILE FOAMER',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(50,1,'BY-5/THERMOCOUPLE RETORT 8CD      THERMOCOUPLE RETORT 8CD',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(51,1,'CAMOZZI M004-R00 + PRESSURE GAUGE          CAMOZZI M004-R00 + PRESSURE GAUGE',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(52,1,'CAMOZZI MC238-L00 16 BAR 50?C',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(53,1,'CAR SIC VIT HJ92N-55+60 MECH SEAL        MECH SEAL EAGLE BRUGGMAN 0211 HJ92N/55-G',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(54,1,'CARBON BRUSHES HITACHI 999-021          HITACHI CARBON BRUSH 4INCH',0,0,'2','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','(1 BX= 10 PC)'),
(55,1,'CAREL IR33W7LR20 ELECTRONIC CONTROLLER                                                                                                 CAREL IR33W7LR20 ELECTRONIC CONTROLLER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(56,1,'CARTUCCIA (FILTER) HEPA 220X180X170 CISF H 1307708',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(57,1,'CHAIN WRENCH 30-160MM ( JJAH0901 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(58,1,'CLAM (BORGOL)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(59,1,'CONNECTING FERRULE 3 RANGE 0-1 MPA 4IN ( PRESSURE GAUGE 4IN 0-1 MPA ) TOKPED  CONNECTING FERRULE 3 RANGE 0-1 MPA 4IN',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(60,1,'COPELAND COMPRESSOR ZR144KC TFD 52E           COPELAND COMPRESSOR AC ZR144KC-TFD 52 E 12PK',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(61,1,'CURRENT TRANSFORMER 75/5A SCHNEIDER   CURRENT TRANSFORMER 75/5A SCHNEIDER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(62,1,'CURTAIN ACCESSORIES-BRACKETS 200MM ( XRSSC-200 )              CURTAIN ACCESSORIES-BRACKETS 200MM ( XRSSC-200 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(63,1,'CURTAIN ACCESSORIES-BRACKETS 300MM ( XRSSC-300 )      CURTAIN ACCESSORIES-BRACKETS 300MM ( XRSSC-300 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(64,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 10IN ( DAAQ2B10 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(65,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 5IN ( DAAQ1A05 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(66,1,'CURVED JAW LOCKING PLIER WITH WIRE CUTTER 7IN ( DAAQ1A07 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(67,1,'CYCLO DRIVE GENUINE PARTS KOYO GSRM0303',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(68,1,'CYLINDER 8202326 ( FESTO DSNU-16 )           CYLINDER 8202326 ( FESTO DSNU-16 )',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(69,1,'DAB PRESSURE SWITCH POMPA 250W             DAB PRESSURE SWITCH POMPA 250W',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(70,1,'DANFOSS COIL SOLENOID VALVE 018F6801 220/230V 50HZ 12W     DANFOSS COIL SOLENOID VALVE 018F6801',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(71,1,'DANFOSS PRESSURE SWITCH KP-15          DANFOSS PRESSURE SWITCH KP-15',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(72,1,'DATA LOGGER LIGHT PANASONIC     DATA LOGGER LIGHT PANASONIC',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(73,1,'DATALOGGER ECOGRAPH T RSG35 (E+5)                                                                      DATALOGGER ECOGRAPH T RSG35 (E+5)',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(74,1,'DC-MICROAMPERE SANWA                DC-MICROAMPERE SANWA  ',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(75,1,'DIAMOND BRAND RANTAI PLASTIK 9MM KUNING         DIAMOND BRAND RANTAI PLASTIK 9MM KUNING',0,0,'9','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','DUS'),
(76,1,'DIAPHRAGM L3220/L3250 ( KARET MEMBRAN REGULATOR NEPPLE ) BULAT            KARET MEMBRAN REGULATOR NEPPLE / KARET MEMBRAN 17X0.1CM FABRIKASI',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(77,1,'DISPLAY KWH METER                                            DISPLAY KWH METER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(78,1,'DN 40 PN 25 316L',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(79,1,'DN 40 PN 25 SNS',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(80,1,'DOSING PUMP BPH-DLB 30B            DOSING PUMP PRISTALTIC 12VDC 300MA',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(81,1,'DRUCK-UND TEMPERATUR MESSTECHNIK WIKA 150 PSI 1/2 NPT & 1/2 NPT',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(82,1,'DRY VACUUM CLEANERS 1PC 100 MAX4',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(83,1,'DUDUKAN / MEMBRAN                    Gabungan pressure gauge kecil',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(84,1,'DUNGS AIR PRESSURE SWITCH LGW10 A2 P       DUNGS AIR PRESSURE SWITCH LGW10 A2 P',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(85,1,'ECOLEAN SAFETY RELAY 60506-003              ECOLEAN SAFETY RELAY 60506-003',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(86,1,'ECOLEAN STERILE FILTER 80084-009                     ECOLEAN STERILE FILTER 80084-009',0,0,'30','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN = 3PC'),
(87,1,'ELECTRICIAN SCREWDRIVER TEKIRO SET @7PCS       ELECTRICIAN SCREWDRIVER TEKIRO SET @7PCS',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(88,1,'ELECTRONIK TRANSFORMER ET-60VA KRISLITE ',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(89,1,'ELEMENT HEATER CONHEAT ACHT 100WATT 220 VAC                ELEMENT HEATER CONHEAT ACHT 100WATT 220 VAC',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(90,1,'EMERSON EK305 LIQUID LINE FILTER DRYER      EMERSON EK305 LIQUID LINE FILTER DRYER',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(91,1,'ENGINE WASH GUN                                 ENGINE WASH GUN',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(92,1,'E-T-A ROCKER POWER SWITCH 3120-F551-P7T1 W02D 16A FOR KARCHER JET CLEANER                   E-T-A ROCKER POWER SWITCH 3120-F551-P7T1 W02D 16A FOR KARCHER JET CLEANER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(93,1,'EXTERNAL SNAPRING PLIER TEKIRO PL-SR0779 9IN         EXTERNAL SNAPRING PLIER TEKIRO PL-SR0779 9IN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(94,1,'EYES WASH U/ TPS B3                         EYES WASH U/ TPS B3',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(95,1,'FESTO ELECTRONIC (KABEL)',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(96,1,'FILTER 6PC PNJNG 1PC PNDEK            HEPA CATRIDGE IN THE TANK (pendek)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(97,1,'FILTER CARTRIDGE BIO X-METAL ME 20.AB7-SRH        FILTER DOMINICK HUNTER ME20 AB7-SRH',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(98,1,'FITTING NIPPLE ELBOW CAMOZZI 1/8 6M                                                                      NIPPLE FITTING ELBOW SS 1/8 6MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(99,1,'FITTING NIPPLE ELBOW CAMOZZI 6MM M6 SS 304 DRAT    FITTING NIPPLE ELBOW CAMOZZI 6MM M6 SS 304 DRAT',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(100,1,'FLANGE PLUCKER SSK',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(101,1,'FLEXELEC FTSO KABEL HEATER 40W 230V AKO         FLEXELEC FTSO KABEL HEATER 40W 230V AKO',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(102,1,'FLOW CONTROL TURCK FCS-G1/2A4P-AP8-H1141                                                    TURCK FCS-G1/2A4P-AP8X-H1141',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(103,1,'GASKET 0.6MM FIRE BLUNGKET                          GASKET 0.6MM FIRE BLUNGKET',0,0,'12','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','M'),
(104,1,'GASKET FERRULE 1,5 INCH                             GASKET FERRULE 1,5 INCH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(105,1,'GASKET HITAM (KARET)    GASKET PHE S37 TIAN BA PHE EPDM HIGH TEMPERATUR HIGH 160',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(106,1,'GASKET PUTIH            GASKET FERRULE 4,5#',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(107,1,'GASKET SMS 1,5 INCH                        GASKET SMS 1,5 INCH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(108,1,'GASKET SMS 2 INCH                         GASKET SMS 2 INCH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(109,1,'GASKET SMS 4 INCH ( SILICONE )                     GASKET SMS 4 INCH ( SILICONE )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(110,1,'GEA ASEPTOMAG AG V-50 2200',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(111,1,'GOOT SOLDER KX60; 60W; 220V JAPAN            GOOT SOLDER KX60; 60W; 220V JAPAN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(112,1,'GRAJI BESI',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(113,1,'GS-P ZS/JB19008 220V & 1200W',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(114,1,'GUGO01042-O-RING D.34.6X1.78 NBR 70SH F/PW-C50 PIH             PVVR00985-HEADRING W151 F/PW-C50 PIH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(115,1,'GUVR00981-PACKING W151 F/PW-C50 PIH             GUVR00981-PACKING W151 F/PW-C50 PIH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(116,1,'GUVR34585-PACKING W151 L.P.F/PW-C50 D2771 PIH                       PVVR34589-INTERMED RING W151 D.20 F/PW-C50 D2771 PIH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(117,1,'GUVR34587-PACKING D.20 RESTOP F/PW-C50 PIH                                      GUVR34587-PACKING D.20 RESTOP F/PW-C50 PIH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(118,1,'HAND RIVETER ( JBAA2446 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(119,1,'HAND SEALERS PFS-400 16IN 400X3MM 220V 600W                                        HAND SEALERS PFS-400 16IN 400X3MM 220V 600W',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(120,1,'HAND TOOLSET ORION TR-007-1          HAND TOOLSET ORION TR-007-1',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(121,1,'HANGER CURTAIN ACCESSORIES-HOOK 1.18M/PC ( XRSSR-304 )            HANGER CURTAIN ACCESSORIES-HOOK 1.18M/PC ( XRSSR-304 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(122,1,'HARRIS KAWAT LAS TEMBAGA TEBAL 1,5MM LEBAR 3,2MM PANJANG 450MM             HARRIS KAWAT LAS TEMBAGA 3,2MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(123,1,'HD 5/11 CAGE KAP ( 019964, 019960 ) KARCHER            1.520-204.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(124,1,'HD 7/11-4 *KAP ( 021963, 021944 ) KARCHER           1.367-305.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(125,1,'HEAVY DUTY ADJUSTABLE WRENCH 10IN ( AMAB3325 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(126,1,'HEAVY DUTY ADJUSTABLE WRENCH 15IN ( AMAB5038 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(127,1,'HEAVY DUTY ADJUSTABLE WRENCH 8IN ( AMAB2920 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(128,1,'HEAVY DUTY HACKSAW 12IN ( SAAA3013 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(129,1,'HITACHI 999067 CARBON BRUSH FOR MESIN GERINDA G10SS2                                                                    HITACHI 999067 CARBON BRUSH FOR MESIN GERINDA G10SS2',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(130,1,'HOULE 5 IK 120R-C2-GU-XG SPEED CONTROL MOTOR GEARBOX 120W 220V 1 PHASE-GEAR HEAD CONTROLLER 90X90X2 SHAFT:15MM        HOULE 5 IK 120R-C2-GU-XG SPEED CONTROL MOTOR GEARBOX ',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(131,1,'INTERNAL SNAPRING PLIER TEKIRO PL-SR0782 9IN              INTERNAL SNAPRING PLIER TEKIRO PL-SR0782 9IN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(132,1,'ISHIDA 000-060-5239-16 PHOTOSENSOR BOARD PWB AS:P-5207:A             ISHIDA 000-060-5239-16 PHOTOSENSOR BOARD PWB AS:P-5207:A',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(133,1,'JET CLEANER NANKAI VAD 70BAR                          JET CLEANER NANKAI VAD 70BAR',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(134,1,'JORAN MATA BOR BETON 10MM       JORAN MATA BOR BETON 10MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(135,1,'KABEL BESAR HITAM',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(136,1,'KABEL HEATER CHEMELEX 50W 230V                                                                             KABEL HEATER CHEMELEX 50W 230V',0,0,'12','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','M'),
(137,1,'KABEL KEYENCE FS-N11N PHOTOELECTRIC SENSOR     KABEL KEYENCE FS-N11N PHOTOELECTRIC SENSOR',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(138,1,'KABEL NYYHY 2X0.75MM (6X1,5MM_YG DIKRM/DI PROSES)        KABEL NYYHY 2X0.75MM',0,0,'11','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','HRG PER MTR'),
(139,1,'KABEL NYYHY 4X0.75MM                                          KABEL NYYHY 4X0.75MM ',0,0,'11','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','HRG PER MTR'),
(140,1,'KABEL SENSOR INFRARED',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(141,1,'KABEL SENSOR THERMOMETER BYGROMETER           KABEL SENSOR THERMOMETER BYGROMETER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(142,1,'KARCHER HD 7/11 PRESSURE SWITCH COMPLETE ONLY FOR REPLACEMENT                                       KARCHER HD 7/11 PRESSURE SWITCH COMPLETE ONLY FOR REPLACEMENT',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(143,1,'KARET GASKET HITAM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(144,1,'KARET GASKET MERAH',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(145,1,'KARET PUTIH KOTAK (1) BULAT (1)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(146,1,'KARET SEAL',0,0,'21','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PACK'),
(147,1,'KARET SEAL BESAR',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(148,1,'KARET SEAL KECIL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(149,1,'KARET TANGAN',0,0,'21','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PACK'),
(150,1,'KARET/ GASKET BESAR (5) SEDANG (5) KECIL (5)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(151,1,'KCM 40 HP 240 LINKS   (ROLLER CHAIN) RS40 HP (HOLO PIN)                          KCM HOLLOW PIN ROLLER CHAIN 40 HP PITCH 12.70, W.7.95, D.7.92',0,0,'9','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','DUS'),
(152,1,'KEB BRAKE RECTIFIER 02.91.020.CE.07                KEB BRAKE RECTIFIER 02.91.020.CE.07',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(153,1,'KECIL-KECIL PLASTIKAN KLIP       DOMINO PART KIT MICRO PUMP',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(154,1,'KERUCUT PUTIH  (membran) MEMBRAN SAMPLING VALVE TANGKY STORAGE 2          MEMBRAN SAMPLING VALVE TANGKI STORAGE 2',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(155,1,'KIT VALVE (6X) FPOS3-30 301002562                                                                             KIT VALVE (6X) FPOS3-30 301002562',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(156,1,'KITZ 10K-80 S14A 80 W3242 (1)         KITZ JOYNECK 10/150 XJMEA 80 (3)                  BUTTERFLY VALVE 3 INCH',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(157,1,'KL 2.0 316L 0000152640 (BESI TABUNG )',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(158,1,'KL PIPA L (SAMBUNGAN MELENGKUNG)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(159,1,'KL PIPA TERMINAL  (SAMBUNGAN T)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(160,1,'KOGAWEI AIR FILTER REGULATOR FR602-03-AW 0.05-0.08 MPA                                                                  KOGAWEI AIR FILTER REGULATOR FR602-03-AW 0.05-0.08 MPA',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(161,1,'KRAN ',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(162,1,'KRAN AIR INJAK 1/2IN               KRAN AIR INJAK 1/2IN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(163,1,'KRAN AUTOMATIC SANITARY WARE   UCI KERAN AIR OTOMATIS NT-UCI 100 SENSOR INFRARED',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(164,1,'KTC BE3-075',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(165,1,'KUNINGAN KECIL        MISTING SPRYER 0.5X1IN FABRIKASI',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(166,1,'LAKBAN AIR 2 (FE KRAFT)     FE KRAFT PAPER GUMMED TAPE 2IN',0,0,'5','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','1 DUZ=30 ROLL'),
(167,1,'LAMPU KRISLITE 230 V 50W GU10 BASE MAIN VOLTAGE HALOGEN LAMP',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(168,1,'LEM SILICON TOP WHITE     LEM SILICON OWNER @300GR',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(169,1,'LIMIT SWITCH SAGINOMIYA             LIMIT SWITCH SAGINOMIYA',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(170,1,'LIQUID RUBBER SEALANT SPRAY SKY 15 HITAM 500ML             LIQUID RUBBER SEALANT SPRAY SKY 15 HITAM 500ML',0,0,'28','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','TUB/PCS'),
(171,1,'LOCKPIN     (PLASTIK 1 PACK ISI BESI)           PIN LOCK RACKING DEXION',0,0,'6','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','1 PACK/PC'),
(172,1,'MAGNETIC FLOAT LEVEL FEEJOY FCI-S5-SA-C00-750MM -20 - 120? C       ( KUBLER_FLOAT LEVEL AFCVE-2 LEK10/TS-L75 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(173,1,'MATA BOR PLONG HOLE SAW 25MM        MATA BOR PLONG HOLE SAW 25MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(174,1,'MECH.SEAL HJ92-40   CAR/SIC/VIT       MECH SEAL H392N EAGLE BRUGMANN',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(175,1,'MECHANICAL SEAL 551B-25MM CAR/SIC/VITON    MECHANICAL SEAL M37G',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(176,1,'MECHANICAL SEAL B-25 ',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(177,1,'MECHANICAL SEAL SG   sama dengan MECH. SEAL MSS 32 (A) SSC-SIC/EPDM',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(178,1,'MECHANICAL SEAL SIHI AS 43MM         MECHANICAL SEAL SIHI AS 43MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(179,1,'MECHANICAL SEAL SMT 32MM ( RDRM )           MECHSEAL RDRM-20 SS316',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(180,1,'MECHANICAL SEAL SMT 32MM MSS B SEAL         MECHSEAL MSS 32-B NISSIN',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(181,1,'MECHANICAL TIGER SEAL  ',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(182,1,'MECHSEAL BAC H16-03                 MECHSEAL BAC H16-03',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(183,1,'MEMBRANE DN50 PTFE/EPDM  (HITAM PUTIH KOTAK/IKAN PARI)     MEMBRANE DN50 PTFE/EPDM (DIAPHRAGN DN50)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(184,1,'MICROMETER ADJUSTABLE TORQUE WRENCH 535 L MM 1/2 DR TOPTUL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(185,1,'MICROSWITCH CZ-7144 10A 250V AC',0,0,'7','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2,8DUS (1 DUS=10PCS'),
(186,1,'MPVR 05953       ( CT-15 SQUEEZE )      SQUEEZE CT-15',0,0,'25','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PSG'),
(187,1,'NACHI MATA BOR 7,5MM              NACHI MATA BOR 7,5MM ',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','pcs'),
(188,1,'NEPPLE GREASE 10MM                    NEPPLE GREASE 10MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(189,1,'NEPPLE GREASE 6MM                 NEPPLE GREASE 6MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(190,1,'NETWORK CABLE TESTER RJ45 AND RJ11',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(191,1,'NIKKEN CHAIN SS RS 40 SINGLE ( RANTAI 40-1 SS NIKKEN )   NIKKEN CHAIN SS RS 40 SINGLE',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(192,1,'NITTO ISOLASI HEATER         NITTO ISOLASI HEATER',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(193,1,'NITTO QUICK COUPLER 1/2       NITTO QUICK COUPLER 1/2',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(194,1,'NON WOVEN (PROPAN GURINDA POLES 4IN X 10MM)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(195,1,'NOZZLE KUNINGAN 1/2IN        NOZZLE KUNINGAN 12IN',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(196,1,'NT 30/1 ME CLASSIC *CN ( 048623 ) KARCHER             1.428-569.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(197,1,'NT 40/1 AP L *EU ( 019747 ) KARCHER            1.148-321.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(198,1,'NT 48/1 *EU ( 066750 ) KARCHER            1.428-620.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(199,1,'NUT+BAUT RUBBER COUPLING FCL F2 64X17MM                                                        NUT+BAUT RUBBER COUPLING FCL F2 64X17MM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(200,1,'OBENG DIN 5264 0.8X4X400 TOPTUL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(201,1,'OIL SEAL 75X95X10 STAINLESS             OIL SEAL 75X95X10 STAINLESS',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(202,1,'OMRON Z-15GQ22-B 15A250V',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(203,1,'PACKING KLINGERIT 1000 3MMX1,5MX2M          PACKING KLINGERIT 1000 3MMX1,5MX2M',0,0,'27','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','SHT'),
(204,1,'PACKING VALQUA 6502               VAQUA PACKING AMONIAK 1MM',0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00',''),
(205,1,'PAD HOLDER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(206,1,'PAHAT BUBUT WIDYA 10X10X100MM EX. GERMANY                  PAHAT BUBUT WIDYA 10X10X100MM EX. GERMANY',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(207,1,'PENTAIR SUDMO ( MEMBRAN KIT SUDMO VALVE )     SPV ACTUATOR MEMBRAN KIT SUDMO VALVE (12.300.000) + DIAPHRAGM (P3) SUDMO = 27.580.000                               ADA 2 BRG',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(208,1,'PENTAIR SUDMO 2131736',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(209,1,'PHE SONDEX SL140TL-50-EE 25 BAR                          PHE 30 BARG',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(210,1,'PIPE WRENCH 12IN ( DDAB1A12 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(211,1,'PIPE WRENCH 14IN ( DDAB1A14 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(212,1,'PIPE WRENCH 18IN ( DDAB1A18 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(213,1,'PISTON SEAL KIT IPH 31000343 FPOS3-30                                                                  PISTON SEAL KIT IPH 31000343 FPOS3-30',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(214,1,'PLASTIK TIRAI POLAR TRANSPARENT LIGHT BLUE/POLOS 30MM X 3MM X 50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(215,1,'POWER METER                         POWER METER',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(216,1,'POWER NOZZLE              KARCHER POWER NOZZLE 25050 2.883-399.0',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(217,1,'PRESSURE GAUGE GMT PRO 100MM 0-10 BAR    GMT PRESSURE GAUGE 4IN 0-10BAR BOTTOM 1/2IN ',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(218,1,'PRESSURE GAUGE RANSBURG MPA BAR EN 837-1 VACUM GAUGE               PRESSURE GAUGE 0-10 BAR MEMBRAN 2IN    (ransburg)            ',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(219,1,'PRESSURE REGULATOR CAMOZZI MC238-D13                                                             PRESSURE REGULATOR CAMOZZI MC238-D13',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(220,1,'PROBE PH ELECTRODE LE438        PROBE PH ELECTRODE LE438',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(221,1,'PROXIMITY SENSOR IFT 203           PROXIMITY SENSOR IFT 203',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(222,1,'PSI MPA (?C) 1,6',0,0,'8','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','BOX/PCS'),
(223,1,'PULS (POWER SUPPLY) SL5.300 IN3AC 400-500V OUT DC 24-28V',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(224,1,'PUNYA TURCK ( CONNECTOR SENSOR PROXIMITY )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(225,1,'PVC CURTAIN-ANTI INSECT YELLOW 200MMX2MMX50M ( XR-PEC-YAI2022 )   TIRAI PVC ANTI INSECT 200MMX2MMX50M ( YELLOW )',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(226,1,'PVC CURTAIN-ANTI INSECT YELLOW 300MMX2MMX50M ( XR-PEC-YAI3003 )  TIRAI PVC ANTI INSECT 300MMX2MMX50M ( YELLOW )',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(227,1,'PVC CURTAIN-POLAR CLEAR 200MMX2MMX50M ( XRPEC-L2002 )  TIRAI PVC POLAR GRADE 200MMX2MMX50M ( BLUE )',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(228,1,'PVC CURTAIN-POLAR CLEAR 300MMX3MMX50M ( XRPEC-L3003 )  TIRAI PVC POLAR GRADE 300MMX3MMX50M ( BLUE )',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(229,1,'PVC CURTAIN-POLAR CLEAR RIBBED 300MMX3MMX50M ( XRPER-L3003 )          TIRAI PVC RIBS POLAR GRADE 300MMX3MMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(230,1,'PVC CURTAIN-STANDART CLEAR 200MMX2MMX50M ( XRPEC2002 ) TIRAI PVC STANDART TRANSPARENT GRADE 200MMX2MMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(231,1,'PVC CURTAIN-STANDART CLEAR 300MMX3MMX50M ( XRPEC3033 )  TIRAI PVC STANDART TRANSPARENT GRADE 300MMX3MMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(232,1,'PVC STRIP CURTAIN ANTI INSECT YELLOW GRADE SURFACE SMOOTH 3MM X 300MM X 50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(233,1,'PVC STRIP CURTAIN POLAR GRADE SURFACE SMOOTH 2MM X 200MM X 50M    ( sama dgn yg di bengkel )',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(234,1,'PVC STRIP CURTAIN POLAR GRADE SURFACE SMOOTH 3MM X 300MM X 50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(235,1,'PVC STRIP CURTAIN STANDART YELLOW-ANTI INSECT 3MMX30CMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(236,1,'PVC STRIP POLAR TRANSPARENT LIGHT BLUE 300MM X 3MM X 50M BERTULANG DOUBLE RIBBED',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(237,1,'RAMSET CHEMSET INJECTION SYSTEM EPCON G5',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(238,1,'RANSBURG 4IN X 0-16KG BOTTOM.C FSS 1/2       RANSBURG RACKET EN837-1 PRESSURE GAUGE WITH FLUID DIA 4IN ',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(239,1,'RANSBURG PRESSURE GAUGE 0-25 BAR MEMBRAN 2IN SS     PRESSURE GAUGE 0-25 BAR MEMBRAN 2IN SS',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(240,1,'RANSBURG PRESSURE VACUM -0,1 -0MPA      RANSBURG PRESSURE VACUM -0,1 -0MPA',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(241,1,'REGO LV4403B66 REGULATOR HEATER 3/4IN F.NPT           REGO LV4403B66 REGULATOR HEATER 3/4IN F.NPT',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(242,1,'ROD END BEARINGS ASB BESAR',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(243,1,'ROD END BEARINGS ASB KECIL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(244,1,'RODA RUBET CA 451',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(245,1,'RODA TROLY 3 ( PO SGF RTE 6  )      RODA TROLY 3 ( PO SGF RTE 6  )',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(246,1,'SAFE GUARD',0,0,'9','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','DUS'),
(247,1,'SAKLAR ON/OFF GERINDA MAKTEC MT954         SAKLAR ON/OFF GERINDA MAKTEC MT954',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(248,1,'SAKURA FUEL FILTER FC1104      SAKURA FUEL FILTER FC1104',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(249,1,'SAKURA OIL FILTER C1154                 SAKURA OIL FILTER C1154',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(250,1,'SAMBUNGAN KUNINGAN      gabungan thermometer DTM no. 11',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(251,1,'SANCHIN POWER SPRAYER (SEAL KIT) SC-45/SCN-45      SANCHIN SEAL SPRAYER SC45',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(252,1,'SANDFLEX MATA GERGAJI 12IN 18TPI              SANDFLEX MATA GERGAJI 12IN 18TPI',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(253,1,'SANKYO BALL VALVE STEAM 1 IN DRAT DALAM            SANKYO BALL VALVE STEAM 1 IN DRAT DALAM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(254,1,'SANYOU SLC-S-112DM-03',0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00',''),
(255,1,'SCREEN ENDOSCOPE',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(256,1,'SCREW CONNECTOR PART 5.401-210.0                                                                      SCREW CONNECTOR PART 5.401-210.0                                                  ',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(257,1,'SCREWDRIVER TEKIRO TPR GO THRU SET @7PCS        SCREWDRIVER TEKIRO TPR GO THRU SET @7PCS',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(258,1,'SCRUBBER AND POLISHER 17 154RPM 1100W MERK KRISBOW',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(259,1,'SEDEL SEPEDA',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(260,1,'SELANG 6MM TEFLON ( TUBING CAMOZZI CM-TRN 6/4 CLEAR )                   SELANG 6MM TEFLON',0,0,'12','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','M'),
(261,1,'SELANG 8MM TEFLON ( TUBING CAMOZZI CM-TRN 8/6 CLEAR )             SELANG 8MM TEFLON',0,0,'12','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','M'),
(262,1,'SELANG BESI KECIL',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(263,1,'SELANG BESI YULAG 50CM',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(264,1,'SELANG HIJAU',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(265,1,'SELANG HOSE HIGH PRESSURE JET CLEANER FOR LAKONI LAGUNA @20M                                              SELANG HOSE HIGH PRESSURE JET CLEANER FOR LAKONI LAGUNA @20M',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(266,1,'SELENOID DP-10 32A RV9         SELENOID DP-10 32A RV9',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(267,1,'SELENOID VALVE FORSTONE TIPE 2S2-25 SS      SELENOID VALVE FORSTONE TIPE 2S2-25 SS',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(268,1,'SENSOR FLOW TURCK FCS G1 2A4                      SENSOR FLOW TURCK FCS G1 2A4',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(269,1,'SENSOR KRAN WASTAFEL',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(270,1,'SENSOR TF45-11-A-1A          SENSOR TF45-11-A-1A',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(271,1,'SIEMENS ANALOG INPUT 6ES7 331-7KF02-0AB0 SIMATIC S7-300',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(272,1,'SIEMENS FUSE 3NE3 230-0B VDE 0636 315A 1000VAC 50KA           SIEMENS FUSE 3NE3 230-0B VDE 0636 315A 1000VAC 50KA',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(273,1,'SIEMENS SIRIUS 3RT 2017-1AV07',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(274,1,'SIGN GLASS ( FIBERGLASS ) P 150 CM          SIGN GLASS ( FIBERGLASS ) P 150 CM',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(275,1,'SINGLE DISC POLISHER ECNOVAC',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(276,1,'SINO-HOLDING SH-M7N/G60-65MM (SEAL) SS316 BESAR',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(277,1,'SINO-HOLDING SH-N1-32P/SS316L (SEAL) MSS KECIL                                            ( MECHANICAL SEAL SG )   MECH. SEAL MSS 32 (A) SSC-SIC/EPDM',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(278,1,'SOCKET AZBIL',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(279,1,'SPIRAX SARCO 15-20',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(280,1,'SPIRAX SARCO 25-32',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(281,1,'SPIT WATER 10-120 C',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(282,1,'SQUEEZE PAD CT30                          SQUEEZE PAD CT30',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(283,1,'STAR KEY WRENCH SET TOPTUL 9PC EXTRA LONG - SHORT ARM STAR KEY END ( GAAL0923 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(284,1,'STEEL BENCH VISE TOPTUL 5IN ALL CAST ( DJAC0105 )',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(285,1,'STEGO THERMOSTAT KTS-011     STEGO THERMOSTAT KTS-011',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(286,1,'TANG RIVET TEKIRO GT-HR1231         TANG RIVET TEKIRO GT-HR1231',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(287,1,'TBFX 01685 VHA',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(288,1,'TECHNOTRANS FLUIDOS 100-10001/N',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(289,1,'TEFLON SEALING BELT UK.1120X15MMX0.2MM HUALIAN MANUAL BELT SEALER 1MMX15X38CMF FOR HUALIAN 770111',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(290,1,'TEMPERATURE PROBE PT100 RTD SENSOR CABLE 2M 50-400C   TEMPERATURE PROBE PT100 RTD SENSOR CABLE 2M 50-400C',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(291,1,'TEMPERATURMESSTECHNIK DRUCK-UND 230 PSI 1/4 NPT RANSBURG        PRESSURE GAUGE 0-15 MEMBRAN 2 SS',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(292,1,'THERMO SENSE 4IN X 0-200?C PAYUNG              SENSE DIAL THERMOMETER 4IN 0-200DEG C DIAMETER DRAT 1/2IN',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(293,1,'THERMOMETER DTM-481 150MM         & BATU ABC KECIL                                                         THERMOMETER SUHU ANALOG DIGITAL_DTM(UHT) atau  THERMOMETER RETORT WSS-403 (RTE)               harga beda',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(294,1,'TIRAI ANTI-INSECT TRANSPARENT ORANGE YELLOW 200MMX2MMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(295,1,'TIRAI POLAR TRANSPARENT LIGHT BLUE 200MMX200MMX2MMX50M          (2)                  PLASTIK TIRAI PVC SUPER POLAR CLEAR 20CM X 2MM',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(296,1,'TIRAI STANDART TRANSPARENT BLUE 200MMX2MMX50M                                         (1)',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(297,1,'TIRAI STANDART TRANSPARENT NATURE 200MMX2MMX50M',0,0,'26','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','ROLL'),
(298,1,'TONGKAT BESI',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(299,1,'TOP 020955',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(300,1,'TOPTUL DAAS 1 A06 CR-MO CR-V',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(301,1,'TOSEN VALVE 2,5#                        TOSEN VALVE 2,5#',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(302,1,'TOUCHLESS AUTOMATIC SOAP DISPENSER',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(303,1,'TOZEN RUBBER FLEXIBLE JOINT 3INX240MM DOUBLE BELLOW                              TOZEN RUBBER FLEXIBLE JOINT 3INX240MM DOUBLE BELLOW',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(304,1,'TRANSMISSION ROLLER CHAIN SENQCIA 50 10FT (3.048 M) 50-304 RS 50',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(305,1,'TUBE SUCTION CT30          TUBE SUCTION CT30',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(306,1,'TURCK FCS-G1/MK96-VP01                 TURCK FCS-G1/MK96-VP01',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(307,1,'UNIVER AG 3051',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(308,1,'VACUUM VALCO',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(309,1,'VALVOLA YORK 1/2 DZ.12           YORK TUSEN KLEP KUNINGAN 1/2 IN',0,0,'1','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','(1 BOX=12 PC)'),
(310,1,'VUVG-B10-T32C-AZT-F-1T1L',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(311,1,'WATER METER AMICO 3/4IN LXSG-15E      WATER METER AMICO 3/4IN LXSG-15E',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(312,1,'WEIDMULLER ASK 1              BLOCK FUSE ASK 1 6.3A',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(313,1,'WERBROCK H-C PRESSURE GAUGE 4\" BOTTOM 150 PSI 1/2\" NPT           WIEBROCK PRESSURE GAUGE SS 4IN, 0-10 BAR, CONNECTION BOTTOM KUNINGAN',0,0,'24','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS/DUS'),
(314,1,'WIKA GERMANY (?C)',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS'),
(315,1,'WIKA PRESS GAUGE 4IN0-16KG/CM1 1/2IN BOTTOM CONNECTION EX GERMAN (TOKPED) WIKA PRESS GAUGE 4IN0-16KG/CM1 1/2IN BOTTOM CONNECTION EX GERMAN',0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00',''),
(316,1,'WIKA PRESSURE GAUGE SS 4IN 0-16BAR BOTTOM CONNECTION      WIKA PRESSURE GAUGE SS 4IN 0-16BAR BOTTOM CONNECTION  ',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(317,1,'WIKA THERMOMETER D 4 0-300 DRAT 1/2NPT D.STIK 6MM P.TIK 10CM (tokped serba gauge)              WIKA THERMOMETER MODEL RAKET 1/2IN X 10CM 0-300 C',0,0,'22','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PC'),
(318,1,'WILDEN DOVER',0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00',''),
(319,1,'WIRE BRUSH 1,5M SS316                     WIRE BRUSH 1,5M SS316',0,0,'29','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','UN'),
(320,1,'YUANAN SUS 304 25.4 1811',0,0,'23','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','PCS');

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
(1,6,'GDRS','1','GUDANG','Jln. Gatot Subroto','0897875559','Gudang untuk barang ready stock',0,3,'2022-01-07 01:16:16','2023-06-23 10:52:21');

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
(2,'TriptaTriTunggal','Karanganyar','( 024 ) 76623702','08712813691','TriptaTriTunggal@gmail.com','www.TriptaTriTunggal.id','',0,0,NULL,'CDOB1827/S/4-3306/09/2020','FP.01.04/IV/0118-/2019',79,99,48,17,0,82,0,6,4,308,11,11,0,0,'A1111111',340,356,0,4,4,9,0,NULL,'2024-12-12 08:23:40');

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

/*Data for the table `purchase_order` */

insert  into `purchase_order`(`purchase_order_id`,`supplier_id`,`warehouse_id`,`purchase_order_no`,`purchase_order_date`,`purchase_order_shipment_date`,`purchase_order_payment_terms`,`purchase_order_remark`,`total_item`,`total_received_item`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`ppn_in_percentage`,`ppn_in_amount`,`subtotal_after_ppn_in`,`tax_percentage`,`tax_amount`,`total_amount`,`down_payment_amount`,`down_payment_amount_balance`,`last_balance_amount`,`purchase_order_type_id`,`purchase_order_status`,`purchase_invoice_status`,`item_type`,`branch_id`,`approved`,`approved_id`,`approved_on`,`approved_remark`,`closed_remark`,`voided_id`,`voided_on`,`voided_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(242,8,6,'0001/PO/I/2024','2024-01-05','2024-01-05',0,NULL,98856.00,0.00,0.00,0.00,0.00,11.00,46758888.00,471839688.00,0.00,0.00,425080800.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-19 07:45:30','2024-01-19 07:46:24'),
(243,8,6,'0002/PO/I/2024','2024-01-03','2024-01-03',0,NULL,264240.00,264240.00,0.00,0.00,0.00,11.00,115597072.80,1166479552.80,0.00,0.00,1050882480.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-20 02:00:43','2024-01-20 02:13:16'),
(244,8,6,'0003/PO/I/2024','2024-01-03','2024-01-03',0,NULL,264240.00,264240.00,0.00,0.00,0.00,11.00,124985520.00,1261217520.00,0.00,0.00,1136232000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-20 02:01:47','2024-01-20 02:22:06'),
(245,7,6,'0004/PO/I/2024','2024-01-24','2024-01-24',0,NULL,9984.00,9984.00,0.00,0.00,0.00,11.00,20427264.00,206129664.00,0.00,0.00,185702400.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-24 02:38:03','2024-01-24 03:12:49'),
(246,7,6,'0005/PO/I/2024','2024-01-24','2024-01-24',0,NULL,8016.00,8016.00,0.00,0.00,0.00,11.00,16400736.00,165498336.00,0.00,0.00,149097600.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-24 02:38:58','2024-01-24 03:14:29'),
(247,7,6,'0006/PO/I/2024','2024-01-24','2024-01-24',0,NULL,8000.00,8000.00,0.00,0.00,0.00,11.00,16368000.00,165168000.00,0.00,0.00,148800000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-24 02:40:26','2024-01-24 03:26:38'),
(248,7,6,'0007/PO/I/2024','2024-01-24','2024-01-24',0,NULL,4315.00,4315.00,0.00,0.00,0.00,11.00,7525846.30,75942630.85,0.00,0.00,68416784.55,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-01-24 02:44:57','2024-01-24 03:27:54'),
(249,7,6,'0008/PO/I/2024','2024-01-22','2024-01-22',0,NULL,720.00,720.00,0.00,0.00,0.00,11.00,777546.00,7846146.00,0.00,0.00,7068600.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-02 02:31:16','2024-02-02 02:59:28'),
(250,7,6,'0009/PO/I/2024','2024-01-31','2024-01-31',0,NULL,18000.00,18000.00,0.00,0.00,0.00,11.00,27621000.00,278721000.00,0.00,0.00,251100000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-02 02:33:00','2024-02-02 03:03:20'),
(251,7,6,'0010/PO/I/2024','2024-01-31','2024-01-31',0,NULL,485.00,485.00,0.00,0.00,0.00,11.00,845894.66,8535846.11,0.00,0.00,7689951.45,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-02 02:35:52','2024-02-02 03:04:28'),
(252,7,6,'0011/PO/I/2024','2024-01-30','2024-01-30',0,NULL,12000.00,12000.00,0.00,0.00,0.00,11.00,20929352.40,211196192.40,0.00,0.00,190266840.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-02 02:36:38','2024-02-02 03:05:21'),
(253,8,6,'0012/PO/II/2024','2024-02-12','2024-02-13',0,NULL,870.00,870.00,0.00,0.00,0.00,11.00,2917899.60,29444259.60,0.00,0.00,26526360.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-27 02:44:50','2024-03-02 03:05:16'),
(254,7,6,'0013/PO/II/2024','2024-02-28','2024-02-28',0,NULL,4786.00,4786.00,0.00,0.00,0.00,11.00,7344117.00,74108817.00,0.00,0.00,66764700.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-29 03:01:54','2024-02-29 03:04:58'),
(255,7,6,'0014/PO/II/2024','2024-02-28','2024-02-28',0,NULL,9614.00,9614.00,0.00,0.00,0.00,11.00,14752683.00,148867983.00,0.00,0.00,134115300.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-02-29 03:02:31','2024-02-29 03:05:27'),
(256,7,6,'0015/PO/II/2024','2024-02-29','2024-02-29',0,NULL,25632.00,25632.00,0.00,0.00,0.00,11.00,27532612.80,277829092.80,0.00,0.00,250296480.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-03-01 06:51:45','2024-03-02 03:15:39'),
(257,7,6,'0016/PO/II/2024','2024-02-29','2024-02-29',0,NULL,14400.00,14400.00,0.00,0.00,0.00,11.00,15467760.00,156083760.00,0.00,0.00,140616000.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-03-01 06:52:24','2024-03-02 03:16:27'),
(258,8,6,'0017/PO/IV/2024','2024-04-16','2024-04-16',0,NULL,3880.00,0.00,0.00,0.00,0.00,11.00,8745330.00,88248330.00,0.00,0.00,79503000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 07:44:10','2024-06-11 08:09:45'),
(259,8,6,'0018/PO/IV/2024','2024-04-17','2024-04-17',0,NULL,2940.00,0.00,0.00,0.00,0.00,11.00,4600134.00,46419534.00,0.00,0.00,41819400.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 07:47:46','2024-06-11 08:09:48'),
(260,8,6,'0019/PO/IV/2024','2024-04-23','2024-04-23',0,NULL,441.00,0.00,0.00,0.00,0.00,11.00,4456929.84,44974473.84,0.00,0.00,40517544.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:08:45','2024-06-11 08:09:52'),
(261,8,6,'0020/PO/V/2024','2024-05-02','2024-05-02',0,NULL,7479.00,0.00,0.00,0.00,0.00,11.00,12421201.32,125341213.32,0.00,0.00,112920012.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:35:53','2024-06-11 08:45:30'),
(262,8,6,'0021/PO/V/2024','2024-05-07','2024-05-07',0,NULL,560.00,0.00,0.00,0.00,0.00,11.00,2032800.00,20512800.00,0.00,0.00,18480000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:37:52','2024-06-11 08:45:34'),
(263,8,6,'0022/PO/V/2024','2024-05-20','2024-05-20',0,NULL,4320.00,0.00,0.00,0.00,0.00,11.00,5645376.00,56966976.00,0.00,0.00,51321600.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:40:38','2024-06-11 08:45:39'),
(264,8,6,'0023/PO/V/2024','2024-05-27','2024-05-27',0,NULL,810.00,0.00,0.00,0.00,0.00,11.00,5439335.00,54887835.00,0.00,0.00,49448500.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:42:43','2024-06-11 08:45:42'),
(265,8,6,'0024/PO/V/2024','2024-05-27','2024-05-27',0,NULL,1500.00,0.00,0.00,0.00,0.00,11.00,537240.00,5421240.00,0.00,0.00,4884000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-11 08:44:54','2024-06-11 08:45:46'),
(266,8,6,'0025/PO/VI/2024','2024-06-13','2024-06-13',0,NULL,283896.00,0.00,0.00,0.00,0.00,11.00,125554425.48,1266958293.48,0.00,0.00,1141403868.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-19 04:31:31','2024-06-19 04:34:43'),
(267,8,6,'0026/PO/VI/2024','2024-06-13','2024-06-13',0,NULL,7848.00,0.00,0.00,0.00,0.00,11.00,3470817.24,35023701.24,0.00,0.00,31552884.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-19 04:32:48','2024-06-19 04:34:46'),
(268,8,6,'0027/PO/VI/2024','2024-06-13','2024-06-13',0,NULL,194616.00,0.00,0.00,0.00,0.00,11.00,86069899.08,868523527.08,0.00,0.00,782453628.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-06-19 04:34:13','2024-06-19 04:34:49'),
(269,8,6,'0028/PO/VI/2024','2024-06-14','2024-06-14',0,NULL,154.00,154.00,0.00,0.00,0.00,11.00,4802083.44,48457387.44,0.00,0.00,43655304.00,0.00,0.00,0.00,0,2,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:16:05','2024-08-02 03:50:05'),
(270,8,6,'0029/PO/VI/2024','2024-06-14','2024-06-14',0,NULL,18.00,0.00,0.00,0.00,0.00,11.00,194832.00,1966032.00,0.00,0.00,1771200.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:38:11','2024-07-02 08:07:39'),
(271,8,6,'0030/PO/VI/2024','2024-06-20','2024-06-20',0,NULL,520.00,0.00,0.00,0.00,0.00,11.00,3379145.00,34098645.00,0.00,0.00,30719500.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:41:23','2024-07-02 08:07:46'),
(272,8,6,'0031/PO/VI/2024','2024-06-19','2024-06-19',0,NULL,1500.00,0.00,0.00,0.00,0.00,11.00,537240.00,5421240.00,0.00,0.00,4884000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:45:05','2024-07-02 08:07:49'),
(273,8,6,'0032/PO/VI/2024','2024-06-26','2024-06-26',0,NULL,1500.00,0.00,0.00,0.00,0.00,11.00,537240.00,5421240.00,0.00,0.00,4884000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:46:56','2024-07-02 08:07:52'),
(274,8,6,'0033/PO/VI/2024','2024-06-26','2024-06-26',0,NULL,4466.00,0.00,0.00,0.00,0.00,11.00,6600627.00,66606327.00,0.00,0.00,60005700.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 07:57:03','2024-07-02 08:07:56'),
(275,8,6,'0034/PO/VI/2024','2024-06-28','2024-06-28',0,NULL,4356.00,0.00,0.00,0.00,0.00,11.00,6035040.00,60899040.00,0.00,0.00,54864000.00,0.00,0.00,0.00,0,0,0,0,1,1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,'2024-07-02 08:06:23','2024-07-02 08:08:00');

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

/*Data for the table `purchase_order_item` */

insert  into `purchase_order_item`(`purchase_order_item_id`,`purchase_order_id`,`purchase_requisition_id`,`purchase_requisition_item_id`,`item_category_id`,`item_unit_id`,`item_type_id`,`quantity`,`quantity_outstanding`,`quantity_received`,`quantity_return`,`item_unit_cost`,`subtotal_amount`,`discount_percentage`,`discount_amount`,`subtotal_amount_after_discount`,`purchase_order_item_creassing`,`purchase_order_token`,`data_state`,`created_id`,`created_at`,`voided_id`,`voided_on`,`updated_at`) values 
(21,242,0,0,1,1,1,98856,98856,0,0,4300,425080800,NULL,0,0,'','',0,0,'2024-01-19 07:45:30',0,NULL,'2024-01-19 07:45:30'),
(22,243,0,0,1,1,1,264240,0,264240,0,3977,1050882480,NULL,0,0,'','',0,0,'2024-01-20 02:00:43',0,NULL,'2024-01-20 02:13:16'),
(23,244,0,0,1,1,1,264240,0,264240,0,4300,1136232000,NULL,0,0,'','',0,0,'2024-01-20 02:01:47',0,NULL,'2024-01-20 02:22:06'),
(24,245,0,0,2,5,25,9984,0,9984,0,20000,185702400,7,13977600,0,'','',0,0,'2024-01-24 02:38:03',0,NULL,'2024-01-24 03:12:49'),
(25,246,0,0,2,5,25,8016,0,8016,0,20000,149097600,7,11222400,0,'','',0,0,'2024-01-24 02:38:58',0,NULL,'2024-01-24 03:14:29'),
(26,247,0,0,2,5,25,6000,0,6000,0,20000,111600000,7,8400000,0,'','',0,0,'2024-01-24 02:40:26',0,NULL,'2024-01-24 03:26:38'),
(27,247,0,0,2,5,32,2000,0,2000,0,20000,37200000,7,2800000,0,'','',0,0,'2024-01-24 02:40:26',0,NULL,'2024-01-24 03:26:38'),
(28,248,0,0,2,4,22,4315,0,4315,0,17049,68416785,7,5149650,0,'','',0,0,'2024-01-24 02:44:57',0,NULL,'2024-01-24 03:27:54'),
(29,249,0,0,1,3,3,720,0,720,0,10500,7068600,7,491400,0,'','',0,0,'2024-02-02 02:31:16',0,NULL,'2024-02-02 02:59:28'),
(30,250,0,0,2,5,24,8467,0,8467,0,15000,118114650,7,8890350,0,'','',0,0,'2024-02-02 02:33:00',0,NULL,'2024-02-02 03:03:20'),
(31,250,0,0,2,5,24,7554,0,7554,0,15000,105378300,7,7931700,0,'','',0,0,'2024-02-02 02:33:00',0,NULL,'2024-02-02 03:03:20'),
(32,250,0,0,2,5,24,1979,0,1979,0,15000,27607050,7,2077950,0,'','',0,0,'2024-02-02 02:33:00',0,NULL,'2024-02-02 03:03:20'),
(33,251,0,0,2,4,22,485,0,485,0,17049,7689951,7,578814,0,'','',0,0,'2024-02-02 02:35:52',0,NULL,'2024-02-02 03:04:27'),
(34,252,0,0,2,4,22,12000,0,12000,0,17049,190266840,7,14321160,0,'','',0,0,'2024-02-02 02:36:38',0,NULL,'2024-02-02 03:05:21'),
(35,253,0,0,1,3,3,720,0,720,0,9713,6993360,NULL,0,0,'','',0,0,'2024-02-27 02:44:50',0,NULL,'2024-03-02 03:05:16'),
(36,253,0,0,1,3,5,150,0,150,0,130220,19533000,NULL,0,0,'','',0,0,'2024-02-27 02:44:50',0,NULL,'2024-03-02 03:05:16'),
(37,254,0,0,2,5,24,4786,0,4786,0,15000,66764700,7,5025300,0,'','',0,0,'2024-02-29 03:01:54',0,NULL,'2024-02-29 03:04:58'),
(38,255,0,0,2,5,24,9614,0,9614,0,15000,134115300,7,10094700,0,'','',0,0,'2024-02-29 03:02:31',0,NULL,'2024-02-29 03:05:27'),
(39,256,0,0,1,3,2,25632,0,25632,0,10500,250296480,7,18839520,0,'','',0,0,'2024-03-01 06:51:45',0,NULL,'2024-03-02 03:15:39'),
(40,257,0,0,1,3,3,14400,0,14400,0,10500,140616000,7,10584000,0,'','',0,0,'2024-03-01 06:52:24',0,NULL,'2024-03-02 03:16:27'),
(41,258,0,0,1,3,2,1440,1440,0,0,11880,17107200,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(42,258,0,0,1,3,5,150,150,0,0,123874,18581100,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(43,258,0,0,1,4,46,150,150,0,0,16280,2442000,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(44,258,0,0,1,3,14,280,280,0,0,33000,9240000,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(45,258,0,0,1,3,3,1440,1440,0,0,11880,17107200,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(46,258,0,0,1,3,13,420,420,0,0,35775,15025500,NULL,0,0,'','',0,0,'2024-06-11 07:44:10',0,NULL,'2024-06-11 07:44:10'),
(47,259,0,0,1,3,2,1187,1187,0,0,11880,14101560,NULL,0,0,'','',0,0,'2024-06-11 07:47:46',0,NULL,'2024-06-11 07:47:46'),
(48,259,0,0,1,3,2,973,973,0,0,11880,11559240,NULL,0,0,'','',0,0,'2024-06-11 07:47:46',0,NULL,'2024-06-11 07:47:46'),
(49,259,0,0,1,3,3,720,720,0,0,11880,8553600,NULL,0,0,'','',0,0,'2024-06-11 07:47:46',0,NULL,'2024-06-11 07:47:46'),
(50,259,0,0,1,3,12,60,60,0,0,126750,7605000,NULL,0,0,'','',0,0,'2024-06-11 07:47:46',0,NULL,'2024-06-11 07:47:46'),
(51,260,0,0,1,3,57,33,33,0,0,152100,5019300,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(52,260,0,0,1,3,59,60,60,0,0,76050,4563000,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(53,260,0,0,1,3,60,33,33,0,0,138966,4585878,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(54,260,0,0,1,3,61,24,24,0,0,196763,4722312,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(55,260,0,0,1,3,62,36,36,0,0,122559,4412124,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(56,260,0,0,1,3,63,42,42,0,0,103350,4340700,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(57,260,0,0,1,3,64,45,45,0,0,100170,4507650,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(58,260,0,0,1,3,65,78,78,0,0,54060,4216680,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(59,260,0,0,1,3,66,90,90,0,0,46110,4149900,NULL,0,0,'','',0,0,'2024-06-11 08:08:45',0,NULL,'2024-06-11 08:08:45'),
(60,261,0,0,1,3,2,139,139,0,0,11880,1651320,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(61,261,0,0,1,3,2,4181,4181,0,0,11880,49670280,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(62,261,0,0,1,3,66,50,50,0,0,46110,2305500,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(63,261,0,0,1,3,57,30,30,0,0,152100,4563000,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(64,261,0,0,1,3,3,2880,2880,0,0,11880,34214400,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(65,261,0,0,1,3,59,40,40,0,0,76050,3042000,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(66,261,0,0,1,3,60,20,20,0,0,138966,2779320,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(67,261,0,0,1,3,61,24,24,0,0,196763,4722312,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(68,261,0,0,1,3,62,20,20,0,0,122559,2451180,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(69,261,0,0,1,3,63,25,25,0,0,103350,2583750,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(70,261,0,0,1,3,64,1,1,0,0,100170,100170,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(71,261,0,0,1,3,64,24,24,0,0,100170,2404080,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(72,261,0,0,1,3,65,45,45,0,0,54060,2432700,NULL,0,0,'','',0,0,'2024-06-11 08:35:53',0,NULL,'2024-06-11 08:35:53'),
(73,262,0,0,1,3,14,560,560,0,0,33000,18480000,NULL,0,0,'','',0,0,'2024-06-11 08:37:52',0,NULL,'2024-06-11 08:37:52'),
(74,263,0,0,1,3,2,2504,2504,0,0,11880,29747520,NULL,0,0,'','',0,0,'2024-06-11 08:40:38',0,NULL,'2024-06-11 08:40:38'),
(75,263,0,0,1,3,2,1816,1816,0,0,11880,21574080,NULL,0,0,'','',0,0,'2024-06-11 08:40:38',0,NULL,'2024-06-11 08:40:38'),
(76,264,0,0,1,3,14,560,560,0,0,33000,18480000,NULL,0,0,'','',0,0,'2024-06-11 08:42:43',0,NULL,'2024-06-11 08:42:43'),
(77,264,0,0,1,3,5,250,250,0,0,123874,30968500,NULL,0,0,'','',0,0,'2024-06-11 08:42:43',0,NULL,'2024-06-11 08:42:43'),
(78,265,0,0,1,3,15,1500,1500,0,0,3256,4884000,NULL,0,0,'','',0,0,'2024-06-11 08:44:54',0,NULL,'2024-06-11 08:44:54'),
(79,266,0,0,1,1,1,97704,97704,0,0,4021,392818932,NULL,0,0,'','',0,0,'2024-06-19 04:31:31',0,NULL,'2024-06-19 04:31:31'),
(80,266,0,0,1,1,1,96768,96768,0,0,4021,389055744,NULL,0,0,'','',0,0,'2024-06-19 04:31:31',0,NULL,'2024-06-19 04:31:31'),
(81,266,0,0,1,1,1,89424,89424,0,0,4021,359529192,NULL,0,0,'','',0,0,'2024-06-19 04:31:31',0,NULL,'2024-06-19 04:31:31'),
(82,267,0,0,1,1,1,7848,7848,0,0,4021,31552884,NULL,0,0,'','',0,0,'2024-06-19 04:32:48',0,NULL,'2024-06-19 04:32:48'),
(83,268,0,0,1,1,1,97344,97344,0,0,4021,391371552,NULL,0,0,'','',0,0,'2024-06-19 04:34:13',0,NULL,'2024-06-19 04:34:13'),
(84,268,0,0,1,1,1,97272,97272,0,0,4021,391082076,NULL,0,0,'','',0,0,'2024-06-19 04:34:13',0,NULL,'2024-06-19 04:34:13'),
(85,269,0,0,1,3,52,154,0,154,0,283476,43655304,NULL,0,0,'','',0,0,'2024-07-02 07:16:05',0,NULL,'2024-08-02 03:50:05'),
(86,270,0,0,1,44,68,18,-18,36,0,98400,1771200,NULL,0,0,'','',0,0,'2024-07-02 07:38:11',0,NULL,'2024-08-02 03:57:16'),
(87,271,0,0,1,47,69,100,100,0,0,156940,15694000,NULL,0,0,'','',0,0,'2024-07-02 07:41:23',0,NULL,'2024-07-02 07:41:23'),
(88,271,0,0,1,3,13,420,420,0,0,35775,15025500,NULL,0,0,'','',0,0,'2024-07-02 07:41:23',0,NULL,'2024-07-02 07:41:23'),
(89,272,0,0,1,47,67,1500,1500,0,0,3256,4884000,NULL,0,0,'','',0,0,'2024-07-02 07:45:05',0,NULL,'2024-07-02 07:45:05'),
(90,273,0,0,1,49,67,1500,1500,0,0,3256,4884000,NULL,0,0,'','',0,0,'2024-07-02 07:46:56',0,NULL,'2024-07-02 07:46:56'),
(91,274,0,0,1,51,59,36,36,0,0,76050,2737800,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(92,274,0,0,1,3,53,10,10,0,0,470130,4701300,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(93,274,0,0,1,4,11,70,70,0,0,12450,871500,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(94,274,0,0,1,54,70,30,30,0,0,12450,373500,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(95,274,0,0,1,3,3,3445,3445,0,0,11880,40926600,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(96,274,0,0,1,3,3,875,875,0,0,11880,10395000,NULL,0,0,'','',0,0,'2024-07-02 07:57:03',0,NULL,'2024-07-02 07:57:03'),
(97,275,0,0,1,51,68,36,36,0,0,98400,3542400,NULL,0,0,'','',0,0,'2024-07-02 08:06:23',0,NULL,'2024-07-02 08:06:23'),
(98,275,0,0,1,3,2,4320,4320,0,0,11880,51321600,NULL,0,0,'','',0,0,'2024-07-02 08:06:23',0,NULL,'2024-07-02 08:06:23');

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

/*Data for the table `purchase_payment_giro` */

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

/*Data for the table `sales_collection` */

insert  into `sales_collection`(`collection_id`,`branch_id`,`salesman_id`,`customer_id`,`section_id`,`project_id`,`cash_account_id`,`collection_no`,`collection_date`,`reference_number`,`collection_remark`,`collection_amount`,`collection_allocated`,`collection_shortover`,`collection_total_amount`,`collection_shortover_remark`,`collection_total_cash_amount`,`collection_total_transfer_amount`,`collection_total_giro_amount`,`collection_giro_status`,`collection_token`,`collection_token_void`,`voided_id`,`voided_on`,`voided_remark`,`posted`,`posted_by`,`posted_on`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(25,1,0,18,NULL,0,8,'0001/PP/I/2024','2024-01-20','',NULL,6010253.63,6010253.63,0.00,6010253.63,NULL,0.00,6010253.63,0.00,0,NULL,NULL,0,NULL,NULL,'0','',NULL,0,75,'2024-01-20 08:01:40','2024-01-20 08:01:40');

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

/*Data for the table `sales_collection_discount` */

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

/*Data for the table `sales_collection_giro` */

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

/*Data for the table `sales_collection_giro_discount` */

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

/*Data for the table `sales_collection_item` */

insert  into `sales_collection_item`(`collection_item_id`,`collection_id`,`sales_invoice_id`,`sales_invoice_no`,`sales_invoice_date`,`sales_invoice_amount`,`subtotal_invoice_amount`,`discount_percentage`,`discount_amount`,`total_amount`,`paid_amount`,`owing_amount`,`shortover_amount`,`allocation_amount`,`collection_discount`,`last_balance`,`collection_item_token`,`collection_item_token_void`,`created_at`,`updated_at`) values 
(35,25,20,'0002/TMO.ME/01/2024','2024-01-20',6510254,0,0,0,6510253.63,0.00,6510253.63,0.00,6010253.63,0.00,500000.00,NULL,NULL,'2024-01-20 08:01:40','2024-01-20 08:01:40');

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

/*Data for the table `sales_collection_item_discount` */

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

/*Data for the table `sales_collection_piece` */

insert  into `sales_collection_piece`(`sales_collection_piece_id`,`sales_invoice_id`,`sales_invoice_no`,`sales_collection_piece_remark`,`sales_collection_piece_type_id`,`memo_no`,`promotion_no`,`customer_id`,`total_amount`,`piece_amount`,`total_amount_after_piece`,`claim_date`,`claim_status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(21,64,'0002/SI/VIII/2023',NULL,0,'','',2,27700,1000,26700,NULL,0,0,3,'2023-08-03 07:36:37','2023-08-03 07:36:37'),
(22,4,'0003/TMO.ME/08/2023',NULL,0,'','',40,6909282,100000,6809282,NULL,0,0,75,'2023-08-24 07:21:30','2023-08-24 07:21:30'),
(23,4,'0003/TMO.ME/08/2023',NULL,0,'','',40,6909282,NULL,6909282,NULL,0,0,75,'2023-08-24 08:55:10','2023-08-24 08:55:10'),
(24,4,'0003/TMO.ME/08/2023',NULL,0,'','',40,6909282,NULL,6909282,NULL,0,0,75,'2023-08-24 08:55:12','2023-08-24 08:55:12');

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

/*Data for the table `sales_collection_transfer` */

insert  into `sales_collection_transfer`(`collection_giro_id`,`collection_id`,`account_id`,`collection_transfer_bank_name`,`collection_transfer_amount`,`collection_transfer_account_name`,`collection_transfer_account_no`,`collection_transfer_token`,`created_at`,`updated_at`) values 
(16,25,11,NULL,6010253.63,NULL,NULL,NULL,'2024-01-20 08:01:40','2024-01-20 08:01:40');

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

/*Data for the table `sales_collection_transfer_discount` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_note` */

insert  into `sales_delivery_note`(`sales_delivery_note_id`,`sales_delivery_order_id`,`shipment_planning_id`,`sales_order_id`,`warehouse_id`,`section_id`,`salesman_id`,`customer_id`,`expedition_id`,`sales_delivery_note_cost`,`sales_delivery_note_no`,`ppn_out_amount`,`expedition_receipt_no`,`customer_name`,`customer_address`,`customer_city`,`customer_home_phone`,`customer_mobile_phone1`,`driver_name`,`fleet_police_number`,`purchase_order_no`,`salesman_name`,`sales_delivery_note_date`,`sales_delivery_note_status`,`sales_invoice_status`,`sales_delivery_note_remark`,`posted`,`posted_id`,`posted_on`,`voided_id`,`voided_on`,`voided_remark`,`rejected_id`,`rejected_on`,`rejected_remark`,`branch_id`,`return_status`,`pdp_lost_on_expedition_status`,`buyers_acknowledgment_status`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,2,0,1,8,NULL,NULL,176,11,0.00,'0001/SDN/XII/2024',0.00,'111111','',NULL,'','','','dafa','AD1234',NULL,'','2024-12-09',0,0,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,1,0,NULL,0,0,3,'2024-12-09 09:01:12','2024-12-09 09:01:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_note_item` */

insert  into `sales_delivery_note_item`(`sales_delivery_note_item_id`,`sales_delivery_note_id`,`sales_order_id`,`sales_order_item_id`,`sales_delivery_order_id`,`sales_delivery_order_item_id`,`section_id`,`warehouse_id`,`supplier_id`,`item_category_id`,`item_id`,`item_type_id`,`item_unit_id`,`item_unit_id_unit`,`quantity`,`quantity_unit`,`item_default_quantity_unit`,`item_weight_unit`,`item_batch_number`,`sales_delivery_note_item_token`,`sales_delivery_note_item_token_void`,`return_item_status`,`data_state`,`item_unit_price`,`subtotal_price`,`hpp_amount`,`hpp_account_id`,`created_id`,`created_at`,`updated_at`) values 
(1,1,1,1,2,2,0,0,0,0,NULL,1,10,0,'100.00','100.00','1','0',NULL,NULL,NULL,0,0,1500.00,150000.00,0.00,0,3,'2024-12-09 09:01:12','2024-12-09 09:01:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_order` */

insert  into `sales_delivery_order`(`sales_delivery_order_id`,`warehouse_id`,`sales_order_id`,`sales_delivery_order_no`,`sales_delivery_order_date`,`sales_delivery_order_status`,`sales_delivery_order_remark`,`sales_delivery_note_status`,`sales_delivery_order_cost`,`ppn_out_amount`,`branch_id`,`data_state`,`created_id`,`created_at`,`voided_id`,`voided_on`,`voided_remark`,`updated_id`,`updated_on`,`updated_remark`,`updated_at`) values 
(2,1,1,'0001/SDO/XII/2024','2024-12-09',0,NULL,1,NULL,0,1,0,3,'2024-12-09 09:00:35',0,NULL,NULL,0,NULL,NULL,'2024-12-09 09:01:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_delivery_order_item` */

insert  into `sales_delivery_order_item`(`sales_delivery_order_item_id`,`sales_delivery_order_id`,`sales_order_id`,`sales_order_item_id`,`salesman_id`,`customer_id`,`item_id`,`item_unit_id`,`item_batch_number`,`item_type_id`,`quantity`,`quantity_ordered`,`item_unit_price`,`subtotal_price`,`sales_delivery_note_status`,`data_state`,`created_id`,`created_at`,`voided_id`,`voided_on`,`voided_remark`,`updated_at`) values 
(2,2,1,1,0,176,0,10,'',1,'100.00','100.00',1500,150000.00,0,0,3,'2024-12-09 09:00:35',0,NULL,NULL,'2024-12-09 09:00:35');

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

/*Data for the table `sales_delivery_order_item_piece` */

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

/*Data for the table `sales_delivery_order_item_stock` */

insert  into `sales_delivery_order_item_stock`(`sales_delivery_order_item_stock_id`,`sales_order_id`,`sales_order_item_id`,`sales_delivery_order_id`,`sales_delivery_order_item_id`,`item_unit_id`,`item_stock_id`,`item_total_stock`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(15,12,16,10,14,4,96,432,0,75,'2024-01-18 04:26:03','2024-01-18 04:26:03'),
(16,13,17,11,15,4,96,240,0,75,'2024-01-18 04:26:36','2024-01-18 04:26:36'),
(17,14,18,12,16,1,15,504,0,75,'2024-01-18 04:27:00','2024-01-18 04:27:00'),
(18,15,19,13,17,1,15,1440,0,75,'2024-01-18 04:27:20','2024-01-18 04:27:20'),
(19,17,21,15,19,1,15,360,0,75,'2024-01-18 06:03:55','2024-01-18 06:03:55'),
(20,18,22,16,20,21,113,288,0,75,'2024-01-18 06:04:17','2024-01-18 06:04:17'),
(21,19,23,17,21,4,96,48,0,75,'2024-01-18 06:04:39','2024-01-18 06:04:39'),
(22,20,24,18,22,4,96,144,0,75,'2024-01-18 06:05:16','2024-01-18 06:05:16'),
(23,21,26,19,24,5,103,72,0,75,'2024-01-18 06:06:29','2024-01-18 06:06:29'),
(24,21,25,19,23,21,113,216,0,75,'2024-01-18 06:06:29','2024-01-18 06:06:29'),
(25,21,27,19,25,4,96,384,0,75,'2024-01-18 06:06:29','2024-01-18 06:06:29'),
(26,22,28,20,26,21,113,72,0,75,'2024-01-18 06:08:04','2024-01-18 06:08:04'),
(27,22,29,20,27,5,103,72,0,75,'2024-01-18 06:08:04','2024-01-18 06:08:04'),
(28,22,30,20,28,4,96,336,0,75,'2024-01-18 06:08:04','2024-01-18 06:08:04'),
(29,23,31,21,29,4,96,384,0,75,'2024-01-18 06:08:23','2024-01-18 06:08:23'),
(30,24,32,22,30,4,96,960,0,75,'2024-01-18 06:08:43','2024-01-18 06:08:43'),
(31,25,33,23,31,4,96,144,0,75,'2024-01-18 06:09:06','2024-01-18 06:09:06'),
(32,26,34,24,32,4,96,144,0,75,'2024-01-18 06:09:21','2024-01-18 06:09:21'),
(33,16,20,26,34,1,15,1008,0,3,'2024-01-18 06:41:26','2024-01-18 06:41:26'),
(34,28,36,27,35,5,103,36,0,75,'2024-01-18 07:38:29','2024-01-18 07:38:29'),
(35,28,37,27,36,5,105,36,0,75,'2024-01-18 07:38:29','2024-01-18 07:38:29'),
(36,29,38,28,37,1,1,504,0,75,'2024-01-18 07:38:58','2024-01-18 07:38:58'),
(37,30,39,29,38,1,1,1008,0,75,'2024-01-18 07:39:20','2024-01-18 07:39:20'),
(38,31,40,30,39,1,1,1440,0,75,'2024-01-18 07:39:43','2024-01-18 07:39:43'),
(39,32,41,31,40,1,1,1512,0,75,'2024-01-18 07:40:11','2024-01-18 07:40:11'),
(40,33,42,32,41,1,15,5760,0,75,'2024-01-19 03:38:29','2024-01-19 03:38:29'),
(41,34,43,33,42,21,113,132,0,75,'2024-01-19 03:39:02','2024-01-19 03:39:02'),
(42,35,44,34,43,1,15,720,0,75,'2024-01-19 03:39:37','2024-01-19 03:39:37'),
(43,36,45,35,44,21,113,72,0,75,'2024-01-19 03:39:56','2024-01-19 03:39:56'),
(44,37,46,36,45,21,113,72,0,75,'2024-01-19 03:40:39','2024-01-19 03:40:39'),
(45,38,47,37,46,21,113,120,0,75,'2024-01-19 03:41:10','2024-01-19 03:41:10'),
(46,39,48,38,47,4,96,624,0,75,'2024-01-19 03:41:34','2024-01-19 03:41:34'),
(47,40,49,39,48,1,1,936,0,75,'2024-01-19 03:41:58','2024-01-19 03:41:58'),
(48,41,50,40,49,4,96,18,0,75,'2024-01-19 03:42:14','2024-01-19 03:42:14'),
(49,42,51,41,50,3,50,24,0,75,'2024-01-19 03:42:46','2024-01-19 03:42:46'),
(50,42,52,41,51,3,57,24,0,75,'2024-01-19 03:42:46','2024-01-19 03:42:46'),
(51,44,54,43,53,3,51,1440,0,75,'2024-01-20 03:13:30','2024-01-20 03:13:30'),
(52,44,54,44,54,3,51,1440,0,75,'2024-01-20 03:31:25','2024-01-20 03:31:25'),
(53,45,55,45,55,5,114,12,0,75,'2024-01-20 04:21:57','2024-01-20 04:21:57'),
(54,45,56,45,56,5,114,24,0,75,'2024-01-20 04:21:57','2024-01-20 04:21:57'),
(55,46,57,46,57,5,114,72,0,75,'2024-01-20 04:22:48','2024-01-20 04:22:48'),
(56,46,58,46,58,5,103,36,0,75,'2024-01-20 04:22:48','2024-01-20 04:22:48'),
(57,47,59,47,59,4,96,720,0,75,'2024-01-20 04:49:33','2024-01-20 04:49:33'),
(58,48,60,48,60,5,113,72,0,75,'2024-01-20 04:50:04','2024-01-20 04:50:04'),
(59,48,61,48,61,5,103,36,0,75,'2024-01-20 04:50:04','2024-01-20 04:50:04'),
(60,48,62,48,62,4,96,144,0,75,'2024-01-20 04:50:04','2024-01-20 04:50:04'),
(61,49,63,49,63,1,164,72,0,75,'2024-01-20 04:54:55','2024-01-20 04:54:55'),
(62,49,64,49,64,1,164,1440,0,75,'2024-01-20 04:54:55','2024-01-20 04:54:55'),
(63,50,65,50,65,1,11,72,0,75,'2024-01-20 05:19:09','2024-01-20 05:19:09'),
(64,50,66,50,66,1,23,1440,0,75,'2024-01-20 05:19:09','2024-01-20 05:19:09'),
(65,51,67,51,67,5,114,144,0,75,'2024-01-22 04:52:07','2024-01-22 04:52:07'),
(66,51,68,51,68,5,103,36,0,75,'2024-01-22 04:52:07','2024-01-22 04:52:07'),
(67,52,69,52,69,5,114,72,0,75,'2024-01-22 04:52:44','2024-01-22 04:52:44'),
(68,52,70,52,70,5,103,36,0,75,'2024-01-22 04:52:44','2024-01-22 04:52:44'),
(69,52,71,52,71,4,96,288,0,75,'2024-01-22 04:52:45','2024-01-22 04:52:45'),
(70,53,72,53,72,5,114,72,0,75,'2024-01-22 04:53:06','2024-01-22 04:53:06'),
(71,54,73,54,73,5,103,36,0,75,'2024-01-22 04:53:30','2024-01-22 04:53:30'),
(72,54,74,54,74,4,96,288,0,75,'2024-01-22 04:53:30','2024-01-22 04:53:30'),
(73,55,75,55,75,5,114,72,0,75,'2024-01-22 04:53:56','2024-01-22 04:53:56'),
(74,55,76,55,76,4,96,96,0,75,'2024-01-22 04:53:56','2024-01-22 04:53:56'),
(75,56,77,56,77,5,113,72,0,75,'2024-01-22 06:12:51','2024-01-22 06:12:51'),
(76,56,78,56,78,5,103,36,0,75,'2024-01-22 06:12:51','2024-01-22 06:12:51'),
(77,56,79,56,79,4,96,720,0,75,'2024-01-22 06:12:51','2024-01-22 06:12:51'),
(78,57,80,57,80,4,96,192,0,75,'2024-01-22 06:13:09','2024-01-22 06:13:09'),
(79,58,81,58,81,5,113,72,0,75,'2024-01-22 06:13:36','2024-01-22 06:13:36'),
(80,58,82,58,82,5,103,36,0,75,'2024-01-22 06:13:36','2024-01-22 06:13:36'),
(81,58,83,58,83,4,96,384,0,75,'2024-01-22 06:13:36','2024-01-22 06:13:36'),
(82,59,84,59,84,5,103,36,0,75,'2024-01-22 06:14:10','2024-01-22 06:14:10'),
(83,59,85,59,85,4,96,384,0,75,'2024-01-22 06:14:10','2024-01-22 06:14:10'),
(84,60,86,60,86,5,113,144,0,75,'2024-01-22 06:14:33','2024-01-22 06:14:33'),
(85,60,87,60,87,4,96,576,0,75,'2024-01-22 06:14:33','2024-01-22 06:14:33'),
(86,61,88,61,88,5,113,144,0,75,'2024-01-22 06:15:02','2024-01-22 06:15:02'),
(87,61,89,61,89,5,103,36,0,75,'2024-01-22 06:15:02','2024-01-22 06:15:02'),
(88,61,90,61,90,4,96,432,0,75,'2024-01-22 06:15:02','2024-01-22 06:15:02'),
(89,62,91,62,91,1,15,1368,0,75,'2024-01-22 06:15:21','2024-01-22 06:15:21'),
(90,63,92,63,92,1,15,1152,0,75,'2024-01-22 06:15:43','2024-01-22 06:15:43'),
(91,64,93,64,93,1,15,1296,0,75,'2024-01-22 06:16:45','2024-01-22 06:16:45'),
(92,65,94,65,94,1,15,1728,0,75,'2024-01-22 06:17:03','2024-01-22 06:17:03'),
(93,66,95,66,95,1,15,4680,0,75,'2024-01-22 06:17:25','2024-01-22 06:17:25'),
(94,67,96,67,96,5,113,72,0,75,'2024-01-22 07:37:37','2024-01-22 07:37:37'),
(95,67,97,67,97,5,103,36,0,75,'2024-01-22 07:37:37','2024-01-22 07:37:37'),
(96,68,98,68,98,5,113,72,0,75,'2024-01-22 07:38:04','2024-01-22 07:38:04'),
(97,68,99,68,99,5,103,36,0,75,'2024-01-22 07:38:04','2024-01-22 07:38:04'),
(98,68,100,68,100,4,96,288,0,75,'2024-01-22 07:38:04','2024-01-22 07:38:04'),
(99,69,101,69,101,4,96,288,0,75,'2024-01-22 07:38:30','2024-01-22 07:38:30'),
(100,70,102,70,102,5,113,360,0,75,'2024-01-22 07:38:56','2024-01-22 07:38:56'),
(101,70,103,70,103,5,103,72,0,75,'2024-01-22 07:38:56','2024-01-22 07:38:56'),
(102,71,104,71,104,1,15,1440,0,75,'2024-01-22 07:39:14','2024-01-22 07:39:14'),
(103,72,105,72,105,1,15,936,0,75,'2024-01-22 07:39:37','2024-01-22 07:39:37'),
(104,73,106,73,106,1,15,1584,0,75,'2024-01-22 07:39:59','2024-01-22 07:39:59'),
(105,74,107,74,107,1,15,2376,0,75,'2024-01-22 07:40:23','2024-01-22 07:40:23'),
(106,75,108,75,108,1,15,6048,0,75,'2024-01-22 07:41:21','2024-01-22 07:41:21'),
(107,76,109,76,109,1,15,3456,0,75,'2024-01-24 03:06:27','2024-01-24 03:06:27'),
(108,77,110,77,110,1,15,1944,0,75,'2024-01-24 03:06:47','2024-01-24 03:06:47'),
(109,78,111,78,111,1,15,2880,0,75,'2024-01-24 03:07:14','2024-01-24 03:07:14'),
(110,79,112,79,112,5,114,72,0,75,'2024-01-24 03:08:15','2024-01-24 03:08:15'),
(111,79,113,79,113,5,103,36,0,75,'2024-01-24 03:08:15','2024-01-24 03:08:15'),
(112,79,114,79,114,4,96,384,0,75,'2024-01-24 03:08:16','2024-01-24 03:08:16'),
(113,81,116,80,115,5,114,72,0,75,'2024-01-24 03:09:45','2024-01-24 03:09:45'),
(114,81,117,80,116,5,103,36,0,75,'2024-01-24 03:09:45','2024-01-24 03:09:45'),
(115,81,118,80,117,5,123,192,0,75,'2024-01-24 03:09:45','2024-01-24 03:09:45'),
(116,81,119,80,118,4,96,624,0,75,'2024-01-24 03:09:45','2024-01-24 03:09:45'),
(117,82,120,81,119,5,123,240,0,75,'2024-01-24 03:10:14','2024-01-24 03:10:14'),
(118,83,121,82,120,5,114,168,0,75,'2024-01-24 03:10:36','2024-01-24 03:10:36'),
(119,84,122,83,121,5,114,72,0,75,'2024-01-24 03:10:55','2024-01-24 03:10:55'),
(120,85,123,84,122,5,114,144,0,75,'2024-01-24 03:11:25','2024-01-24 03:11:25'),
(121,85,124,84,123,5,114,72,0,75,'2024-01-24 03:11:25','2024-01-24 03:11:25'),
(122,86,125,85,124,1,15,1440,0,75,'2024-01-24 03:11:47','2024-01-24 03:11:47'),
(123,87,126,86,125,5,113,144,0,75,'2024-01-24 04:06:25','2024-01-24 04:06:25'),
(124,87,127,86,126,5,103,36,0,75,'2024-01-24 04:06:25','2024-01-24 04:06:25'),
(125,87,128,86,127,5,209,192,0,75,'2024-01-24 04:06:25','2024-01-24 04:06:25'),
(126,87,129,86,128,4,96,864,0,75,'2024-01-24 04:06:25','2024-01-24 04:06:25'),
(127,88,130,87,129,5,113,144,0,75,'2024-01-24 04:06:44','2024-01-24 04:06:44'),
(128,89,131,88,130,5,113,72,0,75,'2024-01-24 04:07:24','2024-01-24 04:07:24'),
(129,89,132,88,131,5,103,36,0,75,'2024-01-24 04:07:24','2024-01-24 04:07:24'),
(130,89,133,88,132,5,209,48,0,75,'2024-01-24 04:07:24','2024-01-24 04:07:24'),
(131,89,134,88,133,4,96,480,0,75,'2024-01-24 04:07:24','2024-01-24 04:07:24'),
(132,90,135,89,134,5,209,288,0,75,'2024-01-24 04:07:50','2024-01-24 04:07:50'),
(133,90,136,89,135,4,96,720,0,75,'2024-01-24 04:07:50','2024-01-24 04:07:50'),
(134,91,137,90,136,5,103,72,0,75,'2024-01-24 04:08:26','2024-01-24 04:08:26'),
(135,91,138,90,137,5,209,96,0,75,'2024-01-24 04:08:26','2024-01-24 04:08:26'),
(136,92,139,91,138,5,113,72,0,75,'2024-01-24 04:08:45','2024-01-24 04:08:45'),
(137,93,140,92,139,5,113,72,0,75,'2024-01-24 04:09:01','2024-01-24 04:09:01'),
(138,94,141,93,140,5,113,19,0,75,'2024-01-24 04:09:54','2024-01-24 04:09:54'),
(139,94,142,93,141,5,113,113,0,75,'2024-01-24 04:09:54','2024-01-24 04:09:54'),
(140,95,143,94,142,5,113,144,0,75,'2024-01-24 04:10:09','2024-01-24 04:10:09'),
(141,96,144,95,143,1,15,432,0,75,'2024-01-24 04:10:29','2024-01-24 04:10:29'),
(142,97,145,96,144,1,15,576,0,75,'2024-01-24 04:25:01','2024-01-24 04:25:01'),
(143,98,146,97,145,5,113,72,0,75,'2024-01-24 04:25:19','2024-01-24 04:25:19'),
(144,99,147,98,146,5,113,72,0,75,'2024-01-24 04:26:01','2024-01-24 04:26:01'),
(145,99,148,98,147,5,209,96,0,75,'2024-01-24 04:26:01','2024-01-24 04:26:01'),
(146,99,149,98,148,4,96,192,0,75,'2024-01-24 04:26:01','2024-01-24 04:26:01'),
(147,100,150,99,149,5,113,144,0,75,'2024-01-24 04:26:37','2024-01-24 04:26:37'),
(148,100,151,99,150,5,103,36,0,75,'2024-01-24 04:26:37','2024-01-24 04:26:37'),
(149,100,152,99,151,5,209,48,0,75,'2024-01-24 04:26:37','2024-01-24 04:26:37'),
(150,100,153,99,152,4,96,48,0,75,'2024-01-24 04:26:37','2024-01-24 04:26:37'),
(151,101,154,100,153,5,103,36,0,75,'2024-01-24 04:27:05','2024-01-24 04:27:05'),
(152,101,155,100,154,5,209,48,0,75,'2024-01-24 04:27:05','2024-01-24 04:27:05'),
(153,101,156,100,155,4,96,192,0,75,'2024-01-24 04:27:05','2024-01-24 04:27:05'),
(154,102,157,101,156,1,15,432,0,75,'2024-01-24 04:27:39','2024-01-24 04:27:39'),
(155,102,158,101,157,3,63,4,0,75,'2024-01-24 04:27:39','2024-01-24 04:27:39'),
(156,102,159,101,158,3,83,4,0,75,'2024-01-24 04:27:39','2024-01-24 04:27:39'),
(157,103,160,102,159,1,1,720,0,75,'2024-01-24 07:23:31','2024-01-24 07:23:31'),
(158,103,161,102,160,3,53,144,0,75,'2024-01-24 07:23:31','2024-01-24 07:23:31'),
(159,104,162,103,161,5,115,12,0,75,'2024-01-24 07:23:50','2024-01-24 07:23:50'),
(160,105,163,104,162,5,114,12,0,75,'2024-01-24 07:24:06','2024-01-24 07:24:06'),
(161,106,164,105,163,5,114,72,0,75,'2024-01-24 07:24:22','2024-01-24 07:24:22'),
(162,107,165,106,164,1,1,720,0,75,'2024-01-24 07:24:42','2024-01-24 07:24:42'),
(163,108,166,107,165,1,15,720,0,75,'2024-01-25 03:35:50','2024-01-25 03:35:50'),
(164,109,167,108,166,1,15,504,0,75,'2024-01-25 03:36:09','2024-01-25 03:36:09'),
(165,110,168,109,167,1,15,1152,0,75,'2024-01-25 03:36:30','2024-01-25 03:36:30'),
(166,111,169,110,168,1,15,504,0,75,'2024-01-25 03:36:52','2024-01-25 03:36:52'),
(167,112,170,111,169,1,15,1224,0,75,'2024-01-25 03:37:50','2024-01-25 03:37:50'),
(168,113,171,112,170,1,15,936,0,75,'2024-01-25 03:38:15','2024-01-25 03:38:15'),
(169,114,172,113,171,1,15,936,0,75,'2024-01-25 03:38:36','2024-01-25 03:38:36'),
(170,115,173,114,172,5,114,72,0,75,'2024-01-25 03:39:04','2024-01-25 03:39:04'),
(171,116,174,115,173,5,114,144,0,75,'2024-01-25 03:39:26','2024-01-25 03:39:26'),
(172,117,175,116,174,5,114,144,0,75,'2024-01-25 03:39:55','2024-01-25 03:39:55'),
(173,118,176,117,175,1,15,792,0,75,'2024-01-25 03:40:17','2024-01-25 03:40:17'),
(174,119,177,118,176,1,15,1512,0,75,'2024-01-25 03:40:40','2024-01-25 03:40:40'),
(175,120,178,119,177,5,114,24,0,75,'2024-01-25 03:41:19','2024-01-25 03:41:19'),
(176,121,179,120,178,5,113,24,0,75,'2024-01-25 04:43:09','2024-01-25 04:43:09'),
(177,122,180,121,179,5,113,144,0,75,'2024-01-25 04:43:33','2024-01-25 04:43:33'),
(178,122,181,121,180,5,103,36,0,75,'2024-01-25 04:43:33','2024-01-25 04:43:33'),
(179,123,182,122,181,5,99,36,0,75,'2024-01-25 04:45:12','2024-01-25 04:45:12'),
(180,123,183,122,182,4,89,48,0,75,'2024-01-25 04:45:12','2024-01-25 04:45:12'),
(181,123,184,122,183,5,209,240,0,75,'2024-01-25 04:45:12','2024-01-25 04:45:12'),
(182,123,185,122,184,5,105,36,0,75,'2024-01-25 04:45:12','2024-01-25 04:45:12'),
(183,123,186,122,185,5,133,144,0,75,'2024-01-25 04:45:12','2024-01-25 04:45:12'),
(184,124,187,123,186,5,103,36,0,75,'2024-01-25 04:45:41','2024-01-25 04:45:41'),
(185,124,188,123,187,5,209,48,0,75,'2024-01-25 04:45:41','2024-01-25 04:45:41'),
(186,124,189,123,188,5,105,48,0,75,'2024-01-25 04:45:41','2024-01-25 04:45:41'),
(187,125,190,124,189,5,113,216,0,75,'2024-01-25 04:46:01','2024-01-25 04:46:01'),
(188,126,191,125,190,5,113,84,0,75,'2024-01-25 04:46:19','2024-01-25 04:46:19'),
(189,127,192,126,191,1,15,1512,0,75,'2024-01-25 04:46:37','2024-01-25 04:46:37'),
(190,128,193,127,192,1,15,936,0,75,'2024-01-25 04:46:56','2024-01-25 04:46:56'),
(191,129,194,128,193,1,15,1512,0,75,'2024-01-25 04:47:11','2024-01-25 04:47:11'),
(192,130,195,129,194,1,15,504,0,75,'2024-01-25 04:47:30','2024-01-25 04:47:30'),
(193,131,196,130,195,1,15,504,0,75,'2024-01-25 04:48:11','2024-01-25 04:48:11'),
(194,132,197,131,196,1,15,360,0,75,'2024-01-25 04:48:29','2024-01-25 04:48:29'),
(195,133,198,132,197,1,15,2376,0,75,'2024-01-25 04:48:47','2024-01-25 04:48:47'),
(196,134,199,133,198,5,113,24,0,75,'2024-01-26 03:26:36','2024-01-26 03:26:36'),
(197,135,200,134,199,5,113,144,0,75,'2024-01-26 03:27:45','2024-01-26 03:27:45'),
(198,135,201,134,200,5,103,36,0,75,'2024-01-26 03:27:45','2024-01-26 03:27:45'),
(199,135,202,134,201,5,209,144,0,75,'2024-01-26 03:27:45','2024-01-26 03:27:45'),
(200,136,203,135,202,5,113,72,0,75,'2024-01-26 03:28:11','2024-01-26 03:28:11'),
(201,137,204,136,203,5,103,36,0,75,'2024-01-26 03:28:52','2024-01-26 03:28:52'),
(202,137,205,136,204,5,209,96,0,75,'2024-01-26 03:28:52','2024-01-26 03:28:52'),
(203,138,206,137,205,1,15,360,0,75,'2024-01-26 03:29:27','2024-01-26 03:29:27'),
(204,138,207,137,206,1,16,648,0,75,'2024-01-26 03:29:27','2024-01-26 03:29:27'),
(205,139,208,138,207,1,16,1800,0,75,'2024-01-26 03:29:52','2024-01-26 03:29:52'),
(206,140,209,139,208,5,103,36,0,75,'2024-01-27 05:30:02','2024-01-27 05:30:02'),
(207,140,210,139,209,5,209,192,0,75,'2024-01-27 05:30:02','2024-01-27 05:30:02'),
(208,141,211,140,210,5,114,36,0,75,'2024-01-27 05:30:31','2024-01-27 05:30:31'),
(209,142,212,141,211,5,94,24,0,75,'2024-01-27 05:30:50','2024-01-27 05:30:50'),
(210,143,213,142,212,5,114,72,0,75,'2024-01-27 05:31:09','2024-01-27 05:31:09'),
(211,144,214,143,213,5,114,72,0,75,'2024-01-27 05:31:29','2024-01-27 05:31:29'),
(212,145,215,144,214,1,16,3024,0,75,'2024-01-27 05:31:51','2024-01-27 05:31:51'),
(213,146,216,145,215,1,16,288,0,75,'2024-01-27 05:32:29','2024-01-27 05:32:29'),
(214,146,217,145,216,3,60,7,0,75,'2024-01-27 05:32:29','2024-01-27 05:32:29'),
(215,147,218,146,217,1,16,1440,0,75,'2024-01-29 03:56:46','2024-01-29 03:56:46'),
(216,148,219,147,218,1,16,2880,0,75,'2024-01-29 03:57:24','2024-01-29 03:57:24'),
(217,149,220,148,219,1,16,3168,0,75,'2024-01-29 03:58:19','2024-01-29 03:58:19'),
(218,150,221,149,220,1,16,1944,0,75,'2024-01-29 03:59:01','2024-01-29 03:59:01'),
(219,151,222,150,221,5,114,216,0,75,'2024-01-29 03:59:40','2024-01-29 03:59:40'),
(220,152,223,151,222,5,114,72,0,75,'2024-01-29 04:00:55','2024-01-29 04:00:55'),
(221,152,224,151,223,5,103,72,0,75,'2024-01-29 04:00:55','2024-01-29 04:00:55'),
(222,152,225,151,224,5,209,336,0,75,'2024-01-29 04:00:55','2024-01-29 04:00:55'),
(223,153,226,152,225,5,114,72,0,75,'2024-01-29 04:01:56','2024-01-29 04:01:56'),
(224,153,227,152,226,5,103,72,0,75,'2024-01-29 04:01:56','2024-01-29 04:01:56'),
(225,153,228,152,227,5,209,192,0,75,'2024-01-29 04:01:56','2024-01-29 04:01:56'),
(226,154,229,153,228,5,114,72,0,75,'2024-01-29 04:02:30','2024-01-29 04:02:30'),
(227,154,230,153,229,5,209,240,0,75,'2024-01-29 04:02:30','2024-01-29 04:02:30'),
(228,155,231,154,230,5,114,72,0,75,'2024-01-29 04:03:06','2024-01-29 04:03:06'),
(229,155,232,154,231,5,103,36,0,75,'2024-01-29 04:03:06','2024-01-29 04:03:06'),
(230,155,233,154,232,5,209,192,0,75,'2024-01-29 04:03:06','2024-01-29 04:03:06'),
(231,156,234,155,233,5,114,72,0,75,'2024-01-29 04:04:10','2024-01-29 04:04:10'),
(232,156,235,155,234,5,103,36,0,75,'2024-01-29 04:04:10','2024-01-29 04:04:10'),
(233,156,236,155,235,5,209,240,0,75,'2024-01-29 04:04:10','2024-01-29 04:04:10'),
(234,157,237,156,236,1,16,360,0,75,'2024-01-29 06:19:03','2024-01-29 06:19:03'),
(235,157,238,156,237,1,17,648,0,75,'2024-01-29 06:19:03','2024-01-29 06:19:03'),
(236,158,239,157,238,1,17,1008,0,75,'2024-01-29 06:19:40','2024-01-29 06:19:40'),
(237,159,240,158,239,1,17,2736,0,75,'2024-01-29 06:20:22','2024-01-29 06:20:22'),
(238,160,241,159,240,5,114,72,0,75,'2024-01-29 06:20:53','2024-01-29 06:20:53'),
(239,160,242,159,241,5,209,240,0,75,'2024-01-29 06:20:53','2024-01-29 06:20:53'),
(240,161,243,160,242,5,114,72,0,75,'2024-01-29 06:23:08','2024-01-29 06:23:08'),
(241,162,244,161,243,5,114,72,0,75,'2024-01-29 06:23:39','2024-01-29 06:23:39'),
(242,162,245,161,244,5,209,48,0,75,'2024-01-29 06:23:39','2024-01-29 06:23:39'),
(243,163,246,162,245,5,113,72,0,75,'2024-01-29 06:24:09','2024-01-29 06:24:09'),
(244,163,247,162,246,5,103,72,0,75,'2024-01-29 06:24:09','2024-01-29 06:24:09'),
(245,164,248,163,247,5,209,384,0,75,'2024-01-29 06:24:32','2024-01-29 06:24:32'),
(246,165,249,164,248,5,209,48,0,75,'2024-01-29 06:24:55','2024-01-29 06:24:55'),
(247,166,250,165,249,5,209,480,0,75,'2024-01-29 06:26:12','2024-01-29 06:26:12'),
(248,167,251,166,250,5,114,72,0,75,'2024-01-29 06:26:38','2024-01-29 06:26:38'),
(249,168,252,167,251,5,103,108,0,75,'2024-01-29 06:29:48','2024-01-29 06:29:48'),
(250,168,253,167,252,5,209,48,0,75,'2024-01-29 06:29:48','2024-01-29 06:29:48'),
(251,169,254,168,253,5,114,144,0,75,'2024-01-29 06:30:32','2024-01-29 06:30:32'),
(252,169,255,168,254,5,209,192,0,75,'2024-01-29 06:30:32','2024-01-29 06:30:32'),
(253,170,256,169,255,5,209,96,0,75,'2024-01-29 06:31:01','2024-01-29 06:31:01'),
(254,171,257,170,256,5,103,72,0,75,'2024-01-29 06:31:40','2024-01-29 06:31:40'),
(255,171,258,170,257,5,209,144,0,75,'2024-01-29 06:31:40','2024-01-29 06:31:40'),
(256,172,259,171,258,1,17,792,0,75,'2024-01-29 07:09:23','2024-01-29 07:09:23'),
(257,173,260,172,259,1,17,792,0,75,'2024-01-29 07:09:40','2024-01-29 07:09:40'),
(258,174,261,173,260,1,17,936,0,75,'2024-01-29 07:09:57','2024-01-29 07:09:57'),
(259,175,262,174,261,1,17,1440,0,75,'2024-01-29 07:10:21','2024-01-29 07:10:21'),
(260,176,263,175,262,1,17,2376,0,75,'2024-01-29 07:10:51','2024-01-29 07:10:51'),
(261,177,264,176,263,5,209,144,0,75,'2024-01-29 07:11:35','2024-01-29 07:11:35'),
(262,178,265,177,264,5,113,72,0,75,'2024-01-29 07:16:01','2024-01-29 07:16:01'),
(263,178,266,177,265,5,209,48,0,75,'2024-01-29 07:16:01','2024-01-29 07:16:01'),
(264,179,267,178,266,5,113,72,0,75,'2024-01-29 07:17:10','2024-01-29 07:17:10'),
(265,179,268,178,267,5,103,36,0,75,'2024-01-29 07:17:10','2024-01-29 07:17:10'),
(266,179,269,178,268,5,209,48,0,75,'2024-01-29 07:17:10','2024-01-29 07:17:10'),
(267,180,270,179,269,5,113,72,0,75,'2024-01-29 07:17:35','2024-01-29 07:17:35'),
(268,180,271,179,270,5,209,48,0,75,'2024-01-29 07:17:35','2024-01-29 07:17:35'),
(269,181,272,180,271,5,209,48,0,75,'2024-01-29 07:17:53','2024-01-29 07:17:53'),
(270,183,274,181,272,5,99,48,0,75,'2024-01-29 10:37:55','2024-01-29 10:37:55'),
(271,184,275,182,273,5,114,144,0,75,'2024-01-29 10:38:19','2024-01-29 10:38:19'),
(272,184,276,182,274,5,103,36,0,75,'2024-01-29 10:38:19','2024-01-29 10:38:19'),
(273,184,277,182,275,5,209,144,0,75,'2024-01-29 10:38:19','2024-01-29 10:38:19'),
(274,185,278,183,276,5,103,36,0,75,'2024-01-29 10:38:42','2024-01-29 10:38:42'),
(275,185,279,183,277,5,209,96,0,75,'2024-01-29 10:38:42','2024-01-29 10:38:42'),
(276,186,280,184,278,5,209,144,0,75,'2024-01-29 10:38:58','2024-01-29 10:38:58'),
(277,187,281,185,279,5,114,72,0,75,'2024-01-29 10:39:15','2024-01-29 10:39:15'),
(278,188,282,186,280,1,1,2448,0,75,'2024-01-29 10:39:32','2024-01-29 10:39:32'),
(279,189,283,187,281,1,1,1800,0,75,'2024-01-29 10:39:50','2024-01-29 10:39:50'),
(280,190,284,188,282,1,1,1728,0,75,'2024-01-29 10:40:08','2024-01-29 10:40:08'),
(281,191,285,189,283,1,1,3024,0,75,'2024-01-29 10:41:24','2024-01-29 10:41:24'),
(282,193,287,190,284,4,96,210,0,75,'2024-01-29 10:41:44','2024-01-29 10:41:44'),
(283,194,288,191,285,3,82,57,0,75,'2024-01-29 10:42:09','2024-01-29 10:42:09'),
(284,194,289,191,286,3,57,144,0,75,'2024-01-29 10:42:09','2024-01-29 10:42:09'),
(285,195,290,192,287,3,53,1040,0,75,'2024-01-29 10:42:28','2024-01-29 10:42:28'),
(286,196,291,193,288,1,1,1152,0,75,'2024-01-29 10:45:08','2024-01-29 10:45:08'),
(287,197,292,194,289,1,15,4320,0,75,'2024-01-29 12:52:10','2024-01-29 12:52:10'),
(288,198,293,195,290,1,15,432,0,75,'2024-01-29 12:52:29','2024-01-29 12:52:29'),
(289,199,294,196,291,1,17,432,0,75,'2024-01-30 04:04:46','2024-01-30 04:04:46'),
(290,200,295,197,292,1,17,720,0,75,'2024-01-30 04:05:14','2024-01-30 04:05:14'),
(291,201,296,198,293,5,114,24,0,75,'2024-01-30 04:05:48','2024-01-30 04:05:48'),
(292,202,297,199,294,5,209,288,0,75,'2024-01-30 04:06:11','2024-01-30 04:06:11'),
(293,203,298,200,295,5,114,72,0,75,'2024-01-30 04:06:32','2024-01-30 04:06:32'),
(294,204,299,201,296,5,114,96,0,75,'2024-01-30 04:06:52','2024-01-30 04:06:52'),
(295,205,300,202,297,5,114,72,0,75,'2024-01-30 04:07:34','2024-01-30 04:07:34'),
(296,206,301,203,298,5,103,36,0,75,'2024-01-30 04:07:55','2024-01-30 04:07:55'),
(297,207,302,204,299,5,99,36,0,75,'2024-01-30 04:08:42','2024-01-30 04:08:42'),
(298,207,303,204,300,5,103,36,0,75,'2024-01-30 04:08:42','2024-01-30 04:08:42'),
(299,207,304,204,301,5,209,48,0,75,'2024-01-30 04:08:42','2024-01-30 04:08:42'),
(300,207,305,204,302,5,105,36,0,75,'2024-01-30 04:08:42','2024-01-30 04:08:42'),
(301,208,306,205,303,5,209,1104,0,75,'2024-01-30 04:09:04','2024-01-30 04:09:04'),
(302,209,307,206,304,5,114,96,0,75,'2024-01-30 07:00:57','2024-01-30 07:00:57'),
(303,210,308,207,305,5,103,36,0,75,'2024-01-30 07:47:33','2024-01-30 07:47:33'),
(304,210,309,207,306,5,94,144,0,75,'2024-01-30 07:47:33','2024-01-30 07:47:33'),
(305,211,310,208,307,5,114,72,0,75,'2024-01-30 07:48:16','2024-01-30 07:48:16'),
(306,212,311,209,308,1,17,576,0,75,'2024-01-30 07:48:49','2024-01-30 07:48:49'),
(307,213,312,210,309,5,124,48,0,75,'2024-01-30 08:20:59','2024-01-30 08:20:59'),
(308,214,313,211,310,1,1,720,0,75,'2024-01-30 08:21:46','2024-01-30 08:21:46'),
(309,215,314,212,311,1,1,576,0,75,'2024-01-30 08:22:08','2024-01-30 08:22:08'),
(310,216,315,213,312,1,1,576,0,75,'2024-01-30 08:22:27','2024-01-30 08:22:27'),
(311,217,316,214,313,5,209,48,0,75,'2024-01-30 08:22:46','2024-01-30 08:22:46'),
(312,218,317,215,314,5,114,72,0,75,'2024-01-30 08:23:04','2024-01-30 08:23:04'),
(313,219,318,216,315,1,1,792,0,75,'2024-01-30 08:23:31','2024-01-30 08:23:31'),
(314,220,319,217,316,1,16,10800,0,75,'2024-01-30 09:50:39','2024-01-30 09:50:39'),
(315,221,320,218,317,1,16,1080,0,75,'2024-01-30 09:50:59','2024-01-30 09:50:59'),
(316,222,321,219,318,5,114,336,0,75,'2024-01-31 03:51:40','2024-01-31 03:51:40'),
(317,223,322,220,319,5,114,72,0,75,'2024-01-31 03:52:26','2024-01-31 03:52:26'),
(318,224,323,221,320,5,114,144,0,75,'2024-01-31 03:52:42','2024-01-31 03:52:42'),
(319,225,324,222,321,5,114,144,0,75,'2024-01-31 03:53:03','2024-01-31 03:53:03'),
(320,226,325,223,322,5,114,288,0,75,'2024-01-31 03:53:34','2024-01-31 03:53:34'),
(321,227,326,224,323,5,114,48,0,75,'2024-01-31 03:53:56','2024-01-31 03:53:56'),
(322,228,327,225,324,5,114,252,0,75,'2024-01-31 03:54:16','2024-01-31 03:54:16'),
(323,229,328,226,325,5,114,72,0,75,'2024-01-31 03:54:33','2024-01-31 03:54:33'),
(324,230,329,227,326,1,17,2880,0,75,'2024-01-31 03:55:13','2024-01-31 03:55:13'),
(325,231,330,228,327,5,114,72,0,75,'2024-01-31 06:50:33','2024-01-31 06:50:33'),
(326,232,331,229,328,5,114,132,0,75,'2024-01-31 06:50:54','2024-01-31 06:50:54'),
(327,233,332,230,329,5,114,144,0,75,'2024-01-31 06:51:17','2024-01-31 06:51:17'),
(328,234,333,231,330,5,114,216,0,75,'2024-01-31 06:51:44','2024-01-31 06:51:44'),
(329,235,334,232,331,5,114,108,0,75,'2024-01-31 06:52:09','2024-01-31 06:52:09'),
(330,236,335,233,332,5,114,24,0,75,'2024-01-31 06:52:32','2024-01-31 06:52:32'),
(331,237,336,234,333,5,114,48,0,75,'2024-01-31 06:52:57','2024-01-31 06:52:57'),
(332,238,337,235,334,1,17,288,0,75,'2024-01-31 06:53:29','2024-01-31 06:53:29'),
(333,238,338,235,335,3,50,28,0,75,'2024-01-31 06:53:29','2024-01-31 06:53:29'),
(334,239,339,236,336,1,17,720,0,75,'2024-01-31 06:53:56','2024-01-31 06:53:56'),
(335,240,340,237,337,5,115,144,0,75,'2024-01-31 07:20:27','2024-01-31 07:20:27'),
(336,241,341,238,338,5,114,72,0,75,'2024-01-31 07:20:46','2024-01-31 07:20:46'),
(337,242,342,239,339,5,103,108,0,75,'2024-01-31 07:21:05','2024-01-31 07:21:05'),
(338,243,343,240,340,1,17,576,0,75,'2024-01-31 07:21:40','2024-01-31 07:21:40'),
(339,244,344,241,341,5,114,432,0,75,'2024-01-31 07:21:58','2024-01-31 07:21:58'),
(340,245,345,242,342,1,20,3168,0,75,'2024-02-01 03:40:39','2024-02-01 03:40:39'),
(341,246,346,243,343,1,20,3600,0,75,'2024-02-01 03:41:01','2024-02-01 03:41:01'),
(342,247,347,244,344,1,18,360,0,75,'2024-02-01 03:41:56','2024-02-01 03:41:56'),
(343,247,348,244,345,1,20,8640,0,75,'2024-02-01 03:41:56','2024-02-01 03:41:56'),
(344,248,349,245,346,1,19,3024,0,75,'2024-02-01 04:08:51','2024-02-01 04:08:51'),
(345,249,350,246,347,1,19,5760,0,75,'2024-02-01 04:09:18','2024-02-01 04:09:18'),
(346,250,351,247,348,1,18,792,0,75,'2024-02-01 04:09:39','2024-02-01 04:09:39'),
(347,251,352,248,349,1,19,720,0,75,'2024-02-01 04:09:58','2024-02-01 04:09:58'),
(348,252,353,249,350,1,19,2520,0,75,'2024-02-01 04:10:17','2024-02-01 04:10:17'),
(349,253,354,250,351,1,20,648,0,75,'2024-02-01 04:11:23','2024-02-01 04:11:23'),
(350,254,355,251,352,4,96,192,0,75,'2024-02-01 04:11:51','2024-02-01 04:11:51'),
(351,255,356,252,353,5,209,48,0,75,'2024-02-01 04:12:16','2024-02-01 04:12:16'),
(352,256,357,253,354,5,114,108,0,75,'2024-02-01 04:12:51','2024-02-01 04:12:51'),
(353,257,358,254,355,5,114,144,0,75,'2024-02-01 04:13:19','2024-02-01 04:13:19'),
(354,258,359,255,356,5,114,216,0,75,'2024-02-01 04:13:33','2024-02-01 04:13:33'),
(355,259,360,256,357,5,114,108,0,75,'2024-02-01 04:13:50','2024-02-01 04:13:50'),
(356,260,361,257,358,5,114,72,0,75,'2024-02-01 04:41:24','2024-02-01 04:41:24'),
(357,261,362,258,359,5,114,132,0,75,'2024-02-01 04:41:49','2024-02-01 04:41:49'),
(358,262,363,259,360,1,20,1008,0,75,'2024-02-01 04:42:14','2024-02-01 04:42:14'),
(359,263,364,260,361,1,20,1512,0,75,'2024-02-01 04:42:42','2024-02-01 04:42:42'),
(360,264,365,261,362,1,20,3744,0,75,'2024-02-01 04:43:08','2024-02-01 04:43:08'),
(361,265,366,262,363,1,20,3168,0,75,'2024-02-01 04:43:34','2024-02-01 04:43:34'),
(362,266,367,263,364,1,20,1224,0,75,'2024-02-01 04:43:52','2024-02-01 04:43:52'),
(363,267,368,264,365,1,1,3024,0,75,'2024-02-01 06:18:54','2024-02-01 06:18:54'),
(364,268,369,265,366,1,1,648,0,75,'2024-02-01 06:19:18','2024-02-01 06:19:18'),
(365,269,370,266,367,1,1,648,0,75,'2024-02-01 06:19:38','2024-02-01 06:19:38'),
(366,270,371,267,368,1,1,720,0,75,'2024-02-01 06:20:10','2024-02-01 06:20:10'),
(367,271,372,268,369,1,1,792,0,75,'2024-02-01 06:20:28','2024-02-01 06:20:28'),
(368,272,373,269,370,1,1,288,0,75,'2024-02-01 06:20:59','2024-02-01 06:20:59'),
(369,272,374,269,371,3,60,1,0,75,'2024-02-01 06:20:59','2024-02-01 06:20:59'),
(370,272,375,269,372,3,82,4,0,75,'2024-02-01 06:20:59','2024-02-01 06:20:59'),
(371,273,376,270,373,4,96,6,0,75,'2024-02-01 06:21:18','2024-02-01 06:21:18'),
(372,275,378,271,374,5,226,48,0,75,'2024-02-02 03:09:00','2024-02-02 03:09:00'),
(373,276,379,272,375,1,20,9000,0,75,'2024-02-02 03:09:46','2024-02-02 03:09:46'),
(374,277,380,273,376,1,20,9072,0,75,'2024-02-02 03:11:04','2024-02-02 03:11:04'),
(375,278,381,274,377,5,114,144,0,75,'2024-02-02 03:11:31','2024-02-02 03:11:31'),
(376,279,382,275,378,1,20,432,0,75,'2024-02-02 03:32:57','2024-02-02 03:32:57'),
(377,279,383,275,379,1,23,576,0,75,'2024-02-02 03:32:57','2024-02-02 03:32:57'),
(378,280,384,276,380,5,114,72,0,75,'2024-02-02 03:33:16','2024-02-02 03:33:16'),
(379,281,385,277,381,5,103,72,0,75,'2024-02-02 07:13:26','2024-02-02 07:13:26'),
(380,282,386,278,382,1,1,1008,0,75,'2024-02-02 07:13:54','2024-02-02 07:13:54'),
(381,283,387,279,383,1,1,792,0,75,'2024-02-02 07:14:14','2024-02-02 07:14:14'),
(382,284,388,280,384,1,1,864,0,75,'2024-02-02 07:14:37','2024-02-02 07:14:37'),
(383,285,389,281,385,1,1,288,0,75,'2024-02-02 07:17:06','2024-02-02 07:17:06'),
(384,285,390,281,386,3,53,2,0,75,'2024-02-02 07:17:06','2024-02-02 07:17:06'),
(385,285,391,281,387,3,60,1,0,75,'2024-02-02 07:17:06','2024-02-02 07:17:06'),
(386,285,392,281,388,3,456,2,0,75,'2024-02-02 07:17:06','2024-02-02 07:17:06'),
(387,285,393,281,389,3,82,2,0,75,'2024-02-02 07:17:06','2024-02-02 07:17:06'),
(388,286,394,282,390,1,1,72,0,75,'2024-02-02 07:17:37','2024-02-02 07:17:37'),
(389,286,395,282,391,3,53,4,0,75,'2024-02-02 07:17:37','2024-02-02 07:17:37'),
(390,287,396,283,392,1,23,5832,0,75,'2024-02-03 03:46:43','2024-02-03 03:46:43'),
(391,288,397,284,393,5,114,156,0,75,'2024-02-03 03:47:06','2024-02-03 03:47:06'),
(392,289,398,285,394,1,23,2376,0,75,'2024-02-03 03:47:36','2024-02-03 03:47:36'),
(393,289,399,285,395,1,21,2592,0,75,'2024-02-03 03:47:36','2024-02-03 03:47:36'),
(394,290,400,286,396,5,114,48,0,75,'2024-02-03 03:47:57','2024-02-03 03:47:57'),
(395,291,401,287,397,4,460,432,0,75,'2024-02-03 03:48:15','2024-02-03 03:48:15'),
(396,292,402,288,398,1,21,2736,0,75,'2024-02-05 03:50:17','2024-02-05 03:50:17'),
(397,293,403,289,399,1,21,1008,0,75,'2024-02-05 03:50:40','2024-02-05 03:50:40'),
(398,294,404,290,400,1,21,792,0,75,'2024-02-05 03:50:59','2024-02-05 03:50:59'),
(399,295,405,291,401,1,21,1440,0,75,'2024-02-05 03:51:26','2024-02-05 03:51:26'),
(400,296,406,292,402,1,21,3888,0,75,'2024-02-05 03:51:47','2024-02-05 03:51:47'),
(401,297,407,293,403,1,21,1800,0,75,'2024-02-05 03:52:13','2024-02-05 03:52:13'),
(402,298,408,294,404,5,114,144,0,75,'2024-02-05 04:39:26','2024-02-05 04:39:26'),
(403,298,409,294,405,5,209,96,0,75,'2024-02-05 04:39:26','2024-02-05 04:39:26'),
(404,298,410,294,406,4,460,96,0,75,'2024-02-05 04:39:26','2024-02-05 04:39:26'),
(405,299,411,295,407,5,114,144,0,75,'2024-02-05 04:39:59','2024-02-05 04:39:59'),
(406,299,412,295,408,5,209,48,0,75,'2024-02-05 04:39:59','2024-02-05 04:39:59'),
(407,299,413,295,409,4,460,192,0,75,'2024-02-05 04:39:59','2024-02-05 04:39:59'),
(408,300,414,296,410,5,209,96,0,75,'2024-02-05 04:40:25','2024-02-05 04:40:25'),
(409,300,415,296,411,4,460,96,0,75,'2024-02-05 04:40:25','2024-02-05 04:40:25'),
(410,301,416,297,412,5,114,72,0,75,'2024-02-05 04:40:56','2024-02-05 04:40:56'),
(411,301,417,297,413,5,209,96,0,75,'2024-02-05 04:40:56','2024-02-05 04:40:56'),
(412,301,418,297,414,4,460,192,0,75,'2024-02-05 04:40:56','2024-02-05 04:40:56'),
(413,302,419,298,415,4,460,432,0,75,'2024-02-05 04:41:17','2024-02-05 04:41:17'),
(414,303,420,299,416,5,114,72,0,75,'2024-02-05 04:41:48','2024-02-05 04:41:48'),
(415,303,421,299,417,5,103,36,0,75,'2024-02-05 04:41:48','2024-02-05 04:41:48'),
(416,303,422,299,418,5,209,48,0,75,'2024-02-05 04:41:48','2024-02-05 04:41:48'),
(417,303,423,299,419,4,460,48,0,75,'2024-02-05 04:41:48','2024-02-05 04:41:48'),
(418,304,424,300,420,5,103,36,0,75,'2024-02-05 04:42:16','2024-02-05 04:42:16'),
(419,304,425,300,421,4,460,240,0,75,'2024-02-05 04:42:16','2024-02-05 04:42:16'),
(420,305,426,301,422,5,114,144,0,75,'2024-02-05 04:42:48','2024-02-05 04:42:48'),
(421,305,427,301,423,5,103,36,0,75,'2024-02-05 04:42:48','2024-02-05 04:42:48'),
(422,305,428,301,424,5,209,48,0,75,'2024-02-05 04:42:48','2024-02-05 04:42:48'),
(423,305,429,301,425,4,460,48,0,75,'2024-02-05 04:42:48','2024-02-05 04:42:48'),
(424,306,430,302,426,4,460,48,0,75,'2024-02-05 04:43:18','2024-02-05 04:43:18'),
(425,306,431,302,427,5,209,48,0,75,'2024-02-05 04:43:18','2024-02-05 04:43:18'),
(426,307,432,303,428,5,114,72,0,75,'2024-02-05 04:43:45','2024-02-05 04:43:45'),
(427,307,433,303,429,5,209,48,0,75,'2024-02-05 04:43:45','2024-02-05 04:43:45'),
(428,307,434,303,430,4,460,96,0,75,'2024-02-05 04:43:45','2024-02-05 04:43:45'),
(429,308,435,304,431,5,114,216,0,75,'2024-02-05 04:44:23','2024-02-05 04:44:23'),
(430,308,436,304,432,5,103,36,0,75,'2024-02-05 04:44:23','2024-02-05 04:44:23'),
(431,308,437,304,433,5,209,192,0,75,'2024-02-05 04:44:23','2024-02-05 04:44:23'),
(432,308,438,304,434,4,460,384,0,75,'2024-02-05 04:44:23','2024-02-05 04:44:23'),
(433,309,439,305,435,5,114,144,0,75,'2024-02-05 04:45:03','2024-02-05 04:45:03'),
(434,309,440,305,436,5,103,72,0,75,'2024-02-05 04:45:03','2024-02-05 04:45:03'),
(435,309,441,305,437,5,209,96,0,75,'2024-02-05 04:45:03','2024-02-05 04:45:03'),
(436,309,442,305,438,4,460,192,0,75,'2024-02-05 04:45:03','2024-02-05 04:45:03'),
(437,310,443,306,439,5,114,72,0,75,'2024-02-05 04:45:46','2024-02-05 04:45:46'),
(438,310,444,306,440,5,103,36,0,75,'2024-02-05 04:45:46','2024-02-05 04:45:46'),
(439,310,445,306,441,5,209,48,0,75,'2024-02-05 04:45:46','2024-02-05 04:45:46'),
(440,310,446,306,442,4,460,384,0,75,'2024-02-05 04:45:46','2024-02-05 04:45:46'),
(441,311,447,307,443,5,114,144,0,75,'2024-02-05 04:46:16','2024-02-05 04:46:16'),
(442,311,448,307,444,5,209,96,0,75,'2024-02-05 04:46:16','2024-02-05 04:46:16'),
(443,311,449,307,445,4,460,480,0,75,'2024-02-05 04:46:16','2024-02-05 04:46:16'),
(444,312,450,308,446,1,21,1944,0,75,'2024-02-05 06:18:20','2024-02-05 06:18:20'),
(445,313,451,309,447,1,21,2880,0,75,'2024-02-05 06:18:40','2024-02-05 06:18:40'),
(446,314,452,310,448,5,114,72,0,75,'2024-02-05 06:19:07','2024-02-05 06:19:07'),
(447,314,453,310,449,4,460,96,0,75,'2024-02-05 06:19:07','2024-02-05 06:19:07'),
(448,315,454,311,450,5,114,72,0,75,'2024-02-05 06:19:45','2024-02-05 06:19:45'),
(449,315,455,311,451,5,102,36,0,75,'2024-02-05 06:19:45','2024-02-05 06:19:45'),
(450,315,456,311,452,5,209,48,0,75,'2024-02-05 06:19:45','2024-02-05 06:19:45'),
(451,315,457,311,453,4,460,48,0,75,'2024-02-05 06:19:45','2024-02-05 06:19:45'),
(452,316,458,312,454,5,114,72,0,75,'2024-02-05 06:21:19','2024-02-05 06:21:19'),
(453,316,459,312,455,5,102,108,0,75,'2024-02-05 06:21:19','2024-02-05 06:21:19'),
(454,316,460,312,456,4,460,48,0,75,'2024-02-05 06:21:19','2024-02-05 06:21:19'),
(455,317,461,313,457,5,114,144,0,75,'2024-02-05 06:21:54','2024-02-05 06:21:54'),
(456,317,462,313,458,5,209,48,0,75,'2024-02-05 06:21:54','2024-02-05 06:21:54'),
(457,317,463,313,459,4,460,96,0,75,'2024-02-05 06:21:54','2024-02-05 06:21:54'),
(458,318,464,314,460,5,114,72,0,75,'2024-02-05 06:22:31','2024-02-05 06:22:31'),
(459,318,465,314,461,5,102,36,0,75,'2024-02-05 06:22:31','2024-02-05 06:22:31'),
(460,318,466,314,462,5,209,144,0,75,'2024-02-05 06:22:31','2024-02-05 06:22:31'),
(461,318,467,314,463,4,460,48,0,75,'2024-02-05 06:22:31','2024-02-05 06:22:31'),
(462,319,468,315,464,5,114,72,0,75,'2024-02-05 06:22:52','2024-02-05 06:22:52'),
(463,319,469,315,465,4,460,240,0,75,'2024-02-05 06:22:52','2024-02-05 06:22:52'),
(464,320,470,316,466,5,114,72,0,75,'2024-02-05 07:11:03','2024-02-05 07:11:03'),
(465,320,471,316,467,5,102,36,0,75,'2024-02-05 07:11:03','2024-02-05 07:11:03'),
(466,320,472,316,468,5,209,48,0,75,'2024-02-05 07:11:03','2024-02-05 07:11:03'),
(467,321,473,317,469,5,114,216,0,75,'2024-02-05 07:11:33','2024-02-05 07:11:33'),
(468,321,474,317,470,5,209,48,0,75,'2024-02-05 07:11:33','2024-02-05 07:11:33'),
(469,321,475,317,471,4,460,96,0,75,'2024-02-05 07:11:33','2024-02-05 07:11:33'),
(470,322,476,318,472,5,114,72,0,75,'2024-02-05 07:12:02','2024-02-05 07:12:02'),
(471,322,477,318,473,4,460,48,0,75,'2024-02-05 07:12:02','2024-02-05 07:12:02'),
(472,323,478,319,474,5,114,72,0,75,'2024-02-05 07:12:45','2024-02-05 07:12:45'),
(473,323,479,319,475,5,209,48,0,75,'2024-02-05 07:12:45','2024-02-05 07:12:45'),
(474,323,480,319,476,4,460,48,0,75,'2024-02-05 07:12:45','2024-02-05 07:12:45'),
(475,323,481,319,477,5,102,36,0,75,'2024-02-05 07:12:45','2024-02-05 07:12:45'),
(476,324,482,320,478,1,21,792,0,75,'2024-02-05 07:13:06','2024-02-05 07:13:06'),
(477,325,483,321,479,1,21,1440,0,75,'2024-02-05 07:13:26','2024-02-05 07:13:26'),
(478,326,484,322,480,1,21,936,0,75,'2024-02-05 07:13:47','2024-02-05 07:13:47'),
(479,327,485,323,481,5,457,72,0,75,'2024-02-06 03:58:43','2024-02-06 03:58:43'),
(480,328,486,324,482,5,457,72,0,75,'2024-02-06 03:59:06','2024-02-06 03:59:06'),
(481,329,487,325,483,5,457,108,0,75,'2024-02-06 03:59:22','2024-02-06 03:59:22'),
(482,330,488,326,484,5,457,72,0,75,'2024-02-06 03:59:43','2024-02-06 03:59:43'),
(483,331,489,327,485,5,457,72,0,75,'2024-02-06 03:59:59','2024-02-06 03:59:59'),
(484,332,490,328,486,1,21,6480,0,75,'2024-02-06 04:00:19','2024-02-06 04:00:19'),
(485,333,491,329,487,1,21,360,0,75,'2024-02-06 04:00:38','2024-02-06 04:00:38'),
(486,334,492,330,488,1,21,6120,0,75,'2024-02-06 04:01:02','2024-02-06 04:01:02'),
(487,335,493,331,489,1,21,720,0,75,'2024-02-06 04:01:21','2024-02-06 04:01:21'),
(488,336,494,332,490,1,21,576,0,75,'2024-02-06 04:01:38','2024-02-06 04:01:38'),
(489,337,495,333,491,1,21,2232,0,75,'2024-02-06 04:02:00','2024-02-06 04:02:00'),
(490,338,496,334,492,5,457,120,0,75,'2024-02-06 04:30:22','2024-02-06 04:30:22'),
(491,339,497,335,493,5,457,72,0,75,'2024-02-06 04:30:40','2024-02-06 04:30:40'),
(492,340,498,336,494,1,21,4032,0,75,'2024-02-06 04:31:02','2024-02-06 04:31:02'),
(493,341,499,337,495,1,21,4248,0,75,'2024-02-06 04:31:23','2024-02-06 04:31:23'),
(494,342,500,338,496,1,21,2736,0,75,'2024-02-06 04:31:48','2024-02-06 04:31:48'),
(495,343,501,339,497,5,94,240,0,75,'2024-02-06 06:16:16','2024-02-06 06:16:16'),
(496,344,502,340,498,5,94,24,0,75,'2024-02-06 06:16:34','2024-02-06 06:16:34'),
(497,345,503,341,499,5,102,36,0,75,'2024-02-06 06:16:53','2024-02-06 06:16:53'),
(498,346,504,342,500,1,21,864,0,75,'2024-02-06 06:17:15','2024-02-06 06:17:15'),
(499,347,505,343,501,3,57,2,0,75,'2024-02-06 06:17:51','2024-02-06 06:17:51'),
(500,347,506,343,502,1,21,144,0,75,'2024-02-06 06:17:51','2024-02-06 06:17:51'),
(501,347,507,343,503,3,67,10,0,75,'2024-02-06 06:17:51','2024-02-06 06:17:51'),
(502,348,508,344,504,3,57,9,0,75,'2024-02-06 06:18:22','2024-02-06 06:18:22'),
(503,348,509,344,505,3,67,4,0,75,'2024-02-06 06:18:22','2024-02-06 06:18:22'),
(504,348,510,344,506,3,60,2,0,75,'2024-02-06 06:18:22','2024-02-06 06:18:22'),
(505,349,511,345,507,5,114,72,0,75,'2024-02-06 08:43:40','2024-02-06 08:43:40'),
(506,350,512,346,508,5,114,72,0,75,'2024-02-06 08:43:56','2024-02-06 08:43:56'),
(507,351,513,347,509,5,114,72,0,75,'2024-02-06 08:44:16','2024-02-06 08:44:16'),
(508,352,514,348,510,5,114,72,0,75,'2024-02-06 08:44:30','2024-02-06 08:44:30'),
(509,353,515,349,511,1,1,1512,0,75,'2024-02-06 08:44:49','2024-02-06 08:44:49'),
(510,354,516,350,512,1,1,1800,0,75,'2024-02-06 08:45:06','2024-02-06 08:45:06'),
(511,355,517,351,513,5,114,216,0,75,'2024-02-07 03:46:59','2024-02-07 03:46:59'),
(512,356,518,352,514,5,114,60,0,75,'2024-02-07 03:47:21','2024-02-07 03:47:21'),
(513,357,519,353,515,5,114,300,0,75,'2024-02-07 03:47:40','2024-02-07 03:47:40'),
(514,358,520,354,516,5,114,216,0,75,'2024-02-07 03:48:01','2024-02-07 03:48:01'),
(515,359,521,355,517,5,114,144,0,75,'2024-02-07 03:48:25','2024-02-07 03:48:25'),
(516,360,522,356,518,5,114,336,0,75,'2024-02-07 03:48:45','2024-02-07 03:48:45'),
(517,361,523,357,519,5,114,348,0,75,'2024-02-07 03:49:11','2024-02-07 03:49:11'),
(518,362,524,358,520,1,21,3816,0,75,'2024-02-07 03:49:37','2024-02-07 03:49:37'),
(519,363,525,359,521,5,114,72,0,75,'2024-02-07 03:49:58','2024-02-07 03:49:58'),
(520,364,526,360,522,5,114,216,0,75,'2024-02-07 03:50:18','2024-02-07 03:50:18'),
(521,365,527,361,523,5,457,36,0,75,'2024-02-07 04:53:03','2024-02-07 04:53:03'),
(522,366,528,362,524,5,457,144,0,75,'2024-02-07 04:53:23','2024-02-07 04:53:23'),
(523,367,529,363,525,5,457,216,0,75,'2024-02-07 04:53:42','2024-02-07 04:53:42'),
(524,368,530,364,526,5,457,72,0,75,'2024-02-07 04:54:02','2024-02-07 04:54:02'),
(525,369,531,365,527,5,457,144,0,75,'2024-02-07 04:54:17','2024-02-07 04:54:17'),
(526,370,532,366,528,5,457,216,0,75,'2024-02-07 04:54:37','2024-02-07 04:54:37'),
(527,371,533,367,529,5,457,144,0,75,'2024-02-07 04:54:57','2024-02-07 04:54:57'),
(528,372,534,368,530,5,457,24,0,75,'2024-02-07 04:55:20','2024-02-07 04:55:20'),
(529,373,535,369,531,5,457,108,0,75,'2024-02-07 04:55:42','2024-02-07 04:55:42'),
(530,374,537,370,533,1,22,1008,0,75,'2024-02-07 04:56:35','2024-02-07 04:56:35'),
(531,374,536,370,532,1,21,2592,0,75,'2024-02-07 04:56:35','2024-02-07 04:56:35'),
(532,375,538,371,534,1,1,2160,0,75,'2024-02-07 04:56:54','2024-02-07 04:56:54'),
(533,376,539,372,535,5,457,144,0,75,'2024-02-07 04:57:13','2024-02-07 04:57:13'),
(534,377,540,373,536,5,457,72,0,75,'2024-02-08 02:51:25','2024-02-08 02:51:25'),
(535,378,541,374,537,5,457,72,0,75,'2024-02-08 02:51:40','2024-02-08 02:51:40'),
(536,379,542,375,538,1,22,9000,0,75,'2024-02-08 02:52:01','2024-02-08 02:52:01'),
(537,380,543,376,539,1,24,720,0,75,'2024-02-08 02:52:21','2024-02-08 02:52:21'),
(538,381,544,377,540,1,24,8640,0,75,'2024-02-08 02:52:38','2024-02-08 02:52:38'),
(539,382,545,378,541,1,24,9000,0,75,'2024-02-08 02:52:57','2024-02-08 02:52:57'),
(540,383,546,379,542,1,24,5760,0,75,'2024-02-08 02:53:14','2024-02-08 02:53:14'),
(541,384,547,380,543,1,24,2160,0,75,'2024-02-08 02:53:31','2024-02-08 02:53:31'),
(542,385,548,381,544,1,24,2016,0,75,'2024-02-08 06:00:52','2024-02-08 06:00:52'),
(543,386,549,382,545,1,24,1584,0,75,'2024-02-08 06:01:13','2024-02-08 06:01:13'),
(544,387,550,383,546,1,24,504,0,75,'2024-02-08 06:01:35','2024-02-08 06:01:35'),
(545,388,551,384,547,1,24,1008,0,75,'2024-02-08 06:01:54','2024-02-08 06:01:54'),
(546,389,552,385,548,1,24,1368,0,75,'2024-02-08 06:02:17','2024-02-08 06:02:17'),
(547,390,553,386,549,1,24,576,0,75,'2024-02-08 06:02:38','2024-02-08 06:02:38'),
(548,391,554,387,550,1,24,504,0,75,'2024-02-08 06:02:55','2024-02-08 06:02:55'),
(549,392,555,388,551,1,24,4752,0,75,'2024-02-08 06:03:13','2024-02-08 06:03:13'),
(550,393,556,389,552,1,24,7560,0,75,'2024-02-08 06:04:09','2024-02-08 06:04:09'),
(551,394,557,390,553,5,458,72,0,75,'2024-02-08 06:04:28','2024-02-08 06:04:28'),
(552,395,558,391,554,5,458,72,0,75,'2024-02-08 06:04:43','2024-02-08 06:04:43'),
(553,396,559,392,555,5,458,216,0,75,'2024-02-08 06:04:59','2024-02-08 06:04:59'),
(554,397,560,393,556,5,458,216,0,75,'2024-02-08 06:05:13','2024-02-08 06:05:13'),
(555,398,561,394,557,5,458,288,0,75,'2024-02-08 06:05:41','2024-02-08 06:05:41'),
(556,398,562,394,558,5,102,36,0,75,'2024-02-08 06:05:41','2024-02-08 06:05:41'),
(557,399,563,395,559,5,458,24,0,75,'2024-02-08 06:06:00','2024-02-08 06:06:00'),
(558,400,564,396,560,5,458,12,0,75,'2024-02-08 06:06:16','2024-02-08 06:06:16'),
(559,401,565,397,561,5,99,48,0,75,'2024-02-08 06:06:32','2024-02-08 06:06:32'),
(560,402,566,398,562,5,458,7,0,75,'2024-02-08 06:07:00','2024-02-08 06:07:00'),
(561,402,567,398,563,5,459,89,0,75,'2024-02-08 06:07:00','2024-02-08 06:07:00'),
(562,403,568,399,564,5,458,72,0,75,'2024-02-08 06:07:28','2024-02-08 06:07:28'),
(563,403,569,399,565,5,102,36,0,75,'2024-02-08 06:07:28','2024-02-08 06:07:28'),
(564,403,570,399,566,5,209,48,0,75,'2024-02-08 06:07:28','2024-02-08 06:07:28'),
(565,404,571,400,567,5,458,240,0,75,'2024-02-08 06:07:45','2024-02-08 06:07:45'),
(566,405,572,401,568,5,458,168,0,75,'2024-02-08 06:08:03','2024-02-08 06:08:03'),
(567,406,573,402,569,5,458,144,0,75,'2024-02-09 02:18:49','2024-02-09 02:18:49'),
(568,407,574,403,570,5,458,72,0,75,'2024-02-09 02:19:08','2024-02-09 02:19:08'),
(569,408,575,404,571,5,458,72,0,75,'2024-02-09 02:26:24','2024-02-09 02:26:24'),
(570,409,576,405,572,5,458,144,0,75,'2024-02-09 02:26:46','2024-02-09 02:26:46'),
(571,410,577,406,573,5,458,144,0,75,'2024-02-12 04:17:10','2024-02-12 04:17:10'),
(572,410,578,406,574,5,102,72,0,75,'2024-02-12 04:17:10','2024-02-12 04:17:10'),
(573,410,579,406,575,5,209,96,0,75,'2024-02-12 04:17:10','2024-02-12 04:17:10'),
(574,411,580,407,576,5,458,72,0,75,'2024-02-12 04:17:44','2024-02-12 04:17:44'),
(575,411,581,407,577,5,102,36,0,75,'2024-02-12 04:17:44','2024-02-12 04:17:44'),
(576,411,582,407,578,5,209,48,0,75,'2024-02-12 04:17:44','2024-02-12 04:17:44'),
(577,412,583,408,579,5,458,144,0,75,'2024-02-12 04:18:11','2024-02-12 04:18:11'),
(578,412,584,408,580,5,209,48,0,75,'2024-02-12 04:18:11','2024-02-12 04:18:11'),
(579,413,585,409,581,5,458,72,0,75,'2024-02-12 04:18:38','2024-02-12 04:18:38'),
(580,413,586,409,582,5,102,36,0,75,'2024-02-12 04:18:38','2024-02-12 04:18:38'),
(581,414,587,410,583,5,458,216,0,75,'2024-02-12 04:19:15','2024-02-12 04:19:15'),
(582,414,588,410,584,5,102,36,0,75,'2024-02-12 04:19:15','2024-02-12 04:19:15'),
(583,414,589,410,585,5,209,96,0,75,'2024-02-12 04:19:15','2024-02-12 04:19:15'),
(584,415,590,411,586,5,209,48,0,75,'2024-02-12 04:20:14','2024-02-12 04:20:14'),
(585,416,591,412,587,1,22,2880,0,75,'2024-02-12 04:20:30','2024-02-12 04:20:30'),
(586,417,592,413,588,1,22,3168,0,75,'2024-02-12 04:20:48','2024-02-12 04:20:48'),
(587,418,593,414,589,1,22,1800,0,75,'2024-02-12 04:21:15','2024-02-12 04:21:15'),
(588,419,594,415,590,5,458,144,0,75,'2024-02-12 04:52:32','2024-02-12 04:52:32'),
(589,419,595,415,591,5,103,72,0,75,'2024-02-12 04:52:32','2024-02-12 04:52:32'),
(590,419,596,415,592,5,209,48,0,75,'2024-02-12 04:52:32','2024-02-12 04:52:32'),
(591,420,597,416,593,5,458,72,0,75,'2024-02-12 04:53:12','2024-02-12 04:53:12'),
(592,420,598,416,594,5,103,72,0,75,'2024-02-12 04:53:12','2024-02-12 04:53:12'),
(593,420,599,416,595,5,209,48,0,75,'2024-02-12 04:53:12','2024-02-12 04:53:12'),
(594,421,600,417,596,5,103,36,0,75,'2024-02-12 04:53:29','2024-02-12 04:53:29'),
(595,422,601,418,597,5,458,144,0,75,'2024-02-12 04:54:02','2024-02-12 04:54:02'),
(596,422,602,418,598,5,103,36,0,75,'2024-02-12 04:54:02','2024-02-12 04:54:02'),
(597,422,603,418,599,5,209,48,0,75,'2024-02-12 04:54:02','2024-02-12 04:54:02'),
(598,423,604,419,600,5,103,72,0,75,'2024-02-12 04:54:28','2024-02-12 04:54:28'),
(599,423,605,419,601,5,209,48,0,75,'2024-02-12 04:54:28','2024-02-12 04:54:28'),
(600,424,606,420,602,5,103,36,0,75,'2024-02-12 04:54:48','2024-02-12 04:54:48'),
(601,425,607,421,603,5,103,36,0,75,'2024-02-12 04:55:18','2024-02-12 04:55:18'),
(602,425,608,421,604,5,209,96,0,75,'2024-02-12 04:55:18','2024-02-12 04:55:18'),
(603,426,609,422,605,5,458,144,0,75,'2024-02-12 04:55:34','2024-02-12 04:55:34'),
(604,427,610,423,606,5,103,36,0,75,'2024-02-12 04:55:56','2024-02-12 04:55:56'),
(605,428,611,424,607,5,458,144,0,75,'2024-02-12 04:56:12','2024-02-12 04:56:12'),
(606,429,612,425,608,5,458,144,0,75,'2024-02-12 04:56:42','2024-02-12 04:56:42'),
(607,430,613,426,609,5,458,36,0,75,'2024-02-12 04:56:59','2024-02-12 04:56:59'),
(608,431,614,427,610,1,22,2376,0,75,'2024-02-12 04:57:37','2024-02-12 04:57:37'),
(609,432,615,428,611,1,24,1512,0,75,'2024-02-12 04:57:58','2024-02-12 04:57:58'),
(610,433,616,429,612,5,458,144,0,75,'2024-02-13 03:40:54','2024-02-13 03:40:54'),
(611,434,617,430,613,5,458,132,0,75,'2024-02-13 03:41:16','2024-02-13 03:41:16'),
(612,435,618,431,614,5,458,72,0,75,'2024-02-13 03:41:36','2024-02-13 03:41:36'),
(613,436,619,432,615,1,22,432,0,75,'2024-02-13 03:42:10','2024-02-13 03:42:10'),
(614,436,620,432,616,1,26,1296,0,75,'2024-02-13 03:42:10','2024-02-13 03:42:10'),
(615,437,621,433,617,1,26,720,0,75,'2024-02-13 03:42:32','2024-02-13 03:42:32'),
(616,438,622,434,618,1,26,2952,0,75,'2024-02-13 03:42:52','2024-02-13 03:42:52'),
(617,439,623,435,619,1,26,3096,0,75,'2024-02-13 03:43:09','2024-02-13 03:43:09'),
(618,440,624,436,620,5,457,12,0,75,'2024-02-13 04:05:57','2024-02-13 04:05:57'),
(619,441,625,437,621,5,458,216,0,75,'2024-02-13 04:06:13','2024-02-13 04:06:13'),
(620,442,626,438,622,5,458,72,0,75,'2024-02-13 04:06:28','2024-02-13 04:06:28'),
(621,443,627,439,623,5,458,108,0,75,'2024-02-13 04:07:31','2024-02-13 04:07:31'),
(622,444,628,440,624,5,458,72,0,75,'2024-02-13 04:07:49','2024-02-13 04:07:49'),
(623,445,629,441,625,5,458,72,0,75,'2024-02-13 04:08:04','2024-02-13 04:08:04'),
(624,446,630,442,626,5,458,72,0,75,'2024-02-13 04:08:18','2024-02-13 04:08:18'),
(625,447,631,443,627,1,26,1296,0,75,'2024-02-13 04:08:39','2024-02-13 04:08:39'),
(626,448,632,444,628,1,26,2232,0,75,'2024-02-13 04:08:59','2024-02-13 04:08:59'),
(627,449,633,445,629,1,26,720,0,75,'2024-02-13 04:09:20','2024-02-13 04:09:20'),
(628,450,634,446,630,1,26,1872,0,75,'2024-02-13 04:09:40','2024-02-13 04:09:40'),
(629,451,635,447,631,1,1,792,0,75,'2024-02-13 04:10:24','2024-02-13 04:10:24'),
(630,451,636,447,632,3,62,11,0,75,'2024-02-13 04:10:24','2024-02-13 04:10:24'),
(631,451,637,447,633,3,84,10,0,75,'2024-02-13 04:10:24','2024-02-13 04:10:24'),
(632,452,638,448,634,5,458,216,0,75,'2024-02-13 08:26:15','2024-02-13 08:26:15'),
(633,453,639,449,635,5,458,72,0,75,'2024-02-13 08:26:40','2024-02-13 08:26:40'),
(634,454,640,450,636,5,458,72,0,75,'2024-02-13 08:27:08','2024-02-13 08:27:08'),
(635,455,641,451,637,1,2,504,0,75,'2024-02-13 08:27:30','2024-02-13 08:27:30'),
(636,456,642,452,638,1,2,1224,0,75,'2024-02-13 08:27:54','2024-02-13 08:27:54'),
(637,457,643,453,639,1,2,504,0,75,'2024-02-13 08:28:15','2024-02-13 08:28:15'),
(638,458,644,454,640,1,26,1440,0,75,'2024-02-15 03:29:25','2024-02-15 03:29:25'),
(639,459,645,455,641,1,26,1512,0,75,'2024-02-15 03:29:44','2024-02-15 03:29:44'),
(640,460,646,456,642,1,26,1800,0,75,'2024-02-15 03:30:01','2024-02-15 03:30:01'),
(641,461,647,457,643,1,26,1512,0,75,'2024-02-15 03:30:19','2024-02-15 03:30:19'),
(642,462,648,458,644,5,457,72,0,75,'2024-02-15 03:30:36','2024-02-15 03:30:36'),
(643,463,649,459,645,5,457,72,0,75,'2024-02-15 03:30:51','2024-02-15 03:30:51'),
(644,464,650,460,646,5,457,288,0,75,'2024-02-15 03:31:06','2024-02-15 03:31:06'),
(645,465,651,461,647,5,457,72,0,75,'2024-02-15 03:31:21','2024-02-15 03:31:21'),
(646,466,652,462,648,5,457,216,0,75,'2024-02-15 03:31:34','2024-02-15 03:31:34'),
(647,467,653,463,649,5,457,216,0,75,'2024-02-15 03:31:50','2024-02-15 03:31:50'),
(648,468,654,464,650,5,457,27,0,75,'2024-02-15 03:32:13','2024-02-15 03:32:13'),
(649,468,655,464,651,5,458,33,0,75,'2024-02-15 03:32:13','2024-02-15 03:32:13'),
(650,469,656,465,652,5,457,228,0,75,'2024-02-15 03:32:33','2024-02-15 03:32:33'),
(651,470,657,466,653,5,457,156,0,75,'2024-02-15 04:58:08','2024-02-15 04:58:08'),
(652,471,658,467,654,5,457,72,0,75,'2024-02-15 04:58:21','2024-02-15 04:58:21'),
(653,472,659,468,655,5,457,72,0,75,'2024-02-15 04:58:37','2024-02-15 04:58:37'),
(654,473,660,469,656,5,457,144,0,75,'2024-02-15 04:58:52','2024-02-15 04:58:52'),
(655,474,661,470,657,5,457,96,0,75,'2024-02-15 04:59:23','2024-02-15 04:59:23'),
(656,475,662,471,658,5,457,72,0,75,'2024-02-15 05:00:21','2024-02-15 05:00:21'),
(657,476,663,472,659,5,457,48,0,75,'2024-02-15 05:01:02','2024-02-15 05:01:02'),
(658,477,664,473,660,1,26,1080,0,75,'2024-02-15 05:01:20','2024-02-15 05:01:20'),
(659,478,665,474,661,1,26,1512,0,75,'2024-02-15 05:01:38','2024-02-15 05:01:38'),
(660,479,666,475,662,1,26,3600,0,75,'2024-02-15 05:02:00','2024-02-15 05:02:00'),
(661,480,667,476,663,1,26,1080,0,75,'2024-02-15 05:02:20','2024-02-15 05:02:20'),
(662,481,668,477,664,1,1,432,0,75,'2024-02-15 05:03:05','2024-02-15 05:03:05'),
(663,481,669,477,665,3,49,21,0,75,'2024-02-15 05:03:05','2024-02-15 05:03:05'),
(664,481,670,477,666,3,50,22,0,75,'2024-02-15 05:03:05','2024-02-15 05:03:05'),
(665,482,671,478,667,3,50,3,0,75,'2024-02-15 05:04:00','2024-02-15 05:04:00'),
(666,482,672,478,668,1,1,288,0,75,'2024-02-15 05:04:00','2024-02-15 05:04:00'),
(667,483,673,479,669,1,26,1512,0,75,'2024-02-16 03:45:53','2024-02-16 03:45:53'),
(668,484,674,480,670,1,26,792,0,75,'2024-02-16 03:46:12','2024-02-16 03:46:12'),
(669,485,675,481,671,5,458,72,0,75,'2024-02-16 03:46:33','2024-02-16 03:46:33'),
(670,486,676,482,672,5,458,24,0,75,'2024-02-16 03:46:53','2024-02-16 03:46:53'),
(671,487,677,483,673,5,458,72,0,75,'2024-02-16 03:48:43','2024-02-16 03:48:43'),
(672,488,678,484,674,5,458,144,0,75,'2024-02-16 03:49:01','2024-02-16 03:49:01'),
(673,489,679,485,675,1,26,432,0,75,'2024-02-16 03:49:21','2024-02-16 03:49:21'),
(674,490,680,486,676,1,26,2880,0,75,'2024-02-16 03:49:51','2024-02-16 03:49:51'),
(675,491,681,487,677,1,26,1008,0,75,'2024-02-16 03:50:12','2024-02-16 03:50:12'),
(676,492,682,488,678,1,26,504,0,75,'2024-02-16 03:50:38','2024-02-16 03:50:38'),
(677,493,683,489,679,1,26,648,0,75,'2024-02-16 03:51:00','2024-02-16 03:51:00'),
(678,494,684,490,680,1,26,288,0,75,'2024-02-16 03:51:41','2024-02-16 03:51:41'),
(679,494,685,490,681,3,50,89,0,75,'2024-02-16 03:51:41','2024-02-16 03:51:41'),
(680,494,686,490,682,3,50,55,0,75,'2024-02-16 03:51:41','2024-02-16 03:51:41'),
(681,495,687,491,683,1,26,864,0,75,'2024-02-16 03:52:03','2024-02-16 03:52:03'),
(682,496,688,492,684,1,26,576,0,75,'2024-02-16 03:52:28','2024-02-16 03:52:28'),
(683,497,689,493,685,1,26,648,0,75,'2024-02-16 03:52:44','2024-02-16 03:52:44'),
(684,498,690,494,686,5,457,72,0,75,'2024-02-16 04:36:37','2024-02-16 04:36:37'),
(685,499,691,495,687,5,457,144,0,75,'2024-02-16 04:36:59','2024-02-16 04:36:59'),
(686,500,692,496,688,5,457,72,0,75,'2024-02-16 04:37:16','2024-02-16 04:37:16'),
(687,501,693,497,689,5,457,144,0,75,'2024-02-16 04:37:34','2024-02-16 04:37:34'),
(688,502,694,498,690,5,457,216,0,75,'2024-02-16 04:37:53','2024-02-16 04:37:53'),
(689,503,695,499,691,5,457,576,0,75,'2024-02-16 04:38:12','2024-02-16 04:38:12'),
(690,504,696,500,692,5,457,72,0,75,'2024-02-16 04:38:29','2024-02-16 04:38:29'),
(691,505,697,501,693,5,457,216,0,75,'2024-02-16 04:38:45','2024-02-16 04:38:45'),
(692,506,698,502,694,5,457,216,0,75,'2024-02-16 04:39:02','2024-02-16 04:39:02'),
(693,507,699,503,695,5,457,144,0,75,'2024-02-16 04:39:20','2024-02-16 04:39:20'),
(694,508,700,504,696,5,457,144,0,75,'2024-02-16 04:39:38','2024-02-16 04:39:38'),
(695,509,701,505,697,5,457,108,0,75,'2024-02-16 04:39:58','2024-02-16 04:39:58'),
(696,510,702,506,698,5,457,96,0,75,'2024-02-16 04:40:22','2024-02-16 04:40:22'),
(697,511,703,507,699,5,457,180,0,75,'2024-02-16 04:40:42','2024-02-16 04:40:42'),
(698,512,704,508,700,5,457,144,0,75,'2024-02-16 04:41:00','2024-02-16 04:41:00'),
(699,513,705,509,701,5,457,288,0,75,'2024-02-16 04:41:20','2024-02-16 04:41:20'),
(700,514,706,510,702,5,457,24,0,75,'2024-02-16 04:41:39','2024-02-16 04:41:39'),
(701,515,707,511,703,5,220,48,0,75,'2024-02-16 04:41:57','2024-02-16 04:41:57'),
(702,516,708,512,704,5,457,144,0,75,'2024-02-16 04:42:28','2024-02-16 04:42:28'),
(703,516,709,512,705,5,103,36,0,75,'2024-02-16 04:42:28','2024-02-16 04:42:28'),
(704,516,710,512,706,5,220,48,0,75,'2024-02-16 04:42:28','2024-02-16 04:42:28'),
(705,517,711,513,707,5,220,144,0,75,'2024-02-16 04:43:12','2024-02-16 04:43:12'),
(706,518,712,514,708,5,226,48,0,75,'2024-02-16 04:43:27','2024-02-16 04:43:27'),
(707,519,713,515,709,5,457,504,0,75,'2024-02-16 08:57:30','2024-02-16 08:57:30'),
(708,520,714,516,710,5,457,72,0,75,'2024-02-16 08:57:43','2024-02-16 08:57:43'),
(709,521,715,517,711,5,457,144,0,75,'2024-02-16 08:57:57','2024-02-16 08:57:57'),
(710,522,716,518,712,5,457,144,0,75,'2024-02-16 08:58:10','2024-02-16 08:58:10'),
(711,523,717,519,713,5,457,12,0,75,'2024-02-16 08:58:27','2024-02-16 08:58:27'),
(712,524,718,520,714,1,2,576,0,75,'2024-02-16 08:58:47','2024-02-16 08:58:47'),
(713,525,719,521,715,1,2,864,0,75,'2024-02-16 08:59:07','2024-02-16 08:59:07'),
(714,526,720,522,716,1,2,576,0,75,'2024-02-16 08:59:26','2024-02-16 08:59:26'),
(715,527,721,523,717,1,2,1080,0,75,'2024-02-16 08:59:50','2024-02-16 08:59:50'),
(716,527,722,523,718,3,53,144,0,75,'2024-02-16 08:59:50','2024-02-16 08:59:50'),
(717,528,723,524,719,1,2,720,0,75,'2024-02-16 09:00:08','2024-02-16 09:00:08'),
(718,529,724,525,720,1,2,1512,0,75,'2024-02-16 09:00:27','2024-02-16 09:00:27'),
(719,530,725,526,721,1,26,6336,0,75,'2024-02-17 07:58:05','2024-02-17 07:58:05'),
(720,531,726,527,722,1,26,1008,0,75,'2024-02-17 07:58:25','2024-02-17 07:58:25'),
(721,532,727,528,723,1,26,720,0,75,'2024-02-17 07:58:43','2024-02-17 07:58:43'),
(722,533,728,529,724,5,458,144,0,75,'2024-02-17 07:59:01','2024-02-17 07:59:01'),
(723,534,729,530,725,5,458,144,0,75,'2024-02-17 07:59:36','2024-02-17 07:59:36'),
(724,535,730,531,726,5,458,132,0,75,'2024-02-17 07:59:57','2024-02-17 07:59:57'),
(725,536,731,532,727,5,458,36,0,75,'2024-02-17 08:00:37','2024-02-17 08:00:37'),
(726,537,732,533,728,5,94,144,0,75,'2024-02-17 08:01:04','2024-02-17 08:01:04'),
(727,537,733,533,729,4,91,96,0,75,'2024-02-17 08:01:04','2024-02-17 08:01:04'),
(728,538,734,534,730,5,220,144,0,75,'2024-02-17 08:01:35','2024-02-17 08:01:35'),
(729,539,735,535,731,1,26,936,0,75,'2024-02-17 08:01:55','2024-02-17 08:01:55'),
(730,540,736,536,732,1,26,720,0,75,'2024-02-17 08:02:34','2024-02-17 08:02:34'),
(731,541,737,537,733,5,458,144,0,75,'2024-02-17 08:03:30','2024-02-17 08:03:30'),
(732,542,738,538,734,1,26,1080,0,75,'2024-02-17 08:03:58','2024-02-17 08:03:58'),
(733,545,743,539,735,1,25,1800,0,75,'2024-02-19 06:46:30','2024-02-19 06:46:30'),
(734,544,740,540,736,5,458,72,0,75,'2024-02-19 06:47:06','2024-02-19 06:47:06'),
(735,544,741,540,737,5,103,36,0,75,'2024-02-19 06:47:06','2024-02-19 06:47:06'),
(736,544,742,540,738,5,220,48,0,75,'2024-02-19 06:47:06','2024-02-19 06:47:06'),
(737,546,744,541,739,5,458,72,0,75,'2024-02-19 06:47:40','2024-02-19 06:47:40'),
(738,546,745,541,740,5,220,48,0,75,'2024-02-19 06:47:40','2024-02-19 06:47:40'),
(739,546,746,541,741,4,460,48,0,75,'2024-02-19 06:47:40','2024-02-19 06:47:40'),
(740,547,747,542,742,5,458,72,0,75,'2024-02-19 06:48:24','2024-02-19 06:48:24'),
(741,547,748,542,743,5,103,36,0,75,'2024-02-19 06:48:24','2024-02-19 06:48:24'),
(742,547,749,542,744,5,220,48,0,75,'2024-02-19 06:48:24','2024-02-19 06:48:24'),
(743,547,750,542,745,4,460,48,0,75,'2024-02-19 06:48:24','2024-02-19 06:48:24'),
(744,548,751,543,746,5,458,72,0,75,'2024-02-19 06:49:00','2024-02-19 06:49:00'),
(745,548,752,543,747,5,103,36,0,75,'2024-02-19 06:49:00','2024-02-19 06:49:00'),
(746,548,753,543,748,5,220,48,0,75,'2024-02-19 06:49:00','2024-02-19 06:49:00'),
(747,548,754,543,749,4,460,48,0,75,'2024-02-19 06:49:00','2024-02-19 06:49:00'),
(748,549,755,544,750,5,458,72,0,75,'2024-02-19 06:49:33','2024-02-19 06:49:33'),
(749,549,756,544,751,5,103,36,0,75,'2024-02-19 06:49:33','2024-02-19 06:49:33'),
(750,549,757,544,752,5,220,48,0,75,'2024-02-19 06:49:33','2024-02-19 06:49:33'),
(751,549,758,544,753,4,460,48,0,75,'2024-02-19 06:49:33','2024-02-19 06:49:33'),
(752,550,759,545,754,5,220,48,0,75,'2024-02-19 06:49:59','2024-02-19 06:49:59'),
(753,550,760,545,755,4,460,48,0,75,'2024-02-19 06:49:59','2024-02-19 06:49:59'),
(754,551,761,546,756,5,458,72,0,75,'2024-02-19 06:50:16','2024-02-19 06:50:16'),
(755,552,762,547,757,5,457,72,0,75,'2024-02-19 07:19:51','2024-02-19 07:19:51'),
(756,552,763,547,758,5,103,36,0,75,'2024-02-19 07:19:51','2024-02-19 07:19:51'),
(757,552,764,547,759,5,220,96,0,75,'2024-02-19 07:19:51','2024-02-19 07:19:51'),
(758,552,765,547,760,4,460,240,0,75,'2024-02-19 07:19:51','2024-02-19 07:19:51'),
(759,553,766,548,761,5,457,72,0,75,'2024-02-19 07:20:15','2024-02-19 07:20:15'),
(760,553,767,548,762,4,460,48,0,75,'2024-02-19 07:20:15','2024-02-19 07:20:15'),
(761,554,768,549,763,5,458,72,0,75,'2024-02-19 07:20:45','2024-02-19 07:20:45'),
(762,554,769,549,764,5,103,36,0,75,'2024-02-19 07:20:45','2024-02-19 07:20:45'),
(763,556,771,551,766,5,103,36,0,75,'2024-02-19 07:22:04','2024-02-19 07:22:04'),
(764,556,772,551,767,4,91,48,0,75,'2024-02-19 07:22:04','2024-02-19 07:22:04'),
(765,557,773,552,768,4,460,96,0,75,'2024-02-19 07:22:40','2024-02-19 07:22:40'),
(766,559,776,553,769,5,457,72,0,75,'2024-02-19 07:24:07','2024-02-19 07:24:07'),
(767,559,777,553,770,5,220,48,0,75,'2024-02-19 07:24:07','2024-02-19 07:24:07'),
(768,560,778,554,771,5,459,72,0,75,'2024-02-19 07:24:47','2024-02-19 07:24:47'),
(769,560,779,554,772,5,103,36,0,75,'2024-02-19 07:24:47','2024-02-19 07:24:47'),
(770,560,780,554,773,5,220,48,0,75,'2024-02-19 07:24:47','2024-02-19 07:24:47'),
(771,560,781,554,774,4,460,48,0,75,'2024-02-19 07:24:47','2024-02-19 07:24:47'),
(772,561,782,555,775,5,457,144,0,75,'2024-02-19 07:25:28','2024-02-19 07:25:28'),
(773,561,783,555,776,4,460,96,0,75,'2024-02-19 07:25:28','2024-02-19 07:25:28'),
(774,562,784,556,777,5,459,72,0,75,'2024-02-19 07:26:05','2024-02-19 07:26:05'),
(775,562,785,556,778,5,103,36,0,75,'2024-02-19 07:26:05','2024-02-19 07:26:05'),
(776,562,786,556,779,5,220,96,0,75,'2024-02-19 07:26:05','2024-02-19 07:26:05'),
(777,563,787,557,780,5,458,144,0,75,'2024-02-19 07:26:50','2024-02-19 07:26:50'),
(778,563,788,557,781,5,103,36,0,75,'2024-02-19 07:26:50','2024-02-19 07:26:50'),
(779,563,789,557,782,5,220,96,0,75,'2024-02-19 07:26:50','2024-02-19 07:26:50'),
(780,563,790,557,783,4,460,48,0,75,'2024-02-19 07:26:50','2024-02-19 07:26:50'),
(781,564,791,558,784,5,458,72,0,75,'2024-02-19 07:27:43','2024-02-19 07:27:43'),
(782,564,792,558,785,5,103,36,0,75,'2024-02-19 07:27:43','2024-02-19 07:27:43'),
(783,564,793,558,786,5,220,96,0,75,'2024-02-19 07:27:43','2024-02-19 07:27:43'),
(784,564,794,558,787,4,460,96,0,75,'2024-02-19 07:27:43','2024-02-19 07:27:43'),
(785,565,795,559,788,5,457,144,0,75,'2024-02-19 07:28:28','2024-02-19 07:28:28'),
(786,565,796,559,789,5,103,36,0,75,'2024-02-19 07:28:28','2024-02-19 07:28:28'),
(787,565,797,559,790,5,220,192,0,75,'2024-02-19 07:28:28','2024-02-19 07:28:28'),
(788,565,798,559,791,4,460,96,0,75,'2024-02-19 07:28:28','2024-02-19 07:28:28'),
(789,566,799,560,792,5,103,36,0,75,'2024-02-19 07:28:58','2024-02-19 07:28:58'),
(790,566,800,560,793,5,220,48,0,75,'2024-02-19 07:28:58','2024-02-19 07:28:58'),
(791,566,801,560,794,4,460,48,0,75,'2024-02-19 07:28:58','2024-02-19 07:28:58'),
(792,568,804,561,795,5,458,72,0,75,'2024-02-19 07:30:23','2024-02-19 07:30:23'),
(793,568,805,561,796,5,103,36,0,75,'2024-02-19 07:30:23','2024-02-19 07:30:23'),
(794,568,806,561,797,5,220,96,0,75,'2024-02-19 07:30:23','2024-02-19 07:30:23'),
(795,568,807,561,798,4,460,144,0,75,'2024-02-19 07:30:23','2024-02-19 07:30:23'),
(796,570,810,562,799,5,458,72,0,75,'2024-02-19 07:37:11','2024-02-19 07:37:11'),
(797,570,811,562,800,5,220,48,0,75,'2024-02-19 07:37:11','2024-02-19 07:37:11'),
(798,569,808,563,801,5,94,144,0,75,'2024-02-19 07:37:36','2024-02-19 07:37:36'),
(799,569,809,563,802,5,125,48,0,75,'2024-02-19 07:37:36','2024-02-19 07:37:36'),
(800,571,812,564,803,1,27,4320,0,75,'2024-02-19 10:16:40','2024-02-19 10:16:40'),
(801,572,813,565,804,1,27,4752,0,75,'2024-02-19 10:16:59','2024-02-19 10:16:59'),
(802,573,814,566,805,1,25,2952,0,75,'2024-02-19 10:17:29','2024-02-19 10:17:29'),
(803,573,815,566,806,1,27,216,0,75,'2024-02-19 10:17:29','2024-02-19 10:17:29'),
(804,574,816,567,807,1,27,2016,0,75,'2024-02-19 10:17:49','2024-02-19 10:17:49'),
(805,575,817,568,808,1,27,2736,0,75,'2024-02-19 10:18:06','2024-02-19 10:18:06'),
(806,576,818,569,809,1,27,2376,0,75,'2024-02-19 10:18:25','2024-02-19 10:18:25'),
(807,577,819,570,810,1,27,4752,0,75,'2024-02-19 10:18:46','2024-02-19 10:18:46'),
(808,578,820,571,811,1,27,3024,0,75,'2024-02-19 10:19:12','2024-02-19 10:19:12'),
(809,579,821,572,812,1,27,7128,0,75,'2024-02-19 10:19:30','2024-02-19 10:19:30'),
(810,580,822,573,813,5,459,72,0,75,'2024-02-19 10:20:10','2024-02-19 10:20:10'),
(811,580,823,573,814,5,103,72,0,75,'2024-02-19 10:20:10','2024-02-19 10:20:10'),
(812,580,824,573,815,5,220,48,0,75,'2024-02-19 10:20:10','2024-02-19 10:20:10'),
(813,580,825,573,816,4,460,48,0,75,'2024-02-19 10:20:10','2024-02-19 10:20:10'),
(814,581,826,574,817,5,459,72,0,75,'2024-02-19 10:20:44','2024-02-19 10:20:44'),
(815,581,827,574,818,5,103,36,0,75,'2024-02-19 10:20:45','2024-02-19 10:20:45'),
(816,581,828,574,819,5,220,48,0,75,'2024-02-19 10:20:45','2024-02-19 10:20:45'),
(817,581,829,574,820,4,460,144,0,75,'2024-02-19 10:20:45','2024-02-19 10:20:45'),
(818,582,830,575,821,5,103,72,0,75,'2024-02-19 10:21:09','2024-02-19 10:21:09'),
(819,582,831,575,822,4,460,96,0,75,'2024-02-19 10:21:09','2024-02-19 10:21:09'),
(820,583,832,576,823,5,459,120,0,75,'2024-02-20 03:31:30','2024-02-20 03:31:30'),
(821,584,833,577,824,5,459,72,0,75,'2024-02-20 03:31:49','2024-02-20 03:31:49'),
(822,585,834,578,825,5,459,72,0,75,'2024-02-20 03:32:03','2024-02-20 03:32:03'),
(823,586,835,579,826,1,27,1080,0,75,'2024-02-20 03:32:22','2024-02-20 03:32:22'),
(824,587,836,580,827,1,27,720,0,75,'2024-02-20 03:32:42','2024-02-20 03:32:42'),
(825,588,837,581,828,1,27,2880,0,75,'2024-02-20 03:32:59','2024-02-20 03:32:59'),
(826,589,838,582,829,5,99,36,0,75,'2024-02-20 03:45:05','2024-02-20 03:45:05'),
(827,590,839,583,830,5,94,144,0,75,'2024-02-20 03:45:28','2024-02-20 03:45:28'),
(828,590,840,583,831,5,99,36,0,75,'2024-02-20 03:45:28','2024-02-20 03:45:28'),
(829,591,841,584,832,5,459,144,0,75,'2024-02-20 03:45:45','2024-02-20 03:45:45'),
(830,592,842,585,833,5,459,72,0,75,'2024-02-20 03:45:59','2024-02-20 03:45:59'),
(831,593,843,586,834,5,459,72,0,75,'2024-02-20 03:46:14','2024-02-20 03:46:14'),
(832,594,844,587,835,5,459,96,0,75,'2024-02-20 03:46:30','2024-02-20 03:46:30'),
(833,595,845,588,836,1,27,1152,0,75,'2024-02-20 03:46:46','2024-02-20 03:46:46'),
(834,596,846,589,837,1,27,3168,0,75,'2024-02-20 03:47:04','2024-02-20 03:47:04'),
(835,602,856,590,838,1,27,5184,0,75,'2024-02-20 04:25:21','2024-02-20 04:25:21'),
(836,603,857,591,839,1,27,1728,0,75,'2024-02-20 04:25:38','2024-02-20 04:25:38'),
(837,605,859,592,840,1,2,432,0,75,'2024-02-20 06:03:12','2024-02-20 06:03:12'),
(838,605,860,592,841,1,1,144,0,75,'2024-02-20 06:03:12','2024-02-20 06:03:12'),
(839,606,861,593,842,1,1,288,0,75,'2024-02-20 06:03:37','2024-02-20 06:03:37'),
(840,597,847,594,843,5,459,72,0,75,'2024-02-20 06:14:18','2024-02-20 06:14:18'),
(841,598,848,595,844,5,458,72,0,75,'2024-02-20 06:14:34','2024-02-20 06:14:34'),
(842,599,849,596,845,5,458,144,0,75,'2024-02-20 06:14:58','2024-02-20 06:14:58'),
(843,599,850,596,846,5,103,36,0,75,'2024-02-20 06:14:58','2024-02-20 06:14:58'),
(844,600,851,597,847,5,103,36,0,75,'2024-02-20 06:15:25','2024-02-20 06:15:25'),
(845,600,852,597,848,5,209,48,0,75,'2024-02-20 06:15:25','2024-02-20 06:15:25'),
(846,601,853,598,849,1,2,288,0,75,'2024-02-20 06:16:12','2024-02-20 06:16:12'),
(847,601,854,598,850,3,62,1,0,75,'2024-02-20 06:16:12','2024-02-20 06:16:12'),
(848,601,855,598,851,3,57,4,0,75,'2024-02-20 06:16:12','2024-02-20 06:16:12'),
(849,604,858,599,852,1,27,4320,0,75,'2024-02-20 09:40:43','2024-02-20 09:40:43'),
(850,607,862,600,853,5,458,72,0,75,'2024-02-21 04:08:25','2024-02-21 04:08:25'),
(851,608,863,601,854,5,458,365,0,75,'2024-02-21 04:08:52','2024-02-21 04:08:52'),
(852,608,864,601,855,5,458,7,0,75,'2024-02-21 04:08:52','2024-02-21 04:08:52'),
(853,609,865,602,856,5,458,144,0,75,'2024-02-21 04:09:28','2024-02-21 04:09:28'),
(854,610,866,603,857,5,458,216,0,75,'2024-02-21 04:10:01','2024-02-21 04:10:01'),
(855,611,867,604,858,5,458,216,0,75,'2024-02-21 04:10:24','2024-02-21 04:10:24'),
(856,612,868,605,859,5,458,72,0,75,'2024-02-21 04:11:05','2024-02-21 04:11:05'),
(857,613,869,606,860,5,458,252,0,75,'2024-02-21 04:11:27','2024-02-21 04:11:27'),
(858,614,870,607,861,4,460,96,0,75,'2024-02-21 04:12:25','2024-02-21 04:12:25'),
(859,615,871,608,862,5,458,144,0,75,'2024-02-21 04:12:44','2024-02-21 04:12:44'),
(860,616,872,609,863,5,458,168,0,75,'2024-02-21 04:13:08','2024-02-21 04:13:08'),
(861,617,873,610,864,5,458,72,0,75,'2024-02-21 04:13:27','2024-02-21 04:13:27'),
(862,618,874,611,865,5,458,144,0,75,'2024-02-21 04:13:48','2024-02-21 04:13:48'),
(863,619,875,612,866,5,458,72,0,75,'2024-02-21 04:14:14','2024-02-21 04:14:14'),
(864,619,876,612,867,5,458,72,0,75,'2024-02-21 04:14:14','2024-02-21 04:14:14'),
(865,620,877,613,868,5,458,144,0,75,'2024-02-21 04:14:35','2024-02-21 04:14:35'),
(866,621,878,614,869,1,1,432,0,75,'2024-02-21 05:02:24','2024-02-21 05:02:24'),
(867,621,879,614,870,3,50,57,0,75,'2024-02-21 05:02:24','2024-02-21 05:02:24'),
(868,622,880,615,871,1,1,288,0,75,'2024-02-21 05:03:08','2024-02-21 05:03:08'),
(869,622,881,615,872,3,82,27,0,75,'2024-02-21 05:03:08','2024-02-21 05:03:08'),
(870,622,882,615,873,3,62,5,0,75,'2024-02-21 05:03:08','2024-02-21 05:03:08'),
(871,623,883,616,874,5,114,12,0,75,'2024-02-21 07:45:39','2024-02-21 07:45:39'),
(872,624,884,617,875,5,459,144,0,75,'2024-02-21 07:45:56','2024-02-21 07:45:56'),
(873,625,885,618,876,5,459,144,0,75,'2024-02-21 07:46:22','2024-02-21 07:46:22'),
(874,626,886,619,877,5,459,144,0,75,'2024-02-21 07:48:03','2024-02-21 07:48:03'),
(875,627,887,620,878,5,459,72,0,75,'2024-02-21 07:48:15','2024-02-21 07:48:15'),
(876,628,888,621,879,5,459,72,0,75,'2024-02-21 07:48:29','2024-02-21 07:48:29'),
(877,629,889,622,880,5,459,72,0,75,'2024-02-21 07:49:07','2024-02-21 07:49:07'),
(878,629,890,622,881,5,103,36,0,75,'2024-02-21 07:49:07','2024-02-21 07:49:07'),
(879,629,891,622,882,5,209,48,0,75,'2024-02-21 07:49:07','2024-02-21 07:49:07'),
(880,629,892,622,883,4,460,96,0,75,'2024-02-21 07:49:07','2024-02-21 07:49:07'),
(881,630,893,623,884,5,103,36,0,75,'2024-02-21 07:50:06','2024-02-21 07:50:06'),
(882,630,894,623,885,4,460,48,0,75,'2024-02-21 07:50:06','2024-02-21 07:50:06'),
(883,631,895,624,886,5,459,72,0,75,'2024-02-21 07:50:34','2024-02-21 07:50:34'),
(884,631,896,624,887,5,103,36,0,75,'2024-02-21 07:50:34','2024-02-21 07:50:34'),
(885,631,897,624,888,4,460,96,0,75,'2024-02-21 07:50:34','2024-02-21 07:50:34'),
(886,632,898,625,889,5,459,72,0,75,'2024-02-21 07:51:04','2024-02-21 07:51:04'),
(887,632,899,625,890,5,220,48,0,75,'2024-02-21 07:51:04','2024-02-21 07:51:04'),
(888,632,900,625,891,4,460,480,0,75,'2024-02-21 07:51:04','2024-02-21 07:51:04'),
(889,633,901,626,892,1,2,792,0,75,'2024-02-21 07:51:26','2024-02-21 07:51:26'),
(890,634,902,627,893,1,2,936,0,75,'2024-02-21 07:51:43','2024-02-21 07:51:43'),
(891,635,903,628,894,1,2,1512,0,75,'2024-02-21 07:52:00','2024-02-21 07:52:00'),
(892,636,904,629,895,1,2,3744,0,75,'2024-02-21 07:52:19','2024-02-21 07:52:19'),
(893,637,905,630,896,1,2,936,0,75,'2024-02-21 07:52:38','2024-02-21 07:52:38'),
(894,638,906,631,897,4,460,6,0,75,'2024-02-21 07:52:58','2024-02-21 07:52:58'),
(895,639,907,632,898,4,460,6,0,75,'2024-02-21 07:53:28','2024-02-21 07:53:28'),
(896,640,908,633,899,4,460,114,0,75,'2024-02-21 07:53:50','2024-02-21 07:53:50'),
(897,641,909,634,900,1,28,1728,0,75,'2024-02-22 03:32:54','2024-02-22 03:32:54'),
(898,642,910,635,901,1,28,1728,0,75,'2024-02-22 03:33:10','2024-02-22 03:33:10'),
(899,643,911,636,902,1,28,1872,0,75,'2024-02-22 03:33:29','2024-02-22 03:33:29'),
(900,644,912,637,903,1,28,5544,0,75,'2024-02-22 03:33:48','2024-02-22 03:33:48'),
(901,645,913,638,904,1,28,360,0,75,'2024-02-22 03:34:06','2024-02-22 03:34:06'),
(902,646,914,639,905,1,28,1008,0,75,'2024-02-22 03:34:27','2024-02-22 03:34:27'),
(903,647,915,640,906,1,28,3600,0,75,'2024-02-22 03:34:48','2024-02-22 03:34:48'),
(904,648,916,641,907,1,28,5256,0,75,'2024-02-22 03:35:09','2024-02-22 03:35:09'),
(905,649,917,642,908,1,28,1440,0,75,'2024-02-22 03:35:30','2024-02-22 03:35:30'),
(906,650,918,643,909,1,28,3240,0,75,'2024-02-22 03:35:50','2024-02-22 03:35:50'),
(907,651,919,644,910,1,28,7488,0,75,'2024-02-22 03:36:18','2024-02-22 03:36:18'),
(908,652,920,645,911,1,28,2088,0,75,'2024-02-22 03:36:38','2024-02-22 03:36:38'),
(909,653,921,646,912,5,457,72,0,75,'2024-02-22 04:42:58','2024-02-22 04:42:58'),
(910,654,922,647,913,5,114,72,0,75,'2024-02-22 04:43:31','2024-02-22 04:43:31'),
(911,655,923,648,914,5,114,144,0,75,'2024-02-22 04:43:46','2024-02-22 04:43:46'),
(912,656,924,649,915,5,457,22,0,75,'2024-02-22 04:44:10','2024-02-22 04:44:10'),
(913,656,925,649,916,5,457,98,0,75,'2024-02-22 04:44:10','2024-02-22 04:44:10'),
(914,657,926,650,917,5,114,288,0,75,'2024-02-22 04:44:28','2024-02-22 04:44:28'),
(915,658,927,651,918,5,114,216,0,75,'2024-02-22 04:44:51','2024-02-22 04:44:51'),
(916,658,927,651,918,5,114,216,0,75,'2024-02-22 04:44:51','2024-02-22 04:44:51'),
(917,658,927,652,919,5,114,216,0,75,'2024-02-22 04:45:06','2024-02-22 04:45:06'),
(918,659,928,653,920,5,457,504,0,75,'2024-02-22 04:45:25','2024-02-22 04:45:25'),
(919,660,929,654,921,5,103,33,0,75,'2024-02-22 04:46:26','2024-02-22 04:46:26'),
(920,660,930,654,922,5,103,3,0,75,'2024-02-22 04:46:26','2024-02-22 04:46:26'),
(921,661,931,655,923,1,28,720,0,75,'2024-02-22 04:51:57','2024-02-22 04:51:57'),
(922,662,932,656,924,1,28,6048,0,75,'2024-02-22 04:52:22','2024-02-22 04:52:22'),
(923,663,933,657,925,1,28,11808,0,75,'2024-02-22 04:52:41','2024-02-22 04:52:41'),
(924,664,934,658,926,1,28,648,0,75,'2024-02-22 04:53:00','2024-02-22 04:53:00'),
(925,665,935,659,927,5,103,36,0,75,'2024-02-22 07:21:51','2024-02-22 07:21:51'),
(926,665,936,659,928,5,220,48,0,75,'2024-02-22 07:21:51','2024-02-22 07:21:51'),
(927,666,937,660,929,1,2,2376,0,75,'2024-02-22 07:22:11','2024-02-22 07:22:11'),
(928,667,938,661,930,1,2,2520,0,75,'2024-02-22 07:22:32','2024-02-22 07:22:32'),
(929,668,939,662,931,1,2,2376,0,75,'2024-02-22 07:22:53','2024-02-22 07:22:53'),
(930,669,940,663,932,1,2,1440,0,75,'2024-02-22 07:23:12','2024-02-22 07:23:12'),
(931,670,941,664,933,1,2,720,0,75,'2024-02-22 07:23:30','2024-02-22 07:23:30'),
(932,671,942,665,934,3,82,3,0,75,'2024-02-22 07:23:48','2024-02-22 07:23:48'),
(933,672,943,666,935,3,62,84,0,75,'2024-02-22 07:24:12','2024-02-22 07:24:12'),
(934,672,944,666,936,3,71,36,0,75,'2024-02-22 07:24:12','2024-02-22 07:24:12'),
(935,673,945,667,937,3,83,750,0,75,'2024-02-22 07:24:35','2024-02-22 07:24:35'),
(936,674,946,668,938,3,82,41,0,75,'2024-02-22 07:25:02','2024-02-22 07:25:02'),
(937,674,947,668,939,3,57,144,0,75,'2024-02-22 07:25:02','2024-02-22 07:25:02'),
(938,675,948,669,940,1,28,4752,0,75,'2024-02-23 03:34:02','2024-02-23 03:34:02'),
(939,676,949,670,941,5,459,216,0,75,'2024-02-23 03:35:32','2024-02-23 03:35:32'),
(940,677,950,671,942,5,459,72,0,75,'2024-02-23 03:35:49','2024-02-23 03:35:49'),
(941,678,951,672,943,5,459,144,0,75,'2024-02-23 03:36:09','2024-02-23 03:36:09'),
(942,679,952,673,944,5,459,144,0,75,'2024-02-23 03:36:23','2024-02-23 03:36:23'),
(943,680,953,674,945,5,459,72,0,75,'2024-02-23 03:37:04','2024-02-23 03:37:04'),
(944,680,954,674,946,5,220,48,0,75,'2024-02-23 03:37:04','2024-02-23 03:37:04'),
(945,680,955,674,947,4,460,192,0,75,'2024-02-23 03:37:04','2024-02-23 03:37:04'),
(946,681,956,675,948,5,103,36,0,75,'2024-02-23 03:37:26','2024-02-23 03:37:26'),
(947,682,957,676,949,5,114,156,0,75,'2024-02-24 04:55:51','2024-02-24 04:55:51'),
(948,683,958,677,950,5,458,72,0,75,'2024-02-24 04:56:11','2024-02-24 04:56:11'),
(949,684,959,678,951,5,458,72,0,75,'2024-02-24 04:56:40','2024-02-24 04:56:40'),
(950,685,960,679,952,5,458,48,0,75,'2024-02-24 04:56:55','2024-02-24 04:56:55'),
(951,686,961,680,953,1,29,3600,0,75,'2024-02-26 02:54:20','2024-02-26 02:54:20'),
(952,687,962,681,954,1,29,2592,0,75,'2024-02-26 02:54:41','2024-02-26 02:54:41'),
(953,688,963,682,955,1,29,1008,0,75,'2024-02-26 02:55:00','2024-02-26 02:55:00'),
(954,689,964,683,956,1,28,1944,0,75,'2024-02-26 02:55:31','2024-02-26 02:55:31'),
(955,689,965,683,957,1,29,72,0,75,'2024-02-26 02:55:31','2024-02-26 02:55:31'),
(956,690,966,684,958,1,29,2016,0,75,'2024-02-26 02:55:49','2024-02-26 02:55:49'),
(957,691,967,685,959,1,29,432,0,75,'2024-02-26 02:56:13','2024-02-26 02:56:13'),
(958,692,968,686,960,5,103,36,0,75,'2024-02-26 02:56:28','2024-02-26 02:56:28'),
(959,693,969,687,961,5,458,144,0,75,'2024-02-26 02:56:47','2024-02-26 02:56:47'),
(960,694,970,688,962,5,458,216,0,75,'2024-02-26 02:57:01','2024-02-26 02:57:01'),
(961,695,971,689,963,5,458,72,0,75,'2024-02-26 05:49:09','2024-02-26 05:49:09'),
(962,695,972,689,964,4,460,96,0,75,'2024-02-26 05:49:09','2024-02-26 05:49:09'),
(963,696,973,690,965,5,458,72,0,75,'2024-02-26 05:49:28','2024-02-26 05:49:28'),
(964,696,974,690,966,4,460,48,0,75,'2024-02-26 05:49:28','2024-02-26 05:49:28'),
(965,697,975,691,967,5,458,72,0,75,'2024-02-26 05:51:29','2024-02-26 05:51:29'),
(966,697,976,691,968,5,103,36,0,75,'2024-02-26 05:51:29','2024-02-26 05:51:29'),
(967,697,977,691,969,5,220,48,0,75,'2024-02-26 05:51:29','2024-02-26 05:51:29'),
(968,697,978,691,970,4,460,48,0,75,'2024-02-26 05:51:29','2024-02-26 05:51:29'),
(969,698,979,692,971,5,458,72,0,75,'2024-02-26 05:52:00','2024-02-26 05:52:00'),
(970,698,980,692,972,5,220,96,0,75,'2024-02-26 05:52:00','2024-02-26 05:52:00'),
(971,698,981,692,973,4,460,48,0,75,'2024-02-26 05:52:00','2024-02-26 05:52:00'),
(972,699,982,693,974,5,458,72,0,75,'2024-02-26 05:52:33','2024-02-26 05:52:33'),
(973,699,983,693,975,5,103,36,0,75,'2024-02-26 05:52:33','2024-02-26 05:52:33'),
(974,699,984,693,976,4,460,48,0,75,'2024-02-26 05:52:33','2024-02-26 05:52:33'),
(975,700,985,694,977,5,458,72,0,75,'2024-02-26 05:53:58','2024-02-26 05:53:58'),
(976,700,986,694,978,5,103,36,0,75,'2024-02-26 05:53:58','2024-02-26 05:53:58'),
(977,700,987,694,979,5,220,144,0,75,'2024-02-26 05:53:58','2024-02-26 05:53:58'),
(978,700,988,694,980,4,460,240,0,75,'2024-02-26 05:53:58','2024-02-26 05:53:58'),
(979,701,989,695,981,5,458,216,0,75,'2024-02-26 05:54:44','2024-02-26 05:54:44'),
(980,702,990,696,982,4,460,48,0,75,'2024-02-26 05:54:57','2024-02-26 05:54:57'),
(981,703,991,697,983,5,458,72,0,75,'2024-02-26 05:55:15','2024-02-26 05:55:15'),
(982,703,992,697,984,5,103,36,0,75,'2024-02-26 05:55:15','2024-02-26 05:55:15'),
(983,704,993,698,985,5,458,216,0,75,'2024-02-26 05:56:59','2024-02-26 05:56:59'),
(984,704,994,698,986,5,103,72,0,75,'2024-02-26 05:56:59','2024-02-26 05:56:59'),
(985,704,995,698,987,5,220,48,0,75,'2024-02-26 05:56:59','2024-02-26 05:56:59'),
(986,704,996,698,988,4,460,96,0,75,'2024-02-26 05:56:59','2024-02-26 05:56:59'),
(987,705,997,699,989,5,220,144,0,75,'2024-02-26 05:57:23','2024-02-26 05:57:23'),
(988,705,998,699,990,4,460,96,0,75,'2024-02-26 05:57:23','2024-02-26 05:57:23'),
(989,706,999,700,991,5,458,936,0,75,'2024-02-26 05:57:53','2024-02-26 05:57:53'),
(990,706,1000,700,992,5,103,720,0,75,'2024-02-26 05:57:53','2024-02-26 05:57:53'),
(991,706,1001,700,993,4,460,48,0,75,'2024-02-26 05:57:53','2024-02-26 05:57:53'),
(992,707,1002,701,994,5,458,72,0,75,'2024-02-26 09:51:02','2024-02-26 09:51:02'),
(993,707,1003,701,995,5,103,36,0,75,'2024-02-26 09:51:02','2024-02-26 09:51:02'),
(994,707,1004,701,996,4,460,192,0,75,'2024-02-26 09:51:02','2024-02-26 09:51:02'),
(995,709,1009,702,997,5,458,72,0,75,'2024-02-26 09:51:38','2024-02-26 09:51:38'),
(996,709,1010,702,998,5,220,48,0,75,'2024-02-26 09:51:38','2024-02-26 09:51:38'),
(997,709,1011,702,999,4,460,48,0,75,'2024-02-26 09:51:38','2024-02-26 09:51:38'),
(998,710,1012,703,1000,5,458,288,0,75,'2024-02-26 09:52:57','2024-02-26 09:52:57'),
(999,710,1013,703,1001,5,103,72,0,75,'2024-02-26 09:52:57','2024-02-26 09:52:57'),
(1000,710,1014,703,1002,5,220,96,0,75,'2024-02-26 09:52:57','2024-02-26 09:52:57'),
(1001,710,1015,703,1003,4,460,624,0,75,'2024-02-26 09:52:57','2024-02-26 09:52:57'),
(1002,711,1016,704,1004,5,458,144,0,75,'2024-02-26 09:53:52','2024-02-26 09:53:52'),
(1003,711,1017,704,1005,5,220,48,0,75,'2024-02-26 09:53:52','2024-02-26 09:53:52'),
(1004,712,1018,705,1006,5,458,72,0,75,'2024-02-26 09:54:23','2024-02-26 09:54:23'),
(1005,712,1019,705,1007,5,220,48,0,75,'2024-02-26 09:54:23','2024-02-26 09:54:23'),
(1006,712,1020,705,1008,4,460,48,0,75,'2024-02-26 09:54:23','2024-02-26 09:54:23'),
(1007,713,1021,706,1009,5,458,72,0,75,'2024-02-26 09:55:24','2024-02-26 09:55:24'),
(1008,713,1022,706,1010,4,460,48,0,75,'2024-02-26 09:55:24','2024-02-26 09:55:24'),
(1009,714,1023,707,1011,5,458,144,0,75,'2024-02-26 09:56:06','2024-02-26 09:56:06'),
(1010,714,1024,707,1012,5,103,36,0,75,'2024-02-26 09:56:06','2024-02-26 09:56:06'),
(1011,714,1025,707,1013,5,220,96,0,75,'2024-02-26 09:56:06','2024-02-26 09:56:06'),
(1012,714,1026,707,1014,4,460,240,0,75,'2024-02-26 09:56:06','2024-02-26 09:56:06'),
(1013,715,1027,708,1015,5,94,24,0,75,'2024-02-27 03:46:34','2024-02-27 03:46:34'),
(1014,716,1028,709,1016,5,103,36,0,75,'2024-02-27 03:46:49','2024-02-27 03:46:49'),
(1015,717,1029,710,1017,5,103,72,0,75,'2024-02-27 03:47:03','2024-02-27 03:47:03'),
(1016,718,1030,711,1018,5,458,72,0,75,'2024-02-27 03:47:18','2024-02-27 03:47:18'),
(1017,719,1031,712,1019,5,458,132,0,75,'2024-02-27 03:47:35','2024-02-27 03:47:35'),
(1018,720,1032,713,1020,5,114,24,0,75,'2024-02-27 03:47:56','2024-02-27 03:47:56'),
(1019,721,1033,714,1021,5,458,180,0,75,'2024-02-27 03:48:20','2024-02-27 03:48:20'),
(1020,722,1034,715,1022,5,110,36,0,75,'2024-02-27 03:48:34','2024-02-27 03:48:34'),
(1021,723,1035,716,1023,1,29,864,0,75,'2024-02-27 03:48:52','2024-02-27 03:48:52'),
(1022,724,1036,717,1024,1,29,864,0,75,'2024-02-27 03:49:09','2024-02-27 03:49:09'),
(1023,725,1037,718,1025,1,29,504,0,75,'2024-02-27 03:49:27','2024-02-27 03:49:27'),
(1024,726,1038,719,1026,1,29,2304,0,75,'2024-02-27 03:49:45','2024-02-27 03:49:45'),
(1025,727,1039,720,1027,1,29,720,0,75,'2024-02-27 03:50:06','2024-02-27 03:50:06'),
(1026,728,1040,721,1028,1,1,216,0,75,'2024-02-27 03:50:49','2024-02-27 03:50:49'),
(1027,728,1041,721,1029,3,62,9,0,75,'2024-02-27 03:50:49','2024-02-27 03:50:49'),
(1028,728,1042,721,1030,3,84,100,0,75,'2024-02-27 03:50:49','2024-02-27 03:50:49'),
(1029,729,1043,722,1031,1,29,1224,0,75,'2024-02-27 03:51:11','2024-02-27 03:51:11'),
(1030,730,1044,723,1032,1,29,2952,0,75,'2024-02-27 03:51:28','2024-02-27 03:51:28'),
(1031,731,1045,724,1033,1,29,1296,0,75,'2024-02-27 03:51:45','2024-02-27 03:51:45'),
(1032,732,1046,725,1034,5,458,72,0,75,'2024-02-27 03:52:42','2024-02-27 03:52:42'),
(1033,733,1047,726,1035,5,458,72,0,75,'2024-02-27 03:52:57','2024-02-27 03:52:57'),
(1034,734,1048,727,1036,5,458,72,0,75,'2024-02-27 03:53:13','2024-02-27 03:53:13'),
(1035,735,1049,728,1037,4,460,192,0,75,'2024-02-27 03:53:29','2024-02-27 03:53:29'),
(1036,736,1050,729,1038,5,458,288,0,75,'2024-02-27 03:54:04','2024-02-27 03:54:04'),
(1037,736,1051,729,1039,5,103,144,0,75,'2024-02-27 03:54:04','2024-02-27 03:54:04'),
(1038,736,1052,729,1040,5,220,192,0,75,'2024-02-27 03:54:04','2024-02-27 03:54:04'),
(1039,736,1053,729,1041,4,460,192,0,75,'2024-02-27 03:54:04','2024-02-27 03:54:04'),
(1040,737,1054,730,1042,5,458,360,0,75,'2024-02-27 03:54:46','2024-02-27 03:54:46'),
(1041,737,1055,730,1043,5,103,72,0,75,'2024-02-27 03:54:46','2024-02-27 03:54:46'),
(1042,737,1056,730,1044,5,220,192,0,75,'2024-02-27 03:54:46','2024-02-27 03:54:46'),
(1043,737,1057,730,1045,4,460,192,0,75,'2024-02-27 03:54:46','2024-02-27 03:54:46'),
(1044,738,1058,731,1046,5,458,72,0,75,'2024-02-27 07:34:33','2024-02-27 07:34:33'),
(1045,739,1059,732,1047,5,458,72,0,75,'2024-02-27 07:34:49','2024-02-27 07:34:49'),
(1046,740,1060,733,1048,5,458,72,0,75,'2024-02-27 07:35:42','2024-02-27 07:35:42'),
(1047,741,1061,734,1049,5,458,72,0,75,'2024-02-27 07:36:12','2024-02-27 07:36:12'),
(1048,742,1062,735,1050,1,2,1656,0,75,'2024-02-27 07:36:54','2024-02-27 07:36:54'),
(1049,743,1063,736,1051,1,29,1440,0,75,'2024-02-28 03:12:30','2024-02-28 03:12:30'),
(1050,744,1064,737,1052,1,29,936,0,75,'2024-02-28 03:45:15','2024-02-28 03:45:15'),
(1051,744,1065,737,1053,1,31,1008,0,75,'2024-02-28 03:45:15','2024-02-28 03:45:15'),
(1052,745,1066,738,1054,1,31,720,0,75,'2024-02-28 03:45:37','2024-02-28 03:45:37'),
(1053,746,1067,739,1055,5,458,72,0,75,'2024-02-28 03:45:53','2024-02-28 03:45:53'),
(1054,747,1068,740,1056,5,458,72,0,75,'2024-02-28 03:46:09','2024-02-28 03:46:09'),
(1055,748,1069,741,1057,5,458,144,0,75,'2024-02-28 03:46:28','2024-02-28 03:46:28'),
(1056,749,1070,742,1058,5,114,36,0,75,'2024-02-28 03:46:50','2024-02-28 03:46:50'),
(1057,750,1071,743,1059,5,458,216,0,75,'2024-02-28 03:47:16','2024-02-28 03:47:16'),
(1058,751,1072,744,1060,5,458,240,0,75,'2024-02-28 03:47:34','2024-02-28 03:47:34'),
(1059,752,1073,745,1061,4,91,48,0,75,'2024-02-28 04:20:44','2024-02-28 04:20:44'),
(1060,753,1074,746,1062,5,458,10,0,75,'2024-02-28 04:21:12','2024-02-28 04:21:12'),
(1061,753,1075,746,1063,5,458,50,0,75,'2024-02-28 04:21:12','2024-02-28 04:21:12'),
(1062,754,1076,747,1064,5,103,36,0,75,'2024-02-28 06:07:33','2024-02-28 06:07:33'),
(1063,754,1077,747,1065,5,220,48,0,75,'2024-02-28 06:07:33','2024-02-28 06:07:33'),
(1064,754,1078,747,1066,4,460,480,0,75,'2024-02-28 06:07:33','2024-02-28 06:07:33'),
(1065,755,1079,748,1067,5,458,72,0,75,'2024-02-28 06:08:08','2024-02-28 06:08:08'),
(1066,755,1080,748,1068,5,103,36,0,75,'2024-02-28 06:08:08','2024-02-28 06:08:08'),
(1067,755,1081,748,1069,5,220,48,0,75,'2024-02-28 06:08:08','2024-02-28 06:08:08'),
(1068,755,1082,748,1070,4,460,240,0,75,'2024-02-28 06:08:08','2024-02-28 06:08:08'),
(1069,756,1083,749,1071,5,458,288,0,75,'2024-02-28 06:08:49','2024-02-28 06:08:49'),
(1070,756,1084,749,1072,5,103,144,0,75,'2024-02-28 06:08:49','2024-02-28 06:08:49'),
(1071,756,1085,749,1073,5,220,144,0,75,'2024-02-28 06:08:49','2024-02-28 06:08:49'),
(1072,756,1086,749,1074,4,460,480,0,75,'2024-02-28 06:08:49','2024-02-28 06:08:49'),
(1073,757,1087,750,1075,5,458,72,0,75,'2024-02-28 06:09:18','2024-02-28 06:09:18'),
(1074,757,1088,750,1076,4,460,96,0,75,'2024-02-28 06:09:18','2024-02-28 06:09:18'),
(1075,758,1089,751,1077,5,103,108,0,75,'2024-02-28 06:09:58','2024-02-28 06:09:58'),
(1076,758,1090,751,1078,5,220,96,0,75,'2024-02-28 06:09:58','2024-02-28 06:09:58'),
(1077,758,1091,751,1079,4,460,288,0,75,'2024-02-28 06:09:58','2024-02-28 06:09:58'),
(1078,759,1092,752,1080,5,458,360,0,75,'2024-02-28 06:10:39','2024-02-28 06:10:39'),
(1079,759,1093,752,1081,5,103,108,0,75,'2024-02-28 06:10:39','2024-02-28 06:10:39'),
(1080,759,1094,752,1082,5,220,144,0,75,'2024-02-28 06:10:39','2024-02-28 06:10:39'),
(1081,759,1095,752,1083,4,460,432,0,75,'2024-02-28 06:10:39','2024-02-28 06:10:39'),
(1082,760,1096,753,1084,4,460,18,0,75,'2024-02-28 06:10:59','2024-02-28 06:10:59'),
(1083,761,1097,754,1085,5,458,72,0,75,'2024-02-28 06:11:14','2024-02-28 06:11:14'),
(1084,762,1098,755,1086,5,458,72,0,75,'2024-02-28 06:11:33','2024-02-28 06:11:33'),
(1085,763,1099,756,1087,5,458,144,0,75,'2024-02-28 06:11:49','2024-02-28 06:11:49'),
(1086,764,1100,757,1088,5,458,216,0,75,'2024-02-28 06:12:08','2024-02-28 06:12:08'),
(1087,765,1101,758,1089,5,458,144,0,75,'2024-02-28 06:12:24','2024-02-28 06:12:24'),
(1088,766,1102,759,1090,5,458,72,0,75,'2024-02-28 06:12:39','2024-02-28 06:12:39'),
(1089,767,1103,760,1091,1,2,720,0,75,'2024-02-28 06:13:06','2024-02-28 06:13:06'),
(1090,769,1108,761,1092,5,1189,72,0,75,'2024-02-29 03:33:43','2024-02-29 03:33:43'),
(1091,769,1109,761,1093,5,103,36,0,75,'2024-02-29 03:33:43','2024-02-29 03:33:43'),
(1092,769,1110,761,1094,5,220,96,0,75,'2024-02-29 03:33:43','2024-02-29 03:33:43'),
(1093,769,1111,761,1095,4,460,96,0,75,'2024-02-29 03:33:43','2024-02-29 03:33:43'),
(1094,769,1111,761,1095,4,460,96,0,75,'2024-02-29 03:33:43','2024-02-29 03:33:43'),
(1095,770,1112,762,1096,5,1189,72,0,75,'2024-02-29 03:34:47','2024-02-29 03:34:47'),
(1096,770,1113,762,1097,5,220,48,0,75,'2024-02-29 03:34:47','2024-02-29 03:34:47'),
(1097,770,1114,762,1098,4,460,96,0,75,'2024-02-29 03:34:47','2024-02-29 03:34:47'),
(1098,771,1115,763,1099,4,460,96,0,75,'2024-02-29 03:35:04','2024-02-29 03:35:04'),
(1099,772,1116,764,1100,5,1189,72,0,75,'2024-02-29 03:35:38','2024-02-29 03:35:38'),
(1100,772,1117,764,1101,5,103,72,0,75,'2024-02-29 03:35:38','2024-02-29 03:35:38'),
(1101,772,1118,764,1102,4,460,48,0,75,'2024-02-29 03:35:38','2024-02-29 03:35:38'),
(1102,773,1119,765,1103,5,1189,144,0,75,'2024-02-29 03:35:55','2024-02-29 03:35:55'),
(1103,774,1120,766,1104,5,1189,132,0,75,'2024-02-29 03:36:10','2024-02-29 03:36:10'),
(1104,775,1121,767,1105,5,1189,72,0,75,'2024-02-29 03:36:28','2024-02-29 03:36:28'),
(1105,776,1122,768,1106,5,1189,144,0,75,'2024-02-29 03:36:44','2024-02-29 03:36:44'),
(1106,777,1123,769,1107,5,1189,144,0,75,'2024-02-29 03:37:00','2024-02-29 03:37:00'),
(1107,778,1124,770,1108,5,1189,132,0,75,'2024-02-29 03:37:18','2024-02-29 03:37:18'),
(1108,779,1125,771,1109,5,1189,180,0,75,'2024-02-29 03:37:38','2024-02-29 03:37:38'),
(1109,780,1126,772,1110,5,1189,120,0,75,'2024-02-29 03:37:54','2024-02-29 03:37:54'),
(1110,781,1127,773,1111,5,1189,288,0,75,'2024-02-29 03:38:10','2024-02-29 03:38:10'),
(1111,782,1128,774,1112,5,1189,144,0,75,'2024-02-29 03:38:26','2024-02-29 03:38:26'),
(1112,783,1129,775,1113,5,1190,12,0,75,'2024-02-29 03:38:58','2024-02-29 03:38:58'),
(1113,784,1130,776,1114,5,1189,144,0,75,'2024-02-29 03:39:11','2024-02-29 03:39:11'),
(1114,785,1131,777,1115,1,31,2520,0,75,'2024-02-29 03:48:06','2024-02-29 03:48:06'),
(1115,786,1132,778,1116,1,31,1512,0,75,'2024-02-29 03:48:23','2024-02-29 03:48:23'),
(1116,787,1133,779,1117,1,31,504,0,75,'2024-02-29 03:48:40','2024-02-29 03:48:40'),
(1117,788,1134,780,1118,1,31,720,0,75,'2024-02-29 03:48:58','2024-02-29 03:48:58'),
(1118,789,1135,781,1119,1,31,2016,0,75,'2024-02-29 03:49:17','2024-02-29 03:49:17'),
(1119,790,1136,782,1120,1,31,1080,0,75,'2024-02-29 03:49:34','2024-02-29 03:49:34'),
(1120,791,1137,783,1121,1,31,1008,0,75,'2024-03-01 02:47:06','2024-03-01 02:47:06'),
(1121,792,1138,784,1122,1,31,11088,0,75,'2024-03-01 02:47:51','2024-03-01 02:47:51'),
(1122,793,1139,785,1123,5,1189,72,0,75,'2024-03-01 02:48:40','2024-03-01 02:48:40'),
(1123,794,1140,786,1124,5,1189,34,0,75,'2024-03-01 02:49:36','2024-03-01 02:49:36'),
(1124,794,1141,786,1125,5,1189,14,0,75,'2024-03-01 02:49:36','2024-03-01 02:49:36'),
(1125,795,1142,787,1126,5,1189,144,0,75,'2024-03-01 02:49:56','2024-03-01 02:49:56'),
(1126,796,1143,788,1127,5,1189,288,0,75,'2024-03-01 02:58:18','2024-03-01 02:58:18'),
(1127,796,1144,788,1128,5,103,216,0,75,'2024-03-01 02:58:18','2024-03-01 02:58:18'),
(1128,796,1145,788,1129,5,220,240,0,75,'2024-03-01 02:58:18','2024-03-01 02:58:18'),
(1129,797,1146,789,1130,5,1189,216,0,75,'2024-03-01 02:58:36','2024-03-01 02:58:36'),
(1130,798,1147,790,1131,5,1189,12,0,75,'2024-03-01 02:59:00','2024-03-01 02:59:00'),
(1131,799,1148,791,1132,5,1189,144,0,75,'2024-03-01 02:59:28','2024-03-01 02:59:28'),
(1132,800,1149,792,1133,5,1189,72,0,75,'2024-03-01 02:59:45','2024-03-01 02:59:45'),
(1133,801,1150,793,1134,5,1189,144,0,75,'2024-03-01 03:00:04','2024-03-01 03:00:04'),
(1134,802,1151,794,1135,4,460,6,0,75,'2024-03-01 03:33:59','2024-03-01 03:33:59'),
(1135,803,1152,795,1136,1,30,576,0,75,'2024-03-01 03:34:24','2024-03-01 03:34:24'),
(1136,804,1153,796,1137,1,29,2520,0,75,'2024-03-01 03:34:49','2024-03-01 03:34:49'),
(1137,805,1154,797,1138,1,29,2160,0,75,'2024-03-01 03:35:24','2024-03-01 03:35:24'),
(1138,806,1155,798,1139,5,1189,144,0,75,'2024-03-01 04:02:18','2024-03-01 04:02:18'),
(1139,806,1156,798,1140,5,103,36,0,75,'2024-03-01 04:02:18','2024-03-01 04:02:18'),
(1140,807,1157,799,1141,5,1189,72,0,75,'2024-03-01 04:02:53','2024-03-01 04:02:53'),
(1141,807,1158,799,1142,5,103,36,0,75,'2024-03-01 04:02:53','2024-03-01 04:02:53'),
(1142,807,1159,799,1143,5,220,48,0,75,'2024-03-01 04:02:53','2024-03-01 04:02:53'),
(1143,808,1160,800,1144,5,1189,72,0,75,'2024-03-01 04:03:10','2024-03-01 04:03:10'),
(1144,809,1161,801,1145,1,32,504,0,75,'2024-03-02 03:18:28','2024-03-02 03:18:28'),
(1145,810,1162,802,1146,1,31,360,0,75,'2024-03-02 03:19:00','2024-03-02 03:19:00'),
(1146,810,1163,802,1147,1,32,8640,0,75,'2024-03-02 03:19:00','2024-03-02 03:19:00'),
(1147,811,1164,803,1148,1,31,720,0,75,'2024-03-02 03:19:41','2024-03-02 03:19:41'),
(1148,811,1165,803,1149,1,32,6480,0,75,'2024-03-02 03:19:41','2024-03-02 03:19:41'),
(1149,812,1166,804,1150,1,32,13680,0,75,'2024-03-02 03:20:01','2024-03-02 03:20:01'),
(1150,813,1167,805,1151,1,32,504,0,75,'2024-03-02 03:20:25','2024-03-02 03:20:25'),
(1151,814,1168,806,1152,1,32,792,0,75,'2024-03-02 03:21:18','2024-03-02 03:21:18'),
(1152,815,1169,807,1153,5,1189,72,0,75,'2024-03-02 03:21:54','2024-03-02 03:21:54'),
(1153,816,1170,808,1154,5,1189,36,0,75,'2024-03-02 03:22:16','2024-03-02 03:22:16'),
(1154,817,1171,809,1155,5,1189,132,0,75,'2024-03-02 03:22:35','2024-03-02 03:22:35'),
(1155,818,1172,810,1156,5,1189,216,0,75,'2024-03-02 03:22:59','2024-03-02 03:22:59'),
(1156,819,1173,811,1157,5,1189,12,0,75,'2024-03-02 03:23:21','2024-03-02 03:23:21'),
(1157,820,1174,812,1158,1,29,3240,0,75,'2024-03-02 08:06:40','2024-03-02 08:06:40'),
(1158,820,1175,812,1159,1,32,216,0,75,'2024-03-02 08:06:40','2024-03-02 08:06:40'),
(1159,821,1176,813,1160,1,32,4536,0,75,'2024-03-02 08:07:11','2024-03-02 08:07:11'),
(1160,822,1177,814,1161,1,32,2376,0,75,'2024-03-02 08:07:28','2024-03-02 08:07:28'),
(1161,823,1178,815,1162,1,32,504,0,75,'2024-03-02 08:07:48','2024-03-02 08:07:48'),
(1162,824,1179,816,1163,1,32,50,0,75,'2024-03-02 08:08:05','2024-03-02 08:08:05'),
(1163,825,1180,817,1164,1,32,504,0,75,'2024-03-02 08:08:26','2024-03-02 08:08:26'),
(1164,826,1181,818,1165,5,458,72,0,75,'2024-03-02 08:08:42','2024-03-02 08:08:42'),
(1165,827,1182,819,1166,1,32,11664,0,75,'2024-03-04 04:18:05','2024-03-04 04:18:05'),
(1166,828,1183,820,1167,1,32,23040,0,75,'2024-03-04 04:18:26','2024-03-04 04:18:26'),
(1167,829,1184,821,1168,1,32,9504,0,75,'2024-03-04 04:18:43','2024-03-04 04:18:43'),
(1168,830,1185,822,1169,5,1189,72,0,75,'2024-03-04 04:19:19','2024-03-04 04:19:19'),
(1169,830,1186,822,1170,5,103,72,0,75,'2024-03-04 04:19:19','2024-03-04 04:19:19'),
(1170,830,1187,822,1171,5,220,48,0,75,'2024-03-04 04:19:19','2024-03-04 04:19:19'),
(1171,831,1188,823,1172,5,103,36,0,75,'2024-03-04 04:19:47','2024-03-04 04:19:47'),
(1172,831,1189,823,1173,5,220,48,0,75,'2024-03-04 04:19:47','2024-03-04 04:19:47'),
(1173,832,1190,824,1174,5,1189,144,0,75,'2024-03-04 04:20:04','2024-03-04 04:20:04'),
(1174,833,1191,825,1175,5,1189,72,0,75,'2024-03-04 04:20:58','2024-03-04 04:20:58'),
(1175,833,1192,825,1176,5,103,36,0,75,'2024-03-04 04:20:58','2024-03-04 04:20:58'),
(1176,833,1193,825,1177,5,220,48,0,75,'2024-03-04 04:20:58','2024-03-04 04:20:58'),
(1177,834,1194,826,1178,5,1189,72,0,75,'2024-03-04 04:21:31','2024-03-04 04:21:31'),
(1178,834,1195,826,1179,5,103,36,0,75,'2024-03-04 04:21:31','2024-03-04 04:21:31'),
(1179,834,1196,826,1180,5,220,144,0,75,'2024-03-04 04:21:31','2024-03-04 04:21:31'),
(1180,835,1197,827,1181,5,1190,72,0,75,'2024-03-04 04:22:04','2024-03-04 04:22:04'),
(1181,835,1198,827,1182,5,103,108,0,75,'2024-03-04 04:22:04','2024-03-04 04:22:04'),
(1182,835,1199,827,1183,5,220,48,0,75,'2024-03-04 04:22:04','2024-03-04 04:22:04'),
(1183,836,1200,828,1184,5,1190,72,0,75,'2024-03-04 04:22:39','2024-03-04 04:22:39'),
(1184,836,1201,828,1185,5,103,36,0,75,'2024-03-04 04:22:39','2024-03-04 04:22:39'),
(1185,837,1202,829,1186,5,1190,72,0,75,'2024-03-04 05:02:14','2024-03-04 05:02:14'),
(1186,837,1203,829,1187,5,103,36,0,75,'2024-03-04 05:02:14','2024-03-04 05:02:14'),
(1187,837,1204,829,1188,5,220,96,0,75,'2024-03-04 05:02:14','2024-03-04 05:02:14'),
(1188,838,1205,830,1189,5,103,36,0,75,'2024-03-04 05:02:35','2024-03-04 05:02:35'),
(1189,838,1206,830,1190,5,220,48,0,75,'2024-03-04 05:02:35','2024-03-04 05:02:35'),
(1190,839,1207,831,1191,5,1190,72,0,75,'2024-03-04 05:02:50','2024-03-04 05:02:50'),
(1191,840,1208,832,1192,5,1190,216,0,75,'2024-03-04 05:03:12','2024-03-04 05:03:12'),
(1192,840,1209,832,1193,5,220,48,0,75,'2024-03-04 05:03:12','2024-03-04 05:03:12'),
(1193,842,1213,833,1194,5,1190,72,0,75,'2024-03-04 05:03:44','2024-03-04 05:03:44'),
(1194,842,1214,833,1195,5,103,36,0,75,'2024-03-04 05:03:44','2024-03-04 05:03:44'),
(1195,842,1215,833,1196,5,220,48,0,75,'2024-03-04 05:03:44','2024-03-04 05:03:44'),
(1196,843,1216,834,1197,5,1190,72,0,75,'2024-03-04 05:04:13','2024-03-04 05:04:13'),
(1197,843,1217,834,1198,5,103,144,0,75,'2024-03-04 05:04:13','2024-03-04 05:04:13'),
(1198,843,1218,834,1199,5,220,48,0,75,'2024-03-04 05:04:13','2024-03-04 05:04:13'),
(1199,844,1219,835,1200,5,1190,72,0,75,'2024-03-04 05:04:31','2024-03-04 05:04:31'),
(1200,845,1220,836,1201,5,1190,288,0,75,'2024-03-04 05:04:51','2024-03-04 05:04:51'),
(1201,845,1221,836,1202,5,103,36,0,75,'2024-03-04 05:04:51','2024-03-04 05:04:51'),
(1202,846,1222,837,1203,5,103,36,0,75,'2024-03-04 05:05:14','2024-03-04 05:05:14'),
(1203,846,1223,837,1204,5,220,96,0,75,'2024-03-04 05:05:14','2024-03-04 05:05:14'),
(1204,847,1224,838,1205,5,103,36,0,75,'2024-03-04 05:05:40','2024-03-04 05:05:40'),
(1205,847,1225,838,1206,5,220,48,0,75,'2024-03-04 05:05:40','2024-03-04 05:05:40'),
(1206,848,1226,839,1207,5,1190,144,0,75,'2024-03-04 05:06:17','2024-03-04 05:06:17'),
(1207,848,1227,839,1208,5,103,36,0,75,'2024-03-04 05:06:17','2024-03-04 05:06:17'),
(1208,848,1228,839,1209,5,220,48,0,75,'2024-03-04 05:06:17','2024-03-04 05:06:17'),
(1209,849,1229,840,1210,5,1189,12,0,75,'2024-03-04 05:06:35','2024-03-04 05:06:35'),
(1210,850,1230,841,1211,5,1189,4,0,75,'2024-03-04 05:07:02','2024-03-04 05:07:02'),
(1211,850,1231,841,1212,5,1190,8,0,75,'2024-03-04 05:07:02','2024-03-04 05:07:02'),
(1212,851,1232,842,1213,5,1190,144,0,75,'2024-03-04 05:07:35','2024-03-04 05:07:35'),
(1213,851,1233,842,1214,5,103,36,0,75,'2024-03-04 05:07:35','2024-03-04 05:07:35'),
(1214,851,1234,842,1215,5,220,48,0,75,'2024-03-04 05:07:35','2024-03-04 05:07:35'),
(1215,852,1235,843,1216,5,1190,288,0,75,'2024-03-04 07:28:30','2024-03-04 07:28:30'),
(1216,852,1236,843,1217,5,103,36,0,75,'2024-03-04 07:28:30','2024-03-04 07:28:30'),
(1217,852,1237,843,1218,5,220,48,0,75,'2024-03-04 07:28:30','2024-03-04 07:28:30'),
(1218,853,1238,844,1219,5,1190,72,0,75,'2024-03-04 07:29:00','2024-03-04 07:29:00'),
(1219,853,1239,844,1220,5,103,36,0,75,'2024-03-04 07:29:00','2024-03-04 07:29:00'),
(1220,853,1240,844,1221,5,220,48,0,75,'2024-03-04 07:29:00','2024-03-04 07:29:00'),
(1221,854,1241,845,1222,5,1190,288,0,75,'2024-03-04 07:29:27','2024-03-04 07:29:27'),
(1222,854,1242,845,1223,5,103,72,0,75,'2024-03-04 07:29:27','2024-03-04 07:29:27'),
(1223,854,1243,845,1224,5,220,96,0,75,'2024-03-04 07:29:27','2024-03-04 07:29:27'),
(1224,855,1244,846,1225,5,103,36,0,75,'2024-03-04 07:29:51','2024-03-04 07:29:51'),
(1225,855,1245,846,1226,5,220,48,0,75,'2024-03-04 07:29:51','2024-03-04 07:29:51'),
(1226,856,1246,847,1227,5,1190,144,0,75,'2024-03-04 07:30:17','2024-03-04 07:30:17'),
(1227,856,1247,847,1228,5,103,36,0,75,'2024-03-04 07:30:17','2024-03-04 07:30:17'),
(1228,856,1248,847,1229,5,220,48,0,75,'2024-03-04 07:30:17','2024-03-04 07:30:17'),
(1229,857,1249,848,1230,5,1190,408,0,75,'2024-03-05 03:42:26','2024-03-05 03:42:26'),
(1230,858,1250,849,1231,5,1190,12,0,75,'2024-03-05 03:42:42','2024-03-05 03:42:42'),
(1231,859,1251,850,1232,5,1190,96,0,75,'2024-03-05 03:42:58','2024-03-05 03:42:58'),
(1232,860,1252,851,1233,5,1190,72,0,75,'2024-03-05 03:43:17','2024-03-05 03:43:17'),
(1233,861,1253,852,1234,5,1190,72,0,75,'2024-03-05 03:43:36','2024-03-05 03:43:36'),
(1234,862,1254,853,1235,5,1190,72,0,75,'2024-03-05 03:44:56','2024-03-05 03:44:56'),
(1235,863,1255,854,1236,5,1190,72,0,75,'2024-03-05 03:45:21','2024-03-05 03:45:21'),
(1236,864,1256,855,1237,1,33,1440,0,75,'2024-03-05 03:46:07','2024-03-05 03:46:07'),
(1237,864,1257,855,1238,1,34,6480,0,75,'2024-03-05 03:46:07','2024-03-05 03:46:07'),
(1238,865,1258,856,1239,1,33,648,0,75,'2024-03-05 03:46:59','2024-03-05 03:46:59'),
(1239,865,1259,856,1240,1,34,72,0,75,'2024-03-05 03:46:59','2024-03-05 03:46:59'),
(1240,866,1260,857,1241,1,1,864,0,75,'2024-03-05 04:09:22','2024-03-05 04:09:22'),
(1241,867,1261,858,1242,1,34,10368,0,75,'2024-03-05 04:09:49','2024-03-05 04:09:49'),
(1242,868,1262,859,1243,1,34,504,0,75,'2024-03-05 04:10:06','2024-03-05 04:10:06'),
(1243,869,1263,860,1244,5,1190,72,0,75,'2024-03-05 04:10:24','2024-03-05 04:10:24'),
(1244,870,1264,861,1245,5,1190,72,0,75,'2024-03-05 04:10:43','2024-03-05 04:10:43'),
(1245,871,1265,862,1246,5,1190,72,0,75,'2024-03-05 04:11:18','2024-03-05 04:11:18'),
(1246,872,1266,863,1247,5,1190,180,0,75,'2024-03-05 04:11:34','2024-03-05 04:11:34'),
(1247,873,1267,864,1248,5,94,144,0,75,'2024-03-05 04:11:57','2024-03-05 04:11:57'),
(1248,874,1268,865,1249,1,34,2592,0,75,'2024-03-05 04:12:32','2024-03-05 04:12:32'),
(1249,875,1269,866,1250,1,33,3600,0,75,'2024-03-05 07:55:09','2024-03-05 07:55:09'),
(1250,876,1270,867,1251,5,99,48,0,75,'2024-03-05 07:55:36','2024-03-05 07:55:36'),
(1251,876,1271,867,1252,5,103,36,0,75,'2024-03-05 07:55:36','2024-03-05 07:55:36'),
(1252,877,1272,868,1253,1,33,4680,0,75,'2024-03-05 07:55:56','2024-03-05 07:55:56'),
(1253,878,1273,869,1254,3,57,5,0,75,'2024-03-05 07:56:34','2024-03-05 07:56:34'),
(1254,878,1274,869,1255,3,57,132,0,75,'2024-03-05 07:56:34','2024-03-05 07:56:34'),
(1255,878,1275,869,1256,3,1247,213,0,75,'2024-03-05 07:56:34','2024-03-05 07:56:34'),
(1256,879,1276,870,1257,3,53,20,0,75,'2024-03-05 07:57:02','2024-03-05 07:57:02'),
(1257,879,1277,870,1258,1,33,3312,0,75,'2024-03-05 07:57:02','2024-03-05 07:57:02'),
(1258,880,1278,871,1259,4,460,12,0,75,'2024-03-05 07:57:17','2024-03-05 07:57:17'),
(1259,881,1279,872,1260,5,94,144,0,75,'2024-03-05 07:57:39','2024-03-05 07:57:39'),
(1260,881,1280,872,1261,5,99,48,0,75,'2024-03-05 07:57:39','2024-03-05 07:57:39'),
(1261,881,1281,872,1262,5,226,48,0,75,'2024-03-05 07:57:39','2024-03-05 07:57:39'),
(1262,882,1282,873,1263,5,1190,288,0,75,'2024-03-05 07:57:54','2024-03-05 07:57:54'),
(1263,883,1283,874,1264,5,1190,72,0,75,'2024-03-05 07:58:07','2024-03-05 07:58:07'),
(1264,884,1284,875,1265,5,1190,72,0,75,'2024-03-05 07:58:20','2024-03-05 07:58:20'),
(1265,885,1285,876,1266,5,1190,72,0,75,'2024-03-05 07:58:34','2024-03-05 07:58:34'),
(1266,887,1287,877,1267,5,1190,288,0,75,'2024-03-06 05:59:32','2024-03-06 05:59:32'),
(1267,888,1288,878,1268,5,1190,72,0,75,'2024-03-06 05:59:49','2024-03-06 05:59:49'),
(1268,889,1289,879,1269,5,1190,396,0,75,'2024-03-06 06:00:07','2024-03-06 06:00:07'),
(1269,890,1290,880,1270,5,1190,72,0,75,'2024-03-06 06:00:23','2024-03-06 06:00:23'),
(1270,891,1291,881,1271,5,1190,216,0,75,'2024-03-06 06:00:41','2024-03-06 06:00:41'),
(1271,892,1292,882,1272,5,1190,216,0,75,'2024-03-06 06:00:56','2024-03-06 06:00:56'),
(1272,894,1294,883,1273,5,1190,264,0,75,'2024-03-06 06:01:15','2024-03-06 06:01:15'),
(1273,895,1295,884,1274,5,1190,72,0,75,'2024-03-06 06:02:16','2024-03-06 06:02:16'),
(1274,896,1296,885,1275,5,1190,144,0,75,'2024-03-06 06:02:32','2024-03-06 06:02:32'),
(1275,897,1297,886,1276,5,1190,24,0,75,'2024-03-06 06:02:48','2024-03-06 06:02:48'),
(1276,898,1298,887,1277,5,1190,72,0,75,'2024-03-06 06:03:03','2024-03-06 06:03:03'),
(1277,899,1299,888,1278,5,1190,132,0,75,'2024-03-06 06:03:20','2024-03-06 06:03:20'),
(1278,900,1300,889,1279,5,1190,72,0,75,'2024-03-06 06:03:33','2024-03-06 06:03:33'),
(1279,901,1301,890,1280,5,1190,216,0,75,'2024-03-06 06:03:48','2024-03-06 06:03:48'),
(1280,902,1302,891,1281,5,1190,216,0,75,'2024-03-06 06:04:02','2024-03-06 06:04:02'),
(1281,903,1303,892,1282,5,1190,48,0,75,'2024-03-06 06:04:17','2024-03-06 06:04:17'),
(1282,904,1304,893,1283,5,1190,120,0,75,'2024-03-06 06:04:33','2024-03-06 06:04:33'),
(1283,905,1305,894,1284,5,1190,48,0,75,'2024-03-06 06:04:48','2024-03-06 06:04:48'),
(1284,906,1306,895,1285,5,1190,72,0,75,'2024-03-06 06:05:09','2024-03-06 06:05:09'),
(1285,906,1307,895,1286,5,103,36,0,75,'2024-03-06 06:05:09','2024-03-06 06:05:09'),
(1286,907,1308,896,1287,5,1190,216,0,75,'2024-03-06 06:05:26','2024-03-06 06:05:26'),
(1287,908,1309,897,1288,1,38,4464,0,75,'2024-03-06 06:05:53','2024-03-06 06:05:53'),
(1288,909,1310,898,1289,3,1244,3,0,75,'2024-03-06 06:06:51','2024-03-06 06:06:51'),
(1289,909,1311,898,1290,1,38,288,0,75,'2024-03-06 06:06:51','2024-03-06 06:06:51'),
(1290,909,1312,898,1291,3,82,17,0,75,'2024-03-06 06:06:51','2024-03-06 06:06:51'),
(1291,909,1313,898,1292,3,62,16,0,75,'2024-03-06 06:06:51','2024-03-06 06:06:51'),
(1292,910,1314,899,1293,1,38,720,0,75,'2024-03-06 06:07:22','2024-03-06 06:07:22'),
(1293,911,1315,900,1294,1,38,432,0,75,'2024-03-06 06:07:47','2024-03-06 06:07:47'),
(1294,912,1316,901,1295,1,38,216,0,75,'2024-03-06 06:08:28','2024-03-06 06:08:28'),
(1295,912,1317,901,1296,3,67,20,0,75,'2024-03-06 06:08:28','2024-03-06 06:08:28'),
(1296,912,1318,901,1297,3,82,29,0,75,'2024-03-06 06:08:28','2024-03-06 06:08:28'),
(1297,913,1319,902,1298,1,38,1512,0,75,'2024-03-07 03:10:47','2024-03-07 03:10:47'),
(1298,914,1320,903,1299,1,38,1080,0,75,'2024-03-07 03:11:08','2024-03-07 03:11:08'),
(1299,915,1321,904,1300,1,38,648,0,75,'2024-03-07 03:11:29','2024-03-07 03:11:29'),
(1300,916,1322,905,1301,5,1190,132,0,75,'2024-03-07 03:11:47','2024-03-07 03:11:47'),
(1301,917,1323,906,1302,5,1190,72,0,75,'2024-03-07 03:12:01','2024-03-07 03:12:01'),
(1302,918,1324,907,1303,5,1190,72,0,75,'2024-03-07 03:12:16','2024-03-07 03:12:16'),
(1303,919,1325,908,1304,5,1190,72,0,75,'2024-03-07 03:12:38','2024-03-07 03:12:38'),
(1304,920,1326,909,1305,1,38,2016,0,75,'2024-03-07 03:12:55','2024-03-07 03:12:55'),
(1305,921,1327,910,1306,1,38,1872,0,75,'2024-03-07 03:13:13','2024-03-07 03:13:13'),
(1306,922,1328,911,1307,1,38,360,0,75,'2024-03-07 03:13:32','2024-03-07 03:13:32'),
(1307,923,1329,912,1308,1,38,1080,0,75,'2024-03-07 03:13:50','2024-03-07 03:13:50'),
(1308,924,1330,913,1309,1,38,1440,0,75,'2024-03-07 03:14:09','2024-03-07 03:14:09'),
(1309,925,1331,914,1310,1,38,720,0,75,'2024-03-07 03:14:27','2024-03-07 03:14:27'),
(1310,926,1332,915,1311,5,103,36,0,75,'2024-03-08 01:49:27','2024-03-08 01:49:27'),
(1311,926,1333,915,1312,5,220,48,0,75,'2024-03-08 01:49:27','2024-03-08 01:49:27'),
(1312,926,1334,915,1313,5,226,48,0,75,'2024-03-08 01:49:27','2024-03-08 01:49:27'),
(1313,927,1335,916,1314,5,1190,72,0,75,'2024-03-08 01:50:04','2024-03-08 01:50:04'),
(1314,927,1336,916,1315,5,1190,36,0,75,'2024-03-08 01:50:04','2024-03-08 01:50:04'),
(1315,928,1337,917,1316,5,1190,144,0,75,'2024-03-08 01:50:21','2024-03-08 01:50:21'),
(1316,929,1338,918,1317,5,1190,288,0,75,'2024-03-08 01:50:37','2024-03-08 01:50:37'),
(1317,930,1339,919,1318,5,1190,144,0,75,'2024-03-08 01:50:56','2024-03-08 01:50:56'),
(1318,931,1340,920,1319,5,1190,12,0,75,'2024-03-08 01:51:26','2024-03-08 01:51:26'),
(1319,932,1341,921,1320,1,37,576,0,75,'2024-03-08 01:52:11','2024-03-08 01:52:11'),
(1320,932,1342,921,1321,1,34,432,0,75,'2024-03-08 01:52:11','2024-03-08 01:52:11'),
(1321,933,1343,922,1322,5,1190,108,0,75,'2024-03-08 03:10:55','2024-03-08 03:10:55'),
(1322,934,1344,923,1323,1,34,2808,0,75,'2024-03-08 03:11:17','2024-03-08 03:11:17'),
(1323,935,1345,924,1324,1,34,2016,0,75,'2024-03-08 03:11:50','2024-03-08 03:11:50'),
(1324,936,1346,925,1325,5,105,36,0,75,'2024-03-08 03:14:59','2024-03-08 03:14:59'),
(1325,937,1347,926,1326,5,1190,144,0,75,'2024-03-08 03:15:14','2024-03-08 03:15:14'),
(1326,938,1348,927,1327,5,1190,72,0,75,'2024-03-08 03:15:31','2024-03-08 03:15:31'),
(1327,939,1349,928,1328,5,1190,144,0,75,'2024-03-08 03:15:45','2024-03-08 03:15:45'),
(1328,940,1350,929,1329,5,114,12,0,75,'2024-03-08 03:16:01','2024-03-08 03:16:01'),
(1329,941,1351,930,1330,1,34,216,0,75,'2024-03-08 03:16:18','2024-03-08 03:16:18'),
(1330,942,1352,931,1331,5,1190,10,0,75,'2024-03-09 03:01:39','2024-03-09 03:01:39'),
(1331,942,1353,931,1332,5,1189,146,0,75,'2024-03-09 03:01:40','2024-03-09 03:01:40'),
(1332,943,1354,932,1333,5,1189,72,0,75,'2024-03-09 03:02:03','2024-03-09 03:02:03'),
(1333,944,1355,933,1334,5,1189,144,0,75,'2024-03-09 03:02:17','2024-03-09 03:02:17'),
(1334,945,1356,934,1335,5,1189,36,0,75,'2024-03-09 03:02:32','2024-03-09 03:02:32'),
(1335,946,1357,935,1336,5,1189,432,0,75,'2024-03-09 03:02:52','2024-03-09 03:02:52'),
(1336,947,1358,936,1337,5,1189,216,0,75,'2024-03-09 03:03:07','2024-03-09 03:03:07'),
(1337,948,1359,937,1338,5,1189,144,0,75,'2024-03-09 03:03:22','2024-03-09 03:03:22'),
(1338,949,1360,938,1339,5,1189,24,0,75,'2024-03-09 03:03:35','2024-03-09 03:03:35'),
(1339,950,1361,939,1340,5,1189,72,0,75,'2024-03-09 03:03:57','2024-03-09 03:03:57'),
(1340,951,1362,940,1341,5,1189,216,0,75,'2024-03-09 03:04:12','2024-03-09 03:04:12'),
(1341,952,1363,941,1342,5,1189,144,0,75,'2024-03-09 03:04:27','2024-03-09 03:04:27'),
(1342,953,1364,942,1343,5,1189,12,0,75,'2024-03-09 03:04:42','2024-03-09 03:04:42'),
(1343,954,1365,943,1344,1,34,720,0,75,'2024-03-09 03:05:05','2024-03-09 03:05:05'),
(1344,955,1366,944,1345,5,1189,216,0,75,'2024-03-09 03:05:52','2024-03-09 03:05:52'),
(1345,955,1367,944,1346,5,103,36,0,75,'2024-03-09 03:05:52','2024-03-09 03:05:52'),
(1346,955,1368,944,1347,5,220,48,0,75,'2024-03-09 03:05:52','2024-03-09 03:05:52'),
(1347,956,1369,945,1348,5,220,48,0,75,'2024-03-12 03:59:03','2024-03-12 03:59:03'),
(1348,957,1370,946,1349,5,459,72,0,75,'2024-03-12 03:59:59','2024-03-12 03:59:59'),
(1349,957,1371,946,1350,5,220,48,0,75,'2024-03-12 03:59:59','2024-03-12 03:59:59'),
(1350,960,1377,947,1351,5,459,72,0,75,'2024-03-12 04:01:30','2024-03-12 04:01:30'),
(1351,960,1378,947,1352,5,103,36,0,75,'2024-03-12 04:01:30','2024-03-12 04:01:30'),
(1352,960,1379,947,1353,5,220,48,0,75,'2024-03-12 04:01:30','2024-03-12 04:01:30'),
(1353,961,1380,948,1354,5,1190,216,0,75,'2024-03-12 04:02:10','2024-03-12 04:02:10'),
(1354,961,1381,948,1355,5,103,72,0,75,'2024-03-12 04:02:10','2024-03-12 04:02:10'),
(1355,961,1382,948,1356,5,220,48,0,75,'2024-03-12 04:02:10','2024-03-12 04:02:10'),
(1356,962,1383,949,1357,1,34,288,0,75,'2024-03-12 04:03:11','2024-03-12 04:03:11'),
(1357,962,1384,949,1358,3,47,144,0,75,'2024-03-12 04:03:11','2024-03-12 04:03:11'),
(1358,963,1385,950,1359,5,459,72,0,75,'2024-03-12 04:03:46','2024-03-12 04:03:46'),
(1359,963,1386,950,1360,5,220,48,0,75,'2024-03-12 04:03:46','2024-03-12 04:03:46'),
(1360,964,1387,951,1361,5,459,72,0,75,'2024-03-12 04:04:33','2024-03-12 04:04:33'),
(1361,964,1388,951,1362,5,103,36,0,75,'2024-03-12 04:04:33','2024-03-12 04:04:33'),
(1362,964,1389,951,1363,5,220,48,0,75,'2024-03-12 04:04:33','2024-03-12 04:04:33'),
(1363,965,1390,952,1364,5,459,12,0,75,'2024-03-12 04:05:00','2024-03-12 04:05:00'),
(1364,966,1391,953,1365,5,103,72,0,75,'2024-03-12 04:05:22','2024-03-12 04:05:22'),
(1365,967,1392,954,1366,5,459,72,0,75,'2024-03-12 04:05:53','2024-03-12 04:05:53'),
(1366,967,1393,954,1367,5,103,72,0,75,'2024-03-12 04:05:53','2024-03-12 04:05:53'),
(1367,968,1394,955,1368,1,34,1800,0,75,'2024-03-12 04:06:26','2024-03-12 04:06:26'),
(1368,969,1395,956,1369,5,459,72,0,75,'2024-03-13 02:39:29','2024-03-13 02:39:29'),
(1369,969,1396,956,1370,5,103,36,0,75,'2024-03-13 02:39:29','2024-03-13 02:39:29'),
(1370,969,1397,956,1371,5,220,96,0,75,'2024-03-13 02:39:29','2024-03-13 02:39:29'),
(1371,970,1398,957,1372,5,459,144,0,75,'2024-03-13 02:40:34','2024-03-13 02:40:34'),
(1372,970,1399,957,1373,5,220,96,0,75,'2024-03-13 02:40:34','2024-03-13 02:40:34'),
(1373,971,1400,958,1374,5,459,648,0,75,'2024-03-13 03:28:45','2024-03-13 03:28:45'),
(1374,972,1401,959,1375,5,459,144,0,75,'2024-03-13 03:29:06','2024-03-13 03:29:06'),
(1375,973,1402,960,1376,5,459,216,0,75,'2024-03-13 03:29:36','2024-03-13 03:29:36'),
(1376,973,1403,960,1377,5,103,36,0,75,'2024-03-13 03:29:36','2024-03-13 03:29:36'),
(1377,973,1404,960,1378,5,220,96,0,75,'2024-03-13 03:29:36','2024-03-13 03:29:36'),
(1378,974,1405,961,1379,5,459,144,0,75,'2024-03-13 03:30:06','2024-03-13 03:30:06'),
(1379,974,1406,961,1380,5,103,36,0,75,'2024-03-13 03:30:06','2024-03-13 03:30:06'),
(1380,974,1407,961,1381,5,220,96,0,75,'2024-03-13 03:30:06','2024-03-13 03:30:06'),
(1381,975,1408,962,1382,5,459,72,0,75,'2024-03-13 03:30:53','2024-03-13 03:30:53'),
(1382,975,1409,962,1383,5,220,48,0,75,'2024-03-13 03:30:53','2024-03-13 03:30:53'),
(1383,976,1410,963,1384,5,459,144,0,75,'2024-03-13 03:31:22','2024-03-13 03:31:22'),
(1384,976,1411,963,1385,5,103,36,0,75,'2024-03-13 03:31:22','2024-03-13 03:31:22'),
(1385,976,1412,963,1386,5,220,96,0,75,'2024-03-13 03:31:22','2024-03-13 03:31:22'),
(1386,977,1413,964,1387,5,459,216,0,75,'2024-03-13 03:33:06','2024-03-13 03:33:06'),
(1387,977,1414,964,1388,5,103,36,0,75,'2024-03-13 03:33:06','2024-03-13 03:33:06'),
(1388,977,1415,964,1389,5,220,96,0,75,'2024-03-13 03:33:06','2024-03-13 03:33:06'),
(1389,978,1416,965,1390,5,459,72,0,75,'2024-03-13 03:33:45','2024-03-13 03:33:45'),
(1390,978,1417,965,1391,5,103,36,0,75,'2024-03-13 03:33:45','2024-03-13 03:33:45'),
(1391,978,1418,965,1392,5,220,96,0,75,'2024-03-13 03:33:45','2024-03-13 03:33:45'),
(1392,979,1419,966,1393,5,459,144,0,75,'2024-03-13 03:35:34','2024-03-13 03:35:34'),
(1393,979,1420,966,1394,5,103,36,0,75,'2024-03-13 03:35:34','2024-03-13 03:35:34'),
(1394,979,1421,966,1395,5,220,48,0,75,'2024-03-13 03:35:34','2024-03-13 03:35:34'),
(1395,980,1422,967,1396,5,459,72,0,75,'2024-03-13 03:36:14','2024-03-13 03:36:14'),
(1396,980,1423,967,1397,5,220,96,0,75,'2024-03-13 03:36:15','2024-03-13 03:36:15'),
(1397,981,1424,968,1398,1,34,720,0,75,'2024-03-13 03:36:41','2024-03-13 03:36:41'),
(1398,982,1425,969,1399,1,34,648,0,75,'2024-03-13 04:07:37','2024-03-13 04:07:37'),
(1399,983,1426,970,1400,1,34,1440,0,75,'2024-03-13 04:07:55','2024-03-13 04:07:55'),
(1400,984,1427,971,1401,1,34,3240,0,75,'2024-03-14 02:36:05','2024-03-14 02:36:05'),
(1401,985,1428,972,1402,1,34,1080,0,75,'2024-03-14 02:36:23','2024-03-14 02:36:23'),
(1402,986,1429,973,1403,1,34,504,0,75,'2024-03-14 02:36:42','2024-03-14 02:36:42'),
(1403,987,1430,974,1404,1,34,1008,0,75,'2024-03-14 02:37:01','2024-03-14 02:37:01'),
(1404,988,1431,975,1405,1,34,864,0,75,'2024-03-14 02:37:25','2024-03-14 02:37:25'),
(1405,989,1432,976,1406,1,34,1512,0,75,'2024-03-14 02:54:48','2024-03-14 02:54:48'),
(1406,990,1433,977,1407,1,34,1152,0,75,'2024-03-14 02:55:12','2024-03-14 02:55:12'),
(1407,991,1434,978,1408,1,34,1152,0,75,'2024-03-14 02:55:33','2024-03-14 02:55:33'),
(1408,992,1435,979,1409,1,34,792,0,75,'2024-03-14 02:55:58','2024-03-14 02:55:58'),
(1409,993,1436,980,1410,1,34,1008,0,75,'2024-03-14 02:56:19','2024-03-14 02:56:19'),
(1410,994,1437,981,1411,1,34,1512,0,75,'2024-03-14 02:56:39','2024-03-14 02:56:39'),
(1411,995,1438,982,1412,1,36,432,0,75,'2024-03-15 02:48:39','2024-03-15 02:48:39'),
(1412,996,1439,983,1413,1,34,1080,0,75,'2024-03-15 02:49:14','2024-03-15 02:49:14'),
(1413,996,1440,983,1414,1,36,2520,0,75,'2024-03-15 02:49:14','2024-03-15 02:49:14'),
(1414,997,1441,984,1415,1,36,1224,0,75,'2024-03-18 02:49:55','2024-03-18 02:49:55'),
(1415,998,1442,985,1416,1,36,2592,0,75,'2024-03-18 02:50:54','2024-03-18 02:50:54'),
(1416,999,1443,986,1417,1,36,720,0,75,'2024-03-18 02:51:20','2024-03-18 02:51:20'),
(1417,1000,1444,987,1418,1,36,1080,0,75,'2024-03-18 02:51:55','2024-03-18 02:51:55'),
(1418,1001,1445,988,1419,1,35,1440,0,75,'2024-03-19 02:25:20','2024-03-19 02:25:20'),
(1419,1001,1446,988,1420,1,160,360,0,75,'2024-03-19 02:25:20','2024-03-19 02:25:20'),
(1420,1002,1447,989,1421,1,160,504,0,75,'2024-03-19 02:25:41','2024-03-19 02:25:41'),
(1421,1003,1448,990,1422,1,160,5400,0,75,'2024-03-19 02:26:01','2024-03-19 02:26:01'),
(1422,1004,1449,991,1423,1,160,7416,0,75,'2024-03-19 02:26:22','2024-03-19 02:26:22'),
(1423,1005,1450,992,1424,1,160,4320,0,75,'2024-03-19 02:26:41','2024-03-19 02:26:41'),
(1424,1006,1451,993,1425,1,160,288,0,75,'2024-03-19 02:27:00','2024-03-19 02:27:00'),
(1425,1007,1452,994,1426,1,160,288,0,75,'2024-03-19 02:27:24','2024-03-19 02:27:24'),
(1426,1009,1457,995,1427,3,1244,10,0,75,'2024-03-20 05:58:25','2024-03-20 05:58:25'),
(1427,1009,1458,995,1428,1,5,144,0,75,'2024-03-20 05:58:25','2024-03-20 05:58:25'),
(1428,1009,1459,995,1429,3,82,11,0,75,'2024-03-20 05:58:25','2024-03-20 05:58:25'),
(1429,1009,1460,995,1430,3,62,5,0,75,'2024-03-20 05:58:25','2024-03-20 05:58:25'),
(1430,1010,1461,996,1431,3,1244,19,0,75,'2024-03-20 05:59:41','2024-03-20 05:59:41'),
(1431,1010,1462,996,1432,1,5,432,0,75,'2024-03-20 05:59:41','2024-03-20 05:59:41'),
(1432,1010,1463,996,1433,3,82,13,0,75,'2024-03-20 05:59:41','2024-03-20 05:59:41'),
(1433,1010,1464,996,1434,3,62,4,0,75,'2024-03-20 05:59:41','2024-03-20 05:59:41'),
(1434,1010,1465,996,1435,3,83,11,0,75,'2024-03-20 05:59:41','2024-03-20 05:59:41'),
(1435,1011,1466,997,1436,1,37,576,0,75,'2024-03-20 06:00:05','2024-03-20 06:00:05'),
(1436,1012,1467,998,1437,1,37,2448,0,75,'2024-03-20 06:00:32','2024-03-20 06:00:32'),
(1437,1013,1468,999,1438,3,1244,288,0,75,'2024-03-20 06:00:57','2024-03-20 06:00:57'),
(1438,1014,1469,1000,1439,1,159,7056,0,75,'2024-03-20 06:01:30','2024-03-20 06:01:30'),
(1439,1016,1472,1002,1442,1,160,1440,0,75,'2024-03-21 03:16:33','2024-03-21 03:16:33'),
(1440,1017,1473,1003,1443,1,161,720,0,75,'2024-03-21 03:19:49','2024-03-21 03:19:49'),
(1441,1018,1474,1004,1444,1,161,1440,0,75,'2024-03-21 03:20:37','2024-03-21 03:20:37'),
(1442,1019,1475,1005,1445,1,161,1080,0,75,'2024-03-21 03:21:29','2024-03-21 03:21:29'),
(1443,1020,1476,1006,1446,1,161,792,0,75,'2024-03-21 03:21:51','2024-03-21 03:21:51'),
(1444,1021,1477,1007,1447,1,161,2160,0,75,'2024-03-21 03:22:19','2024-03-21 03:22:19'),
(1445,1022,1478,1008,1448,1,37,72,0,75,'2024-03-21 03:22:56','2024-03-21 03:22:56'),
(1446,1022,1479,1008,1449,1,8,2448,0,75,'2024-03-21 03:22:56','2024-03-21 03:22:56'),
(1447,1023,1480,1009,1450,1,8,1800,0,75,'2024-03-21 03:23:18','2024-03-21 03:23:18'),
(1448,1024,1481,1010,1451,1,8,2016,0,75,'2024-03-21 03:23:45','2024-03-21 03:23:45'),
(1449,1025,1482,1011,1452,1,161,2520,0,75,'2024-03-22 03:17:24','2024-03-22 03:17:24'),
(1450,1026,1483,1012,1453,1,161,2160,0,75,'2024-03-22 03:18:10','2024-03-22 03:18:10'),
(1451,1027,1484,1013,1454,1,161,864,0,75,'2024-03-22 03:18:40','2024-03-22 03:18:40'),
(1452,1028,1485,1014,1455,1,161,2016,0,75,'2024-03-22 03:19:04','2024-03-22 03:19:04'),
(1453,1029,1486,1015,1456,1,161,504,0,75,'2024-03-22 03:19:26','2024-03-22 03:19:26'),
(1454,1030,1487,1016,1457,3,53,115,0,75,'2024-03-22 03:20:03','2024-03-22 03:20:03'),
(1455,1031,1488,1017,1458,3,50,6,0,75,'2024-03-22 03:21:20','2024-03-22 03:21:20'),
(1456,1031,1489,1017,1459,1,5,864,0,75,'2024-03-22 03:21:20','2024-03-22 03:21:20'),
(1457,1031,1490,1017,1460,3,62,33,0,75,'2024-03-22 03:21:20','2024-03-22 03:21:20'),
(1458,1031,1491,1017,1461,3,83,5,0,75,'2024-03-22 03:21:20','2024-03-22 03:21:20'),
(1459,1032,1492,1018,1462,1,161,7200,0,75,'2024-03-25 03:00:04','2024-03-25 03:00:04'),
(1460,1033,1493,1019,1463,1,161,1944,0,75,'2024-03-25 03:00:30','2024-03-25 03:00:30'),
(1461,1034,1494,1020,1464,1,161,1800,0,75,'2024-03-25 03:01:03','2024-03-25 03:01:03'),
(1462,1034,1495,1020,1465,1,162,144,0,75,'2024-03-25 03:01:03','2024-03-25 03:01:03'),
(1463,1035,1496,1021,1466,1,8,576,0,75,'2024-03-25 05:14:50','2024-03-25 05:14:50'),
(1464,1036,1497,1022,1467,1,8,1224,0,75,'2024-03-25 05:15:16','2024-03-25 05:15:16'),
(1465,1037,1498,1023,1468,1,8,648,0,75,'2024-03-25 05:15:46','2024-03-25 05:15:46'),
(1466,1038,1499,1024,1469,1,8,1800,0,75,'2024-03-25 05:16:44','2024-03-25 05:16:44'),
(1467,1039,1500,1025,1470,1,8,2808,0,75,'2024-03-25 05:17:12','2024-03-25 05:17:12'),
(1468,1040,1501,1026,1471,1,8,2376,0,75,'2024-03-25 05:17:34','2024-03-25 05:17:34'),
(1469,1041,1502,1027,1472,1,8,4536,0,75,'2024-03-25 05:17:58','2024-03-25 05:17:58'),
(1470,1042,1503,1028,1473,1,8,144,0,75,'2024-03-25 05:18:35','2024-03-25 05:18:35'),
(1471,1042,1504,1028,1474,3,82,1,0,75,'2024-03-25 05:18:35','2024-03-25 05:18:35'),
(1472,1043,1505,1029,1475,1,162,1728,0,75,'2024-03-26 03:04:57','2024-03-26 03:04:57'),
(1473,1044,1506,1030,1476,1,162,2160,0,75,'2024-03-26 03:05:24','2024-03-26 03:05:24'),
(1474,1045,1507,1031,1477,1,162,2160,0,75,'2024-03-26 03:05:47','2024-03-26 03:05:47'),
(1475,1046,1508,1032,1478,1,162,5472,0,75,'2024-03-26 03:18:00','2024-03-26 03:18:00'),
(1476,1047,1509,1033,1479,1,162,432,0,75,'2024-03-26 03:18:22','2024-03-26 03:18:22'),
(1477,1048,1510,1034,1480,1,162,1872,0,75,'2024-03-26 03:18:39','2024-03-26 03:18:39'),
(1478,1049,1511,1035,1481,1,162,10800,0,75,'2024-03-26 03:32:36','2024-03-26 03:32:36'),
(1479,1050,1512,1036,1482,1,163,6480,0,75,'2024-03-26 03:42:29','2024-03-26 03:42:29'),
(1480,1051,1513,1037,1483,1,8,864,0,75,'2024-03-26 03:42:51','2024-03-26 03:42:51'),
(1481,1052,1514,1038,1484,1,162,144,0,75,'2024-03-26 03:43:23','2024-03-26 03:43:23'),
(1482,1052,1515,1038,1485,1,163,432,0,75,'2024-03-26 03:43:23','2024-03-26 03:43:23'),
(1483,1053,1516,1039,1486,1,163,288,0,75,'2024-03-26 03:43:47','2024-03-26 03:43:47'),
(1484,1054,1517,1040,1487,1,8,2520,0,75,'2024-03-26 03:44:09','2024-03-26 03:44:09'),
(1485,1055,1518,1041,1488,1,163,2880,0,75,'2024-03-27 02:16:11','2024-03-27 02:16:11'),
(1486,1056,1519,1042,1489,1,8,720,0,75,'2024-03-27 02:32:31','2024-03-27 02:32:31'),
(1487,1057,1520,1043,1490,1,8,2880,0,75,'2024-03-27 02:32:54','2024-03-27 02:32:54'),
(1488,1058,1521,1044,1491,1,8,4320,0,75,'2024-03-27 02:33:20','2024-03-27 02:33:20'),
(1489,1059,1522,1045,1492,1,8,3600,0,75,'2024-03-27 02:33:41','2024-03-27 02:33:41'),
(1490,1060,1523,1046,1493,1,8,8640,0,75,'2024-03-27 02:34:56','2024-03-27 02:34:56'),
(1491,1060,1524,1046,1494,3,63,56,0,75,'2024-03-27 02:34:56','2024-03-27 02:34:56'),
(1492,1060,1525,1046,1495,3,66,15,0,75,'2024-03-27 02:34:56','2024-03-27 02:34:56'),
(1493,1060,1526,1046,1496,3,1247,144,0,75,'2024-03-27 02:34:56','2024-03-27 02:34:56'),
(1494,1060,1527,1046,1497,3,1244,144,0,75,'2024-03-27 02:34:56','2024-03-27 02:34:56'),
(1495,1061,1528,1047,1498,1,163,1944,0,75,'2024-03-28 03:51:56','2024-03-28 03:51:56'),
(1496,1062,1529,1048,1499,1,163,3528,0,75,'2024-03-28 03:52:21','2024-03-28 03:52:21'),
(1497,1063,1530,1049,1500,1,163,1512,0,75,'2024-03-28 03:52:40','2024-03-28 03:52:40'),
(1498,1064,1531,1050,1501,1,163,3600,0,75,'2024-03-28 03:53:02','2024-03-28 03:53:02'),
(1499,1065,1532,1051,1502,1,163,2448,0,75,'2024-03-28 03:53:21','2024-03-28 03:53:21'),
(1500,1066,1533,1052,1503,1,163,1440,0,75,'2024-03-28 03:53:42','2024-03-28 03:53:42'),
(1501,1067,1534,1053,1504,1,163,1224,0,75,'2024-03-28 03:54:03','2024-03-28 03:54:03'),
(1502,1068,1535,1054,1505,1,163,360,0,75,'2024-03-28 04:05:00','2024-03-28 04:05:00'),
(1503,1069,1536,1055,1506,1,163,2160,0,75,'2024-03-28 04:05:21','2024-03-28 04:05:21'),
(1504,1070,1537,1056,1507,1,163,792,0,75,'2024-03-28 04:05:43','2024-03-28 04:05:43'),
(1505,1071,1538,1057,1508,1,163,1440,0,75,'2024-03-28 04:06:05','2024-03-28 04:06:05'),
(1506,1073,1540,1059,1510,1,163,2304,0,75,'2024-03-28 04:09:10','2024-03-28 04:09:10'),
(1507,1074,1541,1060,1511,1,163,1512,0,75,'2024-03-28 04:09:30','2024-03-28 04:09:30'),
(1508,1075,1542,1061,1512,1,163,1440,0,75,'2024-03-28 04:09:47','2024-03-28 04:09:47'),
(1509,1076,1543,1062,1513,1,163,1152,0,75,'2024-03-28 04:10:06','2024-03-28 04:10:06'),
(1510,1077,1544,1063,1514,1,8,1224,0,75,'2024-03-28 04:33:47','2024-03-28 04:33:47'),
(1511,1078,1545,1064,1515,1,8,1008,0,75,'2024-03-28 04:34:18','2024-03-28 04:34:18'),
(1512,1079,1546,1065,1516,1,8,504,0,75,'2024-03-28 04:34:39','2024-03-28 04:34:39'),
(1513,1080,1547,1066,1517,1,8,1080,0,75,'2024-03-28 04:34:58','2024-03-28 04:34:58'),
(1514,1081,1548,1067,1518,1,8,1008,0,75,'2024-03-28 04:35:22','2024-03-28 04:35:22'),
(1515,1082,1549,1068,1519,1,163,864,0,75,'2024-04-01 01:28:46','2024-04-01 01:28:46'),
(1516,1083,1550,1069,1520,1,165,2160,0,75,'2024-04-02 02:36:15','2024-04-02 02:36:15'),
(1517,1084,1551,1070,1521,1,165,2736,0,75,'2024-04-02 02:36:46','2024-04-02 02:36:46'),
(1518,1085,1552,1071,1522,1,8,720,0,75,'2024-04-02 02:37:25','2024-04-02 02:37:25'),
(1519,1085,1553,1071,1523,3,53,576,0,75,'2024-04-02 02:37:25','2024-04-02 02:37:25'),
(1520,1086,1554,1072,1524,1,8,144,0,75,'2024-04-02 02:37:53','2024-04-02 02:37:53'),
(1521,1086,1555,1072,1525,3,82,3,0,75,'2024-04-02 02:37:53','2024-04-02 02:37:53'),
(1522,1087,1556,1073,1526,1,8,144,0,75,'2024-04-02 02:38:20','2024-04-02 02:38:20'),
(1523,1087,1557,1073,1527,3,82,1,0,75,'2024-04-02 02:38:20','2024-04-02 02:38:20'),
(1524,1088,1558,1074,1528,3,83,1,0,75,'2024-04-03 02:11:11','2024-04-03 02:11:11'),
(1525,1089,1559,1075,1529,3,1244,46,0,75,'2024-04-03 02:12:28','2024-04-03 02:12:28'),
(1526,1089,1560,1075,1530,3,53,2,0,75,'2024-04-03 02:12:28','2024-04-03 02:12:28'),
(1527,1089,1561,1075,1531,3,54,80,0,75,'2024-04-03 02:12:28','2024-04-03 02:12:28'),
(1528,1090,1562,1076,1532,1,5,144,0,75,'2024-04-03 02:13:04','2024-04-03 02:13:04'),
(1529,1090,1563,1076,1533,3,54,28,0,75,'2024-04-03 02:13:04','2024-04-03 02:13:04'),
(1530,1091,1564,1077,1534,1,163,432,0,75,'2024-04-03 02:13:26','2024-04-03 02:13:26'),
(1531,1092,1565,1078,1535,1,8,720,0,75,'2024-04-03 02:13:46','2024-04-03 02:13:46'),
(1532,1093,1566,1079,1536,1,163,288,0,75,'2024-04-04 02:49:52','2024-04-04 02:49:52'),
(1533,1093,1567,1079,1537,1,165,216,0,75,'2024-04-04 02:49:52','2024-04-04 02:49:52'),
(1534,1094,1568,1080,1538,1,8,504,0,75,'2024-04-04 03:32:49','2024-04-04 03:32:49'),
(1535,1095,1569,1081,1539,1,8,1368,0,75,'2024-04-04 03:33:18','2024-04-04 03:33:18'),
(1536,1096,1570,1082,1540,1,8,504,0,75,'2024-04-04 03:33:50','2024-04-04 03:33:50'),
(1537,1097,1571,1083,1541,1,8,504,0,75,'2024-04-04 03:34:19','2024-04-04 03:34:19'),
(1538,1098,1572,1084,1542,1,8,2016,0,75,'2024-04-04 03:34:54','2024-04-04 03:34:54'),
(1539,1099,1573,1085,1543,1,8,720,0,75,'2024-04-05 02:11:48','2024-04-05 02:11:48'),
(1540,1100,1574,1086,1544,1,8,936,0,75,'2024-04-05 02:12:19','2024-04-05 02:12:19'),
(1541,1100,1575,1086,1545,3,82,1,0,75,'2024-04-05 02:12:19','2024-04-05 02:12:19'),
(1542,1101,1576,1087,1546,1,8,2880,0,75,'2024-04-05 02:12:42','2024-04-05 02:12:42'),
(1543,1102,1577,1088,1547,1,165,3600,0,75,'2024-04-16 02:16:22','2024-04-16 02:16:22'),
(1544,1103,1578,1089,1548,1,165,2160,0,75,'2024-04-16 02:16:46','2024-04-16 02:16:46'),
(1545,1104,1579,1090,1549,1,165,1800,0,75,'2024-04-16 02:17:25','2024-04-16 02:17:25'),
(1546,1105,1580,1091,1550,1,165,504,0,75,'2024-04-16 02:17:45','2024-04-16 02:17:45'),
(1547,1106,1581,1092,1551,1,165,1224,0,75,'2024-04-16 02:23:56','2024-04-16 02:23:56'),
(1548,1107,1582,1093,1552,1,165,2880,0,75,'2024-04-16 02:24:14','2024-04-16 02:24:14'),
(1549,1108,1583,1094,1553,3,51,144,0,75,'2024-04-16 03:08:15','2024-04-16 03:08:15'),
(1550,1109,1584,1095,1554,1,165,1152,0,75,'2024-04-16 03:08:58','2024-04-16 03:08:58'),
(1551,1109,1585,1095,1555,3,51,144,0,75,'2024-04-16 03:08:58','2024-04-16 03:08:58'),
(1552,1110,1586,1096,1556,1,165,1008,0,75,'2024-04-16 03:09:20','2024-04-16 03:09:20'),
(1553,1111,1587,1097,1557,1,165,4248,0,75,'2024-04-16 03:09:45','2024-04-16 03:09:45'),
(1554,1112,1588,1098,1558,1,165,648,0,75,'2024-04-16 03:10:04','2024-04-16 03:10:04'),
(1555,1113,1589,1099,1559,1,165,648,0,75,'2024-04-16 03:10:28','2024-04-16 03:10:28'),
(1556,1114,1590,1100,1560,1,165,864,0,75,'2024-04-16 03:10:57','2024-04-16 03:10:57'),
(1557,1115,1591,1101,1561,3,1244,28,0,75,'2024-04-16 03:26:05','2024-04-16 03:26:05'),
(1558,1115,1592,1101,1562,3,50,31,0,75,'2024-04-16 03:26:05','2024-04-16 03:26:05'),
(1559,1115,1593,1101,1563,3,82,14,0,75,'2024-04-16 03:26:05','2024-04-16 03:26:05'),
(1560,1115,1594,1101,1564,3,62,6,0,75,'2024-04-16 03:26:05','2024-04-16 03:26:05'),
(1561,1115,1595,1101,1565,3,83,3,0,75,'2024-04-16 03:26:05','2024-04-16 03:26:05'),
(1562,1116,1596,1102,1566,1,8,144,0,75,'2024-04-16 07:53:43','2024-04-16 07:53:43'),
(1563,1116,1597,1102,1567,3,71,1,0,75,'2024-04-16 07:53:43','2024-04-16 07:53:43'),
(1564,1117,1598,1103,1568,1,8,360,0,75,'2024-04-16 07:54:18','2024-04-16 07:54:18'),
(1565,1117,1599,1103,1569,3,71,1,0,75,'2024-04-16 07:54:18','2024-04-16 07:54:18'),
(1566,1117,1600,1103,1570,3,82,2,0,75,'2024-04-16 07:54:18','2024-04-16 07:54:18'),
(1567,1118,1601,1104,1571,1,8,72,0,75,'2024-04-16 07:54:37','2024-04-16 07:54:37'),
(1568,1119,1602,1105,1572,1,8,72,0,75,'2024-04-16 07:54:55','2024-04-16 07:54:55'),
(1569,1120,1603,1106,1573,1,8,72,0,75,'2024-04-16 07:55:37','2024-04-16 07:55:37'),
(1570,1120,1604,1106,1574,3,53,48,0,75,'2024-04-16 07:55:37','2024-04-16 07:55:37'),
(1571,1120,1605,1106,1575,3,1244,12,0,75,'2024-04-16 07:55:37','2024-04-16 07:55:37'),
(1572,1121,1606,1107,1576,3,47,340,0,75,'2024-04-16 07:56:10','2024-04-16 07:56:10'),
(1573,1121,1607,1107,1577,1,8,1152,0,75,'2024-04-16 07:56:10','2024-04-16 07:56:10'),
(1574,1122,1608,1108,1578,3,47,288,0,75,'2024-04-16 07:56:36','2024-04-16 07:56:36'),
(1575,1123,1609,1109,1579,1,8,576,0,75,'2024-04-16 07:57:00','2024-04-16 07:57:00'),
(1576,1124,1610,1110,1580,1,8,864,0,75,'2024-04-16 07:57:21','2024-04-16 07:57:21'),
(1577,1125,1611,1111,1581,1,8,576,0,75,'2024-04-16 07:57:43','2024-04-16 07:57:43'),
(1578,1126,1612,1112,1582,1,8,1152,0,75,'2024-04-16 07:58:17','2024-04-16 07:58:17'),
(1579,1126,1613,1112,1583,3,53,144,0,75,'2024-04-16 07:58:17','2024-04-16 07:58:17'),
(1580,1127,1614,1113,1584,1,8,72,0,75,'2024-04-16 07:58:36','2024-04-16 07:58:36'),
(1581,1128,1615,1114,1585,3,52,47,0,75,'2024-04-17 03:30:25','2024-04-17 03:30:25'),
(1582,1128,1616,1114,1586,3,54,25,0,75,'2024-04-17 03:30:25','2024-04-17 03:30:25'),
(1583,1129,1617,1115,1587,3,1244,18,0,75,'2024-04-17 03:31:27','2024-04-17 03:31:27'),
(1584,1129,1618,1115,1588,3,54,60,0,75,'2024-04-17 03:31:27','2024-04-17 03:31:27'),
(1585,1129,1619,1115,1589,3,82,5,0,75,'2024-04-17 03:31:27','2024-04-17 03:31:27'),
(1586,1130,1620,1116,1590,1,8,1368,0,75,'2024-04-17 03:32:33','2024-04-17 03:32:33'),
(1587,1131,1621,1117,1591,1,8,4464,0,75,'2024-04-17 03:32:59','2024-04-17 03:32:59'),
(1588,1132,1622,1118,1592,1,8,720,0,75,'2024-04-17 03:33:19','2024-04-17 03:33:19'),
(1589,1133,1623,1119,1593,1,8,1512,0,75,'2024-04-17 03:40:53','2024-04-17 03:40:53'),
(1590,1134,1624,1120,1594,1,165,4248,0,75,'2024-04-18 02:55:14','2024-04-18 02:55:14'),
(1591,1135,1625,1121,1595,1,165,2880,0,75,'2024-04-18 02:55:36','2024-04-18 02:55:36'),
(1592,1136,1626,1122,1596,1,165,216,0,75,'2024-04-18 02:56:12','2024-04-18 02:56:12'),
(1593,1136,1627,1122,1597,1,164,8856,0,75,'2024-04-18 02:56:12','2024-04-18 02:56:12'),
(1594,1137,1628,1123,1598,1,37,4320,0,75,'2024-04-18 02:56:34','2024-04-18 02:56:34'),
(1595,1138,1629,1124,1599,1,164,1944,0,75,'2024-04-18 03:33:21','2024-04-18 03:33:21'),
(1596,1138,1630,1124,1600,1,37,72,0,75,'2024-04-18 03:33:21','2024-04-18 03:33:21'),
(1597,1139,1631,1125,1601,1,37,720,0,75,'2024-04-18 03:34:00','2024-04-18 03:34:00'),
(1598,1140,1632,1126,1602,1,37,6120,0,75,'2024-04-18 03:34:37','2024-04-18 03:34:37'),
(1599,1141,1633,1127,1603,1,37,576,0,75,'2024-04-18 03:35:01','2024-04-18 03:35:01'),
(1600,1142,1634,1128,1604,1,37,2304,0,75,'2024-04-18 03:35:30','2024-04-18 03:35:30'),
(1601,1143,1635,1129,1605,1,37,1152,0,75,'2024-04-18 03:36:06','2024-04-18 03:36:06'),
(1602,1143,1636,1129,1606,1,39,360,0,75,'2024-04-18 03:36:06','2024-04-18 03:36:06'),
(1603,1144,1637,1130,1607,1,39,5040,0,75,'2024-04-18 03:36:27','2024-04-18 03:36:27'),
(1604,1145,1638,1131,1608,1,39,792,0,75,'2024-04-18 03:36:49','2024-04-18 03:36:49'),
(1605,1146,1639,1132,1609,1,7,3600,0,75,'2024-04-18 03:37:14','2024-04-18 03:37:14'),
(1606,1147,1640,1133,1610,1,7,2016,0,75,'2024-04-18 03:37:38','2024-04-18 03:37:38'),
(1607,1148,1641,1134,1611,1,39,3600,0,75,'2024-04-19 03:09:04','2024-04-19 03:09:04'),
(1608,1149,1642,1135,1612,1,7,1368,0,75,'2024-04-19 03:09:25','2024-04-19 03:09:25'),
(1609,1150,1643,1136,1613,3,47,144,0,75,'2024-04-19 03:09:45','2024-04-19 03:09:45'),
(1610,1151,1644,1137,1614,1,39,720,0,75,'2024-04-20 02:36:19','2024-04-20 02:36:19'),
(1611,1152,1645,1138,1615,1,39,864,0,75,'2024-04-20 02:36:38','2024-04-20 02:36:38'),
(1612,1153,1646,1139,1616,1,39,1080,0,75,'2024-04-20 02:37:03','2024-04-20 02:37:03'),
(1613,1154,1647,1140,1617,1,39,864,0,75,'2024-04-22 04:06:46','2024-04-22 04:06:46'),
(1614,1155,1648,1141,1618,1,39,720,0,75,'2024-04-23 02:58:23','2024-04-23 02:58:23'),
(1615,1156,1649,1142,1619,1,39,720,0,75,'2024-04-23 03:10:19','2024-04-23 03:10:19'),
(1616,1157,1650,1143,1620,1,39,576,0,75,'2024-04-23 03:10:42','2024-04-23 03:10:42'),
(1617,1158,1651,1144,1621,1,39,4032,0,75,'2024-04-23 03:11:06','2024-04-23 03:11:06'),
(1618,1159,1652,1145,1622,1,39,216,0,75,'2024-04-23 03:11:46','2024-04-23 03:11:46'),
(1619,1159,1653,1145,1623,3,54,54,0,75,'2024-04-23 03:11:46','2024-04-23 03:11:46'),
(1620,1159,1654,1145,1624,3,1246,26,0,75,'2024-04-23 03:11:46','2024-04-23 03:11:46'),
(1621,1160,1655,1146,1625,1,39,1944,0,75,'2024-04-23 03:12:07','2024-04-23 03:12:07'),
(1622,1161,1656,1147,1626,1,39,432,0,75,'2024-04-23 03:12:41','2024-04-23 03:12:41'),
(1623,1162,1657,1148,1627,1,5,3456,0,75,'2024-04-23 03:13:04','2024-04-23 03:13:04'),
(1624,1163,1658,1149,1628,1,5,2376,0,75,'2024-04-23 03:13:28','2024-04-23 03:13:28'),
(1625,1164,1659,1150,1629,1,5,4104,0,75,'2024-04-23 03:13:51','2024-04-23 03:13:51'),
(1626,1165,1660,1151,1630,1,39,864,0,75,'2024-04-24 03:10:44','2024-04-24 03:10:44'),
(1627,1166,1661,1152,1631,1,39,504,0,75,'2024-04-24 03:11:05','2024-04-24 03:11:05'),
(1628,1167,1662,1153,1632,1,39,2880,0,75,'2024-04-25 02:58:02','2024-04-25 02:58:02'),
(1629,1168,1663,1154,1633,1,39,6480,0,75,'2024-04-25 02:58:32','2024-04-25 02:58:32'),
(1630,1169,1664,1155,1634,1,39,1800,0,75,'2024-04-25 02:58:59','2024-04-25 02:58:59'),
(1631,1170,1665,1156,1635,1,39,4896,0,75,'2024-04-25 02:59:19','2024-04-25 02:59:19'),
(1632,1171,1666,1157,1636,1,39,4032,0,75,'2024-04-25 02:59:45','2024-04-25 02:59:45'),
(1633,1172,1667,1158,1637,1,39,7200,0,75,'2024-04-25 03:00:05','2024-04-25 03:00:05'),
(1634,1173,1668,1159,1638,1,39,360,0,75,'2024-04-25 03:17:23','2024-04-25 03:17:23'),
(1635,1174,1669,1160,1639,1,39,6768,0,75,'2024-04-25 03:17:43','2024-04-25 03:17:43'),
(1636,1175,1670,1161,1640,1,39,1008,0,75,'2024-04-25 03:18:06','2024-04-25 03:18:06'),
(1637,1176,1671,1162,1641,1,39,3816,0,75,'2024-04-25 03:18:49','2024-04-25 03:18:49'),
(1638,1177,1672,1163,1642,1,39,720,0,75,'2024-04-25 03:19:10','2024-04-25 03:19:10'),
(1639,1178,1673,1164,1643,3,1244,15,0,75,'2024-04-25 08:00:12','2024-04-25 08:00:12'),
(1640,1178,1674,1164,1644,3,1246,12,0,75,'2024-04-25 08:00:12','2024-04-25 08:00:12'),
(1641,1178,1675,1164,1645,3,83,4,0,75,'2024-04-25 08:00:12','2024-04-25 08:00:12'),
(1642,1179,1676,1165,1646,1,39,7848,0,75,'2024-04-26 02:49:31','2024-04-26 02:49:31'),
(1643,1180,1677,1166,1647,1,39,1800,0,75,'2024-04-26 02:49:53','2024-04-26 02:49:53'),
(1644,1181,1678,1167,1648,1,39,1800,0,75,'2024-04-26 02:50:18','2024-04-26 02:50:18'),
(1645,1182,1679,1168,1649,1,39,432,0,75,'2024-04-26 02:50:43','2024-04-26 02:50:43'),
(1646,1183,1680,1169,1650,1,6,864,0,75,'2024-04-26 04:12:03','2024-04-26 04:12:03'),
(1647,1184,1681,1170,1651,1,6,2520,0,75,'2024-04-26 04:12:26','2024-04-26 04:12:26'),
(1648,1185,1682,1171,1652,1,6,3600,0,75,'2024-04-26 04:12:50','2024-04-26 04:12:50'),
(1649,1186,1683,1172,1653,1,6,5040,0,75,'2024-04-26 04:13:21','2024-04-26 04:13:21'),
(1650,1187,1684,1173,1654,1,6,2520,0,75,'2024-04-26 04:14:28','2024-04-26 04:14:28'),
(1651,1188,1685,1174,1655,1,6,1800,0,75,'2024-04-26 04:14:55','2024-04-26 04:14:55'),
(1652,1189,1686,1175,1656,1,6,864,0,75,'2024-04-26 04:15:18','2024-04-26 04:15:18'),
(1653,1190,1687,1176,1657,1,39,1944,0,75,'2024-04-29 04:35:32','2024-04-29 04:35:32'),
(1654,1191,1688,1177,1658,1,39,1728,0,75,'2024-04-29 04:35:59','2024-04-29 04:35:59'),
(1655,1192,1689,1178,1659,1,39,936,0,75,'2024-04-29 04:36:21','2024-04-29 04:36:21'),
(1656,1193,1690,1179,1660,1,39,1296,0,75,'2024-04-29 04:36:43','2024-04-29 04:36:43'),
(1657,1194,1691,1180,1661,3,1246,144,0,75,'2024-04-29 04:36:59','2024-04-29 04:36:59'),
(1658,1196,1693,1181,1662,1,39,288,0,75,'2024-04-30 02:20:44','2024-04-30 02:20:44'),
(1659,1196,1694,1181,1663,3,1246,144,0,75,'2024-04-30 02:20:44','2024-04-30 02:20:44'),
(1660,1197,1695,1182,1664,1,39,2880,0,75,'2024-05-02 03:12:18','2024-05-02 03:12:18'),
(1661,1198,1696,1183,1665,1,39,4032,0,75,'2024-05-02 03:12:38','2024-05-02 03:12:38'),
(1662,1199,1697,1184,1666,1,39,7344,0,75,'2024-05-02 03:12:57','2024-05-02 03:12:57'),
(1663,1200,1698,1185,1667,1,39,2376,0,75,'2024-05-02 03:13:17','2024-05-02 03:13:17'),
(1664,1201,1699,1186,1668,1,39,936,0,75,'2024-05-02 03:13:50','2024-05-02 03:13:50'),
(1665,1201,1700,1186,1669,1,41,288,0,75,'2024-05-02 03:13:50','2024-05-02 03:13:50'),
(1666,1202,1701,1187,1670,1,40,1512,0,75,'2024-05-02 03:36:36','2024-05-02 03:36:36'),
(1667,1203,1702,1188,1671,1,40,720,0,75,'2024-05-02 03:36:57','2024-05-02 03:36:57'),
(1668,1204,1703,1189,1672,1,40,720,0,75,'2024-05-02 03:37:20','2024-05-02 03:37:20'),
(1669,1205,1704,1190,1673,1,40,3024,0,75,'2024-05-02 03:37:40','2024-05-02 03:37:40'),
(1670,1206,1705,1191,1674,1,40,6408,0,75,'2024-05-02 03:38:00','2024-05-02 03:38:00'),
(1671,1207,1706,1192,1675,1,40,360,0,75,'2024-05-02 03:38:22','2024-05-02 03:38:22'),
(1672,1208,1707,1193,1676,1,40,576,0,75,'2024-05-02 03:38:48','2024-05-02 03:38:48'),
(1673,1208,1708,1193,1677,3,1246,57,0,75,'2024-05-02 03:38:48','2024-05-02 03:38:48'),
(1674,1209,1709,1194,1678,1,5,576,0,75,'2024-05-02 03:39:08','2024-05-02 03:39:08'),
(1675,1210,1710,1195,1679,1,6,1008,0,75,'2024-05-03 04:30:40','2024-05-03 04:30:40'),
(1676,1211,1711,1196,1680,1,6,7200,0,75,'2024-05-03 04:31:04','2024-05-03 04:31:04'),
(1677,1212,1712,1197,1681,1,6,6552,0,75,'2024-05-03 04:31:35','2024-05-03 04:31:35'),
(1678,1213,1713,1198,1682,1,6,1512,0,75,'2024-05-03 04:31:57','2024-05-03 04:31:57'),
(1679,1214,1714,1199,1683,1,6,8568,0,75,'2024-05-03 04:32:27','2024-05-03 04:32:27'),
(1680,1215,1715,1200,1684,3,456,540,0,75,'2024-05-03 04:34:54','2024-05-03 04:34:54'),
(1681,1215,1716,1200,1685,3,1246,640,0,75,'2024-05-03 04:34:54','2024-05-03 04:34:54'),
(1682,1216,1717,1201,1686,3,1246,144,0,75,'2024-05-03 04:35:19','2024-05-03 04:35:19'),
(1683,1217,1718,1202,1687,3,1246,84,0,75,'2024-05-03 04:35:47','2024-05-03 04:35:47'),
(1684,1217,1719,1202,1688,3,1246,204,0,75,'2024-05-03 04:35:47','2024-05-03 04:35:47'),
(1685,1218,1720,1203,1689,1,6,576,0,75,'2024-05-03 04:36:09','2024-05-03 04:36:09'),
(1686,1219,1721,1204,1690,1,41,576,0,75,'2024-05-03 04:36:32','2024-05-03 04:36:32'),
(1687,1220,1722,1205,1691,3,1246,18,0,75,'2024-05-03 04:36:55','2024-05-03 04:36:55'),
(1688,1221,1723,1206,1692,1,41,3600,0,75,'2024-05-03 04:37:17','2024-05-03 04:37:17'),
(1689,1222,1724,1207,1693,1,40,720,0,75,'2024-05-04 02:28:10','2024-05-04 02:28:10'),
(1690,1223,1725,1208,1694,1,40,1872,0,75,'2024-05-04 02:28:30','2024-05-04 02:28:30'),
(1691,1224,1726,1209,1695,1,40,1152,0,75,'2024-05-04 02:28:49','2024-05-04 02:28:49'),
(1692,1225,1727,1210,1696,1,40,720,0,75,'2024-05-04 02:29:15','2024-05-04 02:29:15'),
(1693,1226,1728,1211,1697,1,41,1944,0,75,'2024-05-06 03:19:57','2024-05-06 03:19:57'),
(1694,1227,1729,1212,1698,1,41,2736,0,75,'2024-05-06 03:20:21','2024-05-06 03:20:21'),
(1695,1228,1730,1213,1699,1,41,1440,0,75,'2024-05-06 03:20:43','2024-05-06 03:20:43'),
(1696,1229,1731,1214,1700,1,41,3240,0,75,'2024-05-06 03:21:08','2024-05-06 03:21:08'),
(1697,1230,1732,1215,1701,1,41,792,0,75,'2024-05-06 03:21:35','2024-05-06 03:21:35'),
(1698,1231,1733,1216,1702,1,40,1728,0,75,'2024-05-06 03:22:04','2024-05-06 03:22:04'),
(1699,1232,1734,1217,1703,1,6,1584,0,75,'2024-05-06 03:22:30','2024-05-06 03:22:30'),
(1700,1233,1735,1218,1704,1,6,1512,0,75,'2024-05-06 03:22:57','2024-05-06 03:22:57'),
(1701,1234,1736,1219,1705,3,1246,139,0,75,'2024-05-07 04:07:25','2024-05-07 04:07:25'),
(1702,1234,1737,1219,1706,3,1246,5,0,75,'2024-05-07 04:07:25','2024-05-07 04:07:25'),
(1703,1235,1738,1220,1707,3,1246,144,0,75,'2024-05-07 04:07:42','2024-05-07 04:07:42'),
(1704,1236,1739,1221,1708,3,1246,144,0,75,'2024-05-07 04:08:07','2024-05-07 04:08:07'),
(1705,1237,1740,1222,1709,1,7,720,0,75,'2024-05-07 04:09:06','2024-05-07 04:09:06'),
(1706,1238,1741,1223,1710,3,1246,288,0,75,'2024-05-07 04:09:33','2024-05-07 04:09:33'),
(1707,1239,1742,1224,1711,1,7,864,0,75,'2024-05-07 04:10:08','2024-05-07 04:10:08'),
(1708,1239,1743,1224,1712,3,1246,144,0,75,'2024-05-07 04:10:08','2024-05-07 04:10:08'),
(1709,1240,1744,1225,1713,1,7,576,0,75,'2024-05-07 04:10:58','2024-05-07 04:10:58'),
(1710,1241,1745,1226,1714,3,456,51,0,75,'2024-05-07 04:12:25','2024-05-07 04:12:25'),
(1711,1241,1746,1226,1715,3,1246,24,0,75,'2024-05-07 04:12:26','2024-05-07 04:12:26'),
(1712,1241,1747,1226,1716,1,7,144,0,75,'2024-05-07 04:12:26','2024-05-07 04:12:26'),
(1713,1241,1748,1226,1717,3,63,4,0,75,'2024-05-07 04:12:26','2024-05-07 04:12:26'),
(1714,1241,1749,1226,1718,3,83,6,0,75,'2024-05-07 04:12:26','2024-05-07 04:12:26'),
(1715,1242,1750,1227,1719,1,40,3024,0,75,'2024-05-10 03:10:40','2024-05-10 03:10:40'),
(1716,1243,1751,1228,1720,1,40,2880,0,75,'2024-05-10 03:11:00','2024-05-10 03:11:00'),
(1717,1244,1752,1229,1721,1,41,2016,0,75,'2024-05-10 03:22:05','2024-05-10 03:22:05'),
(1718,1245,1753,1230,1722,1,41,648,0,75,'2024-05-10 03:22:31','2024-05-10 03:22:31'),
(1719,1246,1754,1231,1723,1,41,2520,0,75,'2024-05-10 03:22:54','2024-05-10 03:22:54'),
(1720,1247,1755,1232,1724,1,41,360,0,75,'2024-05-10 03:23:19','2024-05-10 03:23:19'),
(1721,1248,1756,1233,1725,1,41,2160,0,75,'2024-05-10 03:23:47','2024-05-10 03:23:47'),
(1722,1249,1757,1234,1726,1,9,1440,0,75,'2024-05-10 03:51:54','2024-05-10 03:51:54'),
(1723,1250,1758,1235,1727,1,9,1656,0,75,'2024-05-10 03:52:18','2024-05-10 03:52:18'),
(1724,1251,1759,1236,1728,1,9,2016,0,75,'2024-05-10 03:52:40','2024-05-10 03:52:40'),
(1725,1253,1762,1237,1729,1,9,1512,0,75,'2024-05-10 03:55:33','2024-05-10 03:55:33'),
(1726,1254,1763,1238,1730,1,40,1944,0,75,'2024-05-13 03:19:56','2024-05-13 03:19:56'),
(1727,1255,1764,1239,1731,1,40,792,0,75,'2024-05-13 03:20:26','2024-05-13 03:20:26'),
(1728,558,774,1242,1734,5,94,144,0,75,'2024-05-13 03:21:56','2024-05-13 03:21:56'),
(1729,1252,1760,1244,1738,1,9,1440,0,75,'2024-05-13 03:22:28','2024-05-13 03:22:28'),
(1730,1256,1765,1245,1740,1,40,2736,0,75,'2024-05-13 03:22:48','2024-05-13 03:22:48'),
(1731,1257,1766,1246,1741,1,40,1440,0,75,'2024-05-13 03:23:11','2024-05-13 03:23:11'),
(1732,1258,1767,1247,1742,1,40,936,0,75,'2024-05-13 03:23:43','2024-05-13 03:23:43'),
(1733,1259,1768,1248,1743,1,40,3240,0,75,'2024-05-13 03:24:17','2024-05-13 03:24:17'),
(1734,1260,1769,1249,1744,1,40,1800,0,75,'2024-05-13 03:24:43','2024-05-13 03:24:43'),
(1735,1261,1770,1250,1745,1,40,792,0,75,'2024-05-13 03:25:01','2024-05-13 03:25:01'),
(1736,1262,1771,1251,1746,1,40,864,0,75,'2024-05-13 03:25:25','2024-05-13 03:25:25'),
(1737,1263,1772,1252,1747,1,10,576,0,75,'2024-05-13 04:28:12','2024-05-13 04:28:12'),
(1738,1264,1773,1253,1748,1,10,1368,0,75,'2024-05-13 04:28:41','2024-05-13 04:28:41'),
(1739,1265,1774,1254,1749,1,10,2304,0,75,'2024-05-13 04:29:09','2024-05-13 04:29:09'),
(1740,1266,1775,1255,1750,1,10,1584,0,75,'2024-05-13 04:29:34','2024-05-13 04:29:34'),
(1741,1267,1776,1256,1751,1,10,3024,0,75,'2024-05-13 04:29:59','2024-05-13 04:29:59'),
(1742,1268,1777,1257,1752,1,10,2160,0,75,'2024-05-13 04:30:23','2024-05-13 04:30:23'),
(1743,1269,1778,1258,1753,3,82,8,0,75,'2024-05-13 04:30:58','2024-05-13 04:30:58'),
(1744,1270,1779,1259,1754,1,7,2376,0,75,'2024-05-14 02:40:21','2024-05-14 02:40:21'),
(1745,1271,1780,1260,1755,1,7,720,0,75,'2024-05-14 02:40:42','2024-05-14 02:40:42'),
(1746,1272,1781,1261,1756,1,7,792,0,75,'2024-05-14 02:41:01','2024-05-14 02:41:01'),
(1747,1273,1782,1262,1757,3,456,12,0,75,'2024-05-14 02:41:55','2024-05-14 02:41:55'),
(1748,1273,1783,1262,1758,3,1246,19,0,75,'2024-05-14 02:41:55','2024-05-14 02:41:55'),
(1749,1273,1784,1262,1759,3,82,37,0,75,'2024-05-14 02:41:55','2024-05-14 02:41:55'),
(1750,1273,1785,1262,1760,3,63,5,0,75,'2024-05-14 02:41:55','2024-05-14 02:41:55'),
(1751,1274,1786,1263,1761,1,10,1080,0,75,'2024-05-14 02:42:19','2024-05-14 02:42:19'),
(1752,1275,1787,1264,1762,1,10,2520,0,75,'2024-05-14 02:42:40','2024-05-14 02:42:40'),
(1753,1276,1788,1265,1763,1,5,1872,0,75,'2024-05-15 03:50:12','2024-05-15 03:50:12'),
(1754,1276,1789,1265,1764,1,7,1008,0,75,'2024-05-15 03:50:12','2024-05-15 03:50:12'),
(1755,1277,1790,1266,1765,3,1247,5,0,75,'2024-05-15 03:51:41','2024-05-15 03:51:41'),
(1756,1277,1791,1266,1766,3,1246,15,0,75,'2024-05-15 03:51:41','2024-05-15 03:51:41'),
(1757,1277,1792,1266,1767,1,11,216,0,75,'2024-05-15 03:51:41','2024-05-15 03:51:41'),
(1758,1277,1793,1266,1768,3,82,3,0,75,'2024-05-15 03:51:41','2024-05-15 03:51:41'),
(1759,1278,1794,1267,1769,1,23,72,0,75,'2024-05-15 03:52:58','2024-05-15 03:52:58'),
(1760,1278,1795,1267,1770,1,11,288,0,75,'2024-05-15 03:52:58','2024-05-15 03:52:58'),
(1761,1279,1796,1268,1771,1,10,720,0,75,'2024-05-15 03:53:45','2024-05-15 03:53:45'),
(1762,1280,1797,1269,1772,3,82,84,0,75,'2024-05-15 03:54:04','2024-05-15 03:54:04'),
(1763,1281,1798,1270,1773,1,10,432,0,75,'2024-05-16 03:11:09','2024-05-16 03:11:09'),
(1764,1282,1799,1271,1774,1,10,2520,0,75,'2024-05-16 03:11:31','2024-05-16 03:11:31'),
(1765,1283,1800,1272,1775,1,10,720,0,75,'2024-05-16 03:11:52','2024-05-16 03:11:52'),
(1766,1284,1801,1273,1776,1,10,2016,0,75,'2024-05-16 03:15:00','2024-05-16 03:15:00'),
(1767,1285,1802,1274,1777,1,10,360,0,75,'2024-05-16 03:15:34','2024-05-16 03:15:34'),
(1768,1286,1803,1275,1778,1,10,1008,0,75,'2024-05-16 03:15:58','2024-05-16 03:15:58'),
(1769,1287,1804,1276,1779,1,10,1872,0,75,'2024-05-16 03:16:24','2024-05-16 03:16:24'),
(1770,1288,1805,1277,1780,1,10,1512,0,75,'2024-05-16 03:17:01','2024-05-16 03:17:01'),
(1771,1289,1806,1278,1781,1,10,2880,0,75,'2024-05-16 03:17:23','2024-05-16 03:17:23'),
(1772,1290,1807,1279,1782,3,1246,144,0,75,'2024-05-17 03:57:03','2024-05-17 03:57:03'),
(1773,1291,1808,1280,1783,3,1246,144,0,75,'2024-05-17 03:57:25','2024-05-17 03:57:25'),
(1774,1292,1809,1281,1784,1,40,9360,0,75,'2024-05-17 03:57:55','2024-05-17 03:57:55'),
(1775,1293,1810,1282,1785,1,10,576,0,75,'2024-05-17 03:58:19','2024-05-17 03:58:19'),
(1776,1294,1811,1283,1786,1,10,1152,0,75,'2024-05-17 03:58:52','2024-05-17 03:58:52'),
(1777,1295,1812,1284,1787,1,10,1512,0,75,'2024-05-17 03:59:20','2024-05-17 03:59:20'),
(1778,1296,1813,1285,1788,3,1246,720,0,75,'2024-05-17 03:59:41','2024-05-17 03:59:41'),
(1779,1297,1814,1286,1789,1,41,1944,0,75,'2024-05-20 04:30:33','2024-05-20 04:30:33'),
(1780,1298,1815,1287,1790,1,41,576,0,75,'2024-05-20 04:30:55','2024-05-20 04:30:55'),
(1781,1299,1816,1288,1791,1,41,936,0,75,'2024-05-20 04:31:20','2024-05-20 04:31:20'),
(1782,1300,1817,1289,1792,1,41,864,0,75,'2024-05-20 04:31:40','2024-05-20 04:31:40'),
(1783,1301,1818,1290,1793,1,41,648,0,75,'2024-05-20 04:32:01','2024-05-20 04:32:01'),
(1784,1302,1819,1291,1794,1,41,1440,0,75,'2024-05-20 04:32:25','2024-05-20 04:32:25'),
(1785,1303,1820,1292,1795,1,41,1584,0,75,'2024-05-20 04:32:49','2024-05-20 04:32:49'),
(1786,1304,1821,1293,1796,1,41,3240,0,75,'2024-05-20 04:33:10','2024-05-20 04:33:10'),
(1787,1305,1822,1294,1797,1,10,2304,0,75,'2024-05-20 04:33:33','2024-05-20 04:33:33'),
(1788,1306,1823,1295,1798,1,10,1872,0,75,'2024-05-20 04:33:52','2024-05-20 04:33:52'),
(1789,1307,1824,1296,1799,1,10,1512,0,75,'2024-05-20 04:34:10','2024-05-20 04:34:10'),
(1790,1308,1825,1297,1800,1,9,864,0,75,'2024-05-21 02:28:30','2024-05-21 02:28:30'),
(1791,1308,1826,1297,1801,1,4,72,0,75,'2024-05-21 02:28:30','2024-05-21 02:28:30'),
(1792,1309,1827,1298,1802,1,4,504,0,75,'2024-05-21 02:29:00','2024-05-21 02:29:00'),
(1793,1310,1828,1299,1803,1,4,864,0,75,'2024-05-21 02:29:20','2024-05-21 02:29:20'),
(1794,1311,1829,1300,1804,1,9,1368,0,75,'2024-05-21 02:57:03','2024-05-21 02:57:03'),
(1795,1312,1830,1301,1805,1,9,864,0,75,'2024-05-21 02:57:27','2024-05-21 02:57:27'),
(1796,1313,1831,1302,1806,1,9,720,0,75,'2024-05-21 02:57:50','2024-05-21 02:57:50'),
(1797,1314,1832,1303,1807,1,9,576,0,75,'2024-05-21 02:58:42','2024-05-21 02:58:42'),
(1798,1315,1833,1304,1808,1,4,3600,0,75,'2024-05-24 02:55:34','2024-05-24 02:55:34'),
(1799,1316,1834,1305,1809,1,4,3600,0,75,'2024-05-24 02:55:59','2024-05-24 02:55:59'),
(1800,1317,1835,1306,1810,1,10,34560,0,75,'2024-05-24 02:56:26','2024-05-24 02:56:26'),
(1801,1317,1836,1306,1811,1,4,2160,0,75,'2024-05-24 02:56:26','2024-05-24 02:56:26'),
(1802,1318,1837,1307,1812,1,4,5472,0,75,'2024-05-24 02:56:59','2024-05-24 02:56:59'),
(1803,1318,1837,1307,1812,1,4,5472,0,75,'2024-05-24 02:56:59','2024-05-24 02:56:59'),
(1804,1319,1838,1308,1813,1,4,5040,0,75,'2024-05-24 02:57:19','2024-05-24 02:57:19'),
(1805,1320,1839,1309,1814,1,4,1440,0,75,'2024-05-24 02:57:36','2024-05-24 02:57:36'),
(1806,1321,1840,1310,1815,1,4,2880,0,75,'2024-05-24 02:57:56','2024-05-24 02:57:56'),
(1807,1322,1841,1311,1816,1,4,720,0,75,'2024-05-24 03:17:16','2024-05-24 03:17:16'),
(1808,1323,1842,1312,1817,1,4,504,0,75,'2024-05-24 03:17:38','2024-05-24 03:17:38'),
(1809,1324,1843,1313,1818,1,4,2592,0,75,'2024-05-24 03:18:00','2024-05-24 03:18:00'),
(1810,1325,1844,1314,1819,1,4,3528,0,75,'2024-05-24 03:18:20','2024-05-24 03:18:20'),
(1811,1326,1845,1315,1820,1,4,216,0,75,'2024-05-24 03:18:47','2024-05-24 03:18:47'),
(1812,1326,1846,1315,1821,1,9,1296,0,75,'2024-05-24 03:18:47','2024-05-24 03:18:47'),
(1813,1327,1847,1316,1822,1,165,4320,0,75,'2024-06-05 03:48:09','2024-06-05 03:48:09'),
(1814,1328,1848,1317,1823,1,165,4320,0,75,'2024-06-05 03:48:31','2024-06-05 03:48:31'),
(1815,1329,1849,1318,1824,1,45,4320,0,75,'2024-06-05 03:49:03','2024-06-05 03:49:03'),
(1816,1330,1850,1319,1825,1,45,4320,0,75,'2024-06-05 03:49:24','2024-06-05 03:49:24'),
(1817,1331,1851,1320,1826,1,45,4320,0,75,'2024-06-05 03:49:49','2024-06-05 03:49:49'),
(1818,1332,1852,1321,1827,1,45,2160,0,75,'2024-06-05 03:50:09','2024-06-05 03:50:09'),
(1819,1333,1853,1322,1828,3,1246,288,0,75,'2024-06-05 03:50:25','2024-06-05 03:50:25'),
(1820,1334,1854,1323,1829,1,45,1008,0,75,'2024-06-05 03:51:05','2024-06-05 03:51:05'),
(1821,1334,1855,1323,1830,1,43,288,0,75,'2024-06-05 03:51:05','2024-06-05 03:51:05'),
(1822,1335,1856,1324,1831,1,43,504,0,75,'2024-06-05 03:51:28','2024-06-05 03:51:28'),
(1823,1336,1857,1325,1832,1,43,720,0,75,'2024-06-05 03:51:56','2024-06-05 03:51:56'),
(1824,1336,1858,1325,1833,1,45,360,0,75,'2024-06-05 03:51:56','2024-06-05 03:51:56'),
(1825,1337,1859,1326,1834,1,43,288,0,75,'2024-06-05 03:52:35','2024-06-05 03:52:35'),
(1826,1337,1860,1326,1835,3,1246,28,0,75,'2024-06-05 03:52:35','2024-06-05 03:52:35'),
(1827,1338,1861,1327,1836,1,45,576,0,75,'2024-06-05 03:53:02','2024-06-05 03:53:02'),
(1828,1339,1862,1328,1837,1,7,1152,0,75,'2024-06-06 02:57:24','2024-06-06 02:57:24'),
(1829,1339,1863,1328,1838,1,9,1368,0,75,'2024-06-06 02:57:24','2024-06-06 02:57:24'),
(1830,1340,1864,1329,1839,1,9,1296,0,75,'2024-06-06 02:57:45','2024-06-06 02:57:45'),
(1831,1341,1865,1330,1840,1,9,2016,0,75,'2024-06-06 02:58:07','2024-06-06 02:58:07'),
(1832,1342,1866,1331,1841,1,9,504,0,75,'2024-06-06 02:58:26','2024-06-06 02:58:26'),
(1833,1343,1867,1332,1842,1,9,2016,0,75,'2024-06-06 02:58:50','2024-06-06 02:58:50'),
(1834,1344,1868,1333,1843,1,9,720,0,75,'2024-06-06 02:59:13','2024-06-06 02:59:13'),
(1835,1346,1870,1334,1844,1,9,2520,0,75,'2024-06-06 02:59:47','2024-06-06 02:59:47'),
(1836,1346,1871,1334,1845,1,7,1512,0,75,'2024-06-06 02:59:47','2024-06-06 02:59:47'),
(1837,1347,1872,1335,1846,1,7,5040,0,75,'2024-06-06 03:00:11','2024-06-06 03:00:11'),
(1838,1348,1873,1336,1847,1,7,504,0,75,'2024-06-06 03:00:34','2024-06-06 03:00:34'),
(1839,1349,1874,1337,1848,1,7,720,0,75,'2024-06-06 03:00:53','2024-06-06 03:00:53'),
(1840,1350,1875,1338,1849,1,31,1008,0,75,'2024-06-10 03:59:04','2024-06-10 03:59:04'),
(1841,1351,1876,1339,1850,1,31,1944,0,75,'2024-06-10 03:59:21','2024-06-10 03:59:21'),
(1842,1352,1877,1340,1851,1,31,792,0,75,'2024-06-10 03:59:40','2024-06-10 03:59:40'),
(1843,1353,1878,1341,1852,1,31,864,0,75,'2024-06-10 04:00:00','2024-06-10 04:00:00'),
(1844,1354,1879,1342,1853,1,31,936,0,75,'2024-06-10 04:00:18','2024-06-10 04:00:18'),
(1845,1355,1880,1343,1854,1,31,4320,0,75,'2024-06-10 04:00:35','2024-06-10 04:00:35'),
(1846,1356,1881,1344,1855,1,31,792,0,75,'2024-06-10 04:00:51','2024-06-10 04:00:51'),
(1847,1357,1882,1345,1856,1,31,5184,0,75,'2024-06-10 04:01:12','2024-06-10 04:01:12'),
(1848,1358,1883,1346,1857,1,31,576,0,75,'2024-06-10 04:01:48','2024-06-10 04:01:48'),
(1849,1358,1884,1346,1858,1,164,72,0,75,'2024-06-10 04:01:48','2024-06-10 04:01:48'),
(1850,1359,1885,1347,1859,1,164,2160,0,75,'2024-06-10 04:02:06','2024-06-10 04:02:06'),
(1851,1360,1886,1348,1860,1,164,792,0,75,'2024-06-10 04:02:23','2024-06-10 04:02:23'),
(1852,1361,1887,1349,1861,1,165,1152,0,75,'2024-06-10 07:40:24','2024-06-10 07:40:24'),
(1853,1362,1888,1350,1862,1,165,1656,0,75,'2024-06-10 07:41:23','2024-06-10 07:41:23'),
(1854,1363,1889,1351,1863,1,165,1728,0,75,'2024-06-10 07:41:53','2024-06-10 07:41:53'),
(1855,1364,1890,1352,1864,1,165,1872,0,75,'2024-06-10 07:42:39','2024-06-10 07:42:39'),
(1856,1365,1891,1353,1865,1,165,1584,0,75,'2024-06-10 07:43:07','2024-06-10 07:43:07'),
(1857,1366,1892,1354,1866,1,165,2592,0,75,'2024-06-10 07:43:30','2024-06-10 07:43:30'),
(1858,1367,1893,1355,1867,1,165,1440,0,75,'2024-06-10 07:43:53','2024-06-10 07:43:53'),
(1859,1369,1895,1357,1869,1,165,360,0,75,'2024-06-10 07:45:12','2024-06-10 07:45:12'),
(1860,1369,1896,1357,1870,3,1246,2,0,75,'2024-06-10 07:45:12','2024-06-10 07:45:12'),
(1861,1369,1897,1357,1871,3,1245,2,0,75,'2024-06-10 07:45:12','2024-06-10 07:45:12'),
(1862,1370,1898,1358,1872,3,82,12,0,75,'2024-06-10 07:45:38','2024-06-10 07:45:38'),
(1863,1371,1899,1359,1873,1,165,72,0,75,'2024-06-10 07:45:56','2024-06-10 07:45:56'),
(1864,1372,1900,1360,1874,1,162,2880,0,75,'2024-06-11 03:19:18','2024-06-11 03:19:18'),
(1865,1373,1901,1361,1875,1,162,2592,0,75,'2024-06-11 03:19:40','2024-06-11 03:19:40'),
(1866,1374,1902,1362,1876,1,162,1368,0,75,'2024-06-11 03:27:53','2024-06-11 03:27:53'),
(1867,1376,1904,1363,1877,1,162,1800,0,75,'2024-06-11 03:28:31','2024-06-11 03:28:31'),
(1868,1377,1905,1364,1878,3,1246,144,0,75,'2024-06-11 03:28:58','2024-06-11 03:28:58'),
(1869,1377,1906,1364,1879,1,162,720,0,75,'2024-06-11 03:28:58','2024-06-11 03:28:58'),
(1870,1378,1907,1365,1880,3,1246,144,0,75,'2024-06-11 03:29:23','2024-06-11 03:29:23'),
(1871,1379,1908,1366,1881,1,162,576,0,75,'2024-06-11 03:29:46','2024-06-11 03:29:46'),
(1872,1380,1909,1367,1882,1,162,576,0,75,'2024-06-11 03:30:06','2024-06-11 03:30:06'),
(1873,1381,1910,1368,1883,1,162,1440,0,75,'2024-06-11 03:30:29','2024-06-11 03:30:29'),
(1874,1382,1911,1369,1884,1,33,576,0,75,'2024-06-11 04:05:58','2024-06-11 04:05:58'),
(1875,1383,1912,1370,1885,1,33,1800,0,75,'2024-06-11 04:07:16','2024-06-11 04:07:16'),
(1876,1384,1913,1371,1886,1,33,720,0,75,'2024-06-11 04:07:53','2024-06-11 04:07:53'),
(1877,1385,1914,1372,1887,1,13,30240,0,75,'2024-06-11 08:18:43','2024-06-11 08:18:43'),
(1878,1385,1915,1372,1888,1,12,2160,0,75,'2024-06-11 08:18:43','2024-06-11 08:18:43'),
(1879,1386,1916,1373,1889,3,1246,144,0,75,'2024-06-12 02:24:42','2024-06-12 02:24:42'),
(1880,1387,1917,1374,1890,1,164,864,0,75,'2024-06-13 04:14:23','2024-06-13 04:14:23'),
(1881,1387,1918,1374,1891,1,162,864,0,75,'2024-06-13 04:14:23','2024-06-13 04:14:23'),
(1882,1388,1919,1375,1892,1,164,3456,0,75,'2024-06-13 04:15:07','2024-06-13 04:15:07'),
(1883,1388,1920,1375,1893,1,162,72,0,75,'2024-06-13 04:15:07','2024-06-13 04:15:07'),
(1884,1389,1921,1376,1894,1,162,1440,0,75,'2024-06-13 04:15:51','2024-06-13 04:15:51'),
(1885,1390,1922,1377,1895,1,162,792,0,75,'2024-06-13 04:16:36','2024-06-13 04:16:36'),
(1886,1390,1923,1377,1896,1,165,504,0,75,'2024-06-13 04:16:36','2024-06-13 04:16:36'),
(1887,1391,1924,1378,1897,1,163,5616,0,75,'2024-06-13 04:16:59','2024-06-13 04:16:59'),
(1888,1392,1925,1379,1898,1,164,1512,0,75,'2024-06-13 04:17:23','2024-06-13 04:17:23'),
(1889,1393,1926,1380,1899,1,164,1008,0,75,'2024-06-13 04:17:43','2024-06-13 04:17:43'),
(1890,1394,1927,1381,1900,1,164,1440,0,75,'2024-06-13 04:18:02','2024-06-13 04:18:02'),
(1891,1395,1928,1382,1901,1,164,6480,0,75,'2024-06-13 04:19:04','2024-06-13 04:19:04'),
(1892,1396,1929,1383,1902,1,165,720,0,75,'2024-06-13 06:46:02','2024-06-13 06:46:02'),
(1893,1397,1930,1384,1903,1,165,4032,0,75,'2024-06-13 06:46:26','2024-06-13 06:46:26'),
(1894,1398,1931,1385,1904,1,165,864,0,75,'2024-06-13 06:46:48','2024-06-13 06:46:48'),
(1895,1399,1932,1386,1905,1,165,1008,0,75,'2024-06-13 06:47:13','2024-06-13 06:47:13'),
(1896,1400,1933,1387,1906,1,165,1008,0,75,'2024-06-13 06:47:40','2024-06-13 06:47:40'),
(1897,1401,1934,1388,1907,1,165,216,0,75,'2024-06-13 06:48:00','2024-06-13 06:48:00'),
(1898,1402,1935,1389,1908,1,9,1296,0,75,'2024-06-14 03:19:08','2024-06-14 03:19:08'),
(1899,1403,1936,1390,1909,1,9,1512,0,75,'2024-06-14 03:19:52','2024-06-14 03:19:52'),
(1900,1403,1937,1390,1910,1,162,288,0,75,'2024-06-14 03:19:52','2024-06-14 03:19:52'),
(1901,1409,1943,1391,1911,1,164,1656,0,75,'2024-06-19 03:47:51','2024-06-19 03:47:51'),
(1902,1405,1939,1392,1912,1,164,1440,0,75,'2024-06-19 03:48:05','2024-06-19 03:48:05'),
(1903,1406,1940,1393,1913,1,164,720,0,75,'2024-06-19 03:48:20','2024-06-19 03:48:20'),
(1904,1407,1941,1394,1914,1,164,792,0,75,'2024-06-19 03:48:35','2024-06-19 03:48:35'),
(1905,1408,1942,1395,1915,1,164,1728,0,75,'2024-06-19 03:48:53','2024-06-19 03:48:53'),
(1906,1410,1944,1396,1916,1,164,3888,0,75,'2024-06-19 04:24:51','2024-06-19 04:24:51'),
(1907,1411,1945,1397,1917,1,164,2592,0,75,'2024-06-19 04:25:16','2024-06-19 04:25:16'),
(1908,1412,1946,1398,1918,1,164,792,0,75,'2024-06-19 04:25:32','2024-06-19 04:25:32'),
(1909,1413,1947,1399,1919,1,164,2880,0,75,'2024-06-19 04:25:51','2024-06-19 04:25:51'),
(1910,1414,1948,1400,1920,1,164,6480,0,75,'2024-06-19 04:26:10','2024-06-19 04:26:10'),
(1911,1415,1949,1401,1921,1,164,1296,0,75,'2024-06-19 04:26:26','2024-06-19 04:26:26'),
(1912,1416,1950,1402,1922,1,164,720,0,75,'2024-06-19 04:27:03','2024-06-19 04:27:03'),
(1913,1416,1951,1402,1923,3,1246,56,0,75,'2024-06-19 04:27:03','2024-06-19 04:27:03'),
(1914,1416,1952,1402,1924,3,1246,30,0,75,'2024-06-19 04:27:03','2024-06-19 04:27:03'),
(1915,1417,1953,1403,1925,1,164,720,0,75,'2024-06-19 04:27:30','2024-06-19 04:27:30'),
(1916,1418,1954,1404,1926,1,9,72,0,75,'2024-06-19 06:57:50','2024-06-19 06:57:50'),
(1917,1418,1955,1404,1927,1,9,504,0,75,'2024-06-19 06:57:50','2024-06-19 06:57:50'),
(1918,1418,1956,1404,1928,3,1246,144,0,75,'2024-06-19 06:57:50','2024-06-19 06:57:50'),
(1919,1419,1957,1405,1929,3,1245,36,0,75,'2024-06-19 06:58:04','2024-06-19 06:58:04'),
(1920,1420,1958,1406,1930,3,83,30,0,75,'2024-06-19 06:58:23','2024-06-19 06:58:23'),
(1921,1421,1959,1407,1931,1,31,3600,0,75,'2024-06-19 06:58:42','2024-06-19 06:58:42'),
(1922,1422,1960,1408,1932,1,31,2520,0,75,'2024-06-19 06:59:02','2024-06-19 06:59:02'),
(1923,1423,1961,1409,1933,1,31,4320,0,75,'2024-06-19 06:59:19','2024-06-19 06:59:19'),
(1924,1424,1962,1410,1934,1,31,2808,0,75,'2024-06-19 06:59:37','2024-06-19 06:59:37'),
(1925,1425,1963,1411,1935,1,164,2520,0,75,'2024-06-20 03:21:38','2024-06-20 03:21:38'),
(1926,1426,1964,1412,1936,1,164,720,0,75,'2024-06-20 03:21:55','2024-06-20 03:21:55'),
(1927,1427,1965,1413,1937,1,165,2520,0,75,'2024-06-20 03:28:38','2024-06-20 03:28:38'),
(1928,1428,1966,1414,1938,1,165,2016,0,75,'2024-06-20 03:28:56','2024-06-20 03:28:56'),
(1929,1429,1967,1415,1939,1,164,1584,0,75,'2024-06-20 03:29:32','2024-06-20 03:29:32'),
(1930,1429,1968,1415,1940,1,165,144,0,75,'2024-06-20 03:29:32','2024-06-20 03:29:32'),
(1931,1430,1969,1416,1941,1,165,1008,0,75,'2024-06-20 03:29:51','2024-06-20 03:29:51'),
(1932,1431,1970,1417,1942,1,165,2592,0,75,'2024-06-20 03:30:10','2024-06-20 03:30:10'),
(1933,1432,1971,1418,1943,1,165,360,0,75,'2024-06-20 04:00:11','2024-06-20 04:00:11'),
(1934,1433,1972,1419,1944,1,165,6120,0,75,'2024-06-20 04:00:33','2024-06-20 04:00:33'),
(1935,1434,1973,1420,1945,1,165,504,0,75,'2024-06-20 04:00:55','2024-06-20 04:00:55'),
(1936,1435,1974,1421,1946,1,165,3528,0,75,'2024-06-20 04:01:16','2024-06-20 04:01:16'),
(1937,1436,1975,1422,1947,1,165,4032,0,75,'2024-06-20 04:01:35','2024-06-20 04:01:35'),
(1938,1437,1976,1423,1948,1,165,504,0,75,'2024-06-20 04:01:55','2024-06-20 04:01:55'),
(1939,1438,1977,1424,1949,1,165,792,0,75,'2024-06-20 04:02:22','2024-06-20 04:02:22'),
(1940,1439,1978,1425,1950,1,31,2304,0,75,'2024-06-20 09:19:43','2024-06-20 09:19:43'),
(1941,1440,1979,1426,1951,1,31,3312,0,75,'2024-06-20 09:20:07','2024-06-20 09:20:07'),
(1942,1441,1980,1427,1952,1,31,2592,0,75,'2024-06-20 09:20:25','2024-06-20 09:20:25'),
(1943,1442,1981,1428,1953,1,31,1584,0,75,'2024-06-20 09:20:45','2024-06-20 09:20:45'),
(1944,1443,1982,1429,1954,1,31,2880,0,75,'2024-06-20 09:21:06','2024-06-20 09:21:06'),
(1945,1444,1983,1430,1955,1,31,720,0,75,'2024-06-20 09:21:24','2024-06-20 09:21:24'),
(1946,1445,1984,1431,1956,3,1246,288,0,75,'2024-06-20 09:21:43','2024-06-20 09:21:43'),
(1947,1446,1985,1432,1957,1,162,1224,0,75,'2024-06-21 01:31:51','2024-06-21 01:31:51'),
(1948,1447,1986,1433,1958,1,162,2016,0,75,'2024-06-21 01:32:19','2024-06-21 01:32:19'),
(1949,1448,1987,1434,1959,1,162,2160,0,75,'2024-06-21 01:57:00','2024-06-21 01:57:00'),
(1950,1449,1988,1435,1960,1,162,2880,0,75,'2024-06-21 01:57:16','2024-06-21 01:57:16'),
(1951,1450,1989,1436,1961,1,162,1800,0,75,'2024-06-21 01:57:33','2024-06-21 01:57:33'),
(1952,1451,1990,1437,1962,1,31,576,0,75,'2024-06-21 07:29:12','2024-06-21 07:29:12'),
(1953,1452,1991,1438,1963,1,31,1512,0,75,'2024-06-21 07:30:50','2024-06-21 07:30:50'),
(1954,1453,1992,1439,1964,1,31,1080,0,75,'2024-06-21 07:31:34','2024-06-21 07:31:34'),
(1955,1453,1993,1439,1965,1,164,360,0,75,'2024-06-21 07:31:34','2024-06-21 07:31:34'),
(1956,1454,1994,1440,1966,1,164,3600,0,75,'2024-06-21 07:32:12','2024-06-21 07:32:12'),
(1957,1455,1995,1441,1967,1,164,3600,0,75,'2024-06-21 07:32:33','2024-06-21 07:32:33'),
(1958,1456,1996,1442,1968,1,164,2088,0,75,'2024-06-21 07:33:09','2024-06-21 07:33:09'),
(1959,1457,1997,1443,1969,1,164,2016,0,75,'2024-06-21 07:33:28','2024-06-21 07:33:28'),
(1960,1458,1998,1444,1970,1,162,6048,0,75,'2024-06-24 03:32:25','2024-06-24 03:32:25'),
(1961,1459,1999,1445,1971,1,162,2736,0,75,'2024-06-24 03:32:41','2024-06-24 03:32:41'),
(1962,1460,2000,1446,1972,1,162,2592,0,75,'2024-06-24 03:32:57','2024-06-24 03:32:57'),
(1963,1461,2001,1447,1973,1,162,72,0,75,'2024-06-24 03:33:20','2024-06-24 03:33:20'),
(1964,1461,2002,1447,1974,1,162,720,0,75,'2024-06-24 03:33:20','2024-06-24 03:33:20'),
(1965,1462,2003,1448,1975,1,162,1728,0,75,'2024-06-24 03:33:35','2024-06-24 03:33:35'),
(1966,1463,2004,1449,1976,1,162,936,0,75,'2024-06-24 03:33:49','2024-06-24 03:33:49'),
(1967,1464,2005,1450,1977,1,165,720,0,75,'2024-06-24 04:09:13','2024-06-24 04:09:13'),
(1968,1465,2006,1451,1978,1,165,864,0,75,'2024-06-24 04:09:43','2024-06-24 04:09:43'),
(1969,1466,2007,1452,1979,1,165,3240,0,75,'2024-06-24 04:10:04','2024-06-24 04:10:04'),
(1970,1467,2008,1453,1980,1,165,2592,0,75,'2024-06-24 04:10:25','2024-06-24 04:10:25'),
(1971,1468,2009,1454,1981,1,165,792,0,75,'2024-06-24 04:11:14','2024-06-24 04:11:14'),
(1972,1469,2010,1455,1982,1,165,4320,0,75,'2024-06-24 04:11:34','2024-06-24 04:11:34'),
(1973,1470,2011,1456,1983,1,165,2592,0,75,'2024-06-24 04:11:56','2024-06-24 04:11:56'),
(1974,1471,2012,1457,1984,1,165,648,0,75,'2024-06-24 04:12:20','2024-06-24 04:12:20'),
(1975,1472,2013,1458,1985,1,164,1656,0,75,'2024-06-24 07:07:11','2024-06-24 07:07:11'),
(1976,1473,2014,1459,1986,1,164,2592,0,75,'2024-06-24 07:07:27','2024-06-24 07:07:27'),
(1977,1474,2015,1460,1987,1,164,936,0,75,'2024-06-24 07:07:46','2024-06-24 07:07:46'),
(1978,1475,2016,1461,1988,1,164,3168,0,75,'2024-06-24 07:08:05','2024-06-24 07:08:05'),
(1979,1476,2017,1462,1989,1,164,2592,0,75,'2024-06-24 07:08:40','2024-06-24 07:08:40'),
(1980,1477,2018,1463,1990,1,162,720,0,75,'2024-06-25 02:56:16','2024-06-25 02:56:16'),
(1981,1478,2019,1464,1991,1,162,3024,0,75,'2024-06-25 02:56:36','2024-06-25 02:56:36'),
(1982,1479,2020,1465,1992,1,162,288,0,75,'2024-06-25 02:56:59','2024-06-25 02:56:59'),
(1983,1480,2021,1466,1993,1,162,792,0,75,'2024-06-25 02:57:20','2024-06-25 02:57:20'),
(1984,1481,2022,1467,1994,1,162,432,0,75,'2024-06-25 02:57:41','2024-06-25 02:57:41'),
(1985,1482,2023,1468,1995,1,162,288,0,75,'2024-06-25 02:58:11','2024-06-25 02:58:11'),
(1986,1482,2024,1468,1996,3,1246,144,0,75,'2024-06-25 02:58:11','2024-06-25 02:58:11'),
(1987,1483,2025,1469,1997,1,164,2160,0,75,'2024-06-25 03:53:15','2024-06-25 03:53:15'),
(1988,1483,2026,1469,1998,3,1246,288,0,75,'2024-06-25 03:53:15','2024-06-25 03:53:15'),
(1989,1484,2027,1470,1999,1,164,576,0,75,'2024-06-25 03:53:33','2024-06-25 03:53:33'),
(1990,1485,2028,1471,2000,1,162,1296,0,75,'2024-06-26 03:24:28','2024-06-26 03:24:28'),
(1991,1486,2029,1472,2001,1,162,360,0,75,'2024-06-26 03:25:07','2024-06-26 03:25:07'),
(1992,1487,2030,1473,2002,1,162,144,0,75,'2024-06-26 03:25:54','2024-06-26 03:25:54'),
(1993,1487,2031,1473,2003,3,63,2,0,75,'2024-06-26 03:25:54','2024-06-26 03:25:54'),
(1994,1488,2032,1474,2004,1,164,864,0,75,'2024-06-26 03:38:08','2024-06-26 03:38:08'),
(1995,1489,2033,1475,2005,1,164,2304,0,75,'2024-06-26 03:38:27','2024-06-26 03:38:27'),
(1996,1490,2034,1476,2006,1,164,720,0,75,'2024-06-26 03:38:46','2024-06-26 03:38:46'),
(1997,1491,2035,1477,2007,1,162,1440,0,75,'2024-06-27 02:26:41','2024-06-27 02:26:41'),
(1998,1492,2036,1478,2008,1,162,2016,0,75,'2024-06-27 02:27:04','2024-06-27 02:27:04'),
(1999,1493,2037,1479,2009,1,162,2520,0,75,'2024-06-27 02:27:23','2024-06-27 02:27:23'),
(2000,1494,2038,1480,2010,1,162,1728,0,75,'2024-06-27 02:27:42','2024-06-27 02:27:42'),
(2001,1495,2039,1481,2011,1,162,3240,0,75,'2024-06-27 02:28:01','2024-06-27 02:28:01'),
(2002,1496,2040,1482,2012,1,162,1512,0,75,'2024-06-27 02:28:18','2024-06-27 02:28:18'),
(2003,1497,2041,1483,2013,1,162,720,0,75,'2024-06-27 02:28:34','2024-06-27 02:28:34'),
(2004,1498,2042,1484,2014,1,162,2448,0,75,'2024-06-27 02:28:52','2024-06-27 02:28:52'),
(2005,1499,2043,1485,2015,1,162,360,0,75,'2024-06-27 02:49:34','2024-06-27 02:49:34'),
(2006,1500,2044,1486,2016,1,162,5040,0,75,'2024-06-27 02:49:54','2024-06-27 02:49:54'),
(2007,1501,2045,1487,2017,1,162,1296,0,75,'2024-06-27 02:50:13','2024-06-27 02:50:13'),
(2008,1502,2046,1488,2018,1,162,1008,0,75,'2024-06-27 02:50:30','2024-06-27 02:50:30'),
(2009,1503,2047,1489,2019,1,162,720,0,75,'2024-06-27 02:51:36','2024-06-27 02:51:36'),
(2010,1504,2048,1490,2020,3,1246,144,0,75,'2024-06-27 04:24:46','2024-06-27 04:24:46'),
(2011,1505,2049,1491,2021,1,164,432,0,75,'2024-06-27 04:25:18','2024-06-27 04:25:18'),
(2012,1505,2050,1491,2022,1,162,2592,0,75,'2024-06-27 04:25:18','2024-06-27 04:25:18'),
(2013,1506,2051,1492,2023,1,162,1440,0,75,'2024-06-27 04:25:39','2024-06-27 04:25:39'),
(2014,1507,2052,1493,2024,1,162,1440,0,75,'2024-06-27 04:25:59','2024-06-27 04:25:59'),
(2015,1508,2053,1494,2025,1,162,2160,0,75,'2024-06-27 04:26:19','2024-06-27 04:26:19'),
(2016,1509,2054,1495,2026,1,161,1296,0,75,'2024-06-28 03:22:14','2024-06-28 03:22:14'),
(2017,1510,2055,1496,2027,1,161,792,0,75,'2024-06-28 03:22:32','2024-06-28 03:22:32'),
(2018,1511,2056,1497,2028,1,161,1512,0,75,'2024-06-28 03:22:50','2024-06-28 03:22:50'),
(2019,1512,2057,1498,2029,1,161,720,0,75,'2024-06-28 03:23:09','2024-06-28 03:23:09'),
(2020,1513,2058,1499,2030,1,161,288,0,75,'2024-06-28 03:23:26','2024-06-28 03:23:26'),
(2021,1514,2059,1500,2031,1,164,6480,0,75,'2024-07-02 03:17:37','2024-07-02 03:17:37'),
(2022,1515,2060,1501,2032,1,161,1224,0,75,'2024-07-02 03:18:11','2024-07-02 03:18:11'),
(2023,1515,2061,1501,2033,1,164,3528,0,75,'2024-07-02 03:18:11','2024-07-02 03:18:11'),
(2024,1516,2062,1502,2034,1,164,5760,0,75,'2024-07-02 03:18:29','2024-07-02 03:18:29'),
(2025,1517,2063,1503,2035,1,164,2160,0,75,'2024-07-02 03:18:46','2024-07-02 03:18:46'),
(2026,1518,2064,1504,2036,1,164,792,0,75,'2024-07-02 03:19:05','2024-07-02 03:19:05'),
(2027,1519,2065,1505,2037,1,164,2376,0,75,'2024-07-02 03:19:22','2024-07-02 03:19:22'),
(2028,1520,2066,1506,2038,1,164,4320,0,75,'2024-07-02 03:19:39','2024-07-02 03:19:39'),
(2029,1521,2067,1507,2039,1,164,936,0,75,'2024-07-02 03:19:55','2024-07-02 03:19:55'),
(2030,1522,2068,1508,2040,1,164,1872,0,75,'2024-07-02 03:20:14','2024-07-02 03:20:14'),
(2031,1523,2069,1509,2041,1,164,720,0,75,'2024-07-02 03:20:36','2024-07-02 03:20:36'),
(2032,1524,2070,1510,2042,3,1246,144,0,75,'2024-07-02 03:21:02','2024-07-02 03:21:02'),
(2033,1524,2071,1510,2043,1,164,720,0,75,'2024-07-02 03:21:02','2024-07-02 03:21:02'),
(2034,1525,2072,1511,2044,1,163,2592,0,75,'2024-07-02 03:55:05','2024-07-02 03:55:05'),
(2035,1526,2073,1512,2045,1,163,792,0,75,'2024-07-02 03:55:27','2024-07-02 03:55:27'),
(2036,1527,2074,1513,2046,1,163,3888,0,75,'2024-07-02 03:55:45','2024-07-02 03:55:45'),
(2037,1528,2075,1514,2047,1,163,144,0,75,'2024-07-02 03:56:17','2024-07-02 03:56:17'),
(2038,1528,2076,1514,2048,3,1246,28,0,75,'2024-07-02 03:56:17','2024-07-02 03:56:17'),
(2039,1529,2077,1515,2049,1,161,576,0,75,'2024-07-02 04:48:35','2024-07-02 04:48:35'),
(2040,1530,2078,1516,2050,1,161,1080,0,75,'2024-07-02 04:48:52','2024-07-02 04:48:52'),
(2041,1531,2079,1517,2051,3,63,7,0,75,'2024-07-02 04:49:11','2024-07-02 04:49:11'),
(2042,1532,2080,1518,2052,1,163,5040,0,75,'2024-07-03 02:49:04','2024-07-03 02:49:04'),
(2043,1533,2081,1519,2053,1,163,7992,0,75,'2024-07-03 02:49:27','2024-07-03 02:49:27'),
(2044,1534,2082,1520,2054,1,163,2592,0,75,'2024-07-03 03:25:34','2024-07-03 03:25:34'),
(2045,1535,2083,1521,2055,1,163,792,0,75,'2024-07-03 03:25:54','2024-07-03 03:25:54'),
(2046,1536,2084,1522,2056,1,163,1368,0,75,'2024-07-03 03:26:10','2024-07-03 03:26:10'),
(2047,1537,2085,1523,2057,1,163,432,0,75,'2024-07-03 03:26:26','2024-07-03 03:26:26'),
(2048,1538,2086,1524,2058,1,163,720,0,75,'2024-07-03 03:26:41','2024-07-03 03:26:41'),
(2049,1539,2087,1525,2059,1,163,720,0,75,'2024-07-03 03:27:10','2024-07-03 03:27:10'),
(2050,1540,2088,1526,2060,1,161,576,0,75,'2024-07-03 04:19:12','2024-07-03 04:19:12'),
(2051,1541,2089,1527,2061,1,161,720,0,75,'2024-07-03 04:19:32','2024-07-03 04:19:32'),
(2052,1542,2090,1528,2062,1,161,720,0,75,'2024-07-03 04:19:49','2024-07-03 04:19:49'),
(2053,1543,2091,1529,2063,1,161,2880,0,75,'2024-07-03 04:20:09','2024-07-03 04:20:09'),
(2054,1544,2092,1530,2064,1,161,2880,0,75,'2024-07-03 04:20:33','2024-07-03 04:20:33'),
(2055,1545,2093,1531,2065,1,161,4320,0,75,'2024-07-03 04:20:52','2024-07-03 04:20:52'),
(2056,1546,2094,1532,2066,1,161,3744,0,75,'2024-07-03 04:21:12','2024-07-03 04:21:12'),
(2057,1547,2095,1533,2067,1,161,3168,0,75,'2024-07-03 04:21:36','2024-07-03 04:21:36'),
(2058,1548,2096,1534,2068,1,161,3600,0,75,'2024-07-03 04:22:48','2024-07-03 04:22:48'),
(2059,1549,2097,1535,2069,1,161,2880,0,75,'2024-07-03 04:23:09','2024-07-03 04:23:09'),
(2060,1550,2098,1536,2070,1,163,1008,0,75,'2024-07-04 03:15:56','2024-07-04 03:15:56'),
(2061,1551,2099,1537,2071,1,163,1800,0,75,'2024-07-04 03:16:14','2024-07-04 03:16:14'),
(2062,1552,2100,1538,2072,1,163,1080,0,75,'2024-07-04 03:16:31','2024-07-04 03:16:31'),
(2063,1553,2101,1539,2073,1,163,6552,0,75,'2024-07-04 03:16:49','2024-07-04 03:16:49'),
(2064,1554,2102,1540,2074,1,163,1224,0,75,'2024-07-04 03:17:07','2024-07-04 03:17:07'),
(2065,1555,2103,1541,2075,1,163,1440,0,75,'2024-07-04 03:17:28','2024-07-04 03:17:28'),
(2066,1556,2104,1542,2076,1,163,2880,0,75,'2024-07-04 03:17:45','2024-07-04 03:17:45'),
(2067,1557,2105,1543,2077,1,161,5040,0,75,'2024-07-04 03:47:21','2024-07-04 03:47:21'),
(2068,1558,2106,1544,2078,1,161,4536,0,75,'2024-07-04 03:47:42','2024-07-04 03:47:42'),
(2069,1559,2107,1545,2079,1,161,2520,0,75,'2024-07-04 03:48:02','2024-07-04 03:48:02'),
(2070,1560,2108,1546,2080,1,161,2016,0,75,'2024-07-04 03:48:23','2024-07-04 03:48:23'),
(2071,1561,2109,1547,2081,1,161,504,0,75,'2024-07-04 03:48:44','2024-07-04 03:48:44'),
(2072,1562,2110,1548,2082,1,161,648,0,75,'2024-07-04 03:50:36','2024-07-04 03:50:36'),
(2073,1563,2111,1549,2083,3,1246,144,0,75,'2024-07-04 07:44:12','2024-07-04 07:44:12'),
(2074,1564,2112,1550,2084,1,161,720,0,75,'2024-07-04 07:44:39','2024-07-04 07:44:39'),
(2075,1565,2113,1551,2085,1,161,3528,0,75,'2024-07-04 07:44:59','2024-07-04 07:44:59'),
(2076,1566,2114,1552,2086,1,161,2520,0,75,'2024-07-04 07:45:18','2024-07-04 07:45:18'),
(2077,1567,2115,1553,2087,1,163,5760,0,75,'2024-07-08 03:20:03','2024-07-08 03:20:03'),
(2078,1568,2116,1554,2088,1,163,2592,0,75,'2024-07-08 03:20:34','2024-07-08 03:20:34'),
(2079,1569,2117,1555,2089,1,163,1296,0,75,'2024-07-08 03:20:58','2024-07-08 03:20:58'),
(2080,1570,2118,1556,2090,1,163,648,0,75,'2024-07-08 03:21:49','2024-07-08 03:21:49'),
(2081,1571,2119,1557,2091,1,163,3312,0,75,'2024-07-08 03:22:08','2024-07-08 03:22:08'),
(2082,1572,2120,1558,2092,1,163,1584,0,75,'2024-07-08 03:22:24','2024-07-08 03:22:24'),
(2083,1573,2121,1559,2093,1,161,360,0,75,'2024-07-09 03:02:02','2024-07-09 03:02:02'),
(2084,1573,2122,1559,2094,1,161,504,0,75,'2024-07-09 03:02:02','2024-07-09 03:02:02'),
(2085,1574,2123,1560,2095,1,161,2592,0,75,'2024-07-09 03:02:17','2024-07-09 03:02:17'),
(2086,1575,2124,1561,2096,1,161,576,0,75,'2024-07-09 03:54:28','2024-07-09 03:54:28'),
(2087,1576,2125,1562,2097,1,161,720,0,75,'2024-07-10 02:54:52','2024-07-10 02:54:52'),
(2088,1577,2126,1563,2098,1,161,864,0,75,'2024-07-10 02:55:09','2024-07-10 02:55:09'),
(2089,1578,2127,1564,2099,1,161,720,0,75,'2024-07-10 02:55:25','2024-07-10 02:55:25'),
(2090,1579,2128,1565,2100,1,161,5760,0,75,'2024-07-11 03:00:51','2024-07-11 03:00:51'),
(2091,1580,2129,1566,2101,1,161,720,0,75,'2024-07-11 03:01:11','2024-07-11 03:01:11'),
(2092,1581,2130,1567,2102,1,161,2880,0,75,'2024-07-11 03:10:49','2024-07-11 03:10:49'),
(2093,1582,2131,1568,2103,1,161,3528,0,75,'2024-07-11 03:11:10','2024-07-11 03:11:10'),
(2094,1583,2132,1569,2104,1,161,2016,0,75,'2024-07-11 03:11:28','2024-07-11 03:11:28'),
(2095,1584,2133,1570,2105,1,161,4248,0,75,'2024-07-11 03:12:07','2024-07-11 03:12:07'),
(2096,1585,2134,1571,2106,1,161,2016,0,75,'2024-07-11 03:12:25','2024-07-11 03:12:25'),
(2097,1586,2135,1572,2107,1,161,4248,0,75,'2024-07-11 03:12:41','2024-07-11 03:12:41'),
(2098,1587,2136,1573,2108,1,160,504,0,75,'2024-07-11 03:35:11','2024-07-11 03:35:11'),
(2099,1588,2137,1574,2109,1,159,7056,0,75,'2024-07-11 03:35:30','2024-07-11 03:35:30'),
(2100,1589,2138,1575,2110,1,159,1008,0,75,'2024-07-11 03:35:49','2024-07-11 03:35:49'),
(2101,1590,2139,1576,2111,1,159,2952,0,75,'2024-07-11 03:36:41','2024-07-11 03:36:41'),
(2102,1590,2140,1576,2112,1,160,2592,0,75,'2024-07-11 03:36:41','2024-07-11 03:36:41'),
(2103,1591,2141,1577,2113,1,160,1800,0,75,'2024-07-12 02:50:38','2024-07-12 02:50:38'),
(2104,1592,2142,1578,2114,1,160,2520,0,75,'2024-07-12 02:50:58','2024-07-12 02:50:58'),
(2105,1593,2143,1579,2115,1,160,2808,0,75,'2024-07-15 03:21:36','2024-07-15 03:21:36'),
(2106,1594,2144,1580,2116,1,160,2376,0,75,'2024-07-15 03:21:53','2024-07-15 03:21:53'),
(2107,1595,2145,1581,2117,1,160,1728,0,75,'2024-07-15 03:22:16','2024-07-15 03:22:16'),
(2108,1596,2146,1582,2118,1,160,1728,0,75,'2024-07-15 03:22:33','2024-07-15 03:22:33'),
(2109,1597,2147,1583,2119,1,160,2376,0,75,'2024-07-15 03:36:19','2024-07-15 03:36:19'),
(2110,1598,2148,1584,2120,1,160,6480,0,75,'2024-07-15 03:36:35','2024-07-15 03:36:35'),
(2111,1599,2149,1585,2121,1,160,2592,0,75,'2024-07-15 03:36:53','2024-07-15 03:36:53'),
(2112,1600,2150,1586,2122,1,160,2160,0,75,'2024-07-15 03:37:09','2024-07-15 03:37:09'),
(2113,1601,2151,1587,2123,1,160,792,0,75,'2024-07-15 04:21:53','2024-07-15 04:21:53'),
(2114,1602,2152,1588,2124,1,160,11664,0,75,'2024-07-15 04:22:10','2024-07-15 04:22:10'),
(2115,1603,2153,1589,2125,1,160,864,0,75,'2024-07-15 04:22:27','2024-07-15 04:22:27'),
(2116,1604,2154,1590,2126,1,160,720,0,75,'2024-07-17 04:32:06','2024-07-17 04:32:06'),
(2117,1605,2155,1591,2127,1,160,9504,0,75,'2024-07-17 04:32:43','2024-07-17 04:32:43'),
(2118,1606,2156,1592,2128,1,160,6480,0,75,'2024-07-17 04:41:37','2024-07-17 04:41:37'),
(2119,1607,2157,1593,2129,1,160,2376,0,75,'2024-07-17 04:50:23','2024-07-17 04:50:23'),
(2120,1608,2158,1594,2130,1,160,1296,0,75,'2024-07-17 06:08:10','2024-07-17 06:08:10'),
(2121,1609,2159,1595,2131,1,160,3888,0,75,'2024-07-17 06:08:39','2024-07-17 06:08:39'),
(2122,1610,2160,1596,2132,1,160,7776,0,75,'2024-07-17 06:09:12','2024-07-17 06:09:12'),
(2123,1611,2161,1597,2133,1,160,648,0,75,'2024-07-17 06:09:41','2024-07-17 06:09:41'),
(2124,1612,2162,1598,2134,1,160,144,0,75,'2024-07-17 06:10:50','2024-07-17 06:10:50'),
(2125,1612,2163,1598,2135,3,82,1,0,75,'2024-07-17 06:10:50','2024-07-17 06:10:50'),
(2126,1612,2164,1598,2136,3,62,5,0,75,'2024-07-17 06:10:50','2024-07-17 06:10:50'),
(2127,1613,2165,1599,2137,1,160,144,0,75,'2024-07-17 06:11:25','2024-07-17 06:11:25'),
(2128,1613,2166,1599,2138,3,1246,14,0,75,'2024-07-17 06:11:25','2024-07-17 06:11:25'),
(2129,1614,2167,1600,2139,1,160,4752,0,75,'2024-07-17 06:11:51','2024-07-17 06:11:51'),
(2130,1615,2168,1601,2140,1,160,720,0,75,'2024-07-17 06:12:38','2024-07-17 06:12:38'),
(2131,1616,2169,1602,2141,1,45,3024,0,75,'2024-07-25 02:47:21','2024-07-25 02:47:21'),
(2132,1617,2170,1603,2142,1,45,2592,0,75,'2024-07-25 02:47:44','2024-07-25 02:47:44'),
(2133,1618,2171,1604,2143,1,45,720,0,75,'2024-07-25 02:48:03','2024-07-25 02:48:03'),
(2134,1619,2172,1605,2144,1,45,936,0,75,'2024-07-25 02:48:25','2024-07-25 02:48:25'),
(2135,1620,2173,1606,2145,1,45,2880,0,75,'2024-07-25 02:48:45','2024-07-25 02:48:45'),
(2136,1621,2174,1607,2146,1,45,1008,0,75,'2024-07-25 03:07:02','2024-07-25 03:07:02'),
(2137,1622,2175,1608,2147,1,45,720,0,75,'2024-07-25 03:07:22','2024-07-25 03:07:22'),
(2138,1623,2176,1609,2148,1,45,6336,0,75,'2024-07-25 03:07:45','2024-07-25 03:07:45'),
(2139,1624,2177,1610,2149,1,45,1008,0,75,'2024-07-25 04:42:14','2024-07-25 04:42:14'),
(2140,1625,2178,1611,2150,1,45,2088,0,75,'2024-07-25 04:42:50','2024-07-25 04:42:50'),
(2141,1625,2179,1611,2151,1,2,2448,0,75,'2024-07-25 04:42:50','2024-07-25 04:42:50'),
(2142,1626,2180,1612,2152,1,2,1800,0,75,'2024-07-25 04:43:17','2024-07-25 04:43:17'),
(2143,1627,2181,1613,2153,1,2,3528,0,75,'2024-07-25 04:43:37','2024-07-25 04:43:37'),
(2144,1628,2182,1614,2154,1,2,3168,0,75,'2024-07-25 04:43:59','2024-07-25 04:43:59'),
(2145,1629,2183,1615,2155,1,2,1008,0,75,'2024-07-25 04:44:17','2024-07-25 04:44:17'),
(2146,1630,2184,1616,2156,1,2,1008,0,75,'2024-07-25 04:44:39','2024-07-25 04:44:39'),
(2147,1631,2185,1617,2157,1,45,1800,0,75,'2024-07-25 06:42:50','2024-07-25 06:42:50'),
(2148,1632,2186,1618,2158,1,45,1440,0,75,'2024-07-25 06:43:11','2024-07-25 06:43:11'),
(2149,1633,2187,1619,2159,1,2,2016,0,75,'2024-07-26 03:03:39','2024-07-26 03:03:39'),
(2150,1634,2188,1620,2160,1,2,1728,0,75,'2024-07-26 03:04:01','2024-07-26 03:04:01'),
(2151,1635,2189,1621,2161,1,2,720,0,75,'2024-07-26 03:04:25','2024-07-26 03:04:25'),
(2152,1636,2190,1622,2162,1,2,720,0,75,'2024-07-26 03:04:44','2024-07-26 03:04:44'),
(2153,1637,2191,1623,2163,1,2,288,0,75,'2024-07-26 03:19:00','2024-07-26 03:19:00'),
(2154,1638,2192,1624,2164,1,2,720,0,75,'2024-07-26 03:19:52','2024-07-26 03:19:52'),
(2155,1639,2193,1625,2165,1,2,2592,0,75,'2024-07-26 03:20:23','2024-07-26 03:20:23'),
(2156,1640,2194,1626,2166,1,2,4032,0,75,'2024-07-26 04:02:09','2024-07-26 04:02:09'),
(2157,1641,2195,1627,2167,1,2,3960,0,75,'2024-07-26 04:03:03','2024-07-26 04:03:03'),
(2158,1642,2196,1628,2168,1,2,360,0,75,'2024-07-26 04:06:06','2024-07-26 04:06:06'),
(2159,1643,2197,1629,2169,1,2,1728,0,75,'2024-07-29 03:49:02','2024-07-29 03:49:02'),
(2160,1644,2198,1630,2170,1,2,1584,0,75,'2024-07-29 03:49:20','2024-07-29 03:49:20'),
(2161,1645,2199,1631,2171,1,2,1584,0,75,'2024-07-29 04:18:59','2024-07-29 04:18:59'),
(2162,1646,2200,1632,2172,1,2,4752,0,75,'2024-07-29 04:19:27','2024-07-29 04:19:27'),
(2163,1647,2201,1633,2173,1,2,1368,0,75,'2024-07-29 04:19:50','2024-07-29 04:19:50'),
(2164,1648,2202,1634,2174,1,2,1296,0,75,'2024-07-29 04:20:13','2024-07-29 04:20:13'),
(2165,1649,2203,1635,2175,1,2,720,0,75,'2024-07-29 04:20:35','2024-07-29 04:20:35'),
(2166,1650,2204,1636,2176,1,2,3600,0,75,'2024-07-29 04:21:02','2024-07-29 04:21:02'),
(2167,1651,2205,1637,2177,1,2,1944,0,75,'2024-07-29 04:38:19','2024-07-29 04:38:19'),
(2168,1652,2206,1638,2178,1,2,1296,0,75,'2024-07-29 04:38:44','2024-07-29 04:38:44'),
(2169,1653,2207,1639,2179,1,2,5760,0,75,'2024-07-29 04:39:28','2024-07-29 04:39:28'),
(2170,1654,2208,1640,2180,1,2,1872,0,75,'2024-07-29 04:40:11','2024-07-29 04:40:11'),
(2171,1655,2209,1641,2181,1,2,1584,0,75,'2024-07-29 04:40:32','2024-07-29 04:40:32'),
(2172,1656,2210,1642,2182,1,2,1440,0,75,'2024-07-29 06:11:03','2024-07-29 06:11:03'),
(2173,1657,2211,1643,2183,1,2,1656,0,75,'2024-07-29 06:11:23','2024-07-29 06:11:23'),
(2174,1658,2212,1644,2184,1,2,1152,0,75,'2024-07-30 03:21:40','2024-07-30 03:21:40'),
(2175,1659,2213,1645,2185,3,46,144,0,75,'2024-07-30 03:22:14','2024-07-30 03:22:14'),
(2176,1660,2214,1646,2186,1,2,1224,0,75,'2024-07-30 03:22:46','2024-07-30 03:22:46'),
(2177,1661,2215,1647,2187,1,2,720,0,75,'2024-07-30 03:23:09','2024-07-30 03:23:09'),
(2178,1662,2216,1648,2188,1,2,4320,0,75,'2024-07-30 03:23:31','2024-07-30 03:23:31'),
(2179,1663,2217,1649,2189,1,2,1152,0,75,'2024-07-31 03:07:15','2024-07-31 03:07:15'),
(2180,1664,2218,1650,2190,1,2,2304,0,75,'2024-07-31 03:07:33','2024-07-31 03:07:33'),
(2181,1665,2219,1651,2191,1,2,3888,0,75,'2024-07-31 03:27:48','2024-07-31 03:27:48'),
(2182,1666,2220,1652,2192,1,2,2736,0,75,'2024-07-31 03:28:08','2024-07-31 03:28:08'),
(2183,1667,2221,1653,2193,1,2,1944,0,75,'2024-07-31 03:32:06','2024-07-31 03:32:06'),
(2184,1668,2222,1654,2194,1,2,2592,0,75,'2024-07-31 03:32:56','2024-07-31 03:32:56'),
(2185,1669,2223,1655,2195,1,2,1584,0,75,'2024-07-31 03:33:14','2024-07-31 03:33:14'),
(2186,1670,2224,1656,2196,1,2,936,0,75,'2024-07-31 03:33:35','2024-07-31 03:33:35'),
(2187,1671,2225,1657,2197,1,2,1584,0,75,'2024-07-31 03:33:55','2024-07-31 03:33:55'),
(2188,1672,2226,1658,2198,1,2,576,0,75,'2024-07-31 03:48:05','2024-07-31 03:48:05'),
(2189,1673,2227,1659,2199,1,2,1728,0,75,'2024-07-31 03:48:43','2024-07-31 03:48:43'),
(2190,1674,2228,1660,2200,1,2,720,0,75,'2024-07-31 03:49:25','2024-07-31 03:49:25'),
(2191,1675,2229,1661,2201,1,2,936,0,75,'2024-08-01 03:13:59','2024-08-01 03:13:59'),
(2192,1676,2230,1662,2202,1,2,3024,0,75,'2024-08-01 03:14:17','2024-08-01 03:14:17'),
(2193,1677,2231,1663,2203,1,2,1008,0,75,'2024-08-01 03:14:32','2024-08-01 03:14:32'),
(2194,1678,2232,1664,2204,1,2,1296,0,75,'2024-08-01 03:14:48','2024-08-01 03:14:48'),
(2195,1679,2233,1665,2205,1,2,2016,0,75,'2024-08-01 03:15:10','2024-08-01 03:15:10'),
(2196,1680,2234,1666,2206,1,2,864,0,75,'2024-08-01 03:15:39','2024-08-01 03:15:39'),
(2197,1680,2235,1666,2207,1,42,3960,0,75,'2024-08-01 03:15:39','2024-08-01 03:15:39'),
(2198,1681,2236,1667,2208,1,42,1440,0,75,'2024-08-01 03:15:56','2024-08-01 03:15:56'),
(2199,1682,2237,1668,2209,1,42,3528,0,75,'2024-08-01 03:39:24','2024-08-01 03:39:24'),
(2200,1683,2238,1669,2210,1,42,1512,0,75,'2024-08-01 03:39:50','2024-08-01 03:39:50'),
(2201,1684,2239,1670,2211,1,42,2880,0,75,'2024-08-01 03:40:20','2024-08-01 03:40:20'),
(2202,1685,2240,1671,2212,1,42,1512,0,75,'2024-08-01 03:40:44','2024-08-01 03:40:44'),
(2203,1686,2241,1672,2213,1,42,2520,0,75,'2024-08-01 03:41:14','2024-08-01 03:41:14'),
(2204,1687,2242,1673,2214,1,42,2016,0,75,'2024-08-01 03:41:45','2024-08-01 03:41:45'),
(2205,1688,2243,1674,2215,1,42,1440,0,75,'2024-08-01 03:52:40','2024-08-01 03:52:40'),
(2206,1689,2244,1675,2216,1,42,1800,0,75,'2024-08-01 03:53:02','2024-08-01 03:53:02'),
(2207,1690,2245,1676,2217,1,42,3600,0,75,'2024-08-01 03:53:26','2024-08-01 03:53:26'),
(2208,1691,2246,1677,2218,1,42,288,0,75,'2024-08-02 03:33:52','2024-08-02 03:33:52'),
(2209,1692,2247,1678,2219,1,42,2808,0,75,'2024-08-02 03:45:58','2024-08-02 03:45:58'),
(2210,1693,2248,1679,2220,1,42,720,0,75,'2024-08-02 03:46:17','2024-08-02 03:46:17'),
(2211,1694,2249,1680,2221,1,42,1800,0,75,'2024-08-02 03:46:34','2024-08-02 03:46:34'),
(2212,1695,2250,1682,2223,3,456,50,1,3,'2024-10-17 05:29:52','2024-10-17 05:32:50'),
(2213,1696,2251,1683,2224,5,459,10,0,3,'2024-10-17 05:32:38','2024-10-17 05:32:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_invoice` */

insert  into `sales_invoice`(`sales_invoice_id`,`branch_id`,`warehouse_id`,`customer_id`,`sales_order_id`,`sales_delivery_note_id`,`collection_method_account_id`,`services_income_id`,`sales_invoice_no`,`sales_invoice_reference_no`,`sales_invoice_date`,`sales_invoice_due_date`,`sales_invoice_remark`,`sales_invoice_status`,`services_income_amount`,`subtotal_item`,`subtotal_amount`,`subtotal_before_discount`,`discount_percentage`,`discount_amount`,`return_status`,`subtotal_after_discount`,`tax_percentage`,`tax_amount`,`goods_received_note_no`,`faktur_tax_no`,`buyers_acknowledgment_id`,`buyers_acknowledgment_no`,`ttf_no`,`kwitansi_status`,`total_amount`,`paid_amount`,`owing_amount`,`shortover_amount`,`last_balance`,`total_discount_amount`,`paid_discount_amount`,`owing_discount_amount`,`shortover_discount_amount`,`discount_last_balance`,`cash_advance_amount`,`change_amount`,`sales_return_amount`,`sales_collection_date`,`sales_invoice_token`,`sales_invoice_token_void`,`voided_id`,`voided_on`,`voided_remark`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,8,176,1,1,0,0,'0001/TMO.ME/XII/2024','','2024-12-12','2024-12-12',NULL,0,0.00,100.00,166500,0,0.00,0,0,150000,0.00,16500.00,NULL,NULL,285,'1','',0,166500,0,166500,0,0,0,0,0,0,0,0,0,0.00,NULL,NULL,NULL,0,NULL,NULL,0,3,'2024-12-12 06:13:03','2024-12-12 06:13:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_invoice_item` */

insert  into `sales_invoice_item`(`sales_invoice_item_id`,`sales_invoice_id`,`sales_order_id`,`sales_delivery_note_id`,`sales_delivery_note_item_id`,`item_id`,`item_type_id`,`item_unit_id`,`quantity`,`item_unit_price`,`item_unit_price_tax`,`discount_A`,`discount_B`,`subtotal_price_A`,`subtotal_price_B`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,1,1,1,0,1,10,100,1500,0,0,NULL,150000,166500,0,3,'2024-12-12 06:13:03','2024-12-12 06:13:03');

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

/*Data for the table `sales_kwitansi` */

insert  into `sales_kwitansi`(`sales_kwitansi_id`,`sales_kwitansi_no`,`sales_tagihan_no`,`customer_id`,`start_date`,`end_date`,`sales_kwitansi_date`,`print_type`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(32,'0001/MO.ME/KMARGIN/I/2024','0001/MO.ME/TMARGIN/I/2024',1,'2024-01-20','2024-01-20','2024-01-20',NULL,0,75,'2024-01-20 04:21:53','2024-01-20 04:21:53'),
(33,'0002/MO.ME/KMARGIN/I/2024','0002/MO.ME/TMARGIN/I/2024',18,'2024-01-01','2024-01-20','2024-01-20',NULL,0,75,'2024-01-20 05:01:48','2024-01-20 05:01:48'),
(34,'0003/MO.ME/KMARGIN/I/2024','0003/MO.ME/TMARGIN/I/2024',18,'2024-01-01','2024-01-20','2024-01-20',NULL,0,75,'2024-01-20 05:29:31','2024-01-20 05:29:31'),
(35,'0004/MO.ME/KMARGIN/I/2024','0004/MO.ME/TMARGIN/I/2024',50,'2024-01-29','2024-01-29','2024-01-29',NULL,0,75,'2024-01-29 06:45:07','2024-01-29 06:45:07'),
(36,'0005/MO.ME/KMARGIN/I/2024','0005/MO.ME/TMARGIN/I/2024',50,'2024-01-29','2024-01-29','2024-01-29',NULL,0,75,'2024-01-29 06:46:29','2024-01-29 06:46:29'),
(37,'0006/MO.ME/KMARGIN/VI/2024','0006/MO.ME/TMARGIN/VI/2024',100,'2024-06-12','2024-06-12','2024-06-13',NULL,0,75,'2024-06-13 01:16:36','2024-06-13 01:16:36'),
(38,'0007/MO.ME/KMARGIN/VI/2024','0007/MO.ME/TMARGIN/VI/2024',100,'2024-06-12','2024-06-12','2024-06-13',NULL,0,75,'2024-06-13 01:18:17','2024-06-13 01:18:17'),
(39,'0008/MO.ME/KMARGIN/VI/2024','0008/MO.ME/TMARGIN/VI/2024',41,'2024-06-12','2024-06-12','2024-06-13',NULL,0,75,'2024-06-13 01:21:39','2024-06-13 01:21:39'),
(40,'0009/MO.ME/KMARGIN/VII/2024','0009/MO.ME/TMARGIN/VII/2024',100,'2024-01-01','2024-07-01','2024-07-01',NULL,0,75,'2024-07-01 09:32:06','2024-07-01 09:32:06'),
(41,'0010/MO.ME/KMARGIN/VII/2024','0010/MO.ME/TMARGIN/VII/2024',40,'2024-05-01','2024-07-23','2024-07-23',NULL,0,3,'2024-07-23 08:21:03','2024-07-23 08:21:03'),
(42,'0011/MO.ME/KMARGIN/VII/2024','0011/MO.ME/TMARGIN/VII/2024',1,'2024-05-01','2024-06-30','2024-07-30',NULL,0,75,'2024-07-30 07:11:42','2024-07-30 07:11:42'),
(43,'0012/MO.ME/KMARGIN/VII/2024','0012/MO.ME/TMARGIN/VII/2024',40,'2024-05-01','2024-06-30','2024-07-30',NULL,0,75,'2024-07-30 07:11:49','2024-07-30 07:11:49'),
(44,'0013/MO.ME/KMARGIN/VII/2024','0013/MO.ME/TMARGIN/VII/2024',40,'2024-06-01','2024-06-30','2024-07-30',NULL,0,75,'2024-07-30 07:25:18','2024-07-30 07:25:18'),
(45,'0014/MO.ME/KMARGIN/VIII/2024','0014/MO.ME/TMARGIN/VIII/2024',40,'2024-06-01','2024-06-30','2024-08-02',NULL,0,75,'2024-08-02 03:36:46','2024-08-02 03:36:46');

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

/*Data for the table `sales_kwitansi_item` */

insert  into `sales_kwitansi_item`(`sales_kwitansi_item_id`,`sales_kwitansi_id`,`sales_invoice_id`,`buyers_acknowledgment_id`,`checked`,`created_id`,`created_at`,`updated_at`) values 
(91,32,19,56,1,75,'2024-01-20','2024-01-20 04:21:53'),
(92,33,20,57,1,75,'2024-01-20','2024-01-20 05:01:48'),
(93,34,20,57,1,75,'2024-01-20','2024-01-20 05:29:31'),
(94,34,21,58,1,75,'2024-01-20','2024-01-20 05:29:31'),
(95,35,24,66,1,75,'2024-01-29','2024-01-29 06:45:07'),
(96,35,30,73,1,75,'2024-01-29','2024-01-29 06:45:07'),
(97,36,24,66,0,75,'2024-01-29','2024-01-29 06:46:29'),
(98,36,30,73,1,75,'2024-01-29','2024-01-29 06:46:29'),
(99,37,59,263,1,75,'2024-06-13','2024-06-13 01:16:36'),
(100,37,60,264,1,75,'2024-06-13','2024-06-13 01:16:36'),
(101,37,61,265,1,75,'2024-06-13','2024-06-13 01:16:36'),
(102,38,59,263,1,75,'2024-06-13','2024-06-13 01:18:17'),
(103,38,60,264,1,75,'2024-06-13','2024-06-13 01:18:17'),
(104,38,61,265,1,75,'2024-06-13','2024-06-13 01:18:17'),
(105,39,44,248,1,75,'2024-06-13','2024-06-13 01:21:39'),
(106,39,45,249,1,75,'2024-06-13','2024-06-13 01:21:39'),
(107,40,36,80,0,75,'2024-07-01','2024-07-01 09:32:06'),
(108,40,59,263,1,75,'2024-07-01','2024-07-01 09:32:06'),
(109,40,60,264,1,75,'2024-07-01','2024-07-01 09:32:06'),
(110,40,61,265,1,75,'2024-07-01','2024-07-01 09:32:06'),
(111,41,44,248,1,3,'2024-07-23','2024-07-23 08:21:03'),
(112,41,45,249,1,3,'2024-07-23','2024-07-23 08:21:03'),
(113,41,46,250,1,3,'2024-07-23','2024-07-23 08:21:03'),
(114,41,47,251,1,3,'2024-07-23','2024-07-23 08:21:03'),
(115,41,48,252,1,3,'2024-07-23','2024-07-23 08:21:03'),
(116,41,49,253,1,3,'2024-07-23','2024-07-23 08:21:03'),
(117,41,50,254,1,3,'2024-07-23','2024-07-23 08:21:03'),
(118,41,51,255,1,3,'2024-07-23','2024-07-23 08:21:03'),
(119,41,52,256,1,3,'2024-07-23','2024-07-23 08:21:03'),
(120,43,44,248,1,75,'2024-07-30','2024-07-30 07:11:49'),
(121,43,45,249,1,75,'2024-07-30','2024-07-30 07:11:49'),
(122,43,46,250,1,75,'2024-07-30','2024-07-30 07:11:49'),
(123,43,47,251,1,75,'2024-07-30','2024-07-30 07:11:49'),
(124,43,48,252,1,75,'2024-07-30','2024-07-30 07:11:49'),
(125,43,49,253,1,75,'2024-07-30','2024-07-30 07:11:49'),
(126,43,50,254,1,75,'2024-07-30','2024-07-30 07:11:49'),
(127,43,51,255,1,75,'2024-07-30','2024-07-30 07:11:49'),
(128,43,52,256,1,75,'2024-07-30','2024-07-30 07:11:49'),
(129,44,44,248,1,75,'2024-07-30','2024-07-30 07:25:18'),
(130,44,45,249,1,75,'2024-07-30','2024-07-30 07:25:18'),
(131,44,46,250,1,75,'2024-07-30','2024-07-30 07:25:18'),
(132,44,47,251,1,75,'2024-07-30','2024-07-30 07:25:18'),
(133,44,48,252,1,75,'2024-07-30','2024-07-30 07:25:18'),
(134,44,49,253,1,75,'2024-07-30','2024-07-30 07:25:18'),
(135,44,50,254,1,75,'2024-07-30','2024-07-30 07:25:18'),
(136,44,51,255,1,75,'2024-07-30','2024-07-30 07:25:18'),
(137,44,52,256,1,75,'2024-07-30','2024-07-30 07:25:18'),
(138,45,44,248,1,75,'2024-08-02','2024-08-02 03:36:46'),
(139,45,45,249,1,75,'2024-08-02','2024-08-02 03:36:46'),
(140,45,46,250,1,75,'2024-08-02','2024-08-02 03:36:46'),
(141,45,47,251,1,75,'2024-08-02','2024-08-02 03:36:46'),
(142,45,48,252,1,75,'2024-08-02','2024-08-02 03:36:46'),
(143,45,49,253,1,75,'2024-08-02','2024-08-02 03:36:46'),
(144,45,50,254,1,75,'2024-08-02','2024-08-02 03:36:46'),
(145,45,51,255,1,75,'2024-08-02','2024-08-02 03:36:46'),
(146,45,52,256,1,75,'2024-08-02','2024-08-02 03:36:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_order` */

insert  into `sales_order`(`sales_order_id`,`sales_order_type_id`,`customer_id`,`salesman_id`,`receipt_image`,`sales_order_no`,`purchase_order_no`,`sales_order_date`,`sales_order_delivery_date`,`sales_order_status`,`sales_order_over_limit`,`sales_order_over_due_status`,`purchase_order_status`,`work_order_status`,`purchase_requisition_status`,`sales_order_design_status`,`sales_delivery_order_status`,`customer_credit_limit_balance`,`sales_invoice_status`,`sales_invoice_last_balance`,`sales_order_remark`,`sales_order_over_remark`,`total_item`,`subtotal_before_discount`,`discount_percentage`,`discount_amount`,`subtotal_after_discount`,`ppn_out_percentage`,`ppn_out_amount`,`subtotal_after_ppn_out`,`sales_shipment_status`,`paid_amount`,`total_amount`,`last_balance`,`counter_edited`,`branch_id`,`data_state`,`created_id`,`created_at`,`approved`,`approved_id`,`approved_on`,`approved_remark`,`closed`,`closed_id`,`closed_on`,`closed_remark`,`voided_id`,`voided_on`,`voided_remark`,`customer_no`,`updated_at`) values 
(1,2,176,0,'','0001/SO/XII/2024','0','2024-12-09','2024-12-09',3,0.00,0,0,0,0,0,1,0.00,0,0.00,NULL,NULL,100.00,0.00,0.00,0.00,166500.00,0.00,0.00,166500.00,0,0.00,166500.00,0.00,0,1,0,0,'2024-12-09 08:09:54',1,0,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,'','2024-12-10 05:09:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_order_item` */

insert  into `sales_order_item`(`sales_order_item_id`,`sales_order_id`,`item_category_id`,`item_type_id`,`quantity`,`quantity_delivered`,`quantity_shipped`,`quantity_planned`,`quantity_outstanding`,`quantity_received`,`quantity_ordered`,`quantity_cavity`,`quantity_minimum`,`quantity_resulted`,`sales_order_item_status`,`item_substance_price`,`item_unit_id`,`item_unit_price`,`item_unit_price_adds`,`purchase_requisition_status`,`purchase_order_status`,`work_order_status`,`sales_delivery_order_status`,`sales_delivery_note_status`,`sales_invoice_status`,`quantity_minimum_status`,`subtotal_amount`,`subtotal_additional_amount`,`subtotal_item_amount`,`sales_order_no`,`sales_order_status`,`discount_percentage_item`,`discount_percentage_item_b`,`discount_amount_item`,`discount_amount_item_b`,`subtotal_after_discount_item_a`,`subtotal_after_discount_item_b`,`total_price_after_ppn_amount`,`ppn_amount_item`,`record_id`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,1,1,100.00,200.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0,0.00,10,1500.00,0.00,0,0,0,1,0,0,0,150000.00,0.00,0.00,'',0,0.00,NULL,0.00,NULL,150000.00,NULL,166500.00,16500.00,0,0,0,'2024-12-09 08:09:54','2024-12-09 09:00:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_quotation` */

insert  into `sales_quotation`(`sales_quotation_id`,`sales_quotation_type_id`,`customer_id`,`salesman_id`,`receipt_image`,`sales_quotation_no`,`sales_quotation_date`,`sales_quotation_due_date`,`sales_quotation_status`,`sales_quotation_over_limit`,`sales_quotation_over_due_status`,`work_order_status`,`purchase_requisition_status`,`sales_quotation_design_status`,`sales_delivery_order_status`,`customer_credit_limit_balance`,`sales_invoice_status`,`sales_invoice_last_balance`,`sales_quotation_remark`,`sales_quotation_over_remark`,`total_item`,`subtotal_before_discount`,`discount_percentage`,`discount_amount`,`subtotal_after_discount`,`ppn_out_percentage`,`ppn_out_amount`,`subtotal_after_ppn_out`,`sales_shipment_status`,`paid_amount`,`total_amount`,`last_balance`,`counter_edited`,`branch_id`,`data_state`,`created_id`,`created_at`,`approved`,`approved_id`,`approved_on`,`approved_remark`,`closed`,`closed_id`,`closed_on`,`closed_remark`,`voided_id`,`voided_on`,`voided_remark`,`customer_no`,`updated_at`) values 
(1,0,176,0,'','0001/QO/XII/2024','2024-12-09','2024-12-09',1,0.00,0,0,0,0,0,0.00,0,0.00,NULL,NULL,100.00,0.00,0.00,0.00,111000.00,0.00,0.00,111000.00,0,0.00,111000.00,0.00,0,1,0,0,'2024-12-09 08:00:10',2,0,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,'','2024-12-09 08:09:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sales_quotation_item` */

insert  into `sales_quotation_item`(`sales_quotation_item_id`,`sales_quotation_id`,`item_category_id`,`item_type_id`,`quantity`,`quantity_delivered`,`quantity_shipped`,`quantity_planned`,`quantity_outstanding`,`quantity_received`,`quantity_ordered`,`quantity_cavity`,`quantity_minimum`,`quantity_resulted`,`sales_quotation_item_status`,`item_substance_price`,`item_unit_id`,`item_unit_price`,`item_unit_price_adds`,`purchase_requisition_status`,`purchase_order_status`,`work_order_status`,`sales_delivery_order_status`,`sales_delivery_note_status`,`sales_invoice_status`,`quantity_minimum_status`,`subtotal_amount`,`subtotal_additional_amount`,`subtotal_item_amount`,`sales_quotation_no`,`sales_quotation_status`,`discount_percentage_item`,`discount_percentage_item_b`,`discount_amount_item`,`discount_amount_item_b`,`subtotal_after_discount_item_a`,`subtotal_after_discount_item_b`,`total_price_after_ppn_amount`,`ppn_amount_item`,`record_id`,`data_state`,`created_id`,`created_at`,`updated_at`) values 
(1,1,1,1,100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,100.00,0,0.00,10,1000.00,0.00,0,0,0,0,0,0,0,100000.00,0.00,0.00,'',0,0.00,NULL,0.00,NULL,100000.00,NULL,111000.00,11000.00,0,0,0,'2024-12-09 08:00:10','2024-12-09 08:00:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

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
(233,0,'administrator',2141,'1','SalesInvoice.printSalesInvoice','administrator','Print Sales Invoice','2024-12-12 14:17:58','2024-12-12 14:17:58','2024-12-12 14:17:58');

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
('311','customer','file',3,'Pelanggan',NULL,'2023-06-23 10:52:23'),
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
('61','#','folder',2,'Kas dan Bank',NULL,'2023-06-23 10:52:23'),
('611','cash-receipt','file',3,'Penerimaan Kas',NULL,'2023-06-23 10:52:23'),
('612','cash-disbursement','file',3,'Pengeluaran Kas',NULL,'2023-06-23 10:52:23'),
('613','bank-receipt','file',3,'Penerimaan Bank',NULL,'2023-06-23 10:52:23'),
('614','bank-disbursement','file',3,'Pengeluaran Bank',NULL,'2023-06-23 10:52:23'),
('615','check-receipt','file',3,'Penerimaan Giro',NULL,'2023-06-23 10:52:23'),
('616','check-disbursement','file',3,'Pengeluaran Giro',NULL,'2023-06-23 10:52:23'),
('617','purchase-payment','file',3,'Pelunasan Hutang',NULL,'2023-06-23 10:52:23'),
('618','sales-collection','file',3,'Pelunasan Piutang',NULL,'2023-06-23 10:52:23'),
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
) ENGINE=InnoDB AUTO_INCREMENT=1462 DEFAULT CHARSET=utf8mb3;

/*Data for the table `system_menu_mapping` */

insert  into `system_menu_mapping`(`menu_mapping_id`,`user_group_level`,`id_menu`,`created_at`,`updated_at`) values 
(1227,1,'0','2024-10-17 04:38:36','2024-10-17 04:38:36'),
(1400,1,'1','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1401,1,'11','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1402,1,'111','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1403,1,'112','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1404,1,'113','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1405,1,'115','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1406,1,'12','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1407,1,'121','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1408,1,'122','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1409,1,'14','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1410,1,'15','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1411,1,'16','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1412,1,'17','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1413,1,'2','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1414,1,'21','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1415,1,'211','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1416,1,'22','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1417,1,'221','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1418,1,'222','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1419,1,'23','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1420,1,'231','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1421,1,'24','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1422,1,'240','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1423,1,'241','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1424,1,'3','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1425,1,'31','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1426,1,'311','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1427,1,'32','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1428,1,'321','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1429,1,'322','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1430,1,'33','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1431,1,'331','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1432,1,'332','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1433,1,'34','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1434,1,'341','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1435,1,'35','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1436,1,'351','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1437,1,'36','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1438,1,'37','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1439,1,'4','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1440,1,'41','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1441,1,'411','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1442,1,'42','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1443,1,'421','2024-10-23 06:44:50','2024-10-23 06:44:50'),
(1444,1,'422','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1445,1,'45','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1446,1,'7','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1447,1,'71','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1448,1,'711','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1449,1,'72','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1450,1,'721','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1451,1,'73','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1452,1,'74','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1453,1,'75','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1454,1,'8','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1455,1,'81','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1456,1,'82','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1457,1,'9','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1458,1,'91','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1459,1,'92','2024-10-23 06:44:51','2024-10-23 06:44:51'),
(1460,1,'722','2024-12-12 11:42:09','2024-12-12 11:42:11'),
(1461,1,'712','2024-12-12 15:52:49','2024-12-12 15:52:51');

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

/*Data for the table `system_user` */

insert  into `system_user`(`user_id`,`user_group_id`,`name`,`branch_id`,`email`,`email_verified_at`,`password`,`remember_token`,`data_state`,`created_at`,`updated_at`) values 
(3,1,'administrator',1,NULL,NULL,'$2y$10$E8BvoK6I2D7CDzz/mjKmE.3LQ4AW4rdcpU1ynbVqXzZCZYEGOcH0O',NULL,0,'2021-09-18 02:14:46','2023-02-06 04:15:25'),
(65,25,'Rahmadani Isti, S.Farm, Apt.',1,NULL,NULL,'$2y$10$w6NE.bJminFOPTvhHOO5cuBHqQtwV8GY1I9WdpoWK/bJ33Ygu.Mce',NULL,0,'2023-03-01 06:54:47','2023-03-01 06:54:47'),
(71,25,'bagas',0,NULL,NULL,'$2y$10$gKb7Vms3fAVMBZOIYyggZ.ucYX0cWKBibb06Lwf7gpBEcMYn1xdp.',NULL,0,'2023-03-01 07:11:29','2023-03-01 07:11:29'),
(72,1,'acil',0,NULL,NULL,'$2y$10$IOKyAifkGZFziWn.Il9HZ.IrmAYTxFgPLMZRbQw0Pxka8/qD3uZFS',NULL,0,'2023-03-01 07:11:37','2023-03-01 07:11:37'),
(73,1,'farhan',0,NULL,NULL,'$2y$10$K1yF47tXDW3uC8mHnetpG.6KJ6P.IPvrEUS3CLfhOecq4EFjKUsxm',NULL,0,'2023-03-01 07:12:01','2023-03-01 07:12:01'),
(74,1,'CST',0,NULL,NULL,'$2y$10$W/ol3cfuXD7zLANAFb7VruOGrij5XsPDMZfpf9sPVPiTrkNiQaCJS',NULL,0,'2023-07-01 03:28:19','2023-07-01 03:28:51'),
(75,1,'PBF',1,NULL,NULL,'$2y$10$cW5W6gxZuW6DIulYsrj1QOIWRxqdidVMw.o0ss75rWEVrZi8xBSXe',NULL,0,'2023-07-03 02:26:08','2023-07-03 02:26:08');

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
(25,2,'APJ (Apoteker Penanggung Jawab)','',0,0,'2023-03-01 06:51:21',0,NULL,0,NULL,'2023-06-23 10:52:23');

/* Trigger structure for table `acct_bank_disbursement` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_acct_bank_disbursement` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_bank_disbursement` BEFORE INSERT ON `acct_bank_disbursement` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_bank_receipt` BEFORE INSERT ON `acct_bank_receipt` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_cash_disbursement` BEFORE INSERT ON `acct_cash_disbursement` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_cash_receipt` BEFORE INSERT ON `acct_cash_receipt` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_check_disbursement` BEFORE INSERT ON `acct_check_disbursement` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_check_receipt` BEFORE INSERT ON `acct_check_receipt` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_journal_voucher` BEFORE INSERT ON `acct_journal_voucher` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_acct_journal_voucher_item` BEFORE INSERT ON `acct_journal_voucher_item` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_goods_received_note` BEFORE INSERT ON `inv_goods_received_note` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_item_stock_card_in` AFTER INSERT ON `inv_goods_received_note_item` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_warehouse_in` BEFORE INSERT ON `inv_warehouse_in` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_warehouse_out` BEFORE INSERT ON `inv_warehouse_out` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_warehouse_transfer` BEFORE INSERT ON `inv_warehouse_transfer` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_inv_warehouse_transfer_received_note` BEFORE INSERT ON `inv_warehouse_transfer_received_note` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_purchase_invoice` BEFORE INSERT ON `purchase_invoice` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_purchase_order` BEFORE INSERT ON `purchase_order` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_purchase_order_return` BEFORE INSERT ON `purchase_order_return` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_purchase_payment` BEFORE INSERT ON `purchase_payment` FOR EACH ROW BEGIN
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

/* Trigger structure for table `sales_collection` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_collection` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_collection` BEFORE INSERT ON `sales_collection` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesCollectionNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesCollectionNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.collection_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.collection_date)), 2));
	
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
		
	SET PERIOD = (SELECT LEFT(TRIM(collection_no), 4) 
			FROM sales_collection
			WHERE RIGHT(TRIM(collection_no), 4) = year_period
			ORDER BY collection_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesCollectionNo = CONCAT(PERIOD, '/PP/', monthPeriod, '/', year_period);
		
	SET new.collection_no = nSalesCollectionNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_collection_discount` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_collection_discount` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_collection_discount` BEFORE INSERT ON `sales_collection_discount` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesCollectionNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesCollectionNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.collection_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.collection_date)), 2));
	
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
		
	SET PERIOD = (SELECT LEFT(TRIM(collection_no), 4) 
			FROM `sales_collection_discount`
			WHERE RIGHT(TRIM(collection_no), 4) = year_period
			ORDER BY collection_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesCollectionNo = CONCAT(PERIOD, '/PPD/', monthPeriod, '/', year_period);
		
	SET new.collection_no = nSalesCollectionNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_delivery_note` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_delivery_note` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_delivery_note` BEFORE INSERT ON `sales_delivery_note` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_delivery_order` BEFORE INSERT ON `sales_delivery_order` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_invoice` BEFORE INSERT ON `sales_invoice` FOR EACH ROW BEGIN
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

/* Trigger structure for table `sales_kwitansi` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_kwitansi` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_kwitansi` BEFORE INSERT ON `sales_kwitansi` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(255);
	DECLARE month_period 		VARCHAR(255);
	DECLARE PERIOD 			VARCHAR(255);
	DECLARE tPeriod			INT;
	DECLARE nSalesInvoiceNo		VARCHAR(255);
	DECLARE nSalesTagihanNo		VARCHAR(255);
	DECLARE monthPeriod		VARCHAR(255);
	DECLARE lenSalesInvoiceNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_kwitansi_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_kwitansi_date)), 2));
	
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
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_kwitansi_no), 4) 
			FROM sales_kwitansi
			WHERE RIGHT(TRIM(sales_kwitansi_no), 4) = year_period
			ORDER BY sales_kwitansi_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesInvoiceNo = CONCAT(PERIOD, '/MO.ME/KMARGIN/', monthPeriod, '/', year_period);
	SET nSalesTagihanNo = CONCAT(PERIOD, '/MO.ME/TMARGIN/', monthPeriod, '/', year_period);
		
	SET new.sales_kwitansi_no = nSalesInvoiceNo;
	SET new.sales_tagihan_no  = nSalesTagihanNo;
    END */$$


DELIMITER ;

/* Trigger structure for table `sales_order` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_sales_order` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_order` BEFORE INSERT ON `sales_order` FOR EACH ROW BEGIN
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

/*!50003 CREATE */ /*!50003 TRIGGER `insert_sales_quotation` BEFORE INSERT ON `sales_quotation` FOR EACH ROW BEGIN
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
