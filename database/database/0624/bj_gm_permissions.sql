CREATE DATABASE  IF NOT EXISTS `bj_gm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bj_gm`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 192.168.0.188    Database: bj_gm
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int NOT NULL DEFAULT '1',
  `hidden` int NOT NULL DEFAULT '0',
  `type` enum('parent','children','button') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'parent',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `always_show` int NOT NULL DEFAULT '0',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,0,'Permission','权限管理','/permission','Layout',4,0,'parent','permission',1,'permission/list','api','2022-05-07 15:45:13','2022-05-19 15:16:01'),(2,1,'PermissionRole','角色管理','/permission/role','permission/role',3,0,'children','user_role',0,NULL,'api','2022-05-07 15:47:43','2022-05-18 18:48:53'),(3,1,'PermissionUser','用户管理','/permission/user','permission/user',2,0,'children','user',0,NULL,'api','2022-05-07 16:02:14','2022-05-10 18:54:50'),(4,1,'PermissionNode','权限列表','/permission/node','permission/node',3,0,'children','permission_list',0,NULL,'api','2022-05-07 16:04:55','2022-05-18 18:52:28'),(5,0,'Player','玩家管理','/player','Layout',1,0,'parent','peoples',1,'/player/lists','api','2022-05-09 17:49:39','2022-05-13 15:24:43'),(6,5,'PlayerList','玩家列表','/player/list','player/list',1,0,'children','user',0,'','api','2022-05-11 11:09:40','2022-05-11 11:09:40'),(7,5,'PlayerGameRecord','牌局记录','/player/game-record','player/game-record',2,0,'children','icon_poker',0,NULL,'api','2022-05-12 10:43:36','2022-05-17 18:51:57'),(8,5,'PlayerInfo','玩家信息','/player/info','player/info',3,0,'children','user',0,NULL,'api','2022-05-12 14:24:57','2022-05-12 14:24:57'),(9,5,'PlayerGold','玩家金币','/player/gold','player/gold',4,0,'children','user',0,NULL,'api','2022-05-12 14:25:33','2022-05-12 14:25:33'),(10,3,'CreateUser','创建用户','/createuser',NULL,2,1,'button',NULL,0,NULL,'api','2022-05-12 15:45:02','2022-05-13 15:31:13'),(11,3,'UpdateUser','编辑用户','/updateuser',NULL,1,1,'button',NULL,0,NULL,'api','2022-05-12 15:53:29','2022-05-12 15:53:29'),(12,3,'DeleteUser','删除用户','/deleteuser',NULL,1,1,'button',NULL,0,NULL,'api','2022-05-12 16:30:14','2022-05-12 16:30:14'),(14,15,'DepositAndWithdrawalRatio','充提比配置','/game-setting/deposit-withdrawal-ratio','game-setting/deposit-withdrawal-ratio',2,0,'children','el-icon-s-tools',0,NULL,'api','2022-05-13 15:10:49','2022-05-25 15:17:05'),(15,0,'GameSetting','游戏管理','/game-setting','Layout',2,0,'parent','game',1,NULL,'api','2022-05-13 16:40:51','2022-05-25 15:14:52'),(16,15,'GameStock','游戏库存','/game-setting/stock','game-setting/stock',3,0,'children','crm',0,NULL,'api','2022-05-13 16:46:22','2022-05-25 15:17:00'),(17,0,'System','系统工具','/system','Layout',5,0,'parent','el-icon-s-tools',1,'/system','api','2022-05-16 18:41:15','2022-05-24 17:53:47'),(18,17,'SystemLog','操作日志','/system/log','system/log',1,0,'children','el-icon-s-order',0,NULL,'api','2022-05-16 18:42:19','2022-05-16 21:12:33'),(21,0,'Channel','渠道代理','/channel','Layout',3,0,'parent','agent-rel',1,NULL,'api','2022-05-19 15:12:14','2022-05-23 09:17:06'),(22,21,'ChannelCommerce','渠道商','/channel/commerce','channel/commerce',1,0,'children','channel',0,NULL,'api','2022-05-19 15:15:02','2022-05-25 12:23:17'),(23,5,'PlayerGoldFlow','流水记录','/player/gold-flow','player/gold-flow',6,0,'children','excel',0,NULL,'api','2022-05-19 19:46:52','2022-05-19 19:46:52'),(24,21,'Agent','代理管理','/agnet/list','agent/list',1,0,'children','agent',0,NULL,'api','2022-05-20 20:30:55','2022-05-20 20:30:55'),(25,5,'PlayerControl','玩家控制','/player/control','player/control',6,0,'children','lock',0,NULL,'api','2022-05-23 11:16:20','2022-05-23 11:23:54'),(26,17,'SystemArbitrage','套利查询','/system/arbitrage','system/arbitrage',2,0,'children','arbitrage',0,NULL,'api','2022-05-24 17:56:36','2022-05-24 17:58:54'),(27,30,'StatisticsChannel','渠道数据统计','/statistics/channel','statistics/channel',3,0,'children','statistics',0,NULL,'api','2022-05-25 12:35:41','2022-05-31 14:09:26'),(28,15,'GameList','游戏列表','/game-setting/list','game-setting/list',1,0,'children','list',0,NULL,'api','2022-05-25 15:16:42','2022-05-25 15:18:14'),(29,30,'StatisticsServiceCharge','服务费统计','/statistics/servicecharge','statistics/servicecharge',4,0,'children','statistics',0,NULL,'api','2022-05-25 17:25:40','2022-05-31 14:10:36'),(30,0,'Statistics','数据中心','/statistics','Layout',3,0,'parent','el-icon-data-analysis',1,NULL,'api','2022-05-31 10:19:00','2022-06-02 17:33:59'),(31,30,'StatisticsGameIEDayStat','游戏收支日统计','/statistics/game-ie-day','statistics/game-ie-day',1,0,'children','statistics',0,NULL,'api','2022-05-31 10:19:37','2022-05-31 11:27:09'),(32,30,'PlayerGameIEDayStat','玩家游戏收支日统计','/statistics/player-game-ie-day','statistics/player-game-ie-day',2,0,'children','statistics',0,NULL,'api','2022-06-02 10:53:50','2022-06-02 10:53:50'),(33,15,'Robot','机器人','/game-setting/robot','game-setting/robot',4,0,'children','robot',0,NULL,'api','2022-06-13 15:04:00','2022-06-15 19:21:39'),(34,15,'GameSettingBroadcast','游戏广播','/game-setting/broadcast','game-setting/broadcast',5,0,'children','broadcast',0,NULL,'api','2022-06-15 17:04:19','2022-06-15 19:22:48'),(35,15,'GameSettingCarousel','大厅宣传图','/game-setting/carousel','game-setting/carousel',6,0,'children','list',0,NULL,'api','2022-06-15 17:17:16','2022-06-16 11:37:07'),(36,15,'GameSettingBlacklist','黑名单','/game-setting/blacklist','game-setting/blacklist',7,0,'children','blacklist',0,NULL,'api','2022-06-16 15:24:33','2022-06-20 18:48:54'),(37,15,'Email','邮件列表','/game-setting/email','game-setting/email',7,0,'children','email',0,NULL,'api','2022-06-17 09:53:44','2022-06-17 09:53:54'),(38,15,'RoomConfig','房间配置','/game-setting/room','game-setting/room',3,0,'children','el-icon-s-grid',0,NULL,'api','2022-06-17 10:14:58','2022-06-17 10:16:24');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:52
