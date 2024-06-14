-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: it.vshp.online    Database: db_80f45f
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hardware` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` int NOT NULL,
  `tag` enum('new','discount') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES (1,'Монитор LG 2BXDXKQ9E9',27999.00,2,'new'),(2,'Монитор Samsung UYG34YLS6V',54999.00,3,NULL),(3,'Мышь Logitech 9T9WF5RNWU',10999.00,0,NULL),(4,'Мышь Logitech 3V3VAZ83I0',5999.00,4,NULL),(5,'Мышь HyperX KLXIOER09O',5399.00,2,NULL),(6,'Клавиатура HyperX 54Q0BK13YY',10199.00,2,'new'),(7,'Мышь Logitech 05TILJTP8G',3699.00,4,NULL),(8,'Монитор Samsung 5VEPI5G9OZ',4399.00,3,NULL),(9,'Монитор Dexp JU4WT73SKW',8799.00,1,NULL),(10,'Клавиатура Logitech 7HD8H2SUW4',2399.00,2,NULL),(11,'Мышь Bloody N6TE3N1DV3',1999.00,5,NULL),(12,'Мышь Logitech EV6OIGRB6C',1659.50,4,'discount'),(13,'Наушники RedDragon O77RW6BGQS',4599.00,3,NULL),(14,'Наушники Sven XHAWF5JBPG',5199.00,5,NULL),(15,'Монитор Dexp KW4286IM8K',14599.00,2,'new'),(16,'Клавиатура RedSquare 848RN0286H',9299.00,1,NULL),(17,'Клавиатура HyperX I8IA7QC817',2699.00,4,NULL),(19,'Мышь Razer MJLFLYM86B',2499.50,3,'discount'),(20,'Монитор Samsung G7PBHBTP4F',12599.00,3,'new'),(21,'Мышь HyperX R4B38PY8DQ',4399.00,2,NULL),(22,'Наушники Razer 9F3M6X8O9A',6199.00,3,NULL),(23,'Клавиатура Razer T9Y41A4WQZ',2599.00,1,NULL),(24,'Клавиатура Dexp KF0RBP8N39',1999.50,4,'discount'),(25,'Клавиатура RedSquare 8X37AGHG1H',5999.00,2,NULL),(26,'Монитор LG 98HHPJQC3Q',10199.00,2,NULL),(27,'Монитор LG UK605MY0NW',8999.00,5,NULL),(28,'Наушники Sven POQN7IIPZ4',2399.50,1,'discount'),(29,'Монитор Dexp 7APVYKMEQS',39199.00,3,'new'),(30,'Мышь Logitech YLX7IEABJX',199.00,3,NULL),(31,'Мышь RedDragon 2B41FYL4GC',1999.00,2,NULL),(32,'Клавиатура Dexp 23TIEPALUY',3499.00,5,NULL),(33,'Монитор LG H5NKX4IYT6',9999.00,4,'new'),(34,'Монитор Acer I7FN6LET35',14399.00,1,'discount'),(35,'Наушники HyperX V42WFQVPXF',6299.00,3,NULL),(36,'Наушники Sven 4KREZ91PE2',2499.00,5,NULL),(37,'Клавиатура RedSquare A2SHK47SGA',4299.00,3,NULL),(38,'Мышь HyperX P5T5YX5PIB',2999.00,4,'new'),(39,'Монитор Acer EK2FY1OWPL',4799.00,5,'discount'),(40,'Клавиатура Razer X5KIZYTYQA',7399.00,2,'discount'),(41,'Клавиатура Dexp LM72H7Y1L5',2099.00,5,NULL),(42,'Мышь Logitech Z7909TPR1C',9999.00,2,'new'),(43,'Наушники Sven X1OENW34PI',6199.00,2,NULL),(44,'Наушники RedDragon 5TMLSWHEPW',3999.00,2,NULL),(45,'Мышь Logitech BZ7SMIROYC',3199.00,4,NULL),(46,'Мышь Bloody 039AT6AJHJ',1399.50,5,'discount'),(47,'Мышь Bloody G2RH2WIJI8',5099.00,2,NULL),(48,'Мышь Logitech JEKTUKI99F',1999.00,5,NULL),(49,'Монитор LG PEIW4QRGFW',18999.00,1,NULL),(50,'Мышь HyperX 93I2FVD7V8',6969.00,4,'discount'),(51,'Наушники RedDragon DC21IIV9B5',1999.50,3,'discount'),(52,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(53,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(54,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(55,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(56,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(57,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(58,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(59,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(60,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(61,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(62,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new'),(63,'Ноутбук Lenovo 2BXKQ7E9XD',54500.00,1,'new');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 18:35:23
