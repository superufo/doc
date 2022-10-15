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
-- Table structure for table `report_user_brokerage`
--

DROP TABLE IF EXISTS `report_user_brokerage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_user_brokerage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reported_at` int unsigned NOT NULL COMMENT '报表时间',
  `channel_id` int unsigned NOT NULL DEFAULT '0' COMMENT '渠道id',
  `s_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户uid',
  `self_bet` bigint unsigned NOT NULL DEFAULT '0' COMMENT '自身有效下注',
  `direct_bet` bigint unsigned NOT NULL DEFAULT '0' COMMENT '直属团队(下级)有效下注',
  `other_bet` bigint unsigned NOT NULL DEFAULT '0' COMMENT '其他团队(下下级)有效下注',
  `brokerage` bigint unsigned NOT NULL DEFAULT '0' COMMENT '总佣金',
  `grade_name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '当前推广等级名称',
  `is_received` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否领取，1已领取，0未领取',
  `received_at` int unsigned NOT NULL DEFAULT '0' COMMENT '领取时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `s_id` (`s_id`) USING BTREE,
  KEY `reported_at` (`reported_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户佣金日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_user_brokerage`
--

LOCK TABLES `report_user_brokerage` WRITE;
/*!40000 ALTER TABLE `report_user_brokerage` DISABLE KEYS */;
INSERT INTO `report_user_brokerage` VALUES (17,1656000000,50004,'0115326',19000000,0,0,95000,'会员',0,0),(18,1656000000,50004,'0115327',30000000,0,0,150000,'会员',0,0),(19,1656000000,50004,'0115328',42000000,0,0,210000,'会员',0,0),(20,1656000000,50004,'0115329',15000000,0,0,75000,'会员',0,0),(21,1656000000,50004,'0115330',8000000,0,0,40000,'会员',0,0);
/*!40000 ALTER TABLE `report_user_brokerage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:36:01
