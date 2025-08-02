-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: virtual_lab
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `solvedassignment`
--

DROP TABLE IF EXISTS `solvedassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solvedassignment` (
  `assi_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `assi_title` varchar(50) NOT NULL,
  `assi_answerFile` varchar(500) NOT NULL,
  PRIMARY KEY (`assi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solvedassignment`
--

LOCK TABLES `solvedassignment` WRITE;
/*!40000 ALTER TABLE `solvedassignment` DISABLE KEYS */;
INSERT INTO `solvedassignment` VALUES (5,'session','abcd','abc','ab','yoyo','file/Virtual Lab.pdf'),(6,'session','abcd','abc','ab','new Edited','file/Virtual Lab.pdf');
/*!40000 ALTER TABLE `solvedassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admlogin`
--

DROP TABLE IF EXISTS `tbl_admlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admlogin` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_username` varchar(50) NOT NULL,
  `adm_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admlogin`
--

LOCK TABLES `tbl_admlogin` WRITE;
/*!40000 ALTER TABLE `tbl_admlogin` DISABLE KEYS */;
INSERT INTO `tbl_admlogin` VALUES (1,'piyush','piyush');
/*!40000 ALTER TABLE `tbl_admlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assignment`
--

DROP TABLE IF EXISTS `tbl_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assignment` (
  `assi_id` int(10) NOT NULL AUTO_INCREMENT,
  `assi_title` varchar(45) NOT NULL,
  `assi_File` varchar(500) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`assi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assignment`
--

LOCK TABLES `tbl_assignment` WRITE;
/*!40000 ALTER TABLE `tbl_assignment` DISABLE KEYS */;
INSERT INTO `tbl_assignment` VALUES (1,'ggs','Erd.png','Shivraj colefe','sarf','BCS','new Sub'),(2,'null','Erd.png','Shivraj colefe','sarf','BCS','gggg'),(3,'check','Erd.png','Blank','new new','BCA','new Sub'),(4,'new Edited','file/Virtual Lab.pdf','abcd','abc','ab','session'),(5,'yoyo','file/Virtual Lab.pdf','abcd','abc','ab','session');
/*!40000 ALTER TABLE `tbl_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_class`
--

DROP TABLE IF EXISTS `tbl_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(40) NOT NULL,
  `class_img` varchar(45) NOT NULL,
  `class_descrip` varchar(200) NOT NULL,
  `college` varchar(45) DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_class`
--

LOCK TABLES `tbl_class` WRITE;
/*!40000 ALTER TABLE `tbl_class` DISABLE KEYS */;
INSERT INTO `tbl_class` VALUES (1,'BCS','Erd.png','new Description','new','new new'),(7,'BCA','Erd.png','BCa Desc','','Shinde dep'),(8,'ab','Img/Erd.png','session','abcd','abc');
/*!40000 ALTER TABLE `tbl_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_collage`
--

DROP TABLE IF EXISTS `tbl_collage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_collage` (
  `collage_id` int(11) NOT NULL AUTO_INCREMENT,
  `collage_name` varchar(100) NOT NULL,
  `collage_img` varchar(500) NOT NULL,
  `collage_descrip` varchar(200) NOT NULL,
  PRIMARY KEY (`collage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_collage`
--

LOCK TABLES `tbl_collage` WRITE;
/*!40000 ALTER TABLE `tbl_collage` DISABLE KEYS */;
INSERT INTO `tbl_collage` VALUES (1,'Shivraj colefe','','ffffffffffff'),(4,'Ghali college','','gg\r\n'),(9,'Blank','Erd.png','dean of the college '),(13,'saf','','saff'),(14,'saf','','saff'),(15,'new','','ss'),(16,'asf','','dd'),(17,'saf','','saff'),(19,'saf','','saff'),(21,'sds','imgIMG_20230305_112029.jpg','sfas'),(25,'Ghali college','','gg\r\n'),(26,'shivraj ','','fff'),(28,'Addded','Erd.png','Description'),(30,'new','','ss'),(31,'newasf','','s'),(32,'new','','ss'),(33,'Shivraj colefe','Img/SHREE5532 (2).png','sss'),(34,'fffffffffffffff','','fffffffffffffffff'),(35,'ss','','ss'),(37,'shree','Img/Erd.png','Description'),(38,'Blank','Img/Erd.png','Blank colg  desciption'),(39,'ggfff','Img/Erd.png','ggffdc'),(40,'abcd','Img/wallpaperflare.com_wallpaper.jpg','session');
/*!40000 ALTER TABLE `tbl_collage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compiler`
--

DROP TABLE IF EXISTS `tbl_compiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compiler` (
  `compiler_id` int(11) NOT NULL AUTO_INCREMENT,
  `compiler_name` varchar(50) NOT NULL,
  `compiler_link` varchar(200) NOT NULL,
  PRIMARY KEY (`compiler_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compiler`
--

LOCK TABLES `tbl_compiler` WRITE;
/*!40000 ALTER TABLE `tbl_compiler` DISABLE KEYS */;
INSERT INTO `tbl_compiler` VALUES (1,'asGas','agsga.com'),(2,'JAVA','www.javacompiler.com'),(5,'ff','youtube.com'),(6,'google','google.com'),(7,'java','https://www.programiz.com/java-programming/online-compiler/');
/*!40000 ALTER TABLE `tbl_compiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `college` varchar(45) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `dept_img` varchar(500) NOT NULL,
  `dept_descrip` varchar(200) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (5,'','safsaf','SHREE5532.png','ggs'),(7,'','sarf','','d'),(9,'new','new new','','gg'),(17,'new','Shinde dep','','shinde dep sc'),(18,'abcd','abc','Img/wallpaperflare.com_wallpaper.jpg','session test');
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_experiment`
--

DROP TABLE IF EXISTS `tbl_experiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_experiment` (
  `experiment_id` int(11) NOT NULL AUTO_INCREMENT,
  `experiment_name` varchar(50) NOT NULL,
  `experiment_file` varchar(500) NOT NULL,
  `experiment_descrip` varchar(200) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `compiler_link` varchar(500) NOT NULL,
  PRIMARY KEY (`experiment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_experiment`
--

LOCK TABLES `tbl_experiment` WRITE;
/*!40000 ALTER TABLE `tbl_experiment` DISABLE KEYS */;
INSERT INTO `tbl_experiment` VALUES (1,'asgasg','Erd.png','asfsaff','Addded','Shinde dep','BCS','new Sub',''),(2,'asgasga','Erd.png','asfsaffad','Ghali college','Shinde dep','BCS','new Sub',''),(4,'dd','','dddd','','','','','https://www.programiz.com/java-programming/online-compiler/'),(5,'asgasga','Erd.png','fffff','fffffffffffffff','new new','BCA','gggg','www.javacompiler.com'),(6,'session  Ecperiment','file/Virtual Lab.pdf','session','abcd','abc','ab','session','https://www.programiz.com/java-programming/online-compiler/');
/*!40000 ALTER TABLE `tbl_experiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notes`
--

DROP TABLE IF EXISTS `tbl_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notes` (
  `notes_id` int(11) NOT NULL AUTO_INCREMENT,
  `notes_title` varchar(50) NOT NULL,
  `notes_file` varchar(500) NOT NULL,
  `notes_descrip` varchar(200) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`notes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notes`
--

LOCK TABLES `tbl_notes` WRITE;
/*!40000 ALTER TABLE `tbl_notes` DISABLE KEYS */;
INSERT INTO `tbl_notes` VALUES (3,'Notes','Erd.png','Desciption Note','Ghali college','Shinde dep','BCS','new Sub'),(4,'session note','file/Virtual Lab.pdf','session Note Dc','abcd','abc','ab','session');
/*!40000 ALTER TABLE `tbl_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quiz`
--

DROP TABLE IF EXISTS `tbl_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_question` varchar(100) NOT NULL,
  `quiz_answer` varchar(1) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quiz`
--

LOCK TABLES `tbl_quiz` WRITE;
/*!40000 ALTER TABLE `tbl_quiz` DISABLE KEYS */;
INSERT INTO `tbl_quiz` VALUES (1,'commerce','new question1','2','','','','');
/*!40000 ALTER TABLE `tbl_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_register`
--

DROP TABLE IF EXISTS `tbl_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_register` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_firstname` varchar(20) NOT NULL,
  `reg_middlename` varchar(20) NOT NULL,
  `reg_lastname` varchar(20) NOT NULL,
  `adhar_no` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_1` bigint(10) NOT NULL,
  `contact_2` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `collage` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass_word` varchar(8) NOT NULL,
  `country` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `village` varchar(45) NOT NULL,
  `pin` int(11) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_register`
--

LOCK TABLES `tbl_register` WRITE;
/*!40000 ALTER TABLE `tbl_register` DISABLE KEYS */;
INSERT INTO `tbl_register` VALUES (1,'shreyash','shivraj','lakamble',312482347129,'2023-02-01','dhonukshe galli\r\nvishnu nivas',9561421023,9226380857,'shreyashslakamble101@gmail.com','1','1','1','shree5532','SHRI5532','1','2','2','1',416220),(2,'shreyash','shivraj','lakamble',312482347129,'2023-02-09','dhonukshe galli\r\nvishnu nivas',9561421023,9226380857,'shreyashslakamble101@gmail.com','1','2','3','shree5532','SHRI5532','1','2','3','1',416220),(3,'Session','session','session',272323232323,'2023-05-30','session',7038001196,1234567890,'session@gmail.com','abcd','abc','ab','session','session','1','3','2','2',416220);
/*!40000 ALTER TABLE `tbl_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `result_file` varchar(500) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_result`
--

LOCK TABLES `tbl_result` WRITE;
/*!40000 ALTER TABLE `tbl_result` DISABLE KEYS */;
INSERT INTO `tbl_result` VALUES (2,'file/Virtual Lab.pdf','abcd','abc','ab','session','session Result Title'),(3,'Erd.png','ss','Shinde dep','BCA','new Sub','Result Title'),(5,'null','Shivraj colefe','safsaf','BCS','new Sub','piyushadake9');
/*!40000 ALTER TABLE `tbl_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subject`
--

DROP TABLE IF EXISTS `tbl_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) NOT NULL,
  `subject_descrip` varchar(200) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subject`
--

LOCK TABLES `tbl_subject` WRITE;
/*!40000 ALTER TABLE `tbl_subject` DISABLE KEYS */;
INSERT INTO `tbl_subject` VALUES (7,'gggg','ggggggggggggg','Shivraj colefe','Shinde dep','BCA'),(8,'new Sub','new Sub desc','Shivraj colefe','safsaf','BCS'),(9,'new Sub','fff','Shivraj colefe','sarf','null'),(10,'new Sub','fff','abcd','abc','ab'),(11,'session','session','abcd','abc','ab');
/*!40000 ALTER TABLE `tbl_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_syllabus`
--

DROP TABLE IF EXISTS `tbl_syllabus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_syllabus` (
  `syllabus_id` int(11) NOT NULL AUTO_INCREMENT,
  `syllabus_title` varchar(50) NOT NULL,
  `syllabus_file` varchar(500) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`syllabus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_syllabus`
--

LOCK TABLES `tbl_syllabus` WRITE;
/*!40000 ALTER TABLE `tbl_syllabus` DISABLE KEYS */;
INSERT INTO `tbl_syllabus` VALUES (1,'asfasf','Erd.png','Shivraj colefe','sarf','BCS','new Sub'),(2,'session','file/Virtual Lab.pdf','abcd','abc','ab','session');
/*!40000 ALTER TABLE `tbl_syllabus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_videos`
--

DROP TABLE IF EXISTS `tbl_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_videos` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_tile` varchar(50) NOT NULL,
  `video_file` varchar(500) NOT NULL,
  `video_descrip` varchar(200) NOT NULL,
  `college` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_videos`
--

LOCK TABLES `tbl_videos` WRITE;
/*!40000 ALTER TABLE `tbl_videos` DISABLE KEYS */;
INSERT INTO `tbl_videos` VALUES (4,'video Title','Erd.png','Desc video','Addded','Shinde dep','null','new Sub'),(5,'session Video','video/videoplayback.mp4','session Video Dc','abcd','abc','ab','session');
/*!40000 ALTER TABLE `tbl_videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-02 15:00:27
