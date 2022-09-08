/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - spring_rental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring_rental` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `spring_rental`;

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `anggota` */

insert  into `anggota`(`id`,`email`,`password`,`username`) values 
(1,'mitairuz@gmail.com','libra','mitazu');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `foto_member` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id_member`,`alamat`,`jenis_kelamin`,`nama_member`,`no_ktp`,`no_telpon`,`tgl_lahir`,`foto_member`) values 
(6,'Sidodadi','Perempuan','Khoirunnisa','112233445566','083168250000','2005-03-31','nullKhoirunnisa.jpg'),
(5,'Pekanbaru','Perempuan','Mita Zuriati','1234567890','081234567890','2002-10-12','nullMita Zuriati.jpg');

/*Table structure for table `mobil` */

DROP TABLE IF EXISTS `mobil`;

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL AUTO_INCREMENT,
  `harga` int(11) DEFAULT NULL,
  `huruf` varchar(255) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `nama_mobil` varchar(255) DEFAULT NULL,
  `no_polisi` int(11) DEFAULT NULL,
  `seri_kota` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `foto_mobil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mobil` */

insert  into `mobil`(`id_mobil`,`harga`,`huruf`,`merk`,`nama_mobil`,`no_polisi`,`seri_kota`,`status`,`tahun`,`warna`,`foto_mobil`) values 
(4,150000,'XX','Daihatsu','Ayla',1122,'D','Tersedia','2020','Silver','nullAyla.jpg'),
(3,120000,'AB','Daihatsu','Xenia',1234,'D','Tersedia','2012','Silver',NULL);

/*Table structure for table `paket` */

DROP TABLE IF EXISTS `paket`;

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL AUTO_INCREMENT,
  `diskon` int(11) DEFAULT NULL,
  `lama_rental` int(11) DEFAULT NULL,
  `nama_paket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `paket` */

insert  into `paket`(`id_paket`,`diskon`,`lama_rental`,`nama_paket`) values 
(1,50000,7,'Combo');

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `tgl_peminjaman` varchar(20) DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `id_supir` int(11) DEFAULT NULL,
  `lama` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `uang_muka` int(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `foto_member` varchar(255) DEFAULT NULL,
  `nama_mobil` varchar(255) DEFAULT NULL,
  `nama_supir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`id_peminjaman`,`id_member`,`tgl_peminjaman`,`tgl_kembali`,`denda`,`diskon`,`id_mobil`,`id_paket`,`id_supir`,`lama`,`status`,`total`,`uang_muka`,`alamat`,`nama_member`,`no_telp`,`foto_member`,`nama_mobil`,`nama_supir`) values 
(7,1,'12-01-2022','22-2-2022',0,50000,1,1,1,7,'Dipinjam',NULL,NULL,'Pekanbaru','Khoirunnisa','081234560000',NULL,'Xenia','Ujang');

/*Table structure for table `supir` */

DROP TABLE IF EXISTS `supir`;

CREATE TABLE `supir` (
  `id_supir` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `harga_perhari` int(11) DEFAULT NULL,
  `nama_supir` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `foto_supir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supir`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `supir` */

insert  into `supir`(`id_supir`,`alamat`,`harga_perhari`,`nama_supir`,`no_telp`,`status`,`foto_supir`) values 
(3,'Bandung',100000,'Ujang','0812334444','Tersedia','nullUjang.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
