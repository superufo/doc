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
-- Table structure for table `robot_config`
--

DROP TABLE IF EXISTS `robot_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robot_config` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `game_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT '游戏id',
  `conf` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '机器人配置数据',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='机器人配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robot_config`
--

LOCK TABLES `robot_config` WRITE;
/*!40000 ALTER TABLE `robot_config` DISABLE KEYS */;
INSERT INTO `robot_config` VALUES (1,1,'{\"robot_num\":{\"min\":60,\"max\":80},\"robot_add_pr\":0.2,\"robot_add_num\":{\"min\":1,\"max\":3},\"robot_change_ratio_range\":{\"min\":0,\"max\":0.1},\"robot_carry_gold\":{\"min\":100,\"max\":1000},\"robot_bet_gold_ratio\":{\"min\":0.01,\"max\":0.2},\"robot_bet_pr\":0.85,\"robot_bet_time\":10,\"robot_bets_per_round\":{\"min\":1,\"max\":3},\"robot_bet_areas\":{\"1\":0.3,\"2\":0.4,\"3\":0.3},\"robot_win_add_offsets\":{\"min\":0.01,\"max\":0.05},\"robot_win_offsets_cap\":0.4,\"robot_bets_time_weight\":{\"1\":1,\"2\":2,\"3\":3,\"4\":5,\"5\":8,\"6\":8,\"7\":8,\"8\":4,\"9\":2,\"10\":1}}','2022-06-14 17:53:21','2022-06-15 09:26:29');
/*!40000 ALTER TABLE `robot_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:57
