/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.6.19-MariaDB : Database - ciptaprocpanel_triptatritunggal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ciptaprocpanel_triptatritunggal` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `ciptaprocpanel_triptatritunggal`;

/*Table structure for table `acct_account` */

DROP TABLE IF EXISTS `acct_account`;

CREATE TABLE `acct_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `account_code` varchar(225) DEFAULT NULL,
  `account_name` varchar(225) DEFAULT NULL,
  `account_group` varchar(225) DEFAULT NULL,
  `account_suspended` int(11) DEFAULT 0,
  `account_default_status` int(11) DEFAULT 0,
  `account_remark` varchar(225) DEFAULT NULL,
  `account_status` int(11) DEFAULT 0,
  `account_token` varchar(225) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `data_state` int(11) DEFAULT 0,
  `created_id` int(11) DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `acct_account` */

insert  into `acct_account`(`account_id`,`company_id`,`account_code`,`account_name`,`account_group`,`account_suspended`,`account_default_status`,`account_remark`,`account_status`,`account_token`,`account_type_id`,`data_state`,`created_id`,`updated_id`,`created_at`,`updated_at`) values 
(1,2,'100','ASET','100',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(2,2,'101.00','ASET LANCAR','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(3,2,'101.00.1','KAS BESAR','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(4,2,'101.00.2','KAS KECIL','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(5,2,'101.00.3','KAS DI BANK','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(6,2,'101.00.4','Piutang Dagang','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(7,2,'101.00.5','Piutang Lain Lain','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(8,2,'101.00.6','Persediaan Barang','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(9,2,'101.00.7','Biaya/Kontribusi Dibayar Dimuka','101.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(10,2,'102','Aset Tidak Lancar','102',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(11,2,'102.01','ASET TETAP','102.00',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(12,2,'102.01.01','Aset Furniture','102.01',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(13,2,'102.01.02','Aset Peralatan Masak','102.02',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(14,2,'102.01.03','Depresiasi Akumulasi Aset','102.03',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(15,2,'200.01','Liabilitas dan Ekuitas','200.01',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(16,2,'200.01.1','Utang Lancar','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(17,2,'200.01.2','Utang Jangka Panjang','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(18,2,'200.01.3','MODAL/EKUITAS','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(19,2,'200.01.4','Modal','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(20,2,'200.01.5','Modal Belum Disetor','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(21,2,'200.01.6','Modal Disetor','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(22,2,'200.01.7','Saldo Laba','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(23,2,'200.01.8','Saldo Laba Tahun Lalu','200.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(24,2,'200.01.9','Laba/Rugi Bersih Tahun Berjalan','200.01',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(25,2,'300','Pendapatan Usaha','300',0,1,'',1,'',2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(26,2,'300.01','PENJUALAN','300.01',0,1,'',1,'',2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(27,2,'300.01.1','Penjualan Bahan Baku','300.01',0,1,'',1,'',2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(28,2,'300.01.2','Pendapatan Penjualan','300.01',0,1,'',1,'',2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(29,2,'300.01.3','Harga pokok Penjualan','300.01',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(30,2,'400','BEBAN OPERASIONAL','400',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(31,2,'400.01','Beban Usaha','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(32,2,'400.01.01','Beban Tenaga Kerja','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(33,2,'400.01.02','Pembayaran Listrik + PAM + WIFI','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(34,2,'400.01.03','KEPERLUAN PERALATAN DAPUR','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(35,2,'400.01.04','Beban Operasional Lainnya','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(36,2,'400.01.05','PEMBELIAN BARANG DAGANGAN','400.01',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(37,2,'400.01.06','PEMBELIAN BAHAN MINUMAN','400.01',0,0,'',0,'',3,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(38,2,'400.01.07','PEMBELIAN PENDUKUNG','400.01',0,0,'',0,'',1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(39,2,'400.01.08','LISTRIK + PAM + WIFI','400.01',0,0,'',0,'',1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(40,2,'400.01.09','GAS','400.01',0,0,'',0,'',1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(41,2,'400.01.10','TENAGA KERJA','400.01',0,0,'',0,'',1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(42,2,'400.01.11','MARKETING','400.01',0,0,'',0,'',1,0,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(43,2,'400.01.12','PENGELUARAN LAIN-LAIN','400.01',0,0,'',0,'',1,1,61,61,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(44,2,'400.01.13','RETUR PEMBELIAN','400.01',0,1,'',1,'',1,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(45,2,'400.02','BEBAN NON OPERASIONAL','400.02',0,0,'',0,'',0,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(46,2,'400.02.01','Pendapatan Lain Lain','400.02',0,1,'',1,'',2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(47,2,'400.02.02','Beban Lain-Lain','400.02',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(48,2,'400.02.03','Pajak','400.02',0,0,'',0,'',3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(49,2,'400.02.04','Transportasi/Parkir','400.02',0,0,NULL,0,NULL,3,0,55,55,NULL,NULL),
(50,2,'400.02.05','Konsumsi','400.02',0,0,NULL,0,NULL,3,0,55,55,NULL,NULL),
(51,2,'400.02.06','Utang PPN','400.02',0,1,NULL,1,NULL,3,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(52,2,'300.01.4','Pendapatan Konsinyasi','300.01',0,1,NULL,1,NULL,2,0,55,55,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(53,2,'400.01.10','KEPERLUAN ATK','400.01',0,0,NULL,0,NULL,3,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(54,2,'400.02.04','Pembayaran Pajak','400.02',0,0,NULL,0,NULL,3,0,NULL,NULL,NULL,NULL),
(55,2,'400.01.15','TRF Ciomas','400.01',0,0,NULL,0,NULL,3,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00'),
(56,2,'300.01.7','Bu Tomo','300.01',0,1,NULL,1,NULL,2,0,67,67,'2024-05-15 10:30:00','2024-05-15 10:30:00');

/*Table structure for table `acct_balance_sheet_report` */

DROP TABLE IF EXISTS `acct_balance_sheet_report`;

CREATE TABLE `acct_balance_sheet_report` (
  `balance_sheet_report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `report_no` int(11) DEFAULT 0,
  `account_id1` int(11) DEFAULT 0,
  `account_code1` varchar(20) DEFAULT '',
  `account_name1` varchar(100) DEFAULT '',
  `account_id2` int(11) DEFAULT 0,
  `account_code2` varchar(20) DEFAULT '',
  `account_name2` varchar(100) DEFAULT '',
  `report_formula1` varchar(255) DEFAULT '',
  `report_operator1` varchar(255) DEFAULT '',
  `report_type1` int(11) DEFAULT 0,
  `report_tab1` int(11) DEFAULT 0,
  `report_bold1` int(11) DEFAULT 0,
  `report_formula2` varchar(255) DEFAULT '',
  `report_operator2` varchar(255) DEFAULT '',
  `report_type2` int(11) DEFAULT 0,
  `report_tab2` int(11) DEFAULT 0,
  `report_bold2` int(11) DEFAULT 0,
  `report_formula3` varchar(255) DEFAULT '',
  `report_operator3` varchar(255) DEFAULT '',
  `balance_report_type` decimal(1,0) NOT NULL,
  `balance_report_type1` decimal(1,0) NOT NULL,
  `data_state` int(11) DEFAULT 0,
  `created_id` int(11) DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `last_update` time DEFAULT '00:00:00',
  PRIMARY KEY (`balance_sheet_report_id`),
  KEY `account_id1` (`account_id1`),
  KEY `account_id2` (`account_id2`),
  KEY `fk_company_id_sheet_report` (`company_id`),
  CONSTRAINT `fk_company_id_sheet_report` FOREIGN KEY (`company_id`) REFERENCES `preference_company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*Data for the table `acct_balance_sheet_report` */

insert  into `acct_balance_sheet_report`(`balance_sheet_report_id`,`company_id`,`report_no`,`account_id1`,`account_code1`,`account_name1`,`account_id2`,`account_code2`,`account_name2`,`report_formula1`,`report_operator1`,`report_type1`,`report_tab1`,`report_bold1`,`report_formula2`,`report_operator2`,`report_type2`,`report_tab2`,`report_bold2`,`report_formula3`,`report_operator3`,`balance_report_type`,`balance_report_type1`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,2,1,1,'100','ASET',15,'200.01','Liabilitas dan Ekuitas','','',1,0,1,'','',1,0,1,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(2,2,2,2,'101.00','ASET LANCAR',16,'200.01.1','Utang Lancar','','',2,1,1,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(3,2,3,3,'101.00.1','KAS BESAR',17,'200.01.2','Utang Jangka Panjang','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(4,2,4,4,'101.00.2','KAS KECIL',51,'400.02.06','Utang PPN','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(5,2,5,5,'101.00.3','KAS DI BANK',18,'200.01.3','MODAL/EKUITAS','','',3,2,0,'','',2,1,1,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(6,2,6,6,'101.00.4','Piutang Dagang',19,'200.01.4','Modal','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(7,2,7,7,'101.00.5','Piutang Lain Lain',20,'200.01.5','Modal Belum Disetor','','',3,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
(8,2,8,8,'101.00.6','Persediaan Barang',21,'200.01.6','Modal Disetor','','',8,2,0,'','',3,2,0,'','',0,0,0,55,'0000-00-00 00:00:00','00:00:00'),
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
(48,2,48,0,'','JUMLAH ASET',0,'','JUMLAH LIABILITAS DAN EKUITAS','3#4#5#6#7#8#9#11#12#13#14','+#+#+#+#+#+#+#+#+#+#+#+#',5,0,1,'2#3#4#6#7#8#9#10','+#+#+#+#+#+#+#',5,0,1,'','',0,0,0,0,'0000-00-00 00:00:00','00:00:00');

/*Table structure for table `acct_profit_loss_report` */

DROP TABLE IF EXISTS `acct_profit_loss_report`;

CREATE TABLE `acct_profit_loss_report` (
  `profit_loss_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `format_id` int(11) DEFAULT NULL,
  `report_no` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_code` varchar(250) DEFAULT NULL,
  `account_name` varchar(250) DEFAULT NULL,
  `report_formula` varchar(250) DEFAULT NULL,
  `report_operator` varchar(250) DEFAULT NULL,
  `report_type` int(11) DEFAULT NULL,
  `report_tab` int(11) DEFAULT NULL,
  `report_bold` int(11) DEFAULT NULL,
  `data_state` int(11) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp(),
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
