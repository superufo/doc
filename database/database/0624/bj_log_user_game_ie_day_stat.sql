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
-- Table structure for table `user_game_ie_day_stat`
--

DROP TABLE IF EXISTS `user_game_ie_day_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_game_ie_day_stat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL COMMENT '日期',
  `s_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户服务器id',
  `integer_user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '用户整型id',
  `channel_id` int unsigned NOT NULL DEFAULT '0' COMMENT '渠道id',
  `game_id` smallint unsigned NOT NULL DEFAULT '0' COMMENT '游戏id',
  `bets_gold` bigint unsigned NOT NULL DEFAULT '0' COMMENT '下注金额',
  `settle_gold` bigint unsigned NOT NULL DEFAULT '0' COMMENT '结算金额',
  `balance_gold` bigint NOT NULL DEFAULT '0' COMMENT '收支金额',
  `win_gold` bigint NOT NULL DEFAULT '0' COMMENT '赢钱金额',
  `lose_gold` bigint NOT NULL DEFAULT '0' COMMENT '输钱金额',
  `player_service_charge` bigint NOT NULL DEFAULT '0' COMMENT '玩家服务费',
  `company_lose_gold` bigint NOT NULL DEFAULT '0' COMMENT '公司(平台)损失金币(玩家输钱时触发)',
  `channel_lose_gold` bigint NOT NULL DEFAULT '0' COMMENT '渠道损失金币(玩家输钱时触发)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_day_sid_gid` (`day`,`channel_id`,`s_id`,`game_id`),
  KEY `idx_day_cid_iid_gid` (`day`,`channel_id`,`integer_user_id`,`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户游戏收支统计日表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_game_ie_day_stat`
--

LOCK TABLES `user_game_ie_day_stat` WRITE;
/*!40000 ALTER TABLE `user_game_ie_day_stat` DISABLE KEYS */;
INSERT INTO `user_game_ie_day_stat` VALUES (1,'2022-06-06','0115333',15333,50001,1,100000000,97500000,-2500000,47500000,-50000000,0,0,0),(2,'2022-06-06','0115334',15334,50001,1,4060000000,4840000000,780000000,2420000000,-1640000000,0,0,0),(3,'2022-06-06','0115325',15325,50001,1,120000000,196000000,76000000,86000000,-10000000,0,0,0),(4,'2022-06-06','0115327',15327,50001,1,130000000,39000000,-91000000,9500000,-100500000,0,0,0),(5,'2022-06-07','0115341',15341,50001,1,10000000,0,-10000000,0,-10000000,0,0,0),(6,'2022-06-07','0115342',15342,50001,1,7420000000,97500000,-7322500000,0,-7322500000,0,0,0),(7,'2022-06-07','0115344',15344,50001,1,310000000,0,-310000000,0,-310000000,0,0,0),(8,'2022-06-07','0115335',15335,50001,1,210000000,180000000,-30000000,70000000,-100000000,0,0,0),(9,'2022-06-07','0115345',15345,50001,1,270000000,58500000,-211500000,0,-211500000,0,0,0),(10,'2022-06-07','0115336',15336,50001,1,7710000000,0,-7710000000,0,-7710000000,0,0,0),(11,'2022-06-07','0115348',15348,50001,1,1300000000,0,-1300000000,0,-1300000000,0,0,0),(12,'2022-06-07','0115339',15339,50001,1,120000000,0,-120000000,0,-120000000,0,0,0),(13,'2022-06-07','0115349',15349,0,1,660000000,0,-660000000,0,-660000000,0,0,0),(14,'2022-06-08','0115341',15341,50001,1,180000000,117000000,-63000000,38000000,-101000000,0,0,0),(15,'2022-06-08','0115352',15352,50001,1,20000000,19500000,-500000,9500000,-10000000,0,0,0),(16,'2022-06-08','0115354',15354,50001,1,310000000,39000000,-271000000,9500000,-280500000,0,0,0),(17,'2022-06-08','0115335',15335,50001,1,530000000,253500000,-276500000,57000000,-333500000,0,0,0),(18,'2022-06-08','0115337',15337,50001,1,60000000,0,-60000000,0,-60000000,0,0,0),(19,'2022-06-09','0115341',15341,50001,1,3990000000,2418000000,-1572000000,1168500000,-2740500000,0,0,0),(20,'2022-06-09','0115351',15351,50001,1,20000000,0,-20000000,0,-20000000,0,0,0),(21,'2022-06-09','0115354',15354,50001,1,14541140000,4812000000,-9729140000,2802500000,-12531640000,0,0,0),(22,'2022-06-09','0115356',15356,50001,1,10078000000,78000000,-10000000000,28500000,-10028500000,0,0,0),(23,'2022-06-09','0115357',15357,50001,1,37202400000,27207180000,-9995220000,13254780000,-23250000000,0,0,0),(24,'2022-06-09','0115358',15358,50001,1,10000000,0,-10000000,0,-10000000,0,0,0),(25,'2022-06-09','0115359',15359,50001,1,3830000000,390000000,-3440000000,142500000,-3582500000,0,0,0),(59,'2022-06-10','0115360',15360,50001,1,40000000,0,-40000000,0,-40000000,0,-13600000,-14000000),(60,'2022-06-10','0115361',15361,50001,1,15322100000,5324670000,-9997430000,19270000,-10016700000,135000,-3405678000,-3505845000),(61,'2022-06-10','0115371',15371,50001,1,2790000000,1651500000,-1138500000,636500000,-1775000000,0,-603500000,-621250000),(62,'2022-06-10','0115372',15372,50001,1,3430000000,351000000,-3079000000,142500000,-3221500000,9000000,-1095310000,-1127525000),(63,'2022-06-10','0115363',15363,50001,1,20000000,39000000,19000000,19000000,0,0,0,0),(65,'2022-06-10','0115366',15366,50001,1,11000000000,9133500000,-1866500000,4673500000,-6540000000,11000000,-2223600000,-2289000000),(66,'2022-06-10','0115357',15357,50001,1,2200000,1170000,-1030000,380000,-1410000,5000,-479400,-493500),(67,'2022-06-10','0115367',15367,50001,1,8250000000,0,-8250000000,0,-8250000000,0,-2805000000,-2887500000),(68,'2022-06-10','0115369',15369,50001,1,10000000,0,-10000000,0,-10000000,0,-3400000,-3500000);
/*!40000 ALTER TABLE `user_game_ie_day_stat` ENABLE KEYS */;
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
