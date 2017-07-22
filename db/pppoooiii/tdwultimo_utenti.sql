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
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `cap` int(10) NOT NULL,
  `stato` varchar(50) NOT NULL,
  `cellulare` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES ('','','','',0,'',0,'aaaa','123','aaa'),('','','','',0,'',0,'bbb','bbb','bbb'),('','','','',0,'',0,'bom','ggg','gggg'),('','','','',0,'',0,'ccc','cccc','cc'),('','','','',0,'',0,'ddddd','dddd','ddddd'),('','','','',0,'',0,'eee','eee','e'),('','','','',0,'',0,'eug','123',''),('eugenio','mancini','avezzano','via carso',1234,'italia',12345678,'eugeniobirra','birra','eugmanc@scommesse.it'),('','','','',0,'',0,'flavio','ddd','gg'),('','','','',0,'',0,'gigi','123','ggg'),('','','','',0,'',0,'gino','agagg','agag'),('luca','tiberi','qwer','qwer',1234,'italia',12367,'kaktus','1234','kakky88@gmial.io'),('','','','',0,'',0,'loris','hhhhh','dddd'),('','','','',0,'',0,'luca','123',''),('','','','',0,'',0,'luigi','123','luigi@info.it'),('','','','',0,'',0,'marco','123','rrrr'),('','','','',0,'',0,'paolo','hhh','hhhhh'),('','','','',0,'',0,'piero','123','sss'),('','','','',0,'',0,'pierpo','hhhh','pis'),('prova1','prova1','prova1','prova1',90,'prova1',900909,'prova1','prova1','prova1@dff.it'),('','','','',0,'',0,'stef','123','s.@h.it'),('','','','',0,'',0,'Stefano','AAAA','AAAA'),('','','','',0,'',0,'tito','gggg','gggg'),('tommaso','di salle','raiano','via stopalle',45612,'iraq',12345678,'tom','123','as@ffsd.it'),('tom','di sal','raiano','via sta',78945,'iran',789456130,'tom1','tom','tommasodisalle@gmail.com'),('tommasodisal','disalltomtom','rai','sssss',12354,'irasss',45612378,'tomtomtomtomtom','123456','tomtom@gmail.com'),('tommasodisas','disalltomtos','rais','ssssd',111,'irattt',456122,'tomtomtomtomtomsss','123451','tomtom@gmail.cos'),('tommaso','corsetti','raiano','asd',123,'iraq',1234567890,'tttt','tttt','tt@ii.it');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
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
