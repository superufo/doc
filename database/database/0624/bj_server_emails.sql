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
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID，0表示群发邮件',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '寄件人',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT '状态1：已读 2：未读 ',
  `type` tinyint NOT NULL COMMENT '邮件类型1：站内信，2：会员来信',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作人',
  `send_type` tinyint NOT NULL DEFAULT '1' COMMENT '邮件发送类型1：单独发，2：群发',
  PRIMARY KEY (`id`),
  KEY `idx_player_id_status_type` (`player_id`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'0115341','SYSTEM','推广信息','222奖励推广',2,1,'2022-06-21 17:27:09','test_admin',1),(2,'','SYSTEM','活动推广奖励','活动推广寻找代理合伙人',2,1,'2022-06-21 19:37:12','test_admin',2),(3,'','SYSTEM','存入充值','送送阿卡卡72727278282aaaaa\naaaAAXYUUUEUEU\n封疆不行不行不行',2,1,'2022-06-21 19:39:32','test_admin',2),(4,'','SYSTEM','fsdaf','的撒飞洒地方收到',2,1,'2022-06-22 17:36:10','keith',2),(5,'','SYSTEM','提现活动','2345卡机阿卡卡啦啦啦你们',2,1,'2022-06-23 14:41:25','test_admin',2),(6,'','SYSTEM','@111.。。。。','发发发发发####22222@@@@@',2,1,'2022-06-23 14:42:17','test_admin',2);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:54
