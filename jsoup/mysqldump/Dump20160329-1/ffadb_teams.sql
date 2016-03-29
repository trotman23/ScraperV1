CREATE DATABASE  IF NOT EXISTS `ffadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ffadb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ffadb
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `FFATeamID` int(11) NOT NULL AUTO_INCREMENT,
  `ESPNTeamID` int(11) DEFAULT NULL,
  `Users_UserID` int(11) NOT NULL,
  `Leagues_LeagueID` int(11) NOT NULL,
  `TeamName` varchar(45) DEFAULT NULL,
  `LeagueRank` int(11) DEFAULT NULL,
  `Wins` int(11) DEFAULT NULL,
  `Losses` int(11) DEFAULT NULL,
  `Ties` int(11) DEFAULT NULL,
  `TeamNickName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FFATeamID`,`Users_UserID`,`Leagues_LeagueID`),
  KEY `fk_Teams_Users1_idx` (`Users_UserID`),
  KEY `fk_Teams_Leagues1_idx` (`Leagues_LeagueID`),
  CONSTRAINT `UserID` FOREIGN KEY (`Users_UserID`) REFERENCES `users` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Teams_Leagues1` FOREIGN KEY (`Leagues_LeagueID`) REFERENCES `leagues` (`LeagueID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,1,1,1,'Let Me Ask My Girlfriend 1st',3,7,6,0,'DEXY'),(2,2,2,1,'North Dakota Missionaries',1,6,7,0,'NDMS'),(3,3,3,1,'Kansas kansas',8,9,4,0,'NICK'),(4,4,4,1,'KC\'s Sunset Sex Bitch',11,3,10,0,'KCXO'),(5,5,5,1,'Teblow my Diggs',2,8,5,0,'TBLO'),(6,6,6,1,'Dick\'s Butt',4,7,6,0,'LEWI'),(7,7,7,1,'KC\'s Sunset Sex Bitch',9,6,7,0,'KCXO'),(8,8,8,1,'Team Bremily',7,7,6,0,'BREM'),(9,9,9,1,'Luke Pukes',6,7,6,0,'ESFU'),(10,10,10,1,'Team Englebutt',10,4,9,0,'BUTT'),(11,11,11,1,'Team Gardner',12,4,9,0,'GARD'),(12,12,12,1,'Joey Blow Me',5,10,3,0,'JBM');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-29 12:35:21
