CREATE DATABASE  IF NOT EXISTS `bj_server` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bj_server`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 192.168.0.188    Database: bj_server
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `game_mtm_channel`
--

DROP TABLE IF EXISTS `game_mtm_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_mtm_channel` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT '游戏ID',
  `channel_id` int unsigned NOT NULL DEFAULT '0' COMMENT '渠道ID',
  `display` smallint NOT NULL DEFAULT '1' COMMENT '1显示，0隐藏',
  `lang` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'en,ve',
  `rooms` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_gid_cid` (`game_id`,`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='游戏渠道表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_mtm_channel`
--

LOCK TABLES `game_mtm_channel` WRITE;
/*!40000 ALTER TABLE `game_mtm_channel` DISABLE KEYS */;
INSERT INTO `game_mtm_channel` VALUES (161,1,50001,1,'en,ve','1,2,3'),(162,2,50001,1,'en,ve',''),(163,1,50002,1,'en,ve','1,2,3'),(203,2,50003,1,'en,ve',''),(204,1,50003,1,'en,ve','1,2,3'),(205,4,50004,1,'en,ve',''),(206,3,50004,1,'en,ve',''),(207,2,50004,1,'en,ve',''),(208,1,50004,1,'en,ve','2,3,1'),(222,2,50025,1,'en,ve','5'),(223,1,50025,1,'en,ve','3,1,2,4');
/*!40000 ALTER TABLE `game_mtm_channel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:53
