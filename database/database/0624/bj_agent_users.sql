CREATE DATABASE  IF NOT EXISTS `bj_agent` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bj_agent`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 192.168.0.188    Database: bj_agent
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `phone` bigint NOT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号名称',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `users_channel_unique` (`channel_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (50001,'官方渠道','official','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',15912312312,'offical@gmail.com',NULL,'$2y$10$6kiIg9z/jx.s5RS7T8vUIe39Dl3Nhz8gHsKQxY9x97t43HpbbmkSu',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vYWdlbnQubG9jYWwuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjU1MTAxMDcwLCJleHAiOjE2NTUxMjk4NzAsIm5iZiI6MTY1NTEwMTA3MCwianRpIjoicFRyTlhtZkxlZFJEbXpKcyIsInN1YiI6IjUwMDAxIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.HHkFeyB_u5cbgs4IjfVWFr6hOaN18eh86gNdcz7oCPk',1,'2022-05-27 11:34:31','2022-06-13 14:17:50'),(50002,'大B集团','dab888','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',15912312322,'dab888@gmail.com',NULL,'$2y$10$Hl3WMBNSixx9ZvHkElJ.d.JUTjxF6/rt0XU2ulSzI9RdaDkUgDTfS',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vYWdlbnQubG9jYWwuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjU0NTkyMjU5LCJleHAiOjE2NTQ2MjEwNTksIm5iZiI6MTY1NDU5MjI1OSwianRpIjoiZlpoVmFMWnJKVUNlTnlhdyIsInN1YiI6IjUwMDAyIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.ICM2_8qmvMpH1xt5Rd9-hyyque1vUTlRA6lQaTRpwfI',1,'2022-05-27 14:49:19','2022-06-07 16:57:39'),(50003,'大A集团','da888','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',12332112312,'da888@gmail.com',NULL,'$2y$10$2mw0td3YSrOOndofE3e4yOAX0c3y9tpTChDTFVQGNG4MeGmumFNvm',NULL,NULL,1,'2022-05-27 15:18:42','2022-05-27 15:18:42'),(50004,'DDD','DDD','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',12343223112,'DDD@gmail.com',NULL,'$2y$10$kSuH9zQtSVUhtdqzLtBhQeTnZrjDNMBVkXiEpNlPfswyMKMFh0/r6',NULL,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vYWdlbnQubG9jYWwuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjU0NTkyMjk2LCJleHAiOjE2NTQ2MjEwOTYsIm5iZiI6MTY1NDU5MjI5NiwianRpIjoiNFhYMmVPSkY1ZHVXaEhQZCIsInN1YiI6IjUwMDA0IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.pYye-Erv3CGwEuXy2SemTWu80Yl8CTGYaYaPGY6Nh4Y',1,'2022-05-27 15:51:24','2022-06-07 16:58:16'),(50025,'TEST','test','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',421322222,'test@test.com',NULL,'$2y$10$yu0z7DcSFnHdEaxGD1lNieyn/FRAJh0a0wDqYhh35Jmat/xJKWs9.',NULL,NULL,1,'2022-06-21 16:49:52','2022-06-21 16:49:52'),(50029,'testd','testd','/public/uploads/f778738c-e4f8-4870-b634-56703b4acafe.gif',3123123123,'test@tt.com',NULL,'$2y$10$sF/obbp0fl7BPD97sb9lMe/jisr3J/DUDBdqE6Yg3A5li7bzwnztG',NULL,NULL,1,'2022-06-23 15:05:41','2022-06-23 15:05:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 12:35:16
