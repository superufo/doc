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
-- Table structure for table `broadcast_config`
--

DROP TABLE IF EXISTS `broadcast_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broadcast_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广播名称',
  `type` tinyint NOT NULL COMMENT '广播类型1：平台2：游戏',
  `game_id` tinyint NOT NULL DEFAULT '0' COMMENT '游戏',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广播内容',
  `player_trigger_gold` bigint NOT NULL COMMENT '触发金额',
  `robot_trigger_min_gold` bigint NOT NULL COMMENT '机器人最小触发金额',
  `robot_trigger_max_gold` bigint NOT NULL COMMENT '机器人最大触发金额',
  `fake_broadcast_start_time` int NOT NULL COMMENT '假广播开始时间',
  `fake_broadcast_end_time` int NOT NULL COMMENT '假广播结束时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadcast_config`
--

LOCK TABLES `broadcast_config` WRITE;
/*!40000 ALTER TABLE `broadcast_config` DISABLE KEYS */;
INSERT INTO `broadcast_config` VALUES (1,'平台公告',2,2,'给位老板大家好给位老板大家好给位老板大家好给位老板大家好给位老板大家好',500,33,44,44,55,'2022-06-16 14:55:56','2022-06-17 10:15:36'),(4,'放大飞洒',2,1,'的撒飞洒地方ssssss的撒飞洒地方ssssss的撒飞洒地方ssssss的撒飞洒地方ssssss的撒飞洒地方ssssss',500,22,33,33,44,'2022-06-16 15:24:23','2022-06-17 10:15:32'),(6,'1112',2,2,'334',600000,200,6000,20,60,'2022-06-23 14:35:51','2022-06-23 14:36:27');
/*!40000 ALTER TABLE `broadcast_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:56
