-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: masterDb
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

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
-- Table structure for table `app_attendancedetails`
--

DROP TABLE IF EXISTS `app_attendancedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_attendancedetails` (
  `attandance_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `studentMacAddress` varchar(20) NOT NULL,
  `raspPieMacAddress` varchar(20) NOT NULL,
  `attendanceStatus` varchar(200) NOT NULL,
  `classId` varchar(200) NOT NULL,
  PRIMARY KEY (`attandance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_attendancedetails`
--

LOCK TABLES `app_attendancedetails` WRITE;
/*!40000 ALTER TABLE `app_attendancedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_attendancedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_classdetails`
--

DROP TABLE IF EXISTS `app_classdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_classdetails` (
  `className` varchar(200) NOT NULL,
  `classId` varchar(200) NOT NULL,
  `classDay` int(11) DEFAULT NULL,
  `classEndTime` time DEFAULT NULL,
  `classStartTime` time DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_classdetails`
--

LOCK TABLES `app_classdetails` WRITE;
/*!40000 ALTER TABLE `app_classdetails` DISABLE KEYS */;
INSERT INTO `app_classdetails` VALUES ('GC1','1',6,'11:26:42','11:26:41'),('CMPE273','CMPE273',1,'11:51:05','11:51:04');
/*!40000 ALTER TABLE `app_classdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_classprofessormapping`
--

DROP TABLE IF EXISTS `app_classprofessormapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_classprofessormapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` varchar(200) NOT NULL,
  `professorId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_classprofessormapping`
--

LOCK TABLES `app_classprofessormapping` WRITE;
/*!40000 ALTER TABLE `app_classprofessormapping` DISABLE KEYS */;
INSERT INTO `app_classprofessormapping` VALUES (1,'CMPE273',1);
/*!40000 ALTER TABLE `app_classprofessormapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_professordetails`
--

DROP TABLE IF EXISTS `app_professordetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_professordetails` (
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `professorId` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`professorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_professordetails`
--

LOCK TABLES `app_professordetails` WRITE;
/*!40000 ALTER TABLE `app_professordetails` DISABLE KEYS */;
INSERT INTO `app_professordetails` VALUES ('Professor Aung','GS1',1,'gp1gs1'),('GP2','GS2',2,'gp2gs2');
/*!40000 ALTER TABLE `app_professordetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_studentclassmapping`
--

DROP TABLE IF EXISTS `app_studentclassmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_studentclassmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `classId` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_studentclassmapping`
--

LOCK TABLES `app_studentclassmapping` WRITE;
/*!40000 ALTER TABLE `app_studentclassmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_studentclassmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_studentdetails`
--

DROP TABLE IF EXISTS `app_studentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_studentdetails` (
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `studentId` int(11) NOT NULL,
  `macAddress` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  UNIQUE KEY `app_studentdetails_macAddress_19a55675_uniq` (`macAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_studentdetails`
--

LOCK TABLES `app_studentdetails` WRITE;
/*!40000 ALTER TABLE `app_studentdetails` DISABLE KEYS */;
INSERT INTO `app_studentdetails` VALUES ('GS1','SS1',1,'11:11:11:11:11:11','gs1ss1@gmail.com'),('GS2','SS2',2,'22:22:22:22:22:22','gs2ss2@gmail.com');
/*!40000 ALTER TABLE `app_studentdetails` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add attendance details',7,'add_attendancedetails'),(20,'Can change attendance details',7,'change_attendancedetails'),(21,'Can delete attendance details',7,'delete_attendancedetails'),(22,'Can add professor details',8,'add_professordetails'),(23,'Can change professor details',8,'change_professordetails'),(24,'Can delete professor details',8,'delete_professordetails'),(25,'Can add class professor mapping',9,'add_classprofessormapping'),(26,'Can change class professor mapping',9,'change_classprofessormapping'),(27,'Can delete class professor mapping',9,'delete_classprofessormapping'),(28,'Can add student details',10,'add_studentdetails'),(29,'Can change student details',10,'change_studentdetails'),(30,'Can delete student details',10,'delete_studentdetails'),(31,'Can add class details',11,'add_classdetails'),(32,'Can change class details',11,'change_classdetails'),(33,'Can delete class details',11,'delete_classdetails'),(34,'Can add student class mapping',12,'add_studentclassmapping'),(35,'Can change student class mapping',12,'change_studentclassmapping'),(36,'Can delete student class mapping',12,'delete_studentclassmapping');
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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$ubZFsR4vJH3z$RUtqsLsUCQIwCTvaA40Mwvem9//AtugZp3fpGDDJ+8E=','2018-03-12 11:41:03',1,'admin','','','gurtajs4@gmail.com',1,1,'2018-03-12 07:38:05'),(2,'pbkdf2_sha256$100000$LmTDv3vQeaun$fm0UbLDGVlZUUsgyyQ3mCPUNvpNFdCDNdTqEp+0ORHs=','2018-03-12 11:33:27',1,'gp2','GP2','GS2','',0,1,'2018-03-12 11:33:30');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36);
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-12 11:25:28','1','StudentDetails object (1)',1,'[{\"added\": {}}]',10,1),(2,'2018-03-12 11:26:08','2','StudentDetails object (2)',1,'[{\"added\": {}}]',10,1),(3,'2018-03-12 11:26:43','1','ClassDetails object (1)',1,'[{\"added\": {}}]',11,1),(4,'2018-03-12 11:27:23','1','ProfessorDetails object (1)',1,'[{\"added\": {}}]',8,1),(5,'2018-03-12 11:27:38','1','ClassProfessorMapping object (1)',1,'[{\"added\": {}}]',9,1),(6,'2018-03-12 11:29:41','1','ClassProfessorMapping object (1)',2,'[]',9,1),(7,'2018-03-12 11:32:17','2','gp1',1,'[{\"added\": {}}]',3,1),(8,'2018-03-12 11:33:31','2','gp1',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"is_superuser\", \"user_permissions\", \"last_login\", \"date_joined\"]}}]',3,1),(9,'2018-03-12 11:35:16','1','ProfessorDetails object (1)',2,'[]',8,1),(10,'2018-03-12 11:35:51','2','ProfessorDetails object (2)',1,'[{\"added\": {}}]',8,1),(11,'2018-03-12 11:36:01','11','ProfessorDetails object (11)',2,'[{\"changed\": {\"fields\": [\"professorId\"]}}]',8,1),(12,'2018-03-12 11:51:12','CMPE273','ClassDetails object (CMPE273)',1,'[{\"added\": {}}]',11,1),(13,'2018-03-12 11:52:01','1','ClassProfessorMapping object (1)',2,'[{\"changed\": {\"fields\": [\"classId\"]}}]',9,1),(14,'2018-03-12 11:52:23','11','ProfessorDetails object (11)',3,'',8,1),(15,'2018-03-12 11:58:36','1','ProfessorDetails object (1)',2,'[{\"changed\": {\"fields\": [\"firstName\"]}}]',8,1),(16,'2018-03-12 12:19:13','1','ProfessorDetails object (1)',2,'[]',8,1),(17,'2018-03-12 12:19:28','2','ProfessorDetails object (2)',2,'[]',8,1),(18,'2018-03-12 12:20:30','2','gp2',2,'[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\"]}}]',3,1),(19,'2018-03-12 12:32:06','1','ProfessorDetails object (1)',2,'[]',8,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','attendancedetails'),(11,'app','classdetails'),(9,'app','classprofessormapping'),(8,'app','professordetails'),(12,'app','studentclassmapping'),(10,'app','studentdetails'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-12 07:29:22'),(2,'auth','0001_initial','2018-03-12 07:29:22'),(3,'admin','0001_initial','2018-03-12 07:29:22'),(4,'admin','0002_logentry_remove_auto_add','2018-03-12 07:29:22'),(5,'app','0001_initial','2018-03-12 07:29:23'),(6,'app','0002_auto_20180311_0423','2018-03-12 07:29:23'),(7,'contenttypes','0002_remove_content_type_name','2018-03-12 07:29:23'),(8,'auth','0002_alter_permission_name_max_length','2018-03-12 07:29:23'),(9,'auth','0003_alter_user_email_max_length','2018-03-12 07:29:23'),(10,'auth','0004_alter_user_username_opts','2018-03-12 07:29:23'),(11,'auth','0005_alter_user_last_login_null','2018-03-12 07:29:23'),(12,'auth','0006_require_contenttypes_0002','2018-03-12 07:29:23'),(13,'auth','0007_alter_validators_add_error_messages','2018-03-12 07:29:23'),(14,'auth','0008_alter_user_username_max_length','2018-03-12 07:29:23'),(15,'auth','0009_alter_user_last_name_max_length','2018-03-12 07:29:24'),(16,'sessions','0001_initial','2018-03-12 07:29:24');
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
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('n095m3i1qql086eq2bzyxmof1orqwlc1','ODlhOTBlODVjNmE1MGNmNmEyMWJkMzM1Nzk3ZWVlNTVmY2NhMTFlNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI4NDc4NmQ1ZjdlNGMwYjE4YTBjODUzMGYyNTQwNzhjNDVlMGQ2ZDUxIn0=','2018-03-26 11:41:03');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-12 20:53:42
