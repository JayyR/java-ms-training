CREATE DATABASE  IF NOT EXISTS `customers-db` /*!40100 DEFAULT CHARACTER SET latin1 */;

create user `customers-user`@`%` identified by 'password';
grant all privileges on `customers-db`.* to `customers-user`@`%`;

USE `customers-db`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: customers-db
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `AddressID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `IsDefaultShipping` bit(1) NOT NULL DEFAULT b'0',
  `IsDefaultBilling` bit(1) NOT NULL DEFAULT b'0',
  `Version` int(11) NOT NULL DEFAULT '1',
  `ObjectID` binary(16) DEFAULT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `City` (`City`),
  KEY `PostalCode` (`PostalCode`),
  KEY `Region` (`Region`),
  KEY `FK_Addresses_Customers` (`CustomerID`),
  CONSTRAINT `FK_Addresses_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,1,'Obere Str. 57','Berlin',NULL,'12209','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(2,2,'Avda. de la Constitucin 2222','Mxico D.F.',NULL,'05021','Mexico',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(3,3,'Mataderos  2312','Mxico D.F.',NULL,'05023','Mexico',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(4,4,'120 Hanover Sq.','London',NULL,'WA1 1DP','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(5,5,'Berguvsvgen  8','Lule',NULL,'S-958 22','Sweden',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(6,6,'Forsterstr. 57','Mannheim',NULL,'68306','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(7,7,'24, place Klber','Strasbourg',NULL,'67000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(8,8,'C/ Araquil, 67','Madrid',NULL,'28023','Spain',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(9,9,'12, rue des Bouchers','Marseille',NULL,'13008','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(10,10,'23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(11,11,'Fauntleroy Circus','London',NULL,'EC2 5NT','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(12,12,'Cerrito 333','Buenos Aires',NULL,'1010','Argentina',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(13,13,'Sierras de Granada 9993','Mxico D.F.',NULL,'05022','Mexico',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(14,14,'Hauptstr. 29','Bern',NULL,'3012','Switzerland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(15,15,'Av. dos Lusadas, 23','Sao Paulo','SP','05432-043','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(16,16,'Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(17,17,'Walserweg 21','Aachen',NULL,'52066','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(18,18,'67, rue des Cinquante Otages','Nantes',NULL,'44000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(19,19,'35 King George','London',NULL,'WX3 6FW','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(20,20,'Kirchgasse 6','Graz',NULL,'8010','Austria',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(21,21,'Rua Ors, 92','Sao Paulo','SP','05442-030','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(22,22,'C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(23,23,'184, chausse de Tournai','Lille',NULL,'59000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(24,24,'kergatan 24','Brcke',NULL,'S-844 67','Sweden',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(25,25,'Berliner Platz 43','Mnchen',NULL,'80805','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(26,26,'54, rue Royale','Nantes',NULL,'44000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(27,27,'Via Monte Bianco 34','Torino',NULL,'10100','Italy',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(28,28,'Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(29,29,'Rambla de Catalua, 23','Barcelona',NULL,'08022','Spain',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(30,30,'C/ Romero, 33','Sevilla',NULL,'41101','Spain',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(31,31,'Av. Brasil, 442','Campinas','SP','04876-786','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(32,32,'2732 Baker Blvd.','Eugene','OR','97403','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(33,33,'5 Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(34,34,'Rua do Pao, 67','Rio de Janeiro','RJ','05454-876','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(35,35,'Carrera 22 con Ave. Carlos Soublette #8-35','San Cristbal','Tchira','5022','Venezuela',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(36,36,'City Center Plaza 516 Main St.','Elgin','OR','97827','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(37,37,'8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(38,38,'Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(39,39,'Maubelstr. 90','Brandenburg',NULL,'14776','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(40,40,'67, avenue de l\'Europe','Versailles',NULL,'78000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(41,41,'1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(42,42,'1900 Oak St.','Vancouver','BC','V3F 2K1','Canada',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(43,43,'12 Orchestra Terrace','Walla Walla','WA','99362','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(44,44,'Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(45,45,'87 Polk St. Suite 5','San Francisco','CA','94117','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(46,46,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(47,47,'Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(48,48,'89 Chiaroscuro Rd.','Portland','OR','97219','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(49,49,'Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(50,50,'Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(51,51,'43 rue St. Laurent','Montral','Qubec','H1J 1C3','Canada',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(52,52,'Heerstr. 22','Leipzig',NULL,'04179','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(53,53,'South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(54,54,'Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(55,55,'2743 Bering St.','Anchorage','AK','99508','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(56,56,'Mehrheimerstr. 369','Kln',NULL,'50739','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(57,57,'265, boulevard Charonne','Paris',NULL,'75012','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(58,58,'Calle Dr. Jorge Cash 321','Mxico D.F.',NULL,'05033','Mexico',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(59,59,'Geislweg 14','Salzburg',NULL,'5020','Austria',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(60,60,'Estrada da sade n. 58','Lisboa',NULL,'1756','Portugal',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(61,61,'Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(62,62,'Alameda dos Canrios, 891','Sao Paulo','SP','05487-020','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(63,63,'Taucherstrae 10','Cunewalde',NULL,'01307','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(64,64,'Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(65,65,'2817 Milton Dr.','Albuquerque','NM','87110','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(66,66,'Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(67,67,'Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(68,68,'Grenzacherweg 237','Genve',NULL,'1203','Switzerland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(69,69,'Gran Va, 1','Madrid',NULL,'28001','Spain',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(70,70,'Erling Skakkes gate 78','Stavern',NULL,'4110','Norway',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(71,71,'187 Suffolk Ln.','Boise','ID','83720','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(72,72,'90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(73,73,'Vinbltet 34','Kobenhavn',NULL,'1734','Denmark',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(74,74,'25, rue Lauriston','Paris',NULL,'75016','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(75,75,'P.O. Box 555','Lander','WY','82520','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(76,76,'Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(77,77,'89 Jefferson Way Suite 2','Portland','OR','97201','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(78,78,'55 Grizzly Peak Rd.','Butte','MT','59801','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(79,79,'Luisenstr. 48','Mnster',NULL,'44087','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(80,80,'Avda. Azteca 123','Mxico D.F.',NULL,'05033','Mexico',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(81,81,'Av. Ins de Castro, 414','Sao Paulo','SP','05634-030','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(82,82,'722 DaVinci Blvd.','Kirkland','WA','98034','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(83,83,'Smagsloget 45','rhus',NULL,'8200','Denmark',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(84,84,'2, rue du Commerce','Lyon',NULL,'69004','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(85,85,'59 rue de l\'Abbaye','Reims',NULL,'51100','France',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(86,86,'Adenauerallee 900','Stuttgart',NULL,'70563','Germany',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(87,87,'Torikatu 38','Oulu',NULL,'90110','Finland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(88,88,'Rua do Mercado, 12','Resende','SP','08737-363','Brazil',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(89,89,'305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(90,90,'Keskuskatu 45','Helsinki',NULL,'21240','Finland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0'),(91,91,'ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland',_binary '\0',_binary '\0',1,_binary '`º\È\Ñ4{\ê¢\"B¬\0');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(11) DEFAULT NULL,
  `CompanyName` varchar(40) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '1',
  `ObjectID` binary(16) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `CompanyName` (`CompanyName`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'A2020000001','Alfreds Futterkiste','Maria Anders','Sales Representative','030-0074321','030-0076545',1,_binary '`\Ün4{\ê¢\"B¬\0'),(2,'A2020000002','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','(5) 555-4729','(5) 555-3745',1,_binary '`\Ün4{\ê¢\"B¬\0'),(3,'A2020000003','Antonio Moreno Taquera','Antonio Moreno','Owner','(5) 555-3932',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(4,'A2020000004','Around the Horn','Thomas Hardy','Sales Representative','(171) 555-7788','(171) 555-6750',1,_binary '`\Ün4{\ê¢\"B¬\0'),(5,'B2020000005','Berglunds snabbkp','Christina Berglund','Order Administrator','0921-12 34 65','0921-12 34 67',1,_binary '`\Ün4{\ê¢\"B¬\0'),(6,'B2020000006','Blauer See Delikatessen','Hanna Moos','Sales Representative','0621-08460','0621-08924',1,_binary '`\Ün4{\ê¢\"B¬\0'),(7,'B2020000007','Blondesddsl pre et fils','Frdrique Citeaux','Marketing Manager','88.60.15.31','88.60.15.32',1,_binary '`\Ün4{\ê¢\"B¬\0'),(8,'B2020000008','Blido Comidas preparadas','Martn Sommer','Owner','(91) 555 22 82','(91) 555 91 99',1,_binary '`\Ün4{\ê¢\"B¬\0'),(9,'B2020000009','Bon app\'','Laurence Lebihan','Owner','91.24.45.40','91.24.45.41',1,_binary '`\Ün4{\ê¢\"B¬\0'),(10,'B2020000010','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','(604) 555-4729','(604) 555-3745',1,_binary '`\Ün4{\ê¢\"B¬\0'),(11,'B2020000011','B\'s Beverages','Victoria Ashworth','Sales Representative','(171) 555-1212',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(12,'C2020000012','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','(1) 135-5555','(1) 135-4892',1,_binary '`\Ün4{\ê¢\"B¬\0'),(13,'C2020000013','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','(5) 555-3392','(5) 555-7293',1,_binary '`\Ün4{\ê¢\"B¬\0'),(14,'C2020000014','Chop-suey Chinese','Yang Wang','Owner','0452-076545',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(15,'C2020000015','Comrcio Mineiro','Pedro Afonso','Sales Associate','(11) 555-7647',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(16,'C2020000016','Consolidated Holdings','Elizabeth Brown','Sales Representative','(171) 555-2282','(171) 555-9199',1,_binary '`\Ün4{\ê¢\"B¬\0'),(17,'D2020000017','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','0241-039123','0241-059428',1,_binary '`\Ün4{\ê¢\"B¬\0'),(18,'D2020000018','Du monde entier','Janine Labrune','Owner','40.67.88.88','40.67.89.89',1,_binary '`\Ün4{\ê¢\"B¬\0'),(19,'E2020000019','Eastern Connection','Ann Devon','Sales Agent','(171) 555-0297','(171) 555-3373',1,_binary '`\Ün4{\ê¢\"B¬\0'),(20,'E2020000020','Ernst Handel','Roland Mendel','Sales Manager','7675-3425','7675-3426',1,_binary '`\Ün4{\ê¢\"B¬\0'),(21,'F2020000021','Familia Arquibaldo','Aria Cruz','Marketing Assistant','(11) 555-9857',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(22,'F2020000022','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','(91) 555 94 44','(91) 555 55 93',1,_binary '`\Ün4{\ê¢\"B¬\0'),(23,'F2020000023','Folies gourmandes','Martine Ranc','Assistant Sales Agent','20.16.10.16','20.16.10.17',1,_binary '`\Ün4{\ê¢\"B¬\0'),(24,'F2020000024','Folk och f HB','Maria Larsson','Owner','0695-34 67 21',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(25,'F2020000025','Frankenversand','Peter Franken','Marketing Manager','089-0877310','089-0877451',1,_binary '`\Ün4{\ê¢\"B¬\0'),(26,'F2020000026','France restauration','Carine Schmitt','Marketing Manager','40.32.21.21','40.32.21.20',1,_binary '`\Ün4{\ê¢\"B¬\0'),(27,'F2020000027','Franchi S.p.A.','Paolo Accorti','Sales Representative','011-4988260','011-4988261',1,_binary '`\Ün4{\ê¢\"B¬\0'),(28,'F2020000028','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','(1) 354-2534','(1) 354-2535',1,_binary '`\Ün4{\ê¢\"B¬\0'),(29,'G2020000029','Galera del gastrnomo','Eduardo Saavedra','Marketing Manager','(93) 203 4560','(93) 203 4561',1,_binary '`\Ün4{\ê¢\"B¬\0'),(30,'G2020000030','Godos Cocina Tpica','Jos Pedro Freyre','Sales Manager','(95) 555 82 82',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(31,'G2020000031','Gourmet Lanchonetes','Andr Fonseca','Sales Associate','(11) 555-9482',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(32,'G2020000032','Great Lakes Food Market','Howard Snyder','Marketing Manager','(503) 555-7555',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(33,'G2020000033','GROSELLA-Restaurante','Manuel Pereira','Owner','(2) 283-2951','(2) 283-3397',1,_binary '`\Ün4{\ê¢\"B¬\0'),(34,'H2020000034','Hanari Carnes','Mario Pontes','Accounting Manager','(21) 555-0091','(21) 555-8765',1,_binary '`\Ün4{\ê¢\"B¬\0'),(35,'H2020000035','HILARION-Abastos','Carlos Hernndez','Sales Representative','(5) 555-1340','(5) 555-1948',1,_binary '`\Ün4{\ê¢\"B¬\0'),(36,'H2020000036','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','(503) 555-6874','(503) 555-2376',1,_binary '`\Ün4{\ê¢\"B¬\0'),(37,'H2020000037','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','2967 542','2967 3333',1,_binary '`\Ün4{\ê¢\"B¬\0'),(38,'I2020000038','Island Trading','Helen Bennett','Marketing Manager','(198) 555-8888',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(39,'K2020000039','Kniglich Essen','Philip Cramer','Sales Associate','0555-09876',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(40,'L2020000040','La corne d\'abondance','Daniel Tonini','Sales Representative','30.59.84.10','30.59.85.11',1,_binary '`\Ün4{\ê¢\"B¬\0'),(41,'L2020000041','La maison d\'Asie','Annette Roulet','Sales Manager','61.77.61.10','61.77.61.11',1,_binary '`\Ün4{\ê¢\"B¬\0'),(42,'L2020000042','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','(604) 555-3392','(604) 555-7293',1,_binary '`\Ün4{\ê¢\"B¬\0'),(43,'L2020000043','Lazy K Kountry Store','John Steel','Marketing Manager','(509) 555-7969','(509) 555-6221',1,_binary '`\Ün4{\ê¢\"B¬\0'),(44,'L2020000044','Lehmanns Marktstand','Renate Messner','Sales Representative','069-0245984','069-0245874',1,_binary '`\Ün4{\ê¢\"B¬\0'),(45,'L2020000045','Let\'s Stop N Shop','Jaime Yorres','Owner','(415) 555-5938',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(46,'L2020000046','LILA-Supermercado','Carlos Gonzlez','Accounting Manager','(9) 331-6954','(9) 331-7256',1,_binary '`\Ün4{\ê¢\"B¬\0'),(47,'L2020000047','LINO-Delicateses','Felipe Izquierdo','Owner','(8) 34-56-12','(8) 34-93-93',1,_binary '`\Ün4{\ê¢\"B¬\0'),(48,'L2020000048','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','(503) 555-9573','(503) 555-9646',1,_binary '`\Ün4{\ê¢\"B¬\0'),(49,'M2020000049','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','035-640230','035-640231',1,_binary '`\Ün4{\ê¢\"B¬\0'),(50,'M2020000050','Maison Dewey','Catherine Dewey','Sales Agent','(02) 201 24 67','(02) 201 24 68',1,_binary '`\Ün4{\ê¢\"B¬\0'),(51,'M2020000051','Mre Paillarde','Jean Fresnire','Marketing Assistant','(514) 555-8054','(514) 555-8055',1,_binary '`\Ün4{\ê¢\"B¬\0'),(52,'M2020000052','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','0342-023176',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(53,'N2020000053','North/South','Simon Crowther','Sales Associate','(171) 555-7733','(171) 555-2530',1,_binary '`\Ün4{\ê¢\"B¬\0'),(54,'O2020000054','Ocano Atlntico Ltda.','Yvonne Moncada','Sales Agent','(1) 135-5333','(1) 135-5535',1,_binary '`\Ün4{\ê¢\"B¬\0'),(55,'O2020000055','Old World Delicatessen','Rene Phillips','Sales Representative','(907) 555-7584','(907) 555-2880',1,_binary '`\Ün4{\ê¢\"B¬\0'),(56,'O2020000056','Ottilies Kseladen','Henriette Pfalzheim','Owner','0221-0644327','0221-0765721',1,_binary '`\Ün4{\ê¢\"B¬\0'),(57,'P2020000057','Paris spcialits','Marie Bertrand','Owner','(1) 42.34.22.66','(1) 42.34.22.77',1,_binary '`\Ün4{\ê¢\"B¬\0'),(58,'P2020000058','Pericles Comidas clsicas','Guillermo Fernndez','Sales Representative','(5) 552-3745','(5) 545-3745',1,_binary '`\Ün4{\ê¢\"B¬\0'),(59,'P2020000059','Piccolo und mehr','Georg Pipps','Sales Manager','6562-9722','6562-9723',1,_binary '`\Ün4{\ê¢\"B¬\0'),(60,'P2020000060','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','(1) 356-5634',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(61,'Q2020000061','Que Delcia','Bernardo Batista','Accounting Manager','(21) 555-4252','(21) 555-4545',1,_binary '`\Ün4{\ê¢\"B¬\0'),(62,'Q2020000062','Queen Cozinha','Lcia Carvalho','Marketing Assistant','(11) 555-1189',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(63,'Q2020000063','QUICK-Stop','Horst Kloss','Accounting Manager','0372-035188',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(64,'R2020000064','Rancho grande','Sergio Gutirrez','Sales Representative','(1) 123-5555','(1) 123-5556',1,_binary '`\Ün4{\ê¢\"B¬\0'),(65,'R2020000065','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','(505) 555-5939','(505) 555-3620',1,_binary '`\Ün4{\ê¢\"B¬\0'),(66,'R2020000066','Reggiani Caseifici','Maurizio Moroni','Sales Associate','0522-556721','0522-556722',1,_binary '`\Ün4{\ê¢\"B¬\0'),(67,'R2020000067','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','(21) 555-3412',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(68,'R2020000068','Richter Supermarkt','Michael Holz','Sales Manager','0897-034214',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(69,'R2020000069','Romero y tomillo','Alejandra Camino','Accounting Manager','(91) 745 6200','(91) 745 6210',1,_binary '`\Ün4{\ê¢\"B¬\0'),(70,'S2020000070','Sant Gourmet','Jonas Bergulfsen','Owner','07-98 92 35','07-98 92 47',1,_binary '`\Ün4{\ê¢\"B¬\0'),(71,'S2020000071','Save-a-lot Markets','Jose Pavarotti','Sales Representative','(208) 555-8097',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(72,'S2020000072','Seven Seas Imports','Hari Kumar','Sales Manager','(171) 555-1717','(171) 555-5646',1,_binary '`\Ün4{\ê¢\"B¬\0'),(73,'S2020000073','Simons bistro','Jytte Petersen','Owner','31 12 34 56','31 13 35 57',1,_binary '`\Ün4{\ê¢\"B¬\0'),(74,'S2020000074','Spcialits du monde','Dominique Perrier','Marketing Manager','(1) 47.55.60.10','(1) 47.55.60.20',1,_binary '`\Ün4{\ê¢\"B¬\0'),(75,'S2020000075','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','(307) 555-4680','(307) 555-6525',1,_binary '`\Ün4{\ê¢\"B¬\0'),(76,'S2020000076','Suprmes dlices','Pascale Cartrain','Accounting Manager','(071) 23 67 22 20','(071) 23 67 22 21',1,_binary '`\Ün4{\ê¢\"B¬\0'),(77,'T2020000077','The Big Cheese','Liz Nixon','Marketing Manager','(503) 555-3612',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(78,'T2020000078','The Cracker Box','Liu Wong','Marketing Assistant','(406) 555-5834','(406) 555-8083',1,_binary '`\Ün4{\ê¢\"B¬\0'),(79,'T2020000079','Toms Spezialitten','Karin Josephs','Marketing Manager','0251-031259','0251-035695',1,_binary '`\Ün4{\ê¢\"B¬\0'),(80,'T2020000080','Tortuga Restaurante','Miguel Angel Paolino','Owner','(5) 555-2933',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(81,'T2020000081','Tradio Hipermercados','Anabela Domingues','Sales Representative','(11) 555-2167','(11) 555-2168',1,_binary '`\Ün4{\ê¢\"B¬\0'),(82,'T2020000082','Trail\'s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','(206) 555-8257','(206) 555-2174',1,_binary '`\Ün4{\ê¢\"B¬\0'),(83,'V2020000083','Vaffeljernet','Palle Ibsen','Sales Manager','86 21 32 43','86 22 33 44',1,_binary '`\Ün4{\ê¢\"B¬\0'),(84,'V2020000084','Victuailles en stock','Mary Saveley','Sales Agent','78.32.54.86','78.32.54.87',1,_binary '`\Ün4{\ê¢\"B¬\0'),(85,'V2020000085','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','26.47.15.10','26.47.15.11',1,_binary '`\Ün4{\ê¢\"B¬\0'),(86,'W2020000086','Die Wandernde Kuh','Rita Mller','Sales Representative','0711-020361','0711-035428',1,_binary '`\Ün4{\ê¢\"B¬\0'),(87,'W2020000087','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','981-443655','981-443655',1,_binary '`\Ün4{\ê¢\"B¬\0'),(88,'W2020000088','Wellington Importadora','Paula Parente','Sales Manager','(14) 555-8122',NULL,1,_binary '`\Ün4{\ê¢\"B¬\0'),(89,'W2020000089','White Clover Markets','Karl Jablonski','Owner','(206) 555-4112','(206) 555-4115',1,_binary '`\Ün4{\ê¢\"B¬\0'),(90,'W2020000090','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','90-224 8858','90-224 8858',1,_binary '`\Ün4{\ê¢\"B¬\0'),(91,'W2020000091','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','(26) 642-7012','(26) 642-7012',1,_binary '`\Ün4{\ê¢\"B¬\0');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-11 16:51:48
