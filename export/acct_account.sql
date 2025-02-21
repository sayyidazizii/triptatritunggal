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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `acct_account` */

insert  into `acct_account`(`account_id`,`company_id`,`account_code`,`account_name`,`account_group`,`account_suspended`,`account_default_status`,`account_remark`,`account_status`,`account_token`,`parent_account_status`,`account_type_id`,`data_state`,`created_id`,`updated_id`,`created_at`,`updated_at`) values 
(1,2,'100','A K T I V A','100',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(2,2,'101.01','AKTIVA LANCAR','100',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(3,2,'101.01.01','Kas dan Setara Kas','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(4,2,'101.01.02','Piutang Usaha','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(5,2,'101.01.03','Piutang Lain-lain','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(6,2,'101.01.04','Biaya Dibayar dimuka','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(7,2,'101.01.05','Persediaan','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(8,2,'101.01.06','JUMLAH AKTIVA LANCAR','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(9,2,'101.01.07','AKTIVA TETAP','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(10,2,'101.01.08','Inventaris','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(11,2,'101.01.09','Akumulasi Penyusutan','101.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(12,2,'0','JUMLAH AKTIVA TETAP','0',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(13,2,'0','TOTAL AKTIVA','0',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(14,2,'200','P A S I V A ','200',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(15,2,'201.01','HUTANG LANCAR','200',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(16,2,'201.01.01','Hutang Dagang','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(17,2,'201.01.02','Hutang Pajak','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(18,2,'0','MODAL','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(19,2,'201.01.04','Modal ','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(20,2,'201.01.05','Laba ditahan','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(21,2,'201.01.06','Laba tahun berjalan','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(22,2,'0','TOTAL PASIVA',NULL,0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(23,2,'300','PENJUALAN',NULL,0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(24,2,'300.01','HARGA POKOK PENJUALAN ','300',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(25,2,'300.01.01','Persediaan Awal','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(26,2,'300.01.02','Pembelian','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(27,2,'300.01.03','Biaya Kirim Pembelian','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(28,2,'300.01.04','Barang Tersedia Dijual','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(29,2,'300.01.05','Persediaan Akhir','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(30,2,'300.01.06','HARGA POKOK PENJUALAN','300.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(31,2,'300.01.07','LABA BRUTO','300.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(32,2,'400','BIAYA - BIAYA USAHA ',NULL,0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(33,2,'400.01','- Beban Penjualan','400',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(34,2,'400.01.01','Biaya Gaji Bag. Penjualan','400.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(35,2,'400.01.02','Beban Courier','400.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(36,2,'400.01.03','Beban Sewa Mobil','400.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(37,2,'400.01.04','Beban Tol','400.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(38,2,'400.01.05','Beban Bahan Bakar','400.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(39,2,'400.02','-Beban Administrasi Umum','400',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(40,2,'400.02.01','Beban Gaji Bag. Administrasi dan Umum','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(41,2,'400.02.02','Beban Perlengkapan Kantor','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(42,2,'400.02.03','Biaya Depresiasi Peralatan Kantor','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(43,2,'400.02.04','Beban Sewa Kantor','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(44,2,'400.02.05','Beban Listrik dan Air','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(45,2,'400.02.06','Beban Telepon','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(46,2,'400.02.07','Beban Internet','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(47,2,'400.02.08','Beban Materai','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(48,2,'400.02.09','Beban Entertain','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(49,2,'400.02.10','Beban Tiker Parkir','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(50,2,'400.02.11','Beban Perbaikan dan Maintenance','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(51,2,'400.02.12','Beban Komisi Penjualan','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(52,2,'400.02.13','Biaya Gaji Komisaris','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(53,2,'400.02.14','Biaya Lain-lain','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(54,2,'400.02.15','LABA USAHA','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(55,2,'400.02.16','PPh ','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(56,2,'400.02.17','LABA USAHA SETELAH PAJAK','400.02',0,0,NULL,0,NULL,0,0,0,55,55,'2025-01-30 04:22:47','2025-01-30 04:22:47'),
(57,2,'201.01.03','PPN Keluaran','201.01',0,1,NULL,1,NULL,0,0,0,55,55,'2025-01-31 14:42:23','2025-01-31 14:42:24'),
(58,2,'101.01.06','PPN Masukan','101.01',0,0,NULL,0,NULL,0,0,0,55,55,'2025-02-21 09:57:27','2025-02-21 09:57:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
