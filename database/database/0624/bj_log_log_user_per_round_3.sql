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
-- Table structure for table `log_user_per_round_3`
--

DROP TABLE IF EXISTS `log_user_per_round_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_user_per_round_3` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_sid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_round_sid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `game_id` tinyint DEFAULT '1' COMMENT '玩法',
  `room_id` tinyint DEFAULT '0' COMMENT '房间',
  `change` bigint DEFAULT '0' COMMENT '这局收入',
  `end_time` int DEFAULT '0' COMMENT '时间',
  `bets` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下注情况json',
  `result` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开牌结果json',
  `per_round_state` tinyint DEFAULT '0' COMMENT '当前牌局状态',
  `win` bigint DEFAULT '0' COMMENT '输赢值',
  `before_money` bigint DEFAULT NULL COMMENT '原来多少',
  `after_money` bigint DEFAULT NULL COMMENT '结算之后多少',
  `platform` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渠道',
  `agent` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代理',
  `player_service_charge` bigint NOT NULL DEFAULT '0' COMMENT '玩家服务费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='玩家个人牌局表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_user_per_round_3`
--

LOCK TABLES `log_user_per_round_3` WRITE;
/*!40000 ALTER TABLE `log_user_per_round_3` DISABLE KEYS */;
INSERT INTO `log_user_per_round_3` VALUES (2,'0115333','010015504',1,1,0,1654516335,'{\"0\":50000000}','{\"result\":2,\"long\":401,\"hu\":804}',0,-50000000,10000000000,9950000000,'50001','',0),(3,'0115333','010015539',1,1,97500000,1654516745,'{\"0\":50000000}','{\"result\":0,\"long\":504,\"hu\":103}',0,47500000,9950000000,9997500000,'50001','',0),(4,'0115363','0100121956',1,1,39000000,1654829518,'{\"2\":20000000}','{\"result\":2,\"long\":601,\"hu\":1003}',2,19000000,10000000000,10019000000,'50001','',0);
/*!40000 ALTER TABLE `log_user_per_round_3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:31
