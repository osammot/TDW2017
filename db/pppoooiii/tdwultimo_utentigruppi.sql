-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tdwultimo
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `utentigruppi`
--

DROP TABLE IF EXISTS `utentigruppi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utentigruppi` (
  `username` varchar(50) NOT NULL,
  `id_gruppo` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`id_gruppo`),
  UNIQUE KEY `username` (`username`),
  KEY `id_gruppo` (`id_gruppo`),
  CONSTRAINT `utentigruppi_ibfk_1` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `utentigruppi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utenti` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utentigruppi`
--

LOCK TABLES `utentigruppi` WRITE;
/*!40000 ALTER TABLE `utentigruppi` DISABLE KEYS */;
INSERT INTO `utentigruppi` VALUES ('luca',1),('stef',1),('tom',1),('aaaa',2),('bbb',2),('ccc',2),('ddddd',2),('eee',2),('eug',2),('eugeniobirra',2),('flavio',2),('gigi',2),('gino',2),('kaktus',2),('tom1',2),('tomtomtomtomtom',2),('tomtomtomtomtomsss',2),('tttt',2);
/*!40000 ALTER TABLE `utentigruppi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 21:48:45
