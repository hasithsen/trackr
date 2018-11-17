-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: trackr
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) NOT NULL,
  `passwd` varchar(45) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `idinfo` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinfo`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'0000','signin','2018-09-04 13:10:22','6.9198','79.8531','Colombo','122.255.11.212'),(2,'0000','signout','2018-09-04 13:10:31','6.9198','79.8531','Colombo','122.255.11.212'),(3,'0000','signin','2018-09-04 13:10:40','6.9198','79.8531','Colombo','122.255.11.212'),(4,'0000','signout','2018-09-04 13:10:43','6.9198','79.8531','Colombo','122.255.11.212'),(5,'0002','signin','2018-09-04 13:11:17','6.9198','79.8531','Colombo','122.255.11.212'),(6,'0002','signout','2018-09-04 13:11:19','6.9198','79.8531','Colombo','122.255.11.212'),(7,'0000','signin','2018-09-04 13:51:26','6.9198','79.8531','Colombo','122.255.11.212'),(8,'0000','signout','2018-09-04 13:51:29','6.9198','79.8531','Colombo','122.255.11.212'),(9,'0000','signin','2018-09-04 13:53:15','6.9198','79.8531','Colombo','122.255.11.210'),(10,'0000','signout','2018-09-04 13:53:25','6.9198','79.8531','Colombo','122.255.11.210'),(11,'0000','signin','2018-09-04 13:53:51','6.91478','79.8575','Colombo','43.250.242.48'),(12,'0000','signout','2018-09-04 13:53:53','6.91478','79.8575','Colombo','43.250.242.48'),(13,'0000','signin','2018-09-04 14:01:47','6.9196','79.8593','Colombo','175.157.121.134'),(14,'0000','signout','2018-09-04 14:02:08','6.9196','79.8593','Colombo','175.157.121.134'),(15,'0000','signin','2018-09-04 18:54:45','6.9196','79.8593','Colombo','175.157.121.134'),(16,'0000','signout','2018-09-04 19:03:36','6.9196','79.8593','Colombo','175.157.121.134'),(17,'0000','signin','2018-09-05 02:10:00','6.9198','79.8531','Colombo','122.255.11.212'),(18,'0000','signout','2018-09-05 02:10:04','6.9198','79.8531','Colombo','122.255.11.212'),(19,'0000','signin','2018-09-05 02:28:06','6.9198','79.8531','Colombo','122.255.11.212'),(20,'0000','signout','2018-09-05 02:28:09','6.9198','79.8531','Colombo','122.255.11.212'),(21,'0002','signin','2018-09-05 03:23:06','6.9198','79.8531','Colombo','122.255.11.210'),(22,'0002','signout','2018-09-05 03:23:16','6.9198','79.8531','Colombo','122.255.11.210'),(23,'0000','signin','2018-09-05 04:09:06','-33.7645','151.156','Killara','120.21.127.124'),(24,'0000','signout','2018-09-05 04:09:55','-33.7645','151.156','Killara','120.21.127.124'),(25,'0000','signin','2018-09-05 04:10:09','-33.7645','151.156','Killara','120.21.127.124'),(26,'0000','signin','2018-09-05 07:55:27','6.9198','79.8531','Colombo','122.255.11.212'),(27,'0000','signout','2018-09-05 07:55:35','6.9198','79.8531','Colombo','122.255.11.212'),(28,'0000','signin','2018-09-05 08:59:26','6.9198','79.8531','Colombo','122.255.11.212'),(29,'0000','signin','2018-09-05 08:59:26','6.9198','79.8531','Colombo','122.255.11.214'),(30,'0000','signout','2018-09-05 08:59:39','6.9198','79.8531','Colombo','122.255.11.212'),(31,'0000','signout','2018-09-05 08:59:39','6.9198','79.8531','Colombo','122.255.11.214'),(32,'0000','signin','2018-09-06 08:59:44','-37.8141','144.963','Melbourne','110.174.172.18'),(33,'0000','signin','2018-09-17 12:21:15','6.9198','79.8531','Colombo','122.255.11.212'),(34,'0000','signout','2018-09-17 12:21:23','6.9198','79.8531','Colombo','122.255.11.212'),(35,'0000','signin','2018-09-19 09:33:36','6.9198','79.8531','Colombo','122.255.11.212'),(36,'0000','signout','2018-09-19 09:33:39','6.9198','79.8531','Colombo','122.255.11.212'),(37,'0000','signin','2018-09-24 11:46:33','6.9198','79.8531','Colombo','122.255.11.212'),(38,'0000','signout','2018-09-24 11:46:42','6.9198','79.8531','Colombo','122.255.11.212'),(39,'0000','signin','2018-09-27 08:07:16','6.9196','79.8593','Colombo','175.157.165.163'),(40,'0000','signout','2018-09-27 08:07:53','6.9196','79.8593','Colombo','175.157.165.163'),(41,'0000','signin','2018-10-14 13:09:47','6.9198','79.8531','Colombo','122.255.11.212'),(42,'0001','signin','2018-10-14 13:28:32','6.9198','79.8531','Colombo','122.255.11.212'),(43,'0001','signout','2018-10-14 13:28:41','6.9198','79.8531','Colombo','122.255.11.212'),(44,'0000','signin','2018-10-17 05:32:20','6.9198','79.8531','Colombo','122.255.11.212'),(45,'0000','signout','2018-10-17 05:32:25','6.9198','79.8531','Colombo','122.255.11.212'),(46,'0000','signin','2018-11-01 12:00:13','6.9198','79.8531','Colombo','122.255.11.213');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2018-09-04 13:12:05','6.9198','79.8531','Colombo','122.255.11.212'),(2,'2018-09-04 13:51:56','6.9198','79.8531','Colombo','122.255.11.212'),(3,'2018-09-04 13:54:38','6.91478','79.8575','Colombo','43.250.242.48'),(4,'2018-09-04 14:01:15','6.9198','79.8531','Colombo','122.255.11.212'),(5,'2018-09-04 14:03:29','6.9198','79.8531','Colombo','122.255.11.212'),(6,'2018-09-04 14:04:26','6.9196','79.8593','Colombo','175.157.121.134'),(7,'2018-09-04 14:04:59','6.9198','79.8531','Colombo','122.255.11.212'),(8,'2018-09-05 02:28:27','6.9198','79.8531','Colombo','122.255.11.212'),(9,'2018-09-05 03:24:11','6.9198','79.8531','Colombo','122.255.11.210'),(10,'2018-09-05 06:22:14','6.9198','79.8531','Colombo','122.255.11.212'),(11,'2018-09-05 06:38:06','6.9198','79.8531','Colombo','122.255.11.212'),(12,'2018-09-05 07:56:49','6.9198','79.8531','Colombo','122.255.11.212'),(13,'2018-09-05 09:00:10','6.9198','79.8531','Colombo','122.255.11.212'),(14,'2018-09-06 08:36:13','6.9198','79.8531','Colombo','122.255.11.214'),(15,'2018-09-06 08:57:47','-37.8141','144.963','Melbourne','120.21.90.226'),(16,'2018-09-17 12:21:47','6.9198','79.8531','Colombo','122.255.11.212'),(17,'2018-09-17 12:23:26','6.9198','79.8531','Colombo','122.255.11.212'),(18,'2018-09-19 09:33:52','6.9198','79.8531','Colombo','122.255.11.212'),(19,'2018-09-27 12:33:44','6.9198','79.8531','Colombo','122.255.11.212'),(20,'2018-10-02 11:56:23','7.30284','81.6842','Ampara','123.231.120.162'),(21,'2018-10-07 01:36:04','7.30284','81.6842','Ampara','123.231.106.235'),(22,'2018-10-14 13:10:24','6.9198','79.8531','Colombo','122.255.11.212'),(23,'2018-10-14 13:25:22','6.9198','79.8531','Colombo','122.255.11.212'),(24,'2018-10-17 05:32:39','6.9198','79.8531','Colombo','122.255.11.212'),(25,'2018-11-01 12:00:33','6.9198','79.8531','Colombo','122.255.11.212');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(45) NOT NULL,
  `passwd` varchar(45) NOT NULL,
  `fame` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'0000','0000','Micheal','Hovne'),(2,'0001','0001','Novella','Fritch'),(3,'0002','0002','Jamev','Leveston');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-17  2:01:13
