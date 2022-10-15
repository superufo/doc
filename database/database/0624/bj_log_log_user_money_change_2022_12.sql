CREATE DATABASE  IF NOT EXISTS `bj_log` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bj_log`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 192.168.0.188    Database: bj_log
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
-- Table structure for table `log_user_money_change_2022_12`
--

DROP TABLE IF EXISTS `log_user_money_change_2022_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_user_money_change_2022_12` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户唯一id',
  `money_type` tinyint DEFAULT '0' COMMENT '1金币2钻石',
  `before_money` bigint DEFAULT NULL COMMENT '原来多少钱',
  `change_type` tinyint DEFAULT '0' COMMENT '变化原因类型1,2,3,4,5,6,7,8,9',
  `change` bigint DEFAULT '0' COMMENT '变化了多少有正有负',
  `after_money` bigint DEFAULT '0' COMMENT '变化之后剩余多少',
  `per_round_sid` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '牌局号',
  `game_id` tinyint DEFAULT '0' COMMENT '游戏id 0非游戏的',
  `room_id` tinyint DEFAULT '0' COMMENT '房间id',
  `up_time` int DEFAULT '0' COMMENT '改变的时间',
  `serial_no` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渠道',
  `agent` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_user_money_change_2022_12`
--

LOCK TABLES `log_user_money_change_2022_12` WRITE;
/*!40000 ALTER TABLE `log_user_money_change_2022_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_user_money_change_2022_12` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:27
