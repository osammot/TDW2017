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
-- Table structure for table `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodotti` (
  `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(50) NOT NULL,
  `durata` int(4) DEFAULT NULL,
  `tipologia` varchar(50) DEFAULT NULL,
  `prezzo` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `descrizione` text,
  `id_immaginePrincipale` int(10) DEFAULT NULL,
  `id_categoria` int(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `contvisualizzazioni` int(12) DEFAULT '0',
  PRIMARY KEY (`id_prodotto`),
  KEY `id_immaginePrincipale` (`id_immaginePrincipale`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`id_immaginePrincipale`) REFERENCES `immagini` (`id_immagine`) ON DELETE CASCADE,
  CONSTRAINT `prodotti_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorie` (`id_categoria`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotti`
--

LOCK TABLES `prodotti` WRITE;
/*!40000 ALTER TABLE `prodotti` DISABLE KEYS */;
INSERT INTO `prodotti` VALUES (1,'Revenant',1,'film',1,63,'Revenant - Redivivo (The Revenant) è un film del 2015, diretto, co-scritto e co-prodotto da Alejandro González Iñárritu.[1]\n\nScritto dallo stesso Iñárritu e da Mark Lee Smith e distribuito dalla 20th Century Fox, è in parte basato sul romanzo Revenant - La storia vera di Hugh Glass e della sua vendetta (2002, edito in Italia da Einaudi nel 2014) di Michael Punke ed è parzialmente ispirato alla vita del cacciatore di pelli Hugh Glass,[2] vissuto a cavallo tra il Settecento e l\'Ottocento e che, nel 1823, durante una spedizione commerciale lungo il Missouri, fu abbandonato in fin di vita dai suoi compagni, riuscendo a sopravvivere. Il soggetto è già stato usato da un\'altra pellicola, Uomo bianco, va\' col tuo dio! (Man in the Wilderness) del 1971, così da poter considerare Revenant un remake dello stesso. La pellicola vede come protagonista Leonardo DiCaprio, affiancato da Tom Hardy, Will Poulter e Domhnall Gleeson.\n\nIl film ha vinto molti premi: 3 Golden Globes su 4 nomination,[3] 5 premi BAFTA su 9 nomination e 3 Premi Oscar su 12 candidature ottenute, incluso il premio come \"Miglior attore protagonista\" a Leonardo DiCaprio, che con questo film ottiene la sua prima vittoria agli Oscar.',1,3,'2016-08-24',0),(6,'prova1',1,'film',1,0,'1',1,3,'0000-00-00',0),(7,'Rocky',123,'film',123,78,'salassa',1,9,'2000-05-04',0),(8,'pippo',123,'film',89,100,'descrizione pippo',13,10,'2000-05-00',0);
/*!40000 ALTER TABLE `prodotti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-22 21:48:47
