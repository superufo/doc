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
-- Table structure for table `agent_profit_stat`
--

DROP TABLE IF EXISTS `agent_profit_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_profit_stat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int NOT NULL COMMENT '渠道号',
  `game_id` int NOT NULL COMMENT '收益来源游戏',
  `profit_from` varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '收益来源ID',
  `profit_to` varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '收益ID',
  `profit` bigint NOT NULL COMMENT '收益金额',
  `profit_time` datetime NOT NULL COMMENT '收益计算时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_profit_stat`
--

LOCK TABLES `agent_profit_stat` WRITE;
/*!40000 ALTER TABLE `agent_profit_stat` DISABLE KEYS */;
INSERT INTO `agent_profit_stat` VALUES (1,50001,2,'0115326','0115325',400000,'2022-06-23 17:20:20'),(2,50001,2,'0115326','0115325',100000,'2022-06-23 17:20:20'),(3,50001,2,'0115326','0115325',50000,'2022-06-23 17:20:20'),(4,50001,2,'0115326','0115325',400000,'2022-06-23 17:36:47'),(5,50001,2,'0115326','0115325',400000,'2022-06-23 17:40:01'),(6,50001,2,'0115326','0115325',400000,'2022-06-23 17:41:28');
/*!40000 ALTER TABLE `agent_profit_stat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:41