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
-- Table structure for table `immagini`
--

DROP TABLE IF EXISTS `immagini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immagini` (
  `id_immagine` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) DEFAULT NULL,
  `alt` varchar(50) DEFAULT 'immagine mancante',
  PRIMARY KEY (`id_immagine`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immagini`
--

LOCK TABLES `immagini` WRITE;
/*!40000 ALTER TABLE `immagini` DISABLE KEYS */;
INSERT INTO `immagini` VALUES (1,'./img/serie6.jpg','provafilm1'),(2,'./img/serie6.jpg','provaslider1'),(4,'ffff','a2'),(5,'./img/serie6.jpg','provafilm1'),(6,'./img/serie6.jpg','provaslider1'),(7,'./img/film2.jpg','Rocky'),(8,'./img/film1.jpg','American Sniper'),(9,'./img/film3.jpg','Django'),(10,'./img/film4.jpg','Perfetti Sconosciuti'),(11,'./img/film5.jpg','Revenant'),(12,'./img/film6.jpg','Il ponte delle spie'),(13,'./img/film7.jpg','Batman vs Superman'),(14,'./img/film8.jpg','Fury'),(15,'./img/film9.jpg','13 Hours'),(16,'./img/film10.jpg','Independence Day'),(17,'./img/film11.jpg','Il piccolo principe'),(18,'./img/film12.jpg','Quo Vado'),(19,'./img/film13.jpg','ZOO'),(21,'./img/revenant-slider.png','Revenant (Slider)'),(22,'./img/serie1.jpg','Breaking Bad'),(23,'./img/serie2.jpg','Heroes'),(24,'./img/serie3.jpg','Il trono di spade'),(25,'./img/serie4.jpg','Vikings'),(26,'./img/serie5.jpg','Downton Abbey'),(27,'./img/serie7.jpg','Gomorra'),(28,'./img/serie8.jpg','Gomorra'),(29,'./img/serie9.jpg','The Shield'),(30,'./img/serie10.jpg','Sherlock'),(31,'./img/serie11.jpg','1992'),(32,'./img/serie12.jpg','House of Cards'),(33,'./img/slider2.jpg','Insurgent(Slider)'),(34,'./img/slider3.jpg','Lo Hobbit (Slider)'),(35,'./img/ted-slider.png','ted (Slider)');
/*!40000 ALTER TABLE `immagini` ENABLE KEYS */;
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
