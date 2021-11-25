-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: virtlib
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` varchar(6) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `pub_id` varchar(6) NOT NULL,
  `author` varchar(30) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `pub_id` (`pub_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('b001','Harry Potter: Sorceres Stone','p003','J K Rowling','yes','Fantasy'),('b002','Frankenstein','p001','Mary Shelley','yes','Sci-fi'),('b003','Gone Girl','p002','Gillian Flynn','yes','Mystery'),('b004','The Proposal','p003','Sally Thorne','yes','Romance'),('b005','The Resisters','p003','Gish Jen','yes','Sci-Fi'),('b006','Percy Jackson: The Olympians','p002','Rick Riordan','yes','Fantasy'),('b007','The Gunslinger','p001','Stephen King','yes','Fantasy'),('b009','The Three Body Problem','p001','Liu Cixin','yes','Sci-fi'),('b010','The Heart Goes Last','p002','Margaret Atwood','no','Sci-fi'),('b011','The Martian','p003','Andy Weir','yes','Sci-fi'),('b012','The Name of the Wild','p002','Patrick Rothfuss','yes','Fantasy'),('b013','Ends With Us','p001','Colleen','yes','Romance'),('b014','The Girl w/ Dragon Tattoo','p003','Stieg Larson','yes','Mystery'),('b015','The Da Vinci Code','p001','Dan Brown','yes','Mystery'),('b016','The Big Sleep','p003','Raymond Chandler','yes','Mystery'),('b017','A Game Of Thrones','p001','George R R Martin','yes','Fantasy'),('b018','Steve Jobs','p002','Walter Isaacso','yes','Biography'),('b019','The Higgler','p002','Coppard','yes','Romance'),('b020','And Then There Were None','p001','Agatha Christie','no','Mystery'),('b021','My experiments with truth','p003','Mahatma Gandhi','yes','Autobiography'),('b024','A Beautiful Mind','p001','Sylvia Nasar','yes','Biography'),('b025','The Little Stranger','p002','Sarah Waters','yes','Horror'),('b027','Bad Dreams','p001','Tessa Hadley','yes','Horro'),('b028','The diary of a young girl','p002','Anne Frank','no','Autobiography');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 12:03:56
