-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sehir
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (3);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilceler`
--

DROP TABLE IF EXISTS `ilceler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ilceler` (
  `No` int(11) NOT NULL,
  `Ad` varchar(45) DEFAULT NULL,
  `Ilno` int(11) DEFAULT NULL,
  `Nufus` int(11) DEFAULT NULL,
  `il_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`No`),
  KEY `FK_ILNO` (`Ilno`),
  CONSTRAINT `FK_ILNO` FOREIGN KEY (`Ilno`) REFERENCES `iller` (`No`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilceler`
--

LOCK TABLES `ilceler` WRITE;
/*!40000 ALTER TABLE `ilceler` DISABLE KEYS */;
INSERT INTO `ilceler` VALUES (1,'Alanya',1,300000,NULL),(2,'Manavgat',1,225000,NULL),(3,'Besiktas',3,185000,NULL),(4,'Beyoglu',3,235000,NULL),(5,'Konak',2,360000,NULL),(6,'Karsiyaka',2,340000,NULL),(7,'Meram',6,345000,NULL),(8,'Buca',2,490000,NULL),(9,'Bornova',2,440000,NULL),(10,'Kad&#305;koy',3,450000,NULL),(11,'Sar&#305;yer',3,345000,NULL),(12,'Muratpa&#351;a',1,490000,NULL),(13,'Ka&#351;',1,57000,NULL),(14,'Cankaya',4,920000,NULL),(15,'Kecioren',4,920000,NULL),(16,'Sincan',4,525000,NULL),(17,'Selcuklu',6,640000,NULL),(18,'Bulancak',5,65000,NULL),(19,'Tirebolu',5,31000,NULL),(20,'Horasan',7,40000,NULL),(21,'Pasinler',7,30000,NULL),(22,'Bodrum',8,165000,NULL),(23,'Fethiye',8,155000,NULL),(24,'Nizip',9,140000,NULL),(25,'Sahinbey',9,905000,NULL);
/*!40000 ALTER TABLE `ilceler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iller`
--

DROP TABLE IF EXISTS `iller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iller` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Ad` varchar(45) DEFAULT NULL,
  `Bolge` varchar(45) DEFAULT NULL,
  `Nufus` int(11) DEFAULT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iller`
--

LOCK TABLES `iller` WRITE;
/*!40000 ALTER TABLE `iller` DISABLE KEYS */;
INSERT INTO `iller` VALUES (1,'Antalya','Akdeniz',2288000),(2,'Izmir','Ege',4275000),(3,'Istanbul','Marmara',15000000),(4,'Ankara','Ic Anadolu',5445000),(5,'Giresun','Karadeniz',435000),(6,'Konya','Ic Anadolu',2150000),(7,'Erzurum','Dogu Anadolu',760000),(8,'Mugla','Ege',940000),(9,'Gaziantep','Guneydogu Anadolu',2000000);
/*!40000 ALTER TABLE `iller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahalleler`
--

DROP TABLE IF EXISTS `mahalleler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahalleler` (
  `No` int(11) NOT NULL,
  `Ad` varchar(45) DEFAULT NULL,
  `IlceNo` int(11) DEFAULT NULL,
  `HaneSayisi` int(11) DEFAULT NULL,
  `Nufus` int(11) DEFAULT NULL,
  `ilce_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`No`),
  KEY `FK_ILCENO` (`IlceNo`),
  CONSTRAINT `FK_ILCENO` FOREIGN KEY (`IlceNo`) REFERENCES `ilceler` (`No`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahalleler`
--

LOCK TABLES `mahalleler` WRITE;
/*!40000 ALTER TABLE `mahalleler` DISABLE KEYS */;
INSERT INTO `mahalleler` VALUES (1,'Turkali',3,2500,10000,NULL),(2,'Dikilitas',3,3900,16000,NULL),(3,'Etiler',3,3100,12000,NULL),(4,'Tophane',1,60,250,NULL),(5,'Sekerhane',1,2600,11000,NULL),(6,'Cumhuriyet',1,950,4600,NULL),(7,'Goztepe',5,5100,17000,NULL),(8,'Guzelyali',5,5200,18000,NULL),(9,'Atilla',5,3000,11000,NULL),(10,'Piyalepasa',4,5100,23000,NULL),(11,'Sutluce',4,2950,12000,NULL),(12,'Istiklal',4,1000,4500,NULL);
/*!40000 ALTER TABLE `mahalleler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26  1:26:08
