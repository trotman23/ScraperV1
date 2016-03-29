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
-- Table structure for table `nflteam`
--

DROP TABLE IF EXISTS `nflteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nflteam` (
  `NFLTeamID` int(11) NOT NULL,
  `NFLTeamName` varchar(45) DEFAULT NULL,
  `Wins` int(11) DEFAULT NULL,
  `Losses` int(11) DEFAULT NULL,
  `Ties` int(11) DEFAULT NULL,
  PRIMARY KEY (`NFLTeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nflteam`
--

LOCK TABLES `nflteam` WRITE;
/*!40000 ALTER TABLE `nflteam` DISABLE KEYS */;
INSERT INTO `nflteam` VALUES (1,'New England Patriots',12,4,0),(2,'New York Jets',10,6,0),(3,'Buffalo Bills',8,8,0),(4,'Miami Dolphins',6,10,0),(6,'Cincinnati Bengals',12,4,0),(7,'Pittsburgh Steelers',10,6,0),(8,'Baltimore Ravens',5,11,0),(9,'Cleveland Browns',3,13,0),(11,'Houston Texans',9,7,0),(12,'Indianapolis Colts',8,8,0),(13,'Jacksonville Jaguars',5,11,0),(14,'Tennessee Titans',3,13,0),(16,'Denver Broncos',12,4,0),(17,'Kansas City Chiefs',11,5,0),(18,'Oakland Raiders',7,9,0),(19,'San Diego Chargers',4,12,0),(21,'Washington Redskins',9,7,0),(22,'Philadelphia Eagles',7,9,0),(23,'New York Giants',6,10,0),(24,'Dallas Cowboys',4,12,0),(26,'Minnesota Vikings',11,5,0),(27,'Green Bay Packers',10,6,0),(28,'Detroit Lions',7,9,0),(29,'Chicago Bears',6,10,0),(31,'Carolina Panthers',15,1,0),(32,'Atlanta Falcons',8,8,0),(33,'New Orleans Saints',7,9,0),(34,'Tampa Bay Buccaneers',6,10,0),(36,'Arizona Cardinals',13,3,0),(37,'Seattle Seahawks',10,6,0),(38,'St. Louis Rams',7,9,0),(39,'San Francisco 49ers',5,11,0);
/*!40000 ALTER TABLE `nflteam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-29 12:56:29
