CREATE DATABASE  IF NOT EXISTS `flask_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flask_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: flask_db
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authorized_websites`
--

DROP TABLE IF EXISTS `authorized_websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorized_websites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorized_websites`
--

LOCK TABLES `authorized_websites` WRITE;
/*!40000 ALTER TABLE `authorized_websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorized_websites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_websites`
--

DROP TABLE IF EXISTS `blocked_websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_websites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_websites`
--

LOCK TABLES `blocked_websites` WRITE;
/*!40000 ALTER TABLE `blocked_websites` DISABLE KEYS */;
INSERT INTO `blocked_websites` VALUES (1,'https://www.marca.com/','esport','not for work'),(2,'https://www.infojobs.net','esport','not for work'),(3,'https://www.alfa.es/','public','institutional website'),(4,'https://www.uoc.edu.es','educacion','access limited to students'),(6,'www.fuet.es','no category','no reason'),(7,'https://youtube.es','educacion','platform for registered users only'),(8,'https://youtube2.es','educacion','platform for registered users only'),(9,'https://as.com','entretenimiento','platform for everyone'),(10,'https://dos.es','educacion','platform for registered users only'),(11,'https://tres.es','educacion','platform for everyone'),(12,'https://cuatro.es','social','access limited to students'),(13,'https://cinco.es','social','platform for registered users only'),(14,'https://seis.es','social','no reason'),(15,'https://siete.es','educacion','platform for registered users only'),(16,'http://siete.es','no category','no reason'),(17,'https://nueve.es','no category','no reason'),(18,'https://diez.es','no category','no reason'),(19,'https://once.es','no category','no reason'),(20,'https://doce.es','no category','no reason'),(21,'https://doze.es','no category','no reason'),(22,'https://catorce.es','no category','no reason'),(23,'https://quinsse.es','no category','no reason'),(24,'https://asdf.es','no category','no reason'),(25,'any','no category','no reason'),(26,'www.geo.es','no category','no reason'),(27,'https:/qwer.es','no category','no reason'),(28,'https://caca.es','a',NULL),(29,'https://coco.es','no category','no reason'),(30,'https://uu.es','no category','no reason'),(31,'https://ee.es','no category','no reason'),(32,'https://diez1.es','no category','no reason'),(33,'https://sissete.es','no category','no reason'),(34,'https://sissete.es	','no category','no reason'),(35,'https://diezzz.es','a',NULL),(36,'https//ase.es','no category','no reason'),(37,'https://yyy.es','no category','no reason'),(38,'https://tt.es','no category','no reason'),(39,'https://ttd.es','no category','no reason'),(40,'https://tttd.es','a',NULL),(41,'https:/hh.es','no category','no reason'),(42,'https://qq.es','no category','no reason'),(43,'https://autorizar.es','no category','no reason'),(44,'https://ttd.es	','a',NULL),(45,'https://www.marca.com','','no reason'),(46,'https://uoc.edu','',NULL);
/*!40000 ALTER TABLE `blocked_websites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `user_rol` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (14,6,'https://unpkg.com','bloquear','public','2024-12-24 20:30:17'),(15,6,'https://www.google.es','bloquear','public','2024-12-24 20:30:44'),(16,6,'https://optimizationguide-pa.googleapis.com','bloquear','public','2024-12-24 20:30:48'),(17,6,'https://www.infojobs.net','autorizar','public','2024-12-24 20:33:39'),(18,6,'https://unpkg.com','bloquear','public','2024-12-24 20:33:45'),(19,6,'https://www.googletagmanager.com','bloquear','public','2024-12-24 20:33:56'),(20,6,'https://use.fontawesome.com','bloquear','public','2024-12-24 20:34:02'),(21,6,'https://sdk.privacy-center.org','bloquear','public','2024-12-24 20:34:04'),(22,6,'https://www.infojobs.net','autorizar','public','2024-12-24 20:35:20'),(23,6,'https://unpkg.com','bloquear','public','2024-12-24 20:35:27'),(24,6,'https://sdk.privacy-center.org','bloquear','public','2024-12-24 20:35:30'),(25,6,'https://www.googletagmanager.com','bloquear','public','2024-12-24 20:35:30'),(26,6,'https://use.fontawesome.com','bloquear','public','2024-12-24 20:35:31'),(27,6,'https://www.infojobs.net','autorizar','public','2024-12-24 20:36:43'),(28,6,'https://unpkg.com','bloquear','public','2024-12-24 20:36:45'),(29,6,'https://use.fontawesome.com','bloquear','public','2024-12-24 20:36:51'),(30,6,'https://www.googletagmanager.com','bloquear','public','2024-12-24 20:36:52'),(31,6,'https://sdk.privacy-center.org','bloquear','public','2024-12-24 20:36:56'),(32,6,'https://www.infojobs.net','autorizar','public','2024-12-24 20:40:25'),(33,6,'https://unpkg.com','bloquear','public','2024-12-24 20:40:30'),(34,6,'https://use.fontawesome.com','bloquear','public','2024-12-24 20:40:31'),(35,6,'https://www.googletagmanager.com','bloquear','public','2024-12-24 20:40:34'),(36,6,'https://sdk.privacy-center.org','bloquear','public','2024-12-24 20:40:36'),(37,6,'https://www.infojobs.net','autorizar','public','2024-12-24 20:44:39'),(38,6,'https://www.marca.com','bloquear','public','2024-12-24 22:01:44'),(39,6,'https://www.infojobs.net','bloquear','public','2024-12-24 22:03:03'),(40,6,'https://www.marca.com','bloquear','public','2024-12-24 23:05:30'),(41,6,'https://www.infojobs.net','bloquear','public','2024-12-24 23:06:41'),(42,6,'https://www.infojobs.net','autorizar','public','2024-12-24 23:07:56'),(43,6,'https://www.infojobs.net','autorizar','public','2024-12-24 23:37:54'),(44,6,'https://www.infojobs.net','autorizar','public','2024-12-25 00:09:54'),(45,6,'https://www.infojobs.net','autorizar','public','2024-12-25 09:27:54'),(46,6,'https://www.infojobs.net','autorizar','public','2024-12-25 10:00:55'),(47,6,'https://www.infojobs.net','autorizar','public','2024-12-25 13:33:04'),(48,6,'https://www.infojobs.net','autorizar','public','2024-12-25 13:49:04'),(49,6,'https://www.infojobs.net','autorizar','public','2024-12-25 14:22:04'),(50,6,'https://www.infojobs.net','autorizar','public','2024-12-25 14:55:05'),(51,6,'https://www.infojobs.net','autorizar','public','2024-12-25 15:27:04'),(52,6,'https://www.infojobs.net','autorizar','public','2024-12-25 16:02:04'),(53,6,'https://www.infojobs.net','autorizar','public','2024-12-25 16:36:26'),(54,6,'https://www.infojobs.net','autorizar','public','2024-12-25 17:08:26'),(55,6,'https://www.infojobs.net','autorizar','public','2024-12-25 17:41:26'),(56,6,'https://www.infojobs.net','autorizar','public','2024-12-25 20:36:39'),(57,6,'https://www.infojobs.net','autorizar','public','2024-12-25 20:53:28'),(58,6,'https://www.infojobs.net','autorizar','public','2024-12-25 21:25:41'),(59,6,'https://www.infojobs.net','autorizar','public','2024-12-25 21:59:41'),(60,6,'https://www.infojobs.net','autorizar','public','2024-12-25 22:31:41'),(61,6,'https://www.infojobs.net','autorizar','public','2024-12-25 23:05:41'),(62,6,'https://www.infojobs.net','autorizar','public','2024-12-25 23:39:41'),(63,6,'https://www.infojobs.net','autorizar','public','2024-12-26 00:12:41'),(64,6,'https://www.infojobs.net','autorizar','public','2024-12-26 00:44:41'),(65,6,'https://www.infojobs.net','autorizar','public','2024-12-26 13:06:21'),(66,6,'https://www.infojobs.net','autorizar','public','2024-12-26 13:41:22'),(67,6,'https://www.infojobs.net','autorizar','public','2024-12-26 14:15:22'),(68,6,'https://www.infojobs.net','autorizar','public','2024-12-26 14:49:23'),(69,6,'https://www.infojobs.net','autorizar','public','2024-12-26 21:23:54'),(70,6,'https://www.infojobs.net','autorizar','public','2024-12-26 21:55:54'),(71,6,'https://www.infojobs.net','autorizar','public','2024-12-26 22:29:54');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malicious_keywords`
--

DROP TABLE IF EXISTS `malicious_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `malicious_keywords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malicious_keywords`
--

LOCK TABLES `malicious_keywords` WRITE;
/*!40000 ALTER TABLE `malicious_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `malicious_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules_by_ip`
--

DROP TABLE IF EXISTS `rules_by_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules_by_ip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `userIP` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `blocked_website_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocked_website_id` (`blocked_website_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `rules_by_ip_ibfk_1` FOREIGN KEY (`blocked_website_id`) REFERENCES `blocked_websites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_by_ip`
--

LOCK TABLES `rules_by_ip` WRITE;
/*!40000 ALTER TABLE `rules_by_ip` DISABLE KEYS */;
INSERT INTO `rules_by_ip` VALUES (86,'bloquear','192.168.68.103',45,5),(87,'bloquear','192.168.1.40',45,4),(88,'bloquear','172.18.0.1',45,6),(92,'autorizar','172.18.0.1',2,6);
/*!40000 ALTER TABLE `rules_by_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules_by_role`
--

DROP TABLE IF EXISTS `rules_by_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules_by_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `blocked_website_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocked_website_id` (`blocked_website_id`),
  CONSTRAINT `rules_by_role_ibfk_1` FOREIGN KEY (`blocked_website_id`) REFERENCES `blocked_websites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_by_role`
--

LOCK TABLES `rules_by_role` WRITE;
/*!40000 ALTER TABLE `rules_by_role` DISABLE KEYS */;
INSERT INTO `rules_by_role` VALUES (89,'autorizar','student',45),(90,'autorizar','teacher',45),(91,'autorizar','public',45),(101,'autorizar','student',2),(102,'autorizar','teacher',2),(103,'autorizar','public',2);
/*!40000 ALTER TABLE `rules_by_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('student','teacher','public') COLLATE utf8mb4_general_ci NOT NULL,
  `userIP` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','student','192.168.0.1','2024-10-06 17:48:20'),(2,'s','student','192.168.1.10','2024-10-09 21:37:59'),(3,'a','teacher','192.168.1.12','2024-10-10 20:13:54'),(4,'b','student','192.168.1.40','2024-10-10 20:13:54'),(5,'luis','public','192.168.68.103','2024-12-18 22:26:07'),(6,'docker','public','172.18.0.1','2024-12-18 23:45:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26 23:58:57
