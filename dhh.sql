-- MySQL dump 10.13  Distrib 5.6.33, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `org`
--
drop database if exists project;

create database project;

use project;

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `imgPath` varchar(50) NOT NULL,
  `insto` varchar(255) DEFAULT NULL,
  `showTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;
INSERT INTO `org` VALUES (1,'创业邦','9542org_1.jpg','最懂创业者，离资本最近','2017-05-31'),(2,'拓荒族','7669org_2.gif','集办公、营销、孵化功能三位一体的企业发展生态圈','2017-05-31'),(3,'虫洞创业之家','555655a49695b7894.gif','爱因斯坦告诉我们，“虫洞”是连接宇宙遥远区','2017-05-31'),(4,'飞马旅','68775382d90890208.gif','中国首家服务业创业项目管理支持机构。','2017-05-31'),(5,'清华经管创业者加速器','599655a463120cdd1.gif','清华经管创业者加速器是一个体现清华精神','2017-05-31'),(7,'金榕树','24675590e20a39f1b.gif','何为金榕树计划?金榕树计划的全称是“金榕树自媒体连接创业计划”','2017-05-31'),(8,'硬创邦','75755590d8a2ec94f.gif','硬创邦是国内领先的硬件和创客教育平台，由雷锋网和好未来联合创办','2017-05-31'),(9,'聚创','85235590e27d9994b.gif','聚创为创业者免费提供咖啡、办公、孵化、融资对接等一站式服务','2017-05-31'),(10,'拉勾网','544554583a40562ab.gif','拉勾网，是一家专为工作3到10年的资深互联网从业者，提供成长方案的互联网垂直招聘网站。','2017-05-31');
/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streetactive`
--

DROP TABLE IF EXISTS `streetactive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streetactive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `imgPath` varchar(50) NOT NULL,
  `insto` varchar(255) DEFAULT NULL,
  `showTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streetactive`
--

LOCK TABLES `streetactive` WRITE;
/*!40000 ALTER TABLE `streetactive` DISABLE KEYS */;
INSERT INTO `streetactive` VALUES (2,'中关村创业大街首届手机摄影大赛报名啦...','4290bng1.png','活动时间：2016-11-21','2017-05-31'),(3,'招募 | 注册、孵化、资讯——创业会客厅线上平台...','6162bng2.png','活动时间：2016-07-07','2017-05-31'),(4,'\"午间时光\"，打开艺术...','1202bng3.png','活动时间：2016-11-28','2017-05-31'),(5,'[创业整理控]那些全球...','7097bng4.png','活动时间：2016-11-24','2017-05-31'),(9,'er','89451.jpg','er','2017-05-31'),(10,'uy','29441.jpg','yu','2017-05-31'),(11,'yui','16961.jpg','jhk','2017-05-31'),(12,'hj','61731.jpg','fgh','2017-05-31');
/*!40000 ALTER TABLE `streetactive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streetnew`
--

DROP TABLE IF EXISTS `streetnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streetnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `imgPath` varchar(50) NOT NULL,
  `insto` varchar(255) DEFAULT NULL,
  `showTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streetnew`
--

LOCK TABLES `streetnew` WRITE;
/*!40000 ALTER TABLE `streetnew` DISABLE KEYS */;
INSERT INTO `streetnew` VALUES (15,'北京市八一学校师生到创业大街“串门”','3568bng5.jpg','5月20日，北京市八一学校“八一创业营”的师生们在党委书记牛震云的带领下，来到中关村创业大街参观交流，近距离感受创新创业氛围。中关村创业大街相关负责人接待了“八一创业营”一行，并进行了详细讲解。“八一','2017-05-31'),(16,'海淀发力打造知识产权强区，创业大街做好配套服务','4564bng5.jpg','\r\n‍‍‍‍  5月2日，由北京市知识产权局、中关村管委会、海淀区人民政府主办，海淀园管委会、海淀区知识产权局承办的知识产权强区工程战略合作协议签约仪式暨2017中关村知识产权论坛在中','2017-05-31'),(17,'中关村知识产权帮扶计划在创业大街启动','183958abb87502963.jpg','4月21日， 中关村知识产权帮扶计划启动暨走进创业大街专场在全球创新社区成功举办，此次活动是为帮助相关企业和服务机构更好地了解《新政》，更有政府领导和行业专家为大家进行政策与知识产权有关的解读。中关村','2017-05-31'),(18,'新浪新创课今年第一讲在创业大街举行','665558abb87502963.jpg','4月20日下午，由新浪创业主办、新浪微筹集和中关村创业大街联合主办的新浪创业新创课进行了今年第一讲，活动邀请了九合创投创始合伙人王啸为主讲嘉宾，分享了自己在创业和转型投资人后对于创业的观','2017-05-31'),(19,'宝马汽车公司代表团来访中关村创业大街','638058abb87502963.jpg','4月11日，宝马汽车公司代表团一行到中关村创业大街参观交流，并就创新发展进行了座谈。    中关村创业大街运营公司有关负责人介绍了中关村创业大街的发展情','2017-05-31'),(20,'海淀区区长于军调研双创服务中心','211858abb87502963.jpg','4月10日，北京市海淀区委副书记、区长于军到海淀区综合服务中心调研，重点调研了综合服务中心与中关村创业大街联合共建的双创服务中心（创新创业会客厅），并对服务中心的下一步','2017-05-31');
/*!40000 ALTER TABLE `streetnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tom','123456','tom@itany.com'),(2,'jack','123456','jack@itany.com'),(3,'lucy','123456','lucy@itany.com'),(5,'fgh','123456','df@cv.com'),(6,'dhh','123456','dsf@xc.com'),(8,'sde','123','df@cv.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-02  9:08:17
