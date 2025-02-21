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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;

/*Data for the table `acct_balance_sheet_report` */

insert  into `acct_balance_sheet_report`(`balance_sheet_report_id`,`company_id`,`report_no`,`account_id1`,`account_code1`,`account_name1`,`account_id2`,`account_code2`,`account_name2`,`report_formula1`,`report_operator1`,`report_type1`,`report_tab1`,`report_bold1`,`report_formula2`,`report_operator2`,`report_type2`,`report_tab2`,`report_bold2`,`report_formula3`,`report_operator3`,`balance_report_type`,`balance_report_type1`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,2,1,1,'100','A K T I V A',14,'200','P A S I V A ',NULL,NULL,1,1,1,NULL,NULL,1,1,1,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(2,2,2,2,'101.01','AKTIVA LANCAR',15,'201.01','HUTANG LANCAR',NULL,NULL,1,2,1,NULL,NULL,1,2,1,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(3,2,3,3,'101.01.01','Kas dan Setara Kas',16,'201.01.01','Hutang Dagang',NULL,NULL,3,3,0,NULL,NULL,3,3,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(4,2,4,4,'101.01.02','Piutang Usaha',17,'201.01.02','Hutang Pajak',NULL,NULL,3,3,0,NULL,NULL,3,3,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(5,2,5,5,'101.01.03','Piutang Lain-lain',57,'201.01.03','PPN Keluaran',NULL,NULL,3,3,0,NULL,NULL,3,3,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(6,2,6,6,'101.01.04','Biaya Dibayar dimuka',18,'201.01.03','MODAL',NULL,NULL,3,3,0,NULL,NULL,1,2,1,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(7,2,7,7,'101.01.05','Persediaan',19,'201.01.04','Modal ',NULL,NULL,3,3,0,NULL,NULL,3,3,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(8,2,8,58,'101.01.06','PPN Masukan',20,'201.01.05','Laba ditahan',NULL,NULL,3,3,0,NULL,NULL,3,3,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(9,2,9,9,'0','JUMLAH AKTIVA LANCAR',0,'0','JUMLAH HUTANG LANCAR','3#4#5#6#7#8','+#+#+#+#+#+',4,2,1,'3#4#5#7#8','+#+#+#+#+',4,2,1,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(10,2,10,10,'0','AKTIVA TETAP',23,'300','PENJUALAN',NULL,NULL,1,2,1,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(11,2,11,11,'101.01.08','Inventaris',0,'0',NULL,NULL,NULL,3,3,0,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(12,2,12,12,'101.01.09','Akumulasi Penyusutan',24,'300.01','HARGA POKOK PENJUALAN :',NULL,NULL,3,3,0,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(13,2,13,13,'0','JUMLAH AKTIVA TETAP',25,'300.01.01','Persediaan Awal','11#12','-#-',4,2,1,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(14,2,14,0,'0','TOTAL AKTIVA',26,'300.01.02','Pembelian','3#4#5#6#7#8#11#12','+#+#+#+#+#+#-#-',5,1,1,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(15,2,15,0,'0',NULL,27,'300.01.03','Biaya Kirim Pembelian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(16,2,16,0,'0',NULL,28,'300.01.04','Barang Tersedia Dijual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(17,2,17,0,'0',NULL,29,'300.01.05','Persediaan Akhir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(18,2,18,0,'0',NULL,30,'300.01.06','HARGA POKOK PENJUALAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(19,2,19,0,'0',NULL,31,'300.01.07','LABA BRUTO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(20,2,20,0,'0',NULL,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(21,2,21,0,'0',NULL,32,'400','BIAYA - BIAYA USAHA :',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(22,2,22,0,'0',NULL,33,'400.01','- Beban Penjualan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(23,2,23,0,'0',NULL,34,'400.01.01','Biaya Gaji Bag. Penjualan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(24,2,24,0,'0',NULL,35,'400.01.02','Beban Courier',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(25,2,25,0,'0',NULL,36,'400.01.03','Beban Sewa Mobil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(26,2,26,0,'0',NULL,37,'400.01.04','Beban Tol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(27,2,27,0,'0',NULL,38,'400.01.05','Beban Bahan Bakar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(28,2,28,0,'0',NULL,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(29,2,29,0,'0',NULL,39,'400.02','-Beban Administrasi Umum',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(30,2,30,0,'0',NULL,40,'400.02.01','Beban Gaji Bag. Administrasi dan Umum',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(31,2,31,0,'0',NULL,41,'400.02.02','Beban Perlengkapan Kantor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(32,2,32,0,'0',NULL,42,'400.02.03','Biaya Depresiasi Peralatan Kantor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(33,2,33,0,'0',NULL,43,'400.02.04','Beban Sewa Kantor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(34,2,34,0,'0',NULL,44,'400.02.05','Beban Listrik dan Air',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(35,2,35,0,'0',NULL,45,'400.02.06','Beban Telepon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(36,2,36,0,'0',NULL,46,'400.02.07','Beban Internet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(37,2,37,0,'0',NULL,47,'400.02.08','Beban Materai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(38,2,38,0,'0',NULL,48,'400.02.09','Beban Entertain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(39,2,39,0,'0',NULL,49,'400.02.10','Beban Tiker Parkir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(40,2,40,0,'0',NULL,50,'400.02.11','Beban Perbaikan dan Maintenance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(41,2,41,0,'0',NULL,51,'400.02.12','Beban Komisi Penjualan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(42,2,42,0,'0',NULL,52,'400.02.13','Biaya Gaji Komisaris',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(43,2,43,0,'0',NULL,53,'400.02.14','Biaya Lain-lain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(44,2,44,0,'0',NULL,0,'0','TOTAL BEBAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(45,2,45,0,'0',NULL,54,'400.02.15','LABA USAHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(46,2,46,0,'0',NULL,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(47,2,47,0,'0',NULL,55,'400.02.16','PPh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(48,2,48,0,'0',NULL,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(49,2,49,0,'0',NULL,56,'400.02.17','LABA TAHUN BERJALAN',NULL,NULL,NULL,NULL,NULL,'10#13#14#15#16#17#23#24#25#26#27#30#31#32#33#34#35#35#36#37#38#39#40#41#42#42#43#47','-#+#+#+#+#+#-#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#-#-',11,3,1,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(50,2,50,0,'0',NULL,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18'),
(51,2,51,0,'0',NULL,22,'0','TOTAL PASIVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,0,0,'','',0,0,0,55,'2025-02-21 03:04:18','03:04:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
