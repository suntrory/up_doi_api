-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.44-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for up_doi
CREATE DATABASE IF NOT EXISTS `up_doi` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `up_doi`;

-- Dumping structure for table up_doi.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table up_doi.account: ~0 rows (approximately)
INSERT INTO `account` (`id`, `usename`, `password`) VALUES
	(1, 'admin', NULL);

-- Dumping structure for table up_doi.count_come
CREATE TABLE IF NOT EXISTS `count_come` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 No  1 Yes',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table up_doi.count_come: ~7 rows (approximately)
INSERT INTO `count_come` (`id`, `status`, `create_date`) VALUES
	(1, 1, NULL),
	(2, 1, NULL),
	(3, 0, NULL),
	(4, 0, '2023-11-27 10:01:17'),
	(5, 0, '2023-11-27 10:03:42'),
	(6, 0, '2023-11-27 10:04:40'),
	(7, 0, '2023-11-27 10:04:56');

-- Dumping structure for table up_doi.info_s
CREATE TABLE IF NOT EXISTS `info_s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gov` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คณะ',
  `std_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `em_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lost_medic` int(11) DEFAULT NULL COMMENT 'แพ้ยา',
  `lost_food` int(11) DEFAULT NULL COMMENT 'แพ้อาหาร',
  `self_medic` int(11) DEFAULT NULL COMMENT 'ยาประจำตัว',
  `self_disease` int(11) DEFAULT NULL COMMENT 'โรคประจำตัว',
  `disease1` int(11) DEFAULT NULL COMMENT 'โรคหัวใจ',
  `disease2` int(11) DEFAULT NULL COMMENT 'โรคลมชัก',
  `disease3` int(11) DEFAULT NULL COMMENT 'โรคหอบหืด',
  `disease4` int(11) DEFAULT NULL COMMENT 'โรคภูมิแพ้อากาศ',
  `disease5` int(11) DEFAULT NULL COMMENT 'โรคความดันโลหิตสูง',
  `disease6` int(11) DEFAULT NULL COMMENT 'โรคชัก',
  `food` int(11) DEFAULT NULL COMMENT '0 ทั่วไป  1 เจ   2 มังสวิรัติ   3 ฮาลาล',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table up_doi.info_s: ~15 rows (approximately)
INSERT INTO `info_s` (`id`, `fname`, `lname`, `gov`, `std_id`, `age`, `tel`, `em_tel`, `lost_medic`, `lost_food`, `self_medic`, `self_disease`, `disease1`, `disease2`, `disease3`, `disease4`, `disease5`, `disease6`, `food`) VALUES
	(1, 'YO', 'Ho', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(4, '', 'LLLLLL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(5, 'FFFFFF', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(6, 'FFFFFF', 'LLLLLLL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	(7, 'Joooo', 'Hoooo', 'คณะสังคมศาสตร์', '660927382', '37', '8234732847', '', 1, 0, 0, 1, 0, 0, 0, 4, 5, 0, 2),
	(8, 'Joooo', 'Hoooo', 'คณะสังคมศาสตร์', '600927382', '37', '8234732847', '', 1, 0, 0, 1, 0, 0, 0, 4, 5, 0, 2),
	(9, 'ksjfkds', 'kfjwefiowe', 'คณะวิทยาศาสตร์', '594737462', '14', '4325135253', '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
	(10, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '472387462', '47', '3454767878', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
	(11, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '422387462', '47', '3454767878', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2),
	(12, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2),
	(13, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 2),
	(14, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 2),
	(15, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 2),
	(16, 'pfwjfwe', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 2),
	(17, 'SSSSSSSSSS', 'pojewofiew', 'คณะเทคนิคการแพทย์', '662387462', '47', '3454767878', '', 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
