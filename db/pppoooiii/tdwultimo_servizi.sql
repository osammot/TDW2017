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
-- Table structure for table `servizi`
--

DROP TABLE IF EXISTS `servizi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servizi` (
  `id_servizio` int(10) NOT NULL AUTO_INCREMENT,
  `script` varchar(50) NOT NULL,
  `descrizione` varchar(100) DEFAULT 'descrizione mancante',
  PRIMARY KEY (`id_servizio`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servizi`
--

LOCK TABLES `servizi` WRITE;
/*!40000 ALTER TABLE `servizi` DISABLE KEYS */;
INSERT INTO `servizi` VALUES (1,'login.php',''),(2,'add-categoria.php','aggiunta della categoria '),(3,'add-prodotto.php','aggiunta prodotti'),(4,'index.php','pagina iniziale della deshboard'),(5,'add-news.php','aggiunta news'),(6,'edit-user.php','modifica degli utenti registrati'),(7,'delete-group.php','cancellazione di un gruppo'),(8,'delete-news.php','eliminazione news'),(9,'single-product.php','pagina singolo prodotto front-end'),(10,'add-group.php','aggiunta gruppo'),(11,'add-immagini.php','aggiunta immagini'),(12,'add-slider.php','aggiunta slider'),(13,'add-user.php','aggiunta utente'),(14,'add-servizio.php','aggiunta servizi'),(16,'assegnagruppo-servizio.php','assegnazione di un gruppo ad uno specifico servizio'),(17,'assegnagruppo-user.php','assegnazione di un gruppo ad un user'),(20,'delete-categoria.php','cancellazione categorie'),(21,'delete-prodotto.php','cancellazione prodotti'),(22,'delete-immagini.php','cancellazione immagini'),(23,'delete-servizio.php','cancellazione servizi '),(24,'delete-user.php','cancellazione utenti '),(25,'delete-slider.php','cancellazione slider index'),(26,'edit-categoria.php','modifica categoria'),(27,'edit-group.php','modifica gruppo'),(28,'edit-immagini.php','modifica immagini'),(29,'edit-news.php','modifica news'),(30,'edit-prodotto.php','modifica prodotto'),(31,'edit-servizio.php','modifica servizio'),(32,'edit-slider.php','modifica slider'),(33,'add-coupon.php','aggiunta coupon'),(34,'delete-coupon.php','cancellazione coupon'),(35,'edit-coupon.php','modifica coupon'),(36,'index.php','descrizione mancante'),(37,'single-product.php','descrizione mancante'),(38,'cart.php','descrizione mancante'),(39,'checkout.php','descrizione mancante'),(40,'addProductToCart.php','descrizione mancante'),(42,'serviziodiprova.php','servizio di prova description'),(44,'edit-prodotto-click.php','descrizione mancante');
/*!40000 ALTER TABLE `servizi` ENABLE KEYS */;
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
