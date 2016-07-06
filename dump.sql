-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `c9`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `c9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `c9`;

--
-- Table structure for table `dailydifs`
--

DROP TABLE IF EXISTS `dailydifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dailydifs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `tgamesplayed` int(11) DEFAULT NULL,
  `twins` int(11) DEFAULT NULL,
  `tloss` int(11) DEFAULT NULL,
  `tdamage` int(11) DEFAULT NULL,
  `thealing` int(11) DEFAULT NULL,
  `winpercent` decimal(16,2) DEFAULT NULL,
  `tfinalblows` decimal(16,2) DEFAULT NULL,
  `tdeaths` decimal(16,2) DEFAULT NULL,
  `tmedals` decimal(16,2) DEFAULT NULL,
  `teliminations` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tqpgp` int(11) DEFAULT NULL,
  `tcompgp` int(11) DEFAULT NULL,
  `tqpwins` int(11) DEFAULT NULL,
  `tcompwin` int(11) DEFAULT NULL,
  `tqploss` int(11) DEFAULT NULL,
  `tcomploss` int(11) DEFAULT NULL,
  `tqpapdam` int(11) DEFAULT NULL,
  `tcompdam` int(11) DEFAULT NULL,
  `tqpheal` int(11) DEFAULT NULL,
  `tcompheal` int(11) DEFAULT NULL,
  `qpwinpercent` decimal(10,0) DEFAULT NULL,
  `compwinpercent` decimal(10,0) DEFAULT NULL,
  `tqpfb` decimal(10,0) DEFAULT NULL,
  `tcompfb` decimal(10,0) DEFAULT NULL,
  `tqpdeath` decimal(10,0) DEFAULT NULL,
  `tcompdeath` decimal(10,0) DEFAULT NULL,
  `tqpmedals` decimal(10,0) DEFAULT NULL,
  `tcompmedals` decimal(10,0) DEFAULT NULL,
  `tqpelim` decimal(10,0) DEFAULT NULL,
  `tcompelim` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailydifs`
--

LOCK TABLES `dailydifs` WRITE;
/*!40000 ALTER TABLE `dailydifs` DISABLE KEYS */;
INSERT INTO `dailydifs` VALUES (1,1,38,18,20,5947,2056,47.37,8.55,6.74,2.29,15.29,'2016-06-29 13:45:48','2016-06-29 13:45:48',20,18,10,8,10,10,4190,7900,1297,2899,50,44,5,11,5,8,2,2,10,21),(2,2,0,0,0,0,0,0.00,0.00,0.00,0.00,0.00,'2016-06-29 13:45:50','2016-06-29 13:45:50',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,3,24,11,13,9036,868,45.83,11.67,10.67,2.42,20.04,'2016-06-29 13:45:59','2016-06-29 13:45:59',1,23,0,11,1,12,12393,8890,0,906,0,47,15,11,12,10,2,2,24,19),(4,4,5,3,2,12241,1222,60.00,14.80,7.00,3.40,32.80,'2016-06-29 13:46:08','2016-06-29 13:46:08',2,3,0,3,2,0,4179,17615,386,1780,0,100,5,21,4,9,2,4,10,48),(5,5,8,5,3,8887,465,62.50,7.88,8.25,2.75,22.13,'2016-06-29 13:46:11','2016-06-29 13:46:11',2,6,2,3,0,3,6435,9705,78,594,100,50,13,6,6,9,2,2,27,20),(6,6,30,14,16,9480,914,46.67,14.43,10.50,2.97,25.00,'2016-06-29 13:46:15','2016-06-29 13:46:15',9,21,3,11,6,10,3464,12059,146,1244,33,52,5,18,6,12,2,3,9,31),(7,7,47,22,25,5808,3273,46.81,7.64,7.94,2.40,15.94,'2016-06-29 13:46:18','2016-06-29 13:46:18',7,40,3,19,4,21,2801,6334,1405,3600,42,47,3,8,6,8,2,2,8,17);
/*!40000 ALTER TABLE `dailydifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailystats`
--

DROP TABLE IF EXISTS `dailystats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dailystats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `gamesplayed` int(11) DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `winpercent` decimal(16,2) DEFAULT NULL,
  `finalblows` decimal(16,2) DEFAULT NULL,
  `deaths` decimal(16,2) DEFAULT NULL,
  `medals` decimal(16,2) DEFAULT NULL,
  `eliminations` decimal(16,2) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `healing` int(11) DEFAULT NULL,
  `statdate` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `compgp` int(11) DEFAULT NULL,
  `compwon` int(11) DEFAULT NULL,
  `comploss` int(11) DEFAULT NULL,
  `compwinper` decimal(10,0) DEFAULT NULL,
  `compfb` decimal(10,0) DEFAULT NULL,
  `compdeath` decimal(10,0) DEFAULT NULL,
  `compmedal` decimal(10,0) DEFAULT NULL,
  `compelim` decimal(10,0) DEFAULT NULL,
  `compdam` int(11) DEFAULT NULL,
  `compheal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailystats`
--

LOCK TABLES `dailystats` WRITE;
/*!40000 ALTER TABLE `dailystats` DISABLE KEYS */;
INSERT INTO `dailystats` VALUES (1,1,117,60,57,51.30,1093.00,687.00,314.00,1692.00,685737,96614,'2016-05-31','2016-06-23 17:37:41','2016-06-23 17:37:41',0,0,0,0,0,0,0,0,0,0),(2,2,99,60,57,51.30,628.00,670.00,221.00,1224.00,474705,80308,'2016-05-31','2016-06-23 17:54:06','2016-06-23 17:54:06',0,0,0,0,0,0,0,0,0,0),(3,3,174,89,85,51.10,1268.00,1206.00,463.00,2057.00,834330,56835,'2016-05-31','2016-06-23 17:54:06','2016-06-23 17:54:06',0,0,0,0,0,0,0,0,0,0),(4,4,60,30,30,50.00,302.00,441.00,142.00,595.00,226860,69213,'2016-05-31','2016-06-23 17:54:06','2016-06-23 17:54:06',0,0,0,0,0,0,0,0,0,0),(5,5,144,72,72,50.00,976.00,986.00,387.00,1855.00,704736,81135,'2016-05-31','2016-06-23 17:54:06','2016-06-23 17:54:06',0,0,0,0,0,0,0,0,0,0),(6,6,0,0,0,0.00,0.00,0.00,0.00,0.00,0,0,'2016-05-31','2016-06-23 17:54:06','2016-06-23 17:54:06',0,0,0,0,0,0,0,0,0,0),(7,7,45,22,23,48.90,151.00,319.00,100.00,396.00,131940,52525,'2016-05-31','2016-06-23 17:54:08','2016-06-23 17:54:08',0,0,0,0,0,0,0,0,0,0),(8,1,403,202,201,50.12,3521.00,2150.00,1104.00,5983.00,2373346,465954,'2016-06-22','2016-06-23 17:55:36','2016-06-23 17:55:36',0,0,0,0,0,0,0,0,0,0),(9,2,347,175,172,50.43,2346.00,2099.00,762.00,4356.00,1767004,173325,'2016-06-22','2016-06-23 17:55:39','2016-06-23 17:55:39',0,0,0,0,0,0,0,0,0,0),(10,3,368,184,184,50.00,2776.00,2552.00,942.00,4595.00,1832740,112246,'2016-06-22','2016-06-23 17:55:42','2016-06-23 17:55:42',0,0,0,0,0,0,0,0,0,0),(11,4,279,142,137,50.90,1602.00,1890.00,721.00,3140.00,1274857,347755,'2016-06-22','2016-06-23 17:55:44','2016-06-23 17:55:44',0,0,0,0,0,0,0,0,0,0),(12,5,360,181,179,50.28,2449.00,2412.00,1004.00,4829.00,1918979,236388,'2016-06-22','2016-06-23 17:55:48','2016-06-23 17:55:48',0,0,0,0,0,0,0,0,0,0),(13,6,335,180,155,53.73,3096.00,1907.00,1064.00,4966.00,1762913,182591,'2016-06-22','2016-06-23 17:55:52','2016-06-23 17:55:52',0,0,0,0,0,0,0,0,0,0),(14,7,282,144,138,51.06,941.00,1744.00,627.00,2452.00,774729,584230,'2016-06-22','2016-06-23 17:55:55','2016-06-23 17:55:55',0,0,0,0,0,0,0,0,0,0),(15,1,428,215,213,50.23,3695.00,2265.00,1173.00,6303.00,2497043,493436,'2016-06-23','2016-06-24 21:15:52','2016-06-24 21:15:52',0,0,0,0,0,0,0,0,0,0),(16,2,374,189,185,50.53,2500.00,2228.00,809.00,4653.00,1916588,184583,'2016-06-23','2016-06-24 21:15:54','2016-06-24 21:15:54',0,0,0,0,0,0,0,0,0,0),(17,3,390,193,197,49.49,2917.00,2716.00,987.00,4858.00,1948679,120301,'2016-06-23','2016-06-24 21:15:56','2016-06-24 21:15:56',0,0,0,0,0,0,0,0,0,0),(18,4,292,147,145,50.34,1684.00,1962.00,761.00,3280.00,1352480,358080,'2016-06-23','2016-06-24 21:15:59','2016-06-24 21:15:59',0,0,0,0,0,0,0,0,0,0),(19,5,360,181,179,50.28,2449.00,2412.00,1004.00,4829.00,1918979,236388,'2016-06-23','2016-06-24 21:16:01','2016-06-24 21:16:01',0,0,0,0,0,0,0,0,0,0),(20,6,374,199,175,53.21,3475.00,2107.00,1206.00,5546.00,1983177,205310,'2016-06-23','2016-06-24 21:16:03','2016-06-24 21:16:03',0,0,0,0,0,0,0,0,0,0),(21,7,311,159,152,51.13,1028.00,1909.00,700.00,2729.00,861068,646119,'2016-06-23','2016-06-24 21:16:04','2016-06-24 21:16:04',0,0,0,0,0,0,0,0,0,0),(22,1,450,229,221,50.89,3912.00,2403.00,1243.00,6717.00,2653728,522824,'2016-06-24','2016-06-25 18:07:57','2016-06-25 18:07:57',0,0,0,0,0,0,0,0,0,0),(23,2,374,189,185,50.53,2500.00,2228.00,809.00,4653.00,1916588,184583,'2016-06-24','2016-06-25 18:07:59','2016-06-25 18:07:59',0,0,0,0,0,0,0,0,0,0),(24,3,390,193,197,49.49,2917.00,2716.00,987.00,4858.00,1948679,120301,'2016-06-24','2016-06-25 18:08:01','2016-06-25 18:08:01',0,0,0,0,0,0,0,0,0,0),(25,4,298,151,147,50.67,1736.00,1996.00,779.00,3363.00,1388832,364585,'2016-06-24','2016-06-25 18:08:03','2016-06-25 18:08:03',0,0,0,0,0,0,0,0,0,0),(26,5,360,181,179,50.28,2449.00,2412.00,1004.00,4829.00,1918979,236388,'2016-06-24','2016-06-25 18:08:05','2016-06-25 18:08:05',0,0,0,0,0,0,0,0,0,0),(27,6,382,204,178,53.40,3602.00,2167.00,1237.00,5762.00,2048754,219919,'2016-06-24','2016-06-25 18:08:06','2016-06-25 18:08:06',0,0,0,0,0,0,0,0,0,0),(28,7,325,168,157,51.69,1079.00,1993.00,730.00,2886.00,904626,676205,'2016-06-24','2016-06-25 18:08:08','2016-06-25 18:08:08',0,0,0,0,0,0,0,0,0,0),(29,1,475,240,235,50.53,4087.00,2523.00,1303.00,7078.00,2799233,532372,'2016-06-25','2016-06-26 13:03:55','2016-06-26 13:03:55',0,0,0,0,0,0,0,0,0,0),(30,2,374,189,185,50.53,2500.00,2228.00,809.00,4653.00,1916588,184583,'2016-06-25','2016-06-26 13:03:56','2016-06-26 13:03:56',0,0,0,0,0,0,0,0,0,0),(31,3,390,193,197,49.49,2917.00,2716.00,987.00,4858.00,1948679,120301,'2016-06-25','2016-06-26 13:03:58','2016-06-26 13:03:58',0,0,0,0,0,0,0,0,0,0),(32,4,306,156,150,50.98,1790.00,2053.00,798.00,3461.00,1430328,387636,'2016-06-25','2016-06-26 13:04:00','2016-06-26 13:04:00',0,0,0,0,0,0,0,0,0,0),(33,5,360,181,179,50.28,2449.00,2412.00,1004.00,4829.00,1918979,236388,'2016-06-25','2016-06-26 13:04:02','2016-06-26 13:04:02',0,0,0,0,0,0,0,0,0,0),(34,6,399,213,186,53.38,3759.00,2263.00,1294.00,6038.00,2152175,252043,'2016-06-25','2016-06-26 13:04:03','2016-06-26 13:04:03',0,0,0,0,0,0,0,0,0,0),(35,7,344,179,165,52.03,1146.00,2101.00,774.00,3056.00,967693,732883,'2016-06-25','2016-06-26 13:04:05','2016-06-26 13:04:05',0,0,0,0,0,0,0,0,0,0),(36,1,495,250,245,50.51,4312.00,2643.00,1355.00,7452.00,2949911,554744,'2016-06-26','2016-06-27 12:19:59','2016-06-27 12:19:59',0,0,0,0,0,0,0,0,0,0),(37,2,380,194,186,51.05,2558.00,2272.00,817.00,4753.00,1960460,185902,'2016-06-26','2016-06-27 12:20:01','2016-06-27 12:20:01',0,0,0,0,0,0,0,0,0,0),(38,3,403,199,204,49.38,3028.00,2824.00,1021.00,5052.00,2023037,126574,'2016-06-26','2016-06-27 12:20:03','2016-06-27 12:20:03',0,0,0,0,0,0,0,0,0,0),(39,4,307,157,150,51.14,1803.00,2064.00,801.00,3480.00,1437769,391754,'2016-06-26','2016-06-27 12:20:04','2016-06-27 12:20:04',0,0,0,0,0,0,0,0,0,0),(40,5,360,181,179,50.28,2449.00,2412.00,1004.00,4829.00,1918979,236388,'2016-06-26','2016-06-27 12:20:06','2016-06-27 12:20:06',0,0,0,0,0,0,0,0,0,0),(41,6,399,213,186,53.38,3759.00,2263.00,1294.00,6038.00,2152175,252043,'2016-06-26','2016-06-27 12:20:08','2016-06-27 12:20:08',0,0,0,0,0,0,0,0,0,0),(42,7,351,185,166,52.71,1159.00,2156.00,784.00,3087.00,977402,772017,'2016-06-26','2016-06-27 12:20:09','2016-06-27 12:20:09',0,0,0,0,0,0,0,0,0,0),(43,1,495,250,245,50.51,4312.00,2643.00,1355.00,7452.00,2949911,554744,'2016-06-27','2016-06-28 12:20:25','2016-06-28 12:20:25',0,0,0,0,0,0,0,0,0,0),(44,2,385,196,189,50.91,2595.00,2297.00,832.00,4821.00,1993209,187442,'2016-06-27','2016-06-28 12:20:27','2016-06-28 12:20:27',0,0,0,0,0,0,0,0,0,0),(45,3,405,201,204,49.63,3037.00,2837.00,1023.00,5062.00,2026804,126574,'2016-06-27','2016-06-28 12:20:28','2016-06-28 12:20:28',0,0,0,0,0,0,0,0,0,0),(46,4,307,157,150,51.14,1803.00,2064.00,801.00,3480.00,1437769,391754,'2016-06-27','2016-06-28 12:20:30','2016-06-28 12:20:30',0,0,0,0,0,0,0,0,0,0),(47,5,364,182,182,50.00,2458.00,2430.00,1012.00,4855.00,1931038,244483,'2016-06-27','2016-06-28 12:20:32','2016-06-28 12:20:32',0,0,0,0,0,0,0,0,0,0),(48,6,408,218,190,53.43,3851.00,2319.00,1322.00,6206.00,2206142,263300,'2016-06-27','2016-06-28 12:20:33','2016-06-28 12:20:33',0,0,0,0,0,0,0,0,0,0),(49,7,357,190,167,53.22,1181.00,2195.00,793.00,3147.00,993686,793875,'2016-06-27','2016-06-28 12:20:35','2016-06-28 12:20:35',0,0,0,0,0,0,0,0,0,0),(50,1,524,268,256,51.15,4602.00,2799.00,1440.00,7962.00,3139121,565561,'2016-06-28','2016-06-29 12:15:05','2016-06-29 12:15:05',0,0,0,0,0,0,0,0,0,0),(51,2,385,196,189,50.91,2595.00,2297.00,832.00,4821.00,1993209,187442,'2016-06-28','2016-06-29 12:15:07','2016-06-29 12:15:07',0,0,0,0,0,0,0,0,0,0),(52,3,405,201,204,49.63,3037.00,2837.00,1023.00,5062.00,2026804,126574,'2016-06-28','2016-06-29 12:15:09','2016-06-29 12:15:09',0,0,0,0,0,0,0,0,0,0),(53,4,307,157,150,51.14,1803.00,2064.00,801.00,3480.00,1437769,391754,'2016-06-28','2016-06-29 12:15:11','2016-06-29 12:15:11',0,0,0,0,0,0,0,0,0,0),(54,5,364,182,182,50.00,2458.00,2430.00,1012.00,4855.00,1931038,244483,'2016-06-28','2016-06-29 12:15:13','2016-06-29 12:15:13',0,0,0,0,0,0,0,0,0,0),(55,6,433,234,199,54.04,4108.00,2478.00,1415.00,6668.00,2361450,286577,'2016-06-28','2016-06-29 12:15:14','2016-06-29 12:15:14',0,0,0,0,0,0,0,0,0,0),(56,7,377,199,178,52.79,1255.00,2311.00,828.00,3321.00,1049853,836033,'2016-06-28','2016-06-29 12:15:16','2016-06-29 12:15:16',0,0,0,0,0,0,0,0,0,0),(57,1,524,268,256,51.03,4602.00,2799.00,1440.00,7962.00,3139121,565561,'2016-06-29','2016-06-30 17:26:23','2016-06-30 17:26:23',9,4,5,44,117,84,23,212,72732,10842),(58,2,403,205,198,50.97,2698.00,2422.00,860.00,5035.00,2087419,199865,'2016-06-29','2016-06-30 17:26:25','2016-06-30 17:26:25',11,6,5,54,71,114,27,192,69062,56464),(59,3,405,201,204,49.63,3037.00,2837.00,1023.00,5062.00,2026804,126574,'2016-06-29','2016-06-30 17:26:27','2016-06-30 17:26:27',0,0,0,0,0,0,0,0,0,0),(60,4,318,163,155,50.76,1886.00,2145.00,827.00,3626.00,1494914,398543,'2016-06-29','2016-06-30 17:26:30','2016-06-30 17:26:30',11,4,7,36,80,109,32,171,79397,20948),(61,5,380,193,187,50.77,2559.00,2519.00,1057.00,5078.00,2019822,262398,'2016-06-29','2016-06-30 17:26:32','2016-06-30 17:26:32',8,4,4,50,60,46,24,153,63281,130),(62,6,433,234,199,53.64,4108.00,2478.00,1415.00,6668.00,2361450,286577,'2016-06-29','2016-06-30 17:26:33','2016-06-30 17:26:33',20,9,11,45,295,194,57,494,171983,18585),(63,7,377,199,178,52.32,1255.00,2311.00,828.00,3321.00,1049853,836033,'2016-06-29','2016-06-30 17:26:35','2016-06-30 17:26:35',11,4,7,36,47,101,17,118,33905,88257),(78,1,524,268,256,50.55,4602.00,2799.00,1440.00,7962.00,3139121,565561,'2016-06-30','2016-07-01 14:04:13','2016-07-01 14:04:13',18,6,12,33,240,160,43,418,158328,27965),(79,2,405,206,199,50.84,2705.00,2430.00,867.00,5053.00,2095194,200328,'2016-06-30','2016-07-01 14:04:16','2016-07-01 14:04:16',14,7,7,50,97,141,35,240,90002,64251),(80,3,405,201,204,49.63,3037.00,2837.00,1023.00,5062.00,2026804,126574,'2016-06-30','2016-07-01 14:04:18','2016-07-01 14:04:18',0,0,0,0,0,0,0,0,0,0),(81,4,318,163,155,50.45,1886.00,2145.00,827.00,3626.00,1494914,398543,'2016-06-30','2016-07-01 14:04:20','2016-07-01 14:04:20',17,6,11,35,129,173,48,274,130459,27867),(82,5,382,194,188,50.63,2567.00,2530.00,1060.00,5091.00,2023513,265200,'2016-06-30','2016-07-01 14:04:22','2016-07-01 14:04:22',13,6,7,46,102,94,43,271,123811,130),(83,6,433,234,199,53.26,4108.00,2478.00,1415.00,6668.00,2361450,286577,'2016-06-30','2016-07-01 14:04:24','2016-07-01 14:04:24',27,11,16,40,385,269,83,657,230688,25584),(84,7,377,199,178,51.49,1255.00,2311.00,828.00,3321.00,1049853,836033,'2016-06-30','2016-07-01 14:04:26','2016-07-01 14:04:26',25,8,17,32,120,227,49,288,87506,166882),(85,1,543,277,266,50.17,4712.00,2896.00,1483.00,8151.00,3218933,589686,'2016-07-02','2016-07-03 12:44:39','2016-07-03 12:44:39',33,12,21,36,418,295,80,737,278876,69902),(86,2,405,206,199,50.84,2705.00,2430.00,867.00,5053.00,2095194,200328,'2016-07-02','2016-07-03 12:44:41','2016-07-03 12:44:41',14,7,7,50,97,141,35,240,90002,64251),(87,3,405,201,204,49.39,3037.00,2837.00,1023.00,5062.00,2026804,126574,'2016-07-02','2016-07-03 12:44:44','2016-07-03 12:44:44',4,1,3,25,39,49,12,76,35268,7539),(88,4,318,163,155,50.45,1886.00,2145.00,827.00,3626.00,1494914,398543,'2016-07-02','2016-07-03 12:44:46','2016-07-03 12:44:46',17,6,11,35,129,173,48,274,130459,27867),(89,5,384,196,188,50.87,2593.00,2542.00,1065.00,5145.00,2036384,265356,'2016-07-02','2016-07-03 12:44:49','2016-07-03 12:44:49',17,8,9,47,129,133,56,361,169358,3699),(90,6,440,237,203,52.99,4146.00,2518.00,1432.00,6734.00,2386639,287589,'2016-07-02','2016-07-03 12:44:51','2016-07-03 12:44:51',45,20,25,44,721,491,140,1251,450816,44112),(91,7,382,202,180,51.33,1276.00,2343.00,841.00,3367.00,1064305,842529,'2016-07-02','2016-07-03 12:44:54','2016-07-03 12:44:54',31,10,21,32,152,286,62,376,118718,194144),(92,1,544,278,266,50.26,4720.00,2901.00,1487.00,8163.00,3222924,591514,'2016-07-04','2016-07-05 16:46:20','2016-07-05 16:46:20',33,12,21,36,418,295,80,737,278876,69902),(93,2,405,206,199,50.84,2705.00,2430.00,867.00,5053.00,2095194,200328,'2016-07-04','2016-07-05 16:46:22','2016-07-05 16:46:22',14,7,7,50,97,141,35,240,90002,64251),(94,3,406,201,205,49.42,3052.00,2849.00,1025.00,5086.00,2039197,126574,'2016-07-04','2016-07-05 16:46:28','2016-07-05 16:46:28',23,11,12,47,265,244,56,457,204483,20854),(95,4,318,163,155,50.45,1886.00,2145.00,827.00,3626.00,1494914,398543,'2016-07-04','2016-07-05 16:46:30','2016-07-05 16:46:30',17,6,11,35,129,173,48,274,130459,27867),(96,5,384,196,188,50.87,2593.00,2542.00,1065.00,5145.00,2036384,265356,'2016-07-04','2016-07-05 16:46:32','2016-07-05 16:46:32',19,9,10,47,139,148,60,394,182043,3699),(97,6,442,237,205,52.77,4155.00,2533.00,1438.00,6749.00,2392626,287892,'2016-07-04','2016-07-05 16:46:34','2016-07-05 16:46:34',45,20,25,44,721,491,140,1251,450816,44112),(98,7,382,202,180,50.35,1276.00,2343.00,841.00,3367.00,1064305,842529,'2016-07-04','2016-07-05 16:46:36','2016-07-05 16:46:36',51,16,35,31,289,431,106,633,221777,250790),(99,1,544,278,266,50.34,4720.00,2901.00,1487.00,8163.00,3222924,591514,'2016-07-05','2016-07-06 11:42:37','2016-07-06 11:42:37',36,14,22,38,447,314,83,798,300539,80147),(100,2,405,206,199,50.84,2705.00,2430.00,867.00,5053.00,2095194,200328,'2016-07-05','2016-07-06 11:42:40','2016-07-06 11:42:40',14,7,7,50,97,141,35,240,90002,64251),(101,3,406,201,205,49.42,3052.00,2849.00,1025.00,5086.00,2039197,126574,'2016-07-05','2016-07-06 11:42:42','2016-07-06 11:42:42',23,11,12,47,265,244,56,457,204483,20854),(102,4,320,163,157,50.59,1897.00,2153.00,831.00,3646.00,1503273,399315,'2016-07-05','2016-07-06 11:42:44','2016-07-06 11:42:44',20,9,11,45,192,200,61,418,183306,33207),(103,5,384,196,188,50.87,2593.00,2542.00,1065.00,5145.00,2036384,265356,'2016-07-05','2016-07-06 11:42:47','2016-07-06 11:42:47',19,9,10,47,139,148,60,394,182043,3699),(104,6,442,237,205,52.86,4155.00,2533.00,1438.00,6749.00,2392626,287892,'2016-07-05','2016-07-06 11:42:49','2016-07-06 11:42:49',48,22,26,45,771,529,149,1326,483938,51716),(105,7,384,202,182,51.00,1282.00,2356.00,845.00,3378.00,1069465,845869,'2016-07-05','2016-07-06 11:42:52','2016-07-06 11:42:52',65,27,38,41,452,555,145,980,340895,310898);
/*!40000 ALTER TABLE `dailystats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `battlenet` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Riva-11618','0000-00-00 00:00:00','2016-06-29 14:25:54','https://blzgdapipro-a.akamaihd.net/game/unlocks/0x025000000000030C.png'),(2,'Rexigar-1245','0000-00-00 00:00:00','2016-06-29 14:25:55','https://blzgdapipro-a.akamaihd.net/game/unlocks/0x025000000000030B.png'),(3,'BadKitty-1177','0000-00-00 00:00:00','2016-06-16 19:21:43','https://d1u1mce87gyfbn.cloudfront.net/game/unlocks/0x02500000000008E8.png'),(4,'GruffNStuff-1629','0000-00-00 00:00:00','2016-06-29 14:25:57','https://blzgdapipro-a.akamaihd.net/game/unlocks/0x0250000000000657.png'),(5,'Skye-1696','0000-00-00 00:00:00','2016-06-29 14:25:58','https://blzgdapipro-a.akamaihd.net/game/unlocks/0x02500000000004F4.png'),(6,'Jikard-1545','0000-00-00 00:00:00','2016-06-16 19:21:44','https://d1u1mce87gyfbn.cloudfront.net/game/unlocks/0x0250000000000743.png'),(7,'Titurius-1368','0000-00-00 00:00:00','2016-06-29 14:26:00','https://blzgdapipro-a.akamaihd.net/game/unlocks/0x02500000000008C2.png');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160607133251'),('20160607133828'),('20160616183955'),('20160629035107'),('20160630171154'),('20160630194748');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-06 17:21:35
