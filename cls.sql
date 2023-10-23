CREATE DATABASE  IF NOT EXISTS `community_loan_scheme` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `community_loan_scheme`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: community_loan_scheme
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Thomas Jones','thomas.jones@tjs.com','+44 163 356 789','79 Elm Street, Newport, NP10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(2,'Mary Evans','mary.evans@marys.com','+44 179 256 123','101 Birch Street, Swansea, SA1 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(3,'David Williams','david.williams@dais.com','+44 120 293 445','12 Oak Street, Cardiff, CF10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(4,'Sarah Davies','sarah.davies@sarahdavies.com','+44 163 356 789','45 Elm Street, Newport, NP10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(5,'John Roberts','john.roberts@jrs.com','+44 120 2956 789','56 Ash Street, Cardiff, CF10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(6,'Susan Morgan','susan.morgan@morgans.com','+44 123 456 789','67 Conifer Road, Newport, NP10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(7,'David Lewis','david.lewis@davelewis.com','+44 123 456 789','30 Park Street, Newport, NP10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(8,'Anne Hughes','anne.hughes@hughesforrest.com','+44 129 206 789','89 Oak Street, Cardiff, CF10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48'),(9,'Peter Griffiths','peter.griffiths@griffos.com','+44 163 356 789','12 Birch Street, Newport, NP10 1AA','2023-10-17 18:36:48','2023-10-17 18:36:48');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'available',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,1,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(2,2,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(3,3,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(4,4,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(5,5,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(6,6,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(7,7,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(8,8,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(9,9,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(10,10,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(11,11,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(12,12,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(13,13,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(14,14,'available','2023-10-17 18:51:45','2023-10-17 18:51:45'),(15,15,'available','2023-10-17 18:51:45','2023-10-17 18:51:45');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `loan_report`
--

DROP TABLE IF EXISTS `loan_report`;
/*!50001 DROP VIEW IF EXISTS `loan_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `loan_report` AS SELECT 
 1 AS `customer_name`,
 1 AS `product_name`,
 1 AS `loan_start_date`,
 1 AS `loan_end_date`,
 1 AS `loan_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `good_id` int NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_end_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `good_id` (`good_id`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,1,1,'2023-10-17','2023-10-31','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(2,2,2,'2023-10-18','2023-10-30','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(3,3,3,'2023-10-19','2023-10-29','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(4,4,4,'2023-10-20','2023-10-28','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(5,5,5,'2023-10-21','2023-10-27','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(6,6,6,'2023-10-22','2023-10-26','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(7,7,7,'2023-10-23','2023-10-25','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(8,8,8,'2023-10-24','2023-10-24','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(9,9,9,'2023-10-25','2023-10-23','active','2023-10-17 18:51:52','2023-10-17 18:51:52'),(10,1,2,'2023-11-17','2023-11-30','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(11,1,3,'2023-11-18','2023-11-30','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(12,3,4,'2023-11-19','2023-11-29','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(13,3,6,'2023-11-20','2023-11-28','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(14,3,7,'2023-11-21','2023-11-27','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(15,6,5,'2023-11-22','2023-11-26','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(16,6,3,'2023-11-23','2023-11-25','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(17,8,2,'2023-11-24','2023-11-24','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(18,9,1,'2023-11-25','2023-11-26','active','2023-10-17 19:54:45','2023-10-17 19:54:45'),(19,1,2,'2023-12-17','2023-12-24','pending','2023-10-17 20:45:25','2023-10-17 20:45:25'),(20,1,2,'2023-12-17','2023-12-24','pending','2023-10-18 17:36:52','2023-10-18 17:36:52');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `supplier_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pressure washer','A high-powered water jet for cleaning driveways, patios, and other outdoor surfaces.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(2,'Hoover','A vacuum cleaner for cleaning floors and carpets.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(3,'Pram','A baby carriage for transporting a baby or toddler.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(4,'Toolkit','A set of tools for carrying out minor repairs and maintenance.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(5,'Lawnmower','A machine for cutting grass.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(6,'Hose','A flexible pipe for carrying water.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(7,'Hedge trimmer','A powered tool for trimming hedges and bushes.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(8,'Strimmers','A powered tool for trimming grass and other vegetation.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(9,'Tile cutter','A tool for cutting tiles.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(10,'Ladder','A portable structure that allows people to reach high places.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(11,'Paint sprayer','A tool for spraying paint onto surfaces.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(12,'Drills','A power tool for making holes in materials.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(13,'Saws','A tool for cutting materials.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(14,'Hammers','A tool for driving nails and other fasteners.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(15,'Screwdrivers','A tool for turning screws.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(16,'Tape measures','A tool for measuring distances.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02'),(17,'Level','A tool for ensuring that surfaces are level.',1,'2023-10-17 18:36:02','2023-10-17 18:36:02');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Jones Tools','info@jonestools.co.uk','+44 123 456 789','123 Main Street, Cardiff, CF10 1AA','2023-10-17 18:34:18','2023-10-17 18:34:18'),(2,'Evans Hire','info@evanshire.co.uk','+44 789 456 123','456 Queen Street, Swansea, SA1 1AA','2023-10-17 18:34:18','2023-10-17 18:34:18'),(3,'Williams Rentals','info@williamsrentals.co.uk','+44 123 456 789','890 High Street, Newport, NP10 1AA','2023-10-17 18:34:18','2023-10-17 18:34:18');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'community_loan_scheme'
--

--
-- Dumping routines for database 'community_loan_scheme'
--
/*!50003 DROP FUNCTION IF EXISTS `get_average_loan_duration_by_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_average_loan_duration_by_product`(product_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
  DECLARE AVG_LOAN_DURATION DECIMAL(10,2) ;
  
  SELECT AVG(loan_end_date - loan_start_date) INTO AVG_LOAN_DURATION FROM loans WHERE good_id = product_id;
  
  RETURN AVG_LOAN_DURATION;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_new_loan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_new_loan`(
  IN customer_id INT,
  IN good_id INT,
  IN loan_start_date DATE,
  IN loan_end_date DATE
)
BEGIN
  INSERT INTO loans (customer_id, good_id, loan_start_date, loan_end_date, status)
  VALUES (customer_id, good_id, loan_start_date, loan_end_date, 'pending');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `loan_report`
--

/*!50001 DROP VIEW IF EXISTS `loan_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `loan_report` AS select `customers`.`name` AS `customer_name`,`products`.`name` AS `product_name`,`loans`.`loan_start_date` AS `loan_start_date`,`loans`.`loan_end_date` AS `loan_end_date`,`loans`.`status` AS `loan_status` from ((`loans` join `customers` on((`loans`.`customer_id` = `customers`.`id`))) join `products` on((`loans`.`good_id` = `products`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23 15:39:18
