/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.20-MariaDB : Database - academia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`academia` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `academia`;

/*Table structure for table `academicperiodgroups` */

DROP TABLE IF EXISTS `academicperiodgroups`;

CREATE TABLE `academicperiodgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journeyId` int(11) NOT NULL,
  `degreeId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `quota` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journeyId` (`journeyId`),
  KEY `degreeId` (`degreeId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `academicperiodgroups_ibfk_4` FOREIGN KEY (`journeyId`) REFERENCES `journeys` (`id`),
  CONSTRAINT `academicperiodgroups_ibfk_5` FOREIGN KEY (`degreeId`) REFERENCES `degrees` (`id`),
  CONSTRAINT `academicperiodgroups_ibfk_6` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `academicperiodgroups` */

insert  into `academicperiodgroups`(`id`,`journeyId`,`degreeId`,`groupId`,`quota`) values 
(62,16,23,10,'0'),
(63,16,24,10,'0'),
(64,16,25,10,'0'),
(65,16,26,10,'0'),
(66,16,27,10,'0'),
(67,16,28,10,'0'),
(68,16,29,10,'0'),
(69,16,30,10,'0'),
(70,16,31,10,'0'),
(71,16,32,10,'0');

/*Table structure for table `degrees` */

DROP TABLE IF EXISTS `degrees`;

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `levelId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` varchar(50) NOT NULL,
  `abbreviation` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `levelId` (`levelId`),
  CONSTRAINT `degrees_ibfk_2` FOREIGN KEY (`levelId`) REFERENCES `levels` (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `degrees` */

insert  into `degrees`(`id`,`name`,`levelId`,`createdAt`,`updatedAt`,`abbreviation`) values 
(23,'Kínder',11,'2021-11-19 20:14:43','',''),
(24,'Preparatoria',11,'2021-11-19 20:15:05','',''),
(25,'Primero Primaria',11,'2021-11-19 20:15:15','',''),
(26,'Segundo Primaria',11,'2021-11-19 20:15:21','',''),
(27,'Tercero Primaria',12,'2021-11-19 20:15:46','',''),
(28,'Cuarto Primaria',12,'2021-11-19 20:15:52','',''),
(29,'Quinto Primaria',12,'2021-11-19 20:15:58','',''),
(30,'Sexto Primaria',12,'2021-11-19 20:16:04','',''),
(31,'Primero Básico',13,'2021-11-19 20:16:48','',''),
(32,'Segundo Básico',13,'2021-11-19 20:16:55','','');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(100) NOT NULL,
  `abbreviation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`createdAt`,`updatedAt`,`abbreviation`) values 
(10,'Sección A','2021-11-19 19:44:22','','A');

/*Table structure for table `journeys` */

DROP TABLE IF EXISTS `journeys`;

CREATE TABLE `journeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `abbreviation` varchar(50) NOT NULL,
  `updatedAt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `journeys` */

insert  into `journeys`(`id`,`name`,`createdAt`,`abbreviation`,`updatedAt`) values 
(16,'Matutina','2021-11-19 19:44:22','Mat','');

/*Table structure for table `levels` */

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `levelId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `abbreviation` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(50) NOT NULL,
  PRIMARY KEY (`levelId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `levels` */

insert  into `levels`(`levelId`,`name`,`abbreviation`,`createdAt`,`updatedAt`) values 
(11,'Preprimaria y Primaria Baja',NULL,'2021-11-19 20:13:48',''),
(12,'Primaria Alta',NULL,'2021-11-19 19:42:18',''),
(13,'Secundaria',NULL,'2021-11-19 19:42:18','');

/*Table structure for table `matriculates` */

DROP TABLE IF EXISTS `matriculates`;

CREATE TABLE `matriculates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academicPeriodGroupId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `academicPeriodGroupId` (`academicPeriodGroupId`),
  CONSTRAINT `matriculates_ibfk_2` FOREIGN KEY (`academicPeriodGroupId`) REFERENCES `academicperiodgroups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `matriculates` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
