-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: GalaxyCNC
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

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
-- Table structure for table `attacks`
--

DROP TABLE IF EXISTS `attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attacks` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) NOT NULL,
  `Target` varchar(255) NOT NULL,
  `Method` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Port` int(11) NOT NULL,
  `Duration` int(11) NOT NULL,
  `End` bigint(20) NOT NULL,
  `Created` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacks`
--

LOCK TABLES `attacks` WRITE;
/*!40000 ALTER TABLE `attacks` DISABLE KEYS */;
INSERT INTO `attacks` VALUES (1,'root','https://control.crypto-hosting.eu/auth/login','https-rocket','api',443,40,1655102584,1655102544),(2,'root','https://game.waphosting.info','https-rocket','api',443,120,1655103073,1655102953),(3,'root','https://control.crypto-hosting.eu/auth/login','https-rocket','api',443,120,1655103546,1655103426),(4,'begej','https://www.sa-rpg.com/forum/','https-rocket','api',443,60,1655105152,1655105092),(5,'begej','https://donacije.zara-rpg.com/','https-rocket','api',443,60,1655105528,1655105468),(6,'begej','37.19.199.141','tcp-rocket','api',80,60,1655105868,1655105808),(7,'root','185.165.241.37','home-rocket','api',80,60,1655105991,1655105931),(8,'begej','https://www.adidas.com/us','https-rocket','api',443,60,1655106351,1655106291),(9,'begej','https://www.zara.com/rs/','https-rocket','api',443,60,1655106555,1655106495),(10,'begej','https://www.spotify.com/sr-en/','https-rocket','api',443,60,1655106717,1655106657),(11,'mraka','https://control.crypto-hosting.eu/','https-rocket','api',443,150,1655140793,1655140643),(12,'m1lan27','79.137.110.136','game-rocket','api',7777,60,1655142634,1655142574),(13,'lerdi','control.crypto-hosting.eu','https-rocket','api',443,60,1655142883,1655142823),(14,'m1lan27','79.137.110.136','ovh-rocket','api',7777,60,1655143489,1655143429),(15,'m1lan','138.2.135.133','udp-rocket','api',80,30,1655145166,1655145136),(16,'m1lan27','https://fshost.me','https-rocket','api',443,60,1655145294,1655145234),(17,'m1lan','https://www.fbi.gov/','https-rocket','api',80,30,1655145374,1655145344),(18,'m1lan','23.227.146.106','udp-rocket','api',53,30,1655145608,1655145578),(19,'m1lan','178.237.56.152','udp-rocket','api',53,60,1655145652,1655145592);
/*!40000 ALTER TABLE `attacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) DEFAULT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `MFA` varchar(200) NOT NULL,
  `NewUser` tinyint(1) DEFAULT NULL,
  `Admin` tinyint(1) DEFAULT NULL,
  `Reseller` tinyint(1) DEFAULT NULL,
  `Banned` tinyint(1) DEFAULT NULL,
  `Vip` tinyint(1) DEFAULT NULL,
  `MaxTime` int(10) unsigned DEFAULT NULL,
  `Cooldown` int(10) unsigned DEFAULT NULL,
  `Concurrents` int(10) unsigned DEFAULT NULL,
  `MaxSessions` int(10) unsigned DEFAULT NULL,
  `PowerSavingExempt` tinyint(1) DEFAULT NULL,
  `BypassBlacklist` tinyint(1) DEFAULT NULL,
  `PlanExpiry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','737061636576696ee3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,1,0,0,1,1200,30,3,1,0,0,1686585092),(2,'m1lan','6d316c616ee3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,1,0,1,1200,0,10,5,1,1,2518963072),(3,'m1lan27','244d696c616e213135e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,1,0,1,1200,0,10,5,1,1,2518969368),(4,'mraka','6d72616b61313535e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,0,0,0,150,0,1,1,1,0,1659375822),(5,'ZidarSystemDown','7265746172646972616e616d61636b612121e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,0,0,0,150,0,1,1,1,0,1659379404),(6,'begej','426567656a426f6731333132e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,0,0,0,120,0,1,1,1,0,1659424408),(7,'lerdi','6c65726469313031e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,1,0,1,1200,0,10,5,1,1,2519054533),(8,'mrakica','6d72616b696361213132e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',1,0,1,0,1,1200,0,10,5,1,1,2519054867),(9,'byter','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','0',0,0,1,1,1,1200,0,10,5,1,1,2519058216);
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

-- Dump completed on 2022-06-13 18:58:12
