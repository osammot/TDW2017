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
-- Table structure for table `gruppiservizi`
--

DROP TABLE IF EXISTS `gruppiservizi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruppiservizi` (
  `id_gruppo` int(10) DEFAULT NULL,
  `id_servizio` int(10) DEFAULT NULL,
  KEY `id_gruppo` (`id_gruppo`),
  KEY `id_servizio` (`id_servizio`),
  CONSTRAINT `gruppiservizi_ibfk_1` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gruppiservizi_ibfk_2` FOREIGN KEY (`id_servizio`) REFERENCES `servizi` (`id_servizio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruppiservizi`
--

LOCK TABLES `gruppiservizi` WRITE;
/*!40000 ALTER TABLE `gruppiservizi` DISABLE KEYS */;
INSERT INTO `gruppiservizi` VALUES (1,1),(1,2),(1,3),(1,5),(2,5),(1,4),(1,6),(1,7),(2,1),(1,8),(1,10),(1,11),(1,12),(1,13),(1,14),(1,17),(1,16),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(2,36),(2,37),(2,38),(2,39),(2,40),(1,1),(1,2),(1,3),(1,5),(2,5),(1,4),(1,6),(1,7),(2,1),(1,8),(1,10),(1,11),(1,12),(1,13),(1,14),(1,17),(1,16),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(2,36),(2,37),(2,38),(2,39),(1,40),(2,40),(2,40),(1,44);
/*!40000 ALTER TABLE `gruppiservizi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 21:48:46
