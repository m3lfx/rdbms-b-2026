-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_sample1b
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barcode`
--
CREATE DATABASE db_sample1b;
USE db_sample1b;
DROP TABLE IF EXISTS `barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barcode` (
  `barcode_ean` char(13) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`barcode_ean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barcode`
--

LOCK TABLES `barcode` WRITE;
/*!40000 ALTER TABLE `barcode` DISABLE KEYS */;
INSERT INTO `barcode` VALUES ('2239872376872',11),('3453458677628',5),('4587263646878',9),('6241234586487',8),('6241527746363',4),('6241527836173',1),('6241574635234',2),('6264537836173',3),('6434564564544',6),('8476736836876',7),('9473625532534',8),('9473627464543',8),('9879879837489',11);
/*!40000 ALTER TABLE `barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c2`
--

DROP TABLE IF EXISTS `c2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c2` (
  `fname` varchar(32) DEFAULT NULL,
  `lname` varchar(32) NOT NULL,
  `zipcode2` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c2`
--

LOCK TABLES `c2` WRITE;
/*!40000 ALTER TABLE `c2` DISABLE KEYS */;
INSERT INTO `c2` VALUES ('Alex','Matthew','NT22TX'),('Neil','Matther','NT37RT'),('Richard','stones','BG42WE'),('Ann','stones','BG42WE'),('Dave','Jones','BG38GD'),('ann','stones','4444'),('ann','stones','4444');
/*!40000 ALTER TABLE `c2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctwo`
--

DROP TABLE IF EXISTS `ctwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctwo` (
  `lname` varchar(32) NOT NULL,
  `zipcode2` char(15) DEFAULT NULL,
  `last_contact` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctwo`
--

LOCK TABLES `ctwo` WRITE;
/*!40000 ALTER TABLE `ctwo` DISABLE KEYS */;
INSERT INTO `ctwo` VALUES ('Matthew','NT22TX',NULL),('stones','BG42WE',NULL),('Jones','BG38GD',NULL),('Matther','NT37RT',NULL),('stones','BG42WE',NULL);
/*!40000 ALTER TABLE `ctwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(4) DEFAULT NULL,
  `fname` varchar(32) DEFAULT NULL,
  `lname` varchar(32) NOT NULL,
  `addressline` varchar(64) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `zipcode` char(10) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Mr','Andrew','stones','52 The willows','lowtown','LT57RA','876 3527'),(3,'Miss','Alex','Matthew','4 The Street','Nicetown','NT22TX','010 4567'),(4,'Mr','Adrian','MAtthew','The Barn','Yuleville','YV672WR','487 3871'),(5,'Mr','Simon','Cozens','7 Shady Lane','Oahenham','OA36Qw','514 5926'),(6,'Mr','Neil','Matther','5 Pasture Lane','Nicetown','NT37RT','267 1232'),(7,'Mr','Richard','stones','34 Holly Way','Bingham','BG42WE','342 5982'),(8,'Mrs','Ann','stones','34 Holly Way','Bingham','BG42WE','342 5982'),(9,'Mrs','Christine','Hickman','36 Queen Street','Histon','HT35EM','342 5432'),(10,'Mr','Mike','Howard','86 Dysart Street','Tibsville','TB37FG','505 5482'),(11,'Mr','Dave','Jones','54 Vale Rise','Bingham','BG38GD','342 8264'),(12,'Mr','Richard','Neil','42 Thached Way','Winersbay','WB36GQ','505 6482'),(13,'Mrs','Laura','Hendy','73 MArgaritta Way','Oxbridge','OX23HX','821 2335');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) NOT NULL,
  `cost_price` decimal(7,2) DEFAULT NULL,
  `sell_price` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Wood Puzzel',15.23,21.95),(2,'Rubik Cube',7.45,11.49),(3,'Linux CD',1.99,2.49),(4,'Tissues',2.11,3.99),(5,'PIcture Frame',7.54,9.95),(6,'Fan Small',9.23,15.75),(7,'Fan Large',13.36,19.95),(8,'ToothBrush',0.75,1.45),(9,'Roman Coin',2.34,2.45),(10,'Carrier Bag',100.00,100.01),(11,'Speakers',19.73,25.32);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderinfo` (
  `orderinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date_placed` date NOT NULL,
  `date_shipped` date DEFAULT NULL,
  `shipping` decimal(7,2) DEFAULT NULL,
  `status` enum('processing','delivered','canceled') NOT NULL DEFAULT 'processing',
  PRIMARY KEY (`orderinfo_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` VALUES (6,2,'2026-05-12','2026-05-12',100.00,'processing');
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderline` (
  `orderinfo_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderinfo_id`,`item_id`),
  KEY `item_id` (`item_id`),
  KEY `orderinfo_id` (`orderinfo_id`),
  CONSTRAINT `orderline_item_fk` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  CONSTRAINT `orderline_orderinfo_fk` FOREIGN KEY (`orderinfo_id`) REFERENCES `orderinfo` (`orderinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (6,8,5),(6,9,5);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,12),(2,2),(4,8),(5,3),(7,8),(8,18),(10,1);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcolcons`
--

DROP TABLE IF EXISTS `testcolcons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcolcons` (
  `Colnotnull` int(11) NOT NULL,
  `Colprikey` int(11) NOT NULL,
  `Coldefault` int(11) DEFAULT 42,
  PRIMARY KEY (`Colprikey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcolcons`
--

LOCK TABLES `testcolcons` WRITE;
/*!40000 ALTER TABLE `testcolcons` DISABLE KEYS */;
INSERT INTO `testcolcons` VALUES (1,1,1),(2,2,NULL),(3,3,42);
/*!40000 ALTER TABLE `testcolcons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttconst`
--

DROP TABLE IF EXISTS `ttconst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttconst` (
  `mykey1` int(11) DEFAULT NULL,
  `mykey2` int(11) NOT NULL,
  `mystring` varchar(15) NOT NULL,
  PRIMARY KEY (`mykey2`,`mystring`),
  UNIQUE KEY `cs1` (`mykey1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttconst`
--

LOCK TABLES `ttconst` WRITE;
/*!40000 ALTER TABLE `ttconst` DISABLE KEYS */;
INSERT INTO `ttconst` VALUES (1,2,'Amy Jones'),(2,2,'Dave jones');
/*!40000 ALTER TABLE `ttconst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12 10:33:38
