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
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add area_type',7,'add_area_type'),(20,'Can change area_type',7,'change_area_type'),(21,'Can delete area_type',7,'delete_area_type'),(22,'Can add product',8,'add_product'),(23,'Can change product',8,'change_product'),(24,'Can delete product',8,'delete_product'),(25,'Can add domain',9,'add_domain'),(26,'Can change domain',9,'change_domain'),(27,'Can delete domain',9,'delete_domain'),(28,'Can add domain_idc',10,'add_domain_idc'),(29,'Can change domain_idc',10,'change_domain_idc'),(30,'Can delete domain_idc',10,'delete_domain_idc'),(31,'Can add domain_ip',11,'add_domain_ip'),(32,'Can change domain_ip',11,'change_domain_ip'),(33,'Can delete domain_ip',11,'delete_domain_ip'),(34,'Can add domain_check',12,'add_domain_check'),(35,'Can change domain_check',12,'change_domain_check'),(36,'Can delete domain_check',12,'delete_domain_check'),(37,'Can add server_type',13,'add_server_type'),(38,'Can change server_type',13,'change_server_type'),(39,'Can delete server_type',13,'delete_server_type'),(40,'Can add server',14,'add_server'),(41,'Can change server',14,'change_server'),(42,'Can delete server',14,'delete_server'),(43,'Can add progress_type',15,'add_progress_type'),(44,'Can change progress_type',15,'change_progress_type'),(45,'Can delete progress_type',15,'delete_progress_type'),(46,'Can add progress',16,'add_progress'),(47,'Can change progress',16,'change_progress'),(48,'Can delete progress',16,'delete_progress'),(49,'Can add config_type',17,'add_config_type'),(50,'Can change config_type',17,'change_config_type'),(51,'Can delete config_type',17,'delete_config_type'),(52,'Can add config',18,'add_config'),(53,'Can change config',18,'change_config'),(54,'Can delete config',18,'delete_config'),(55,'Can add alter',19,'add_alter'),(56,'Can change alter',19,'change_alter'),(57,'Can delete alter',19,'delete_alter');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$5zuxvX1sRPxc$3fjxH/ZWeWaZp1q/nuhlTMQOaCukeE7x9wCFWEF3Q7w=','2017-11-28 06:44:30',1,'admin','','','19483834@qq.com',1,1,'2017-11-28 06:43:46');
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
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-11-28 07:53:33','1','ip状态',1,'',19,1),(2,'2017-11-28 07:56:44','1','中国大陆',1,'',7,1),(3,'2017-11-28 07:56:52','2','中国香港',1,'',7,1),(4,'2017-11-28 07:57:04','3','美国',1,'',7,1),(5,'2017-11-28 07:59:31','1','mobile_proxy_cn',1,'',8,1),(6,'2017-11-28 07:59:52','2','half_screen_cn',1,'',8,1),(7,'2017-11-28 08:37:28','1','dynamic.app.m.letv.com',1,'',9,1),(8,'2017-11-28 08:39:42','2','static.app.m.letv.com',1,'',9,1),(9,'2017-11-28 08:41:04','3','dynamic.app.m.letv.com',1,'',9,1),(10,'2017-11-28 08:46:50','1','dynamic.meizi.app.m.letv.com',2,'Changed domain.',9,1),(11,'2017-11-28 08:47:54','1','android接口',1,'',12,1),(12,'2017-11-28 08:50:07','1','中国北京电信',1,'',10,1),(13,'2017-11-28 08:50:14','2','中国北京联通',1,'',10,1),(14,'2017-11-28 08:54:11','1','111.206.212.239',1,'',11,1),(15,'2017-11-28 08:54:56','2','36.110.223.251',1,'',11,1),(16,'2017-11-28 08:55:13','3','123.59.122.228',1,'',11,1),(17,'2017-11-28 09:01:08','1','nginx代理',1,'',15,1),(18,'2017-11-28 09:03:29','1','web_server',1,'',13,1),(19,'2017-11-28 09:04:31','2','redis',1,'',13,1),(20,'2017-11-28 09:04:42','1','/',1,'',16,1),(21,'2017-11-28 09:08:07','1','web',1,'',14,1),(22,'2017-11-28 09:10:56','1','/',3,'',16,1),(23,'2017-11-28 09:16:00','2','nginx代理服务',1,'',16,1),(24,'2017-11-28 10:02:58','3','mcluster',1,'',13,1),(25,'2017-11-28 10:06:15','2','mcluster集群',1,'',14,1),(26,'2017-11-28 10:07:01','3','mcluster集群',1,'',14,1),(27,'2017-11-28 14:02:06','1','log',3,'',17,1),(28,'2017-11-28 14:05:21','3','tomcat',1,'',17,1),(29,'2017-11-28 14:12:39','1','业务',1,'',18,1),(30,'2017-11-28 14:13:46','2','第三方日志',1,'',18,1),(31,'2017-11-28 14:15:23','3','服务配置',1,'',18,1),(32,'2017-11-28 14:25:56','1','ip状态',2,'No fields changed.',19,1),(33,'2017-11-28 14:26:03','1','ip状态',2,'No fields changed.',19,1),(34,'2017-11-28 14:30:12','1','nginx代理',2,'Changed content.',15,1),(35,'2017-11-28 14:43:40','2','rsync',1,'',15,1),(36,'2017-11-28 14:48:40','2','nginx代理服务',2,'No fields changed.',16,1),(37,'2017-11-28 14:49:13','3','rsync',1,'',16,1),(38,'2017-11-28 14:49:32','2','nginx代理服务',2,'No fields changed.',16,1),(39,'2017-11-29 01:46:16','4','db',1,'',13,1),(40,'2017-11-29 01:46:43','3','mcluster3306',2,'Changed server_name.',13,1),(41,'2017-11-29 01:50:16','4','Chat DB',1,'',14,1),(42,'2017-11-29 01:52:10','5','Chat DB',1,'',14,1),(43,'2017-11-29 01:53:10','6','Chat DB',1,'',14,1),(44,'2017-11-29 01:54:52','3','hd-cn',1,'',8,1),(45,'2017-11-29 01:54:55','6','Chat DB',2,'Changed product.',14,1),(46,'2017-11-29 01:55:01','5','Chat DB',2,'Changed product.',14,1),(47,'2017-11-29 01:55:06','4','Chat DB',2,'Changed product.',14,1),(48,'2017-11-29 01:55:52','4','Chat DB',2,'Changed comment.',14,1),(49,'2017-11-29 01:59:56','3','mcluster3306',2,'Changed server_config_name and server_config_path.',13,1),(50,'2017-11-29 02:00:19','4','db',2,'No fields changed.',13,1),(51,'2017-11-29 02:05:31','5','queue-consume',1,'',13,1),(52,'2017-11-29 02:07:28','7','queue',1,'',14,1),(53,'2017-11-29 02:09:22','8','queue',1,'',14,1),(54,'2017-11-30 01:16:22','4','db-mysql',2,'Changed server_name.',13,1),(55,'2017-11-30 01:23:26','2','redis',2,'Changed config_type_name and description.',17,1),(56,'2017-11-30 01:25:21','3','服务配置',2,'No fields changed.',18,1),(57,'2017-11-30 02:35:53','3','rsync',3,'',16,1),(58,'2017-11-30 02:35:53','2','nginx代理服务',3,'',16,1),(59,'2017-12-05 02:41:48','5','queue-consume',3,'',13,1),(60,'2017-12-05 02:41:48','4','db-mysql',3,'',13,1),(61,'2017-12-05 02:41:48','3','mcluster3306',3,'',13,1),(62,'2017-12-05 02:41:48','2','redis',3,'',13,1),(63,'2017-12-05 02:41:48','1','web_server',3,'',13,1),(64,'2017-12-05 03:07:32','6','web_server',1,'',13,1),(65,'2017-12-05 03:08:13','7','cbase',1,'',13,1),(66,'2017-12-05 03:36:57','3','服务配置',3,'',18,1),(67,'2017-12-05 03:36:57','2','第三方日志',3,'',18,1),(68,'2017-12-05 03:36:57','1','业务',3,'',18,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'mainweb','area_type'),(8,'mainweb','product'),(9,'mainweb','domain'),(10,'mainweb','domain_idc'),(11,'mainweb','domain_ip'),(12,'mainweb','domain_check'),(13,'mainweb','server_type'),(14,'mainweb','server'),(15,'mainweb','progress_type'),(16,'mainweb','progress'),(17,'mainweb','config_type'),(18,'mainweb','config'),(19,'mainweb','alter');
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-28 06:42:47'),(2,'auth','0001_initial','2017-11-28 06:42:47'),(3,'admin','0001_initial','2017-11-28 06:42:47'),(4,'contenttypes','0002_remove_content_type_name','2017-11-28 06:42:47'),(5,'auth','0002_alter_permission_name_max_length','2017-11-28 06:42:48'),(6,'auth','0003_alter_user_email_max_length','2017-11-28 06:42:48'),(7,'auth','0004_alter_user_username_opts','2017-11-28 06:42:48'),(8,'auth','0005_alter_user_last_login_null','2017-11-28 06:42:48'),(9,'auth','0006_require_contenttypes_0002','2017-11-28 06:42:48'),(10,'mainweb','0001_initial','2017-11-28 06:42:49'),(11,'sessions','0001_initial','2017-11-28 06:42:49'),(12,'mainweb','0002_auto_20171128_0913','2017-11-28 09:13:42'),(13,'mainweb','0003_domain_ip_slb_node','2017-11-30 02:34:51'),(14,'mainweb','0004_auto_20171205_0244','2017-12-05 02:44:32');
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
INSERT INTO `django_session` VALUES ('od33awvzoxoaq1p5hiiimthkpnslyiui','ZWJjOWY4MmFiMjBhZjJkNjkzZjc0ZmEyMmJiN2QzYmIzNWNlZGMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZWEzZjZmMmVlMGQ3OTM0NWZiYzc5MDZhMTFkZjZiNTA3MGM5ZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-12-12 06:44:30');
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_config_type`
--

LOCK TABLES `mainweb_config_type` WRITE;
/*!40000 ALTER TABLE `mainweb_config_type` DISABLE KEYS */;
INSERT INTO `mainweb_config_type` VALUES (3,'tomcat','tomcat','暂无说明'),(2,'redis','redis','暂无说明');
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain`
--

LOCK TABLES `mainweb_domain` WRITE;
/*!40000 ALTER TABLE `mainweb_domain` DISABLE KEYS */;
INSERT INTO `mainweb_domain` VALUES (1,'dynamic.meizi.app.m.letv.com','dynamic.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2773','dlb.g5.letvlb.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',1),(2,'static.app.m.letv.com','static.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2955','vip.sf.cdnle.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',1),(3,'dynamic.app.m.letv.com','dynamic.app.m.letv.com','http://slbms.ops.lecloud.com/virtualhost/info/2773','dlb.g5.letvlb.com.','中国_北京_公共SLB2-g5-B','/','Http','暂无说明',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_check`
--

LOCK TABLES `mainweb_domain_check` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_check` DISABLE KEYS */;
INSERT INTO `mainweb_domain_check` VALUES (1,'android接口','详情页','android/dynamic.php?mod=minfo&ctl=cloud&act=import&pcode=010510000&version=6.1.1&lang=chs&region=CN','暂无说明',3);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_idc`
--

LOCK TABLES `mainweb_domain_idc` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_idc` DISABLE KEYS */;
INSERT INTO `mainweb_domain_idc` VALUES (1,'中国北京电信','中国北京电信'),(2,'中国北京联通','中国北京联通');
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_domain_ip`
--

LOCK TABLES `mainweb_domain_ip` WRITE;
/*!40000 ALTER TABLE `mainweb_domain_ip` DISABLE KEYS */;
INSERT INTO `mainweb_domain_ip` VALUES (1,'111.206.212.239','Valid','0','暂无说明',2,3,'0'),(2,'36.110.223.251','Valid','0','暂无说明',1,3,'0'),(3,'123.59.122.228','Valid','0','暂无说明',1,3,'0');
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
  PRIMARY KEY (`id`),
  KEY `mainweb_product_2401735c` (`area_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_product`
--

LOCK TABLES `mainweb_product` WRITE;
/*!40000 ALTER TABLE `mainweb_product` DISABLE KEYS */;
INSERT INTO `mainweb_product` VALUES (1,'mobile_proxy_cn','移动视频基线代理层','张磊15','暂无说明',1),(2,'half_screen_cn','移动视频基线半屏播放','张磊15','暂无说明',1),(3,'hd-cn','大陆互动','杨宗鉴','暂无说明',1);
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
  PRIMARY KEY (`id`),
  KEY `mainweb_progress_4b3c968b` (`product_rel_id`),
  KEY `mainweb_progress_66afcfb0` (`progress_rel_id`),
  KEY `mainweb_progress_c7f0ca4f` (`server_rel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_progress`
--

LOCK TABLES `mainweb_progress` WRITE;
/*!40000 ALTER TABLE `mainweb_progress` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_progress_type`
--

LOCK TABLES `mainweb_progress_type` WRITE;
/*!40000 ALTER TABLE `mainweb_progress_type` DISABLE KEYS */;
INSERT INTO `mainweb_progress_type` VALUES (1,'nginx-ops','nginx代理'),(2,'rsync','rsync');
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
  `status` varchar(5) NOT NULL,
  `comment` longtext NOT NULL,
  `product_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mainweb_server_9bea82de` (`product_id`),
  KEY `mainweb_server_5dc6e1b7` (`server_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_server`
--

LOCK TABLES `mainweb_server` WRITE;
/*!40000 ALTER TABLE `mainweb_server` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainweb_server_type`
--

LOCK TABLES `mainweb_server_type` WRITE;
/*!40000 ALTER TABLE `mainweb_server_type` DISABLE KEYS */;
INSERT INTO `mainweb_server_type` VALUES (7,'cbase','cbase集群','moxi','/etc/sysconfig/moxi','暂无说明'),(6,'web_server','WEB服务器','php','/letv/www','暂无说明');
/*!40000 ALTER TABLE `mainweb_server_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-05 15:21:11
