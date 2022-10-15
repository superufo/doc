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
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channels` (
  `channel_id` int unsigned NOT NULL COMMENT '渠道id',
  `c_loss_company_ratio` float NOT NULL COMMENT '客损平台收益比例',
  `c_loss_channel_ratio` float NOT NULL COMMENT '客损渠道收益比例',
  `dividend_ratio` float NOT NULL COMMENT '渠道商与公司分成比例',
  `level_ratio_limit` float NOT NULL COMMENT '代理分成上限',
  `pyramid_ratio` json DEFAULT NULL,
  `level_ratio` json NOT NULL COMMENT '代理分成比例',
  `agent_type` tinyint NOT NULL DEFAULT '1' COMMENT '代理类型',
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '接入方app_key',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '接入方app_id',
  `games` json DEFAULT NULL COMMENT '游戏配置',
  PRIMARY KEY (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (50001,0.34,0.35,0.33,0.55,'[]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"0.4000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"0.1000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"0.0500\"}]',1,'ffb20d37da9c6a6af5bb3f5a3ac08454','8cc465336436cd5d','[{\"id\": 2, \"code\": null, \"icon\": \"game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"红黑大战\", \"rooms\": [\"5\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 14:23:11\", \"updated_at\": \"2022-06-15 19:13:51\", \"locale_names\": {\"en\": \"Red VS Black\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"红黑大战\"}}, {\"id\": 1, \"code\": null, \"icon\": \"game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"龙虎斗\", \"rooms\": [\"1\", \"3\", \"7\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 09:33:31\", \"updated_at\": \"2022-05-27 14:33:18\", \"locale_names\": {\"en\": \"Dragon VS Tiger\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"龙虎斗\"}}]'),(50002,0.33,0.33,0.33,0.55,'[]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"0.4000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"0.1000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"0.0500\"}]',1,'aa0208f4ba5bf7e212cbef2629d95509','fddb2bd75f0d52bb',NULL),(50003,0.33,0.33,0.33,0.55,'[]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"0.4000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"0.1000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"0.0500\"}]',1,'4a8edeb9b8fcb724ada95246f4e24bf3','734344d89889797f',NULL),(50004,0.33,0.33,0.33,0.55,'[{\"id\": 1, \"name\": \"会员\", \"ratio\": \"0.0050\", \"deposit\": \"0\", \"max_bet\": \"200000000\", \"min_bet\": \"0\", \"share_cnt\": 0}, {\"id\": 2, \"name\": \"超级会员\", \"ratio\": \"0.0300\", \"deposit\": \"0\", \"max_bet\": \"600000000\", \"min_bet\": \"200000000\", \"share_cnt\": 0}, {\"id\": 3, \"name\": \"代理\", \"ratio\": \"0.0500\", \"deposit\": \"0\", \"max_bet\": \"1200000000\", \"min_bet\": \"600000000\", \"share_cnt\": 0}, {\"id\": 4, \"name\": \"超级代理\", \"ratio\": \"0.1000\", \"deposit\": \"0\", \"max_bet\": \"200000000000\", \"min_bet\": \"1200000000\", \"share_cnt\": 0}]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"0.4000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"0.1000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"0.0500\"}]',2,'eacf0865031906b08afd9541eefe53af','8877d2cf87bcdd8f','[{\"id\": 2, \"code\": null, \"icon\": \"game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"红黑大战\", \"rooms\": [], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 14:23:11\", \"updated_at\": \"2022-06-15 19:13:51\", \"locale_names\": {\"en\": \"Red VS Black\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"红黑大战\"}}, {\"id\": 1, \"code\": null, \"icon\": \"game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"龙虎斗\", \"rooms\": [], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 09:33:31\", \"updated_at\": \"2022-05-27 14:33:18\", \"locale_names\": {\"en\": \"Dragon VS Tiger\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"龙虎斗\"}}]'),(50025,0.33,0.33,0.34,0.55,'[]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"0.4000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"0.1000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"0.0500\"}]',1,'c1ded7f724e9f2d81b505159bd5aa868','2f3c0fc3f474f037','[{\"id\": 2, \"code\": null, \"icon\": \"game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"红黑大战\", \"rooms\": [\"5\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 14:23:11\", \"updated_at\": \"2022-06-15 19:13:51\", \"locale_names\": {\"en\": \"Red VS Black\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"红黑大战\"}}, {\"id\": 1, \"code\": null, \"icon\": \"game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"龙虎斗\", \"rooms\": [\"1\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 09:33:31\", \"updated_at\": \"2022-05-27 14:33:18\", \"locale_names\": {\"en\": \"Dragon VS Tiger\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"龙虎斗\"}}]'),(50029,0.33,0.33,0.33,55,'[]','[{\"name\": \"一级代理\", \"level\": 1, \"ratio\": \"40.0000\"}, {\"name\": \"二级代理\", \"level\": 2, \"ratio\": \"10.0000\"}, {\"name\": \"三级代理\", \"level\": 3, \"ratio\": \"5.0000\"}]',1,'8443a8f30d51b4978e9337ddaac706b1','0da0a78f67bd9ba9','[{\"id\": 2, \"code\": null, \"icon\": \"game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"红黑大战\", \"rooms\": [\"5\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/Td0uTUhq0hYL8kjcoCbnZ6XRvZ9TjMJj9zam7aKE.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 14:23:11\", \"updated_at\": \"2022-06-15 19:13:51\", \"locale_names\": {\"en\": \"Red VS Black\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"红黑大战\"}}, {\"id\": 1, \"code\": null, \"icon\": \"game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"lang\": [\"en\", \"ve\"], \"name\": \"龙虎斗\", \"rooms\": [\"1\"], \"display\": 1, \"is_open\": 1, \"icon_url\": \"http://gm.local.com/public/game/tFwucJvq1wmLqf9W2ip7MdLnJnYn98slx0YZmKSP.png\", \"is_delete\": 0, \"created_at\": \"2022-05-27 09:33:31\", \"updated_at\": \"2022-05-27 14:33:18\", \"locale_names\": {\"en\": \"Dragon VS Tiger\", \"id\": null, \"th\": null, \"vi\": null, \"zh\": \"龙虎斗\"}}]');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:59
