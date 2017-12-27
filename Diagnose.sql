-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: Diagnose
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add area_type',7,'add_area_type'),(20,'Can change area_type',7,'change_area_type'),(21,'Can delete area_type',7,'delete_area_type'),(22,'Can add product',8,'add_product'),(23,'Can change product',8,'change_product'),(24,'Can delete product',8,'delete_product'),(25,'Can add domain',9,'add_domain'),(26,'Can change domain',9,'change_domain'),(27,'Can delete domain',9,'delete_domain'),(28,'Can add domain_idc',10,'add_domain_idc'),(29,'Can change domain_idc',10,'change_domain_idc'),(30,'Can delete domain_idc',10,'delete_domain_idc'),(31,'Can add domain_ip',11,'add_domain_ip'),(32,'Can change domain_ip',11,'change_domain_ip'),(33,'Can delete domain_ip',11,'delete_domain_ip'),(34,'Can add domain_check',12,'add_domain_check'),(35,'Can change domain_check',12,'change_domain_check'),(36,'Can delete domain_check',12,'delete_domain_check'),(37,'Can add server_type',13,'add_server_type'),(38,'Can change server_type',13,'change_server_type'),(39,'Can delete server_type',13,'delete_server_type'),(40,'Can add server',14,'add_server'),(41,'Can change server',14,'change_server'),(42,'Can delete server',14,'delete_server'),(43,'Can add progress_type',15,'add_progress_type'),(44,'Can change progress_type',15,'change_progress_type'),(45,'Can delete progress_type',15,'delete_progress_type'),(46,'Can add progress',16,'add_progress'),(47,'Can change progress',16,'change_progress'),(48,'Can delete progress',16,'delete_progress'),(49,'Can add config_type',17,'add_config_type'),(50,'Can change config_type',17,'change_config_type'),(51,'Can delete config_type',17,'delete_config_type'),(52,'Can add config',18,'add_config'),(53,'Can change config',18,'change_config'),(54,'Can delete config',18,'delete_config'),(55,'Can add alter',19,'add_alter'),(56,'Can change alter',19,'change_alter'),(57,'Can delete alter',19,'delete_alter'),(58,'Can add undo',20,'add_undo'),(59,'Can change undo',20,'change_undo'),(60,'Can delete undo',20,'delete_undo'),(61,'Can add transaction_type',21,'add_transaction_type'),(62,'Can change transaction_type',21,'change_transaction_type'),(63,'Can delete transaction_type',21,'delete_transaction_type');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$5zuxvX1sRPxc$3fjxH/ZWeWaZp1q/nuhlTMQOaCukeE7x9wCFWEF3Q7w=','2017-12-27 00:44:47',1,'admin','','','19483834@qq.com',1,1,'2017-11-28 06:43:46');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-11-28 07:53:33','1','ip状态',1,'',19,1),(2,'2017-11-28 07:56:44','1','中国大陆',1,'',7,1),(3,'2017-11-28 07:56:52','2','中国香港',1,'',7,1),(4,'2017-11-28 07:57:04','3','美国',1,'',7,1),(5,'2017-11-28 07:59:31','1','mobile_proxy_cn',1,'',8,1),(6,'2017-11-28 07:59:52','2','half_screen_cn',1,'',8,1),(7,'2017-11-28 08:37:28','1','dynamic.app.m.letv.com',1,'',9,1),(8,'2017-11-28 08:39:42','2','static.app.m.letv.com',1,'',9,1),(9,'2017-11-28 08:41:04','3','dynamic.app.m.letv.com',1,'',9,1),(10,'2017-11-28 08:46:50','1','dynamic.meizi.app.m.letv.com',2,'Changed domain.',9,1),(11,'2017-11-28 08:47:54','1','android接口',1,'',12,1),(12,'2017-11-28 08:50:07','1','中国北京电信',1,'',10,1),(13,'2017-11-28 08:50:14','2','中国北京联通',1,'',10,1),(14,'2017-11-28 08:54:11','1','111.206.212.239',1,'',11,1),(15,'2017-11-28 08:54:56','2','36.110.223.251',1,'',11,1),(16,'2017-11-28 08:55:13','3','123.59.122.228',1,'',11,1),(17,'2017-11-28 09:01:08','1','nginx代理',1,'',15,1),(18,'2017-11-28 09:03:29','1','web_server',1,'',13,1),(19,'2017-11-28 09:04:31','2','redis',1,'',13,1),(20,'2017-11-28 09:04:42','1','/',1,'',16,1),(21,'2017-11-28 09:08:07','1','web',1,'',14,1),(22,'2017-11-28 09:10:56','1','/',3,'',16,1),(23,'2017-11-28 09:16:00','2','nginx代理服务',1,'',16,1),(24,'2017-11-28 10:02:58','3','mcluster',1,'',13,1),(25,'2017-11-28 10:06:15','2','mcluster集群',1,'',14,1),(26,'2017-11-28 10:07:01','3','mcluster集群',1,'',14,1),(27,'2017-11-28 14:02:06','1','log',3,'',17,1),(28,'2017-11-28 14:05:21','3','tomcat',1,'',17,1),(29,'2017-11-28 14:12:39','1','业务',1,'',18,1),(30,'2017-11-28 14:13:46','2','第三方日志',1,'',18,1),(31,'2017-11-28 14:15:23','3','服务配置',1,'',18,1),(32,'2017-11-28 14:25:56','1','ip状态',2,'No fields changed.',19,1),(33,'2017-11-28 14:26:03','1','ip状态',2,'No fields changed.',19,1),(34,'2017-11-28 14:30:12','1','nginx代理',2,'Changed content.',15,1),(35,'2017-11-28 14:43:40','2','rsync',1,'',15,1),(36,'2017-11-28 14:48:40','2','nginx代理服务',2,'No fields changed.',16,1),(37,'2017-11-28 14:49:13','3','rsync',1,'',16,1),(38,'2017-11-28 14:49:32','2','nginx代理服务',2,'No fields changed.',16,1),(39,'2017-11-29 01:46:16','4','db',1,'',13,1),(40,'2017-11-29 01:46:43','3','mcluster3306',2,'Changed server_name.',13,1),(41,'2017-11-29 01:50:16','4','Chat DB',1,'',14,1),(42,'2017-11-29 01:52:10','5','Chat DB',1,'',14,1),(43,'2017-11-29 01:53:10','6','Chat DB',1,'',14,1),(44,'2017-11-29 01:54:52','3','hd-cn',1,'',8,1),(45,'2017-11-29 01:54:55','6','Chat DB',2,'Changed product.',14,1),(46,'2017-11-29 01:55:01','5','Chat DB',2,'Changed product.',14,1),(47,'2017-11-29 01:55:06','4','Chat DB',2,'Changed product.',14,1),(48,'2017-11-29 01:55:52','4','Chat DB',2,'Changed comment.',14,1),(49,'2017-11-29 01:59:56','3','mcluster3306',2,'Changed server_config_name and server_config_path.',13,1),(50,'2017-11-29 02:00:19','4','db',2,'No fields changed.',13,1),(51,'2017-11-29 02:05:31','5','queue-consume',1,'',13,1),(52,'2017-11-29 02:07:28','7','queue',1,'',14,1),(53,'2017-11-29 02:09:22','8','queue',1,'',14,1),(54,'2017-11-30 01:16:22','4','db-mysql',2,'Changed server_name.',13,1),(55,'2017-11-30 01:23:26','2','redis',2,'Changed config_type_name and description.',17,1),(56,'2017-11-30 01:25:21','3','服务配置',2,'No fields changed.',18,1),(57,'2017-11-30 02:35:53','3','rsync',3,'',16,1),(58,'2017-11-30 02:35:53','2','nginx代理服务',3,'',16,1),(59,'2017-12-05 02:41:48','5','queue-consume',3,'',13,1),(60,'2017-12-05 02:41:48','4','db-mysql',3,'',13,1),(61,'2017-12-05 02:41:48','3','mcluster3306',3,'',13,1),(62,'2017-12-05 02:41:48','2','redis',3,'',13,1),(63,'2017-12-05 02:41:48','1','web_server',3,'',13,1),(64,'2017-12-05 03:07:32','6','web_server',1,'',13,1),(65,'2017-12-05 03:08:13','7','cbase',1,'',13,1),(66,'2017-12-05 03:36:57','3','服务配置',3,'',18,1),(67,'2017-12-05 03:36:57','2','第三方日志',3,'',18,1),(68,'2017-12-05 03:36:57','1','业务',3,'',18,1),(69,'2017-12-07 06:03:29','3','tomcat',3,'',17,1),(70,'2017-12-07 06:03:29','2','redis',3,'',17,1),(71,'2017-12-07 06:04:20','4','conf',1,'',17,1),(72,'2017-12-07 06:04:32','5','log',1,'',17,1),(73,'2017-12-07 06:05:20','6','act',1,'',17,1),(74,'2017-12-07 06:05:46','7','script',1,'',17,1),(75,'2017-12-07 06:06:33','4','tv-cn',1,'',8,1),(76,'2017-12-07 06:08:26','9','API',1,'',14,1),(77,'2017-12-07 06:09:02','3','tomcat',1,'',15,1),(78,'2017-12-07 06:12:46','4','mysql慢日志',1,'',16,1),(79,'2017-12-07 06:13:43','5','升级日志',1,'',16,1),(80,'2017-12-07 06:18:45','6','启动',1,'',16,1),(81,'2017-12-07 06:19:50','7','重启',1,'',16,1),(82,'2017-12-07 06:20:58','8','关闭',1,'',16,1),(83,'2017-12-07 09:47:18','5','push-test-cn',1,'',8,1),(84,'2017-12-07 15:25:17','4','api.mob.app.letv.com',1,'',9,1),(85,'2017-12-07 15:31:03','5','api-mob-app.letv.com',1,'',9,1),(86,'2017-12-07 15:33:17','6','cnc-cn-api-mob-app.letv.com',1,'',9,1),(87,'2017-12-07 15:35:10','7','ctc-cn-api-mob-app.letv.com',1,'',9,1),(88,'2017-12-07 15:37:06','8','bgp-cn-api-mob-app.letv.com',1,'',9,1),(89,'2017-12-07 15:38:54','4','211.154.225.201',1,'',11,1),(90,'2017-12-07 15:39:17','5','36.110.148.237',1,'',11,1),(91,'2017-12-07 15:40:02','3','北京BGP',1,'',10,1),(92,'2017-12-07 15:40:11','6','120.132.127.192',1,'',11,1),(93,'2017-12-07 15:47:06','10','WEB服务器',1,'',14,1),(94,'2017-12-07 15:49:30','11','WEB服务器',1,'',14,1),(95,'2017-12-07 15:50:16','12','WEB服务器',1,'',14,1),(96,'2017-12-07 15:50:49','13','WEB服务器',1,'',14,1),(97,'2017-12-07 15:51:38','14','WEB服务器',1,'',14,1),(98,'2017-12-07 15:52:10','15','WEB服务器',1,'',14,1),(99,'2017-12-07 15:56:25','16','WEB服务器-上半屏',1,'',14,1),(100,'2017-12-07 15:57:24','17','WEB服务器-上半屏',1,'',14,1),(101,'2017-12-07 16:00:32','8','message_consume',1,'',13,1),(102,'2017-12-07 16:02:06','18','消息队列-主',1,'',14,1),(103,'2017-12-11 01:42:41','3','dynamic.app.m.letv.com',2,'已修改 domain_url 。',9,1),(104,'2017-12-13 00:51:51','4','cibn-api-cn',2,'已修改 name 和 description 。',8,1),(105,'2017-12-13 00:53:27','9','API',2,'没有字段被修改。',14,1),(106,'2017-12-13 00:54:53','19','WEB服务器',1,'',14,1),(107,'2017-12-13 00:55:06','19','API',2,'已修改 description 。',14,1),(108,'2017-12-14 07:51:02','6','i-api-cn',1,'',8,1),(109,'2017-12-14 07:54:38','9','i.api.letv.com',1,'',9,1),(110,'2017-12-14 07:57:00','7','10.127.98.116',1,'',11,1),(111,'2017-12-14 07:57:34','8','10.110.108.44',1,'',11,1),(112,'2017-12-14 07:57:52','9','10.183.96.230',1,'',11,1),(113,'2017-12-14 07:59:37','2','api第三方接口',1,'',12,1),(114,'2017-12-14 09:32:34','7','m-api-cn',1,'',8,1),(115,'2017-12-14 09:37:22','20','Mms（媒资) & Cms(内容管理) 队列服务',1,'',14,1),(116,'2017-12-14 09:38:41','20','Mms（媒资) & Cms(内容管理) 队列服务',2,'已修改 comment 。',14,1),(117,'2017-12-14 09:39:33','4','crontab定时计划',1,'',15,1),(118,'2017-12-14 09:47:52','9','媒资消费',1,'',16,1),(119,'2017-12-14 09:50:27','10','队列消费',1,'',16,1),(120,'2017-12-14 09:53:38','9','队列消费',2,'已修改 config_name_rel 和 description 。',16,1),(121,'2017-12-15 02:07:06','3','android接口',1,'',12,1),(122,'2017-12-21 01:12:04','10','队列消费',2,'已修改 product_rel 。',16,1),(123,'2017-12-21 01:16:34','11','/',1,'',16,1),(124,'2017-12-21 01:16:57','11','消息队列-主',2,'已修改 description 。',16,1),(125,'2017-12-21 01:19:17','12','#刷新频道推荐数据',1,'',16,1),(126,'2017-12-21 01:19:40','12','刷新频道推荐数据',2,'已修改 description 和 comment 。',16,1),(127,'2017-12-21 01:29:46','18','消息队列-主',2,'已修改 ha_status 。',14,1),(128,'2017-12-21 01:30:34','20','Mms（媒资) & Cms(内容管理) 队列服务',2,'已修改 ha_status 。',14,1),(129,'2017-12-21 02:20:04','1','redis调整',1,'',20,1),(130,'2017-12-21 02:20:32','2','消息队列调整',1,'',20,1),(131,'2017-12-21 02:21:02','8','geo',1,'',8,1),(132,'2017-12-21 02:21:28','3','节点无流量',1,'',20,1),(133,'2017-12-21 02:33:22','9','lead_half_screen_cn',1,'',8,1),(134,'2017-12-21 02:34:39','9','lead_half_cn',2,'已修改 name 。',8,1),(135,'2017-12-21 02:35:01','4','部署上线',1,'',20,1),(136,'2017-12-21 02:39:00','4','部署上线',2,'已修改 status 。',20,1),(137,'2017-12-21 02:39:14','9','lead_half_screen_cn',2,'已修改 name 。',8,1),(138,'2017-12-21 02:39:20','4','部署上线',2,'没有字段被修改。',20,1),(139,'2017-12-21 02:40:21','5','log备份',1,'',20,1),(140,'2017-12-21 02:43:57','6','日志切割',1,'',20,1),(141,'2017-12-21 02:56:02','3','节点无流量',2,'已修改 comment 。',20,1),(142,'2017-12-21 02:56:09','3','节点无流量',2,'已修改 status 。',20,1),(143,'2017-12-21 02:57:04','7','少量499',1,'',20,1),(144,'2017-12-21 03:30:34','5','log备份',2,'已修改 comment 。',20,1),(145,'2017-12-21 03:31:36','10','tv-letv-api-cn',1,'',8,1),(146,'2017-12-21 03:31:43','5','log备份',2,'已修改 product_rel 。',20,1),(147,'2017-12-21 03:31:58','5','log备份',2,'已修改 ip 。',20,1),(148,'2017-12-21 03:33:17','4','tv-cibn-api-cn',2,'已修改 name 。',8,1),(149,'2017-12-21 07:28:57','2','消息队列调整',2,'已修改 ip 。',20,1),(150,'2017-12-21 07:37:39','11','all-cn',1,'',8,1),(151,'2017-12-21 07:38:44','8','断电演练',1,'',20,1),(152,'2017-12-21 08:25:23','11','消息队列-主',2,'已修改 config_content 。',16,1),(153,'2017-12-21 08:28:12','18','消息队列-主',2,'已修改 private_ip，idc_location 和 comment 。',14,1),(154,'2017-12-21 08:31:09','21','消息队列-从',1,'',14,1),(155,'2017-12-21 08:31:30','18','消息队列-主',2,'已修改 ha_status 。',14,1),(156,'2017-12-21 08:34:40','13','消息队列-主',1,'',16,1),(157,'2017-12-21 08:37:24','2','消息队列调整',2,'已修改 product_rel 和 status 。',20,1),(158,'2017-12-21 09:30:32','6','日志切割',2,'已修改 status 和 comment 。',20,1),(159,'2017-12-21 09:44:15','7','少量499',2,'已修改 status 。',20,1),(160,'2017-12-21 09:44:26','5','log备份',2,'已修改 status 。',20,1),(161,'2017-12-21 09:44:36','6','日志切割',2,'已修改 status 。',20,1),(162,'2017-12-21 09:50:50','8','geo-cn',2,'已修改 name 。',8,1),(163,'2017-12-21 09:53:05','10','geo.mob.app.letv.com',1,'',9,1),(164,'2017-12-21 09:55:09','22','WEB服务器',1,'',14,1),(165,'2017-12-21 13:34:30','5','php扩展库',1,'',15,1),(166,'2017-12-21 13:35:23','10','队列消费',2,'已修改 progress_rel 。',16,1),(167,'2017-12-21 13:41:49','21','消息队列-从',2,'已修改 status 。',14,1),(168,'2017-12-21 13:44:04','9','API',2,'已修改 idc_location 。',14,1),(169,'2017-12-21 14:02:37','10','WEB服务器',2,'已修改 public_ip 和 private_ip 。',14,1),(170,'2017-12-21 14:14:13','9','app-hotpoint',1,'',13,1),(171,'2017-12-21 14:15:51','23','视频热点更新',1,'',14,1),(172,'2017-12-21 14:18:39','24','视频热点更新',1,'',14,1),(173,'2017-12-21 14:19:02','23','视频热点更新',2,'已修改 public_ip 和 private_ip 。',14,1),(174,'2017-12-21 14:22:52','14','热点更新',1,'',16,1),(175,'2017-12-21 15:02:08','12','tv-letv-daemon-cn',1,'',8,1),(176,'2017-12-21 15:06:18','25','WEB服务器',1,'',14,1),(177,'2017-12-21 15:07:29','26','WEB服务器',1,'',14,1),(178,'2017-12-21 15:08:14','26','Timer/Daemon/代理',2,'已修改 description 。',14,1),(179,'2017-12-21 15:08:25','25','Timer/Daemon/代理',2,'已修改 description 。',14,1),(180,'2017-12-22 02:17:03','6','日志切割',2,'已修改 finish_time 和 status 。',20,1),(181,'2017-12-22 02:35:34','5','log备份',2,'已修改 status 。',20,1),(182,'2017-12-22 02:56:32','9','机器登录慢',1,'',20,1),(183,'2017-12-22 06:29:39','9','机器登录慢',2,'已修改 status 。',20,1),(184,'2017-12-23 02:07:39','10','slb等待上线',1,'',20,1),(185,'2017-12-23 02:08:32','11','db迁移',1,'',20,1),(186,'2017-12-23 04:38:51','12','rsyncd进程',1,'',20,1),(187,'2017-12-26 02:01:35','13','act-report-letv-cn',1,'',8,1),(188,'2017-12-26 02:03:34','13','磁盘满',1,'',20,1),(189,'2017-12-26 02:04:29','14','tv-letv-static-cn',1,'',8,1),(190,'2017-12-26 02:05:38','14','服务部署迁移',1,'',20,1),(191,'2017-12-26 14:06:33','15','s-live-static-cn',1,'',8,1),(192,'2017-12-26 14:06:48','14','服务部署迁移',2,'没有字段被修改。',20,1),(193,'2017-12-26 14:08:15','15','静态服务迁移',1,'',20,1),(194,'2017-12-26 14:09:14','1','redis调整',2,'已修改 finish_time 和 status 。',20,1),(195,'2017-12-26 14:10:39','16','sso-cn',1,'',8,1),(196,'2017-12-26 14:12:26','16','sso.le.com有503',1,'',20,1),(197,'2017-12-26 14:13:53','17','部署上线',1,'',20,1),(198,'2017-12-26 14:24:20','18','测试机返回502',1,'',20,1),(199,'2017-12-26 14:28:53','19','指令执行慢',1,'',20,1),(200,'2017-12-26 14:30:28','20','服务迁移部署',1,'',20,1),(201,'2017-12-27 01:06:31','10','slb等待上线',2,'已修改 status 。',20,1),(202,'2017-12-27 01:41:49','8','断电演练',2,'已修改 priority 。',20,1),(203,'2017-12-27 01:53:18','1','故障分析处理',1,'',21,1),(204,'2017-12-27 01:54:16','2','日常报警处理',1,'',21,1),(205,'2017-12-27 01:54:41','3','协助业务',1,'',21,1),(206,'2017-12-27 01:55:15','4','工程规划',1,'',21,1),(207,'2017-12-27 01:55:41','4','工程架构规划',2,'已修改 transaction_name 。',21,1),(208,'2017-12-27 01:55:49','3','协助业务支持',2,'已修改 transaction_name 。',21,1),(209,'2017-12-27 01:58:10','5','业务部署升级',1,'',21,1),(210,'2017-12-27 01:59:38','6','业务部署迁移',1,'',21,1),(211,'2017-12-27 02:00:13','5','业务上线升级',2,'已修改 transaction_name 。',21,1),(212,'2017-12-27 02:07:05','20','服务迁移部署',2,'已修改 priority 和 create_time 。',20,1),(213,'2017-12-27 02:16:34','21','磁盘满',1,'',20,1),(214,'2017-12-27 02:38:02','22','部署上线',1,'',20,1),(215,'2017-12-27 02:57:55','14','服务部署迁移',2,'已修改 priority 。',20,1),(216,'2017-12-27 03:11:42','22','部署上线',2,'已修改 finish_time，status 和 comment 。',20,1),(217,'2017-12-27 03:15:24','14','热点更新',2,'没有字段被修改。',16,1),(218,'2017-12-27 03:19:05','11','common-cn',2,'已修改 name 。',8,1),(219,'2017-12-27 03:32:54','23','普通脚本数据结构',1,'',20,1),(220,'2017-12-27 03:33:09','23','通用脚本数据结构',2,'已修改 undo_event 。',20,1),(221,'2017-12-27 06:18:16','17','salt-cn',1,'',8,1),(222,'2017-12-27 06:20:19','27','WEB服务器',1,'',14,1),(223,'2017-12-27 06:21:33','24','服务部署迁移',1,'',20,1),(224,'2017-12-27 06:21:57','20','服务迁移部署',2,'已修改 status 。',20,1),(225,'2017-12-27 06:40:27','11','git.ebops.letv.cn',1,'',9,1),(226,'2017-12-27 09:39:43','25','登录慢',1,'',20,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'mainweb','area_type'),(8,'mainweb','product'),(9,'mainweb','domain'),(10,'mainweb','domain_idc'),(11,'mainweb','domain_ip'),(12,'mainweb','domain_check'),(13,'mainweb','server_type'),(14,'mainweb','server'),(15,'mainweb','progress_type'),(16,'mainweb','progress'),(17,'mainweb','config_type'),(18,'mainweb','config'),(19,'mainweb','alter'),(20,'mainweb','undo'),(21,'mainweb','transaction_type');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-28 06:42:47'),(2,'auth','0001_initial','2017-11-28 06:42:47'),(3,'admin','0001_initial','2017-11-28 06:42:47'),(4,'contenttypes','0002_remove_content_type_name','2017-11-28 06:42:47'),(5,'auth','0002_alter_permission_name_max_length','2017-11-28 06:42:48'),(6,'auth','0003_alter_user_email_max_length','2017-11-28 06:42:48'),(7,'auth','0004_alter_user_username_opts','2017-11-28 06:42:48'),(8,'auth','0005_alter_user_last_login_null','2017-11-28 06:42:48'),(9,'auth','0006_require_contenttypes_0002','2017-11-28 06:42:48'),(10,'mainweb','0001_initial','2017-11-28 06:42:49'),(11,'sessions','0001_initial','2017-11-28 06:42:49'),(12,'mainweb','0002_auto_20171128_0913','2017-11-28 09:13:42'),(13,'mainweb','0003_domain_ip_slb_node','2017-11-30 02:34:51'),(14,'mainweb','0004_auto_20171205_0244','2017-12-05 02:44:32'),(21,'mainweb','0007_auto_20171221_0203','2017-12-21 02:03:57'),(20,'mainweb','0006_server_ha_status','2017-12-21 01:28:35'),(19,'mainweb','0005_auto_20171206_0228','2017-12-06 02:30:13'),(22,'mainweb','0008_undo','2017-12-21 02:18:18'),(23,'mainweb','0009_auto_20171221_0238','2017-12-21 02:38:55'),(24,'mainweb','0010_auto_20171221_0943','2017-12-21 09:43:52'),(25,'mainweb','0011_undo_priority','2017-12-27 01:39:42'),(26,'mainweb','0012_transaction_type','2017-12-27 01:52:31'),(27,'mainweb','0013_undo_transaction_rel','2017-12-27 02:04:42');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('od33awvzoxoaq1p5hiiimthkpnslyiui','ZWJjOWY4MmFiMjBhZjJkNjkzZjc0ZmEyMmJiN2QzYmIzNWNlZGMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZWEzZjZmMmVlMGQ3OTM0NWZiYzc5MDZhMTFkZjZiNTA3MGM5ZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-12-12 06:44:30'),('tutacwgmzeay5egwnmgp4tz2v6smr9b8','ZWJjOWY4MmFiMjBhZjJkNjkzZjc0ZmEyMmJiN2QzYmIzNWNlZGMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZWEzZjZmMmVlMGQ3OTM0NWZiYzc5MDZhMTFkZjZiNTA3MGM5ZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-12-27 00:36:31'),('c7ew2ooufngewxira0pt3nif4gtrkb7p','ZWJjOWY4MmFiMjBhZjJkNjkzZjc0ZmEyMmJiN2QzYmIzNWNlZGMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZWEzZjZmMmVlMGQ3OTM0NWZiYzc5MDZhMTFkZjZiNTA3MGM5ZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-10 00:44:47');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_alter`
--

DROP TABLE IF EXISTS `mainweb_alter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_alter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alter_name` varchar(100) NOT NULL,
  `alter_content` longtext NOT NULL,
  `alter_time` datetime NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_alter`
--

LOCK TABLES `mainweb_alter` WRITE;
/*!40000 ALTER TABLE `mainweb_alter` DISABLE KEYS */;
INSERT INTO `mainweb_alter` VALUES (1,'ip状态','10.130.211.100 \r\n通，不能登录','2017-11-28 07:53:33','暂无说明');
/*!40000 ALTER TABLE `mainweb_alter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_area_type`
--

DROP TABLE IF EXISTS `mainweb_area_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_area_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_area_type`
--

LOCK TABLES `mainweb_area_type` WRITE;
/*!40000 ALTER TABLE `mainweb_area_type` DISABLE KEYS */;
INSERT INTO `mainweb_area_type` VALUES (1,'中国大陆','中国大陆'),(2,'中国香港','中国香港'),(3,'美国','美国');
/*!40000 ALTER TABLE `mainweb_area_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_config`
--

DROP TABLE IF EXISTS `mainweb_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `config_content` longtext NOT NULL,
  `config_path` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  `config_name_rel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_config_0d6badd1` (`config_name_rel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_config`
--

LOCK TABLES `mainweb_config` WRITE;
/*!40000 ALTER TABLE `mainweb_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mainweb_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_config_type`
--

DROP TABLE IF EXISTS `mainweb_config_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_config_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_type_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_config_type`
--

LOCK TABLES `mainweb_config_type` WRITE;
/*!40000 ALTER TABLE `mainweb_config_type` DISABLE KEYS */;
INSERT INTO `mainweb_config_type` VALUES (4,'conf','配置','暂无说明'),(5,'log','日志','暂无说明'),(6,'act','运行','暂无说明'),(7,'script','脚本','暂无说明');
/*!40000 ALTER TABLE `mainweb_config_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_domain`
--

DROP TABLE IF EXISTS `mainweb_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `slb_vhost` varchar(100) NOT NULL,
  `vhost_url` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `slb_cluster` varchar(100) NOT NULL,
  `domain_url` varchar(200) NOT NULL,
  `respone_way` varchar(5) NOT NULL,
  `comment` longtext NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_domain_9bea82de` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain`
--

LOCK TABLES `mainweb_domain` WRITE;
/*!40000 ALTER TABLE `mainweb_domain` DISABLE KEYS */;
INSERT INTO `mainweb_domain` VALUES (1,'dynamic.meizi.app.m.letv.com','dynamic.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2773','dlb.g5.letvlb.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',1),(2,'static.app.m.letv.com','static.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2955','vip.sf.cdnle.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',1),(3,'dynamic.app.m.letv.com','dynamic.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2773','dlb.g5.letvlb.com.','中国_北京_公共SLB2-g5-B','android/dynamic.php?mod=minfo&ctl=cloud&act=import&pcode=010510000&version=6.1.1&lang=chs&region=CN','Http','暂无说明',1),(4,'api.mob.app.letv.com','api.mob.app.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2709','dlb.g5.letvlb.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',2),(5,'api-mob-app.letv.com','api-mob-app.letv.com','http://ha.oss.letv.cn/portal/slb_config/single/5504/','ssl.dl.g15.letvlb.com.','北京机房-公共SLB-SSL(第二组)_开源版_g15.letvlb','/','Https','暂无说明',2),(6,'cnc-cn-api-mob-app.letv.com','api-mob-app.letv.com','http://ha.oss.letv.cn/portal/slb_config/single/5504/','ssl.lt.g15.letvlb.com.','北京机房-公共SLB-SSL(第二组)_开源版_g15.letvlb','/','Https','暂无说明',2),(7,'ctc-cn-api-mob-app.letv.com','api-mob-app.letv.com','http://ha.oss.letv.cn/portal/slb_config/single/5504/','ssl.dx.g15.letvlb.com.','北京机房-公共SLB-SSL(第二组)_开源版_g15.letvlb','/','Https','暂无说明',2),(8,'bgp-cn-api-mob-app.letv.com','api-mob-app.letv.com','api-mob-app.letv.com','ssl.bgp.g15.letvlb.com.','北京机房-公共SLB-SSL(第二组)_开源版_g15.letvlb','/','Https','暂无说明',2),(9,'i.api.letv.com','i.api.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/1467','i.g10.letvlb.com.','中国_北京_公共内网SLB-g10-O','/','Http','暂无说明',6),(10,'geo.mob.app.letv.com','geo.mob.app.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/1425','i.g10.letvlb.com.','中国_北京_公共内网SLB-g10-O','/','Http','暂无说明',8),(11,'git.ebops.letv.cn','/','/','/','/','/','Http','暂无说明',17);
/*!40000 ALTER TABLE `mainweb_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_domain_check`
--

DROP TABLE IF EXISTS `mainweb_domain_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_domain_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_abstract` varchar(50) NOT NULL,
  `api_description` varchar(100) NOT NULL,
  `api_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `domain_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_domain_check_985eba03` (`domain_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_check`
--

LOCK TABLES `mainweb_domain_check` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_check` DISABLE KEYS */;
INSERT INTO `mainweb_domain_check` VALUES (1,'android接口','详情页','android/dynamic.php?mod=minfo&ctl=cloud&act=import&pcode=010510000&version=6.1.1&lang=chs&region=CN','暂无说明',3),(2,'api第三方接口','mms','/mms/inner/albumInfo/get?id=82180&amode=0&lang=zh_cn&region=CN&token=c50fbed0f7510783c1ea3c3a2c6c3d50&platform=msite','暂无说明',9),(3,'android接口','lua接口','android/dynamic.php?luamod=main&mod=live&ctl=liveHome&act=index&clientId=1004&pcode=010210000&version=6.6.1&belongArea=100&lang=chs&region=CN','暂无说明',3);
/*!40000 ALTER TABLE `mainweb_domain_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_domain_idc`
--

DROP TABLE IF EXISTS `mainweb_domain_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_domain_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idc` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_idc`
--

LOCK TABLES `mainweb_domain_idc` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_idc` DISABLE KEYS */;
INSERT INTO `mainweb_domain_idc` VALUES (1,'中国北京电信','中国北京电信'),(2,'中国北京联通','中国北京联通'),(3,'北京BGP','北京BGP');
/*!40000 ALTER TABLE `mainweb_domain_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_domain_ip`
--

DROP TABLE IF EXISTS `mainweb_domain_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_domain_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `option` varchar(10) NOT NULL,
  `comment` longtext NOT NULL,
  `description_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `slb_node` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_domain_ip_73b5be45` (`description_id`),
  KEY `mainweb_domain_ip_3db78b68` (`name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_ip`
--

LOCK TABLES `mainweb_domain_ip` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_ip` DISABLE KEYS */;
INSERT INTO `mainweb_domain_ip` VALUES (1,'111.206.212.239','Valid','0','暂无说明',2,3,'0'),(2,'36.110.223.251','Valid','0','暂无说明',1,3,'0'),(3,'123.59.122.228','Valid','0','暂无说明',1,3,'0'),(4,'211.154.225.201','Valid','0','暂无说明',2,6,'0'),(5,'36.110.148.237','Valid','0','暂无说明',1,7,'0'),(6,'120.132.127.192','Valid','0','暂无说明',3,8,'0'),(7,'10.127.98.116','Valid','0','暂无说明',1,9,'0'),(8,'10.110.108.44','Valid','0','暂无说明',1,9,'0'),(9,'10.183.96.230','Valid','0','暂无说明',1,9,'0');
/*!40000 ALTER TABLE `mainweb_domain_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_product`
--

DROP TABLE IF EXISTS `mainweb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `area_type_id` int(11) NOT NULL,
  `mttr_h` varchar(100) NOT NULL,
  `slo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_product_2401735c` (`area_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_product`
--

LOCK TABLES `mainweb_product` WRITE;
/*!40000 ALTER TABLE `mainweb_product` DISABLE KEYS */;
INSERT INTO `mainweb_product` VALUES (1,'mobile_proxy_cn','移动视频基线代理层','张磊15','暂无说明',1,'1','99.9%'),(2,'half_screen_cn','移动视频基线半屏播放','张磊15','暂无说明',1,'1','99.9%'),(3,'hd-cn','大陆互动','杨宗鉴','暂无说明',1,'1','99.9%'),(4,'tv-cibn-api-cn','tv大屏-国广api','邓利维','暂无说明',1,'1','99.9%'),(5,'push-test-cn','配置推送、软件安装','史小云','暂无说明',1,'1','99.9%'),(6,'i-api-cn','CMS','zoulei@le.com','暂无说明',1,'1','99.9%'),(7,'m-api-cn','M站api层','张磊15','暂无说明',1,'1','99.9%'),(8,'geo-cn','位置服务','张磊15','暂无说明',1,'1','99.9%'),(9,'lead_half_screen_cn','新领先版半屏播放','张磊15','暂无说明',1,'1','99.9%'),(10,'tv-letv-api-cn','乐视TV自有版api','邓利维','暂无说明',1,'1','99.9%'),(11,'common-cn','IDC机房服务','史小云','暂无说明',1,'1','99.9%'),(12,'tv-letv-daemon-cn','Timer/Daemon/代理','邓利维','暂无说明',1,'1','99.9%'),(13,'act-report-letv-cn','升级服务','王胜凯','暂无说明',1,'1','99.9%'),(14,'tv-letv-static-cn','自有版静态','邓利维','暂无说明',1,'1','99.9%'),(15,'s-live-static-cn','手机live静态','王胜凯','暂无说明',1,'1','99.9%'),(16,'sso-cn','sso认证','杨宗鉴','暂无说明',1,'1','99.9%'),(17,'salt-cn','salt,git,rpm','史小云','暂无说明',1,'1','99.9%');
/*!40000 ALTER TABLE `mainweb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_progress`
--

DROP TABLE IF EXISTS `mainweb_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  `product_rel_id` int(11) NOT NULL,
  `progress_rel_id` int(11) NOT NULL,
  `server_rel_id` int(11) NOT NULL,
  `config_content` longtext NOT NULL,
  `config_name` varchar(100) NOT NULL,
  `config_name_rel_id` int(11) NOT NULL,
  `config_path` varchar(100) NOT NULL,
  `progress_port` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_progress_4b3c968b` (`product_rel_id`),
  KEY `mainweb_progress_66afcfb0` (`progress_rel_id`),
  KEY `mainweb_progress_c7f0ca4f` (`server_rel_id`),
  KEY `mainweb_progress_0d6badd1` (`config_name_rel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_progress`
--

LOCK TABLES `mainweb_progress` WRITE;
/*!40000 ALTER TABLE `mainweb_progress` DISABLE KEYS */;
INSERT INTO `mainweb_progress` VALUES (4,'mysql慢日志','暂无说明',4,3,6,'格式','tomcat1-mysql.log',5,'/letv/logs/tomcat/iptv','8080'),(5,'升级日志','暂无说明',4,3,6,'format','tomcat1-upgrade.log',5,'/letv/logs/tomcat/iptv','8080'),(6,'启动','暂无说明',4,3,6,'#!/bin\r\n','start.sh',6,'/letv/app/tomcat-upgrade-1/bin','8080'),(7,'重启','暂无说明',4,3,6,'#!','restart.sh',6,'/letv/app/tomcat-upgrade-1/bin','8080'),(8,'关闭','暂无说明',4,3,6,'#!','stop.sh',6,'/letv/app/tomcat-upgrade-1/bin','8080'),(9,'队列消费','依赖环境：\r\nini:\r\nextension = \"cqpid.so\"',7,4,8,'# Mms & Cms 队列服务\r\n*/1 * * * * /usr/local/php/bin/php /letv/www/msite/www/swiftq.php notice_cms updateCms 2 > /dev/null 2>&1\r\n*/1 * * * * /usr/local/php/bin/php /letv/www/msite/www/swiftq.php notice_mms updateMms 20 &> /dev/null','root',4,'/var/spool/cron','/'),(10,'队列消费','安装依赖包：\r\nyum -y install cyrus-sasl-md5 qpid-cpp-client',7,5,8,'php.ini\r\nextension = \"cqpid.so\"\r\n','cqpid.so',4,'/usr/local/php/lib/php/extensions/no-debug-non-zts-20121212','/'),(11,'消息队列-主','根据CMS队列清缓存',2,4,8,'#根据队列清缓存\r\n*/1 * * * * /bin/sh /letv/sh/queue.sh','root',4,'/var/spool/cron/','/'),(12,'刷新频道推荐数据','刷新频道推荐数据',2,4,8,'#!/bin/bash\r\n#刷新频道推荐数据\r\nDD=`ps aux |grep -v \'/usr/bin/timeout\'|grep \'queue.php updatemms updateMms\'|grep -v grep|wc -l`\r\nif [ $DD -ge 4 ]\r\nthen\r\necho \"$DD OK\"\r\nelse\r\nnohup /usr/bin/timeout 300 /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/queue.php updatemms updateMms 4 >> /letv/logs/queue.log 2>&1 &\r\nfi','queue.sh',7,'/letv/sh/','/'),(13,'消息队列-主','暂无说明',2,4,8,'2017-12-21 16:25:53 MSG:{\"LetvMMSMessage\":{\"jobId\":1513844753653,\"messageActionCode\":105,\"messageModuleCode\":0,\"properties\":{\"id\":31316732,\"multiSite\":{\"cascadeSite\":{\"add\":[],\"remove\":[],\"update\":[]},\"sourceSite\":\"CN\"},\"playPlatform\":{\"new\":\",420001,420003,420005,420007,\",\"old\":\",420001,420003,420005,420007,\"},\"platformTs\":\"null\",\"cid\":\"1009\",\"sourceId\":\"200001\"},\"redeliveryMode\":\"NoRedelivery\"}}','queue.log',5,'/letv/logs/','/'),(14,'热点更新','一个机房执行一个热点更新脚本',2,4,9,'MAILTO=\"\"\r\n*/20 * * * * /usr/sbin/ntpdate pool.ntp.org > /dev/null 2>&1\r\n\r\n#日志切割\r\n03 00 * * * /letv/logs/rotate_nginx.sh 2>&1>> /letv/logs/rotate.log\r\n\r\n#删除日志\r\n00 02 * * * /usr/bin/find /letv/logs/*.log.* -mtime +6 | xargs -i rm -f \"{}\" \\;\r\n#保留日志\r\n30 00 * * * sh /letv/mobile_logs/shell/bak_log.sh\r\n\r\n#根据队列清缓存\r\n#*/1 * * * * /bin/sh /letv/sh/queue.sh\r\n10,30,50 * * * *  /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php shm updateShmVote >/dev/null 2>&1\r\n\r\n#半屏页自动降级，1分钟查找一次日志并写入shm 可以用ipcs查看 紧急用ipcrm删除\r\n*/1 * * * *   /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php downgrade setDowngrade >/dev/null 2>&1\r\n\r\n\r\n#半屏播放定时任务，Backup For 111.206.208.28\r\n#热点\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1002698454 420003 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1002698454 420003 cht\r\n#社会ios\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062699 420003 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062699 420003 cht\r\n#社会安卓\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062699 420003_1 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062699 420003_1 cht\r\n#八卦ios\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062702 420003 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062702 420003 cht\r\n#八卦安卓\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062702 420003_1 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062702 420003_1 cht\r\n#搞笑ios\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062706 420003 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062706 420003 cht\r\n#搞笑安卓\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062706 420003_1 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062706 420003_1 cht\r\n#猎奇ios\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062707 420003 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062707 420003 cht\r\n#猎奇安卓\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062707 420003_1 chs\r\n*/10 * * * * /usr/local/php/bin/php /letv/www/api.mob.app.letv.com/v6.1/shell.php hotpoint readydata 1003062707 420003_1 cht\r\n#分析日志生成csv文件 by time2k\r\n10 2 * * *  /letv/webadmin_data/analysis_api_log.sh >/dev/null 2>&1\r\n10 2 * * *  /letv/webadmin_data/analysis_api_switch_log.sh >/dev/null 2>&1\r\n0 5 * * * /usr/bin/rsync -av /letv/webadmin_data/daily/*.csv 10.110.123.123::letv_logs_daily/mainland_bigserver/ >>/letv/logs/rsync_letv_logs_daily.log 2>&1','root',4,'/var/spool/cron/','/');
/*!40000 ALTER TABLE `mainweb_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_progress_type`
--

DROP TABLE IF EXISTS `mainweb_progress_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_progress_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `progress_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_progress_type`
--

LOCK TABLES `mainweb_progress_type` WRITE;
/*!40000 ALTER TABLE `mainweb_progress_type` DISABLE KEYS */;
INSERT INTO `mainweb_progress_type` VALUES (1,'nginx-ops','nginx代理'),(2,'rsync','rsync'),(3,'tomcat','tomcat'),(4,'crontab','crontab定时计划'),(5,'php-extend','php扩展库');
/*!40000 ALTER TABLE `mainweb_progress_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_server`
--

DROP TABLE IF EXISTS `mainweb_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `public_ip` varchar(100) NOT NULL,
  `private_ip` varchar(100) NOT NULL,
  `idc_location` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `url_path` varchar(100) NOT NULL,
  `option` varchar(10) NOT NULL,
  `status` varchar(7) NOT NULL,
  `comment` longtext NOT NULL,
  `product_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `ha_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_server_9bea82de` (`product_id`),
  KEY `mainweb_server_5dc6e1b7` (`server_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_server`
--

LOCK TABLES `mainweb_server` WRITE;
/*!40000 ALTER TABLE `mainweb_server` DISABLE KEYS */;
INSERT INTO `mainweb_server` VALUES (9,'API','127.0.0.1','123.59.177.41','10.110.220.41','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',4,6,'1'),(10,'WEB服务器','127.0.0.1','/','10.110.50.36','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(11,'WEB服务器','127.0.0.1','/','10.110.50.35','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(12,'WEB服务器','127.0.0.1','/','10.110.50.24','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(13,'WEB服务器','127.0.0.1','/','10.110.50.23','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(14,'WEB服务器','127.0.0.1','/','10.110.50.28','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(15,'WEB服务器','127.0.0.1','/','10.110.50.27','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',2,6,'1'),(16,'WEB服务器-上半屏','127.0.0.1','/','10.110.50.39','北京市-大兴区-天地祥云机房','80','/play','0','Valid','暂无说明',2,6,'1'),(17,'WEB服务器-上半屏','127.0.0.1','/','10.110.50.38','北京市-大兴区-天地祥云机房','80','/play','0','Valid','暂无说明',2,6,'1'),(18,'消息队列-主','127.0.0.1','/','10.110.50.36','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明\r\n10.130.208.28因安外联通机房下线迁移到10.110.50.36  \r\n',2,8,'1'),(19,'API','127.0.0.1','123.59.177.40','10.110.220.40','北京市-大兴区-天地祥云机房','80','/api.itv.cp21.ott.cibntv.net_all','0','Valid','暂无说明',4,6,'1'),(20,'Mms（媒资) & Cms(内容管理) 队列服务','127.0.0.1','123.59.122.31','10.110.122.31','北京市-大兴区-天地祥云机房','80','/','0','Valid','消息队列是更新cbase缓存。',7,8,'0'),(21,'消息队列-从','127.0.0.1','/','10.110.50.35  ','北京市-大兴区-天地祥云机房','/','/','0','Invalid','是冷备。\r\n配置与主一致，在执行计划中被注释。',2,8,'1'),(22,'WEB服务器','127.0.0.1','111.206.212.173','10.130.212.173','北京市-朝阳区-北京安外联通4F','80','/','0','Valid','暂无说明',8,6,'1'),(23,'视频热点更新','127.0.0.1','/','10.110.50.23','北京市-大兴区-天地祥云机房','/','/','0','Valid','暂无说明',2,9,'0'),(24,'视频热点更新','127.0.0.1','/','10.180.1.234','北京市-朝阳区-兆维电信爱立信机房4F-3','/','/','0','Invalid','一个机房一个定时',2,9,'0'),(25,'Timer/Daemon/代理','127.0.0.1','/','10.112.33.63','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',12,6,'1'),(26,'Timer/Daemon/代理','127.0.0.1','/','10.112.33.203','北京市-大兴区-天地祥云机房','80','/','0','Valid','暂无说明',12,6,'1'),(27,'WEB服务器','127.0.0.1','220.181.155.113','10.180.92.26','北京市-朝阳区-兆维电信爱立信机房','80','/','0','Valid','暂无说明',17,6,'0');
/*!40000 ALTER TABLE `mainweb_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_server_type`
--

DROP TABLE IF EXISTS `mainweb_server_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_server_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `server_config_name` varchar(100) NOT NULL,
  `server_config_path` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_server_type`
--

LOCK TABLES `mainweb_server_type` WRITE;
/*!40000 ALTER TABLE `mainweb_server_type` DISABLE KEYS */;
INSERT INTO `mainweb_server_type` VALUES (7,'cbase','cbase集群','moxi','/etc/sysconfig/moxi','暂无说明'),(6,'web_server','WEB服务器','php','/letv/www','暂无说明'),(8,'message_consume','message_consume','queue.php updatemms updateMms 4','/letv/www/api.mob.app.letv.com/v6.1','/letv/www/api.mob.app.letv.com/v6.1/queue.php updatemms updateMms 4'),(9,'app-hotpoint','视频热点','root','/var/spool/cron/root','app视频热点定时');
/*!40000 ALTER TABLE `mainweb_server_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_transaction_type`
--

DROP TABLE IF EXISTS `mainweb_transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_transaction_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_transaction_type`
--

LOCK TABLES `mainweb_transaction_type` WRITE;
/*!40000 ALTER TABLE `mainweb_transaction_type` DISABLE KEYS */;
INSERT INTO `mainweb_transaction_type` VALUES (1,'故障分析处理','故障分析处理','暂无说明'),(2,'日常报警处理','日常琐事类','暂无说明'),(3,'协助业务支持','日常琐事类','暂无说明'),(4,'工程架构规划','学习研发','暂无说明'),(5,'业务上线升级','日常琐事类','暂无说明'),(6,'业务部署迁移','自动化梳理','暂无说明');
/*!40000 ALTER TABLE `mainweb_transaction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainweb_undo`
--

DROP TABLE IF EXISTS `mainweb_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainweb_undo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `undo_event` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `status` varchar(8) NOT NULL,
  `comment` longtext NOT NULL,
  `product_rel_id` int(11) NOT NULL,
  `finish_time` datetime NOT NULL,
  `priority` varchar(4) NOT NULL,
  `transaction_rel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_undo_4b3c968b` (`product_rel_id`),
  KEY `mainweb_undo_bba72bd3` (`transaction_rel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_undo`
--

LOCK TABLES `mainweb_undo` WRITE;
/*!40000 ALTER TABLE `mainweb_undo` DISABLE KEYS */;
INSERT INTO `mainweb_undo` VALUES (1,'redis调整','redis配置haproxy调整','/','2017-12-21 10:19:00','Finished','暂无说明',4,'2017-12-25 11:43:00','P3',1),(2,'消息队列调整','消息队列调整','10.130.208.28','2017-12-21 10:20:00','Finished','暂无说明',2,'2017-12-21 09:43:51','P3',1),(3,'节点无流量','节点无流量','/','2017-12-21 10:20:00','Finished','网卡调整忘上线',8,'2017-12-21 09:43:51','P3',1),(4,'部署上线','部署上线','/','2017-12-21 10:31:00','Finished','暂无说明',9,'2017-12-21 09:43:51','P3',1),(5,'log备份','log备份','10.183.222.171','2017-12-20 10:39:00','Finished','暂无说明\r\n10.130.211.156\r\n10.130.211.155\r\n10.183.222.172\r\n10.183.222.171\r\n需：\r\n#tomcat 和nginx日志切割\r\n10 0 * * * /bin/sh /letv/itv_logs/shell_script/tv-api_nginx_tomcat-cutlog.sh &>/tmp/cut.log\r\n此在gluster上，已经丢失。\r\n\r\n配置服务：\r\n10.183.222.171\r\n/letv/bin/nginx_tomcat_log_cut_gz.sh\r\ncrontab:\r\n10 0 * * * /bin/sh /letv/bin/nginx_tomcat_log_cut_gz.sh &>/tmp/cut.log\r\n12-22号验证日志切割。\r\n\r\n\r\n',10,'2017-12-21 09:43:00','P3',1),(6,'日志切割','日志切割丢失','/','2017-12-20 14:43:00','Finished','暂无说明\r\n /letv/logs/rotate_nginx.sh\r\nsed -i \"s/3day/7day/g\" /letv/logs/rotate_nginx.sh;cat  /letv/logs/rotate_nginx.sh|grep 7day',2,'2017-12-22 10:17:00','P3',1),(7,'少量499','少量499','/','2017-12-19 14:56:00','resolved','暂无说明',4,'2017-12-21 09:43:00','P3',1),(8,'断电演练','兆维电信/安外联通断电2017年12月31日-2018年01月16日','/','2017-12-21 15:37:00','Undo','关于具体机房断网断电具体时间如下：\r\n兆维电信断电：2017年12月31日 \r\n\r\n安外联通断网：2018年01月16日 零时\r\n\r\n提示：\r\n1.为保障各核心服务正常运行，请各位管理人员提前迁移相关服务\r\n2.请各位同事以此封邮件为准\r\n\r\n特别说明：\r\n1.兆维电信机机房断电之后，届时将不会再提供任何服务\r\n2.兆维电信机机房断电不可恢复\r\n3.各业务线提前做好迁移准备，请各业务线负责人自行评估、把控迁移服务\r\n4.安外联通断电后。届时网络将完全中断\r\n',11,'2017-12-21 09:43:00','P1',1),(9,'机器登录慢','机器登录慢','111.206.210.200','2017-12-22 10:49:00','Finished','disk D状态\r\n/usr/sbin/postdrop -r\r\n###################\r\n  PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  COMMAND                                                               \r\n 1151 root      20   0     0    0    0 D 13.9  0.0   1343:28 jbd2/dm-1-8 \r\n 2124 root      20   0 80852 1552 1140 D  0.3  0.0   0:00.02 sendmail                                                              \r\n 4948 root      20   0 80852  688  512 S  0.3  0.0   0:00.01 sendmail\r\n\r\n解决：\r\n killall -9 postdrop\r\nps -ef | egrep \"sendmail|postdrop\" | grep -v grep |xargs kill\r\nps -ef | egrep \"sendmail|postdrop\" | grep -v grep |awk \'{print $2}\'|xargs kill\r\n防以后postfix挂了再出现类似问题，可以进行如下配置，将crond的邮件通知关闭：\r\n\r\n将/etc/crontab和/etc/cron.d/0hourly里的MAILTO=root修改为MAILTO=\"\"\r\n\r\ncrontab -e第一行增加一段MAILTO=\"\"\r\n\r\n',7,'2017-12-22 10:56:00','P3',1),(10,'slb等待上线','slb等待上线ip10.127.220.49','/','2017-12-23 10:06:00','Finished','http://jira.letv.cn/browse/UNIACCESS-116',3,'2017-12-23 10:06:00','P3',1),(11,'db迁移','db迁移','/','2017-12-23 09:07:00','Finished','暂无说明',1,'2017-12-23 10:07:00','P3',1),(12,'rsyncd进程','事务处理','/','2017-12-23 12:35:00','Finished','暂无说明',3,'2017-12-23 12:40:00','P3',1),(13,'磁盘满','log导致磁盘满','10.183.222.163','2017-12-26 10:53:00','resolved','/letv/bin/nginx_logrotate.sh\r\nLOGS=7\r\n改为：\r\nLOGS=3\r\n其它相关机器也要改。\r\n一文件40G',13,'2017-12-26 10:58:00','P3',1),(14,'服务部署迁移','服务部署迁移','10.112.33.63 10.112.33.203','2017-12-26 10:03:00','Undo','暂无说明',14,'2017-12-26 02:03:00','P2',1),(15,'静态服务迁移','迁移至cibn静态服务','/','2017-12-26 10:06:00','Finished','暂无说明',15,'2017-12-26 18:46:00','P3',1),(16,'sso.le.com有503','少量503','/','2017-12-25 19:09:00','Finished','可能是临时域名解析异常。\r\n查slb前端，backend都无报错。',16,'2017-12-25 22:09:00','P3',1),(17,'部署上线','新领先代理-半屏，基线代理','/','2017-12-26 10:12:00','Finished','暂无说明',1,'2017-12-26 11:12:00','P3',1),(18,'测试机返回502','111.206.211.171 api-oeco-itv.cp21.ott.cibntv.net 这个 https  服务 代理','你们本机是：10.110.122.199','2017-12-26 16:14:00','Finished','slb指向111.206.211.171 api-oeco-itv.cp21.ott.cibntv.net 这个 https  服务 代理\r\n做本机hosts\r\n后端是：10.110.122.199吗\r\n我:\r\ntelnet 10.110.122.199 6789\r\nTrying 10.110.122.199...\r\ntelnet: connect to address 10.110.122.199: Connection refused\r\n我:\r\n你们这端口拒绝了。',10,'2017-12-26 16:34:00','P3',1),(19,'指令执行慢','指令慢','10.180.153.36','2017-12-26 14:28:00','Undo','暂无说明',14,'2017-12-26 14:28:00','P3',1),(20,'服务迁移部署','迁移至天地祥云','/','2017-12-27 02:08:00','resolved','跟踪服务器进程，\r\n梳理服务。',8,'2017-12-27 22:29:00','P1',1),(21,'磁盘满','磁盘','10.110.60.45 ','2017-12-27 02:10:00','Finished','根目录满 /home',3,'2017-12-27 02:17:00','P3',2),(22,'部署上线','上线','/','2017-12-27 02:22:00','Finished','暂无说明\r\nhttp://dynamic.recommend.app.m.letv.com/android/dynamic.php?luamod=main&mod=live&ctl=liveHuya&act=channelList&channelId=2336&pcode=010210000&version=6.6.1&belongArea=100&lang=chs&region=CN\r\n接口返回数据量大。',1,'2017-12-27 03:12:00','P3',5),(23,'通用脚本数据结构','设计','/','2017-12-27 03:32:00','resolved','暂无说明',11,'2017-12-27 03:32:00','P3',4),(24,'服务部署迁移','服务部署迁移','10.180.92.26','2017-12-27 06:20:00','Undo','暂无说明',17,'2017-12-27 06:20:00','P1',6),(25,'登录慢','登录慢','111.206.210.200','2017-12-27 09:34:00','Finished','7.8G  7.8G     0 100% /var\r\n  PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  COMMAND                                                               \r\n20787 root      20   0  142m  40m  660 S 45.3  0.5 682:52.04 mysqld_safe                                                           \r\n 1151 root      20   0     0    0    0 D 15.3  0.0   2239:16 jbd2/dm-1-8 \r\n原因：\r\npostdrop进程，killall就好了。\r\n再删除文件 ：\r\n/var/log/syslog-ng/2017/12/18\r\n',7,'2017-12-27 09:40:00','P3',1);
/*!40000 ALTER TABLE `mainweb_undo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 17:43:58
