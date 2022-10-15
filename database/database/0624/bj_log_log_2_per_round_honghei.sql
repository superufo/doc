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
-- Table structure for table `log_2_per_round_honghei`
--

DROP TABLE IF EXISTS `log_2_per_round_honghei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_2_per_round_honghei` (
  `sid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `id` int DEFAULT NULL COMMENT 'id(不唯一)',
  `room_id` smallint DEFAULT NULL,
  `data_time` int DEFAULT '0' COMMENT '记录时间',
  `users_data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci COMMENT '参与的用户:[{sid,输赢值},....]0平',
  `result` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '开奖结果',
  `result_state` tinyint DEFAULT '0' COMMENT '平台输赢',
  `amount` bigint DEFAULT '0' COMMENT '平台输赢值',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_2_per_round_honghei`
--

LOCK TABLES `log_2_per_round_honghei` WRITE;
/*!40000 ALTER TABLE `log_2_per_round_honghei` DISABLE KEYS */;
INSERT INTO `log_2_per_round_honghei` VALUES ('0100162356',62356,1,1654506347,'{\"0115349\":{\"bets\":{\"0\":10000000},\"re\":0,\"p_state\":0,\"win\":-10000000}}','{\"result\":0,\"redcards\":[804,305,204],\"blackcards\":[201,202,203]}',1,0);
/*!40000 ALTER TABLE `log_2_per_round_honghei` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:46
