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
-- Table structure for table `blacklist_config`
--

DROP TABLE IF EXISTS `blacklist_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blacklist_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '类型:1 ip 2机器码',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ip或机器码',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT '状态:1正常2封禁',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `admin_name` varchar(24) COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员名字',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='黑名单配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_config`
--

LOCK TABLES `blacklist_config` WRITE;
/*!40000 ALTER TABLE `blacklist_config` DISABLE KEYS */;
INSERT INTO `blacklist_config` VALUES (3,1,'127.0.0.1',1,'test22233434343434','keith','2022-06-16 20:11:31','2022-06-20 18:02:24'),(4,2,'rwer45wrwerrt',1,'test222','keith','2022-06-20 11:07:32','2022-06-21 14:23:16'),(5,1,'192.168.0.1',1,'1111112323','keith','2022-06-20 11:14:57','2022-06-20 18:02:14'),(6,1,'192.168.0.123',2,'禁止登录','test_admin','2022-06-21 16:47:37','2022-06-21 16:50:48'),(7,2,'123369852',2,'禁止使用','test_admin','2022-06-21 16:49:03','2022-06-21 16:49:03'),(8,1,'192.168..1.00000',2,NULL,'test_admin','2022-06-21 16:53:03','2022-06-21 16:53:03'),(9,1,'192.168...63692',2,NULL,'test_admin','2022-06-21 16:54:23','2022-06-21 16:54:23'),(10,2,'455666AAAssssccc123errrrrr',1,'1222','test_admin','2022-06-21 17:06:11','2022-06-21 17:22:53'),(11,1,'192.168.0.77',1,NULL,'test_admin','2022-06-21 19:52:33','2022-06-21 20:00:08'),(12,2,'keyiiiaiiia233444$',2,NULL,'test_admin','2022-06-21 20:01:32','2022-06-21 20:01:32'),(13,1,'1235469875236598',2,NULL,'test_admin','2022-06-21 20:02:15','2022-06-21 20:02:15'),(14,2,'uiaiiia555555',2,NULL,'test_admin','2022-06-21 20:03:20','2022-06-21 20:03:20'),(15,1,'192.@@@@15693.........',2,NULL,'test_admin','2022-06-21 20:32:59','2022-06-21 20:32:59'),(16,1,'192.1562............@11111',2,NULL,'test_admin','2022-06-21 20:34:53','2022-06-21 20:34:53');
/*!40000 ALTER TABLE `blacklist_config` ENABLE KEYS */;
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
