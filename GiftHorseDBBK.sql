-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: GiftHorseDBBK
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BasketContents`
--

DROP TABLE IF EXISTS `BasketContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `BasketContents` (
  `ProdID` varchar(45) NOT NULL,
  `ItemID` varchar(45) NOT NULL,
  `ItemQty` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProdID`,`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasketContents`
--

LOCK TABLES `BasketContents` WRITE;
/*!40000 ALTER TABLE `BasketContents` DISABLE KEYS */;
INSERT INTO `BasketContents` VALUES ('g03','0002',1),('g03','1000',1),('g03','2300',2),('g03','2400',2),('g03','2500',2);
/*!40000 ALTER TABLE `BasketContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customers` (
  `CustID` int(11) NOT NULL,
  `CustCity` varchar(45) DEFAULT NULL,
  `CustLname` varchar(45) DEFAULT NULL,
  `CustFname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'River Falls','Elfergani','Bashier'),(2,'Enlgewood','Feigum','Marge'),(3,'Chilton','Manion','Thom'),(4,'Wales','Gee','Alexandra'),(5,'Hudson','Langdon','Mary');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Items` (
  `ItemID` varchar(45) NOT NULL,
  `VendID` varchar(45) NOT NULL,
  `ItemPrice` varchar(45) DEFAULT NULL,
  `ItemDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`,`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES ('1000','16','1.39','Medium fabric liner'),('2','3','4.50','Midium wicker basket'),('2300','7','0.99','Card Deck'),('2400','7','3.49','Poker Chip Set'),('2500','14','3.65','Cribbage Board'),('4','3','6.15','Large wicker basket');
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderLine`
--

DROP TABLE IF EXISTS `OrderLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `OrderLine` (
  `OrdID` varchar(45) NOT NULL,
  `ProdID` varchar(45) NOT NULL,
  `ProdQty` int(11) DEFAULT NULL,
  `UnitPrice` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrdID`,`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderLine`
--

LOCK TABLES `OrderLine` WRITE;
/*!40000 ALTER TABLE `OrderLine` DISABLE KEYS */;
INSERT INTO `OrderLine` VALUES ('100400','s04',1,'40'),('100400','w01',1,'45.99'),('100422','g01',1,'75.25'),('100422','w02',1,'45.99'),('100426','s04',3,'45.99'),('100500','s03',1,'39.99'),('100555','s03',2,'39.99'),('100555','s04',2,'40.00');
/*!40000 ALTER TABLE `OrderLine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Orders` (
  `OrdID` varchar(45) NOT NULL,
  `CustID` int(11) NOT NULL,
  `OrdDate` date DEFAULT NULL,
  `PaidDate` date DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipAddr` varchar(45) DEFAULT NULL,
  `ShipCity` varchar(45) DEFAULT NULL,
  `ShipCompany` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrdID`,`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES ('100399',2,'2013-12-06','2013-12-06','2013-12-07','15 East Main St','Baltimore','USPS'),('100400',3,'2013-12-06','2013-12-06','2012-12-07','2000 Iron Way Rd Apt 12','Planter','USPS'),('100422',2,'2013-12-11','2013-12-11','2013-12-12','13556 Shady Pine Drive','Planter','USPS'),('100426',4,'2013-02-16','2013-02-16','2013-02-17','20 Winsor Woods Drive','St Paul','USPS'),('100500',1,'2012-04-15','2012-04-15','2012-04-16','1010 Millam St','Houston','UPS'),('100555',1,'2018-10-16','2018-10-16',NULL,'151 Rum River Rd','Planter','UPS');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Products` (
  `ProdID` varchar(45) NOT NULL,
  `ProdName` varchar(45) DEFAULT NULL,
  `ProdPrice` varchar(45) DEFAULT NULL,
  `ProdDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES ('f01','Smoothie Combo','24.75','Pleasing mixutre of five fresh fruits-one whole pinapple, purple grapes, 6 bananas, two mangos, and a half pound of fresh bluenerries in a large wicker basket'),('f02','Pinapple Duet','7.25','Two fresh sweet whole pinapples in a medium plastic basket with fabric liner'),('g01','Rainy Day Game Collection','75.25','Pictionary card deck,Poker chip set, Dominos, Cribbage and Uno in a large covered wicker basket'),('g02','Party Time Game Collection','75.25','Pictionary, 2 Card decks, Poker Chips, Uno Attack , Tabooo in a large covered wicker basket'),('g03','Card Party','67.00','2 Card decks, 2 Poker Chip Sets, and 2 Cribbage Boards in a medium fabric-lined wicker basket'),('s03','Fudge OverBoard','39.99','1 lb dark choclate fudge, 1/4 espresso roast coffee, 1/2 lb almonds in a small wicker basket lined in gree satin'),('s04','Good Four you','40.00','1/2 Pound Almonds, 6 banans, 1/2 pound of fresh blueberries, and 16 oz organic yogurt in a medium wicker basket with contents sealed in plastic'),('w01','Wine with your cheese red','45.99','Two bottles of white wine red with 8 0z wheel of Colby cheese in a fancy wicker basket lined in red/blue plaid linen');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendors`
--

DROP TABLE IF EXISTS `Vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Vendors` (
  `VendID` varchar(45) NOT NULL,
  `VendCity` varchar(45) DEFAULT NULL,
  `VendCompany` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendors`
--

LOCK TABLES `Vendors` WRITE;
/*!40000 ALTER TABLE `Vendors` DISABLE KEYS */;
INSERT INTO `Vendors` VALUES ('10','Sarasota','Fruit Factroy'),('14','Eau Claire','Eau Claier Foods'),('2','Greenville','Carmen Grocers'),('3','Alma','Kateman Basketry'),('7','Greenville','Games Galore, LLC'),('8','Minneapolis','River Falls Baskets');
/*!40000 ALTER TABLE `Vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-18 16:58:02
