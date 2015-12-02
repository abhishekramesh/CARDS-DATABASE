CREATE DATABASE  IF NOT EXISTS `comp5531g3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `comp5531g3`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: us-cdbr-azure-east-b.cloudapp.net    Database: comp5531g3
-- ------------------------------------------------------
-- Server version	5.5.42-log

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
-- Table structure for table `accident`
--

DROP TABLE IF EXISTS `accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accident` (
  `date` int(10) DEFAULT NULL,
  `details` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `vin` varbinary(16) DEFAULT NULL,
  KEY `FKaccident248194` (`vin`),
  CONSTRAINT `FKaccident248194` FOREIGN KEY (`vin`) REFERENCES `details` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accident`
--

LOCK TABLES `accident` WRITE;
/*!40000 ALTER TABLE `accident` DISABLE KEYS */;
/*!40000 ALTER TABLE `accident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `vin` varbinary(16) NOT NULL,
  `model name` varchar(50) NOT NULL,
  `brand name` varchar(50) NOT NULL,
  `year` date DEFAULT NULL,
  `trim` int(10) DEFAULT NULL,
  `mileage` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`vin`),
  KEY `FKcar21216` (`brand name`,`model name`),
  CONSTRAINT `FKcar21216` FOREIGN KEY (`brand name`, `model name`) REFERENCES `makes models` (`brand name`, `model name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_feature`
--

DROP TABLE IF EXISTS `car_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_feature` (
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `FKcar_featur473541` (`vin`),
  CONSTRAINT `FKcar_featur473541` FOREIGN KEY (`vin`) REFERENCES `car` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_feature`
--

LOCK TABLES `car_feature` WRITE;
/*!40000 ALTER TABLE `car_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmaker`
--

DROP TABLE IF EXISTS `carmaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carmaker` (
  `brand name` varchar(50) NOT NULL,
  PRIMARY KEY (`brand name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmaker`
--

LOCK TABLES `carmaker` WRITE;
/*!40000 ALTER TABLE `carmaker` DISABLE KEYS */;
/*!40000 ALTER TABLE `carmaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors_available`
--

DROP TABLE IF EXISTS `colors_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors_available` (
  `vin` varbinary(16) NOT NULL,
  `color name` varchar(50) NOT NULL,
  `rating` int(10) DEFAULT NULL,
  PRIMARY KEY (`vin`),
  UNIQUE KEY `color name` (`color name`),
  KEY `FKcolors_ava360343` (`vin`),
  CONSTRAINT `FKcolors_ava360343` FOREIGN KEY (`vin`) REFERENCES `has color` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors_available`
--

LOCK TABLES `colors_available` WRITE;
/*!40000 ALTER TABLE `colors_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compagny`
--

DROP TABLE IF EXISTS `compagny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compagny` (
  `name` varchar(250) NOT NULL,
  `address` int(10) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compagny`
--

LOCK TABLES `compagny` WRITE;
/*!40000 ALTER TABLE `compagny` DISABLE KEYS */;
/*!40000 ALTER TABLE `compagny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `name` varchar(250) NOT NULL,
  `address` int(10) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contries`
--

DROP TABLE IF EXISTS `contries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contries` (
  `contry` varchar(45) NOT NULL,
  `iso2` char(2) NOT NULL,
  `iso3` char(3) NOT NULL,
  `iso_num` int(11) NOT NULL,
  PRIMARY KEY (`contry`,`iso2`,`iso3`,`iso_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contries`
--

LOCK TABLES `contries` WRITE;
/*!40000 ALTER TABLE `contries` DISABLE KEYS */;
INSERT INTO `contries` VALUES ('Afghanistan','AF','AFG',4),('Aland Islands','AX','ALA',248),('Albania','AL','ALB',8),('Algeria','DZ','DZA',12),('American Samoa','AS','ASM',16),('Andorra','AD','AND',20),('Angola','AO','AGO',24),('Anguilla','AI','AIA',660),('Antarctica','AQ','ATA',10),('Antigua and Barbuda','AG','ATG',28),('Argentina','AR','ARG',32),('Armenia','AM','ARM',51),('Aruba','AW','ABW',533),('Australia','AU','AUS',36),('Austria','AT','AUT',40),('Azerbaijan','AZ','AZE',31),('Bahamas','BS','BHS',44),('Bahrain','BH','BHR',48),('Bangladesh','BD','BGD',50),('Barbados','BB','BRB',52),('Belarus','BY','BLR',112),('Belgium','BE','BEL',56),('Belize','BZ','BLZ',84),('Benin','BJ','BEN',204),('Bermuda','BM','BMU',60),('Bhutan','BT','BTN',64),('Bolivia','BO','BOL',68),('Bosnia and Herzegovina','BA','BIH',70),('Botswana','BW','BWA',72),('Bouvet Island','BV','BVT',74),('Brazil','BR','BRA',76),('British Indian Ocean Territory','IO','IOT',86),('British Virgin Islands','VG','VGB',92),('Brunei Darussalam','BN','BRN',96),('Bulgaria','BG','BGR',100),('Burkina Faso','BF','BFA',854),('Burundi','BI','BDI',108),('Cambodia','KH','KHM',116),('Cameroon','CM','CMR',120),('Canada','CA','CAN',124),('Cape Verde','CV','CPV',132),('Cayman Islands','KY','CYM',136),('Central African Republic','CF','CAF',140),('Chad','TD','TCD',148),('Chile','CL','CHL',152),('China','CN','CHN',156),('Christmas Island','CX','CXR',162),('Cocos (Keeling) Islands','CC','CCK',166),('Colombia','CO','COL',170),('Comoros','KM','COM',174);
/*!40000 ALTER TABLE `contries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `details` int(10) DEFAULT NULL,
  `transaction id` int(11) NOT NULL,
  `vin` int(10) NOT NULL,
  PRIMARY KEY (`transaction id`,`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `rust` int(10) DEFAULT NULL,
  `accidents` int(10) DEFAULT NULL,
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `FKdetails880145` (`vin`),
  CONSTRAINT `FKdetails880145` FOREIGN KEY (`vin`) REFERENCES `has details` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `document` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee of compagny`
--

DROP TABLE IF EXISTS `employee of compagny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee of compagny` (
  `user id` varbinary(16) NOT NULL,
  `compagnyname` varchar(250) NOT NULL,
  PRIMARY KEY (`user id`,`compagnyname`),
  KEY `FKEmployee o432907` (`user id`),
  KEY `FKEmployee o374545` (`compagnyname`),
  CONSTRAINT `FKEmployee o374545` FOREIGN KEY (`compagnyname`) REFERENCES `company` (`name`),
  CONSTRAINT `FKEmployee o432907` FOREIGN KEY (`user id`) REFERENCES `user` (`user id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee of compagny`
--

LOCK TABLES `employee of compagny` WRITE;
/*!40000 ALTER TABLE `employee of compagny` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee of compagny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_role`
--

DROP TABLE IF EXISTS `employees_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_role` (
  `user id` varbinary(16) NOT NULL,
  `Roleemployee id` varbinary(16) NOT NULL,
  PRIMARY KEY (`user id`,`Roleemployee id`),
  KEY `FKEmployees_956542` (`user id`),
  CONSTRAINT `FKEmployees_956542` FOREIGN KEY (`user id`) REFERENCES `user` (`user id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_role`
--

LOCK TABLES `employees_role` WRITE;
/*!40000 ALTER TABLE `employees_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature` (
  `ac` int(10) DEFAULT NULL,
  `doors` int(10) DEFAULT NULL,
  `cylinders` int(10) DEFAULT NULL,
  `transmission` int(10) DEFAULT NULL,
  `all road` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee type`
--

DROP TABLE IF EXISTS `fee type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee type` (
  `type id` int(11) DEFAULT NULL,
  `type descripton` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee type`
--

LOCK TABLES `fee type` WRITE;
/*!40000 ALTER TABLE `fee type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has acidents`
--

DROP TABLE IF EXISTS `has acidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has acidents` (
  `vin` varbinary(16) DEFAULT NULL,
  KEY `FKhas aciden159262` (`vin`),
  CONSTRAINT `FKhas aciden159262` FOREIGN KEY (`vin`) REFERENCES `details` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has acidents`
--

LOCK TABLES `has acidents` WRITE;
/*!40000 ALTER TABLE `has acidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `has acidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has color`
--

DROP TABLE IF EXISTS `has color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has color` (
  `vin` varbinary(16) NOT NULL,
  `model name` varchar(50) NOT NULL,
  `brand name` varchar(50) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `FKhas color741659` (`brand name`,`model name`),
  KEY `FKhas color778668` (`vin`),
  CONSTRAINT `FKhas color778668` FOREIGN KEY (`vin`) REFERENCES `car` (`vin`),
  CONSTRAINT `FKhas color741659` FOREIGN KEY (`brand name`, `model name`) REFERENCES `makes models` (`brand name`, `model name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has color`
--

LOCK TABLES `has color` WRITE;
/*!40000 ALTER TABLE `has color` DISABLE KEYS */;
/*!40000 ALTER TABLE `has color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has details`
--

DROP TABLE IF EXISTS `has details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has details` (
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `FKhas detail255182` (`vin`),
  CONSTRAINT `FKhas detail255182` FOREIGN KEY (`vin`) REFERENCES `car` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has details`
--

LOCK TABLES `has details` WRITE;
/*!40000 ALTER TABLE `has details` DISABLE KEYS */;
/*!40000 ALTER TABLE `has details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makes models`
--

DROP TABLE IF EXISTS `makes models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makes models` (
  `model name` varchar(50) NOT NULL,
  `brand name` varchar(50) NOT NULL,
  PRIMARY KEY (`model name`),
  KEY `FKmakes mode981658` (`brand name`),
  CONSTRAINT `FKmakes mode981658` FOREIGN KEY (`brand name`) REFERENCES `carmaker` (`brand name`),
  CONSTRAINT `makes models_ibfk_1` FOREIGN KEY (`brand name`) REFERENCES `carmaker` (`brand name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makes models`
--

LOCK TABLES `makes models` WRITE;
/*!40000 ALTER TABLE `makes models` DISABLE KEYS */;
/*!40000 ALTER TABLE `makes models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owns car`
--

DROP TABLE IF EXISTS `owns car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owns car` (
  `transaction id` varbinary(16) NOT NULL,
  `vin` varbinary(16) NOT NULL,
  `user id` varbinary(16) NOT NULL,
  PRIMARY KEY (`transaction id`,`vin`,`user id`),
  KEY `FKowns car851378` (`user id`),
  KEY `FKowns car198644` (`transaction id`,`vin`),
  CONSTRAINT `FKowns car198644` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`),
  CONSTRAINT `FKowns car851378` FOREIGN KEY (`user id`) REFERENCES `user` (`user id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owns car`
--

LOCK TABLES `owns car` WRITE;
/*!40000 ALTER TABLE `owns car` DISABLE KEYS */;
/*!40000 ALTER TABLE `owns car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menulabel` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment method`
--

DROP TABLE IF EXISTS `payment method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment method` (
  `cash` int(10) DEFAULT NULL,
  `cheque` int(10) DEFAULT NULL,
  `wire transfer` int(10) DEFAULT NULL,
  `permission id` varbinary(16) NOT NULL,
  KEY `FKpayment me767547` (`permission id`),
  CONSTRAINT `FKpayment me767547` FOREIGN KEY (`permission id`) REFERENCES `payment permission` (`permission id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment method`
--

LOCK TABLES `payment method` WRITE;
/*!40000 ALTER TABLE `payment method` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment permission`
--

DROP TABLE IF EXISTS `payment permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment permission` (
  `permission id` varbinary(16) NOT NULL,
  `permission description` int(11) DEFAULT NULL,
  `payment method` int(10) DEFAULT NULL,
  PRIMARY KEY (`permission id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment permission`
--

LOCK TABLES `payment permission` WRITE;
/*!40000 ALTER TABLE `payment permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemissions`
--

DROP TABLE IF EXISTS `pemissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemissions` (
  `permission id` varbinary(16) NOT NULL,
  `permission description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`permission id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemissions`
--

LOCK TABLES `pemissions` WRITE;
/*!40000 ALTER TABLE `pemissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pemissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricing` (
  `estimated price` decimal(19,0) NOT NULL,
  `purchased price` decimal(19,2) NOT NULL,
  `sales price` decimal(19,2) DEFAULT NULL,
  `transaction id` varbinary(16) DEFAULT NULL,
  `vin` varbinary(16) DEFAULT NULL,
  KEY `FKpricing497131` (`transaction id`,`vin`),
  CONSTRAINT `FKpricing497131` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_pemissions`
--

DROP TABLE IF EXISTS `role_pemissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_pemissions` (
  `permission id` varbinary(16) NOT NULL,
  `user id` varbinary(16) NOT NULL,
  PRIMARY KEY (`permission id`),
  KEY `FKrole_pemis367296` (`permission id`),
  CONSTRAINT `FKrole_pemis367296` FOREIGN KEY (`permission id`) REFERENCES `pemissions` (`permission id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_pemissions`
--

LOCK TABLES `role_pemissions` WRITE;
/*!40000 ALTER TABLE `role_pemissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_pemissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `date` int(10) DEFAULT NULL,
  `details` int(10) DEFAULT NULL,
  `document` int(10) DEFAULT NULL,
  `photo` int(10) DEFAULT NULL,
  `transaction id` varbinary(16) NOT NULL,
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`transaction id`,`vin`),
  KEY `FKsource947355` (`transaction id`,`vin`),
  CONSTRAINT `FKsource947355` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `transactiontransaction id` int(11) NOT NULL,
  `transactioncarvin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction id` varbinary(16) NOT NULL,
  `vin` varbinary(16) NOT NULL,
  `owns carcustomercustomer id` int(11) NOT NULL,
  `purchase data` date DEFAULT NULL,
  `payment data` int(10) DEFAULT NULL,
  `payment method` int(10) DEFAULT NULL,
  `doubtful account indicator` int(10) DEFAULT NULL,
  `delivery address` int(10) DEFAULT NULL,
  `source address` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`transaction id`,`vin`),
  UNIQUE KEY `transaction id` (`transaction id`),
  KEY `FKtransactio580101` (`vin`),
  CONSTRAINT `FKtransactio580101` FOREIGN KEY (`vin`) REFERENCES `car` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction approbation`
--

DROP TABLE IF EXISTS `transaction approbation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction approbation` (
  `user id` int(10) NOT NULL AUTO_INCREMENT,
  `transaction id` varbinary(16) DEFAULT NULL,
  `vin` varbinary(16) DEFAULT NULL,
  PRIMARY KEY (`user id`),
  KEY `FKtransactio287336` (`transaction id`,`vin`),
  CONSTRAINT `FKtransactio287336` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction approbation`
--

LOCK TABLES `transaction approbation` WRITE;
/*!40000 ALTER TABLE `transaction approbation` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction approbation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction type`
--

DROP TABLE IF EXISTS `transaction type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction type` (
  `type` binary(1) NOT NULL COMMENT 'Purchase / sale',
  `transaction id` varbinary(16) NOT NULL,
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`transaction id`,`vin`),
  KEY `FKtransactio432968` (`transaction id`,`vin`),
  CONSTRAINT `FKtransactio432968` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction type`
--

LOCK TABLES `transaction type` WRITE;
/*!40000 ALTER TABLE `transaction type` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_payment method`
--

DROP TABLE IF EXISTS `transaction_payment method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_payment method` (
  `transaction id` varbinary(16) NOT NULL,
  `vin` varbinary(16) NOT NULL,
  PRIMARY KEY (`transaction id`,`vin`),
  KEY `FKtransactio922442` (`transaction id`,`vin`),
  CONSTRAINT `FKtransactio922442` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `transaction` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_payment method`
--

LOCK TABLES `transaction_payment method` WRITE;
/*!40000 ALTER TABLE `transaction_payment method` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_payment method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transition`
--

DROP TABLE IF EXISTS `transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transition` (
  `user id` int(10) NOT NULL,
  `documents` int(10) DEFAULT NULL,
  `location` varchar(250) NOT NULL,
  `status` int(10) NOT NULL,
  `transaction id` int(11) NOT NULL,
  `vin` int(10) NOT NULL,
  PRIMARY KEY (`user id`,`transaction id`,`vin`),
  KEY `FKtransition726169` (`transaction id`,`vin`),
  CONSTRAINT `FKtransition726169` FOREIGN KEY (`transaction id`, `vin`) REFERENCES `destination` (`transaction id`, `vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transition`
--

LOCK TABLES `transition` WRITE;
/*!40000 ALTER TABLE `transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user id` varbinary(16) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ejc55311','b8ce54be2d02fc3b7be823fcfc0ada90acfc5227'),(3,'martin.morin.2','2ec9ff5220e5a0e7b066ad140d3003618f7b1742');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_in_roles`
--

DROP TABLE IF EXISTS `users_in_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_in_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_in_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_in_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_in_roles`
--

LOCK TABLES `users_in_roles` WRITE;
/*!40000 ALTER TABLE `users_in_roles` DISABLE KEYS */;
INSERT INTO `users_in_roles` VALUES (1,1,1),(3,3,2);
/*!40000 ALTER TABLE `users_in_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'comp5531g3'
--

--
-- Dumping routines for database 'comp5531g3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-16 22:38:14
