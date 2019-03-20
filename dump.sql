-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB-1:10.3.10+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_oauth`
--

DROP TABLE IF EXISTS `auth_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_oauth` (
  `id` int(4) NOT NULL,
  `username` varchar(40) NOT NULL,
  `third_party` varchar(16) DEFAULT NULL,
  `credential` varchar(120) DEFAULT NULL,
  `refresh_token` varchar(120) DEFAULT NULL,
  `union_id` varchar(30) DEFAULT NULL,
  `open_id` varchar(30) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `refresh_time` timestamp NOT NULL DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_oauth`
--

LOCK TABLES `auth_oauth` WRITE;
/*!40000 ALTER TABLE `auth_oauth` DISABLE KEYS */;
INSERT INTO `auth_oauth` VALUES (49,'oLubo1QZS7iP62anUCNHJDPutUKQ','wechat','19_c5dWosvcmTQ13lLG79DUHpCjFMdThMXwskz02FNyySpVzO57d6murgdfSBvQOFqDdv2GCcjgUKXohOKj0LIo5w','19_PucPjHzkyDOfyLjQihWdcQtMP4OWDjnPOUilReubp9zE6JxOnxjDuDJtO75aNwj59i3szT7IYXchxQMLw2ZWGA','oZ1lr1G6T_S6aOOav-s_20IzVI6c','oLubo1QZS7iP62anUCNHJDPutUKQ','2019-03-07 10:51:17','2019-03-07 10:51:17');
/*!40000 ALTER TABLE `auth_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_username`
--

DROP TABLE IF EXISTS `auth_username`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_username` (
  `id` int(4) NOT NULL DEFAULT 0,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  UNIQUE KEY `id` (`id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `auth_username_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users2` (`id`),
  CONSTRAINT `auth_username_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users2` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_username`
--

LOCK TABLES `auth_username` WRITE;
/*!40000 ALTER TABLE `auth_username` DISABLE KEYS */;
INSERT INTO `auth_username` VALUES (1,'turinish','$1$k8qZh82I$ulBq6NhsoLjvOe13Yizsl/'),(2,'kimjonen','$1$kLhY2tjs$.EFxd71YBygcakCa7.mwV0'),(4,'Hill','$1$Tvnbnr6L$TE1FuWQ43we7mCFEpGlT4/'),(5,'qq','$1$vVTaXPgB$rtrWTLzM0V3D0BarLhQjT/'),(12,'ss','$1$yOjyujiE$woindcQQ1BLYrdrPUzuGm.'),(13,'ajaxtest','$1$OqLlk1yk$WFzYYoa8.WraQSa45AQB5.'),(20,'qianqianqian','$1$9sJ7TqPL$wvS2Ov4sElX38365MuaA4/'),(30,'sdddd','$1$wpUZkosx$CHWXMl/sl7oXV6iC/pKPE1'),(51,'next','$1$9FLBGBtz$SceE5/ZpCCrSwgbtd/7kx.');
/*!40000 ALTER TABLE `auth_username` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitationCode` char(6) NOT NULL,
  `isUsed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (1,'cfcd20',1),(2,'96a3be',1),(3,'d2490f',1),(4,'eb62f6',1),(5,'4100c4',0),(6,'d6a9a9',0),(7,'124bd1',0),(8,'2e9ec3',0),(9,'22975d',0),(10,'781e5e',0),(11,'5d838d',0),(12,'f4bfc7',0),(13,'b1cc34',0),(14,'10afad',0),(15,'9b2de9',0),(16,'8a6191',0),(17,'049d55',0),(18,'495174',0),(19,'978fad',0),(20,'b73629',0),(21,'95a8a1',0),(22,'2766df',0),(23,'9505b8',0),(24,'a8784a',0),(25,'81b14a',0),(26,'7f637a',0),(27,'59a83e',0),(28,'910dda',0),(29,'c9e259',0),(30,'8d6ecd',0),(31,'8485f2',0),(32,'0dcb35',0),(33,'a3e3a6',0),(34,'d888f0',0),(35,'9593e2',0),(36,'0066c8',0),(37,'59617c',0),(38,'51d0cd',0),(39,'f03bee',0),(40,'449cd0',0),(41,'2f7937',0),(42,'5ed7a1',0),(43,'65a2e2',0),(44,'69899b',0),(45,'41bc7f',0),(46,'15bf7b',0),(47,'0d5faa',0),(48,'ad83bf',0),(49,'3dbafb',0),(50,'4b8de8',0),(51,'8bcbbe',0),(52,'e551d2',0),(53,'c0787a',0),(54,'8b0f87',0),(55,'a19644',0),(56,'a368aa',0),(57,'d96464',0),(58,'08eee6',0),(59,'691fd7',0),(60,'63ada8',0),(61,'422ca8',0),(62,'338f4a',0),(63,'948104',0),(64,'cdc5a2',0),(65,'49dd79',0),(66,'4c0bc6',0),(67,'7138d0',0),(68,'21695d',0),(69,'3e5422',0),(70,'632cce',0),(71,'a1469a',0),(72,'2b6f06',0),(73,'095557',0),(74,'8a2a0a',0),(75,'b4322c',0),(76,'385e9a',0),(77,'a8c681',0),(78,'b33782',0),(79,'17eb16',0),(80,'4723f3',0),(81,'c1fad5',0),(82,'e9e957',0),(83,'c5364d',0),(84,'0ce7b9',0),(85,'75264d',0),(86,'858301',0),(87,'4be24e',0),(88,'6f4af3',0),(89,'1bf257',0),(90,'d8fc26',0),(91,'b872c7',0),(92,'df3583',0),(93,'291e58',0),(94,'073f1e',0),(95,'9d7141',0),(96,'4d91d1',0),(97,'94c7db',0),(98,'4dbc43',0),(99,'3566d1',0),(100,'860055',0),(101,'c8f7f9',0),(102,'72af9b',0),(103,'68219b',0),(104,'422e29',0),(105,'bef4b5',0),(106,'91eafa',0),(107,'bbfa94',0),(108,'e7902e',0),(109,'7db634',0),(110,'ece864',0),(111,'97711a',0),(112,'bd8da7',0),(113,'27bce6',0),(114,'cbbe97',0),(115,'4f799b',0),(116,'1105a7',0),(117,'f69f1e',0),(118,'9b597b',0),(119,'2eddb3',0),(120,'f6232a',0),(121,'d4aeb3',0),(122,'bc4efd',0),(123,'e9090f',0),(124,'132c9c',0),(125,'b9f8d4',0),(126,'1a3d69',0),(127,'c012b1',0),(128,'604bd4',0),(129,'72fcca',0),(130,'c6be20',0),(131,'020746',0),(132,'2916e7',0),(133,'db4ede',0),(134,'969d71',0),(135,'50fac2',0),(136,'b45a4d',0),(137,'30d799',0),(138,'1df0c9',0),(139,'e74f4d',0),(140,'487ea8',0),(141,'a05e35',0),(142,'177f39',0),(143,'469c6b',0),(144,'d92e49',0),(145,'af936a',0),(146,'662392',0),(147,'22f57d',0),(148,'3f8ae5',0),(149,'13592b',0),(150,'698cb5',0),(151,'582ad5',0),(152,'87b63d',0),(153,'ced3ca',0),(154,'cd1478',0),(155,'48bfed',0),(156,'febdd7',0),(157,'80f6b1',0),(158,'2bc26a',0),(159,'34ae7d',0),(160,'9acf87',0),(161,'c8c59e',0),(162,'932548',0),(163,'dfdfb4',0),(164,'790112',0),(165,'a65599',0),(166,'1aedde',0),(167,'6ec145',0),(168,'4b32a6',0),(169,'33d46f',0),(170,'7ec5fa',0),(171,'c7e3d9',0),(172,'3d5241',0),(173,'f79225',0),(174,'6ac27a',0),(175,'50025d',0),(176,'46526c',0),(177,'f7ed89',0),(178,'ea30e0',0),(179,'39a193',0),(180,'d4342c',0),(181,'4cde50',0),(182,'70716d',0),(183,'381fa8',0),(184,'293518',0),(185,'c3f42c',0),(186,'0d632f',0),(187,'7028be',0),(188,'0e7613',0),(189,'e815b1',0),(190,'d89414',0),(191,'554e44',0),(192,'e41346',0),(193,'db8e9d',0),(194,'f1c110',0),(195,'31714a',0),(196,'e49423',0),(197,'982519',0),(198,'5ac83e',0),(199,'3eb4b5',0),(200,'21fc5e',0),(201,'b81bcb',0),(202,'979bf4',0),(203,'4c5426',0),(204,'93d11c',0),(205,'8feb7f',0),(206,'db1cd1',0),(207,'a84691',0),(208,'bc0f96',0),(209,'c5f9a9',0),(210,'f08e58',0),(211,'f4a6f7',0),(212,'1306be',0),(213,'cb9d14',0),(214,'b7b61b',0),(215,'9df4cf',0),(216,'f170bc',0),(217,'94567e',0),(218,'215f23',0),(219,'f7dccb',0),(220,'40cbfa',0),(221,'7484b3',0),(222,'687c4d',0),(223,'4801e2',0),(224,'89d792',0),(225,'4af129',0),(226,'816a40',0),(227,'43fddd',0),(228,'d565fa',0),(229,'ba6207',0),(230,'c6e7a7',0),(231,'bb77d3',0),(232,'d83574',0),(233,'b9d592',0),(234,'cc65b5',0),(235,'9a5f92',0),(236,'744f8c',0),(237,'5ff0c7',0),(238,'0a22a4',0),(239,'74b2b3',0),(240,'530ab7',0),(241,'3606f4',0),(242,'dd27f4',0),(243,'ff9938',0),(244,'ffca6c',0),(245,'fa2f6e',0),(246,'14fc4e',0),(247,'e94832',0),(248,'48b1d1',0),(249,'e46bc4',0),(250,'73e000',0),(251,'83e531',0),(252,'9fe85e',0),(253,'7afe8b',0),(254,'52d99a',0),(255,'fedb43',0),(256,'92288c',0),(257,'387b1c',0),(258,'d2a0d8',0),(259,'3b179a',0),(260,'5bed49',0),(261,'604375',0),(262,'17facd',0),(263,'3ec450',0),(264,'7dacc2',0),(265,'62793f',0),(266,'50f6af',0),(267,'d74ffe',0),(268,'6bdb75',0),(269,'04f396',0),(270,'08df12',0),(271,'72af6c',0),(272,'89b7e3',0),(273,'46c59e',0),(274,'96bf1f',0),(275,'11f9ed',0),(276,'0c0fe4',0),(277,'86af6f',0),(278,'9d400f',0),(279,'f947f8',0),(280,'56565d',0),(281,'97bdaa',0),(282,'9b18ac',0),(283,'8821f6',0),(284,'3c06b8',0),(285,'aa6ed1',0),(286,'882909',0),(287,'286514',0),(288,'0b6ce9',0),(289,'4d4cc6',0),(290,'475f3a',0),(291,'c01d05',0),(292,'0f7257',0),(293,'80e69a',0),(294,'986854',0),(295,'f8bef7',0),(296,'2de2ad',0),(297,'20cbb9',0),(298,'bd59f6',0),(299,'aa3747',0),(300,'be1f66',0),(301,'e366e7',0),(302,'a263d8',0),(303,'e24bcd',0),(304,'5eff35',1),(305,'2e70b4',0),(306,'247413',0),(307,'40595e',0),(308,'98d078',0),(309,'05035f',0),(310,'df1de2',0),(311,'61bd70',1),(312,'1f149e',0),(313,'9a19e5',0),(314,'4a1698',0),(315,'210070',0),(316,'8baf3f',0),(317,'4dd770',0),(318,'8a9767',0),(319,'c34f9a',0),(320,'126955',0),(321,'d05f2e',0),(322,'0802b6',0),(323,'9c604c',0),(324,'d81efc',0),(325,'c9916c',0),(326,'92510c',0),(327,'0e7568',0),(328,'fe84ad',0),(329,'244ac5',0),(330,'549cad',0),(331,'a952a1',0),(332,'cd97f8',0),(333,'37cc3a',1),(334,'45c1a3',1),(335,'db605d',0),(336,'a32041',0),(337,'593def',0),(338,'c6cfe4',0),(339,'1747a0',0),(340,'67aab0',0),(341,'fe4218',0),(342,'a6edea',0),(343,'4e33fb',0),(344,'52879d',1),(345,'d94b4f',0),(346,'b24481',0),(347,'056455',0),(348,'e75adf',0),(349,'337d52',0),(350,'01077b',0),(351,'d03af1',0),(352,'beaedf',0),(353,'b63f1d',0),(354,'0da451',1),(355,'8c5195',0),(356,'ea1837',0),(357,'547bc8',0),(358,'d22d5e',0),(359,'0ec3f8',0),(360,'85a75f',0),(361,'daca6f',0),(362,'accc84',0),(363,'585fd6',0),(364,'a4f218',0),(365,'fe3572',0),(366,'e84e58',0),(367,'45a3aa',0),(368,'a6c7f7',0),(369,'e6a464',0),(370,'730dae',0),(371,'a3a37c',0),(372,'d8644e',0),(373,'c63a96',0),(374,'e64f5c',0),(375,'e44022',0),(376,'fb0131',0),(377,'a98577',0),(378,'5ef317',0),(379,'2f6bd0',0),(380,'052ca3',0),(381,'1dae6e',0),(382,'27cb8e',0),(383,'81bfed',0),(384,'ec9e14',0),(385,'f279a4',0),(386,'bb5678',0),(387,'d2a872',0),(388,'ae41dc',0),(389,'00e234',0),(390,'55b318',0),(391,'2755f1',0),(392,'ffc094',0),(393,'3ac9b8',0),(394,'7776e0',0),(395,'6b8363',0),(396,'cbd876',0),(397,'8c8e81',0),(398,'54fe16',0),(399,'b92c36',0),(400,'785a40',0),(401,'38fedc',0),(402,'bfd0ea',0),(403,'0c3ef9',0),(404,'331840',0),(405,'4becea',0),(406,'d15ab3',0),(407,'960045',0),(408,'c3d391',0),(409,'669206',0),(410,'d0778d',0),(411,'bb64e9',0),(412,'746b26',0),(413,'acbfdc',0),(414,'c9df24',0),(415,'1179d9',0),(416,'ea873d',0),(417,'766dca',0),(418,'72f259',0),(419,'6342ad',0),(420,'f7924d',0),(421,'c2c768',0),(422,'8fa4f7',0),(423,'0db1e4',0),(424,'0f0583',0),(425,'c0b451',0),(426,'9ecf0c',0),(427,'316a67',0),(428,'52bd58',0),(429,'9d5b40',0),(430,'eef6ae',0),(431,'45e468',0),(432,'bb698a',0),(433,'85ddcc',0),(434,'cefb0d',0),(435,'419d3a',0),(436,'3e6bee',0),(437,'79612f',0),(438,'7b5e61',0),(439,'612c60',0),(440,'fdab0b',0),(441,'d18b0c',0),(442,'8f89c6',0),(443,'4b2703',0),(444,'c37b79',0),(445,'c6787a',0),(446,'f15daf',0),(447,'99f839',0),(448,'8bd3ed',0),(449,'3f5cea',0),(450,'f4fc14',0),(451,'542ca8',0),(452,'3578b8',0),(453,'ecafa5',0),(454,'f2a67c',0),(455,'5fe517',0),(456,'495b6c',0),(457,'8daabe',0),(458,'f3dfe4',0),(459,'381c8c',0),(460,'086354',0),(461,'22f8bf',0),(462,'df961e',0),(463,'ffd6e6',0),(464,'3166ee',0),(465,'c5aa37',0),(466,'a11854',0),(467,'5a7e25',0),(468,'373c19',0),(469,'82e9f0',0),(470,'499777',0),(471,'2437d1',0),(472,'72fcb0',0),(473,'95696d',0),(474,'9fa8d4',0),(475,'0304c7',0),(476,'168ffb',0),(477,'b1bcd4',0),(478,'c7a591',0),(479,'b9d7c1',0),(480,'0e3afa',0),(481,'1a618b',0),(482,'358f2b',0),(483,'ab80ae',0),(484,'a1d4b1',0),(485,'706c35',0),(486,'ee3d70',0),(487,'08a814',0),(488,'0f7e86',0),(489,'2fb6f5',0),(490,'c5dee6',0),(491,'afbc26',0),(492,'905c80',0),(493,'5784fe',0),(494,'0d8c1a',0),(495,'73ca0b',0),(496,'64a730',0),(497,'0364fd',0),(498,'c7aa57',0),(499,'382484',0),(500,'e5d435',0),(501,'3417a2',0),(502,'28c9af',0),(503,'f5d16b',0),(504,'e0f62b',0),(505,'2b6dfd',0),(506,'3b70e8',0),(507,'48048e',0),(508,'47dcd4',0),(509,'2553f1',0),(510,'ab0994',0),(511,'eb5e90',0),(512,'2d3fa6',0),(513,'462070',0),(514,'a93b58',0),(515,'32ccf7',0),(516,'a2f8d2',0),(517,'27cf52',0),(518,'aea4e7',0),(519,'e5bc51',0),(520,'a63d30',0),(521,'9674ae',0),(522,'a7bc96',0),(523,'ac7876',0),(524,'2e04b0',0),(525,'e81e82',0),(526,'ed32e6',0),(527,'d0c178',0),(528,'dd1e2c',0),(529,'3785c2',0),(530,'fd8ff9',0),(531,'49c4b1',0),(532,'b1a9c6',0),(533,'21db48',0),(534,'1bb411',0),(535,'aa48fb',0),(536,'1909b4',0),(537,'63e894',0),(538,'7f3676',0),(539,'817125',0),(540,'279f2d',0),(541,'11a1a0',0),(542,'c3971c',0),(543,'cd9b87',0),(544,'894a8d',0),(545,'463cb6',0),(546,'4543db',0),(547,'beaaad',0),(548,'e5914e',0),(549,'654c4a',0),(550,'ee300b',0),(551,'fad954',0),(552,'7a92ff',0),(553,'cf60c8',0),(554,'253d6d',0),(555,'ffbed9',0),(556,'187364',0),(557,'e02fde',0),(558,'08a845',0),(559,'786b23',0),(560,'d25c2d',0),(561,'517e22',0),(562,'552f82',0),(563,'ed125f',0),(564,'a569e6',0),(565,'8bdb53',0),(566,'9723a7',0),(567,'365b8c',0),(568,'0f9804',0),(569,'b0a7ca',0),(570,'939837',0),(571,'6063f1',0),(572,'31a7cd',0),(573,'090a64',0),(574,'1d6ab7',0),(575,'5157c4',0),(576,'a91377',0),(577,'970e77',0),(578,'800b25',0),(579,'b11331',0),(580,'069a82',0),(581,'a8aca8',0),(582,'62ac6a',0),(583,'8823b6',0),(584,'d026e0',0),(585,'8db065',0),(586,'f64f3b',0),(587,'c9b435',0),(588,'b44477',0),(589,'eb4e92',0),(590,'48c71d',0),(591,'f6dd8e',0),(592,'0493e8',0),(593,'f5414e',0),(594,'5421a5',0),(595,'f012f6',0),(596,'4bf946',0),(597,'1a8b90',0),(598,'2a0e0f',0),(599,'46a530',0),(600,'95afcb',0),(601,'0d5a05',0),(602,'500b1b',0),(603,'251dde',0),(604,'cc1c38',0),(605,'6cadd6',0),(606,'73c7e6',0),(607,'ba93de',0),(608,'8a7052',0),(609,'7de4df',0),(610,'59f774',0),(611,'1a2e06',0),(612,'821ff0',0),(613,'cbd812',0),(614,'9504de',0),(615,'451d16',0),(616,'f56052',0),(617,'4e1ac9',0),(618,'f2499e',0),(619,'0b40d7',0),(620,'ef57ff',0),(621,'15caa6',0),(622,'ca07bb',0),(623,'ff713a',0),(624,'42895f',0),(625,'441e7d',0),(626,'88eab0',0),(627,'8b6490',0),(628,'39a609',0),(629,'fef208',0),(630,'e5e4bd',0),(631,'d56a3f',0),(632,'65b73b',0),(633,'2f4326',0),(634,'c15922',0),(635,'5cc38a',0),(636,'36c0b7',0),(637,'951f17',0),(638,'5ce16f',0),(639,'fe5f42',0),(640,'708a08',0),(641,'31de90',0),(642,'10d527',0),(643,'209f79',0),(644,'e0bf30',0),(645,'6626d8',0),(646,'0c944d',0),(647,'2a8cfa',0),(648,'861771',0),(649,'a4c4c5',0),(650,'09a699',0),(651,'8a75b9',0),(652,'e05437',0),(653,'b63506',0),(654,'27fbaa',0),(655,'5de99f',0),(656,'58592f',0),(657,'f8f303',0),(658,'ab08fc',0),(659,'a7d21b',0),(660,'2da7e3',0),(661,'ca01c8',0),(662,'a522f8',0),(663,'0b0398',0),(664,'6e1cd6',0),(665,'eada7a',0),(666,'a6162c',0),(667,'d7c524',0),(668,'dd6f03',0),(669,'7b8c18',0),(670,'3b3ebf',0),(671,'9014e6',0),(672,'06fc05',0),(673,'fc72b3',0),(674,'1e3a36',0),(675,'1f7566',0),(676,'db1cde',0),(677,'9be715',0),(678,'4d1c7b',0),(679,'2daa51',0),(680,'68d42a',0),(681,'cf693c',0),(682,'6da0bc',0),(683,'fd5845',0),(684,'32e9e6',0),(685,'d94b66',0),(686,'063dc6',0),(687,'63e1f7',0),(688,'d2a051',0),(689,'bd8f6d',0),(690,'eb9e56',0),(691,'ce3de4',0),(692,'dd48b3',0),(693,'46c804',0),(694,'5d4ca2',0),(695,'909d4a',0),(696,'7cb1e8',0),(697,'573f78',0),(698,'d03c70',0),(699,'e57910',0),(700,'bdb4d9',0),(701,'df9524',0),(702,'55b58d',0),(703,'5359bc',0),(704,'101f8a',0),(705,'9fbb27',0),(706,'f5072e',0),(707,'648ab0',0),(708,'27ea22',0),(709,'ecd362',0),(710,'c12189',0),(711,'28fcaa',0),(712,'4877e1',0),(713,'bf062d',0),(714,'d9daa1',0),(715,'578924',0),(716,'ea68b2',0),(717,'fa282d',0),(718,'b6e650',0),(719,'88b310',0),(720,'78929b',0),(721,'ce3eb0',0),(722,'d47783',0),(723,'44e1ea',0),(724,'7f96bb',0),(725,'5e19f7',0),(726,'d63c68',0),(727,'759419',0),(728,'1c1d71',0),(729,'9184af',0),(730,'35b663',0),(731,'8e3618',0),(732,'d0c04f',0),(733,'572f4b',0),(734,'fd0737',0),(735,'040539',0),(736,'bfc7aa',0),(737,'5e6c18',0),(738,'56a80b',0),(739,'90d491',0),(740,'c04916',0),(741,'9cd207',0),(742,'05c289',0),(743,'b27a00',0),(744,'fd7ebe',0),(745,'b3349f',0),(746,'91ed57',0),(747,'f4371b',0),(748,'0b6ee9',0),(749,'9037ec',0),(750,'b2af1f',0),(751,'2aebb9',0),(752,'69bf4a',0),(753,'83b8c5',0),(754,'f0fddc',0),(755,'3fb535',0),(756,'4cffd3',0),(757,'5a1e05',0),(758,'750431',0),(759,'260b2f',0),(760,'54ccce',0),(761,'f33a88',0),(762,'07fcb3',0),(763,'d2d6a5',0),(764,'29ee42',0),(765,'6b6509',0),(766,'5a0684',0),(767,'e8f06f',0),(768,'a4f809',0),(769,'13978b',0),(770,'129135',0),(771,'4067f4',0),(772,'ef9c62',0),(773,'84f96d',0),(774,'5970f6',0),(775,'024a54',0),(776,'486473',0),(777,'3e6085',0),(778,'46cc59',0),(779,'9eaacd',0),(780,'6f4a41',0),(781,'ccca30',0),(782,'86a626',0),(783,'1664e0',0),(784,'b96754',0),(785,'0fdff9',0),(786,'50d722',0),(787,'70a4e4',0),(788,'0f846d',0),(789,'63e62f',0),(790,'fd1cdc',0),(791,'8b28d7',0),(792,'23eabb',0),(793,'60e6b2',0),(794,'4ef1f6',0),(795,'8bca41',0),(796,'3ef047',0),(797,'34d87f',0),(798,'975c36',0),(799,'ac6ea5',0),(800,'87a22f',0),(801,'d425c5',0),(802,'acb849',0),(803,'4bf4ec',0),(804,'a41f8f',0),(805,'e3aea4',0),(806,'f605fb',0),(807,'d0a934',0),(808,'bbd2be',0),(809,'de0163',0),(810,'cecff4',0),(811,'d088bf',0),(812,'a4aad0',0),(813,'e9b0cb',0),(814,'d2b87b',0),(815,'bca227',0),(816,'76dfea',0),(817,'21b57f',0),(818,'18a600',0),(819,'24712f',0),(820,'6fd5da',0),(821,'7e5b3b',0),(822,'d6fb2b',0),(823,'c61813',0),(824,'019275',0),(825,'5d97e4',0),(826,'975e81',0),(827,'ef02ef',0),(828,'d53e03',0),(829,'e82923',0),(830,'5356f0',0),(831,'99855e',0),(832,'4f1aec',0),(833,'9e40f8',0),(834,'75e33f',0),(835,'93ea52',0),(836,'fb8483',0),(837,'80ade2',0),(838,'7f36ee',0),(839,'f7e06d',0),(840,'cbec7b',0),(841,'46dbe0',0),(842,'d3d446',0),(843,'973188',0),(844,'3cbdd0',0),(845,'4bca69',0),(846,'2fe796',0),(847,'9a2c34',0),(848,'9d0795',0),(849,'9d2341',0),(850,'53161d',0),(851,'460c07',0),(852,'a93f51',0),(853,'44e6b3',0),(854,'bf2562',0),(855,'7faeca',0),(856,'108576',0),(857,'94df5b',0),(858,'4e4997',0),(859,'8af30e',0),(860,'aa91e3',0),(861,'2a3ce7',0),(862,'58356e',0),(863,'749a42',0),(864,'791d5c',0),(865,'2f969f',0),(866,'096e3a',0),(867,'9bb8fa',0),(868,'fdf30d',0),(869,'870932',0),(870,'224017',0),(871,'8bfb20',0),(872,'603129',0),(873,'98855d',0),(874,'4bea1e',0),(875,'3fbc27',0),(876,'1cb071',0),(877,'2fd9ca',0),(878,'62e165',0),(879,'23f638',0),(880,'8bef71',0),(881,'614469',0),(882,'ffcee7',0),(883,'526cfb',0),(884,'1746c9',0),(885,'1d9b57',0),(886,'5c56e6',0),(887,'2cfa3a',0),(888,'9913f6',0),(889,'a61119',0),(890,'2c453a',0),(891,'e9da52',0),(892,'800bc0',0),(893,'4ca5e8',0),(894,'83f064',0),(895,'ab0990',0),(896,'134e99',0),(897,'18dc16',0),(898,'b5780e',0),(899,'72cfca',0),(900,'8d0811',0),(901,'ad82e0',0),(902,'8d8733',0),(903,'d1ab13',0),(904,'df0bf3',0),(905,'e7538e',0),(906,'ca364a',0),(907,'5e0b2a',0),(908,'238269',0),(909,'d0cbd7',0),(910,'455d07',0),(911,'9f6a36',0),(912,'dd927e',0),(913,'27bdd8',0),(914,'b47958',0),(915,'e4a827',0),(916,'984f31',0),(917,'b0daf9',0),(918,'f50151',0),(919,'27de73',0),(920,'40c353',0),(921,'49d8b7',0),(922,'e42996',0),(923,'d4e640',0),(924,'53ded7',0),(925,'386650',0),(926,'cb5e3f',0),(927,'33cf0d',0),(928,'064cd2',0),(929,'5622e2',0),(930,'384eb7',0),(931,'22640a',0),(932,'c2edf9',0),(933,'253b79',0),(934,'5f4d78',0),(935,'27959b',0),(936,'8228c7',0),(937,'685c3a',0),(938,'2cd7df',0),(939,'4e0621',0),(940,'8a219d',0),(941,'ca2230',0),(942,'18e3ec',0),(943,'6da3db',0),(944,'c02a27',0),(945,'8c2001',0),(946,'7297af',0),(947,'d809ec',0),(948,'6d0c94',0),(949,'f259b4',0),(950,'ac4934',0),(951,'6010bf',0),(952,'8f6c8e',0),(953,'f6d32d',0),(954,'0d3cd3',0),(955,'99e9df',0),(956,'ca4410',0),(957,'94bdb7',0),(958,'8c59db',0),(959,'9ecf58',0),(960,'0a4310',0),(961,'73ebe1',0),(962,'dec1bc',0),(963,'f4b8f9',0),(964,'da2a1d',0),(965,'6a5831',0),(966,'a9b9c9',0),(967,'b9ec9f',0),(968,'1b2288',0),(969,'cc9992',0),(970,'807b44',0),(971,'ed8bef',0),(972,'0477b9',0),(973,'732667',0),(974,'89b858',0),(975,'bec002',0),(976,'8e7225',0),(977,'5274d4',0),(978,'462866',0),(979,'95e510',0),(980,'3df79d',0),(981,'f39e10',0),(982,'ba4f4f',0),(983,'5643cb',0),(984,'90953f',0),(985,'26442f',0),(986,'00672a',0),(987,'1014f7',1),(988,'54786e',0),(989,'6ff8c1',0),(990,'c2297a',0),(991,'e6a88b',0),(992,'f59a38',0),(993,'61347f',0),(994,'0776d0',1),(995,'2ee445',1),(996,'c802ba',0),(997,'3b5322',0),(998,'925b1e',0),(999,'13962d',1),(1000,'6b21c4',1);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `hash` char(32) NOT NULL,
  `comment` text DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(40) DEFAULT NULL,
  `pageid` varchar(30) DEFAULT NULL,
  `parent` char(32) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `parentname` varchar(40) DEFAULT NULL,
  `userid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`hash`),
  KEY `comment_username` (`username`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users2` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('0347052fd7556bded935a710e5b05623','2221','2019-01-02 06:40:21','turinish','农林牧渔:农业:谷物种植:稻谷种植','',1,0,NULL,'turinish'),('0fbc1837e7deac60272c1db22f6ed439','3331','2019-01-02 06:47:06','turinish','农林牧渔:农业:谷物种植:稻谷种植','',1,0,NULL,'turinish'),('2f08da55113712c793cca609ddc05cc9','牛逼','2019-02-22 12:39:04','turinish','playground:playground','',1,0,NULL,'turinish'),('66772035b2f4ca5eb05d7b6a12b1461d','回你','2019-01-02 08:37:07','turinish','农林牧渔:林业:林木育种和育苗:林木育种','7c93a0f546ff5d52d0bc8b45409df077',1,0,NULL,'turinish'),('7c93a0f546ff5d52d0bc8b45409df077','rtfghjk','2019-01-02 07:58:47','ajaxtest','农林牧渔:林业:林木育种和育苗:林木育种','',1,0,NULL,'ajaxtest'),('bb2c7bc49d608140566cb5abdfd7f6ef','测试，测试','2019-01-02 06:57:58','turinish','农林牧渔:农业:谷物种植:稻谷种植','',1,0,NULL,'turinish'),('e8fe32370dcf7bd7887f276abbc14744','回我','2019-01-02 08:37:31','turinish','农林牧渔:林业:林木育种和育苗:林木育种','66772035b2f4ca5eb05d7b6a12b1461d',1,0,NULL,'turinish'),('fb9715ffbea523f795cf23ea785b523e','但是但是多','2019-02-22 12:41:29','turinish','playground:playground','',1,0,NULL,'turinish');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editlog`
--

DROP TABLE IF EXISTS `editlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editlog` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pageid` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `summary` text DEFAULT NULL,
  `editor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `editor` (`editor`),
  CONSTRAINT `editlog_ibfk_1` FOREIGN KEY (`editor`) REFERENCES `users2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editlog`
--

LOCK TABLES `editlog` WRITE;
/*!40000 ALTER TABLE `editlog` DISABLE KEYS */;
INSERT INTO `editlog` VALUES (27,'农林牧渔:农业:谷物种植:稻谷种植','2019-01-02 06:33:39','<ins>12333333333333</ins>','turinish'),(28,'农林牧渔:林业:林木育种和育苗:林木育种','2019-01-02 07:58:41','<ins>ewrtyghjkl;</ins>','ajaxtest'),(29,'农林牧渔:农业:谷物种植:稻谷种植','2019-01-07 09:43:23','<ins> [[农林牧渔:农业:谷物种植:其他谷物种植|简介]]</ins>','turinish'),(30,'农林牧渔:农业:谷物种植:稻谷种植','2019-01-07 09:46:00','<ins>[[农林牧渔:农业:谷物种植:小麦种植|简介]]</ins>','turinish'),(31,'playground:playground','2019-01-29 10:13:45','<del>erji</del><ins>erji捡垃圾斯洛伐克</ins>','turinish'),(32,'采矿业:黑色金属矿采选业:铁矿采选:铁矿采选','2019-01-29 11:45:56','<ins>====== 简介 ====== 简介1\\\\ 你好，世界。 [[什么都没有]] ====== 标题 ====== </ins>','turinish'),(33,'采矿业:黑色金属矿采选业:铁矿采选:铁矿采选','2019-01-29 11:46:14','<ins>江泽民</ins>','turinish');
/*!40000 ALTER TABLE `editlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mute`
--

DROP TABLE IF EXISTS `mute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mute` (
  `recordid` int(12) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mutedates` int(5) NOT NULL,
  `identity` varchar(100) NOT NULL,
  `operator` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mute`
--

LOCK TABLES `mute` WRITE;
/*!40000 ALTER TABLE `mute` DISABLE KEYS */;
INSERT INTO `mute` VALUES (1,13,'2018-12-24 06:50:49',1,'user','admin,user');
/*!40000 ALTER TABLE `mute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagination`
--

DROP TABLE IF EXISTS `pagination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagination` (
  `comid` mediumint(9) unsigned NOT NULL,
  `pagenum` smallint(5) unsigned NOT NULL,
  `pageid` varchar(100) NOT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagination`
--

LOCK TABLES `pagination` WRITE;
/*!40000 ALTER TABLE `pagination` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(16) DEFAULT NULL,
  `mailaddr` varchar(254) DEFAULT NULL,
  `identity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'turinish','$1$kLhY2tjs$.EFxd71YBygcakCa7.mw','???','marktnie@gmail.com','admin,user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users2`
--

DROP TABLE IF EXISTS `users2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `mailaddr` varchar(254) DEFAULT NULL,
  `identity` varchar(50) DEFAULT NULL,
  `verifycode` varchar(96) DEFAULT NULL,
  `resetpasscode` varchar(96) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_index` (`id`),
  UNIQUE KEY `username_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users2`
--

LOCK TABLES `users2` WRITE;
/*!40000 ALTER TABLE `users2` DISABLE KEYS */;
INSERT INTO `users2` VALUES (1,'turinish','$1$BafMsvu5$GVgE7fVzHeG1RgJN/Bcyk.','聂统宇234','marktnie@gmail.com','admin,user',NULL,NULL),(2,'kimjonen','$1$kLhY2tjs$.EFxd71YBygcakCa7.mwV0','金正恩','tnie2@wisc.edu','user',NULL,NULL),(4,'Hill','$1$Tvnbnr6L$TE1FuWQ43we7mCFEpGlT4/','Mark Hill','marktnie@gmail.com','user',NULL,NULL),(5,'qq','$1$vVTaXPgB$rtrWTLzM0V3D0BarLhQjT/','1','marktnie@gmail.com','muted',NULL,NULL),(12,'ss','$1$yOjyujiE$woindcQQ1BLYrdrPUzuGm.','ss','marktnie@gmail.com','user',NULL,NULL),(13,'ajaxtest','$1$OqLlk1yk$WFzYYoa8.WraQSa45AQB5.','ajaxtestreal','124@a.com','user',NULL,NULL),(20,'qianqianqian','$1$9sJ7TqPL$wvS2Ov4sElX38365MuaA4/','vvv','1453741662@qq.com','user',NULL,NULL),(30,'sdddd',NULL,'ddddfsdfs','leosuperbugs@gmail.com','user','9d28cebbcba38f6d099af8a8e1c4b9314f5a7c05afea1aa5eab3c3616539c25971264bd68e6c376349c51a770032188d',NULL),(49,'oLubo1QZS7iP62anUCNHJDPutUKQ',NULL,'饱和裘布衫','','user','',NULL),(51,'next',NULL,'tnie','service@ipaperclip.org','user','42f5f877e01844e16efeb249106a24434814da64231026c2ce9d8e0cf13c63b3a05769bbf667db2f782ecc1b3ffd86f1',NULL);
/*!40000 ALTER TABLE `users2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12  9:19:53
