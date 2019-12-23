-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: Users_DB
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `todoID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `body` varchar(45) NOT NULL,
  `created` varchar(45) NOT NULL,
  PRIMARY KEY (`todoID`),
  KEY `fk_userId_idx` (`userID`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`userID`) REFERENCES `users` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,1,'mincha','daven geshmak','2019-12-22'),(2,1,'maariv','daven geshmak in shul','2019-12-20'),(3,2,'oil','get oil for 8 days ','2019-12-22'),(4,2,'candles','for kids','2019-12-22'),(5,3,'dreidel','play with dreidels','2019-12-23'),(6,3,'latkes','eat geshmake latkes','2019-12-22'),(7,4,'sufganiot','buy good doughnuts','2019-12-22'),(8,4,'sufganiot','eat them up','2019-12-22'),(9,5,'music','dance leibidig','2019-12-22'),(10,5,'sing','sing haneiros','2019-12-23'),(11,6,'fix door','needs new hinges','2019-12-22'),(12,6,'paint','mix red and green','2019-12-22'),(13,7,'learn','heilige torah','2019-12-22'),(14,7,'chanuka gelt','get alot of it','2019-12-22'),(15,8,'popcorn','pop it up','2018-05-20'),(16,8,'acorns','find them','2019-02-12'),(17,8,'goldfish','feed them','2018-05-20'),(18,8,'bakery','bagels and lox','2019-06-10'),(19,8,'hat','clean the hat','2019-03-15'),(20,8,'at bash','gar dak','2019-02-12'),(21,8,'office','go into','2018-05-20'),(22,8,'cholent','beans beans','2019-12-23'),(23,8,'cholent','barley','2018-05-20'),(24,8,'cholent','onions','2018-05-20'),(25,8,'cholent','potatoes','2018-05-20'),(26,8,'cholent','parika','2018-05-20'),(27,8,'pepper','for cholent','2018-05-20'),(28,8,'salt','for cooking','2018-05-20'),(29,8,'oranges','squeeze juice','2018-05-20'),(30,8,'bdikas chometz','clean up','2018-05-20'),(31,8,'mayim shelanu','special h2o','2018-05-20'),(32,8,'feather','for bdikas chometz','2018-05-20'),(33,8,'sof zman achila','finish up chometz','2018-05-20'),(34,8,'blah blah blah','ya ya ya','2018-05-20'),(35,9,'stam','nothing','2018-05-20'),(36,9,'dadada','mamama','2018-05-20'),(37,9,'nunununu','mumumuu mumumumu','2018-05-20'),(38,9,'cows say','moooo mooo','2018-05-20'),(39,9,'rooster','kukuriku','2018-05-20'),(40,9,'snow','brrrrrrrrrrrrrrrrrrrrrr','2018-05-20'),(41,9,'sun','it is shining BH','2018-05-20'),(42,9,'sun','is warm here','2018-05-20'),(43,9,'siberia','cold up there','2018-05-20'),(44,9,'delek','gas station','2018-05-20'),(45,9,'mint','menta','2018-05-20'),(46,9,'silver','foil paper','2018-05-20'),(47,9,'tables','from the ulam','2018-05-20'),(48,9,'chairs','stack em up','2018-05-20'),(49,9,'sponja','mop mopm mop','2018-05-20'),(50,9,'mop','sponjador','2018-05-20'),(51,9,'knishes','potatoes','2018-05-20'),(52,9,'sanwiches','jelly','2018-05-20'),(53,9,'butter','no more','2018-05-20'),(54,9,'zaltz','salt','2018-05-20'),(55,10,'water','vasser','2018-05-20'),(56,10,'snow','shney','2018-05-20'),(57,10,'table','shulchan','2018-05-20'),(58,10,'chair','baynkel','2018-05-20'),(59,10,'nose','nuzz','2018-05-20'),(60,10,'af al gav','even though','2018-05-20'),(61,10,'camel','gamal','2018-05-20'),(62,10,'unicorn','what\'s that???','2018-05-20'),(63,10,'ball','play ball','2018-05-20'),(64,10,'ball','pump','2018-05-20'),(65,10,'bikes','fix brakes','2018-05-20'),(66,10,'w3schools','study study study study ','2018-05-20'),(67,10,'java','system.out.print','2018-05-20'),(68,10,'angular','ng for ','2018-05-20'),(69,10,'swimming','is very healthy','2018-05-20'),(70,10,'pogostick','jump jump jump jump jump jump jump ','2018-05-20'),(71,10,'car','drive safely','2018-05-20'),(72,10,'shalom','how are you doing','2018-05-20'),(73,10,'choco','chocolate','2018-05-20'),(74,10,'sugar','is sweet','2018-05-20');
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `AGE` int(11) NOT NULL,
  `CITY` varchar(45) NOT NULL,
  `COUNTRY` varchar(45) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'avi','cohen',25,'new york','USA'),(2,'chaim','nunu',26,'new york','USA'),(3,'hayry','steinberg',36,'chicago','USA'),(4,'bob','bobber',54,'yukon','USA'),(5,'getzel','getzelman',43,'jerusalem','israel'),(6,'shmiel','shmellman',32,'jerusalem','israel'),(7,'zanvil','yapchik',44,'beitar','israel'),(8,'misha','korbolovov',18,'kiev','ukraine'),(9,'grisha','zalmanov',34,'pinsk','belarus'),(10,'zusha','chaimken',55,'taryag','torah island');
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

-- Dump completed on 2019-12-23 14:35:52
