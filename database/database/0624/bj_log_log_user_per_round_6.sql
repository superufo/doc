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
-- Table structure for table `log_user_per_round_6`
--

DROP TABLE IF EXISTS `log_user_per_round_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_user_per_round_6` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_sid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_round_sid` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `game_id` tinyint DEFAULT '1' COMMENT '玩法',
  `room_id` tinyint DEFAULT '0' COMMENT '房间',
  `change` bigint DEFAULT '0' COMMENT '这局收入',
  `end_time` int DEFAULT '0' COMMENT '时间',
  `bets` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下注情况json',
  `result` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开牌结果json',
  `per_round_state` tinyint DEFAULT '0' COMMENT '当前牌局状态',
  `win` bigint DEFAULT '0' COMMENT '输赢值',
  `before_money` bigint DEFAULT NULL COMMENT '原来多少',
  `after_money` bigint DEFAULT NULL COMMENT '结算之后多少',
  `platform` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渠道',
  `agent` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代理',
  `player_service_charge` bigint NOT NULL DEFAULT '0' COMMENT '玩家服务费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3 COMMENT='玩家个人牌局表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_user_per_round_6`
--

LOCK TABLES `log_user_per_round_6` WRITE;
/*!40000 ALTER TABLE `log_user_per_round_6` DISABLE KEYS */;
INSERT INTO `log_user_per_round_6` VALUES (2,'0115336','0100112332',1,1,0,1654584601,'{\"2\":10000000}','{\"result\":0,\"long\":1303,\"hu\":402}',1,-10000000,10000000000,9990000000,'50001','',0),(3,'0115336','0100112333',1,1,0,1654584624,'{\"0\":10000000}','{\"result\":2,\"long\":602,\"hu\":803}',1,-10000000,9990000000,9980000000,'50001','',0),(4,'0115336','0100113372',1,1,0,1654594551,'{\"0\":10000000}','{\"result\":2,\"long\":704,\"hu\":1101}',1,-10000000,9980000000,9970000000,'50001','',0),(5,'0115336','0100113374',1,1,0,1654594574,'{\"0\":20000000}','{\"result\":2,\"long\":301,\"hu\":901}',1,-20000000,9970000000,9950000000,'50001','',0),(6,'0115336','0100113376',1,1,0,1654594597,'{\"0\":40000000}','{\"result\":2,\"long\":402,\"hu\":1201}',1,-40000000,9950000000,9910000000,'50001','',0),(7,'0115336','0100113378',1,1,0,1654594620,'{\"0\":80000000}','{\"result\":2,\"long\":804,\"hu\":1302}',1,-80000000,9910000000,9830000000,'50001','',0),(8,'0115336','0100113380',1,1,0,1654594643,'{\"0\":160000000}','{\"result\":2,\"long\":701,\"hu\":1301}',1,-160000000,9830000000,9670000000,'50001','',0),(9,'0115336','0100113382',1,1,0,1654594666,'{\"0\":320000000}','{\"result\":2,\"long\":502,\"hu\":803}',1,-320000000,9670000000,9350000000,'50001','',0),(10,'0115336','0100113384',1,1,0,1654594689,'{\"0\":640000000}','{\"result\":2,\"long\":404,\"hu\":503}',1,-640000000,9350000000,8710000000,'50001','',0),(11,'0115336','0100113387',1,1,0,1654594712,'{\"0\":1280000000}','{\"result\":2,\"long\":502,\"hu\":1102}',1,-1280000000,8710000000,7430000000,'50001','',0),(12,'0115336','0100113390',1,1,0,1654594735,'{\"0\":2560000000}','{\"result\":2,\"long\":101,\"hu\":502}',1,-2560000000,7430000000,4870000000,'50001','',0),(13,'0115336','0100113393',1,1,0,1654594758,'{\"0\":2560000000}','{\"result\":1,\"long\":1103,\"hu\":1101}',1,-2560000000,4870000000,2310000000,'50001','',0),(14,'0115336','0100113434',1,1,0,1654595219,'{\"1\":10000000,\"2\":10000000}','{\"result\":0,\"long\":702,\"hu\":301}',1,-20000000,2310000000,2290000000,'50001','',0),(15,'0115356','0100117757',1,1,0,1654747130,'{\"0\":10000000}','{\"result\":2,\"long\":302,\"hu\":804}',1,-10000000,10000000000,9990000000,'50001','',0),(16,'0115356','0100117759',1,1,19500000,1654747153,'{\"2\":10000000}','{\"result\":2,\"long\":503,\"hu\":1203}',0,9500000,9990000000,9999500000,'50001','',0),(17,'0115356','0100117787',1,1,0,1654747476,'{\"0\":10000000}','{\"result\":2,\"long\":201,\"hu\":1201}',1,-10000000,9999500000,9989500000,'50001','',0),(18,'0115356','0100117791',1,1,19500000,1654747522,'{\"2\":10000000}','{\"result\":2,\"long\":304,\"hu\":1301}',1,9500000,9989500000,9999000000,'50001','',0),(19,'0115356','0100117793',1,1,0,1654747545,'{\"2\":10000000}','{\"result\":0,\"long\":402,\"hu\":204}',1,-10000000,9999000000,9989000000,'50001','',0),(20,'0115356','0100117795',1,1,0,1654747568,'{\"2\":10000000}','{\"result\":0,\"long\":1201,\"hu\":103}',1,-10000000,9989000000,9979000000,'50001','',0),(21,'0115356','0100117797',1,1,0,1654747591,'{\"2\":10000000}','{\"result\":0,\"long\":1002,\"hu\":102}',1,-10000000,9979000000,9969000000,'50001','',0),(22,'0115356','0100117799',1,1,0,1654747614,'{\"2\":10000000}','{\"result\":0,\"long\":1103,\"hu\":1002}',1,-10000000,9969000000,9959000000,'50001','',0),(23,'0115356','0100117801',1,1,0,1654747637,'{\"0\":20000000}','{\"result\":2,\"long\":202,\"hu\":703}',0,-20000000,9959000000,9939000000,'50001','',0),(24,'0115356','0100117803',1,1,0,1654747660,'{\"0\":10000000}','{\"result\":2,\"long\":803,\"hu\":902}',1,-10000000,9939000000,9929000000,'50001','',0),(25,'0115356','0100117805',1,1,0,1654747683,'{\"0\":10000000}','{\"result\":2,\"long\":1202,\"hu\":1302}',1,-10000000,9929000000,9919000000,'50001','',0),(26,'0115356','0100117807',1,1,0,1654747706,'{\"0\":10000000}','{\"result\":2,\"long\":503,\"hu\":1102}',1,-10000000,9919000000,9909000000,'50001','',0),(27,'0115356','0100117809',1,1,0,1654747729,'{\"2\":10000000,\"0\":10000000}','{\"result\":1,\"long\":703,\"hu\":701}',1,-20000000,9909000000,9889000000,'50001','',0),(28,'0115356','0100117811',1,1,0,1654747752,'{\"1\":10000000}','{\"result\":2,\"long\":102,\"hu\":1304}',1,-10000000,9889000000,9879000000,'50001','',0),(29,'0115356','0100117827',1,1,0,1654747937,'{\"2\":10000000}','{\"result\":1,\"long\":604,\"hu\":602}',1,-10000000,9879000000,9869000000,'50001','',0),(30,'0115356','0100117829',1,1,0,1654747960,'{\"2\":10000000}','{\"result\":0,\"long\":1101,\"hu\":1003}',1,-10000000,9869000000,9859000000,'50001','',0),(31,'0115356','0100117831',1,1,0,1654747983,'{\"1\":10000000}','{\"result\":2,\"long\":101,\"hu\":704}',1,-10000000,9859000000,9849000000,'50001','',0),(32,'0115356','0100117833',1,1,19500000,1654748006,'{\"0\":10000000}','{\"result\":0,\"long\":602,\"hu\":103}',1,9500000,9849000000,9858500000,'50001','',0),(33,'0115356','0100117835',1,1,0,1654748029,'{\"0\":10000000}','{\"result\":2,\"long\":801,\"hu\":1004}',1,-10000000,9858500000,9848500000,'50001','',0),(34,'0115356','0100117837',1,1,19500000,1654748052,'{\"2\":10000000,\"1\":10000000,\"0\":10000000}','{\"result\":0,\"long\":1104,\"hu\":702}',1,-10500000,9848500000,9838000000,'50001','',0),(35,'0115356','0100117839',1,1,0,1654748075,'{\"1\":10000000,\"0\":10000000}','{\"result\":2,\"long\":303,\"hu\":904}',1,-20000000,9838000000,9818000000,'50001','',0),(36,'0115356','0100117841',1,1,0,1654748098,'{\"1\":10000000}','{\"result\":2,\"long\":602,\"hu\":1002}',1,-10000000,9818000000,9808000000,'50001','',0),(37,'0115356','0100117843',1,1,0,1654748121,'{\"1\":10000000}','{\"result\":2,\"long\":203,\"hu\":1202}',1,-10000000,9808000000,9798000000,'50001','',0),(38,'0115356','0100117847',1,1,0,1654748167,'{\"1\":10000000}','{\"result\":0,\"long\":1304,\"hu\":702}',1,-10000000,9798000000,9788000000,'50001','',0),(39,'0115356','0100117853',1,1,0,1654748236,'{\"2\":10000000}','{\"result\":0,\"long\":1204,\"hu\":503}',1,-10000000,9788000000,9778000000,'50001','',0),(40,'0115356','0100118035',1,1,0,1654755593,'{\"2\":10000000}','{\"result\":0,\"long\":1003,\"hu\":903}',1,-10000000,9778000000,9768000000,'50001','',0),(41,'0115356','0100118075',1,1,0,1654756720,'{\"0\":10000000}','{\"result\":2,\"long\":601,\"hu\":901}',1,-10000000,9768000000,9758000000,'50001','',0),(42,'0115356','0100118079',1,1,0,1654756766,'{\"0\":10000000}','{\"result\":2,\"long\":204,\"hu\":1104}',1,-10000000,9758000000,9748000000,'50001','',0),(43,'0115356','0100118088',1,1,0,1654756888,'{\"0\":10000000}','{\"result\":2,\"long\":903,\"hu\":1003}',1,-10000000,9748000000,9738000000,'50001','',0),(44,'0115356','0100118096',1,1,0,1654757072,'{\"1\":10000000}','{\"result\":0,\"long\":803,\"hu\":502}',1,-10000000,9738000000,9728000000,'50001','',0),(45,'0115356','0100118100',1,1,0,1654757156,'{\"0\":10000000}','{\"result\":2,\"long\":702,\"hu\":902}',1,-10000000,9728000000,9718000000,'50001','',0),(46,'0115356','0100118114',1,1,0,1654757318,'{\"1\":10000000}','{\"result\":0,\"long\":1001,\"hu\":301}',1,-10000000,9718000000,9708000000,'50001','',0),(47,'0115356','0100118175',1,1,0,1654758017,'{\"1\":50000000}','{\"result\":2,\"long\":704,\"hu\":903}',1,-50000000,9708000000,9658000000,'50001','',0),(48,'0115356','0100118258',1,1,0,1654758977,'{\"1\":10000000}','{\"result\":0,\"long\":702,\"hu\":101}',1,-10000000,9658000000,9648000000,'50001','',0),(49,'0115356','0100118262',1,1,0,1654759023,'{\"1\":10000000}','{\"result\":0,\"long\":1104,\"hu\":801}',1,-10000000,9648000000,9638000000,'50001','',0),(50,'0115356','0100118401',1,1,0,1654760621,'{\"1\":10000000}','{\"result\":2,\"long\":703,\"hu\":1301}',1,-10000000,9638000000,9628000000,'50001','',0),(51,'0115356','0100119215',1,1,0,1654770001,'{\"2\":900000000}','{\"result\":0,\"long\":1204,\"hu\":104}',1,-900000000,9628000000,8728000000,'50001','',0),(52,'0115356','0100119217',1,1,0,1654770024,'{\"2\":8100000000}','{\"result\":0,\"long\":1002,\"hu\":403}',1,-8100000000,8728000000,628000000,'50001','',0),(53,'0115356','0100119220',1,1,0,1654770048,'{\"2\":600000000}','{\"result\":0,\"long\":1001,\"hu\":504}',2,-600000000,628000000,28000000,'50001','',0),(54,'0115356','0100119224',1,1,0,1654770071,'{\"2\":20000000}','{\"result\":0,\"long\":1002,\"hu\":503}',2,-20000000,28000000,8000000,'50001','',0),(55,'0115356','0100119367',1,1,0,1654771146,'{\"2\":7500000}','{\"result\":0,\"long\":1302,\"hu\":204}',0,-7500000,8000000,500000,'50001','',0),(56,'0115356','0100119372',1,1,0,1654771169,'{\"2\":450000}','{\"result\":0,\"long\":1003,\"hu\":103}',1,-450000,500000,50000,'50001','',0),(57,'0115356','0100119373',1,1,0,1654771192,'{\"2\":50000}','{\"result\":0,\"long\":903,\"hu\":103}',1,-50000,50000,0,'50001','',0),(58,'0115366','0100122089',1,1,0,1654831126,'{\"0\":80000000}','{\"result\":2,\"long\":204,\"hu\":1104}',2,-80000000,10000000000,9920000000,'50001','',0),(59,'0115366','0100122093',1,1,0,1654831172,'{\"1\":80000000}','{\"result\":2,\"long\":803,\"hu\":1201}',2,-80000000,9920000000,9840000000,'50001','',0),(60,'0115366','0100122205',1,1,19500000,1654833455,'{\"0\":10000000}','{\"result\":0,\"long\":1202,\"hu\":603}',2,9500000,9840000000,9849500000,'50001','',0),(61,'0115366','0100122206',1,1,0,1654833478,'{\"0\":10000000}','{\"result\":2,\"long\":103,\"hu\":1304}',2,-10000000,9849500000,9839500000,'50001','',0),(62,'0115366','0100122418',1,1,468000000,1654842527,'{\"0\":240000000}','{\"result\":0,\"long\":804,\"hu\":203}',2,228000000,9839500000,10067500000,'50001','',0),(63,'0115366','0100122420',1,1,0,1654842550,'{\"0\":240000000}','{\"result\":2,\"long\":802,\"hu\":1303}',2,-240000000,10067500000,9827500000,'50001','',0),(64,'0115366','0100122425',1,1,0,1654842596,'{\"2\":230000000}','{\"result\":0,\"long\":404,\"hu\":203}',2,-230000000,9827500000,9597500000,'50001','',0),(65,'0115366','0100122442',1,1,0,1654842803,'{\"0\":150000000,\"1\":150000000}','{\"result\":2,\"long\":204,\"hu\":404}',2,-300000000,9597500000,9297500000,'50001','',0),(66,'0115366','0100122445',1,1,0,1654842826,'{\"1\":750000000,\"0\":900000000}','{\"result\":2,\"long\":701,\"hu\":1104}',2,-1650000000,9297500000,7647500000,'50001','',0),(67,'0115366','0100122450',1,1,0,1654842895,'{\"0\":150000000}','{\"result\":2,\"long\":501,\"hu\":804}',2,-150000000,7647500000,7497500000,'50001','',0),(68,'0115366','0100122453',1,1,3802500000,1654842918,'{\"0\":1950000000}','{\"result\":0,\"long\":203,\"hu\":101}',2,1852500000,7497500000,9350000000,'50001','',0),(69,'0115366','0100122455',1,1,3802500000,1654842941,'{\"0\":1950000000}','{\"result\":0,\"long\":1301,\"hu\":501}',2,1852500000,9350000000,11202500000,'50001','',0),(70,'0115366','0100122467',1,1,0,1654843080,'{\"1\":1650000000}','{\"result\":2,\"long\":104,\"hu\":1002}',2,-1650000000,11202500000,9552500000,'50001','',0),(71,'0115366','0100122468',1,1,0,1654843103,'{\"1\":1950000000}','{\"result\":2,\"long\":402,\"hu\":1004}',2,-1950000000,9552500000,7602500000,'50001','',0),(72,'0115366','0100122515',1,1,612000000,1654843633,'{\"1\":80000000}','{\"result\":1,\"long\":703,\"hu\":701}',2,532000000,7602500000,8134500000,'50001','',0),(73,'0115366','0100122517',1,1,0,1654843656,'{\"1\":80000000}','{\"result\":0,\"long\":502,\"hu\":402}',2,-80000000,8134500000,8054500000,'50001','',0);
/*!40000 ALTER TABLE `log_user_per_round_6` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:32
