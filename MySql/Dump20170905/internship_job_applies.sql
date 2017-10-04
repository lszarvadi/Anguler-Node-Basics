CREATE DATABASE  IF NOT EXISTS `internship` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `internship`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: internship
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `job_applies`
--

DROP TABLE IF EXISTS `job_applies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_applies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERS_ID` int(11) NOT NULL,
  `JOBS_ID` int(11) NOT NULL,
  `ACCEPTED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_JOB_APPLIES_USERS1_idx` (`USERS_ID`),
  KEY `fk_JOB_APPLIES_JOBS1_idx` (`JOBS_ID`),
  CONSTRAINT `fk_JOB_APPLIES_JOBS1` FOREIGN KEY (`JOBS_ID`) REFERENCES `jobs` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `fk_JOB_APPLIES_USERS1` FOREIGN KEY (`USERS_ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applies`
--

LOCK TABLES `job_applies` WRITE;
/*!40000 ALTER TABLE `job_applies` DISABLE KEYS */;
INSERT INTO `job_applies` VALUES (5,24,125,NULL),(6,24,134,NULL),(7,26,124,1),(8,26,133,0),(9,27,124,0),(10,27,133,1),(11,28,124,1),(12,28,133,0),(13,29,124,1),(15,24,135,NULL),(16,24,124,1),(17,24,133,0);
/*!40000 ALTER TABLE `job_applies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-05  7:33:04