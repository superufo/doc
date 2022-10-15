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
-- Table structure for table `dashboard_stat`
--

DROP TABLE IF EXISTS `dashboard_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_stat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `statistic_time` date NOT NULL COMMENT '统计时间',
  `register_cnt` bigint NOT NULL DEFAULT '0' COMMENT '注册人数',
  `player_bet_cnt` bigint NOT NULL DEFAULT '0' COMMENT '玩家投注量',
  `agent_cnt` bigint NOT NULL DEFAULT '0' COMMENT '代理人数',
  `withdraw_cnt` bigint NOT NULL DEFAULT '0' COMMENT '提现人数',
  `withdraw_money_cnt` bigint NOT NULL DEFAULT '0' COMMENT '提现金额',
  `recharge_cnt` bigint NOT NULL DEFAULT '0' COMMENT '充值人数',
  `recharge_money_cnt` bigint NOT NULL DEFAULT '0' COMMENT '充值金额',
  `active_cnt` bigint NOT NULL DEFAULT '0' COMMENT '活跃人数',
  `service_money_cnt` bigint NOT NULL DEFAULT '0' COMMENT '服务费统计',
  `flow_water_cnt` bigint NOT NULL DEFAULT '0' COMMENT '流水统计',
  `game_1_cnt` bigint NOT NULL DEFAULT '0' COMMENT 'game_1:龙虎斗',
  `game_2_cnt` bigint NOT NULL DEFAULT '0' COMMENT 'game_2:红黑',
  `game_3_cnt` bigint NOT NULL DEFAULT '0' COMMENT 'game_3:百家乐',
  `game_4_cnt` bigint NOT NULL DEFAULT '0' COMMENT 'game_4:鱼虾蟹',
  `channel_id` int NOT NULL DEFAULT '0' COMMENT '渠道号',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_stat`
--

LOCK TABLES `dashboard_stat` WRITE;
/*!40000 ALTER TABLE `dashboard_stat` DISABLE KEYS */;
INSERT INTO `dashboard_stat` VALUES (561,'2022-06-10',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-06 09:21:53'),(562,'2022-06-10',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-06 09:21:53'),(563,'2022-06-10',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-06 09:21:53'),(564,'2022-06-10',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-06 09:21:53'),(565,'2022-06-11',8,87070000000,0,0,0,0,0,0,0,146150000000,87070000000,0,0,0,50001,'2022-06-06 09:21:53'),(566,'2022-06-11',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-06 09:21:53'),(567,'2022-06-11',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-06 09:21:53'),(568,'2022-06-11',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-06 09:21:53'),(569,'2022-06-12',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-06 09:21:53'),(570,'2022-06-12',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-06 09:21:53'),(571,'2022-06-12',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-06 09:21:53'),(572,'2022-06-12',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-06 09:21:53'),(573,'2022-06-13',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-06 09:21:53'),(574,'2022-06-13',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-06 09:21:53'),(575,'2022-06-13',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-06 09:21:53'),(576,'2022-06-13',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-06 09:21:53'),(577,'2022-06-14',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-06 09:21:54'),(578,'2022-06-14',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-06 09:21:54'),(579,'2022-06-14',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-06 09:21:54'),(580,'2022-06-14',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-06 09:21:54'),(581,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-16 00:00:01'),(582,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-16 00:00:01'),(583,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-16 00:00:01'),(584,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-16 00:00:01'),(585,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50005,'2022-06-16 00:00:01'),(586,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50006,'2022-06-16 00:00:01'),(587,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50007,'2022-06-16 00:00:01'),(588,'2022-06-15',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50008,'2022-06-16 00:00:01'),(589,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-17 00:00:01'),(590,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-17 00:00:01'),(591,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-17 00:00:01'),(592,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-17 00:00:01'),(593,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50005,'2022-06-17 00:00:01'),(594,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50006,'2022-06-17 00:00:01'),(595,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50007,'2022-06-17 00:00:01'),(596,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50008,'2022-06-17 00:00:01'),(597,'2022-06-16',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50013,'2022-06-17 00:00:01'),(598,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-18 00:00:01'),(599,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-18 00:00:01'),(600,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-18 00:00:01'),(601,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-18 00:00:01'),(602,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50005,'2022-06-18 00:00:01'),(603,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50006,'2022-06-18 00:00:01'),(604,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50007,'2022-06-18 00:00:01'),(605,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50008,'2022-06-18 00:00:01'),(606,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50013,'2022-06-18 00:00:01'),(607,'2022-06-17',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50014,'2022-06-18 00:00:01'),(608,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-19 00:00:01'),(609,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-19 00:00:01'),(610,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-19 00:00:01'),(611,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-19 00:00:01'),(612,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50005,'2022-06-19 00:00:01'),(613,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50006,'2022-06-19 00:00:01'),(614,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50007,'2022-06-19 00:00:01'),(615,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50008,'2022-06-19 00:00:01'),(616,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50013,'2022-06-19 00:00:01'),(617,'2022-06-18',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50014,'2022-06-19 00:00:01'),(618,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-20 00:00:02'),(619,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-20 00:00:02'),(620,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-20 00:00:02'),(621,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-20 00:00:02'),(622,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50005,'2022-06-20 00:00:02'),(623,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50006,'2022-06-20 00:00:02'),(624,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50007,'2022-06-20 00:00:02'),(625,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50008,'2022-06-20 00:00:02'),(626,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50013,'2022-06-20 00:00:02'),(627,'2022-06-19',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50014,'2022-06-20 00:00:02'),(628,'2022-06-20',8,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-21 00:00:02'),(629,'2022-06-20',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-21 00:00:02'),(630,'2022-06-20',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-21 00:00:02'),(631,'2022-06-20',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-21 00:00:02'),(647,'2022-06-21',0,9501800,0,0,0,0,0,0,0,37101800,0,0,0,0,50001,'2022-06-22 14:36:16'),(648,'2022-06-21',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-22 14:36:16'),(649,'2022-06-21',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-22 14:36:16'),(650,'2022-06-21',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-22 14:36:16'),(651,'2022-06-21',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50025,'2022-06-22 14:36:16'),(652,'2022-06-22',1,0,0,0,0,0,0,0,0,0,0,0,0,0,50001,'2022-06-23 00:00:01'),(653,'2022-06-22',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-23 00:00:01'),(654,'2022-06-22',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-23 00:00:01'),(655,'2022-06-22',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-23 00:00:01'),(656,'2022-06-22',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50025,'2022-06-23 00:00:01'),(657,'2022-06-23',6,0,0,0,0,0,0,0,0,2500000,0,0,0,0,50001,'2022-06-24 00:00:01'),(658,'2022-06-23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50002,'2022-06-24 00:00:01'),(659,'2022-06-23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50003,'2022-06-24 00:00:01'),(660,'2022-06-23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50004,'2022-06-24 00:00:01'),(661,'2022-06-23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50025,'2022-06-24 00:00:01'),(662,'2022-06-23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,50029,'2022-06-24 00:00:01');
/*!40000 ALTER TABLE `dashboard_stat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:43