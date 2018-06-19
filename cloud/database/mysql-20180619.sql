-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: forge
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `beacons`
--

DROP TABLE IF EXISTS `beacons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacons`
--

LOCK TABLES `beacons` WRITE;
/*!40000 ALTER TABLE `beacons` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `counter_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `number` int(11) NOT NULL,
  `called_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calls_queue_id_foreign` (`queue_id`),
  KEY `calls_department_id_foreign` (`department_id`),
  KEY `calls_counter_id_foreign` (`counter_id`),
  KEY `calls_user_id_foreign` (`user_id`),
  CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  CONSTRAINT `calls_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES (1,1,1,1,1,1,'2018-04-07','2018-04-07 21:59:08','2018-04-07 21:59:08'),(2,2,2,2,1,1,'2018-04-07','2018-04-07 21:59:47','2018-04-07 21:59:47'),(4,4,2,3,2,1,'2018-04-08','2018-04-08 17:33:22','2018-04-08 17:33:22'),(5,3,1,2,2,1,'2018-04-08','2018-04-08 17:52:45','2018-04-08 17:52:45'),(7,6,3,7,2,2,'2018-04-08','2018-04-08 17:54:09','2018-04-08 17:54:09'),(11,7,2,2,2,2,'2018-04-08','2018-04-09 03:18:14','2018-04-09 03:18:14'),(12,5,3,6,2,1,'2018-04-08','2018-04-09 03:30:11','2018-04-09 03:30:11'),(13,9,1,2,2,1,'2018-04-09','2018-04-09 15:36:16','2018-04-09 15:36:16'),(14,14,1,3,2,2,'2018-04-09','2018-04-09 15:41:13','2018-04-09 15:41:13'),(15,11,3,6,2,1,'2018-04-09','2018-04-09 15:41:32','2018-04-09 15:41:32'),(16,8,2,4,2,1,'2018-04-09','2018-04-09 15:43:01','2018-04-09 15:43:01'),(17,10,2,4,2,2,'2018-04-09','2018-04-09 15:45:05','2018-04-09 15:45:05'),(19,15,1,2,2,1,'2018-04-11','2018-04-11 22:06:14','2018-04-11 22:06:14'),(20,17,3,6,2,1,'2018-04-11','2018-04-11 22:06:34','2018-04-11 22:06:34'),(22,16,2,3,2,1,'2018-04-11','2018-04-11 22:07:08','2018-04-11 22:07:08'),(24,20,3,6,2,2,'2018-04-11','2018-04-11 22:39:16','2018-04-11 22:39:16'),(25,23,3,6,2,3,'2018-04-11','2018-04-11 22:40:04','2018-04-11 22:40:04'),(26,18,1,4,2,2,'2018-04-11','2018-04-12 00:36:35','2018-04-12 00:36:35'),(27,21,1,5,2,3,'2018-04-11','2018-04-12 00:36:52','2018-04-12 00:36:52'),(34,29,2,1,2,2,'2018-04-12','2018-04-12 13:24:45','2018-04-12 13:24:45'),(35,28,1,2,2,1,'2018-04-12','2018-04-12 13:24:52','2018-04-12 13:24:52'),(36,27,2,2,2,1,'2018-04-12','2018-04-12 13:25:03','2018-04-12 13:25:03'),(41,30,1,3,2,2,'2018-04-12','2018-04-12 13:26:19','2018-04-12 13:26:19'),(42,32,3,7,2,1,'2018-04-12','2018-04-12 13:26:42','2018-04-12 13:26:42'),(45,33,1,2,1,1,'2018-04-13','2018-04-13 16:08:56','2018-04-13 16:08:56'),(46,38,3,1,1,1,'2018-04-13','2018-04-13 16:10:08','2018-04-13 16:10:08'),(47,36,2,1,1,1,'2018-04-13','2018-04-13 16:11:00','2018-04-13 16:11:00'),(49,42,1,2,1,1,'2018-05-10','2018-05-10 19:27:11','2018-05-10 19:27:11'),(50,43,2,4,1,1,'2018-05-10','2018-05-10 19:27:37','2018-05-10 19:27:37'),(52,74,1,2,2,1,'2018-06-13','2018-06-13 22:53:32','2018-06-13 22:53:32'),(53,75,2,3,2,1,'2018-06-13','2018-06-13 22:58:53','2018-06-13 22:58:53'),(54,77,2,3,2,2,'2018-06-13','2018-06-13 22:59:49','2018-06-13 22:59:49'),(56,79,1,2,2,3,'2018-06-13','2018-06-13 23:00:55','2018-06-13 23:00:55'),(57,76,1,4,2,2,'2018-06-13','2018-06-13 23:01:08','2018-06-13 23:01:08'),(59,80,1,3,2,1,'2018-06-14','2018-06-14 14:38:22','2018-06-14 14:38:22'),(61,82,3,2,2,1,'2018-06-14','2018-06-14 15:08:23','2018-06-14 15:08:23'),(62,81,2,4,2,1,'2018-06-14','2018-06-14 15:08:37','2018-06-14 15:08:37');
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinics`
--

LOCK TABLES `clinics` WRITE;
/*!40000 ALTER TABLE `clinics` DISABLE KEYS */;
INSERT INTO `clinics` VALUES (1,'THT HEALTH CENTER','fdafda3333'),(2,'York Medical Health Center','fdafdafa333');
/*!40000 ALTER TABLE `clinics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `clinic_id` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (1,'FrontDesk','2018-04-07 21:57:18','2018-04-07 21:57:18',0,0),(2,'Exam-Room-1','2018-04-07 21:57:32','2018-04-07 21:57:32',0,0),(3,'Exam-Room-2','2018-04-07 21:57:44','2018-04-07 21:57:44',0,0),(4,'Exam-Room-3','2018-04-07 21:57:54','2018-04-07 21:57:54',0,0),(5,'Exam-Room-4','2018-04-07 21:58:04','2018-04-07 21:58:04',0,0),(6,'Pharmacy-Desk-1','2018-04-08 17:39:59','2018-04-08 17:39:59',0,0),(7,'Pharmacy-Desk-2','2018-04-08 17:40:09','2018-04-08 17:40:09',0,5);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Family Doctors','FD',1,'2018-04-07 21:35:16','2018-04-08 17:24:44'),(2,'Walk-in Doctors','WD',1,'2018-04-07 21:35:53','2018-04-08 17:25:06'),(3,'Pharmacy','PH',1,'2018-04-08 17:25:42','2018-04-08 17:25:42');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(10) NOT NULL,
  `counter_id` int(10) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `eth_mac_addr` varchar(20) NOT NULL,
  `wifi_mac_addr` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `device_passcode` int(4) NOT NULL DEFAULT '5188',
  `admin_passcode` int(4) NOT NULL DEFAULT '2018',
  `lan_ip` varchar(100) NOT NULL,
  `wan_ip` int(100) NOT NULL,
  `key` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,1,NULL,'TV-1','','','TV',5188,2018,'192.168.1.21/203.222.2223.22',0,'FDfafda',0,'2018-05-15 14:32:15'),(2,1,NULL,'kiosk-1','','','KIOSK',5188,2018,'192.168.1.22/202.24.222.22',0,'fdafdafdaf',0,'2018-05-15 14:32:15'),(3,1,NULL,'PI3-1','','','PI3',5188,2018,'192.168.2.22/202.999.22.22',0,'ddfada',0,'2018-05-15 14:32:15');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'gb','English','UK English Female','United-Kingdom.png','2018-04-07 21:32:33','2018-04-07 21:32:33'),(2,'tr','Turkish','Turkish Female','Turkey.png','2018-04-07 21:32:33','2018-04-07 21:32:33'),(3,'de','German','Deutsch Female','Germany.png','2018-04-07 21:32:33','2018-04-07 21:32:33'),(4,'es','Spanish','Spanish Female','Spain.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(5,'fr','French','French Female','France.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(6,'in','Hindi','Hindi Female','India.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(7,'it','Italian','Italian Female','Italy.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(8,'pt','Portuguese','Portuguese Female','Portugal.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(9,'ru','Russian','Russian Female','Russia.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(10,'sa','Arabic','Arabic Male','Saudi-Arabia.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(11,'sk','Slovak','Slovak Female','Slovakia.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(12,'th','Thai','Thai Female','Thailand.png','2018-04-07 21:32:34','2018-04-07 21:32:34'),(13,'id','Indonesian','Indonesian Female','Indonesia.png','2018-04-07 21:32:34','2018-04-07 21:32:34');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beacon_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `detail` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_07_16_161740_create_departments_table',1),(4,'2016_07_16_180929_create_counters_table',1),(5,'2016_07_16_190715_create_queues_table',1),(6,'2016_07_19_170334_create_calls_table',1),(7,'2016_08_24_231859_create_languages_table',1),(8,'2016_09_28_123908_create_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(10) unsigned NOT NULL,
  `number` int(11) NOT NULL,
  `called` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demographic_no` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queues_department_id_foreign` (`department_id`),
  CONSTRAINT `queues_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
INSERT INTO `queues` VALUES (1,1,1,1,'2018-04-07 21:58:39','2018-04-07 21:59:08',NULL),(2,2,1,1,'2018-04-07 21:59:34','2018-04-07 21:59:47',NULL),(3,1,1,1,'2018-04-08 17:28:29','2018-04-08 17:29:55',NULL),(4,2,1,1,'2018-04-08 17:32:51','2018-04-08 17:33:22',NULL),(5,3,1,1,'2018-04-08 17:32:56','2018-04-08 17:53:18',NULL),(6,3,2,1,'2018-04-08 17:33:34','2018-04-08 17:54:09',NULL),(7,2,2,1,'2018-04-08 17:42:28','2018-04-08 17:55:08',NULL),(8,2,1,1,'2018-04-09 04:03:04','2018-04-09 15:43:01',NULL),(9,1,1,1,'2018-04-09 15:35:31','2018-04-09 15:36:16',NULL),(10,2,2,1,'2018-04-09 15:35:35','2018-04-09 15:45:05',NULL),(11,3,1,1,'2018-04-09 15:35:40','2018-04-09 15:41:32',NULL),(12,3,2,0,'2018-04-09 15:35:44','2018-04-09 15:35:44',NULL),(13,2,3,0,'2018-04-09 15:35:47','2018-04-09 15:35:47',NULL),(14,1,2,1,'2018-04-09 15:35:52','2018-04-09 15:41:13',NULL),(15,1,1,1,'2018-04-11 22:04:11','2018-04-11 22:05:30',NULL),(16,2,1,1,'2018-04-11 22:04:19','2018-04-11 22:07:08',NULL),(17,3,1,1,'2018-04-11 22:04:23','2018-04-11 22:06:34',NULL),(18,1,2,1,'2018-04-11 22:04:28','2018-04-12 00:36:35',NULL),(19,2,2,0,'2018-04-11 22:04:32','2018-04-11 22:04:32',NULL),(20,3,2,1,'2018-04-11 22:04:37','2018-04-11 22:06:46',NULL),(21,1,3,1,'2018-04-11 22:38:37','2018-04-12 00:36:52',NULL),(22,2,3,0,'2018-04-11 22:38:42','2018-04-11 22:38:42',NULL),(23,3,3,1,'2018-04-11 22:38:46','2018-04-11 22:40:04',NULL),(24,2,4,0,'2018-04-12 00:36:04','2018-04-12 00:36:04',NULL),(25,1,4,0,'2018-04-12 00:36:08','2018-04-12 00:36:08',NULL),(26,3,4,0,'2018-04-12 00:36:17','2018-04-12 00:36:17',NULL),(27,2,1,1,'2018-04-12 05:33:47','2018-04-12 06:01:29',NULL),(28,1,1,1,'2018-04-12 05:33:51','2018-04-12 05:34:25',NULL),(29,2,2,1,'2018-04-12 06:02:16','2018-04-12 06:02:36',NULL),(30,1,2,1,'2018-04-12 13:25:20','2018-04-12 13:25:53',NULL),(31,2,3,0,'2018-04-12 13:25:24','2018-04-12 13:25:24',NULL),(32,3,1,1,'2018-04-12 13:25:28','2018-04-12 13:26:42',NULL),(33,1,1,1,'2018-04-13 16:05:58','2018-04-13 16:07:09',NULL),(34,1,2,0,'2018-04-13 16:06:17','2018-04-13 16:06:17',NULL),(35,1,3,0,'2018-04-13 16:06:23','2018-04-13 16:06:23',NULL),(36,2,1,1,'2018-04-13 16:06:28','2018-04-13 16:11:00',NULL),(37,2,2,0,'2018-04-13 16:06:35','2018-04-13 16:06:35',NULL),(38,3,1,1,'2018-04-13 16:06:39','2018-04-13 16:10:08',NULL),(39,3,1,0,'2018-04-14 15:56:43','2018-04-14 15:56:43',NULL),(40,1,1,0,'2018-04-14 15:56:49','2018-04-14 15:56:49',NULL),(41,2,1,0,'2018-04-14 15:56:54','2018-04-14 15:56:54',NULL),(42,1,1,1,'2018-05-10 19:25:52','2018-05-10 19:26:58',NULL),(43,2,1,1,'2018-05-10 19:26:00','2018-05-10 19:27:37',NULL),(44,2,2,0,'2018-05-10 19:26:04','2018-05-10 19:26:04',NULL),(45,3,1,0,'2018-05-10 19:26:13','2018-05-10 19:26:13',NULL),(46,1,2,0,'2018-05-10 19:26:17','2018-05-10 19:26:17',NULL),(47,1,1,0,'2018-05-18 18:54:49','2018-05-18 18:54:49',NULL),(48,2,1,0,'2018-05-18 18:54:58','2018-05-18 18:54:58',NULL),(49,2,2,0,'2018-05-18 18:55:46','2018-05-18 18:55:46',NULL),(50,1,2,0,'2018-05-18 19:16:29','2018-05-18 19:16:29',NULL),(51,1,3,0,'2018-05-18 19:18:29','2018-05-18 19:18:29',NULL),(52,3,1,0,'2018-05-18 19:19:13','2018-05-18 19:19:13',NULL),(53,2,3,0,'2018-05-18 19:20:42','2018-05-18 19:20:42',NULL),(54,3,2,0,'2018-05-18 19:21:23','2018-05-18 19:21:23',NULL),(55,3,3,0,'2018-05-18 19:21:40','2018-05-18 19:21:40',NULL),(56,1,4,0,'2018-05-18 19:23:34','2018-05-18 19:23:34',NULL),(57,2,4,0,'2018-05-18 19:28:53','2018-05-18 19:28:53',NULL),(58,1,5,0,'2018-05-18 19:29:11','2018-05-18 19:29:11',NULL),(59,1,6,0,'2018-05-18 19:31:05','2018-05-18 19:31:05',NULL),(60,2,5,0,'2018-05-18 19:31:16','2018-05-18 19:31:16',NULL),(61,1,7,0,'2018-05-18 19:35:46','2018-05-18 19:35:46',NULL),(62,1,8,0,'2018-05-18 19:36:15','2018-05-18 19:36:15',NULL),(63,3,4,0,'2018-05-18 19:37:01','2018-05-18 19:37:01',NULL),(64,2,6,0,'2018-05-18 19:37:08','2018-05-18 19:37:08',NULL),(65,1,9,0,'2018-05-18 19:37:16','2018-05-18 19:37:16',NULL),(66,2,7,0,'2018-05-18 20:17:27','2018-05-18 20:17:27',NULL),(67,2,8,0,'2018-05-18 20:21:55','2018-05-18 20:21:55',NULL),(68,2,9,0,'2018-05-18 20:22:59','2018-05-18 20:22:59',NULL),(69,2,10,0,'2018-05-18 20:25:40','2018-05-18 20:25:40',NULL),(70,2,11,0,'2018-05-18 20:28:24','2018-05-18 20:28:24',NULL),(71,1,10,0,'2018-05-18 21:00:51','2018-05-18 21:00:51',NULL),(72,1,11,0,'2018-05-18 21:01:16','2018-05-18 21:01:16',NULL),(73,1,12,0,'2018-05-18 21:57:00','2018-05-18 21:57:00',NULL),(74,1,1,1,'2018-06-13 22:41:21','2018-06-13 22:41:39',NULL),(75,2,1,1,'2018-06-13 22:43:53','2018-06-13 22:58:53',NULL),(76,1,2,1,'2018-06-13 22:44:21','2018-06-13 23:00:21',NULL),(77,2,2,1,'2018-06-13 22:54:26','2018-06-13 22:59:49',NULL),(78,2,3,0,'2018-06-13 23:00:33','2018-06-13 23:00:33',NULL),(79,1,3,1,'2018-06-13 23:00:38','2018-06-13 23:00:55',NULL),(80,1,1,1,'2018-06-14 14:35:29','2018-06-14 14:37:42',NULL),(81,2,1,1,'2018-06-14 14:35:49','2018-06-14 15:08:37',NULL),(82,3,1,1,'2018-06-14 14:35:55','2018-06-14 14:39:07',NULL);
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification` text COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `over_time` int(11) NOT NULL,
  `missed_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_language_id_foreign` (`language_id`),
  CONSTRAINT `settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,'Thrinity Health Technologies','','','company_email@example.com','','','Heather, welcome to THT',60,'#f7184e','',20,20,'2018-04-07 21:32:34','2018-06-13 22:59:11');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `clinic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin','your_email@rxample.com','A','$2y$10$ItnvNn9.TFYHNgthlGctqe0UkQhA0E/U.8U17hdNvx52gL1cQiN.W','hbaVLoebkExPmgovUEG9BHmzoiD40tgT6QsSiMYhTMYiF7luImLuNOG6lRR1','2018-04-07 21:32:33','2018-04-09 03:49:12',NULL),(2,'Jackey Yang','jackey','jackey@oscarservice.com','S','$2y$10$Ul/wVhbNlfsKbIh73/rrqOvzyy.jxgDK83aEz3x4Y48untj2JGFPq','ZJIDXlpPNE8sxf1uIlzpiRKdP9azzM7VnTfeyHfR47GYpeoGJ6NKlkOfJ0Fx','2018-04-08 17:27:33','2018-04-09 03:53:56',NULL);
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

-- Dump completed on 2018-06-19 15:35:13
