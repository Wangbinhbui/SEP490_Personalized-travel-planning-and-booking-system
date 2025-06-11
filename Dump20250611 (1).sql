-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tourdb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `ai_recommendations`
--

DROP TABLE IF EXISTS `ai_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_recommendations` (
  `recommendation_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `budget` decimal(15,2) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `tour_type` enum('fixed','flexible') NOT NULL,
  `itinerary` text NOT NULL,
  `is_open` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recommendation_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ai_recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_recommendations`
--

LOCK TABLES `ai_recommendations` WRITE;
/*!40000 ALTER TABLE `ai_recommendations` DISABLE KEYS */;
INSERT INTO `ai_recommendations` VALUES (1,1,2000.00,'Da Nang','flexible','Day 1: Marble Mountains, Day 2: Hoi An',1,'2025-06-11 15:37:46'),(2,6,1500.00,'Sapa','fixed','Day 1: Cat Cat Village, Day 2: Fansipan',0,'2025-06-11 15:37:46'),(3,8,3000.00,'Ha Long Bay','flexible','Day 1: Cruise, Day 2: Kayaking',1,'2025-06-11 15:37:46'),(4,10,1200.00,'Hue','fixed','Day 1: Imperial Citadel, Day 2: Tombs',1,'2025-06-11 15:37:46'),(5,1,1800.00,'Phu Quoc','flexible','Day 1: Sao Beach, Day 2: Vinpearl',0,'2025-06-11 15:37:46'),(6,6,2500.00,'Nha Trang','fixed','Day 1: Diving, Day 2: Island Hopping',1,'2025-06-11 15:37:46'),(7,8,1000.00,'Hoi An','flexible','Day 1: Ancient Town, Day 2: Cooking Class',0,'2025-06-11 15:37:46'),(8,10,2200.00,'Mekong Delta','fixed','Day 1: Cai Be, Day 2: Can Tho',1,'2025-06-11 15:37:46'),(9,1,1700.00,'Hanoi','flexible','Day 1: Old Quarter, Day 2: West Lake',1,'2025-06-11 15:37:46'),(10,6,2800.00,'Da Lat','fixed','Day 1: Flower Gardens, Day 2: Waterfalls',0,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `ai_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Travel Tips','2025-06-11 15:37:46'),(2,'Destination Guides','2025-06-11 15:37:46'),(3,'Customer Stories','2025-06-11 15:37:46'),(4,'Food and Culture','2025-06-11 15:37:46'),(5,'Adventure Travel','2025-06-11 15:37:46'),(6,'Luxury Experiences','2025-06-11 15:37:46'),(7,'Family Travel','2025-06-11 15:37:46'),(8,'Eco Travel','2025-06-11 15:37:46'),(9,'Photography Tips','2025-06-11 15:37:46'),(10,'Wellness Travel','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag_mappings`
--

DROP TABLE IF EXISTS `blog_tag_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_tag_mappings` (
  `blog_tag_id` bigint NOT NULL AUTO_INCREMENT,
  `blog_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`blog_tag_id`),
  KEY `blog_id` (`blog_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `blog_tag_mappings_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`blog_id`) ON DELETE CASCADE,
  CONSTRAINT `blog_tag_mappings_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `blog_tags` (`tag_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag_mappings`
--

LOCK TABLES `blog_tag_mappings` WRITE;
/*!40000 ALTER TABLE `blog_tag_mappings` DISABLE KEYS */;
INSERT INTO `blog_tag_mappings` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `blog_tag_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_tags` (
  `tag_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tags`
--

LOCK TABLES `blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
INSERT INTO `blog_tags` VALUES (1,'Hanoi','2025-06-11 15:37:46'),(2,'Hue','2025-06-11 15:37:46'),(3,'Phu Quoc','2025-06-11 15:37:46'),(4,'Sapa','2025-06-11 15:37:46'),(5,'Da Nang','2025-06-11 15:37:46'),(6,'Mekong Delta','2025-06-11 15:37:46'),(7,'Ha Long Bay','2025-06-11 15:37:46'),(8,'Nha Trang','2025-06-11 15:37:46'),(9,'Hoi An','2025-06-11 15:37:46'),(10,'Ba Na Hills','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `blog_id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `status` enum('draft','published','hidden') DEFAULT 'draft',
  `created_by` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`blog_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Top 5 Hanoi Attractions','Explore Hoan Kiem Lake, Old Quarter, and more...',1,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(2,'Hue’s Imperial Legacy','A guide to Hue’s UNESCO sites...',2,'draft',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(3,'Phu Quoc’s Best Beaches','Relax on Sao Beach and beyond...',2,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(4,'Sapa Trekking Guide','Tips for trekking in Sapa...',5,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(5,'Da Nang and Hoi An Itinerary','Plan your coastal adventure...',2,'draft',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(6,'Mekong Delta Adventures','Cruise the rivers and markets...',8,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(7,'Ha Long Bay Cruise Tips','Make the most of your bay cruise...',1,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(8,'Nha Trang Diving Spots','Discover underwater wonders...',5,'draft',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(9,'Hoi An Lantern Festival Guide','Experience Hoi An’s magic...',4,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(10,'Ba Na Hills Golden Bridge','Visit this iconic landmark...',2,'published',3,'2025-06-11 15:37:46','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_groups`
--

DROP TABLE IF EXISTS `booking_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_groups` (
  `group_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `room_partner_id` bigint DEFAULT NULL,
  `vehicle_partner_id` bigint DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`group_id`),
  KEY `booking_id` (`booking_id`),
  KEY `room_partner_id` (`room_partner_id`),
  KEY `vehicle_partner_id` (`vehicle_partner_id`),
  CONSTRAINT `booking_groups_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE,
  CONSTRAINT `booking_groups_ibfk_2` FOREIGN KEY (`room_partner_id`) REFERENCES `partners` (`partner_id`) ON DELETE SET NULL,
  CONSTRAINT `booking_groups_ibfk_3` FOREIGN KEY (`vehicle_partner_id`) REFERENCES `partners` (`partner_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_groups`
--

LOCK TABLES `booking_groups` WRITE;
/*!40000 ALTER TABLE `booking_groups` DISABLE KEYS */;
INSERT INTO `booking_groups` VALUES (1,1,'Phuc Family',2,1,1,3,'Needs extra bed'),(2,2,'Mai Solo',1,0,NULL,3,NULL),(3,3,'Thu Group',3,2,7,NULL,'Vegetarian meals'),(4,4,'Yen Duo',2,0,4,10,'Late check-in'),(5,5,'Phuc Couple',1,1,1,NULL,'Child-friendly activities'),(6,6,'Hoa Team',4,0,NULL,3,'Needs Wi-Fi'),(7,7,'Thu Family',2,2,7,10,'Allergic to seafood'),(8,8,'Dung Solo',1,0,NULL,NULL,NULL),(9,9,'Phuc Group',3,1,4,3,'Early departure'),(10,10,'Hoa Duo',2,0,1,NULL,'Prefers quiet room');
/*!40000 ALTER TABLE `booking_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `tour_id` bigint NOT NULL,
  `status` enum('pending','processing','confirmed','cancelled','completed','refunded') NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `deposit_amount` decimal(15,2) NOT NULL,
  `remaining_amount` decimal(15,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,1,'confirmed',2,1,1500.00,500.00,1000.00,'2025-07-01','2025-06-11 15:37:46','2025-06-11 15:37:46'),(2,6,2,'pending',1,0,1000.00,300.00,700.00,'2025-07-15','2025-06-11 15:37:46','2025-06-11 15:37:46'),(3,8,3,'processing',3,2,2500.00,800.00,1700.00,'2025-08-01','2025-06-11 15:37:46','2025-06-11 15:37:46'),(4,10,4,'confirmed',2,0,1200.00,400.00,800.00,'2025-08-15','2025-06-11 15:37:46','2025-06-11 15:37:46'),(5,1,5,'cancelled',1,1,800.00,200.00,600.00,'2025-09-01','2025-06-11 15:37:46','2025-06-11 15:37:46'),(6,6,6,'completed',4,0,2000.00,600.00,1400.00,'2025-06-15','2025-06-11 15:37:46','2025-06-11 15:37:46'),(7,8,7,'confirmed',2,2,3000.00,1000.00,2000.00,'2025-09-15','2025-06-11 15:37:46','2025-06-11 15:37:46'),(8,10,8,'processing',1,0,900.00,300.00,600.00,'2025-10-01','2025-06-11 15:37:46','2025-06-11 15:37:46'),(9,1,9,'pending',3,1,1800.00,500.00,1300.00,'2025-10-15','2025-06-11 15:37:46','2025-06-11 15:37:46'),(10,6,10,'confirmed',2,0,1100.00,400.00,700.00,'2025-11-01','2025-06-11 15:37:46','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_tours`
--

DROP TABLE IF EXISTS `campaign_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_tours` (
  `campaign_tour_id` bigint NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint NOT NULL,
  `tour_id` bigint NOT NULL,
  PRIMARY KEY (`campaign_tour_id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `campaign_tours_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE CASCADE,
  CONSTRAINT `campaign_tours_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_tours`
--

LOCK TABLES `campaign_tours` WRITE;
/*!40000 ALTER TABLE `campaign_tours` DISABLE KEYS */;
INSERT INTO `campaign_tours` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `campaign_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_vouchers`
--

DROP TABLE IF EXISTS `campaign_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_vouchers` (
  `campaign_voucher_id` bigint NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint NOT NULL,
  `voucher_id` bigint NOT NULL,
  PRIMARY KEY (`campaign_voucher_id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `voucher_id` (`voucher_id`),
  CONSTRAINT `campaign_vouchers_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE CASCADE,
  CONSTRAINT `campaign_vouchers_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`voucher_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_vouchers`
--

LOCK TABLES `campaign_vouchers` WRITE;
/*!40000 ALTER TABLE `campaign_vouchers` DISABLE KEYS */;
INSERT INTO `campaign_vouchers` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `campaign_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `campaign_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('upcoming','ongoing','ended') NOT NULL,
  `created_by` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaign_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'Summer Adventure','Explore Vietnam’s summer destinations','2025-06-01','2025-08-31','ongoing',3,'2025-06-11 15:37:46'),(2,'Winter Retreat','Cozy winter tours','2025-12-01','2026-02-28','upcoming',3,'2025-06-11 15:37:46'),(3,'Cultural Journey','Discover Vietnam’s heritage','2025-04-01','2025-05-31','upcoming',3,'2025-06-11 15:37:46'),(4,'Beach Bliss','Relax on Vietnam’s beaches','2025-07-01','2025-09-30','ongoing',3,'2025-06-11 15:37:46'),(5,'Eco Explorer','Sustainable travel options','2025-05-01','2025-06-30','upcoming',3,'2025-06-11 15:37:46'),(6,'Luxury Getaway','Premium travel experiences','2025-08-01','2025-10-31','ongoing',3,'2025-06-11 15:37:46'),(7,'Family Fun','Tours for all ages','2025-06-15','2025-08-15','ongoing',3,'2025-06-11 15:37:46'),(8,'Food Festival','Taste Vietnam’s cuisine','2025-09-01','2025-10-31','upcoming',3,'2025-06-11 15:37:46'),(9,'Photo Safari','Capture Vietnam’s beauty','2025-10-01','2025-11-30','upcoming',3,'2025-06-11 15:37:46'),(10,'Wellness Retreat','Relax and rejuvenate','2025-11-01','2025-12-31','upcoming',3,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_ins`
--

DROP TABLE IF EXISTS `check_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_ins` (
  `check_in_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `location` varchar(255) NOT NULL,
  `check_in_type` enum('photo_upload') NOT NULL,
  `points_earned` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`check_in_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `check_ins_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_ins`
--

LOCK TABLES `check_ins` WRITE;
/*!40000 ALTER TABLE `check_ins` DISABLE KEYS */;
INSERT INTO `check_ins` VALUES (1,1,'Hoan Kiem Lake','photo_upload',10,'2025-06-11 15:37:46'),(2,2,'Imperial Citadel','photo_upload',5,'2025-06-11 15:37:46'),(3,3,'Sao Beach','photo_upload',15,'2025-06-11 15:37:46'),(4,4,'Cat Cat Village','photo_upload',8,'2025-06-11 15:37:46'),(5,5,'Marble Mountains','photo_upload',6,'2025-06-11 15:37:46'),(6,6,'Cai Be Market','photo_upload',12,'2025-06-11 15:37:46'),(7,7,'Sung Sot Cave','photo_upload',10,'2025-06-11 15:37:46'),(8,8,'Hon Mun Island','photo_upload',7,'2025-06-11 15:37:46'),(9,9,'Thu Bon River','photo_upload',9,'2025-06-11 15:37:46'),(10,10,'Golden Bridge','photo_upload',10,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `check_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE,
  CONSTRAINT `feedback_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,5,'Fantastic Hanoi tour, highly recommend!','2025-06-11 15:37:46'),(2,2,4,'Hue was beautiful, but guide was late','2025-06-11 15:37:46'),(3,3,3,'Phu Quoc was crowded but relaxing','2025-06-11 15:37:46'),(4,4,5,'Sapa trekking was unforgettable!','2025-06-11 15:37:46'),(5,5,2,'Cancelled due to poor communication','2025-06-11 15:37:46'),(6,6,4,'Mekong tour was fun, but boat was old','2025-06-11 15:37:46'),(7,7,5,'Ha Long Bay was breathtaking!','2025-06-11 15:37:46'),(8,8,3,'Nha Trang diving was okay, expected more','2025-06-11 15:37:46'),(9,9,4,'Hoi An’s lanterns were magical','2025-06-11 15:37:46'),(10,10,5,'Golden Bridge was a highlight!','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `media_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `booking_id` bigint NOT NULL,
  `media_type` enum('photo','video') NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`media_id`),
  KEY `user_id` (`user_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'photo','https://example.com/hanoi_photo1.jpg',1,'2025-06-11 15:37:46'),(2,6,2,'video','https://example.com/hue_video1.mp4',0,'2025-06-11 15:37:46'),(3,8,3,'photo','https://example.com/phuquoc_photo1.jpg',1,'2025-06-11 15:37:46'),(4,10,4,'photo','https://example.com/sapa_photo1.jpg',1,'2025-06-11 15:37:46'),(5,1,5,'video','https://example.com/danang_video1.mp4',0,'2025-06-11 15:37:46'),(6,6,6,'photo','https://example.com/mekong_photo1.jpg',1,'2025-06-11 15:37:46'),(7,8,7,'photo','https://example.com/halong_photo1.jpg',1,'2025-06-11 15:37:46'),(8,10,8,'video','https://example.com/nhatrang_video1.mp4',0,'2025-06-11 15:37:46'),(9,1,9,'photo','https://example.com/hoian_photo1.jpg',1,'2025-06-11 15:37:46'),(10,6,10,'photo','https://example.com/banahills_photo1.jpg',1,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `partner_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `logo_url` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `service_type` enum('hotel','restaurant','transport','tour_guide','ticket','other') NOT NULL DEFAULT 'other',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Hanoi Paradise Hotel','Luxury hotel in Hanoi','https://example.com/paradise_logo.jpg','https://hanoiparadise.com','hotel','2025-06-11 15:37:46'),(2,'Pho 24 Restaurant','Authentic Vietnamese phở','https://example.com/pho24_logo.jpg','https://pho24.com','restaurant','2025-06-11 15:37:46'),(3,'Saigon Transport','Reliable tour buses',NULL,'https://saigontransport.com','transport','2025-06-11 15:37:46'),(4,'Hue Heritage Hotel','Historic hotel in Hue','https://example.com/hue_logo.jpg','https://hueheritage.com','hotel','2025-06-11 15:37:46'),(5,'Nha Trang Seafood','Fresh seafood dining',NULL,'https://nhatrangseafood.com','restaurant','2025-06-11 15:37:46'),(6,'Da Nang Tours','Local tour operator','https://example.com/danang_logo.jpg',NULL,'tour_guide','2025-06-11 15:37:46'),(7,'Phu Quoc Resort','Beachfront resort','https://example.com/phuquoc_logo.jpg','https://phuquocresort.com','hotel','2025-06-11 15:37:46'),(8,'Hoi An Cafe','Cozy cafe in Hoi An',NULL,'https://hoiancafe.com','restaurant','2025-06-11 15:37:46'),(9,'Sapa Trekking','Mountain trekking services','https://example.com/sapa_logo.jpg',NULL,'tour_guide','2025-06-11 15:37:46'),(10,'Mekong Delta Boats','River tour boats',NULL,'https://mekongboats.com','transport','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_method` enum('vnpay','bank_transfer','cash') NOT NULL,
  `payment_type` enum('deposit','remaining','additional','refund') NOT NULL,
  `status` enum('pending','success','failed') NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,500.00,'vnpay','deposit','success','txn_12345','2025-06-11 15:37:46'),(2,2,300.00,'bank_transfer','deposit','pending','txn_67890','2025-06-11 15:37:46'),(3,3,800.00,'cash','deposit','success',NULL,'2025-06-11 15:37:46'),(4,4,400.00,'vnpay','deposit','success','txn_11223','2025-06-11 15:37:46'),(5,5,200.00,'bank_transfer','deposit','failed','txn_99887','2025-06-11 15:37:46'),(6,6,600.00,'cash','deposit','success',NULL,'2025-06-11 15:37:46'),(7,7,1000.00,'vnpay','deposit','success','txn_33445','2025-06-11 15:37:46'),(8,8,300.00,'bank_transfer','deposit','pending','txn_77665','2025-06-11 15:37:46'),(9,9,500.00,'cash','deposit','success',NULL,'2025-06-11 15:37:46'),(10,10,400.00,'vnpay','deposit','success','txn_55667','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `social_login_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `provider` enum('gmail','facebook') NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  PRIMARY KEY (`social_login_id`),
  UNIQUE KEY `provider` (`provider`,`provider_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `social_logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
INSERT INTO `social_logins` VALUES (1,1,'gmail','google_12345'),(2,2,'facebook','fb_67890'),(3,3,'gmail','google_54321'),(4,4,'facebook','fb_11223'),(5,5,'gmail','google_99887'),(6,6,'facebook','fb_33445'),(7,7,'gmail','google_77665'),(8,8,'facebook','fb_55667'),(9,9,'gmail','google_33441'),(10,10,'facebook','fb_77889');
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_guide_reports`
--

DROP TABLE IF EXISTS `tour_guide_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_guide_reports` (
  `report_id` bigint NOT NULL AUTO_INCREMENT,
  `tour_id` bigint NOT NULL,
  `tour_code` varchar(100) NOT NULL,
  `guide_id` bigint NOT NULL,
  `report_content` text NOT NULL,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`),
  KEY `tour_id` (`tour_id`),
  KEY `guide_id` (`guide_id`),
  CONSTRAINT `tour_guide_reports_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE,
  CONSTRAINT `tour_guide_reports_ibfk_2` FOREIGN KEY (`guide_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_guide_reports`
--

LOCK TABLES `tour_guide_reports` WRITE;
/*!40000 ALTER TABLE `tour_guide_reports` DISABLE KEYS */;
INSERT INTO `tour_guide_reports` VALUES (1,1,'HOQ_001',5,'All activities completed, great group','2025-06-11 15:37:46'),(2,2,'HIC_001',5,'Weather caused minor delays','2025-06-11 15:37:46'),(3,3,'PQB_001',5,'High customer satisfaction','2025-06-11 15:37:46'),(4,4,'SMT_001',5,'Trekking group was energetic','2025-06-11 15:37:46'),(5,5,'DCT_001',5,'Hoi An visit was a highlight','2025-06-11 15:37:46'),(6,6,'MDR_001',5,'Smooth cruise, good feedback','2025-06-11 15:37:46'),(7,7,'HLC_001',5,'Kayaking was popular','2025-06-11 15:37:46'),(8,8,'NTD_001',5,'Diving conditions were excellent','2025-06-11 15:37:46'),(9,9,'HLF_001',5,'Lantern festival was magical','2025-06-11 15:37:46'),(10,10,'BNH_001',5,'Golden Bridge impressed all','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `tour_guide_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_itineraries`
--

DROP TABLE IF EXISTS `tour_itineraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_itineraries` (
  `itinerary_id` bigint NOT NULL AUTO_INCREMENT,
  `tour_id` bigint NOT NULL,
  `day_number` int NOT NULL,
  `description` text NOT NULL,
  `destination` varchar(255) NOT NULL,
  PRIMARY KEY (`itinerary_id`),
  UNIQUE KEY `tour_id` (`tour_id`,`day_number`),
  CONSTRAINT `tour_itineraries_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_itineraries`
--

LOCK TABLES `tour_itineraries` WRITE;
/*!40000 ALTER TABLE `tour_itineraries` DISABLE KEYS */;
INSERT INTO `tour_itineraries` VALUES (1,1,1,'Visit Hoan Kiem Lake and Ngoc Son Temple','Hanoi'),(2,2,1,'Tour the Imperial Citadel and Dong Ba Market','Hue'),(3,3,1,'Relax at Sao Beach and explore night market','Phu Quoc'),(4,4,1,'Trek to Cat Cat Village and enjoy local culture','Sapa'),(5,5,1,'Explore Marble Mountains and Hoi An ancient town','Da Nang'),(6,6,1,'Cruise through Cai Be floating market','Mekong Delta'),(7,7,1,'Sail to Sung Sot Cave and kayak in the bay','Ha Long Bay'),(8,8,1,'Dive at Hon Mun Island and relax on the beach','Nha Trang'),(9,9,1,'Join the lantern festival and dine by Thu Bon River','Hoi An'),(10,10,1,'Visit Golden Bridge and enjoy Ba Na Hills','Da Nang');
/*!40000 ALTER TABLE `tour_itineraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_operation_logs`
--

DROP TABLE IF EXISTS `tour_operation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_operation_logs` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id` bigint NOT NULL,
  `status` enum('awaiting_op_approval','approved_for_operation','rejected_pending_admin_refund','ongoing','completed') NOT NULL,
  `action_by` bigint DEFAULT NULL,
  `action_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `booking_id` (`booking_id`),
  KEY `action_by` (`action_by`),
  CONSTRAINT `tour_operation_logs_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE,
  CONSTRAINT `tour_operation_logs_ibfk_2` FOREIGN KEY (`action_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_operation_logs`
--

LOCK TABLES `tour_operation_logs` WRITE;
/*!40000 ALTER TABLE `tour_operation_logs` DISABLE KEYS */;
INSERT INTO `tour_operation_logs` VALUES (1,1,'approved_for_operation',3,'Tour confirmed and ready','2025-06-11 15:37:46'),(2,2,'awaiting_op_approval',3,'Pending operator review','2025-06-11 15:37:46'),(3,3,'ongoing',3,'Tour in progress','2025-06-11 15:37:46'),(4,4,'completed',3,'Tour finished successfully','2025-06-11 15:37:46'),(5,5,'rejected_pending_admin_refund',3,'Cancelled with refund pending','2025-06-11 15:37:46'),(6,6,'completed',3,'All activities completed','2025-06-11 15:37:46'),(7,7,'approved_for_operation',3,'Ready for departure','2025-06-11 15:37:46'),(8,8,'awaiting_op_approval',3,'Awaiting final approval','2025-06-11 15:37:46'),(9,9,'ongoing',3,'Tour started today','2025-06-11 15:37:46'),(10,10,'approved_for_operation',3,'Confirmed and scheduled','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `tour_operation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_theme_mappings`
--

DROP TABLE IF EXISTS `tour_theme_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_theme_mappings` (
  `mapping_id` bigint NOT NULL AUTO_INCREMENT,
  `tour_id` bigint NOT NULL,
  `theme_id` bigint NOT NULL,
  PRIMARY KEY (`mapping_id`),
  KEY `tour_id` (`tour_id`),
  KEY `theme_id` (`theme_id`),
  CONSTRAINT `tour_theme_mappings_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`) ON DELETE CASCADE,
  CONSTRAINT `tour_theme_mappings_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `tour_themes` (`theme_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_theme_mappings`
--

LOCK TABLES `tour_theme_mappings` WRITE;
/*!40000 ALTER TABLE `tour_theme_mappings` DISABLE KEYS */;
INSERT INTO `tour_theme_mappings` VALUES (1,1,2),(2,2,2),(3,3,3),(4,4,1),(5,5,3),(6,6,5),(7,7,3),(8,8,1),(9,9,2),(10,10,7);
/*!40000 ALTER TABLE `tour_theme_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_themes`
--

DROP TABLE IF EXISTS `tour_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_themes` (
  `theme_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_themes`
--

LOCK TABLES `tour_themes` WRITE;
/*!40000 ALTER TABLE `tour_themes` DISABLE KEYS */;
INSERT INTO `tour_themes` VALUES (1,'Adventure','Thrilling outdoor activities like trekking and kayaking','2025-06-11 15:37:46'),(2,'Cultural','Explore Vietnam’s rich history and traditions','2025-06-11 15:37:46'),(3,'Relaxation','Peaceful beach and spa destinations','2025-06-11 15:37:46'),(4,'Foodie','Culinary tours with local cuisine','2025-06-11 15:37:46'),(5,'Eco-Tourism','Sustainable travel in natural settings','2025-06-11 15:37:46'),(6,'History','Visit historical landmarks and museums','2025-06-11 15:37:46'),(7,'Luxury','High-end travel experiences','2025-06-11 15:37:46'),(8,'Family','Fun activities for all ages','2025-06-11 15:37:46'),(9,'Photography','Capture stunning landscapes and cultures','2025-06-11 15:37:46'),(10,'Wellness','Yoga and wellness retreats','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `tour_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `tour_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` enum('fixed','flexible','ai_suggested') NOT NULL,
  `description` text,
  `duration_days` int NOT NULL,
  `status` enum('draft','pending_approval','active','rejected') DEFAULT 'draft',
  `region` enum('north','central','south') NOT NULL,
  `min_participants` int NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tour_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Hanoi Old Quarter Tour','fixed','Discover Hanoi’s historic streets',2,'active','north',5,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(2,'Hue Imperial City Tour','flexible','Explore Hue’s UNESCO sites',3,'pending_approval','central',3,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(3,'Phu Quoc Beach Getaway','ai_suggested','Relax on pristine beaches',4,'draft','south',2,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(4,'Sapa Mountain Trek','fixed','Trek through Sapa’s rice terraces',3,'active','north',4,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(5,'Da Nang Coastal Tour','flexible','Visit Marble Mountains and Hoi An',2,'active','central',3,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(6,'Mekong Delta River Tour','fixed','Cruise the Mekong’s waterways',2,'pending_approval','south',5,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(7,'Ha Long Bay Cruise','ai_suggested','Sail through stunning limestone karsts',3,'active','north',6,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(8,'Nha Trang Diving Adventure','flexible','Dive into Nha Trang’s coral reefs',4,'draft','central',2,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(9,'Hoi An Lantern Festival','fixed','Experience Hoi An’s magical nights',2,'active','central',4,2,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(10,'Ba Na Hills Golden Bridge','ai_suggested','Visit the iconic Golden Bridge',1,'active','central',3,2,'2025-06-11 15:37:46','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_points`
--

DROP TABLE IF EXISTS `user_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_points` (
  `user_point_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `points` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_point_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_points_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_points`
--

LOCK TABLES `user_points` WRITE;
/*!40000 ALTER TABLE `user_points` DISABLE KEYS */;
INSERT INTO `user_points` VALUES (1,1,50,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(2,2,20,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(3,3,10,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(4,4,15,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(5,5,25,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(6,6,30,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(7,7,5,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(8,8,40,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(9,9,35,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(10,10,20,'2025-06-11 15:37:46','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `user_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `role` enum('customer','seller','admin','staff','marketing_staff','tour_guide') NOT NULL,
  `is_blocked` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyen.xuan.phuc@gmail.com','hashed_password_1','Nguyễn Xuân Phúc','0901234561','https://example.com/avatar1.jpg','customer',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(2,'tran.thi.mai@gmail.com','hashed_password_2','Trần Thị Mai','0901234562',NULL,'seller',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(3,'le.van.hung@gmail.com','hashed_password_3','Lê Văn Hùng','0901234563','https://example.com/avatar3.jpg','admin',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(4,'pham.thi.lan@gmail.com','hashed_password_4','Phạm Thị Lan','0901234564',NULL,'staff',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(5,'hoang.van.nam@gmail.com','hashed_password_5','Hoàng Văn Nam','0901234565','https://example.com/avatar5.jpg','tour_guide',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(6,'nguyen.thi.hoa@gmail.com','hashed_password_6','Nguyễn Thị Hoa','0901234566',NULL,'customer',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(7,'tran.van.tuan@gmail.com','hashed_password_7','Trần Văn Tuấn','0901234567','https://example.com/avatar7.jpg','marketing_staff',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(8,'le.thi.thu@gmail.com','hashed_password_8','Lê Thị Thu','0901234568',NULL,'customer',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(9,'pham.van.dung@gmail.com','hashed_password_9','Phạm Văn Dũng','0901234569','https://example.com/avatar9.jpg','seller',0,'2025-06-11 15:37:46','2025-06-11 15:37:46'),(10,'hoang.thi.yen@gmail.com','hashed_password_10','Hoàng Thị Yến','0901234570',NULL,'customer',0,'2025-06-11 15:37:46','2025-06-11 15:37:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_usage`
--

DROP TABLE IF EXISTS `voucher_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher_usage` (
  `voucher_usage_id` bigint NOT NULL AUTO_INCREMENT,
  `voucher_id` bigint NOT NULL,
  `booking_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `used_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`voucher_usage_id`),
  KEY `voucher_id` (`voucher_id`),
  KEY `booking_id` (`booking_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `voucher_usage_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`voucher_id`) ON DELETE CASCADE,
  CONSTRAINT `voucher_usage_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE,
  CONSTRAINT `voucher_usage_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_usage`
--

LOCK TABLES `voucher_usage` WRITE;
/*!40000 ALTER TABLE `voucher_usage` DISABLE KEYS */;
INSERT INTO `voucher_usage` VALUES (1,1,1,1,'2025-06-11 15:37:46'),(2,2,2,6,'2025-06-11 15:37:46'),(3,3,3,8,'2025-06-11 15:37:46'),(4,4,4,10,'2025-06-11 15:37:46'),(5,5,5,1,'2025-06-11 15:37:46'),(6,6,6,6,'2025-06-11 15:37:46'),(7,7,7,8,'2025-06-11 15:37:46'),(8,8,8,10,'2025-06-11 15:37:46'),(9,9,9,1,'2025-06-11 15:37:46'),(10,10,10,6,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `voucher_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `voucher_id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `description` text,
  `discount_amount` decimal(15,2) NOT NULL,
  `points_required` int NOT NULL,
  `min_order_value` decimal(15,2) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `max_usage` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`voucher_id`),
  UNIQUE KEY `code` (`code`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `vouchers_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (1,'SUMMER25','25% off summer tours',25.00,100,500.00,'2025-06-01','2025-08-31','active',100,3,'2025-06-11 15:37:46'),(2,'WINTER10','10% off winter tours',10.00,50,300.00,'2025-12-01','2026-02-28','active',200,3,'2025-06-11 15:37:46'),(3,'CULTURE20','20% off cultural tours',20.00,80,400.00,'2025-04-01','2025-05-31','active',150,3,'2025-06-11 15:37:46'),(4,'BEACH15','15% off beach tours',15.00,60,350.00,'2025-07-01','2025-09-30','active',120,3,'2025-06-11 15:37:46'),(5,'ECO30','30% off eco tours',30.00,120,600.00,'2025-05-01','2025-06-30','active',80,3,'2025-06-11 15:37:46'),(6,'LUXURY50','50% off luxury tours',50.00,200,1000.00,'2025-08-01','2025-10-31','active',50,3,'2025-06-11 15:37:46'),(7,'FAMILY20','20% off family tours',20.00,80,400.00,'2025-06-15','2025-08-15','active',150,3,'2025-06-11 15:37:46'),(8,'FOOD10','10% off food tours',10.00,40,200.00,'2025-09-01','2025-10-31','active',200,3,'2025-06-11 15:37:46'),(9,'PHOTO15','15% off photo tours',15.00,60,350.00,'2025-10-01','2025-11-30','active',120,3,'2025-06-11 15:37:46'),(10,'WELLNESS25','25% off wellness tours',25.00,100,500.00,'2025-11-01','2025-12-31','active',100,3,'2025-06-11 15:37:46');
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-11 22:38:50
