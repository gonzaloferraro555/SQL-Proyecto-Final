CREATE DATABASE  IF NOT EXISTS `proyectofinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyectofinal`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `auditoría_facturas`
--

DROP TABLE IF EXISTS `auditoría_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoría_facturas` (
  `id_aud` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `fecha_aud` date DEFAULT NULL,
  `hora_aud` time DEFAULT NULL,
  `id_comprobante_venta` int DEFAULT NULL,
  PRIMARY KEY (`id_aud`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoría_facturas`
--

LOCK TABLES `auditoría_facturas` WRITE;
/*!40000 ALTER TABLE `auditoría_facturas` DISABLE KEYS */;
INSERT INTO `auditoría_facturas` VALUES (20,'root@localhost','2023-06-18','00:23:13',310),(21,'root@localhost','2023-06-18','00:24:00',311),(22,'root@localhost','2023-06-18','00:25:04',312),(23,'root@localhost','2023-06-18','00:25:08',313),(24,'root@localhost','2023-06-18','00:43:57',314),(25,'root@localhost','2023-06-18','00:43:57',315),(26,'root@localhost','2023-06-18','00:43:57',316),(27,'root@localhost','2023-06-18','00:43:57',317),(28,'root@localhost','2023-06-18','00:43:57',318),(29,'root@localhost','2023-06-18','00:43:57',319),(30,'root@localhost','2023-06-18','00:43:57',320),(31,'root@localhost','2023-06-18','00:43:58',321),(32,'root@localhost','2023-06-18','00:43:58',322),(33,'root@localhost','2023-06-18','00:43:58',323),(34,'root@localhost','2023-06-18','00:43:58',324),(35,'root@localhost','2023-06-18','00:43:58',325),(36,'root@localhost','2023-06-18','00:43:59',326),(37,'root@localhost','2023-06-18','00:43:59',327),(38,'root@localhost','2023-06-18','00:43:59',328),(39,'root@localhost','2023-06-18','00:43:59',329),(40,'root@localhost','2023-06-18','00:43:59',330),(41,'root@localhost','2023-06-18','00:43:59',331),(42,'root@localhost','2023-06-18','00:43:59',332),(43,'root@localhost','2023-06-18','00:43:59',333),(44,'root@localhost','2023-06-18','00:43:59',334),(45,'root@localhost','2023-06-18','00:43:59',335),(46,'root@localhost','2023-06-18','00:43:59',336),(47,'root@localhost','2023-06-18','00:44:00',337),(48,'root@localhost','2023-06-18','00:44:00',338),(49,'root@localhost','2023-06-18','00:44:00',339),(50,'root@localhost','2023-06-18','00:44:00',340),(51,'root@localhost','2023-06-18','00:44:00',341),(52,'root@localhost','2023-06-18','00:44:00',342),(53,'root@localhost','2023-06-18','00:44:00',343),(54,'root@localhost','2023-06-18','00:44:00',344),(55,'root@localhost','2023-06-18','00:44:00',345),(56,'root@localhost','2023-06-18','00:44:00',346),(57,'root@localhost','2023-06-18','00:44:00',347),(58,'root@localhost','2023-06-18','00:44:00',348),(59,'root@localhost','2023-06-18','00:44:00',349),(60,'root@localhost','2023-06-18','00:44:00',350),(61,'root@localhost','2023-06-18','00:44:00',351),(62,'root@localhost','2023-06-18','00:44:00',352),(63,'root@localhost','2023-06-18','00:44:01',353),(64,'root@localhost','2023-06-18','00:44:01',354),(65,'root@localhost','2023-06-18','00:44:01',355),(66,'root@localhost','2023-06-18','00:44:01',356),(67,'root@localhost','2023-06-18','00:44:01',357),(68,'root@localhost','2023-06-18','00:44:01',358),(69,'root@localhost','2023-06-18','00:44:01',359),(70,'root@localhost','2023-06-18','00:44:01',360),(71,'root@localhost','2023-06-18','00:44:01',361),(72,'root@localhost','2023-06-18','00:44:01',362),(73,'root@localhost','2023-06-18','00:44:01',363),(74,'root@localhost','2023-06-18','00:44:01',364),(75,'root@localhost','2023-06-18','00:44:01',365),(76,'root@localhost','2023-06-18','00:44:01',366),(77,'root@localhost','2023-06-18','00:44:01',367),(78,'root@localhost','2023-06-18','00:44:01',368),(79,'root@localhost','2023-06-18','00:44:01',369),(80,'root@localhost','2023-06-18','00:44:01',370),(81,'root@localhost','2023-06-18','00:44:02',371),(82,'root@localhost','2023-06-18','00:44:02',372),(83,'root@localhost','2023-06-18','00:44:02',373),(84,'root@localhost','2023-06-18','00:44:02',374),(85,'root@localhost','2023-06-18','00:44:02',375),(86,'root@localhost','2023-06-18','00:44:02',376),(87,'root@localhost','2023-06-18','00:44:02',377),(88,'root@localhost','2023-06-18','00:44:02',378),(89,'root@localhost','2023-06-18','00:44:02',379),(90,'root@localhost','2023-06-18','00:44:02',380),(91,'root@localhost','2023-06-18','00:44:02',381),(92,'root@localhost','2023-06-18','00:44:02',382),(93,'root@localhost','2023-06-18','00:44:02',383),(94,'root@localhost','2023-06-18','00:44:02',384),(95,'root@localhost','2023-06-18','00:44:02',385),(96,'root@localhost','2023-06-18','00:44:02',386),(97,'root@localhost','2023-06-18','00:44:03',387),(98,'root@localhost','2023-06-18','00:44:03',388),(99,'root@localhost','2023-06-18','00:44:03',389),(100,'root@localhost','2023-06-18','00:44:03',390),(101,'root@localhost','2023-06-18','00:44:03',391),(102,'root@localhost','2023-06-18','00:44:03',392),(103,'root@localhost','2023-06-18','00:44:03',393),(104,'root@localhost','2023-06-18','00:44:03',394),(105,'root@localhost','2023-06-18','00:44:03',395),(106,'root@localhost','2023-06-18','00:44:03',396),(107,'root@localhost','2023-06-18','00:44:03',397),(108,'root@localhost','2023-06-18','00:44:03',398),(109,'root@localhost','2023-06-18','00:44:03',399),(110,'root@localhost','2023-06-18','00:44:04',400),(111,'root@localhost','2023-06-18','00:44:04',401),(112,'root@localhost','2023-06-18','00:44:04',402),(113,'root@localhost','2023-06-18','00:44:04',403),(114,'root@localhost','2023-06-18','00:44:04',404),(115,'root@localhost','2023-06-18','00:44:04',405),(116,'root@localhost','2023-06-18','00:44:04',406),(117,'root@localhost','2023-06-18','00:44:04',407),(118,'root@localhost','2023-06-18','00:44:04',408),(119,'root@localhost','2023-06-18','00:44:04',409),(120,'root@localhost','2023-06-18','00:44:04',410),(121,'root@localhost','2023-06-18','00:44:04',411),(122,'root@localhost','2023-06-18','00:44:04',412),(123,'root@localhost','2023-06-18','00:44:04',413),(124,'root@localhost','2023-06-18','00:44:04',414),(125,'root@localhost','2023-06-18','00:44:04',415),(126,'root@localhost','2023-06-18','00:44:04',416),(127,'root@localhost','2023-06-18','00:44:04',417),(128,'root@localhost','2023-06-18','00:44:05',418),(129,'root@localhost','2023-06-18','00:44:05',419),(130,'root@localhost','2023-06-18','00:44:05',420),(131,'root@localhost','2023-06-18','00:44:05',421),(132,'root@localhost','2023-06-18','00:44:05',422),(133,'root@localhost','2023-06-18','00:44:05',423),(134,'root@localhost','2023-06-18','00:44:05',424),(135,'root@localhost','2023-06-18','00:44:05',425),(136,'root@localhost','2023-06-18','00:44:05',426),(137,'root@localhost','2023-06-18','00:44:05',427),(138,'root@localhost','2023-06-18','00:44:05',428),(139,'root@localhost','2023-06-18','00:44:05',429),(140,'root@localhost','2023-06-18','00:44:05',430),(141,'root@localhost','2023-06-18','00:44:05',431),(142,'root@localhost','2023-06-18','00:44:05',432),(143,'root@localhost','2023-06-18','00:44:05',433),(144,'root@localhost','2023-06-18','00:44:06',434),(145,'root@localhost','2023-06-18','00:44:06',435),(146,'root@localhost','2023-06-18','00:44:06',436),(147,'root@localhost','2023-06-18','00:44:06',437),(148,'root@localhost','2023-06-18','00:44:06',438),(149,'root@localhost','2023-06-18','00:44:06',439),(150,'root@localhost','2023-06-18','00:44:06',440),(151,'root@localhost','2023-06-18','00:44:06',441),(152,'root@localhost','2023-06-18','00:44:06',442),(153,'root@localhost','2023-06-18','00:44:06',443),(154,'root@localhost','2023-06-18','00:44:06',444),(155,'root@localhost','2023-06-18','00:44:06',445),(156,'root@localhost','2023-06-18','00:44:06',446),(157,'root@localhost','2023-06-18','00:44:06',447),(158,'root@localhost','2023-06-18','00:44:06',448),(159,'root@localhost','2023-06-18','00:44:06',449),(160,'root@localhost','2023-06-18','00:44:06',450),(161,'root@localhost','2023-06-18','00:44:07',451),(162,'root@localhost','2023-06-18','00:44:07',452),(163,'root@localhost','2023-06-18','00:44:07',453),(164,'root@localhost','2023-06-18','00:44:07',454),(165,'root@localhost','2023-06-18','00:44:07',455),(166,'root@localhost','2023-06-18','00:44:07',456),(167,'root@localhost','2023-06-18','00:44:07',457),(168,'root@localhost','2023-06-18','00:44:07',458),(169,'root@localhost','2023-06-18','00:44:07',459),(170,'root@localhost','2023-06-18','00:44:07',460),(171,'root@localhost','2023-06-18','00:44:07',461),(172,'root@localhost','2023-06-18','00:44:07',462),(173,'root@localhost','2023-06-18','00:44:07',463),(174,'root@localhost','2023-06-18','00:44:07',464),(175,'root@localhost','2023-06-18','00:44:07',465),(176,'root@localhost','2023-06-18','00:44:07',466),(177,'root@localhost','2023-06-18','00:44:07',467),(178,'root@localhost','2023-06-18','00:44:08',468),(179,'root@localhost','2023-06-18','00:44:08',469),(180,'root@localhost','2023-06-18','00:44:08',470),(181,'root@localhost','2023-06-18','00:44:08',471),(182,'root@localhost','2023-06-18','00:44:08',472),(183,'root@localhost','2023-06-18','00:44:08',473),(184,'root@localhost','2023-06-18','00:44:08',474),(185,'root@localhost','2023-06-18','00:44:08',475),(186,'root@localhost','2023-06-18','00:44:08',476),(187,'root@localhost','2023-06-18','00:44:08',477),(188,'root@localhost','2023-06-18','00:44:08',478),(189,'root@localhost','2023-06-18','00:44:08',479),(190,'root@localhost','2023-06-18','00:44:08',480),(191,'root@localhost','2023-06-18','00:44:08',481),(192,'root@localhost','2023-06-18','00:44:08',482),(193,'root@localhost','2023-06-18','00:44:08',483),(194,'root@localhost','2023-06-18','00:44:08',484),(195,'root@localhost','2023-06-18','00:44:08',485),(196,'root@localhost','2023-06-18','00:44:09',486),(197,'root@localhost','2023-06-18','00:44:09',487),(198,'root@localhost','2023-06-18','00:44:09',488),(199,'root@localhost','2023-06-18','00:44:09',489),(200,'root@localhost','2023-06-18','00:44:09',490),(201,'root@localhost','2023-06-18','00:44:09',491),(202,'root@localhost','2023-06-18','00:44:09',492),(203,'root@localhost','2023-06-18','00:44:09',493),(204,'root@localhost','2023-06-18','00:44:09',494),(205,'root@localhost','2023-06-18','00:44:09',495),(206,'root@localhost','2023-06-18','00:44:09',496),(207,'root@localhost','2023-06-18','00:44:09',497),(208,'root@localhost','2023-06-18','00:44:09',498),(209,'root@localhost','2023-06-18','00:44:09',499),(210,'root@localhost','2023-06-18','00:44:09',500),(211,'root@localhost','2023-06-18','00:44:09',501),(212,'root@localhost','2023-06-18','00:44:10',502),(213,'root@localhost','2023-06-18','00:44:10',503),(214,'root@localhost','2023-06-18','00:44:10',504),(215,'root@localhost','2023-06-18','00:44:10',505),(216,'root@localhost','2023-06-18','00:44:10',506),(217,'root@localhost','2023-06-18','00:44:10',507),(218,'root@localhost','2023-06-18','00:44:10',508),(219,'root@localhost','2023-06-18','00:44:10',509),(220,'root@localhost','2023-06-18','00:44:10',510),(221,'root@localhost','2023-06-18','00:44:10',511),(222,'root@localhost','2023-06-18','00:44:10',512),(223,'root@localhost','2023-06-18','00:44:10',513),(224,'root@localhost','2023-06-18','00:44:10',514),(225,'root@localhost','2023-06-18','00:44:10',515),(226,'root@localhost','2023-06-18','00:44:10',516),(227,'root@localhost','2023-06-18','00:44:11',517),(228,'root@localhost','2023-06-18','00:44:11',518),(229,'root@localhost','2023-06-18','00:44:11',519),(230,'root@localhost','2023-06-18','00:44:11',520),(231,'root@localhost','2023-06-18','00:44:11',521),(232,'root@localhost','2023-06-18','00:44:11',522),(233,'root@localhost','2023-06-18','00:44:11',523),(234,'root@localhost','2023-06-18','00:44:11',524),(235,'root@localhost','2023-06-18','00:44:11',525),(236,'root@localhost','2023-06-18','00:44:11',526),(237,'root@localhost','2023-06-18','00:44:11',527),(238,'root@localhost','2023-06-18','00:44:11',528),(239,'root@localhost','2023-06-18','00:44:11',529),(240,'root@localhost','2023-06-18','00:44:11',530),(241,'root@localhost','2023-06-18','00:44:11',531),(242,'root@localhost','2023-06-18','00:44:11',532),(243,'root@localhost','2023-06-18','00:44:11',533),(244,'root@localhost','2023-06-18','00:44:12',534),(245,'root@localhost','2023-06-18','00:44:12',535),(246,'root@localhost','2023-06-18','00:44:12',536),(247,'root@localhost','2023-06-18','00:44:12',537),(248,'root@localhost','2023-06-18','00:44:12',538),(249,'root@localhost','2023-06-18','00:44:12',539),(250,'root@localhost','2023-06-18','00:44:12',540),(251,'root@localhost','2023-06-18','00:44:12',541),(252,'root@localhost','2023-06-18','00:44:12',542),(253,'root@localhost','2023-06-18','00:44:12',543),(254,'root@localhost','2023-06-18','00:44:12',544),(255,'root@localhost','2023-06-18','00:44:12',545),(256,'root@localhost','2023-06-18','00:44:12',546),(257,'root@localhost','2023-06-18','00:44:12',547),(258,'root@localhost','2023-06-18','00:44:12',548),(259,'root@localhost','2023-06-18','00:44:12',549),(260,'root@localhost','2023-06-18','00:44:13',550),(261,'root@localhost','2023-06-18','00:44:13',551),(262,'root@localhost','2023-06-18','00:44:13',552),(263,'root@localhost','2023-06-18','00:44:13',553),(264,'root@localhost','2023-06-18','00:44:13',554),(265,'root@localhost','2023-06-18','00:44:13',555),(266,'root@localhost','2023-06-18','00:44:13',556),(267,'root@localhost','2023-06-18','00:44:13',557),(268,'root@localhost','2023-06-18','00:44:13',558),(269,'root@localhost','2023-06-18','00:44:13',559),(270,'root@localhost','2023-06-18','00:44:13',560),(271,'root@localhost','2023-06-18','00:44:13',561),(272,'root@localhost','2023-06-18','00:44:13',562),(273,'root@localhost','2023-06-18','00:44:14',563),(274,'root@localhost','2023-06-18','00:44:14',564),(275,'root@localhost','2023-06-18','00:44:14',565),(276,'root@localhost','2023-06-18','00:44:14',566),(277,'root@localhost','2023-06-18','00:44:14',567),(278,'root@localhost','2023-06-18','00:44:14',568),(279,'root@localhost','2023-06-18','00:44:14',569),(280,'root@localhost','2023-06-18','00:44:14',570),(281,'root@localhost','2023-06-18','00:44:14',571),(282,'root@localhost','2023-06-18','00:44:14',572),(283,'root@localhost','2023-06-18','00:44:14',573),(284,'root@localhost','2023-06-18','00:44:14',574),(285,'root@localhost','2023-06-18','00:44:14',575),(286,'root@localhost','2023-06-18','00:44:14',576),(287,'root@localhost','2023-06-18','00:44:14',577),(288,'root@localhost','2023-06-18','00:44:14',578),(289,'root@localhost','2023-06-18','00:44:15',579),(290,'root@localhost','2023-06-18','00:44:15',580),(291,'root@localhost','2023-06-18','00:44:15',581),(292,'root@localhost','2023-06-18','00:44:15',582),(293,'root@localhost','2023-06-18','00:44:15',583),(294,'root@localhost','2023-06-18','00:44:15',584),(295,'root@localhost','2023-06-18','00:44:15',585),(296,'root@localhost','2023-06-18','00:44:15',586),(297,'root@localhost','2023-06-18','00:44:15',587),(298,'root@localhost','2023-06-18','00:44:15',588),(299,'root@localhost','2023-06-18','00:44:15',589),(300,'root@localhost','2023-06-18','00:44:15',590),(301,'root@localhost','2023-06-18','00:44:15',591),(302,'root@localhost','2023-06-18','00:44:15',592),(303,'root@localhost','2023-06-18','00:44:15',593),(304,'root@localhost','2023-06-18','00:44:15',594),(305,'root@localhost','2023-06-18','00:44:15',595),(306,'root@localhost','2023-06-18','00:44:16',596),(307,'root@localhost','2023-06-18','00:44:16',597),(308,'root@localhost','2023-06-18','00:44:16',598),(309,'root@localhost','2023-06-18','00:44:16',599),(310,'root@localhost','2023-06-18','00:44:16',600),(311,'root@localhost','2023-06-18','00:44:16',601),(312,'root@localhost','2023-06-18','00:44:16',602),(313,'root@localhost','2023-06-18','00:44:16',603),(314,'root@localhost','2023-06-18','00:44:16',604),(315,'root@localhost','2023-06-18','00:44:16',605);
/*!40000 ALTER TABLE `auditoría_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoría_pagos`
--

DROP TABLE IF EXISTS `auditoría_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoría_pagos` (
  `id_aud` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `fecha_aud` date DEFAULT NULL,
  `hora_aud` time DEFAULT NULL,
  `id_comprobante_pago` int DEFAULT NULL,
  PRIMARY KEY (`id_aud`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoría_pagos`
--

LOCK TABLES `auditoría_pagos` WRITE;
/*!40000 ALTER TABLE `auditoría_pagos` DISABLE KEYS */;
INSERT INTO `auditoría_pagos` VALUES (1,'root@localhost','2023-06-18','01:21:09',8),(2,'root@localhost','2023-06-18','01:21:09',9),(3,'root@localhost','2023-06-18','01:21:09',10),(4,'root@localhost','2023-06-18','01:21:09',11),(5,'root@localhost','2023-06-18','01:21:10',12),(6,'root@localhost','2023-06-18','01:21:10',13),(7,'root@localhost','2023-06-18','01:21:10',14),(8,'root@localhost','2023-06-18','01:21:10',15),(9,'root@localhost','2023-06-18','01:21:10',16),(10,'root@localhost','2023-06-18','01:21:10',17),(11,'root@localhost','2023-06-18','01:21:10',18),(12,'root@localhost','2023-06-18','01:21:10',19),(13,'root@localhost','2023-06-18','01:21:10',20),(14,'root@localhost','2023-06-18','01:21:10',21),(15,'root@localhost','2023-06-18','01:21:10',22),(16,'root@localhost','2023-06-18','01:21:10',23),(17,'root@localhost','2023-06-18','01:21:10',24),(18,'root@localhost','2023-06-18','01:21:10',25),(19,'root@localhost','2023-06-18','01:21:10',26),(20,'root@localhost','2023-06-18','01:21:10',27),(21,'root@localhost','2023-06-18','01:21:11',28),(22,'root@localhost','2023-06-18','01:21:11',29),(23,'root@localhost','2023-06-18','01:21:11',30),(24,'root@localhost','2023-06-18','01:21:11',31),(25,'root@localhost','2023-06-18','01:21:11',32),(26,'root@localhost','2023-06-18','01:21:11',33),(27,'root@localhost','2023-06-18','01:21:11',34),(28,'root@localhost','2023-06-18','01:21:11',35),(29,'root@localhost','2023-06-18','01:21:11',36),(30,'root@localhost','2023-06-18','01:21:11',37),(31,'root@localhost','2023-06-18','01:21:11',38),(32,'root@localhost','2023-06-18','01:21:11',39),(33,'root@localhost','2023-06-18','01:21:11',40),(34,'root@localhost','2023-06-18','01:21:11',41),(35,'root@localhost','2023-06-18','01:21:11',42),(36,'root@localhost','2023-06-18','01:21:11',43),(37,'root@localhost','2023-06-18','01:21:12',44),(38,'root@localhost','2023-06-18','01:21:12',45),(39,'root@localhost','2023-06-18','01:21:12',46),(40,'root@localhost','2023-06-18','01:21:12',47),(41,'root@localhost','2023-06-18','01:21:12',48),(42,'root@localhost','2023-06-18','01:21:12',49),(43,'root@localhost','2023-06-18','01:21:12',50),(44,'root@localhost','2023-06-18','01:21:12',51),(45,'root@localhost','2023-06-18','01:21:12',52),(46,'root@localhost','2023-06-18','01:21:12',53),(47,'root@localhost','2023-06-18','01:21:12',54),(48,'root@localhost','2023-06-18','01:21:12',55),(49,'root@localhost','2023-06-18','01:21:12',56),(50,'root@localhost','2023-06-18','01:21:12',57),(51,'root@localhost','2023-06-18','01:21:12',58),(52,'root@localhost','2023-06-18','01:21:12',59),(53,'root@localhost','2023-06-18','01:21:12',60),(54,'root@localhost','2023-06-18','01:21:12',61),(55,'root@localhost','2023-06-18','01:21:13',62),(56,'root@localhost','2023-06-18','01:21:13',63),(57,'root@localhost','2023-06-18','01:21:13',64),(58,'root@localhost','2023-06-18','01:21:13',65),(59,'root@localhost','2023-06-18','01:21:13',66),(60,'root@localhost','2023-06-18','01:21:13',67),(61,'root@localhost','2023-06-18','01:21:13',68),(62,'root@localhost','2023-06-18','01:21:13',69),(63,'root@localhost','2023-06-18','01:21:13',70),(64,'root@localhost','2023-06-18','01:21:13',71),(65,'root@localhost','2023-06-18','01:21:13',72),(66,'root@localhost','2023-06-18','01:21:13',73),(67,'root@localhost','2023-06-18','01:21:13',74),(68,'root@localhost','2023-06-18','01:21:13',75),(69,'root@localhost','2023-06-18','01:21:13',76),(70,'root@localhost','2023-06-18','01:21:13',77),(71,'root@localhost','2023-06-18','01:21:13',78),(72,'root@localhost','2023-06-18','01:21:13',79),(73,'root@localhost','2023-06-18','01:21:14',80),(74,'root@localhost','2023-06-18','01:21:14',81),(75,'root@localhost','2023-06-18','01:21:14',82),(76,'root@localhost','2023-06-18','01:21:14',83),(77,'root@localhost','2023-06-18','01:21:14',84),(78,'root@localhost','2023-06-18','01:21:14',85),(79,'root@localhost','2023-06-18','01:21:14',86),(80,'root@localhost','2023-06-18','01:21:14',87),(81,'root@localhost','2023-06-18','01:21:14',88),(82,'root@localhost','2023-06-18','01:21:14',89),(83,'root@localhost','2023-06-18','01:21:14',90),(84,'root@localhost','2023-06-18','01:21:15',91),(85,'root@localhost','2023-06-18','01:21:15',92),(86,'root@localhost','2023-06-18','01:21:15',93),(87,'root@localhost','2023-06-18','01:21:15',94),(88,'root@localhost','2023-06-18','01:21:15',95),(89,'root@localhost','2023-06-18','01:21:15',96),(90,'root@localhost','2023-06-18','01:21:15',97),(91,'root@localhost','2023-06-18','01:21:15',98),(92,'root@localhost','2023-06-18','01:21:15',99),(93,'root@localhost','2023-06-18','01:21:15',100),(94,'root@localhost','2023-06-18','01:21:15',101),(95,'root@localhost','2023-06-18','01:21:15',102),(96,'root@localhost','2023-06-18','01:21:15',103),(97,'root@localhost','2023-06-18','01:21:15',104),(98,'root@localhost','2023-06-18','01:21:15',105),(99,'root@localhost','2023-06-18','01:21:15',106),(100,'root@localhost','2023-06-18','01:21:16',107),(101,'root@localhost','2023-06-18','01:21:16',108),(102,'root@localhost','2023-06-18','01:21:16',109),(103,'root@localhost','2023-06-18','01:21:16',110),(104,'root@localhost','2023-06-18','01:21:16',111),(105,'root@localhost','2023-06-18','01:21:16',112),(106,'root@localhost','2023-06-18','01:21:16',113),(107,'root@localhost','2023-06-18','01:21:16',114),(108,'root@localhost','2023-06-18','01:21:16',115),(109,'root@localhost','2023-06-18','01:21:16',116),(110,'root@localhost','2023-06-18','01:21:16',117),(111,'root@localhost','2023-06-18','01:21:16',118),(112,'root@localhost','2023-06-18','01:21:16',119),(113,'root@localhost','2023-06-18','01:21:16',120),(114,'root@localhost','2023-06-18','01:21:16',121),(115,'root@localhost','2023-06-18','01:21:16',122),(116,'root@localhost','2023-06-18','01:21:17',123),(117,'root@localhost','2023-06-18','01:21:17',124),(118,'root@localhost','2023-06-18','01:21:17',125),(119,'root@localhost','2023-06-18','01:21:17',126),(120,'root@localhost','2023-06-18','01:21:17',127),(121,'root@localhost','2023-06-18','01:21:17',128),(122,'root@localhost','2023-06-18','01:21:17',129),(123,'root@localhost','2023-06-18','01:21:17',130),(124,'root@localhost','2023-06-18','01:21:17',131),(125,'root@localhost','2023-06-18','01:21:17',132),(126,'root@localhost','2023-06-18','01:21:17',133),(127,'root@localhost','2023-06-18','01:21:17',134),(128,'root@localhost','2023-06-18','01:21:17',135),(129,'root@localhost','2023-06-18','01:21:17',136),(130,'root@localhost','2023-06-18','01:21:17',137),(131,'root@localhost','2023-06-18','01:21:17',138),(132,'root@localhost','2023-06-18','01:21:17',139),(133,'root@localhost','2023-06-18','01:21:17',140),(134,'root@localhost','2023-06-18','01:21:18',141),(135,'root@localhost','2023-06-18','01:21:18',142),(136,'root@localhost','2023-06-18','01:21:18',143),(137,'root@localhost','2023-06-18','01:21:18',144),(138,'root@localhost','2023-06-18','01:21:18',145),(139,'root@localhost','2023-06-18','01:21:18',146),(140,'root@localhost','2023-06-18','01:21:18',147),(141,'root@localhost','2023-06-18','01:21:18',148),(142,'root@localhost','2023-06-18','01:21:18',149),(143,'root@localhost','2023-06-18','01:21:18',150),(144,'root@localhost','2023-06-18','01:21:18',151),(145,'root@localhost','2023-06-18','01:21:18',152),(146,'root@localhost','2023-06-18','01:21:18',153),(147,'root@localhost','2023-06-18','01:21:18',154),(148,'root@localhost','2023-06-18','01:21:18',155),(149,'root@localhost','2023-06-18','01:21:18',156),(150,'root@localhost','2023-06-18','01:21:19',157),(151,'root@localhost','2023-06-18','01:21:19',158),(152,'root@localhost','2023-06-18','01:21:19',159),(153,'root@localhost','2023-06-18','01:21:19',160),(154,'root@localhost','2023-06-18','01:21:19',161),(155,'root@localhost','2023-06-18','01:21:19',162),(156,'root@localhost','2023-06-18','01:21:19',163),(157,'root@localhost','2023-06-18','01:21:19',164),(158,'root@localhost','2023-06-18','01:21:19',165),(159,'root@localhost','2023-06-18','01:21:19',166),(160,'root@localhost','2023-06-18','01:21:19',167),(161,'root@localhost','2023-06-18','01:21:19',168),(162,'root@localhost','2023-06-18','01:21:19',169),(163,'root@localhost','2023-06-18','01:21:19',170),(164,'root@localhost','2023-06-18','01:21:19',171),(165,'root@localhost','2023-06-18','01:21:19',172),(166,'root@localhost','2023-06-18','01:21:19',173),(167,'root@localhost','2023-06-18','01:21:20',174),(168,'root@localhost','2023-06-18','01:21:20',175),(169,'root@localhost','2023-06-18','01:21:20',176),(170,'root@localhost','2023-06-18','01:21:20',177),(171,'root@localhost','2023-06-18','01:21:20',178),(172,'root@localhost','2023-06-18','01:21:20',179),(173,'root@localhost','2023-06-18','01:21:20',180),(174,'root@localhost','2023-06-18','01:21:20',181),(175,'root@localhost','2023-06-18','01:21:20',182),(176,'root@localhost','2023-06-18','01:21:20',183),(177,'root@localhost','2023-06-18','01:21:20',184),(178,'root@localhost','2023-06-18','01:21:20',185),(179,'root@localhost','2023-06-18','01:21:20',186),(180,'root@localhost','2023-06-18','01:21:20',187),(181,'root@localhost','2023-06-18','01:21:20',188),(182,'root@localhost','2023-06-18','01:21:20',189),(183,'root@localhost','2023-06-18','01:21:21',190),(184,'root@localhost','2023-06-18','01:21:21',191),(185,'root@localhost','2023-06-18','01:21:21',192),(186,'root@localhost','2023-06-18','01:21:21',193),(187,'root@localhost','2023-06-18','01:21:21',194),(188,'root@localhost','2023-06-18','01:21:21',195),(189,'root@localhost','2023-06-18','01:21:21',196),(190,'root@localhost','2023-06-18','01:21:21',197),(191,'root@localhost','2023-06-18','01:21:21',198),(192,'root@localhost','2023-06-18','01:21:21',199),(193,'root@localhost','2023-06-18','01:21:21',200),(194,'root@localhost','2023-06-18','01:21:21',201),(195,'root@localhost','2023-06-18','01:21:21',202),(196,'root@localhost','2023-06-18','01:21:21',203),(197,'root@localhost','2023-06-18','01:21:21',204),(198,'root@localhost','2023-06-18','01:21:21',205),(199,'root@localhost','2023-06-18','01:21:21',206),(200,'root@localhost','2023-06-18','01:21:22',207),(201,'root@localhost','2023-06-18','01:21:22',208),(202,'root@localhost','2023-06-18','01:21:22',209),(203,'root@localhost','2023-06-18','01:21:22',210),(204,'root@localhost','2023-06-18','01:21:22',211),(205,'root@localhost','2023-06-18','01:21:22',212),(206,'root@localhost','2023-06-18','01:21:22',213),(207,'root@localhost','2023-06-18','01:21:22',214),(208,'root@localhost','2023-06-18','01:21:22',215),(209,'root@localhost','2023-06-18','01:21:22',216),(210,'root@localhost','2023-06-18','01:21:22',217),(211,'root@localhost','2023-06-18','01:21:22',218),(212,'root@localhost','2023-06-18','01:21:22',219),(213,'root@localhost','2023-06-18','01:21:22',220),(214,'root@localhost','2023-06-18','01:21:22',221),(215,'root@localhost','2023-06-18','01:21:22',222),(216,'root@localhost','2023-06-18','01:21:23',223),(217,'root@localhost','2023-06-18','01:21:23',224),(218,'root@localhost','2023-06-18','01:21:23',225),(219,'root@localhost','2023-06-18','01:21:23',226),(220,'root@localhost','2023-06-18','01:21:23',227),(221,'root@localhost','2023-06-18','01:21:23',228),(222,'root@localhost','2023-06-18','01:21:23',229),(223,'root@localhost','2023-06-18','01:21:23',230),(224,'root@localhost','2023-06-18','01:21:23',231),(225,'root@localhost','2023-06-18','01:21:23',232),(226,'root@localhost','2023-06-18','01:21:23',233),(227,'root@localhost','2023-06-18','01:21:23',234),(228,'root@localhost','2023-06-18','01:21:23',235),(229,'root@localhost','2023-06-18','01:21:23',236),(230,'root@localhost','2023-06-18','01:21:23',237),(231,'root@localhost','2023-06-18','01:21:23',238),(232,'root@localhost','2023-06-18','01:21:23',239),(233,'root@localhost','2023-06-18','01:21:24',240),(234,'root@localhost','2023-06-18','01:21:24',241),(235,'root@localhost','2023-06-18','01:21:24',242),(236,'root@localhost','2023-06-18','01:21:24',243),(237,'root@localhost','2023-06-18','01:21:24',244),(238,'root@localhost','2023-06-18','01:21:24',245),(239,'root@localhost','2023-06-18','01:21:24',246),(240,'root@localhost','2023-06-18','01:21:24',247);
/*!40000 ALTER TABLE `auditoría_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bajas`
--

DROP TABLE IF EXISTS `bajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bajas` (
  `id_baja` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha_baja` date NOT NULL,
  `id_tipo_baja` int NOT NULL,
  PRIMARY KEY (`id_baja`),
  KEY `FK_id_cliente_bajas` (`id_cliente`),
  KEY `FK_id_tipo_baja` (`id_tipo_baja`),
  CONSTRAINT `FK_id_cliente_bajas` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_tipo_baja` FOREIGN KEY (`id_tipo_baja`) REFERENCES `bajas_tipo` (`id_tipo_baja`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bajas`
--

LOCK TABLES `bajas` WRITE;
/*!40000 ALTER TABLE `bajas` DISABLE KEYS */;
INSERT INTO `bajas` VALUES (2,11,'2023-05-06',6),(3,75,'2023-05-05',5),(4,46,'2023-04-02',2),(5,18,'2023-04-05',5),(6,89,'2023-03-06',6),(7,81,'2023-03-01',1),(8,20,'2023-03-07',7),(9,38,'2023-04-04',4),(10,50,'2023-02-02',2);
/*!40000 ALTER TABLE `bajas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_bajas` AFTER INSERT ON `bajas` FOR EACH ROW UPDATE estado_cliente
SET estado_cliente= "No Activo"
WHERE id_cliente=NEW.id_cliente */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `bajas_concentración`
--

DROP TABLE IF EXISTS `bajas_concentración`;
/*!50001 DROP VIEW IF EXISTS `bajas_concentración`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bajas_concentración` AS SELECT 
 1 AS `descripción_baja`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bajas_tipo`
--

DROP TABLE IF EXISTS `bajas_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bajas_tipo` (
  `id_tipo_baja` int NOT NULL AUTO_INCREMENT,
  `descripción_baja` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_baja`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bajas_tipo`
--

LOCK TABLES `bajas_tipo` WRITE;
/*!40000 ALTER TABLE `bajas_tipo` DISABLE KEYS */;
INSERT INTO `bajas_tipo` VALUES (1,'Alto costo del servicio'),(2,'Cambio de domicilio/ciudad del usuario.'),(3,'Problemas de fluidez en la prestación.'),(4,'Problemas técnicos recurrentes.'),(5,'Paquete de velocidad insuficiente.'),(6,'Aumento de la tarifa sin previo aviso.'),(7,'Problemas de atención al cliente');
/*!40000 ALTER TABLE `bajas_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre_Apellido_Denominación` varchar(50) NOT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Agimba','30-26299205-6'),(2,'Aimbo','30-88100694-8'),(3,'Alayne Whitsey','27-16630763-3'),(4,'Alfy Tingcomb','20-37080043-9'),(5,'Andromache Crowne','20-46461059-4'),(6,'Ardella Rummer','20-30504671-3'),(7,'Babbleopia','30-19749874-8'),(8,'Benedicto Wildsmith','20-43805659-7'),(9,'Blogtag','30-25676595-9'),(10,'Blogtags','30-59358294-2'),(11,'Bluezoom','30-6751015-1'),(12,'Brainsphere','30-37126621-9'),(13,'Brendan Gidney','27-21202707-1'),(14,'Caryl Stoyell','27-19619536-9'),(15,'Cogilith','30-39262813-3'),(16,'Corie Comello','20-17305797-1'),(17,'Correna Bertelet','27-34022902-5'),(18,'Demivee','30-73103092-4'),(19,'Donna Ferris','20-18544873-1'),(20,'Dorene Boobier','20-7569886-2'),(21,'Eare','30-25186835-8'),(22,'Elga Wardington','20-18685073-9'),(23,'Erica Reis','27-18343637-3'),(24,'Etienne Winckles','27-57378611-1'),(25,'Fianna Buzin','20-70530990-1'),(26,'Fin Wiersma','27-54464798-5'),(27,'Fitz Byk','27-51032466-0'),(28,'Fiveclub','30-57469603-1'),(29,'Flashdog','30-57126122-0'),(30,'Flossy Miskelly','20-25493637-4'),(31,'Gabvine','30-93332610-9'),(32,'Gabvine','30-70650745-1'),(33,'Garret Weed','20-82904764-5'),(34,'Geba','30-43221688-5'),(35,'Gigazoom','30-60225661-9'),(36,'Gillan Pierri','20-27595022-5'),(37,'Harlin MacIlhargy','27-7539566-4'),(38,'Igor Dines','20-36024319-4'),(39,'Ilario Oppery','27-5344923-4'),(40,'Jamia','30-2145390-2'),(41,'Jaxworks','30-49237898-9'),(42,'Jessie Aykroyd','20-16095304-6'),(43,'Jetwire','30-38578082-9'),(44,'Joel Scullion','27-33543817-5'),(45,'Keely Bowhay','27-9752659-7'),(46,'Kit Thompson','27-34709832-2'),(47,'Kwinu','30-68577400-8'),(48,'Leexo','30-13110155-0'),(49,'Loise Reed','27-14808356-1'),(50,'Malinde Embleton','27-29630445-1'),(51,'Marjorie Trulocke','20-26894316-7'),(52,'Meevee','30-6004376-0'),(53,'Meeveo','30-62381957-0'),(54,'Midel','30-18989421-0'),(55,'Mirella Fumagallo','27-38281236-5'),(56,'Mydeo','30-48174152-5'),(57,'Myworks','30-65502363-6'),(58,'Nick McIntosh','27-59921109-4'),(59,'Ninon Holme','20-72547543-6'),(60,'Norene Pyford','20-37736054-8'),(61,'Ofilia Clingan','20-74911456-0'),(62,'Orren Tupper','20-34823606-5'),(63,'Pasquale Stummeyer','27-36736796-7'),(64,'Peirce Barclay','20-47749107-6'),(65,'Penrod Gleader','27-73602924-3'),(66,'Photojam','30-4407448-7'),(67,'Pixonyx','30-69260634-9'),(68,'Rhyzio','30-46751005-6'),(69,'Sally Rouke','20-12946220-8'),(70,'Sande Antosch','27-422602-6'),(71,'Sebastien Drabble','20-43856874-5'),(72,'Skiba','30-11176337-3'),(73,'Skyble','30-66629602-9'),(74,'Snaptags','30-92837777-7'),(75,'Stern Arthy','20-48662690-1'),(76,'Sylvia Wain','27-35773959-7'),(77,'Tekfly','30-97037994-4'),(78,'Teklist','30-23213554-9'),(79,'Teodorico Hogbourne','20-44430119-5'),(80,'Topdrive','30-89411973-8'),(81,'Topicstorm','30-14708764-0'),(82,'Trudoo','30-80824734-7'),(83,'Truman Warlton','27-36742054-3'),(84,'Twinte','30-40510797-4'),(85,'Twitterbeat','30-73819679-4'),(86,'Twitterwire','30-39803624-8'),(87,'Urbanus Craigg','27-23492847-5'),(88,'Vaclav Cankett','20-33692083-8'),(89,'Vimbo','30-18771964-1'),(90,'Washington Sabater','20-53168889-5'),(91,'Wikivu','30-92925667-8'),(92,'Wordtune','30-40898806-2'),(93,'Yotz','30-14510764-8'),(94,'Youbridge','30-92843347-5'),(95,'Youspan','30-64300273-9'),(96,'Yvonne Patton','27-39107839-2'),(97,'Zoombeat','30-14808738-7'),(98,'Zooveo','30-19748584-6');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientes_con_bajas`
--

DROP TABLE IF EXISTS `clientes_con_bajas`;
/*!50001 DROP VIEW IF EXISTS `clientes_con_bajas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_con_bajas` AS SELECT 
 1 AS `Nombre_Apellido_Denominación`,
 1 AS `cuit`,
 1 AS `descripción_baja`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `comprobantes_tipo`
--

DROP TABLE IF EXISTS `comprobantes_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobantes_tipo` (
  `id_tipo_comprobante` int NOT NULL AUTO_INCREMENT,
  `descripción_tipo_comprobante` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_comprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantes_tipo`
--

LOCK TABLES `comprobantes_tipo` WRITE;
/*!40000 ALTER TABLE `comprobantes_tipo` DISABLE KEYS */;
INSERT INTO `comprobantes_tipo` VALUES (1,'FACTURA A'),(2,'FACTURA B'),(3,'NOTA DE DÉBITO'),(4,'NOTA DE CRÉDITO'),(5,'RECIBO');
/*!40000 ALTER TABLE `comprobantes_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobantes_venta`
--

DROP TABLE IF EXISTS `comprobantes_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobantes_venta` (
  `id_comprobantes_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_tipo_comprobante` int NOT NULL,
  `Nro_comprobante` varchar(20) NOT NULL,
  `importe_comprobante` double NOT NULL,
  `fecha_comprobante_venta` date NOT NULL,
  PRIMARY KEY (`id_comprobantes_venta`),
  KEY `FK_id_cliente_comprobantes` (`id_cliente`),
  KEY `FK_id_tipo_comprobante` (`id_tipo_comprobante`),
  CONSTRAINT `FK_id_cliente_comprobantes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_tipo_comprobante` FOREIGN KEY (`id_tipo_comprobante`) REFERENCES `comprobantes_tipo` (`id_tipo_comprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantes_venta`
--

LOCK TABLES `comprobantes_venta` WRITE;
/*!40000 ALTER TABLE `comprobantes_venta` DISABLE KEYS */;
INSERT INTO `comprobantes_venta` VALUES (314,1,2,'1',3800,'2023-01-15'),(315,1,2,'2',3800,'2023-02-15'),(316,1,2,'3',3800,'2023-03-15'),(317,1,2,'4',3800,'2023-04-15'),(318,2,2,'1',2900,'2023-01-15'),(319,2,2,'2',2900,'2023-02-15'),(320,3,2,'1',5000,'2023-01-15'),(321,3,2,'2',5000,'2023-02-15'),(322,3,2,'3',5000,'2023-03-15'),(323,4,2,'1',2900,'2023-01-15'),(324,4,2,'2',2900,'2023-02-15'),(325,4,2,'3',2900,'2023-03-15'),(326,4,2,'4',2900,'2023-04-15'),(327,5,2,'1',3800,'2023-01-15'),(328,5,2,'2',3800,'2023-02-15'),(329,5,2,'3',3800,'2023-03-15'),(330,5,2,'4',3800,'2023-04-15'),(331,5,2,'5',3800,'2023-05-15'),(332,6,2,'1',3800,'2023-01-15'),(333,7,2,'1',5000,'2023-01-15'),(334,8,2,'1',2900,'2023-01-15'),(335,9,2,'1',3800,'2023-01-15'),(336,10,1,'1',2900,'2023-01-15'),(337,10,1,'2',2900,'2023-02-15'),(338,11,2,'1',3800,'2023-01-15'),(339,11,2,'2',3800,'2023-02-15'),(340,11,2,'3',3800,'2023-03-15'),(341,11,2,'4',3800,'2023-04-15'),(342,12,2,'1',3800,'2023-01-15'),(343,12,2,'2',3800,'2023-02-15'),(344,12,2,'3',3800,'2023-03-15'),(345,12,2,'4',3800,'2023-04-15'),(346,13,2,'1',2900,'2023-01-15'),(347,14,2,'1',3800,'2023-01-15'),(348,14,2,'2',3800,'2023-02-15'),(349,14,2,'3',3800,'2023-03-15'),(350,14,2,'4',3800,'2023-04-15'),(351,15,2,'1',5000,'2023-01-15'),(352,15,2,'2',5000,'2023-02-15'),(353,15,2,'3',5000,'2023-03-15'),(354,16,2,'1',3800,'2023-01-15'),(355,16,2,'2',3800,'2023-02-15'),(356,16,2,'3',3800,'2023-03-15'),(357,17,2,'1',5000,'2023-01-15'),(358,17,2,'2',5000,'2023-02-15'),(359,18,2,'1',3800,'2023-01-15'),(360,18,2,'2',3800,'2023-02-15'),(361,18,2,'3',3800,'2023-03-15'),(362,19,1,'1',3800,'2023-01-15'),(363,19,1,'2',3800,'2023-02-15'),(364,19,1,'3',3800,'2023-03-15'),(365,19,1,'4',3800,'2023-04-15'),(366,19,1,'5',3800,'2023-05-15'),(367,20,2,'1',5000,'2023-01-15'),(368,20,2,'2',5000,'2023-02-15'),(369,21,2,'1',3800,'2023-01-15'),(370,21,2,'2',3800,'2023-02-15'),(371,22,1,'1',2900,'2023-01-15'),(372,22,1,'2',2900,'2023-02-15'),(373,22,1,'3',2900,'2023-03-15'),(374,23,2,'1',2900,'2023-01-15'),(375,23,2,'2',2900,'2023-02-15'),(376,23,2,'3',2900,'2023-03-15'),(377,23,2,'4',2900,'2023-04-15'),(378,24,2,'1',3800,'2023-01-15'),(379,24,2,'2',3800,'2023-02-15'),(380,24,2,'3',3800,'2023-03-15'),(381,25,2,'1',5000,'2023-01-15'),(382,25,2,'2',5000,'2023-02-15'),(383,25,2,'3',5000,'2023-03-15'),(384,25,2,'4',5000,'2023-04-15'),(385,25,2,'5',5000,'2023-05-15'),(386,26,2,'1',5000,'2023-01-15'),(387,26,2,'2',5000,'2023-02-15'),(388,26,2,'3',5000,'2023-03-15'),(389,27,2,'1',3800,'2023-01-15'),(390,28,2,'1',2900,'2023-01-15'),(391,28,2,'2',2900,'2023-02-15'),(392,28,2,'3',2900,'2023-03-15'),(393,28,2,'4',2900,'2023-04-15'),(394,28,2,'5',2900,'2023-05-15'),(395,29,1,'1',5000,'2023-01-15'),(396,29,1,'2',5000,'2023-02-15'),(397,29,1,'3',5000,'2023-03-15'),(398,29,1,'4',5000,'2023-04-15'),(399,30,2,'1',5000,'2023-01-15'),(400,30,2,'2',5000,'2023-02-15'),(401,30,2,'3',5000,'2023-03-15'),(402,30,2,'4',5000,'2023-04-15'),(403,30,2,'5',5000,'2023-05-15'),(404,31,2,'1',3800,'2023-01-15'),(405,31,2,'2',3800,'2023-02-15'),(406,31,2,'3',3800,'2023-03-15'),(407,32,2,'1',5000,'2023-01-15'),(408,32,2,'2',5000,'2023-02-15'),(409,33,2,'1',5000,'2023-01-15'),(410,33,2,'2',5000,'2023-02-15'),(411,33,2,'3',5000,'2023-03-15'),(412,34,2,'1',5000,'2023-01-15'),(413,34,2,'2',5000,'2023-02-15'),(414,34,2,'3',5000,'2023-03-15'),(415,35,2,'1',3800,'2023-01-15'),(416,35,2,'2',3800,'2023-02-15'),(417,35,2,'3',3800,'2023-03-15'),(418,36,2,'1',2900,'2023-01-15'),(419,36,2,'2',2900,'2023-02-15'),(420,37,2,'1',2900,'2023-01-15'),(421,37,2,'2',2900,'2023-02-15'),(422,37,2,'3',2900,'2023-03-15'),(423,37,2,'4',2900,'2023-04-15'),(424,37,2,'5',2900,'2023-05-15'),(425,38,2,'1',3800,'2023-01-15'),(426,38,2,'2',3800,'2023-02-15'),(427,38,2,'3',3800,'2023-03-15'),(428,39,2,'1',2900,'2023-01-15'),(429,40,2,'1',2900,'2023-01-15'),(430,40,2,'2',2900,'2023-02-15'),(431,40,2,'3',2900,'2023-03-15'),(432,41,2,'1',2900,'2023-01-15'),(433,41,2,'2',2900,'2023-02-15'),(434,41,2,'3',2900,'2023-03-15'),(435,42,1,'1',2900,'2023-01-15'),(436,42,1,'2',2900,'2023-02-15'),(437,42,1,'3',2900,'2023-03-15'),(438,43,2,'1',2900,'2023-01-15'),(439,43,2,'2',2900,'2023-02-15'),(440,44,1,'1',5000,'2023-01-15'),(441,44,1,'2',5000,'2023-02-15'),(442,44,1,'3',5000,'2023-03-15'),(443,44,1,'4',5000,'2023-04-15'),(444,45,2,'1',5000,'2023-01-15'),(445,46,2,'1',5000,'2023-01-15'),(446,46,2,'2',5000,'2023-02-15'),(447,46,2,'3',5000,'2023-03-15'),(448,47,2,'1',3800,'2023-01-15'),(449,47,2,'2',3800,'2023-02-15'),(450,47,2,'3',3800,'2023-03-15'),(451,47,2,'4',3800,'2023-04-15'),(452,48,2,'1',5000,'2023-01-15'),(453,48,2,'2',5000,'2023-02-15'),(454,48,2,'3',5000,'2023-03-15'),(455,48,2,'4',5000,'2023-04-15'),(456,48,2,'5',5000,'2023-05-15'),(457,49,2,'1',3800,'2023-01-15'),(458,49,2,'2',3800,'2023-02-15'),(459,49,2,'3',3800,'2023-03-15'),(460,49,2,'4',3800,'2023-04-15'),(461,50,2,'1',2900,'2023-01-15'),(462,51,2,'1',5000,'2023-01-15'),(463,51,2,'2',5000,'2023-02-15'),(464,51,2,'3',5000,'2023-03-15'),(465,51,2,'4',5000,'2023-04-15'),(466,51,2,'5',5000,'2023-05-15'),(467,52,2,'1',3800,'2023-01-15'),(468,53,2,'1',2900,'2023-01-15'),(469,54,1,'1',2900,'2023-01-15'),(470,54,1,'2',2900,'2023-02-15'),(471,54,1,'3',2900,'2023-03-15'),(472,54,1,'4',2900,'2023-04-15'),(473,54,1,'5',2900,'2023-05-15'),(474,55,2,'1',2900,'2023-01-15'),(475,55,2,'2',2900,'2023-02-15'),(476,56,2,'1',5000,'2023-01-15'),(477,56,2,'2',5000,'2023-02-15'),(478,57,2,'1',3800,'2023-01-15'),(479,57,2,'2',3800,'2023-02-15'),(480,57,2,'3',3800,'2023-03-15'),(481,57,2,'4',3800,'2023-04-15'),(482,58,2,'1',5000,'2023-01-15'),(483,58,2,'2',5000,'2023-02-15'),(484,58,2,'3',5000,'2023-03-15'),(485,59,1,'1',2900,'2023-01-15'),(486,60,2,'1',5000,'2023-01-15'),(487,60,2,'2',5000,'2023-02-15'),(488,61,2,'1',5000,'2023-01-15'),(489,61,2,'2',5000,'2023-02-15'),(490,61,2,'3',5000,'2023-03-15'),(491,62,1,'1',5000,'2023-01-15'),(492,63,2,'1',5000,'2023-01-15'),(493,63,2,'2',5000,'2023-02-15'),(494,63,2,'3',5000,'2023-03-15'),(495,63,2,'4',5000,'2023-04-15'),(496,63,2,'5',5000,'2023-05-15'),(497,64,2,'1',3800,'2023-01-15'),(498,64,2,'2',3800,'2023-02-15'),(499,64,2,'3',3800,'2023-03-15'),(500,64,2,'4',3800,'2023-04-15'),(501,64,2,'5',3800,'2023-05-15'),(502,65,1,'1',2900,'2023-01-15'),(503,65,1,'2',2900,'2023-02-15'),(504,65,1,'3',2900,'2023-03-15'),(505,66,2,'1',2900,'2023-01-15'),(506,66,2,'2',2900,'2023-02-15'),(507,67,2,'1',5000,'2023-01-15'),(508,67,2,'2',5000,'2023-02-15'),(509,68,2,'1',2900,'2023-01-15'),(510,68,2,'2',2900,'2023-02-15'),(511,69,2,'1',3800,'2023-01-15'),(512,69,2,'2',3800,'2023-02-15'),(513,69,2,'3',3800,'2023-03-15'),(514,69,2,'4',3800,'2023-04-15'),(515,69,2,'5',3800,'2023-05-15'),(516,70,2,'1',5000,'2023-01-15'),(517,70,2,'2',5000,'2023-02-15'),(518,71,1,'1',2900,'2023-01-15'),(519,71,1,'2',2900,'2023-02-15'),(520,71,1,'3',2900,'2023-03-15'),(521,71,1,'4',2900,'2023-04-15'),(522,71,1,'5',2900,'2023-05-15'),(523,72,1,'1',3800,'2023-01-15'),(524,73,2,'1',5000,'2023-01-15'),(525,73,2,'2',5000,'2023-02-15'),(526,73,2,'3',5000,'2023-03-15'),(527,73,2,'4',5000,'2023-04-15'),(528,73,2,'5',5000,'2023-05-15'),(529,74,2,'1',3800,'2023-01-15'),(530,74,2,'2',3800,'2023-02-15'),(531,75,2,'1',2900,'2023-01-15'),(532,75,2,'2',2900,'2023-02-15'),(533,75,2,'3',2900,'2023-03-15'),(534,75,2,'4',2900,'2023-04-15'),(535,76,2,'1',3800,'2023-01-15'),(536,76,2,'2',3800,'2023-02-15'),(537,77,1,'1',2900,'2023-01-15'),(538,77,1,'2',2900,'2023-02-15'),(539,77,1,'3',2900,'2023-03-15'),(540,78,1,'1',5000,'2023-01-15'),(541,78,1,'2',5000,'2023-02-15'),(542,78,1,'3',5000,'2023-03-15'),(543,79,2,'1',5000,'2023-01-15'),(544,79,2,'2',5000,'2023-02-15'),(545,79,2,'3',5000,'2023-03-15'),(546,80,1,'1',3800,'2023-01-15'),(547,80,1,'2',3800,'2023-02-15'),(548,80,1,'3',3800,'2023-03-15'),(549,81,1,'1',5000,'2023-01-15'),(550,81,1,'2',5000,'2023-02-15'),(551,82,2,'1',2900,'2023-01-15'),(552,82,2,'2',2900,'2023-02-15'),(553,82,2,'3',2900,'2023-03-15'),(554,83,2,'1',3800,'2023-01-15'),(555,83,2,'2',3800,'2023-02-15'),(556,84,2,'1',5000,'2023-01-15'),(557,84,2,'2',5000,'2023-02-15'),(558,84,2,'3',5000,'2023-03-15'),(559,84,2,'4',5000,'2023-04-15'),(560,85,2,'1',2900,'2023-01-15'),(561,85,2,'2',2900,'2023-02-15'),(562,85,2,'3',2900,'2023-03-15'),(563,85,2,'4',2900,'2023-04-15'),(564,85,2,'5',2900,'2023-05-15'),(565,86,2,'1',5000,'2023-01-15'),(566,87,2,'1',5000,'2023-01-15'),(567,87,2,'2',5000,'2023-02-15'),(568,87,2,'3',5000,'2023-03-15'),(569,87,2,'4',5000,'2023-04-15'),(570,87,2,'5',5000,'2023-05-15'),(571,88,2,'1',3800,'2023-01-15'),(572,88,2,'2',3800,'2023-02-15'),(573,88,2,'3',3800,'2023-03-15'),(574,88,2,'4',3800,'2023-04-15'),(575,89,2,'1',2900,'2023-01-15'),(576,89,2,'2',2900,'2023-02-15'),(577,90,2,'1',2900,'2023-01-15'),(578,90,2,'2',2900,'2023-02-15'),(579,91,2,'1',2900,'2023-01-15'),(580,91,2,'2',2900,'2023-02-15'),(581,91,2,'3',2900,'2023-03-15'),(582,91,2,'4',2900,'2023-04-15'),(583,91,2,'5',2900,'2023-05-15'),(584,92,2,'1',2900,'2023-01-15'),(585,92,2,'2',2900,'2023-02-15'),(586,92,2,'3',2900,'2023-03-15'),(587,92,2,'4',2900,'2023-04-15'),(588,93,2,'1',5000,'2023-01-15'),(589,93,2,'2',5000,'2023-02-15'),(590,93,2,'3',5000,'2023-03-15'),(591,93,2,'4',5000,'2023-04-15'),(592,93,2,'5',5000,'2023-05-15'),(593,94,2,'1',2900,'2023-01-15'),(594,94,2,'2',2900,'2023-02-15'),(595,95,1,'1',2900,'2023-01-15'),(596,95,1,'2',2900,'2023-02-15'),(597,95,1,'3',2900,'2023-03-15'),(598,95,1,'4',2900,'2023-04-15'),(599,96,2,'1',5000,'2023-01-15'),(600,96,2,'2',5000,'2023-02-15'),(601,96,2,'3',5000,'2023-03-15'),(602,96,2,'4',5000,'2023-04-15'),(603,97,1,'1',2900,'2023-01-15'),(604,97,1,'2',2900,'2023-02-15'),(605,97,1,'3',2900,'2023-03-15');
/*!40000 ALTER TABLE `comprobantes_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_checknegativos_facturas` BEFORE INSERT ON `comprobantes_venta` FOR EACH ROW BEGIN
	IF 	NEW.id_tipo_comprobante = 1 and NEW.importe_comprobante < 0 THEN
		SET NEW.importe_comprobante = 0;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_facturas` AFTER INSERT ON `comprobantes_venta` FOR EACH ROW BEGIN
INSERT INTO auditoría_facturas (usuario,fecha_aud,hora_aud,id_comprobante_venta)
VALUES (USER(),CURRENT_DATE(),CURRENT_TIME(),NEW.id_comprobantes_venta);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_venta` AFTER INSERT ON `comprobantes_venta` FOR EACH ROW UPDATE cta_cte
SET totaL_facturado= (SELECT SUM(importe_comprobante) FROM comprobantes_venta
WHERE id_cliente=New.id_cliente)
WHERE id_cliente=New.id_cliente */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `concentración_deuda`
--

DROP TABLE IF EXISTS `concentración_deuda`;
/*!50001 DROP VIEW IF EXISTS `concentración_deuda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `concentración_deuda` AS SELECT 
 1 AS `adeuda_cliente`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contratos_concentración`
--

DROP TABLE IF EXISTS `contratos_concentración`;
/*!50001 DROP VIEW IF EXISTS `contratos_concentración`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contratos_concentración` AS SELECT 
 1 AS `descripción`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cta_cte`
--

DROP TABLE IF EXISTS `cta_cte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cta_cte` (
  `id_cta_cte` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `totaL_facturado` double NOT NULL,
  `totaL_pagado` double NOT NULL,
  `total_saldo` double DEFAULT NULL,
  `adeuda` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_cta_cte`),
  KEY `FK_id_cliente_ctacte` (`id_cliente`),
  CONSTRAINT `FK_id_cliente_ctacte` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta_cte`
--

LOCK TABLES `cta_cte` WRITE;
/*!40000 ALTER TABLE `cta_cte` DISABLE KEYS */;
INSERT INTO `cta_cte` VALUES (1,1,15200,11400,3800,'Si'),(2,2,5800,5800,0,'No'),(3,3,15000,15000,0,'No'),(4,4,11600,8700,2900,'Si'),(5,5,19000,11400,7600,'Si'),(6,6,3800,3800,0,'No'),(7,7,5000,5000,0,'No'),(8,8,2900,2900,0,'No'),(9,9,3800,3800,0,'No'),(10,10,5800,5800,0,'No'),(11,11,15200,11400,3800,'Si'),(12,12,15200,11400,3800,'Si'),(13,13,2900,2900,0,'No'),(14,14,15200,3800,11400,'Si'),(15,15,15000,15000,0,'No'),(16,16,11400,11400,0,'No'),(17,17,10000,10000,0,'No'),(18,18,11400,11400,0,'No'),(19,19,19000,11400,7600,'Si'),(20,20,10000,10000,0,'No'),(21,21,7600,7600,0,'No'),(22,22,8700,8700,0,'No'),(23,23,11600,8700,2900,'Si'),(24,24,11400,11400,0,'No'),(25,25,25000,10000,15000,'Si'),(26,26,15000,15000,0,'No'),(27,27,3800,3800,0,'No'),(28,28,14500,8700,5800,'Si'),(29,29,20000,15000,5000,'Si'),(30,30,25000,15000,10000,'Si'),(31,31,11400,11400,0,'No'),(32,32,10000,10000,0,'No'),(33,33,15000,10000,5000,'Si'),(34,34,15000,10000,5000,'Si'),(35,35,11400,11400,0,'No'),(36,36,5800,5800,0,'No'),(37,37,14500,14500,0,'No'),(38,38,11400,11400,0,'No'),(39,39,2900,2900,0,'No'),(40,40,8700,8700,0,'No'),(41,41,8700,8700,0,'No'),(42,42,8700,8700,0,'No'),(43,43,5800,5800,0,'No'),(44,44,20000,20000,0,'No'),(45,45,5000,5000,0,'No'),(46,46,15000,15000,0,'No'),(47,47,15200,11400,3800,'Si'),(48,48,25000,25000,0,'No'),(49,49,15200,11400,3800,'Si'),(50,50,2900,2900,0,'No'),(51,51,25000,10000,15000,'Si'),(52,52,3800,3800,0,'No'),(53,53,2900,2900,0,'No'),(54,54,14500,8700,5800,'Si'),(55,55,5800,5800,0,'No'),(56,56,10000,10000,0,'No'),(57,57,15200,3800,11400,'Si'),(58,58,15000,15000,0,'No'),(59,59,2900,2900,0,'No'),(60,60,10000,10000,0,'No'),(61,61,15000,15000,0,'No'),(62,62,5000,5000,0,'No'),(63,63,25000,10000,15000,'Si'),(64,64,19000,19000,0,'No'),(65,65,8700,8700,0,'No'),(66,66,5800,5800,0,'No'),(67,67,10000,10000,0,'No'),(68,68,5800,5800,0,'No'),(69,69,19000,11400,7600,'Si'),(70,70,10000,10000,0,'No'),(71,71,14500,14500,0,'No'),(72,72,3800,3800,0,'No'),(73,73,25000,25000,0,'No'),(74,74,7600,7600,0,'No'),(75,75,11600,5800,5800,'Si'),(76,76,7600,7600,0,'No'),(77,77,8700,8700,0,'No'),(78,78,15000,15000,0,'No'),(79,79,15000,15000,0,'No'),(80,80,11400,11400,0,'No'),(81,81,10000,10000,0,'No'),(82,82,8700,8700,0,'No'),(83,83,7600,7600,0,'No'),(84,84,20000,5000,15000,'Si'),(85,85,14500,0,14500,'Si'),(86,86,5000,5000,0,'No'),(87,87,25000,25000,0,'No'),(88,88,15200,11400,3800,'Si'),(89,89,5800,5800,0,'No'),(90,90,5800,5800,0,'No'),(91,91,14500,14500,0,'No'),(92,92,11600,8700,2900,'Si'),(93,93,25000,25000,0,'No'),(94,94,5800,5800,0,'No'),(95,95,11600,8700,2900,'Si'),(96,96,20000,15000,5000,'Si'),(97,97,8700,5800,2900,'Si'),(98,98,0,0,0,'No');
/*!40000 ALTER TABLE `cta_cte` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_estado` AFTER UPDATE ON `cta_cte` FOR EACH ROW BEGIN
    IF NEW.adeuda = "Si" THEN
		UPDATE estado_cliente
		SET adeuda_cliente  = 'Si',saldo_ctacte = New.total_saldo
		WHERE id_cliente = New.id_cliente;
	ELSE
		IF NEW.adeuda = "No" THEN
        UPDATE estado_cliente
		SET adeuda_cliente  = 'No', saldo_ctacte = New.total_saldo
		WHERE id_cliente = New.id_cliente;
        END IF;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `encuesta_tipos`
--

DROP TABLE IF EXISTS `encuesta_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuesta_tipos` (
  `id_calificación` int NOT NULL AUTO_INCREMENT,
  `descripción_tipo_encuesta` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_calificación`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_tipos`
--

LOCK TABLES `encuesta_tipos` WRITE;
/*!40000 ALTER TABLE `encuesta_tipos` DISABLE KEYS */;
INSERT INTO `encuesta_tipos` VALUES (1,'Pesima'),(2,'Intermedia.'),(3,'Normal.'),(4,'Buena.'),(5,'Excelente.');
/*!40000 ALTER TABLE `encuesta_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_cliente`
--

DROP TABLE IF EXISTS `estado_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_cliente` (
  `id_status_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `estado_cliente` varchar(10) NOT NULL,
  `id_servicios` int DEFAULT NULL,
  `adeuda_cliente` varchar(2) DEFAULT NULL,
  `saldo_ctacte` double NOT NULL,
  PRIMARY KEY (`id_status_cliente`),
  KEY `FK_id_cliente_estado` (`id_cliente`),
  KEY `FK_id_servicios` (`id_servicios`),
  CONSTRAINT `FK_id_cliente_estado` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_servicios` FOREIGN KEY (`id_servicios`) REFERENCES `servicios_contratables` (`id_servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_cliente`
--

LOCK TABLES `estado_cliente` WRITE;
/*!40000 ALTER TABLE `estado_cliente` DISABLE KEYS */;
INSERT INTO `estado_cliente` VALUES (1,1,'Activo',2,'Si',3800),(2,2,'Activo',3,'No',0),(3,3,'Activo',1,'No',0),(4,4,'Activo',3,'Si',2900),(5,5,'Activo',2,'Si',7600),(6,6,'Activo',2,'No',0),(7,7,'Activo',1,'No',0),(8,8,'Activo',3,'No',0),(9,9,'Activo',2,'No',0),(10,10,'Activo',3,'No',0),(11,11,'No Activo',2,'Si',3800),(12,12,'Activo',2,'Si',3800),(13,13,'Activo',3,'No',0),(14,14,'Activo',2,'Si',11400),(15,15,'Activo',1,'No',0),(16,16,'Activo',2,'No',0),(17,17,'Activo',1,'No',0),(18,18,'No Activo',2,'No',0),(19,19,'Activo',2,'Si',7600),(20,20,'No Activo',1,'No',0),(21,21,'Activo',2,'No',0),(22,22,'Activo',3,'No',0),(23,23,'Activo',3,'Si',2900),(24,24,'Activo',2,'No',0),(25,25,'Activo',1,'Si',15000),(26,26,'Activo',1,'No',0),(27,27,'Activo',2,'No',0),(28,28,'Activo',3,'Si',5800),(29,29,'Activo',1,'Si',5000),(30,30,'Activo',1,'Si',10000),(31,31,'Activo',2,'No',0),(32,32,'Activo',1,'No',0),(33,33,'Activo',1,'Si',5000),(34,34,'Activo',1,'Si',5000),(35,35,'Activo',2,'No',0),(36,36,'Activo',3,'No',0),(37,37,'Activo',3,'No',0),(38,38,'No Activo',2,'No',0),(39,39,'Activo',3,'No',0),(40,40,'Activo',3,'No',0),(41,41,'Activo',3,'No',0),(42,42,'Activo',3,'No',0),(43,43,'Activo',3,'No',0),(44,44,'Activo',1,'No',0),(45,45,'Activo',1,'No',0),(46,46,'No Activo',1,'No',0),(47,47,'Activo',2,'Si',3800),(48,48,'Activo',1,'No',0),(49,49,'Activo',2,'Si',3800),(50,50,'No Activo',3,'No',0),(51,51,'Activo',1,'Si',15000),(52,52,'Activo',2,'No',0),(53,53,'Activo',3,'No',0),(54,54,'Activo',3,'Si',5800),(55,55,'Activo',3,'No',0),(56,56,'Activo',1,'No',0),(57,57,'Activo',2,'Si',11400),(58,58,'Activo',1,'No',0),(59,59,'Activo',3,'No',0),(60,60,'Activo',1,'No',0),(61,61,'Activo',1,'No',0),(62,62,'Activo',1,'No',0),(63,63,'Activo',1,'Si',15000),(64,64,'Activo',2,'No',0),(65,65,'Activo',3,'No',0),(66,66,'Activo',3,'No',0),(67,67,'Activo',1,'No',0),(68,68,'Activo',3,'No',0),(69,69,'Activo',2,'Si',7600),(70,70,'Activo',1,'No',0),(71,71,'Activo',3,'No',0),(72,72,'Activo',2,'No',0),(73,73,'Activo',1,'No',0),(74,74,'Activo',2,'No',0),(75,75,'No Activo',3,'Si',5800),(76,76,'Activo',2,'No',0),(77,77,'Activo',3,'No',0),(78,78,'Activo',1,'No',0),(79,79,'Activo',1,'No',0),(80,80,'Activo',2,'No',0),(81,81,'No Activo',1,'No',0),(82,82,'Activo',3,'No',0),(83,83,'Activo',2,'No',0),(84,84,'Activo',1,'Si',15000),(85,85,'Activo',3,'Si',14500),(86,86,'Activo',1,'No',0),(87,87,'Activo',1,'No',0),(88,88,'Activo',2,'Si',3800),(89,89,'No Activo',3,'No',0),(90,90,'Activo',3,'No',0),(91,91,'Activo',3,'No',0),(92,92,'Activo',3,'Si',2900),(93,93,'Activo',1,'No',0),(94,94,'Activo',3,'No',0),(95,95,'Activo',3,'Si',2900),(96,96,'Activo',1,'Si',5000),(97,97,'Activo',3,'Si',2900),(98,98,'Activo',2,'No',0);
/*!40000 ALTER TABLE `estado_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_clientes`
--

DROP TABLE IF EXISTS `ficha_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha_clientes` (
  `id_ficha_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `cuit` varchar(13) NOT NULL,
  `domicilio_cliente` varchar(70) DEFAULT NULL,
  `id_tipo_fiscal` int NOT NULL,
  `contacto_cliente` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_ficha_cliente`,`cuit`),
  KEY `FK_id_cliente` (`id_cliente`),
  KEY `FK_tipo_fiscal` (`id_tipo_fiscal`),
  CONSTRAINT `FK_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_tipo_fiscal` FOREIGN KEY (`id_tipo_fiscal`) REFERENCES `tipo_fiscal` (`id_tipo_fiscal`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_clientes`
--

LOCK TABLES `ficha_clientes` WRITE;
/*!40000 ALTER TABLE `ficha_clientes` DISABLE KEYS */;
INSERT INTO `ficha_clientes` VALUES (1,1,'30-26299205-6','25 Dunning Crossing',3,'221-361221'),(2,2,'30-88100694-8','0728 Vera Junction',4,'221-104095'),(3,3,'27-16630763-3','8 Brown Lane',3,'221-597707'),(4,4,'20-37080043-9','5 Mallory Terrace',2,'221-850020'),(5,5,'20-46461059-4','57536 Vernon Lane',4,'221-239048'),(6,6,'20-30504671-3','98 Pleasure Avenue',2,'221-509292'),(7,7,'30-19749874-8','05 3rd Trail',3,'221-592096'),(8,8,'20-43805659-7','47885 Kedzie Circle',2,'221-269484'),(9,9,'30-25676595-9','9 Melby Point',2,'221-961099'),(10,10,'30-59358294-2','6 Waxwing Road',1,'221-224971'),(11,11,'30-6751015-1','8292 Manitowish Crossing',3,'221-514918'),(12,12,'30-37126621-9','462 Grim Circle',2,'221-001898'),(13,13,'27-21202707-1','6205 Hauk Junction',2,'221-984115'),(14,14,'27-19619536-9','845 Carpenter Circle',2,'221-087640'),(15,15,'30-39262813-3','6051 Sachs Center',4,'221-830319'),(16,16,'20-17305797-1','8 Northview Lane',3,'221-992129'),(17,17,'27-34022902-5','1 Reinke Drive',2,'221-226835'),(18,18,'30-73103092-4','5 Pepper Wood Street',2,'221-096675'),(19,19,'20-18544873-1','0 Dawn Center',1,'221-443708'),(20,20,'20-7569886-2','237 Kennedy Terrace',2,'221-305259'),(21,21,'30-25186835-8','394 Park Meadow Circle',3,'221-826569'),(22,22,'20-18685073-9','8869 Vernon Street',1,'221-917516'),(23,23,'27-18343637-3','010 Schurz Junction',4,'221-096751'),(24,24,'27-57378611-1','2 Bartelt Center',3,'221-464548'),(25,25,'20-70530990-1','7 Blackbird Lane',4,'221-053829'),(26,26,'27-54464798-5','94 Hooker Alley',4,'221-196928'),(27,27,'27-51032466-0','74 Butternut Park',2,'221-367560'),(28,28,'30-57469603-1','9 Nelson Plaza',4,'221-886425'),(29,29,'30-57126122-0','08 Pawling Road',1,'221-445121'),(30,30,'20-25493637-4','5 Gale Crossing',4,'221-235209'),(31,31,'30-93332610-9','7427 Summit Plaza',3,'221-549790'),(32,32,'30-70650745-1','561 Towne Alley',4,'221-414831'),(33,33,'20-82904764-5','48549 Paget Place',4,'221-248020'),(34,34,'30-43221688-5','32 Myrtle Alley',4,'221-854604'),(35,35,'30-60225661-9','6 Pearson Street',4,'221-052727'),(36,36,'20-27595022-5','4 Summerview Court',2,'221-128082'),(37,37,'27-7539566-4','298 Cordelia Junction',4,'221-193436'),(38,38,'20-36024319-4','87 Bobwhite Court',2,'221-904013'),(39,39,'27-5344923-4','94533 Sloan Hill',4,'221-476065'),(40,40,'30-2145390-2','85449 Lerdahl Drive',3,'221-015615'),(41,41,'30-49237898-9','8780 Donald Alley',4,'221-732298'),(42,42,'20-16095304-6','888 Center Street',1,'221-409968'),(43,43,'30-38578082-9','33 Weeping Birch Place',3,'221-094454'),(44,44,'27-33543817-5','34746 Brown Alley',1,'221-319592'),(45,45,'27-9752659-7','01171 Center Circle',2,'221-799674'),(46,46,'27-34709832-2','1580 Waywood Place',3,'221-575555'),(47,47,'30-68577400-8','3 Hoffman Alley',3,'221-523819'),(48,48,'30-13110155-0','460 Del Mar Road',3,'221-235587'),(49,49,'27-14808356-1','74390 Pond Hill',2,'221-575542'),(50,50,'27-29630445-1','78 Heffernan Road',3,'221-967964'),(51,51,'20-26894316-7','03 Farragut Pass',2,'221-150773'),(52,52,'30-6004376-0','1433 Golden Leaf Junction',4,'221-826463'),(53,53,'30-62381957-0','0 Granby Way',4,'221-323646'),(54,54,'30-18989421-0','27 Becker Circle',1,'221-913281'),(55,55,'27-38281236-5','8 Anthes Avenue',4,'221-922560'),(56,56,'30-48174152-5','40093 American Parkway',4,'221-688998'),(57,57,'30-65502363-6','7077 Miller Court',4,'221-533139'),(58,58,'27-59921109-4','15 Russell Center',3,'221-206864'),(59,59,'20-72547543-6','6504 Bultman Crossing',1,'221-958038'),(60,60,'20-37736054-8','5 Clyde Gallagher Avenue',3,'221-773024'),(61,61,'20-74911456-0','93993 Meadow Vale Circle',2,'221-899014'),(62,62,'20-34823606-5','1 Aberg Drive',1,'221-906318'),(63,63,'27-36736796-7','8 2nd Terrace',3,'221-729464'),(64,64,'20-47749107-6','896 Knutson Parkway',3,'221-643608'),(65,65,'27-73602924-3','54061 Tomscot Hill',1,'221-227996'),(66,66,'30-4407448-7','22 Crownhardt Road',2,'221-014322'),(67,67,'30-69260634-9','837 Beilfuss Court',3,'221-043961'),(68,68,'30-46751005-6','70 Oakridge Circle',3,'221-488325'),(69,69,'20-12946220-8','423 Ronald Regan Center',3,'221-843407'),(70,70,'27-422602-6','5477 Birchwood Parkway',3,'221-608419'),(71,71,'20-43856874-5','126 Lyons Terrace',1,'221-681895'),(72,72,'30-11176337-3','7 Meadow Ridge Street',1,'221-295587'),(73,73,'30-66629602-9','3 1st Drive',4,'221-121077'),(74,74,'30-92837777-7','0 Di Loreto Circle',2,'221-258752'),(75,75,'20-48662690-1','4 Muir Trail',2,'221-227644'),(76,76,'27-35773959-7','7373 Moose Hill',3,'221-560355'),(77,77,'30-97037994-4','0366 Basil Road',1,'221-940528'),(78,78,'30-23213554-9','5203 Katie Junction',1,'221-535475'),(79,79,'20-44430119-5','54 Welch Center',4,'221-221325'),(80,80,'30-89411973-8','2064 Havey Parkway',1,'221-230078'),(81,81,'30-14708764-0','0824 High Crossing Terrace',1,'221-270902'),(82,82,'30-80824734-7','4056 Loeprich Alley',3,'221-613340'),(83,83,'27-36742054-3','87238 1st Drive',3,'221-439959'),(84,84,'30-40510797-4','43131 Lukken Alley',4,'221-258810'),(85,85,'30-73819679-4','2 Gale Junction',2,'221-453081'),(86,86,'30-39803624-8','01 Marcy Avenue',3,'221-712884'),(87,87,'27-23492847-5','52854 Cascade Lane',3,'221-595034'),(88,88,'20-33692083-8','122 Petterle Drive',4,'221-323547'),(89,89,'30-18771964-1','7 Anzinger Junction',2,'221-172992'),(90,90,'20-53168889-5','1483 Starling Junction',4,'221-318692'),(91,91,'30-92925667-8','6 Toban Pass',4,'221-448910'),(92,92,'30-40898806-2','34410 Lakewood Terrace',3,'221-918778'),(93,93,'30-14510764-8','3113 Clemons Terrace',3,'221-070040'),(94,94,'30-92843347-5','1326 Dahle Crossing',4,'221-912977'),(95,95,'30-64300273-9','7449 Burning Wood Pass',1,'221-795080'),(96,96,'27-39107839-2','565 Stuart Way',3,'221-535329'),(97,97,'30-14808738-7','268 Stoughton Crossing',1,'221-414818'),(98,98,'30-19748584-6','910 Hoepker Center',1,'221-189502');
/*!40000 ALTER TABLE `ficha_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_comprobantes_pago` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_tipo_pago` int NOT NULL,
  `id_tipo_comprobante` int NOT NULL,
  `Nro_comprobante` varchar(20) NOT NULL,
  `importe_pago` double NOT NULL,
  `fecha_comprobante` date NOT NULL,
  PRIMARY KEY (`id_comprobantes_pago`),
  KEY `FK_id_cliente_pagos` (`id_cliente`),
  KEY `FK_id_tipo_comprobantepago` (`id_tipo_comprobante`),
  KEY `FK_id_tipo_pago` (`id_tipo_pago`),
  CONSTRAINT `FK_id_cliente_pagos` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_tipo_comprobantepago` FOREIGN KEY (`id_tipo_comprobante`) REFERENCES `comprobantes_tipo` (`id_tipo_comprobante`),
  CONSTRAINT `FK_id_tipo_pago` FOREIGN KEY (`id_tipo_pago`) REFERENCES `pagos_tipo` (`id_tipo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (8,1,1,5,'1',3800,'2023-06-18'),(9,1,1,5,'2',3800,'2023-06-18'),(10,1,1,5,'3',3800,'2023-06-18'),(11,2,1,5,'1',2900,'2023-06-18'),(12,2,3,5,'2',2900,'2023-06-18'),(13,3,3,5,'1',5000,'2023-06-18'),(14,3,3,5,'2',5000,'2023-06-18'),(15,3,3,5,'3',5000,'2023-06-18'),(16,4,2,5,'1',2900,'2023-06-18'),(17,4,1,5,'2',2900,'2023-06-18'),(18,4,1,5,'3',2900,'2023-06-18'),(19,5,1,5,'1',3800,'2023-06-18'),(20,5,2,5,'2',3800,'2023-06-18'),(21,5,3,5,'3',3800,'2023-06-18'),(22,6,3,5,'1',3800,'2023-06-18'),(23,7,1,5,'1',5000,'2023-06-18'),(24,8,2,5,'1',2900,'2023-06-18'),(25,9,1,5,'1',3800,'2023-06-18'),(26,10,1,5,'1',2900,'2023-06-18'),(27,10,2,5,'2',2900,'2023-06-18'),(28,11,2,5,'1',3800,'2023-06-18'),(29,11,1,5,'2',3800,'2023-06-18'),(30,11,3,5,'3',3800,'2023-06-18'),(31,12,2,5,'1',3800,'2023-06-18'),(32,12,1,5,'2',3800,'2023-06-18'),(33,12,3,5,'3',3800,'2023-06-18'),(34,13,1,5,'1',2900,'2023-06-18'),(35,14,3,5,'1',3800,'2023-06-18'),(36,15,2,5,'1',5000,'2023-06-18'),(37,15,3,5,'2',5000,'2023-06-18'),(38,15,1,5,'3',5000,'2023-06-18'),(39,16,2,5,'1',3800,'2023-06-18'),(40,16,1,5,'2',3800,'2023-06-18'),(41,16,2,5,'3',3800,'2023-06-18'),(42,17,3,5,'1',5000,'2023-06-18'),(43,17,3,5,'2',5000,'2023-06-18'),(44,18,1,5,'1',3800,'2023-06-18'),(45,18,1,5,'2',3800,'2023-06-18'),(46,18,1,5,'3',3800,'2023-06-18'),(47,19,3,5,'1',3800,'2023-06-18'),(48,19,2,5,'2',3800,'2023-06-18'),(49,19,3,5,'3',3800,'2023-06-18'),(50,20,3,5,'1',5000,'2023-06-18'),(51,20,3,5,'2',5000,'2023-06-18'),(52,21,2,5,'1',3800,'2023-06-18'),(53,21,3,5,'2',3800,'2023-06-18'),(54,22,1,5,'1',2900,'2023-06-18'),(55,22,1,5,'2',2900,'2023-06-18'),(56,22,1,5,'3',2900,'2023-06-18'),(57,23,2,5,'1',2900,'2023-06-18'),(58,23,2,5,'2',2900,'2023-06-18'),(59,23,3,5,'3',2900,'2023-06-18'),(60,24,1,5,'1',3800,'2023-06-18'),(61,24,2,5,'2',3800,'2023-06-18'),(62,24,2,5,'3',3800,'2023-06-18'),(63,25,1,5,'1',5000,'2023-06-18'),(64,25,1,5,'2',5000,'2023-06-18'),(65,26,3,5,'1',5000,'2023-06-18'),(66,26,1,5,'2',5000,'2023-06-18'),(67,26,3,5,'3',5000,'2023-06-18'),(68,27,3,5,'1',3800,'2023-06-18'),(69,28,2,5,'1',2900,'2023-06-18'),(70,28,1,5,'2',2900,'2023-06-18'),(71,28,2,5,'3',2900,'2023-06-18'),(72,29,1,5,'1',5000,'2023-06-18'),(73,29,3,5,'2',5000,'2023-06-18'),(74,29,1,5,'3',5000,'2023-06-18'),(75,30,1,5,'1',5000,'2023-06-18'),(76,30,1,5,'2',5000,'2023-06-18'),(77,30,3,5,'3',5000,'2023-06-18'),(78,31,2,5,'1',3800,'2023-06-18'),(79,31,3,5,'2',3800,'2023-06-18'),(80,31,1,5,'3',3800,'2023-06-18'),(81,32,3,5,'1',5000,'2023-06-18'),(82,32,3,5,'2',5000,'2023-06-18'),(83,33,2,5,'1',5000,'2023-06-18'),(84,33,3,5,'2',5000,'2023-06-18'),(85,34,3,5,'1',5000,'2023-06-18'),(86,34,2,5,'2',5000,'2023-06-18'),(87,35,3,5,'1',3800,'2023-06-18'),(88,35,1,5,'2',3800,'2023-06-18'),(89,35,3,5,'3',3800,'2023-06-18'),(90,36,2,5,'1',2900,'2023-06-18'),(91,36,2,5,'2',2900,'2023-06-18'),(92,37,1,5,'1',2900,'2023-06-18'),(93,37,2,5,'2',2900,'2023-06-18'),(94,37,1,5,'3',2900,'2023-06-18'),(95,37,1,5,'4',2900,'2023-06-18'),(96,37,1,5,'5',2900,'2023-06-18'),(97,38,3,5,'1',3800,'2023-06-18'),(98,38,1,5,'2',3800,'2023-06-18'),(99,38,2,5,'3',3800,'2023-06-18'),(100,39,1,5,'1',2900,'2023-06-18'),(101,40,2,5,'1',2900,'2023-06-18'),(102,40,1,5,'2',2900,'2023-06-18'),(103,40,1,5,'3',2900,'2023-06-18'),(104,41,1,5,'1',2900,'2023-06-18'),(105,41,3,5,'2',2900,'2023-06-18'),(106,41,1,5,'3',2900,'2023-06-18'),(107,42,3,5,'1',2900,'2023-06-18'),(108,42,1,5,'2',2900,'2023-06-18'),(109,42,3,5,'3',2900,'2023-06-18'),(110,43,1,5,'1',2900,'2023-06-18'),(111,43,2,5,'2',2900,'2023-06-18'),(112,44,1,5,'1',5000,'2023-06-18'),(113,44,1,5,'2',5000,'2023-06-18'),(114,44,3,5,'3',5000,'2023-06-18'),(115,44,3,5,'4',5000,'2023-06-18'),(116,45,3,5,'1',5000,'2023-06-18'),(117,46,2,5,'1',5000,'2023-06-18'),(118,46,2,5,'2',5000,'2023-06-18'),(119,46,3,5,'3',5000,'2023-06-18'),(120,47,3,5,'1',3800,'2023-06-18'),(121,47,1,5,'2',3800,'2023-06-18'),(122,47,1,5,'3',3800,'2023-06-18'),(123,48,3,5,'1',5000,'2023-06-18'),(124,48,1,5,'2',5000,'2023-06-18'),(125,48,2,5,'3',5000,'2023-06-18'),(126,48,2,5,'4',5000,'2023-06-18'),(127,48,3,5,'5',5000,'2023-06-18'),(128,49,2,5,'1',3800,'2023-06-18'),(129,49,3,5,'2',3800,'2023-06-18'),(130,49,3,5,'3',3800,'2023-06-18'),(131,50,3,5,'1',2900,'2023-06-18'),(132,51,1,5,'1',5000,'2023-06-18'),(133,51,3,5,'2',5000,'2023-06-18'),(134,52,3,5,'1',3800,'2023-06-18'),(135,53,3,5,'1',2900,'2023-06-18'),(136,54,2,5,'1',2900,'2023-06-18'),(137,54,3,5,'2',2900,'2023-06-18'),(138,54,2,5,'3',2900,'2023-06-18'),(139,55,1,5,'1',2900,'2023-06-18'),(140,55,1,5,'2',2900,'2023-06-18'),(141,56,3,5,'1',5000,'2023-06-18'),(142,56,3,5,'2',5000,'2023-06-18'),(143,57,3,5,'1',3800,'2023-06-18'),(144,58,2,5,'1',5000,'2023-06-18'),(145,58,1,5,'2',5000,'2023-06-18'),(146,58,1,5,'3',5000,'2023-06-18'),(147,59,1,5,'1',2900,'2023-06-18'),(148,60,2,5,'1',5000,'2023-06-18'),(149,60,1,5,'2',5000,'2023-06-18'),(150,61,2,5,'1',5000,'2023-06-18'),(151,61,3,5,'2',5000,'2023-06-18'),(152,61,3,5,'3',5000,'2023-06-18'),(153,62,2,5,'1',5000,'2023-06-18'),(154,63,1,5,'1',5000,'2023-06-18'),(155,63,3,5,'2',5000,'2023-06-18'),(156,64,3,5,'1',3800,'2023-06-18'),(157,64,2,5,'2',3800,'2023-06-18'),(158,64,3,5,'3',3800,'2023-06-18'),(159,64,3,5,'4',3800,'2023-06-18'),(160,64,3,5,'5',3800,'2023-06-18'),(161,65,2,5,'1',2900,'2023-06-18'),(162,65,1,5,'2',2900,'2023-06-18'),(163,65,3,5,'3',2900,'2023-06-18'),(164,66,2,5,'1',2900,'2023-06-18'),(165,66,3,5,'2',2900,'2023-06-18'),(166,67,1,5,'1',5000,'2023-06-18'),(167,67,3,5,'2',5000,'2023-06-18'),(168,68,3,5,'1',2900,'2023-06-18'),(169,68,1,5,'2',2900,'2023-06-18'),(170,69,3,5,'1',3800,'2023-06-18'),(171,69,2,5,'2',3800,'2023-06-18'),(172,69,2,5,'3',3800,'2023-06-18'),(173,70,3,5,'1',5000,'2023-06-18'),(174,70,2,5,'2',5000,'2023-06-18'),(175,71,1,5,'1',2900,'2023-06-18'),(176,71,2,5,'2',2900,'2023-06-18'),(177,71,3,5,'3',2900,'2023-06-18'),(178,71,3,5,'4',2900,'2023-06-18'),(179,71,3,5,'5',2900,'2023-06-18'),(180,72,3,5,'1',3800,'2023-06-18'),(181,73,2,5,'1',5000,'2023-06-18'),(182,73,2,5,'2',5000,'2023-06-18'),(183,73,1,5,'3',5000,'2023-06-18'),(184,73,1,5,'4',5000,'2023-06-18'),(185,73,2,5,'5',5000,'2023-06-18'),(186,74,1,5,'1',3800,'2023-06-18'),(187,74,3,5,'2',3800,'2023-06-18'),(188,75,1,5,'1',2900,'2023-06-18'),(189,75,1,5,'2',2900,'2023-06-18'),(190,76,1,5,'1',3800,'2023-06-18'),(191,76,2,5,'2',3800,'2023-06-18'),(192,77,1,5,'1',2900,'2023-06-18'),(193,77,2,5,'2',2900,'2023-06-18'),(194,77,1,5,'3',2900,'2023-06-18'),(195,78,1,5,'1',5000,'2023-06-18'),(196,78,1,5,'2',5000,'2023-06-18'),(197,78,1,5,'3',5000,'2023-06-18'),(198,79,2,5,'1',5000,'2023-06-18'),(199,79,3,5,'2',5000,'2023-06-18'),(200,79,2,5,'3',5000,'2023-06-18'),(201,80,1,5,'1',3800,'2023-06-18'),(202,80,1,5,'2',3800,'2023-06-18'),(203,80,2,5,'3',3800,'2023-06-18'),(204,81,3,5,'1',5000,'2023-06-18'),(205,81,3,5,'2',5000,'2023-06-18'),(206,82,1,5,'1',2900,'2023-06-18'),(207,82,3,5,'2',2900,'2023-06-18'),(208,82,2,5,'3',2900,'2023-06-18'),(209,83,2,5,'1',3800,'2023-06-18'),(210,83,2,5,'2',3800,'2023-06-18'),(211,84,1,5,'1',5000,'2023-06-18'),(212,86,2,5,'1',5000,'2023-06-18'),(213,87,1,5,'1',5000,'2023-06-18'),(214,87,2,5,'2',5000,'2023-06-18'),(215,87,1,5,'3',5000,'2023-06-18'),(216,87,1,5,'4',5000,'2023-06-18'),(217,87,3,5,'5',5000,'2023-06-18'),(218,88,3,5,'1',3800,'2023-06-18'),(219,88,1,5,'2',3800,'2023-06-18'),(220,88,2,5,'3',3800,'2023-06-18'),(221,89,2,5,'1',2900,'2023-06-18'),(222,89,1,5,'2',2900,'2023-06-18'),(223,90,2,5,'1',2900,'2023-06-18'),(224,90,3,5,'2',2900,'2023-06-18'),(225,91,1,5,'1',2900,'2023-06-18'),(226,91,3,5,'2',2900,'2023-06-18'),(227,91,3,5,'3',2900,'2023-06-18'),(228,91,3,5,'4',2900,'2023-06-18'),(229,91,1,5,'5',2900,'2023-06-18'),(230,92,3,5,'1',2900,'2023-06-18'),(231,92,3,5,'2',2900,'2023-06-18'),(232,92,1,5,'3',2900,'2023-06-18'),(233,93,2,5,'1',5000,'2023-06-18'),(234,93,2,5,'2',5000,'2023-06-18'),(235,93,3,5,'3',5000,'2023-06-18'),(236,93,3,5,'4',5000,'2023-06-18'),(237,93,1,5,'5',5000,'2023-06-18'),(238,94,2,5,'1',2900,'2023-06-18'),(239,94,1,5,'2',2900,'2023-06-18'),(240,95,3,5,'1',2900,'2023-06-18'),(241,95,1,5,'2',2900,'2023-06-18'),(242,95,1,5,'3',2900,'2023-06-18'),(243,96,1,5,'1',5000,'2023-06-18'),(244,96,3,5,'2',5000,'2023-06-18'),(245,96,1,5,'3',5000,'2023-06-18'),(246,97,2,5,'1',2900,'2023-06-18'),(247,97,1,5,'2',2900,'2023-06-18');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_pago` AFTER INSERT ON `pagos` FOR EACH ROW UPDATE cta_cte
SET totaL_pagado= (SELECT SUM(importe_pago) FROM pagos
WHERE id_cliente=New.id_cliente)
WHERE id_cliente=New.id_cliente */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_pagos` AFTER INSERT ON `pagos` FOR EACH ROW INSERT INTO auditoría_pagos (usuario,fecha_aud,hora_aud,id_comprobante_pago)
VALUES (USER(),CURRENT_DATE(),CURRENT_TIME(),NEW.id_comprobantes_pago) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `pagos_concentración`
--

DROP TABLE IF EXISTS `pagos_concentración`;
/*!50001 DROP VIEW IF EXISTS `pagos_concentración`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pagos_concentración` AS SELECT 
 1 AS `descripción_tipo_pago`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pagos_tipo`
--

DROP TABLE IF EXISTS `pagos_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_tipo` (
  `id_tipo_pago` int NOT NULL AUTO_INCREMENT,
  `descripción_tipo_pago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_tipo`
--

LOCK TABLES `pagos_tipo` WRITE;
/*!40000 ALTER TABLE `pagos_tipo` DISABLE KEYS */;
INSERT INTO `pagos_tipo` VALUES (1,'EFECTIVO'),(2,'TARJETA DE DÉBITO'),(3,'TARJETA DE CRÉDITO');
/*!40000 ALTER TABLE `pagos_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros_soporte`
--

DROP TABLE IF EXISTS `registros_soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros_soporte` (
  `id_soporte` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_tipo_soporte` int NOT NULL,
  `contacto_cliente` varchar(20) DEFAULT NULL,
  `descripción_soporte` varchar(100) DEFAULT NULL,
  `fecha_soporte` date NOT NULL,
  `id_calificación` int DEFAULT NULL,
  `motivo_calificación` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_soporte`),
  KEY `FK_id_cliente_soporte` (`id_cliente`),
  KEY `FK_id_tipo_soporte` (`id_tipo_soporte`),
  KEY `FK_id_calificación` (`id_calificación`),
  CONSTRAINT `FK_id_calificación` FOREIGN KEY (`id_calificación`) REFERENCES `encuesta_tipos` (`id_calificación`),
  CONSTRAINT `FK_id_cliente_soporte` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_tipo_soporte` FOREIGN KEY (`id_tipo_soporte`) REFERENCES `soporte_tipos` (`id_tipo_soporte`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros_soporte`
--

LOCK TABLES `registros_soporte` WRITE;
/*!40000 ALTER TABLE `registros_soporte` DISABLE KEYS */;
INSERT INTO `registros_soporte` VALUES (1,52,6,'232-70-0341',NULL,'2023-01-23',4,NULL),(2,58,4,'491-04-4293',NULL,'2023-03-24',5,NULL),(3,39,1,'817-48-1848',NULL,'2023-01-23',4,NULL),(4,10,2,'339-67-0681',NULL,'2023-05-04',2,NULL),(5,39,2,'536-86-7705',NULL,'2023-02-12',1,NULL),(6,46,4,'480-01-5665',NULL,'2023-01-12',2,NULL),(7,87,3,'581-07-5297',NULL,'2023-03-27',4,NULL),(8,41,2,'346-35-5526',NULL,'2023-03-28',1,NULL),(9,80,4,'122-15-3090',NULL,'2023-03-09',2,NULL),(10,27,1,'360-26-6888',NULL,'2023-04-03',1,NULL),(11,50,3,'672-61-5550',NULL,'2023-05-18',5,NULL),(12,38,5,'443-91-9684',NULL,'2023-01-11',2,NULL),(13,14,5,'810-54-6687',NULL,'2023-02-01',1,NULL),(14,8,3,'853-68-2363',NULL,'2023-01-24',4,NULL),(15,98,4,'163-15-7848',NULL,'2023-04-30',3,NULL),(16,10,3,'710-86-2904',NULL,'2023-03-30',5,NULL),(17,79,5,'238-45-3835',NULL,'2023-02-10',3,NULL),(18,37,2,'442-76-4232',NULL,'2023-02-09',3,NULL),(19,70,4,'414-41-1782',NULL,'2023-03-12',3,NULL),(20,7,6,'279-46-6911',NULL,'2023-02-20',2,NULL),(21,59,5,'134-58-5348',NULL,'2023-04-18',1,NULL),(22,65,2,'664-73-2102',NULL,'2023-02-27',2,NULL),(23,83,5,'216-98-7064',NULL,'2023-04-03',5,NULL),(24,68,6,'274-83-9098',NULL,'2023-01-30',3,NULL),(25,61,2,'306-74-7114',NULL,'2023-01-20',2,NULL),(26,38,1,'282-17-8925',NULL,'2023-04-01',1,NULL),(27,91,3,'744-79-2105',NULL,'2023-02-01',4,NULL),(28,68,5,'668-99-6914',NULL,'2023-01-21',3,NULL),(29,88,3,'290-11-4860',NULL,'2023-04-01',1,NULL),(30,15,2,'548-88-6470',NULL,'2023-03-22',1,NULL),(31,66,3,'436-70-6193',NULL,'2023-03-28',3,NULL),(32,34,4,'175-42-8739',NULL,'2023-01-10',1,NULL),(33,11,4,'765-66-8862',NULL,'2023-01-04',1,NULL),(34,91,2,'867-74-4823',NULL,'2023-03-11',4,NULL),(35,37,6,'161-94-8680',NULL,'2023-03-30',4,NULL),(36,67,3,'506-18-5573',NULL,'2023-03-29',4,NULL),(37,7,6,'301-04-9074',NULL,'2023-04-22',2,NULL),(38,66,3,'862-46-2417',NULL,'2023-03-10',5,NULL),(39,18,4,'829-98-1798',NULL,'2023-05-14',3,NULL),(40,44,3,'278-62-2658',NULL,'2023-02-23',2,NULL),(41,31,1,'230-69-9326',NULL,'2023-05-19',3,NULL),(42,97,1,'465-54-7565',NULL,'2023-04-28',1,NULL),(43,50,1,'358-64-0355',NULL,'2023-02-04',2,NULL),(44,15,4,'412-60-8533',NULL,'2023-03-09',4,NULL),(45,30,1,'332-30-8225',NULL,'2023-02-16',4,NULL),(46,41,2,'516-19-5483',NULL,'2023-05-18',4,NULL),(47,67,3,'142-48-1773',NULL,'2023-03-16',3,NULL),(48,35,4,'561-34-9359',NULL,'2023-04-17',1,NULL),(49,57,1,'688-96-4603',NULL,'2023-03-26',3,NULL),(50,16,1,'569-71-9490',NULL,'2023-03-20',1,NULL),(51,12,4,'207-53-3889',NULL,'2023-04-19',3,NULL),(52,86,4,'679-67-4623',NULL,'2023-03-25',2,NULL),(53,47,6,'610-30-0310',NULL,'2023-03-02',4,NULL),(54,26,2,'410-18-1806',NULL,'2023-03-24',2,NULL),(55,6,1,'687-33-6664',NULL,'2023-04-07',2,NULL),(56,91,4,'524-09-3085',NULL,'2023-05-10',2,NULL),(57,96,5,'824-81-9382',NULL,'2023-02-25',4,NULL),(58,2,4,'116-12-2468',NULL,'2023-02-28',2,NULL),(59,87,3,'592-11-9257',NULL,'2023-01-04',3,NULL),(60,77,5,'724-26-7225',NULL,'2023-04-18',1,NULL),(61,23,1,'345-10-6939',NULL,'2023-02-15',4,NULL),(62,18,1,'803-18-9558',NULL,'2023-03-09',1,NULL),(63,21,5,'389-80-1969',NULL,'2023-01-31',4,NULL),(64,20,3,'369-41-3104',NULL,'2023-03-13',4,NULL),(65,42,2,'486-43-4532',NULL,'2023-04-22',5,NULL),(66,34,4,'843-57-7675',NULL,'2023-03-21',4,NULL),(67,61,4,'654-02-5747',NULL,'2023-05-17',3,NULL),(68,30,4,'616-98-1358',NULL,'2023-02-08',1,NULL),(69,94,2,'796-18-0008',NULL,'2023-02-24',5,NULL),(70,80,1,'453-83-4542',NULL,'2023-02-15',4,NULL),(71,42,3,'415-27-8176',NULL,'2023-03-21',5,NULL),(72,7,3,'744-86-8660',NULL,'2023-01-14',2,NULL),(73,32,3,'139-12-9525',NULL,'2023-04-19',4,NULL),(74,25,6,'437-08-1020',NULL,'2023-01-11',4,NULL),(75,5,2,'511-04-6277',NULL,'2023-03-05',1,NULL),(76,79,6,'376-47-6729',NULL,'2023-03-28',2,NULL),(77,22,4,'633-39-8455',NULL,'2023-04-24',2,NULL),(78,30,2,'610-65-3737',NULL,'2023-04-17',3,NULL),(79,25,6,'118-13-4039',NULL,'2023-03-17',5,NULL),(80,21,4,'713-21-8012',NULL,'2023-01-04',1,NULL),(81,23,1,'669-74-1484',NULL,'2023-02-16',4,NULL),(82,10,2,'700-92-1845',NULL,'2023-03-14',3,NULL),(83,58,2,'375-93-9046',NULL,'2023-02-17',1,NULL),(84,65,2,'182-90-5947',NULL,'2023-04-19',3,NULL),(85,95,5,'122-30-0152',NULL,'2023-05-18',4,NULL),(86,45,6,'622-02-3791',NULL,'2023-02-06',3,NULL),(87,39,6,'565-27-8744',NULL,'2023-04-15',5,NULL),(88,8,5,'591-79-0892',NULL,'2023-01-19',5,NULL),(89,78,5,'166-91-2344',NULL,'2023-03-03',4,NULL),(90,84,1,'820-52-3525',NULL,'2023-04-17',1,NULL),(91,19,1,'753-86-3292',NULL,'2023-03-15',5,NULL),(92,97,1,'389-18-1617',NULL,'2023-02-11',5,NULL),(93,66,2,'652-24-3266',NULL,'2023-04-04',4,NULL),(94,67,2,'718-69-6514',NULL,'2023-03-22',3,NULL),(95,24,3,'384-76-1029',NULL,'2023-02-20',1,NULL),(96,76,2,'385-36-5741',NULL,'2023-02-25',4,NULL),(97,69,3,'122-59-9381',NULL,'2023-02-26',4,NULL),(98,84,3,'419-41-2388',NULL,'2023-04-03',5,NULL),(99,97,3,'130-64-7160',NULL,'2023-05-10',5,NULL),(100,15,3,'674-47-3977',NULL,'2023-05-19',5,NULL),(101,39,4,'167-19-0825',NULL,'2023-03-21',2,NULL),(102,17,6,'268-01-6050',NULL,'2023-04-24',5,NULL),(103,41,4,'184-68-2538',NULL,'2023-03-26',4,NULL),(104,12,4,'613-22-8347',NULL,'2023-02-14',4,NULL),(105,33,3,'148-99-3897',NULL,'2023-01-18',5,NULL),(106,21,3,'774-77-6224',NULL,'2023-03-15',2,NULL),(107,85,2,'142-78-2802',NULL,'2023-04-24',5,NULL),(108,81,3,'133-04-2445',NULL,'2023-01-25',2,NULL),(109,34,2,'153-38-1811',NULL,'2023-04-26',2,NULL),(110,83,6,'124-15-0309',NULL,'2023-01-23',3,NULL),(111,22,3,'277-64-7736',NULL,'2023-01-09',4,NULL),(112,68,1,'683-08-6805',NULL,'2023-03-24',5,NULL),(113,75,5,'304-11-3914',NULL,'2023-04-02',3,NULL),(114,13,4,'761-55-7642',NULL,'2023-04-09',2,NULL),(115,94,3,'558-51-6900',NULL,'2023-04-10',1,NULL),(116,2,6,'524-99-4863',NULL,'2023-03-15',2,NULL),(117,81,5,'201-30-9454',NULL,'2023-05-14',3,NULL),(118,44,1,'869-28-7513',NULL,'2023-03-02',4,NULL),(119,67,6,'281-61-8639',NULL,'2023-02-08',5,NULL),(120,24,5,'869-89-6620',NULL,'2023-02-04',1,NULL),(121,92,4,'165-51-2342',NULL,'2023-02-10',3,NULL),(122,79,3,'200-19-7888',NULL,'2023-01-14',2,NULL),(123,93,5,'546-29-5700',NULL,'2023-01-17',5,NULL),(124,96,2,'822-53-0507',NULL,'2023-03-03',1,NULL),(125,85,5,'674-98-7090',NULL,'2023-04-06',5,NULL),(126,78,1,'672-47-2910',NULL,'2023-04-26',3,NULL),(127,73,2,'529-28-7384',NULL,'2023-05-02',3,NULL),(128,94,4,'387-72-9315',NULL,'2023-04-29',4,NULL),(129,87,2,'657-77-8053',NULL,'2023-04-05',5,NULL),(130,25,3,'135-65-2828',NULL,'2023-05-09',2,NULL),(131,2,3,'827-90-7058',NULL,'2023-05-07',2,NULL),(132,39,5,'844-72-0770',NULL,'2023-02-22',1,NULL),(133,59,2,'334-71-0687',NULL,'2023-03-16',2,NULL),(134,93,4,'399-12-1230',NULL,'2023-03-02',4,NULL),(135,90,5,'550-99-8867',NULL,'2023-05-21',5,NULL),(136,65,2,'387-77-7152',NULL,'2023-04-05',5,NULL),(137,10,5,'571-86-3546',NULL,'2023-01-19',5,NULL),(138,42,1,'580-62-2568',NULL,'2023-03-17',2,NULL),(139,31,4,'490-03-0922',NULL,'2023-03-01',4,NULL),(140,3,5,'764-07-1126',NULL,'2023-02-16',3,NULL),(141,46,4,'650-05-7915',NULL,'2023-05-02',4,NULL),(142,45,1,'138-58-0037',NULL,'2023-05-15',1,NULL),(143,54,2,'402-36-5370',NULL,'2023-03-16',3,NULL),(144,61,5,'179-32-9086',NULL,'2023-02-14',3,NULL),(145,13,3,'231-40-7037',NULL,'2023-04-05',4,NULL),(146,64,3,'256-58-9696',NULL,'2023-04-15',3,NULL),(147,76,2,'533-54-5353',NULL,'2023-01-10',3,NULL),(148,16,6,'622-96-2319',NULL,'2023-03-18',4,NULL),(149,51,3,'897-45-8728',NULL,'2023-04-30',1,NULL),(150,40,3,'380-06-0860',NULL,'2023-02-10',5,NULL),(151,71,3,'140-01-5338',NULL,'2023-01-17',1,NULL),(152,48,5,'597-27-0712',NULL,'2023-04-01',3,NULL),(153,75,6,'681-44-4337',NULL,'2023-05-06',4,NULL),(154,69,1,'882-22-0017',NULL,'2023-02-17',4,NULL),(155,14,2,'852-35-6209',NULL,'2023-01-12',1,NULL),(156,92,3,'689-50-4385',NULL,'2023-01-14',2,NULL),(157,65,6,'414-70-3334',NULL,'2023-04-13',5,NULL),(158,23,6,'835-03-6332',NULL,'2023-02-17',5,NULL),(159,19,3,'379-09-8583',NULL,'2023-02-15',2,NULL),(160,43,5,'350-53-8853',NULL,'2023-02-08',1,NULL),(161,78,6,'281-62-3721',NULL,'2023-05-05',2,NULL),(162,37,2,'141-74-7345',NULL,'2023-04-19',4,NULL),(163,66,6,'615-16-6747',NULL,'2023-04-19',4,NULL),(164,96,6,'634-80-7737',NULL,'2023-03-24',4,NULL),(165,38,5,'832-42-6214',NULL,'2023-01-23',4,NULL),(166,11,2,'125-07-5210',NULL,'2023-03-03',5,NULL),(167,95,3,'423-12-7638',NULL,'2023-01-06',1,NULL),(168,4,4,'850-89-8871',NULL,'2023-04-29',2,NULL),(169,26,5,'153-86-5205',NULL,'2023-05-01',4,NULL),(170,96,6,'503-79-6386',NULL,'2023-04-15',5,NULL),(171,40,4,'143-60-7924',NULL,'2023-05-23',2,NULL),(172,68,6,'166-32-0560',NULL,'2023-02-05',5,NULL),(173,84,6,'730-14-3123',NULL,'2023-01-08',2,NULL),(174,69,3,'284-01-6679',NULL,'2023-02-26',4,NULL),(175,80,6,'277-46-3147',NULL,'2023-01-06',1,NULL),(176,59,1,'786-98-5023',NULL,'2023-01-15',1,NULL),(177,59,3,'619-42-9880',NULL,'2023-02-21',1,NULL),(178,35,4,'885-75-3188',NULL,'2023-02-01',2,NULL),(179,38,1,'318-13-7706',NULL,'2023-03-16',2,NULL),(180,79,1,'357-86-7715',NULL,'2023-04-26',5,NULL),(181,88,3,'113-66-0650',NULL,'2023-04-18',3,NULL),(182,94,2,'608-68-1763',NULL,'2023-02-14',5,NULL),(183,52,2,'403-78-8384',NULL,'2023-03-08',5,NULL),(184,38,4,'524-13-1354',NULL,'2023-04-21',2,NULL),(185,18,3,'147-47-9296',NULL,'2023-03-10',2,NULL),(186,83,6,'882-51-2880',NULL,'2023-02-28',1,NULL),(187,26,1,'313-82-1014',NULL,'2023-03-17',5,NULL),(188,56,5,'453-29-4569',NULL,'2023-01-01',2,NULL),(189,26,2,'387-52-4787',NULL,'2023-02-03',4,NULL),(190,35,1,'261-19-6273',NULL,'2023-02-08',1,NULL),(191,57,5,'167-98-6975',NULL,'2023-02-28',3,NULL),(192,11,5,'259-73-6708',NULL,'2023-03-29',4,NULL),(193,94,4,'415-65-1146',NULL,'2023-01-17',1,NULL),(194,18,5,'721-97-3231',NULL,'2023-01-21',3,NULL),(195,8,6,'456-10-7310',NULL,'2023-01-22',3,NULL),(196,72,4,'567-29-2543',NULL,'2023-04-22',2,NULL),(197,37,6,'199-82-6780',NULL,'2023-05-10',3,NULL),(198,70,3,'328-41-4026',NULL,'2023-05-16',3,NULL),(199,96,1,'325-07-3315',NULL,'2023-03-22',4,NULL),(200,64,5,'351-64-9437',NULL,'2023-02-10',2,NULL),(201,80,4,'894-52-2182',NULL,'2023-03-11',3,NULL),(202,55,1,'425-53-8857',NULL,'2023-01-02',2,NULL),(203,78,4,'472-42-4499',NULL,'2023-05-20',4,NULL),(204,24,2,'353-89-9212',NULL,'2023-05-23',2,NULL),(205,11,1,'122-59-1466',NULL,'2023-01-15',1,NULL),(206,55,2,'355-26-9466',NULL,'2023-03-30',3,NULL),(207,12,5,'655-14-4120',NULL,'2023-02-21',5,NULL),(208,89,1,'805-57-2385',NULL,'2023-02-25',3,NULL),(209,43,1,'752-56-4338',NULL,'2023-03-30',3,NULL),(210,62,5,'548-95-5290',NULL,'2023-01-03',5,NULL),(211,33,3,'414-48-5698',NULL,'2023-04-30',4,NULL),(212,1,4,'719-01-6817',NULL,'2023-03-02',2,NULL),(213,27,3,'763-18-1933',NULL,'2023-01-13',4,NULL),(214,59,5,'837-05-8454',NULL,'2023-05-01',5,NULL),(215,93,4,'354-48-7454',NULL,'2023-04-25',2,NULL),(216,89,6,'668-54-7638',NULL,'2023-02-18',3,NULL),(217,68,4,'201-27-2473',NULL,'2023-05-04',5,NULL),(218,70,3,'526-27-2625',NULL,'2023-03-11',1,NULL),(219,77,4,'815-68-2156',NULL,'2023-03-05',2,NULL),(220,73,5,'540-04-3317',NULL,'2023-02-06',2,NULL),(221,90,4,'203-79-3350',NULL,'2023-03-08',5,NULL),(222,75,5,'640-26-9804',NULL,'2023-03-21',4,NULL),(223,8,5,'213-75-9707',NULL,'2023-05-19',2,NULL),(224,20,6,'196-81-6905',NULL,'2023-05-09',2,NULL),(225,15,1,'281-09-5278',NULL,'2023-01-03',2,NULL),(226,37,4,'148-79-4834',NULL,'2023-04-05',5,NULL),(227,12,1,'479-04-4441',NULL,'2023-01-25',4,NULL),(228,24,1,'531-91-7342',NULL,'2023-01-08',5,NULL),(229,89,1,'817-43-7510',NULL,'2023-02-06',4,NULL),(230,6,4,'197-05-8193',NULL,'2023-04-28',5,NULL),(231,48,5,'845-80-6397',NULL,'2023-05-11',4,NULL),(232,56,2,'289-14-2478',NULL,'2023-01-28',2,NULL),(233,31,4,'279-66-1307',NULL,'2023-02-26',2,NULL),(234,23,3,'418-87-7389',NULL,'2023-03-09',2,NULL),(235,79,5,'639-54-3320',NULL,'2023-01-10',4,NULL),(236,36,4,'403-91-1461',NULL,'2023-02-11',3,NULL),(237,72,5,'399-82-3264',NULL,'2023-01-02',4,NULL),(238,1,2,'131-73-4820',NULL,'2023-05-01',4,NULL),(239,54,3,'266-35-3078',NULL,'2023-03-17',3,NULL),(240,51,4,'513-43-8674',NULL,'2023-04-02',2,NULL),(241,10,1,'667-87-0140',NULL,'2023-05-22',5,NULL),(242,56,6,'104-52-6706',NULL,'2023-01-15',4,NULL),(243,70,5,'647-12-0824',NULL,'2023-01-24',4,NULL),(244,13,2,'837-98-1872',NULL,'2023-03-15',5,NULL),(245,36,2,'886-56-3598',NULL,'2023-03-25',5,NULL),(246,15,3,'636-24-9445',NULL,'2023-04-21',5,NULL),(247,4,4,'646-29-9598',NULL,'2023-03-08',3,NULL),(248,61,6,'441-76-6580',NULL,'2023-01-02',4,NULL),(249,60,1,'700-03-5970',NULL,'2023-03-06',1,NULL),(250,55,6,'405-38-0379',NULL,'2023-02-03',4,NULL),(251,19,2,'561-75-6704',NULL,'2023-01-20',4,NULL),(252,21,6,'326-70-6724',NULL,'2023-05-09',3,NULL),(253,72,4,'806-24-0847',NULL,'2023-03-22',2,NULL),(254,45,2,'324-85-5960',NULL,'2023-03-20',1,NULL),(255,28,3,'452-31-5495',NULL,'2023-02-05',4,NULL),(256,13,2,'778-83-1439',NULL,'2023-03-26',4,NULL),(257,50,1,'382-49-1054',NULL,'2023-05-17',4,NULL),(258,58,5,'174-92-6322',NULL,'2023-02-22',1,NULL),(259,81,2,'277-48-3393',NULL,'2023-01-11',2,NULL),(260,61,6,'476-35-7620',NULL,'2023-05-23',1,NULL),(261,48,4,'665-78-1511',NULL,'2023-01-05',4,NULL),(262,62,2,'845-89-6874',NULL,'2023-01-14',5,NULL),(263,39,2,'707-53-0174',NULL,'2023-05-14',5,NULL),(264,26,6,'216-02-2482',NULL,'2023-01-17',2,NULL),(265,94,4,'638-63-9657',NULL,'2023-03-02',4,NULL),(266,17,2,'166-49-5095',NULL,'2023-03-28',2,NULL),(267,35,6,'545-55-8039',NULL,'2023-03-06',4,NULL),(268,47,1,'502-44-2103',NULL,'2023-02-11',2,NULL),(269,26,2,'355-47-8223',NULL,'2023-01-20',5,NULL),(270,37,1,'641-79-9542',NULL,'2023-04-10',1,NULL),(271,18,3,'165-78-9285',NULL,'2023-01-04',3,NULL),(272,56,5,'354-90-1121',NULL,'2023-04-24',1,NULL),(273,58,6,'289-87-7955',NULL,'2023-03-31',5,NULL),(274,43,4,'380-29-3514',NULL,'2023-03-12',4,NULL),(275,50,5,'456-48-0775',NULL,'2023-02-07',5,NULL),(276,77,4,'465-32-6863',NULL,'2023-03-24',1,NULL),(277,13,2,'174-77-0547',NULL,'2023-04-22',1,NULL),(278,52,3,'475-15-6882',NULL,'2023-03-12',4,NULL),(279,50,3,'156-41-5882',NULL,'2023-04-17',3,NULL),(280,74,2,'115-80-9663',NULL,'2023-01-04',5,NULL),(281,64,1,'747-37-3087',NULL,'2023-03-22',3,NULL),(282,52,2,'334-54-7182',NULL,'2023-01-13',2,NULL),(283,34,4,'129-60-1115',NULL,'2023-02-12',5,NULL),(284,38,1,'104-75-8496',NULL,'2023-02-06',4,NULL),(285,16,3,'734-63-8633',NULL,'2023-03-21',4,NULL),(286,85,4,'368-73-7868',NULL,'2023-03-14',4,NULL),(287,5,2,'230-12-6181',NULL,'2023-04-01',2,NULL),(288,89,2,'540-88-0152',NULL,'2023-05-05',2,NULL),(289,98,2,'806-85-9870',NULL,'2023-04-04',5,NULL),(290,61,6,'370-93-0426',NULL,'2023-04-05',2,NULL),(291,92,2,'457-62-4676',NULL,'2023-02-07',1,NULL),(292,1,3,'872-64-0797',NULL,'2023-01-14',5,NULL),(293,22,3,'321-01-7943',NULL,'2023-03-02',1,NULL),(294,22,2,'654-40-5228',NULL,'2023-04-14',1,NULL),(295,50,2,'447-55-1988',NULL,'2023-04-24',3,NULL),(296,24,6,'334-24-5143',NULL,'2023-05-19',5,NULL),(297,49,6,'765-97-0262',NULL,'2023-02-19',1,NULL),(298,33,4,'367-19-3494',NULL,'2023-03-29',2,NULL),(299,69,4,'523-11-9467',NULL,'2023-03-03',2,NULL),(300,61,4,'262-08-3946',NULL,'2023-05-12',2,NULL),(301,35,4,'339-77-2255',NULL,'2023-02-08',3,NULL),(302,31,2,'142-38-1984',NULL,'2023-01-29',1,NULL),(303,78,4,'456-29-9312',NULL,'2023-01-12',2,NULL),(304,14,5,'355-07-1550',NULL,'2023-04-07',2,NULL),(305,85,1,'860-60-8509',NULL,'2023-03-20',3,NULL),(306,32,3,'812-60-5388',NULL,'2023-04-13',2,NULL),(307,49,6,'784-93-5139',NULL,'2023-05-11',4,NULL),(308,83,3,'722-11-8990',NULL,'2023-03-23',1,NULL),(309,60,5,'302-69-4913',NULL,'2023-02-03',5,NULL),(310,66,4,'535-48-6686',NULL,'2023-01-02',1,NULL),(311,40,1,'791-59-7070',NULL,'2023-01-17',3,NULL),(312,69,5,'339-24-6988',NULL,'2023-04-21',3,NULL),(313,78,5,'869-70-2505',NULL,'2023-03-21',2,NULL),(314,20,3,'701-53-8440',NULL,'2023-01-01',5,NULL),(315,55,6,'722-69-8014',NULL,'2023-03-22',3,NULL),(316,14,5,'480-55-9294',NULL,'2023-05-20',4,NULL),(317,62,4,'563-10-6698',NULL,'2023-03-27',1,NULL),(318,51,5,'472-86-5151',NULL,'2023-01-26',1,NULL),(319,43,1,'861-14-2691',NULL,'2023-04-09',3,NULL),(320,73,3,'162-03-8603',NULL,'2023-04-04',1,NULL),(321,98,3,'665-92-3645',NULL,'2023-05-22',5,NULL),(322,50,2,'152-83-0610',NULL,'2023-02-13',1,NULL),(323,94,3,'784-48-6837',NULL,'2023-04-18',3,NULL),(324,6,3,'636-18-3995',NULL,'2023-01-08',2,NULL),(325,65,2,'703-18-1499',NULL,'2023-02-19',4,NULL),(326,8,1,'615-79-9633',NULL,'2023-01-19',1,NULL),(327,49,3,'368-45-1918',NULL,'2023-04-10',3,NULL),(328,35,4,'596-08-1323',NULL,'2023-01-28',5,NULL),(329,29,3,'107-36-6744',NULL,'2023-04-27',2,NULL),(330,36,5,'670-27-9319',NULL,'2023-02-20',3,NULL),(331,45,3,'720-91-6319',NULL,'2023-03-18',4,NULL),(332,56,1,'499-37-8576',NULL,'2023-02-15',2,NULL),(333,26,2,'247-41-9266',NULL,'2023-05-21',1,NULL),(334,46,1,'381-11-9929',NULL,'2023-03-12',1,NULL),(335,96,5,'139-70-0432',NULL,'2023-01-08',3,NULL),(336,28,4,'530-91-2049',NULL,'2023-02-19',3,NULL),(337,16,5,'237-41-8199',NULL,'2023-05-15',1,NULL),(338,14,5,'688-62-8887',NULL,'2023-02-11',4,NULL),(339,34,5,'788-63-8871',NULL,'2023-03-01',2,NULL),(340,54,2,'472-33-5774',NULL,'2023-01-20',3,NULL),(341,30,2,'261-29-5827',NULL,'2023-05-15',1,NULL),(342,27,5,'874-75-2730',NULL,'2023-05-03',4,NULL),(343,32,3,'686-75-8307',NULL,'2023-01-28',2,NULL),(344,58,3,'770-57-4725',NULL,'2023-04-19',2,NULL),(345,86,4,'410-25-2099',NULL,'2023-04-23',5,NULL),(346,17,4,'444-95-2126',NULL,'2023-01-02',2,NULL),(347,64,2,'713-53-3423',NULL,'2023-05-16',2,NULL),(348,88,1,'382-29-1295',NULL,'2023-03-03',5,NULL),(349,89,3,'881-22-8559',NULL,'2023-05-14',5,NULL),(350,3,3,'675-47-6124',NULL,'2023-04-28',4,NULL),(351,33,3,'671-33-7102',NULL,'2023-05-17',1,NULL),(352,94,1,'132-64-2862',NULL,'2023-02-25',2,NULL),(353,27,3,'669-57-7385',NULL,'2023-01-11',5,NULL),(354,54,1,'479-87-7830',NULL,'2023-01-25',4,NULL),(355,39,3,'136-50-2756',NULL,'2023-01-12',5,NULL),(356,44,1,'835-30-3790',NULL,'2023-05-13',2,NULL),(357,71,6,'378-81-0738',NULL,'2023-04-03',2,NULL),(358,13,2,'433-02-2017',NULL,'2023-03-07',1,NULL),(359,52,3,'876-12-3714',NULL,'2023-03-06',5,NULL),(360,15,2,'168-29-2608',NULL,'2023-03-21',2,NULL),(361,52,3,'469-51-4378',NULL,'2023-04-19',1,NULL),(362,70,6,'176-62-4812',NULL,'2023-04-17',5,NULL),(363,2,3,'230-31-4389',NULL,'2023-05-05',2,NULL),(364,64,6,'131-11-6706',NULL,'2023-04-01',4,NULL),(365,43,3,'389-82-5084',NULL,'2023-03-31',1,NULL),(366,15,1,'692-12-2005',NULL,'2023-05-08',1,NULL),(367,77,4,'864-49-9276',NULL,'2023-02-12',5,NULL),(368,51,3,'294-21-3844',NULL,'2023-05-08',3,NULL),(369,13,4,'334-97-1900',NULL,'2023-05-19',1,NULL),(370,97,6,'579-30-9819',NULL,'2023-02-10',2,NULL),(371,92,3,'145-82-8992',NULL,'2023-04-05',5,NULL),(372,34,3,'446-13-4985',NULL,'2023-03-04',2,NULL),(373,21,4,'419-59-7073',NULL,'2023-05-14',4,NULL),(374,10,2,'360-54-8213',NULL,'2023-05-22',2,NULL),(375,21,4,'670-98-6919',NULL,'2023-03-06',2,NULL),(376,47,5,'820-75-7424',NULL,'2023-04-02',1,NULL),(377,6,4,'742-21-6501',NULL,'2023-03-08',1,NULL),(378,50,5,'863-73-7255',NULL,'2023-05-06',2,NULL),(379,63,6,'107-17-9202',NULL,'2023-05-17',3,NULL),(380,43,5,'304-71-8341',NULL,'2023-01-18',3,NULL),(381,55,3,'474-07-3110',NULL,'2023-05-09',1,NULL),(382,26,2,'239-14-9124',NULL,'2023-04-07',1,NULL),(383,43,2,'360-61-2434',NULL,'2023-04-11',4,NULL),(384,79,3,'473-94-9613',NULL,'2023-04-24',3,NULL),(385,58,2,'376-16-0371',NULL,'2023-01-17',4,NULL),(386,84,4,'201-26-2004',NULL,'2023-03-29',2,NULL),(387,48,5,'142-51-7619',NULL,'2023-02-19',5,NULL),(388,16,3,'433-35-9439',NULL,'2023-01-08',5,NULL),(389,48,1,'190-21-8172',NULL,'2023-04-11',1,NULL),(390,88,3,'590-79-3796',NULL,'2023-01-13',4,NULL),(391,23,3,'813-57-1626',NULL,'2023-02-21',5,NULL),(392,59,1,'482-05-2045',NULL,'2023-01-14',4,NULL),(393,75,4,'303-93-6281',NULL,'2023-04-29',2,NULL),(394,64,2,'654-88-8830',NULL,'2023-01-02',3,NULL),(395,80,4,'493-01-6045',NULL,'2023-03-17',4,NULL),(396,26,4,'622-53-3416',NULL,'2023-04-26',2,NULL),(397,79,2,'445-57-7484',NULL,'2023-02-21',2,NULL),(398,26,5,'151-39-2241',NULL,'2023-01-09',2,NULL),(399,77,2,'723-53-7243',NULL,'2023-04-17',4,NULL),(400,27,3,'353-59-5033',NULL,'2023-03-06',4,NULL),(401,75,1,'211-46-5902',NULL,'2023-03-03',4,NULL),(402,2,1,'449-32-9727',NULL,'2023-01-20',3,NULL),(403,56,1,'804-48-1615',NULL,'2023-02-04',3,NULL),(404,20,2,'703-43-9811',NULL,'2023-05-11',2,NULL),(405,95,1,'209-19-4675',NULL,'2023-03-31',4,NULL),(406,26,4,'284-69-7143',NULL,'2023-04-25',5,NULL),(407,69,6,'357-85-7451',NULL,'2023-02-17',2,NULL),(408,23,3,'840-78-8761',NULL,'2023-01-10',1,NULL),(409,18,4,'892-44-0276',NULL,'2023-03-08',2,NULL),(410,49,4,'401-66-9520',NULL,'2023-02-24',1,NULL),(411,97,4,'854-65-6524',NULL,'2023-01-06',1,NULL),(412,4,6,'608-76-1552',NULL,'2023-03-25',2,NULL),(413,1,4,'202-23-9157',NULL,'2023-03-30',2,NULL),(414,75,2,'639-29-6045',NULL,'2023-04-17',5,NULL),(415,13,6,'836-94-0482',NULL,'2023-02-10',2,NULL),(416,95,3,'883-18-2035',NULL,'2023-01-12',1,NULL),(417,21,6,'129-89-8975',NULL,'2023-02-19',2,NULL),(418,66,6,'258-53-4464',NULL,'2023-04-25',3,NULL),(419,47,5,'120-03-7969',NULL,'2023-03-27',3,NULL),(420,66,6,'535-32-5847',NULL,'2023-03-12',2,NULL),(421,15,4,'879-35-3272',NULL,'2023-01-07',3,NULL),(422,85,3,'697-51-5735',NULL,'2023-01-02',4,NULL),(423,54,3,'613-74-0231',NULL,'2023-03-19',4,NULL),(424,95,4,'436-38-9967',NULL,'2023-02-17',1,NULL),(425,37,4,'840-77-2740',NULL,'2023-05-03',5,NULL),(426,2,6,'127-45-6563',NULL,'2023-02-17',3,NULL),(427,72,3,'792-18-8548',NULL,'2023-03-12',2,NULL),(428,13,2,'835-28-0391',NULL,'2023-02-23',5,NULL),(429,3,1,'774-62-8415',NULL,'2023-05-17',5,NULL),(430,66,4,'382-69-0908',NULL,'2023-05-10',4,NULL),(431,86,1,'690-68-7279',NULL,'2023-05-19',3,NULL),(432,8,4,'495-12-3919',NULL,'2023-03-18',5,NULL),(433,98,6,'559-07-5203',NULL,'2023-02-03',2,NULL),(434,71,2,'696-93-8618',NULL,'2023-04-30',5,NULL),(435,89,6,'694-45-0387',NULL,'2023-04-20',2,NULL),(436,84,4,'791-28-5726',NULL,'2023-03-18',4,NULL),(437,78,1,'844-55-9111',NULL,'2023-03-09',5,NULL),(438,21,5,'249-18-2216',NULL,'2023-02-09',1,NULL),(439,80,5,'514-02-0180',NULL,'2023-02-07',4,NULL),(440,77,6,'817-25-8049',NULL,'2023-02-10',5,NULL),(441,6,4,'598-86-0300',NULL,'2023-05-01',4,NULL),(442,29,6,'188-50-8613',NULL,'2023-02-08',3,NULL),(443,36,1,'450-27-3043',NULL,'2023-01-20',3,NULL),(444,87,6,'228-26-7864',NULL,'2023-04-03',4,NULL),(445,62,5,'509-82-4044',NULL,'2023-04-13',3,NULL),(446,2,6,'458-60-8729',NULL,'2023-01-25',2,NULL),(447,73,3,'152-06-2956',NULL,'2023-03-03',2,NULL),(448,27,4,'776-81-4911',NULL,'2023-02-25',1,NULL),(449,53,6,'341-10-2841',NULL,'2023-05-07',3,NULL),(450,15,3,'249-55-2024',NULL,'2023-05-15',4,NULL),(451,93,5,'731-77-5898',NULL,'2023-04-09',5,NULL),(452,94,2,'732-04-0852',NULL,'2023-05-23',4,NULL),(453,98,4,'397-46-6432',NULL,'2023-03-26',5,NULL),(454,63,6,'466-31-7796',NULL,'2023-03-05',2,NULL),(455,85,1,'818-63-6470',NULL,'2023-04-04',2,NULL),(456,34,2,'331-04-7698',NULL,'2023-03-14',3,NULL),(457,64,5,'210-56-9082',NULL,'2023-05-18',1,NULL),(458,79,5,'163-43-3433',NULL,'2023-05-06',2,NULL),(459,93,4,'219-66-3897',NULL,'2023-03-12',4,NULL),(460,86,6,'333-97-5420',NULL,'2023-04-21',4,NULL),(461,64,6,'240-18-5607',NULL,'2023-01-24',4,NULL),(462,20,5,'431-22-8806',NULL,'2023-02-26',2,NULL),(463,53,6,'831-08-1793',NULL,'2023-01-08',3,NULL),(464,18,1,'190-53-3027',NULL,'2023-04-13',1,NULL),(465,79,3,'814-30-1157',NULL,'2023-03-28',5,NULL),(466,53,2,'763-51-9041',NULL,'2023-05-19',1,NULL),(467,8,1,'852-62-0326',NULL,'2023-05-06',3,NULL),(468,97,3,'738-20-8074',NULL,'2023-01-07',2,NULL),(469,13,1,'271-47-8273',NULL,'2023-02-18',5,NULL),(470,26,1,'453-58-9687',NULL,'2023-01-23',4,NULL),(471,95,5,'234-37-8042',NULL,'2023-05-02',2,NULL),(472,40,1,'691-32-3136',NULL,'2023-02-06',2,NULL),(473,10,6,'461-23-8315',NULL,'2023-01-03',3,NULL),(474,44,5,'853-67-9451',NULL,'2023-03-24',4,NULL),(475,9,6,'882-04-4208',NULL,'2023-01-08',5,NULL),(476,42,3,'149-56-8054',NULL,'2023-03-24',1,NULL),(477,84,6,'882-59-8133',NULL,'2023-02-22',4,NULL),(478,87,3,'218-25-8692',NULL,'2023-05-14',1,NULL),(479,61,2,'192-53-3399',NULL,'2023-01-14',4,NULL),(480,79,5,'726-34-2941',NULL,'2023-03-30',2,NULL),(481,22,4,'170-55-5798',NULL,'2023-04-14',3,NULL),(482,25,3,'469-02-5373',NULL,'2023-04-05',5,NULL),(483,58,6,'142-32-1323',NULL,'2023-01-07',3,NULL),(484,33,1,'819-66-7426',NULL,'2023-02-19',4,NULL),(485,32,4,'800-50-2700',NULL,'2023-01-05',3,NULL),(486,51,3,'719-66-9225',NULL,'2023-04-05',1,NULL),(487,55,4,'524-63-7065',NULL,'2023-04-16',4,NULL),(488,73,1,'854-13-6452',NULL,'2023-03-09',1,NULL),(489,72,1,'877-20-6016',NULL,'2023-02-07',2,NULL),(490,33,2,'552-95-8006',NULL,'2023-03-06',1,NULL),(491,82,4,'241-26-3924',NULL,'2023-03-26',3,NULL),(492,91,3,'421-71-5254',NULL,'2023-03-07',2,NULL),(493,8,3,'717-94-6077',NULL,'2023-03-22',4,NULL),(494,85,2,'548-65-8434',NULL,'2023-01-22',1,NULL),(495,16,6,'209-65-1532',NULL,'2023-01-20',2,NULL),(496,94,5,'650-05-4221',NULL,'2023-04-08',4,NULL),(497,81,5,'843-60-6775',NULL,'2023-04-21',3,NULL),(498,52,2,'509-84-8428',NULL,'2023-01-28',5,NULL),(499,31,2,'467-69-5646',NULL,'2023-04-13',1,NULL),(500,92,4,'664-46-8413',NULL,'2023-03-26',2,NULL);
/*!40000 ALTER TABLE `registros_soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resumen_cliente`
--

DROP TABLE IF EXISTS `resumen_cliente`;
/*!50001 DROP VIEW IF EXISTS `resumen_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_cliente` AS SELECT 
 1 AS `cuit`,
 1 AS `Nombre_Apellido_Denominación`,
 1 AS `descripción_fiscal`,
 1 AS `contacto_cliente`,
 1 AS `adeuda_cliente`,
 1 AS `saldo_ctacte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resumen_morosos`
--

DROP TABLE IF EXISTS `resumen_morosos`;
/*!50001 DROP VIEW IF EXISTS `resumen_morosos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_morosos` AS SELECT 
 1 AS `cuit`,
 1 AS `Nombre_Apellido_Denominación`,
 1 AS `descripción_fiscal`,
 1 AS `contacto_cliente`,
 1 AS `saldo_ctacte`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servicios_contratables`
--

DROP TABLE IF EXISTS `servicios_contratables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_contratables` (
  `id_servicios` int NOT NULL AUTO_INCREMENT,
  `descripción` varchar(400) DEFAULT NULL,
  `costo_servicio` double NOT NULL,
  PRIMARY KEY (`id_servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_contratables`
--

LOCK TABLES `servicios_contratables` WRITE;
/*!40000 ALTER TABLE `servicios_contratables` DISABLE KEYS */;
INSERT INTO `servicios_contratables` VALUES (1,'-Internet 300 mb-  Velocidad de bajada de hasta 300 megas y de\nsubida de hasta 30 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, \n5 gb por mes sin cargo para compartir, 10 GB de regalo por mes durante 6 meses\nWhatsApp gratis + Llamadas ilimitadas',5000),(2,'-Internet 100 mb-  Velocidad de bajada de hasta 100 megas y de\nsubida de hasta 20 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, \n5 gb por mes sin cargo para compartir, 10 GB de regalo por mes durante 6 meses\nWhatsApp gratis + Llamadas ilimitadas',3800),(3,'-Internet 50 mb-  Velocidad de bajada de hasta 100 megas y de\nsubida de hasta 10 megas , $800 de ahorro en tu factura de Internet si tu línea es Personal, \n+ Llamadas ilimitadas',2900);
/*!40000 ALTER TABLE `servicios_contratables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_contratados`
--

DROP TABLE IF EXISTS `servicios_contratados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_contratados` (
  `id_contratos` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_servicios` int NOT NULL,
  `fecha_contrato` date NOT NULL,
  PRIMARY KEY (`id_contratos`),
  KEY `FK_id_cliente_servicio_contratado` (`id_cliente`),
  KEY `FK_id_servicio` (`id_servicios`),
  CONSTRAINT `FK_id_cliente_servicio_contratado` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FK_id_servicio` FOREIGN KEY (`id_servicios`) REFERENCES `servicios_contratables` (`id_servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_contratados`
--

LOCK TABLES `servicios_contratados` WRITE;
/*!40000 ALTER TABLE `servicios_contratados` DISABLE KEYS */;
INSERT INTO `servicios_contratados` VALUES (1,1,2,'2023-04-14'),(2,2,3,'2023-02-14'),(3,3,1,'2023-03-25'),(4,4,3,'2023-04-18'),(5,5,2,'2023-05-22'),(6,6,2,'2023-01-04'),(7,7,1,'2023-01-09'),(8,8,3,'2023-01-16'),(9,9,2,'2023-01-16'),(10,10,3,'2023-02-18'),(11,11,2,'2023-04-21'),(12,12,2,'2023-04-13'),(13,13,3,'2023-01-19'),(14,14,2,'2023-04-08'),(15,15,1,'2023-03-09'),(16,16,2,'2023-03-16'),(17,17,1,'2023-02-18'),(18,18,2,'2023-03-17'),(19,19,2,'2023-05-28'),(20,20,1,'2023-02-24'),(21,21,2,'2023-02-02'),(22,22,3,'2023-03-13'),(23,23,3,'2023-04-04'),(24,24,2,'2023-03-08'),(25,25,1,'2023-05-27'),(26,26,1,'2023-03-16'),(27,27,2,'2023-01-21'),(28,28,3,'2023-05-17'),(29,29,1,'2023-04-26'),(30,30,1,'2023-05-11'),(31,31,2,'2023-03-27'),(32,32,1,'2023-02-02'),(33,33,1,'2023-03-06'),(34,34,1,'2023-03-01'),(35,35,2,'2023-03-27'),(36,36,3,'2023-02-28'),(37,37,3,'2023-05-22'),(38,38,2,'2023-01-28'),(39,39,3,'2023-01-27'),(40,40,3,'2023-03-04'),(41,41,3,'2023-03-24'),(42,42,3,'2023-03-03'),(43,43,3,'2023-02-18'),(44,44,1,'2023-04-27'),(45,45,1,'2023-01-21'),(46,46,1,'2023-03-02'),(47,47,2,'2023-04-11'),(48,48,1,'2023-05-16'),(49,49,2,'2023-04-03'),(50,50,3,'2023-01-02'),(51,51,1,'2023-05-12'),(52,52,2,'2023-01-01'),(53,53,3,'2023-01-02'),(54,54,3,'2023-05-19'),(55,55,3,'2023-02-04'),(56,56,1,'2023-02-18'),(57,57,2,'2023-04-27'),(58,58,1,'2023-03-01'),(59,59,3,'2023-01-01'),(60,60,1,'2023-02-12'),(61,61,1,'2023-03-22'),(62,62,1,'2023-01-18'),(63,63,1,'2023-05-03'),(64,64,2,'2023-05-24'),(65,65,3,'2023-03-14'),(66,66,3,'2023-02-15'),(67,67,1,'2023-02-12'),(68,68,3,'2023-02-13'),(69,69,2,'2023-05-26'),(70,70,1,'2023-02-24'),(71,71,3,'2023-05-28'),(72,72,2,'2023-01-26'),(73,73,1,'2023-05-02'),(74,74,2,'2023-02-02'),(75,75,3,'2023-04-26'),(76,76,2,'2023-02-05'),(77,77,3,'2023-03-28'),(78,78,1,'2023-03-02'),(79,79,1,'2023-03-06'),(80,80,2,'2023-03-23'),(81,81,1,'2023-02-11'),(82,82,3,'2023-03-06'),(83,83,2,'2023-02-01'),(84,84,1,'2023-04-05'),(85,85,3,'2023-05-01'),(86,86,1,'2023-01-21'),(87,87,1,'2023-05-15'),(88,88,2,'2023-04-11'),(89,89,3,'2023-01-23'),(90,90,3,'2023-02-08'),(91,91,3,'2023-05-18'),(92,92,3,'2023-04-01'),(93,93,1,'2023-05-23'),(94,94,3,'2023-02-28'),(95,95,3,'2023-04-13'),(96,96,1,'2023-04-01'),(97,97,3,'2023-03-01'),(98,98,2,'2023-01-22');
/*!40000 ALTER TABLE `servicios_contratados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soporte_tipos`
--

DROP TABLE IF EXISTS `soporte_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soporte_tipos` (
  `id_tipo_soporte` int NOT NULL AUTO_INCREMENT,
  `descripción_tipo_soporte` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_soporte`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soporte_tipos`
--

LOCK TABLES `soporte_tipos` WRITE;
/*!40000 ALTER TABLE `soporte_tipos` DISABLE KEYS */;
INSERT INTO `soporte_tipos` VALUES (1,'Señal correcta pero red en baja velocidad.'),(2,'Señal de Wi-Fi débil.'),(3,'Problemas de conectividad por dispositivos físicos.'),(4,'Problemas con la visita técnica o instalación de equipos.'),(5,'Errores en la facturación.'),(6,'Problemas con la cuenta corriente o el pago.');
/*!40000 ALTER TABLE `soporte_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_fiscal`
--

DROP TABLE IF EXISTS `tipo_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_fiscal` (
  `id_tipo_fiscal` int NOT NULL AUTO_INCREMENT,
  `descripción_fiscal` varchar(40) NOT NULL,
  PRIMARY KEY (`id_tipo_fiscal`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_fiscal`
--

LOCK TABLES `tipo_fiscal` WRITE;
/*!40000 ALTER TABLE `tipo_fiscal` DISABLE KEYS */;
INSERT INTO `tipo_fiscal` VALUES (1,'Responsable Inscripto'),(2,'Monotributista'),(3,'Exento'),(4,'Consumidor Final');
/*!40000 ALTER TABLE `tipo_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tipofiscal_concentración`
--

DROP TABLE IF EXISTS `tipofiscal_concentración`;
/*!50001 DROP VIEW IF EXISTS `tipofiscal_concentración`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tipofiscal_concentración` AS SELECT 
 1 AS `descripción_fiscal`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tiposoporte_concentración`
--

DROP TABLE IF EXISTS `tiposoporte_concentración`;
/*!50001 DROP VIEW IF EXISTS `tiposoporte_concentración`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tiposoporte_concentración` AS SELECT 
 1 AS `descripción_tipo_soporte`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'proyectofinal'
--

--
-- Dumping routines for database 'proyectofinal'
--
/*!50003 DROP FUNCTION IF EXISTS `créditos_altos_acobrar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `créditos_altos_acobrar`() RETURNS double
    NO SQL
BEGIN
	declare total INTEGER;
    SET total = (SELECT SUM(total_saldo) FROM cta_cte WHERE total_saldo >8000);
	RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `promedio_saldo_ctacte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `promedio_saldo_ctacte`() RETURNS float
    DETERMINISTIC
BEGIN
	DECLARE total_clientes FLOAT;
    DECLARE promedio FLOAT;
    SET total_clientes = (SELECT COUNT(*) FROM cta_cte WHERE adeuda = "Si");
	SET promedio = (SELECT AVG(total_saldo) FROM cta_cte WHERE adeuda = "Si");
RETURN promedio;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `saldo_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `saldo_cliente`(número_cliente INT) RETURNS double
    DETERMINISTIC
BEGIN
	declare total INTEGER;
    SET total = (SELECT total_saldo FROM cta_cte WHERE id_cliente = número_cliente);
	RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaCliente`(IN Nombre_cliente VARCHAR(50),IN cuit_cliente VARCHAR(13), IN domicilio VARCHAR(70),
IN tipofiscal INTEGER, IN contacto VARCHAR(40))
BEGIN
	IF (SELECT count(*) FROM clientes WHERE cuit = cuit_cliente) =0 THEN
		INSERT INTO clientes(Nombre_Apellido_Denominación,cuit)
		VALUES (Nombre_cliente,cuit_cliente);
		SET @cliente_auxiliar = (SELECT id_cliente FROM clientes WHERE cuit = cuit_cliente);
		INSERT INTO ficha_clientes(id_cliente,cuit,domicilio_cliente,id_tipo_fiscal,contacto_cliente)
		VALUES (@cliente_auxiliar,cuit_cliente,domicilio,tipofiscal,contacto);
		INSERT INTO cta_cte (id_cliente,totaL_facturado,totaL_pagado,total_saldo,adeuda)
        VALUES (@cliente_auxiliar,0,0,0,'No');
		INSERT INTO estado_cliente (id_cliente,estado_cliente,adeuda_cliente,saldo_ctacte)
        VALUES (@cliente_auxiliar,'Activo','No',0); /*No definimos el tipo de servicio, esa sería la contratación, es posterior, otro S.P
        que definirá un contrato en la tabla servicios_contratados, y un tipo de servicio en la tabla estado_cliente.*/
	ELSE
		UPDATE estado_cliente
        SET estado_cliente ="Activo" WHERE id_cliente= @cliente_auxiliar;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Contrato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Contrato`(IN idcliente INTEGER,IN idservicio INTEGER, fecha DATE)
BEGIN
		INSERT INTO servicios_contratados(id_cliente,id_servicios,fecha_contrato)
		VALUES (idcliente,idservicio,fecha);
        UPDATE estado_cliente
        SET id_servicios = idservicio WHERE id_cliente=idcliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Pago`(IN cliente_nro INTEGER, IN tipo_pago INTEGER, IN tipo_comprob INTEGER,IN nro_comprob VARCHAR(20),
importe_comprob double)
BEGIN
	INSERT INTO pagos(id_cliente,id_tipo_pago,id_tipo_comprobante,Nro_comprobante,
    importe_pago,fecha_comprobante)
    VALUES (cliente_nro,tipo_pago,tipo_comprob,nro_comprob,importe_comprob,current_date());
    UPDATE cta_cte
    SET total_saldo = totaL_facturado - total_pagado
    WHERE id_cliente = cliente_nro;
    IF (SELECT total_saldo FROM cta_cte WHERE id_cliente = cliente_nro) <= 0 and
    (SELECT adeuda FROM cta_cte WHERE id_cliente = cliente_nro) = 'Si' THEN
		UPDATE cta_cte
        SET adeuda  = 'No'
        WHERE id_cliente = cliente_nro;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Venta`(IN cliente_nro INTEGER, IN tipo_comprob INTEGER,IN nro_comprob VARCHAR(20),
importe_comprob double)
BEGIN
	DECLARE condición1 double;
    DECLARE condición2 VARCHAR(2);
	INSERT INTO comprobantes_venta(id_cliente,id_tipo_comprobante,Nro_comprobante,
    importe_comprobante,fecha_comprobante_venta)
    VALUES (cliente_nro,tipo_comprob,nro_comprob,importe_comprob,current_date());
    UPDATE cta_cte
    SET total_saldo = totaL_facturado - total_pagado
    WHERE id_cliente = cliente_nro;
    SET condición1 = (SELECT total_saldo FROM cta_cte WHERE id_cliente = cliente_nro);
    SET condición2 = (SELECT adeuda FROM cta_cte WHERE id_cliente = cliente_nro);
    IF condición1 > 0 and
     condición2 = 'No' THEN
		UPDATE cta_cte
        SET adeuda  = 'Si'
        WHERE id_cliente = cliente_nro; 
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `bajas_concentración`
--

/*!50001 DROP VIEW IF EXISTS `bajas_concentración`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bajas_concentración` AS select `b`.`descripción_baja` AS `descripción_baja`,count(0) AS `COUNT(*)` from (`bajas` `d` join `bajas_tipo` `b` on((`d`.`id_tipo_baja` = `b`.`id_tipo_baja`))) group by `b`.`descripción_baja` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_con_bajas`
--

/*!50001 DROP VIEW IF EXISTS `clientes_con_bajas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_con_bajas` AS select `p`.`Nombre_Apellido_Denominación` AS `Nombre_Apellido_Denominación`,`p`.`cuit` AS `cuit`,`c`.`descripción_baja` AS `descripción_baja`,count(0) AS `COUNT(*)` from ((`bajas` `v` join `clientes` `p` on((`v`.`id_cliente` = `p`.`id_cliente`))) join `bajas_tipo` `c` on((`c`.`id_tipo_baja` = `v`.`id_tipo_baja`))) group by `p`.`Nombre_Apellido_Denominación`,`p`.`cuit`,`c`.`descripción_baja` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `concentración_deuda`
--

/*!50001 DROP VIEW IF EXISTS `concentración_deuda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `concentración_deuda` AS select `estado_cliente`.`adeuda_cliente` AS `adeuda_cliente`,count(0) AS `COUNT(*)` from `estado_cliente` group by `estado_cliente`.`adeuda_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contratos_concentración`
--

/*!50001 DROP VIEW IF EXISTS `contratos_concentración`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contratos_concentración` AS select `s`.`descripción` AS `descripción`,count(0) AS `COUNT(*)` from (`servicios_contratados` `a` join `servicios_contratables` `s` on((`a`.`id_servicios` = `s`.`id_servicios`))) group by `s`.`descripción` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pagos_concentración`
--

/*!50001 DROP VIEW IF EXISTS `pagos_concentración`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pagos_concentración` AS select `d`.`descripción_tipo_pago` AS `descripción_tipo_pago`,count(0) AS `COUNT(*)` from (`pagos` `l` join `pagos_tipo` `d` on((`l`.`id_tipo_pago` = `d`.`id_tipo_pago`))) group by `d`.`descripción_tipo_pago` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_cliente`
--

/*!50001 DROP VIEW IF EXISTS `resumen_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_cliente` AS select distinct `f`.`cuit` AS `cuit`,`c`.`Nombre_Apellido_Denominación` AS `Nombre_Apellido_Denominación`,`f2`.`descripción_fiscal` AS `descripción_fiscal`,`f`.`contacto_cliente` AS `contacto_cliente`,`a`.`adeuda_cliente` AS `adeuda_cliente`,`a`.`saldo_ctacte` AS `saldo_ctacte` from (((`ficha_clientes` `f` join `clientes` `c` on((`f`.`id_cliente` = `c`.`id_cliente`))) join `tipo_fiscal` `f2` on((`f`.`id_tipo_fiscal` = `f2`.`id_tipo_fiscal`))) join `estado_cliente` `a` on((`f`.`id_cliente` = `a`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_morosos`
--

/*!50001 DROP VIEW IF EXISTS `resumen_morosos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_morosos` AS select distinct `f`.`cuit` AS `cuit`,`c`.`Nombre_Apellido_Denominación` AS `Nombre_Apellido_Denominación`,`f2`.`descripción_fiscal` AS `descripción_fiscal`,`f`.`contacto_cliente` AS `contacto_cliente`,`a`.`saldo_ctacte` AS `saldo_ctacte` from (((`ficha_clientes` `f` join `clientes` `c` on((`f`.`id_cliente` = `c`.`id_cliente`))) join `tipo_fiscal` `f2` on((`f`.`id_tipo_fiscal` = `f2`.`id_tipo_fiscal`))) join `estado_cliente` `a` on((`f`.`id_cliente` = `a`.`id_cliente`))) where (`a`.`adeuda_cliente` = 'Si') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipofiscal_concentración`
--

/*!50001 DROP VIEW IF EXISTS `tipofiscal_concentración`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tipofiscal_concentración` AS select `d`.`descripción_fiscal` AS `descripción_fiscal`,count(0) AS `COUNT(*)` from (`ficha_clientes` `f` join `tipo_fiscal` `d` on((`f`.`id_tipo_fiscal` = `d`.`id_tipo_fiscal`))) group by `d`.`descripción_fiscal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tiposoporte_concentración`
--

/*!50001 DROP VIEW IF EXISTS `tiposoporte_concentración`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tiposoporte_concentración` AS select `j`.`descripción_tipo_soporte` AS `descripción_tipo_soporte`,count(0) AS `COUNT(*)` from (`registros_soporte` `r` join `soporte_tipos` `j`) where (`r`.`id_tipo_soporte` = `j`.`id_tipo_soporte`) group by `j`.`descripción_tipo_soporte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 16:27:37
