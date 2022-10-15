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
-- Table structure for table `carousel_config`
--

DROP TABLE IF EXISTS `carousel_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int NOT NULL COMMENT '渠道id',
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '类型:1纯图片2跳转地址3跳转游戏',
  `poster` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '海报地址',
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='大厅轮播图配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel_config`
--

LOCK TABLES `carousel_config` WRITE;
/*!40000 ALTER TABLE `carousel_config` DISABLE KEYS */;
INSERT INTO `carousel_config` VALUES (18,50003,2,'http://192.168.0.188/public/game/1EgNq2L4kjHBXfow4LivTwzhh2bzgh3XyzIl20BU.jpg',NULL,'2022-06-20 19:54:57','2022-06-24 11:28:54',1),(20,0,1,'game/4XD6Ta5LmYmVPJ0tlNl5hEprNBlGyGJzZqnUXxxV.png',NULL,'2022-06-21 16:57:19','2022-06-21 16:57:19',0),(27,0,2,'http://192.168.0.188/public/game/Hwk5hNB35buzL6v4cgkZDxth3EM7253up6H8asXs.png',NULL,'2022-06-21 20:45:42','2022-06-21 20:55:08',2),(28,0,2,'http://192.168.0.188/public/game/e4lpLUgaH3JbGuJO5GG762akFZ1vTsMvQuoc729t.png',NULL,'2022-06-21 20:46:31','2022-06-21 20:53:24',5);
/*!40000 ALTER TABLE `carousel_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:36:02
