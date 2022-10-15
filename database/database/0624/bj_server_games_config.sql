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
-- Table structure for table `games_config`
--

DROP TABLE IF EXISTS `games_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_config` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stock_1` bigint DEFAULT '0' COMMENT '库存1基础库存',
  `stock_1_warn_water` bigint DEFAULT '0' COMMENT '库存1警戒值',
  `draw_water` int DEFAULT '0' COMMENT '库存1目标和报警之间的抽水概几率万分比',
  `player_service_charge` float DEFAULT '0' COMMENT '玩家赢的玩家服务费',
  `system_service_charge` float DEFAULT '0' COMMENT '玩家赢的系统服务费(暂时没用到)',
  `stock_2_service_charge` float DEFAULT NULL COMMENT '库存2奖励库存比例',
  `stock_2_warn_water` bigint DEFAULT NULL COMMENT '库存2报警值',
  `stock_1_state` tinyint DEFAULT '0' COMMENT '库存1状态',
  `update_time` int DEFAULT '0' COMMENT '变化时间',
  `to_stock_1` float DEFAULT NULL COMMENT '玩家输了,钱进库存的比例',
  `game_id` int DEFAULT NULL COMMENT '关联的游戏id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_config`
--

LOCK TABLES `games_config` WRITE;
/*!40000 ALTER TABLE `games_config` DISABLE KEYS */;
INSERT INTO `games_config` VALUES (1,'龙虎斗',2000000,500000,50,0.5,0.005,0.105,10000,1,111,0.3,1),(2,'红黑',2000000,500000,50,0.06,0.005,0.105,100000,1,111,0.3,2);
/*!40000 ALTER TABLE `games_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:36:03
