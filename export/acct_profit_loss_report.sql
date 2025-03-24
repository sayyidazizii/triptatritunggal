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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `acct_profit_loss_report` */

insert  into `acct_profit_loss_report`(`profit_loss_report_id`,`company_id`,`format_id`,`report_no`,`account_type_id`,`account_id`,`account_code`,`account_name`,`report_formula`,`report_operator`,`report_type`,`report_tab`,`report_bold`,`data_state`,`created_id`,`created_on`,`last_update`) values 
(1,2,1,1,2,23,'300','PENJUALAN',NULL,NULL,3,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(2,2,1,2,2,0,'0',NULL,NULL,NULL,0,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(3,2,1,3,2,24,'300.01','HARGA POKOK PENJUALAN :',NULL,NULL,1,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(4,2,1,4,2,25,'300.01.01','Persediaan Awal',NULL,NULL,3,1,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(5,2,1,5,2,26,'300.01.02','Pembelian',NULL,NULL,3,1,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(6,2,1,6,2,27,'300.01.03','Biaya Kirim Pembelian',NULL,NULL,3,1,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(7,2,1,7,2,28,'300.01.04','Barang Tersedia Dijual',NULL,NULL,3,1,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(8,2,1,8,2,29,'300.01.05','Persediaan Akhir',NULL,NULL,3,1,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(9,2,1,9,2,30,'300.01.06','HARGA POKOK PENJUALAN','4#5#6#7#8','+#+#+#+#-',6,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(10,2,1,10,2,31,'300.01.07','LABA BRUTO','1#4#5#6#7#8','-#+#+#+#+#-',1,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(11,2,1,11,0,NULL,'0',NULL,NULL,NULL,0,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(12,2,1,12,3,32,'400','BIAYA - BIAYA USAHA :',NULL,NULL,1,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(13,2,1,13,3,33,'400.01','- Beban Penjualan',NULL,NULL,2,2,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(14,2,1,14,3,34,'400.01.01','Biaya Gaji Bag. Penjualan',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(15,2,1,15,3,35,'400.01.02','Beban Courier',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(16,2,1,16,3,36,'400.01.03','Beban Sewa Mobil',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(17,2,1,17,3,37,'400.01.04','Beban Tol',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(18,2,1,18,3,38,'400.01.05','Beban Bahan Bakar',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(19,2,1,19,0,NULL,'0',NULL,NULL,NULL,0,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(20,2,1,20,3,39,'400.02','-Beban Administrasi Umum',NULL,NULL,2,2,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(21,2,1,21,3,40,'400.02.01','Beban Gaji Bag. Administrasi dan Umum',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(22,2,1,22,3,41,'400.02.02','Beban Perlengkapan Kantor',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(23,2,1,23,3,42,'400.02.03','Biaya Depresiasi Peralatan Kantor',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(24,2,1,24,3,43,'400.02.04','Beban Sewa Kantor',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(25,2,1,25,3,44,'400.02.05','Beban Listrik dan Air',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(26,2,1,26,3,45,'400.02.06','Beban Telepon',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(27,2,1,27,3,46,'400.02.07','Beban Internet',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(28,2,1,28,3,47,'400.02.08','Beban Materai',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(29,2,1,29,3,48,'400.02.09','Beban Entertain',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(30,2,1,30,3,49,'400.02.10','Beban Tiker Parkir',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(31,2,1,31,3,50,'400.02.11','Beban Perbaikan dan Maintenance',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(32,2,1,32,3,51,'400.02.12','Beban Komisi Penjualan',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(33,2,1,33,3,52,'400.02.13','Biaya Gaji Komisaris',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(34,2,1,34,3,53,'400.02.14','Biaya Lain-lain',NULL,NULL,3,2,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(35,2,1,35,0,NULL,'0','TOTAL BEBAN','14#15#16#17#18#21#22#23#24#25#26#27#28#29#30#31#32#33#34','+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+',6,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(36,2,1,36,3,54,'400.02.15','LABA USAHA','1#4#5#6#7#8#14#15#16#17#18#21#22#23#24#25#26#27#28#29#30#31#32#33#34','-#+#+#+#+#-#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#-',6,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(37,2,1,37,0,NULL,'0',NULL,NULL,NULL,0,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(38,2,1,38,3,55,'400.02.16','PPh',NULL,NULL,3,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(39,2,1,39,0,NULL,'0',NULL,NULL,NULL,0,0,0,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37'),
(40,2,1,40,3,56,'400.02.17','LABA USAHA SETELAH PAJAK','1#4#5#6#7#8#14#15#16#17#18#21#22#23#24#25#26#27#28#29#30#31#32#33#34#38','-#+#+#+#+#-#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#+#-#-',6,1,1,0,55,'2025-01-30 06:50:37','2025-01-30 06:50:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
