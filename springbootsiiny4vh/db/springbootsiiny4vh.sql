-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootsiiny4vh
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootsiiny4vh`
--

/*!40000 DROP DATABASE IF EXISTS `springbootsiiny4vh`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootsiiny4vh` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootsiiny4vh`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2024-02-04 14:02:28','关于我们标题标题','ABOUT US','<p>当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-02-04 14:02:28',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2024-02-04 14:02:28',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2024-02-04 14:02:28',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2024-02-04 14:02:28',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2024-02-04 14:02:28',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2024-02-04 14:02:28',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2024-02-04 14:02:28',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2024-02-04 14:02:28',18,'宇宙银河系地球1号','地某','13823888888','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chepiaoxinxi`
--

DROP TABLE IF EXISTS `chepiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chepiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepiaobianhao` varchar(200) DEFAULT NULL COMMENT '车票编号',
  `chezhanmingcheng` varchar(200) DEFAULT NULL COMMENT '车站名称',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `zuoweileixing` varchar(200) NOT NULL COMMENT '座位类型',
  `chufadi` varchar(200) NOT NULL COMMENT '出发地',
  `mudedi` varchar(200) NOT NULL COMMENT '目的地',
  `chufashijian` datetime NOT NULL COMMENT '出发时间',
  `banliejieshao` longtext COMMENT '班列介绍',
  `tupian` longtext NOT NULL COMMENT '图片',
  `chepiaojiage` double NOT NULL COMMENT '车票价格',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chepiaobianhao` (`chepiaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='车票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chepiaoxinxi`
--

LOCK TABLES `chepiaoxinxi` WRITE;
/*!40000 ALTER TABLE `chepiaoxinxi` DISABLE KEYS */;
INSERT INTO `chepiaoxinxi` VALUES (41,'2024-02-04 14:02:27','1111111111','车站名称1','车辆名称1','商务座','出发地1','目的地1','2024-02-04 22:02:27','班列介绍1','upload/chepiaoxinxi_tupian1.jpg,upload/chepiaoxinxi_tupian2.jpg,upload/chepiaoxinxi_tupian3.jpg',1,1,1,0,1),(42,'2024-02-04 14:02:27','2222222222','车站名称2','车辆名称2','商务座','出发地2','目的地2','2024-02-04 22:02:27','班列介绍2','upload/chepiaoxinxi_tupian2.jpg,upload/chepiaoxinxi_tupian3.jpg,upload/chepiaoxinxi_tupian4.jpg',2,2,2,0,2),(43,'2024-02-04 14:02:27','3333333333','车站名称3','车辆名称3','商务座','出发地3','目的地3','2024-02-04 22:02:27','班列介绍3','upload/chepiaoxinxi_tupian3.jpg,upload/chepiaoxinxi_tupian4.jpg,upload/chepiaoxinxi_tupian5.jpg',3,3,3,0,3),(44,'2024-02-04 14:02:27','4444444444','车站名称4','车辆名称4','商务座','出发地4','目的地4','2024-02-04 22:02:27','班列介绍4','upload/chepiaoxinxi_tupian4.jpg,upload/chepiaoxinxi_tupian5.jpg,upload/chepiaoxinxi_tupian6.jpg',4,4,4,0,4),(45,'2024-02-04 14:02:27','5555555555','车站名称5','车辆名称5','商务座','出发地5','目的地5','2024-02-04 22:02:27','班列介绍5','upload/chepiaoxinxi_tupian5.jpg,upload/chepiaoxinxi_tupian6.jpg,upload/chepiaoxinxi_tupian7.jpg',5,5,5,0,5),(46,'2024-02-04 14:02:27','6666666666','车站名称6','车辆名称6','商务座','出发地6','目的地6','2024-02-04 22:02:27','班列介绍6','upload/chepiaoxinxi_tupian6.jpg,upload/chepiaoxinxi_tupian7.jpg,upload/chepiaoxinxi_tupian8.jpg',6,6,6,0,6),(47,'2024-02-04 14:02:27','7777777777','车站名称7','车辆名称7','商务座','出发地7','目的地7','2024-02-04 22:02:27','班列介绍7','upload/chepiaoxinxi_tupian7.jpg,upload/chepiaoxinxi_tupian8.jpg,upload/chepiaoxinxi_tupian9.jpg',7,7,7,0,7),(48,'2024-02-04 14:02:27','8888888888','车站名称8','车辆名称8','商务座','出发地8','目的地8','2024-02-04 22:02:27','班列介绍8','upload/chepiaoxinxi_tupian8.jpg,upload/chepiaoxinxi_tupian9.jpg,upload/chepiaoxinxi_tupian10.jpg',8,8,8,0,8),(49,'2024-02-04 14:07:26','1707055617918','车站名称','车辆名称','商务座','出发地','目的地','2024-02-04 22:07:05','班列介绍班列介绍','upload/1707055639805.png',200,0,0,0,0);
/*!40000 ALTER TABLE `chepiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chepiaoyuding`
--

DROP TABLE IF EXISTS `chepiaoyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chepiaoyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepiaobianhao` varchar(200) DEFAULT NULL COMMENT '车票编号',
  `chezhanmingcheng` varchar(200) DEFAULT NULL COMMENT '车站名称',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `zuoweileixing` varchar(200) DEFAULT NULL COMMENT '座位类型',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `cheliangzhaopian` longtext COMMENT '车辆照片',
  `chepiaojiage` double DEFAULT NULL COMMENT '车票价格',
  `chepiaoshuliang` int(11) DEFAULT NULL COMMENT '车票数量',
  `dingdanjine` double DEFAULT NULL COMMENT '订单金额',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预订时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='车票预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chepiaoyuding`
--

LOCK TABLES `chepiaoyuding` WRITE;
/*!40000 ALTER TABLE `chepiaoyuding` DISABLE KEYS */;
INSERT INTO `chepiaoyuding` VALUES (51,'2024-02-04 14:02:27','车票编号1','车站名称1','车辆名称1','座位类型1','车牌号码1','upload/chepiaoyuding_cheliangzhaopian1.jpg,upload/chepiaoyuding_cheliangzhaopian2.jpg,upload/chepiaoyuding_cheliangzhaopian3.jpg',1,1,1,'2024-02-04 22:02:27','用户账号1','用户姓名1','未支付'),(52,'2024-02-04 14:02:27','车票编号2','车站名称2','车辆名称2','座位类型2','车牌号码2','upload/chepiaoyuding_cheliangzhaopian2.jpg,upload/chepiaoyuding_cheliangzhaopian3.jpg,upload/chepiaoyuding_cheliangzhaopian4.jpg',2,2,2,'2024-02-04 22:02:27','用户账号2','用户姓名2','未支付'),(53,'2024-02-04 14:02:27','车票编号3','车站名称3','车辆名称3','座位类型3','车牌号码3','upload/chepiaoyuding_cheliangzhaopian3.jpg,upload/chepiaoyuding_cheliangzhaopian4.jpg,upload/chepiaoyuding_cheliangzhaopian5.jpg',3,3,3,'2024-02-04 22:02:27','用户账号3','用户姓名3','未支付'),(54,'2024-02-04 14:02:27','车票编号4','车站名称4','车辆名称4','座位类型4','车牌号码4','upload/chepiaoyuding_cheliangzhaopian4.jpg,upload/chepiaoyuding_cheliangzhaopian5.jpg,upload/chepiaoyuding_cheliangzhaopian6.jpg',4,4,4,'2024-02-04 22:02:27','用户账号4','用户姓名4','未支付'),(55,'2024-02-04 14:02:27','车票编号5','车站名称5','车辆名称5','座位类型5','车牌号码5','upload/chepiaoyuding_cheliangzhaopian5.jpg,upload/chepiaoyuding_cheliangzhaopian6.jpg,upload/chepiaoyuding_cheliangzhaopian7.jpg',5,5,5,'2024-02-04 22:02:27','用户账号5','用户姓名5','未支付'),(56,'2024-02-04 14:02:27','车票编号6','车站名称6','车辆名称6','座位类型6','车牌号码6','upload/chepiaoyuding_cheliangzhaopian6.jpg,upload/chepiaoyuding_cheliangzhaopian7.jpg,upload/chepiaoyuding_cheliangzhaopian8.jpg',6,6,6,'2024-02-04 22:02:27','用户账号6','用户姓名6','未支付'),(57,'2024-02-04 14:02:27','车票编号7','车站名称7','车辆名称7','座位类型7','车牌号码7','upload/chepiaoyuding_cheliangzhaopian7.jpg,upload/chepiaoyuding_cheliangzhaopian8.jpg,upload/chepiaoyuding_cheliangzhaopian9.jpg',7,7,7,'2024-02-04 22:02:27','用户账号7','用户姓名7','未支付'),(58,'2024-02-04 14:02:27','车票编号8','车站名称8','车辆名称8','座位类型8','车牌号码8','upload/chepiaoyuding_cheliangzhaopian8.jpg,upload/chepiaoyuding_cheliangzhaopian9.jpg,upload/chepiaoyuding_cheliangzhaopian10.jpg',8,8,8,'2024-02-04 22:02:27','用户账号8','用户姓名8','未支付'),(59,'2024-02-04 14:17:32','1707055617918','车站名称','车辆名称','商务座','车牌号码','upload/1707056242678.webp',200,2,400,'2024-02-04 22:16:57','111','111','已支付');
/*!40000 ALTER TABLE `chepiaoyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschepiaoxinxi`
--

DROP TABLE IF EXISTS `discusschepiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschepiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车票信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschepiaoxinxi`
--

LOCK TABLES `discusschepiaoxinxi` WRITE;
/*!40000 ALTER TABLE `discusschepiaoxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusschepiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiudianxinxi`
--

DROP TABLE IF EXISTS `discussjiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiudianxinxi`
--

LOCK TABLES `discussjiudianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiudianxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (161,'2024-02-04 14:02:28','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放',0,'2024-02-04 22:02:28'),(162,'2024-02-04 14:02:28','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放',0,'2024-02-04 22:02:28'),(163,'2024-02-04 14:02:28','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放',0,'2024-02-04 22:02:28'),(164,'2024-02-04 14:02:28','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放',0,'2024-02-04 22:02:28'),(165,'2024-02-04 14:02:28','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放',0,'2024-02-04 22:02:28'),(166,'2024-02-04 14:02:28','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放',0,'2024-02-04 22:02:28'),(167,'2024-02-04 14:02:28','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放',0,'2024-02-04 22:02:28'),(168,'2024-02-04 14:02:28','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放',0,'2024-02-04 22:02:28'),(169,'2024-02-04 14:20:00','e彷姓名e彷姓名','<p><span style=\"color: rgb(102, 102, 102);\">内容内容内容内容内容内容</span></p>',0,1707055531936,'111',NULL,'开放',1,'2024-02-04 22:26:54');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianleixing`
--

DROP TABLE IF EXISTS `jingdianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `image` longtext COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='景点类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianleixing`
--

LOCK TABLES `jingdianleixing` WRITE;
/*!40000 ALTER TABLE `jingdianleixing` DISABLE KEYS */;
INSERT INTO `jingdianleixing` VALUES (61,'2024-02-04 14:02:27','景点类型1','upload/jingdianleixing_image1.jpg,upload/jingdianleixing_image2.jpg,upload/jingdianleixing_image3.jpg'),(62,'2024-02-04 14:02:27','景点类型2','upload/jingdianleixing_image2.jpg,upload/jingdianleixing_image3.jpg,upload/jingdianleixing_image4.jpg'),(63,'2024-02-04 14:02:27','景点类型3','upload/jingdianleixing_image3.jpg,upload/jingdianleixing_image4.jpg,upload/jingdianleixing_image5.jpg'),(64,'2024-02-04 14:02:27','景点类型4','upload/jingdianleixing_image4.jpg,upload/jingdianleixing_image5.jpg,upload/jingdianleixing_image6.jpg'),(65,'2024-02-04 14:02:27','景点类型5','upload/jingdianleixing_image5.jpg,upload/jingdianleixing_image6.jpg,upload/jingdianleixing_image7.jpg'),(66,'2024-02-04 14:02:27','景点类型6','upload/jingdianleixing_image6.jpg,upload/jingdianleixing_image7.jpg,upload/jingdianleixing_image8.jpg'),(67,'2024-02-04 14:02:27','景点类型7','upload/jingdianleixing_image7.jpg,upload/jingdianleixing_image8.jpg,upload/jingdianleixing_image9.jpg'),(68,'2024-02-04 14:02:27','景点类型8','upload/jingdianleixing_image8.jpg,upload/jingdianleixing_image9.jpg,upload/jingdianleixing_image10.jpg'),(69,'2024-02-04 14:08:10','景点类型','upload/1707055688822.jpg');
/*!40000 ALTER TABLE `jingdianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiantupian` longtext COMMENT '景点图片',
  `menpiaojiage` double NOT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `jingdiandizhi` longtext COMMENT '景点地址',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `lishibeijing` longtext COMMENT '历史背景',
  `jingdianfabu` datetime DEFAULT NULL COMMENT '景点发布',
  `tesehuodong` longtext COMMENT '特色活动',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (71,'2024-02-04 14:02:27','景点名称1','景点类型1','upload/jingdianxinxi_jingdiantupian1.jpg,upload/jingdianxinxi_jingdiantupian2.jpg,upload/jingdianxinxi_jingdiantupian3.jpg',1,'开放时间1','景点地址1','景点介绍1','历史背景1','2024-02-04 22:02:27','特色活动1',1,1,'2024-02-04 22:02:27',1,0,1),(72,'2024-02-04 14:02:27','景点名称2','景点类型2','upload/jingdianxinxi_jingdiantupian2.jpg,upload/jingdianxinxi_jingdiantupian3.jpg,upload/jingdianxinxi_jingdiantupian4.jpg',2,'开放时间2','景点地址2','景点介绍2','历史背景2','2024-02-04 22:02:27','特色活动2',2,2,'2024-02-04 22:02:27',2,0,2),(73,'2024-02-04 14:02:27','景点名称3','景点类型3','upload/jingdianxinxi_jingdiantupian3.jpg,upload/jingdianxinxi_jingdiantupian4.jpg,upload/jingdianxinxi_jingdiantupian5.jpg',3,'开放时间3','景点地址3','景点介绍3','历史背景3','2024-02-04 22:02:27','特色活动3',3,3,'2024-02-04 22:02:27',3,0,3),(74,'2024-02-04 14:02:27','景点名称4','景点类型4','upload/jingdianxinxi_jingdiantupian4.jpg,upload/jingdianxinxi_jingdiantupian5.jpg,upload/jingdianxinxi_jingdiantupian6.jpg',4,'开放时间4','景点地址4','景点介绍4','历史背景4','2024-02-04 22:02:27','特色活动4',4,4,'2024-02-04 22:02:27',4,0,4),(75,'2024-02-04 14:02:27','景点名称5','景点类型5','upload/jingdianxinxi_jingdiantupian5.jpg,upload/jingdianxinxi_jingdiantupian6.jpg,upload/jingdianxinxi_jingdiantupian7.jpg',5,'开放时间5','景点地址5','景点介绍5','历史背景5','2024-02-04 22:02:27','特色活动5',5,5,'2024-02-04 22:02:27',5,0,5),(76,'2024-02-04 14:02:27','景点名称6','景点类型6','upload/jingdianxinxi_jingdiantupian6.jpg,upload/jingdianxinxi_jingdiantupian7.jpg,upload/jingdianxinxi_jingdiantupian8.jpg',6,'开放时间6','景点地址6','景点介绍6','历史背景6','2024-02-04 22:02:27','特色活动6',6,6,'2024-02-04 22:02:27',6,0,6),(77,'2024-02-04 14:02:27','景点名称7','景点类型7','upload/jingdianxinxi_jingdiantupian7.jpg,upload/jingdianxinxi_jingdiantupian8.jpg,upload/jingdianxinxi_jingdiantupian9.jpg',7,'开放时间7','景点地址7','景点介绍7','历史背景7','2024-02-04 22:02:27','特色活动7',7,7,'2024-02-04 22:02:27',7,0,7),(78,'2024-02-04 14:02:27','景点名称8','景点类型8','upload/jingdianxinxi_jingdiantupian8.jpg,upload/jingdianxinxi_jingdiantupian9.jpg,upload/jingdianxinxi_jingdiantupian10.jpg',8,'开放时间8','景点地址8','景点介绍8','历史背景8','2024-02-04 22:02:27','特色活动8',8,8,'2024-02-04 22:02:27',9,0,8),(79,'2024-02-04 14:08:37','景点名称','景点类型','upload/1707055698498.jpeg',200,'开放时间','景点地址\n','<p><span style=\"color: rgb(51, 51, 51);\">景点介绍</span></p>','历史背景','2024-02-04 22:08:13','特色活动\n',0,0,NULL,2,0,0);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianleixing`
--

DROP TABLE IF EXISTS `jiudianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `image` longtext COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='酒店类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianleixing`
--

LOCK TABLES `jiudianleixing` WRITE;
/*!40000 ALTER TABLE `jiudianleixing` DISABLE KEYS */;
INSERT INTO `jiudianleixing` VALUES (91,'2024-02-04 14:02:28','酒店类型1','upload/jiudianleixing_image1.jpg,upload/jiudianleixing_image2.jpg,upload/jiudianleixing_image3.jpg'),(92,'2024-02-04 14:02:28','酒店类型2','upload/jiudianleixing_image2.jpg,upload/jiudianleixing_image3.jpg,upload/jiudianleixing_image4.jpg'),(93,'2024-02-04 14:02:28','酒店类型3','upload/jiudianleixing_image3.jpg,upload/jiudianleixing_image4.jpg,upload/jiudianleixing_image5.jpg'),(94,'2024-02-04 14:02:28','酒店类型4','upload/jiudianleixing_image4.jpg,upload/jiudianleixing_image5.jpg,upload/jiudianleixing_image6.jpg'),(95,'2024-02-04 14:02:28','酒店类型5','upload/jiudianleixing_image5.jpg,upload/jiudianleixing_image6.jpg,upload/jiudianleixing_image7.jpg'),(96,'2024-02-04 14:02:28','酒店类型6','upload/jiudianleixing_image6.jpg,upload/jiudianleixing_image7.jpg,upload/jiudianleixing_image8.jpg'),(97,'2024-02-04 14:02:28','酒店类型7','upload/jiudianleixing_image7.jpg,upload/jiudianleixing_image8.jpg,upload/jiudianleixing_image9.jpg'),(98,'2024-02-04 14:02:28','酒店类型8','upload/jiudianleixing_image8.jpg,upload/jiudianleixing_image9.jpg,upload/jiudianleixing_image10.jpg'),(99,'2024-02-04 14:09:04','酒店类型','upload/1707055743396.jpg');
/*!40000 ALTER TABLE `jiudianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangshuliang` int(11) DEFAULT NULL COMMENT '客房数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格/天',
  `kefangsheshi` longtext COMMENT '客房设施',
  `jiudiantupian` longtext COMMENT '酒店图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (101,'2024-02-04 14:02:28','酒店名称1','酒店类型1','酒店地址1','单人房',1,1,'客房设施1','upload/jiudianxinxi_jiudiantupian1.jpg,upload/jiudianxinxi_jiudiantupian2.jpg,upload/jiudianxinxi_jiudiantupian3.jpg','13823888881',1,1,'2024-02-04 22:02:28',0,1),(102,'2024-02-04 14:02:28','酒店名称2','酒店类型2','酒店地址2','单人房',2,2,'客房设施2','upload/jiudianxinxi_jiudiantupian2.jpg,upload/jiudianxinxi_jiudiantupian3.jpg,upload/jiudianxinxi_jiudiantupian4.jpg','13823888882',2,2,'2024-02-04 22:02:28',0,2),(103,'2024-02-04 14:02:28','酒店名称3','酒店类型3','酒店地址3','单人房',3,3,'客房设施3','upload/jiudianxinxi_jiudiantupian3.jpg,upload/jiudianxinxi_jiudiantupian4.jpg,upload/jiudianxinxi_jiudiantupian5.jpg','13823888883',3,3,'2024-02-04 22:02:28',0,3),(104,'2024-02-04 14:02:28','酒店名称4','酒店类型4','酒店地址4','单人房',4,4,'客房设施4','upload/jiudianxinxi_jiudiantupian4.jpg,upload/jiudianxinxi_jiudiantupian5.jpg,upload/jiudianxinxi_jiudiantupian6.jpg','13823888884',4,4,'2024-02-04 22:02:28',0,4),(105,'2024-02-04 14:02:28','酒店名称5','酒店类型5','酒店地址5','单人房',5,5,'客房设施5','upload/jiudianxinxi_jiudiantupian5.jpg,upload/jiudianxinxi_jiudiantupian6.jpg,upload/jiudianxinxi_jiudiantupian7.jpg','13823888885',5,5,'2024-02-04 22:02:28',0,5),(106,'2024-02-04 14:02:28','酒店名称6','酒店类型6','酒店地址6','单人房',6,6,'客房设施6','upload/jiudianxinxi_jiudiantupian6.jpg,upload/jiudianxinxi_jiudiantupian7.jpg,upload/jiudianxinxi_jiudiantupian8.jpg','13823888886',6,6,'2024-02-04 22:02:28',0,6),(107,'2024-02-04 14:02:28','酒店名称7','酒店类型7','酒店地址7','单人房',7,7,'客房设施7','upload/jiudianxinxi_jiudiantupian7.jpg,upload/jiudianxinxi_jiudiantupian8.jpg,upload/jiudianxinxi_jiudiantupian9.jpg','13823888887',7,7,'2024-02-04 22:02:28',0,7),(108,'2024-02-04 14:02:28','酒店名称8','酒店类型8','酒店地址8','单人房',8,8,'客房设施8','upload/jiudianxinxi_jiudiantupian8.jpg,upload/jiudianxinxi_jiudiantupian9.jpg,upload/jiudianxinxi_jiudiantupian10.jpg','13823888888',8,8,'2024-02-04 22:02:28',0,8),(109,'2024-02-04 14:09:32','酒店名称','酒店类型','酒店地址','大床房',5,200,'<p><span style=\"color: rgb(51, 51, 51);\">客房设施</span></p>','upload/1707055757669.jpg','15366666666',0,0,NULL,0,0);
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianyuding`
--

DROP TABLE IF EXISTS `jiudianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangshuliang` int(11) DEFAULT NULL COMMENT '客房数量',
  `jiage` double DEFAULT NULL COMMENT '价格/天',
  `yudingrenshu` int(11) DEFAULT NULL COMMENT '预定人数',
  `dingdanjine` double DEFAULT NULL COMMENT '订单金额',
  `kefangsheshi` longtext COMMENT '客房设施',
  `jiudiantupian` longtext COMMENT '酒店图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yudingshijian` varchar(200) DEFAULT NULL COMMENT '预定时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='酒店预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianyuding`
--

LOCK TABLES `jiudianyuding` WRITE;
/*!40000 ALTER TABLE `jiudianyuding` DISABLE KEYS */;
INSERT INTO `jiudianyuding` VALUES (111,'2024-02-04 14:02:28','酒店名称1','酒店类型1','酒店地址1','单人房',1,1,1,1,'客房设施1','upload/jiudianyuding_jiudiantupian1.jpg,upload/jiudianyuding_jiudiantupian2.jpg,upload/jiudianyuding_jiudiantupian3.jpg','13823888881','预定时间1','用户账号1','用户姓名1','未支付'),(112,'2024-02-04 14:02:28','酒店名称2','酒店类型2','酒店地址2','单人房',2,2,2,2,'客房设施2','upload/jiudianyuding_jiudiantupian2.jpg,upload/jiudianyuding_jiudiantupian3.jpg,upload/jiudianyuding_jiudiantupian4.jpg','13823888882','预定时间2','用户账号2','用户姓名2','未支付'),(113,'2024-02-04 14:02:28','酒店名称3','酒店类型3','酒店地址3','单人房',3,3,3,3,'客房设施3','upload/jiudianyuding_jiudiantupian3.jpg,upload/jiudianyuding_jiudiantupian4.jpg,upload/jiudianyuding_jiudiantupian5.jpg','13823888883','预定时间3','用户账号3','用户姓名3','未支付'),(114,'2024-02-04 14:02:28','酒店名称4','酒店类型4','酒店地址4','单人房',4,4,4,4,'客房设施4','upload/jiudianyuding_jiudiantupian4.jpg,upload/jiudianyuding_jiudiantupian5.jpg,upload/jiudianyuding_jiudiantupian6.jpg','13823888884','预定时间4','用户账号4','用户姓名4','未支付'),(115,'2024-02-04 14:02:28','酒店名称5','酒店类型5','酒店地址5','单人房',5,5,5,5,'客房设施5','upload/jiudianyuding_jiudiantupian5.jpg,upload/jiudianyuding_jiudiantupian6.jpg,upload/jiudianyuding_jiudiantupian7.jpg','13823888885','预定时间5','用户账号5','用户姓名5','未支付'),(116,'2024-02-04 14:02:28','酒店名称6','酒店类型6','酒店地址6','单人房',6,6,6,6,'客房设施6','upload/jiudianyuding_jiudiantupian6.jpg,upload/jiudianyuding_jiudiantupian7.jpg,upload/jiudianyuding_jiudiantupian8.jpg','13823888886','预定时间6','用户账号6','用户姓名6','未支付'),(117,'2024-02-04 14:02:28','酒店名称7','酒店类型7','酒店地址7','单人房',7,7,7,7,'客房设施7','upload/jiudianyuding_jiudiantupian7.jpg,upload/jiudianyuding_jiudiantupian8.jpg,upload/jiudianyuding_jiudiantupian9.jpg','13823888887','预定时间7','用户账号7','用户姓名7','未支付'),(118,'2024-02-04 14:02:28','酒店名称8','酒店类型8','酒店地址8','单人房',8,8,8,8,'客房设施8','upload/jiudianyuding_jiudiantupian8.jpg,upload/jiudianyuding_jiudiantupian9.jpg,upload/jiudianyuding_jiudiantupian10.jpg','13823888888','预定时间8','用户账号8','用户姓名8','未支付'),(119,'2024-02-04 14:18:01','酒店名称','酒店类型','酒店地址','大床房',5,200,2,400,'<p><span style=\"color: rgb(51, 51, 51);\">客房设施</span></p>','upload/1707055757669.jpg','15366666666','预定时间','111','111','已支付');
/*!40000 ALTER TABLE `jiudianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luxianyuding`
--

DROP TABLE IF EXISTS `luxianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luxianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luxianmingcheng` varchar(200) DEFAULT NULL COMMENT '路线名称',
  `luxiantupian` longtext COMMENT '路线图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `daoyoufeiyong` double DEFAULT NULL COMMENT '导游费用',
  `feiyongshuoming` longtext COMMENT '费用说明',
  `luxianxiangqing` longtext COMMENT '路线详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yudingshijian` varchar(200) DEFAULT NULL COMMENT '预定时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='路线预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luxianyuding`
--

LOCK TABLES `luxianyuding` WRITE;
/*!40000 ALTER TABLE `luxianyuding` DISABLE KEYS */;
INSERT INTO `luxianyuding` VALUES (31,'2024-02-04 14:02:27','路线名称1','upload/luxianyuding_luxiantupian1.jpg,upload/luxianyuding_luxiantupian2.jpg,upload/luxianyuding_luxiantupian3.jpg','起点1','终点1','交通方式1',1,'费用说明1','路线详情1','2024-02-04 22:02:27','预定时间1','用户账号1','用户姓名1','未支付'),(32,'2024-02-04 14:02:27','路线名称2','upload/luxianyuding_luxiantupian2.jpg,upload/luxianyuding_luxiantupian3.jpg,upload/luxianyuding_luxiantupian4.jpg','起点2','终点2','交通方式2',2,'费用说明2','路线详情2','2024-02-04 22:02:27','预定时间2','用户账号2','用户姓名2','未支付'),(33,'2024-02-04 14:02:27','路线名称3','upload/luxianyuding_luxiantupian3.jpg,upload/luxianyuding_luxiantupian4.jpg,upload/luxianyuding_luxiantupian5.jpg','起点3','终点3','交通方式3',3,'费用说明3','路线详情3','2024-02-04 22:02:27','预定时间3','用户账号3','用户姓名3','未支付'),(34,'2024-02-04 14:02:27','路线名称4','upload/luxianyuding_luxiantupian4.jpg,upload/luxianyuding_luxiantupian5.jpg,upload/luxianyuding_luxiantupian6.jpg','起点4','终点4','交通方式4',4,'费用说明4','路线详情4','2024-02-04 22:02:27','预定时间4','用户账号4','用户姓名4','未支付'),(35,'2024-02-04 14:02:27','路线名称5','upload/luxianyuding_luxiantupian5.jpg,upload/luxianyuding_luxiantupian6.jpg,upload/luxianyuding_luxiantupian7.jpg','起点5','终点5','交通方式5',5,'费用说明5','路线详情5','2024-02-04 22:02:27','预定时间5','用户账号5','用户姓名5','未支付'),(36,'2024-02-04 14:02:27','路线名称6','upload/luxianyuding_luxiantupian6.jpg,upload/luxianyuding_luxiantupian7.jpg,upload/luxianyuding_luxiantupian8.jpg','起点6','终点6','交通方式6',6,'费用说明6','路线详情6','2024-02-04 22:02:27','预定时间6','用户账号6','用户姓名6','未支付'),(37,'2024-02-04 14:02:27','路线名称7','upload/luxianyuding_luxiantupian7.jpg,upload/luxianyuding_luxiantupian8.jpg,upload/luxianyuding_luxiantupian9.jpg','起点7','终点7','交通方式7',7,'费用说明7','路线详情7','2024-02-04 22:02:27','预定时间7','用户账号7','用户姓名7','未支付'),(38,'2024-02-04 14:02:27','路线名称8','upload/luxianyuding_luxiantupian8.jpg,upload/luxianyuding_luxiantupian9.jpg,upload/luxianyuding_luxiantupian10.jpg','起点8','终点8','交通方式8',8,'费用说明8','路线详情8','2024-02-04 22:02:27','预定时间8','用户账号8','用户姓名8','未支付'),(39,'2024-02-04 14:16:49','路线名称','upload/1707055599256.png','起点','终点','交通方式',200,'费用说明\n费用说明\n','<p>路线详情</p><p><br></p>','2024-02-04 22:06:19','预定时间','111','111','已支付');
/*!40000 ALTER TABLE `luxianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyougonglve`
--

DROP TABLE IF EXISTS `lvyougonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyougonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingqumingcheng` varchar(200) DEFAULT NULL COMMENT '景区名称',
  `jingqudizhi` varchar(200) DEFAULT NULL COMMENT '景区地址',
  `zuijiajijie` varchar(200) DEFAULT NULL COMMENT '最佳季节',
  `zhusutuijian` varchar(200) DEFAULT NULL COMMENT '住宿推荐',
  `meishituijian` varchar(200) DEFAULT NULL COMMENT '美食推荐',
  `yusuantianshu` varchar(200) DEFAULT NULL COMMENT '预算天数',
  `yusuanhuafei` varchar(200) DEFAULT NULL COMMENT '预算花费',
  `youwanluxian` longtext COMMENT '游玩路线',
  `zhoubianjieshao` longtext COMMENT '周边介绍',
  `jingqutupian` longtext COMMENT '景区图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COMMENT='旅游攻略';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyougonglve`
--

LOCK TABLES `lvyougonglve` WRITE;
/*!40000 ALTER TABLE `lvyougonglve` DISABLE KEYS */;
INSERT INTO `lvyougonglve` VALUES (151,'2024-02-04 14:02:28','景区名称1','景区地址1','春季','住宿推荐1','美食推荐1','预算天数1','预算花费1','游玩路线1','周边介绍1','upload/lvyougonglve_jingqutupian1.jpg,upload/lvyougonglve_jingqutupian2.jpg,upload/lvyougonglve_jingqutupian3.jpg','2024-02-04 22:02:28'),(152,'2024-02-04 14:02:28','景区名称2','景区地址2','春季','住宿推荐2','美食推荐2','预算天数2','预算花费2','游玩路线2','周边介绍2','upload/lvyougonglve_jingqutupian2.jpg,upload/lvyougonglve_jingqutupian3.jpg,upload/lvyougonglve_jingqutupian4.jpg','2024-02-04 22:02:28'),(153,'2024-02-04 14:02:28','景区名称3','景区地址3','春季','住宿推荐3','美食推荐3','预算天数3','预算花费3','游玩路线3','周边介绍3','upload/lvyougonglve_jingqutupian3.jpg,upload/lvyougonglve_jingqutupian4.jpg,upload/lvyougonglve_jingqutupian5.jpg','2024-02-04 22:02:28'),(154,'2024-02-04 14:02:28','景区名称4','景区地址4','春季','住宿推荐4','美食推荐4','预算天数4','预算花费4','游玩路线4','周边介绍4','upload/lvyougonglve_jingqutupian4.jpg,upload/lvyougonglve_jingqutupian5.jpg,upload/lvyougonglve_jingqutupian6.jpg','2024-02-04 22:02:28'),(155,'2024-02-04 14:02:28','景区名称5','景区地址5','春季','住宿推荐5','美食推荐5','预算天数5','预算花费5','游玩路线5','周边介绍5','upload/lvyougonglve_jingqutupian5.jpg,upload/lvyougonglve_jingqutupian6.jpg,upload/lvyougonglve_jingqutupian7.jpg','2024-02-04 22:02:28'),(156,'2024-02-04 14:02:28','景区名称6','景区地址6','春季','住宿推荐6','美食推荐6','预算天数6','预算花费6','游玩路线6','周边介绍6','upload/lvyougonglve_jingqutupian6.jpg,upload/lvyougonglve_jingqutupian7.jpg,upload/lvyougonglve_jingqutupian8.jpg','2024-02-04 22:02:28'),(157,'2024-02-04 14:02:28','景区名称7','景区地址7','春季','住宿推荐7','美食推荐7','预算天数7','预算花费7','游玩路线7','周边介绍7','upload/lvyougonglve_jingqutupian7.jpg,upload/lvyougonglve_jingqutupian8.jpg,upload/lvyougonglve_jingqutupian9.jpg','2024-02-04 22:02:28'),(158,'2024-02-04 14:02:28','景区名称8','景区地址8','春季','住宿推荐8','美食推荐8','预算天数8','预算花费8','游玩路线8','周边介绍8','upload/lvyougonglve_jingqutupian8.jpg,upload/lvyougonglve_jingqutupian9.jpg,upload/lvyougonglve_jingqutupian10.jpg','2024-02-04 22:02:28'),(159,'2024-02-04 14:12:37','景区名称','景区地址','春季','住宿推荐','美食推荐','200','200','<p>游玩路线</p><p>游玩路线</p><p><br></p>','<p>周边介绍</p><p><br></p>','upload/1707055901650.jpeg','2024-02-04 22:10:56');
/*!40000 ALTER TABLE `lvyougonglve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyouluxian`
--

DROP TABLE IF EXISTS `lvyouluxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyouluxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luxianmingcheng` varchar(200) DEFAULT NULL COMMENT '路线名称',
  `luxiantupian` longtext COMMENT '路线图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `daoyoufeiyong` double DEFAULT NULL COMMENT '导游费用',
  `feiyongshuoming` longtext COMMENT '费用说明',
  `luxianxiangqing` longtext COMMENT '路线详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='旅游路线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyouluxian`
--

LOCK TABLES `lvyouluxian` WRITE;
/*!40000 ALTER TABLE `lvyouluxian` DISABLE KEYS */;
INSERT INTO `lvyouluxian` VALUES (21,'2024-02-04 14:02:27','路线名称1','upload/lvyouluxian_luxiantupian1.jpg,upload/lvyouluxian_luxiantupian2.jpg,upload/lvyouluxian_luxiantupian3.jpg','起点1','终点1','交通方式1',1,'费用说明1','路线详情1','2024-02-04 22:02:27','2024-02-04 22:02:27',1,1),(22,'2024-02-04 14:02:27','路线名称2','upload/lvyouluxian_luxiantupian2.jpg,upload/lvyouluxian_luxiantupian3.jpg,upload/lvyouluxian_luxiantupian4.jpg','起点2','终点2','交通方式2',2,'费用说明2','路线详情2','2024-02-04 22:02:27','2024-02-04 22:02:27',2,2),(23,'2024-02-04 14:02:27','路线名称3','upload/lvyouluxian_luxiantupian3.jpg,upload/lvyouluxian_luxiantupian4.jpg,upload/lvyouluxian_luxiantupian5.jpg','起点3','终点3','交通方式3',3,'费用说明3','路线详情3','2024-02-04 22:02:27','2024-02-04 22:02:27',3,3),(24,'2024-02-04 14:02:27','路线名称4','upload/lvyouluxian_luxiantupian4.jpg,upload/lvyouluxian_luxiantupian5.jpg,upload/lvyouluxian_luxiantupian6.jpg','起点4','终点4','交通方式4',4,'费用说明4','路线详情4','2024-02-04 22:02:27','2024-02-04 22:02:27',4,4),(25,'2024-02-04 14:02:27','路线名称5','upload/lvyouluxian_luxiantupian5.jpg,upload/lvyouluxian_luxiantupian6.jpg,upload/lvyouluxian_luxiantupian7.jpg','起点5','终点5','交通方式5',5,'费用说明5','路线详情5','2024-02-04 22:02:27','2024-02-04 22:02:27',5,5),(26,'2024-02-04 14:02:27','路线名称6','upload/lvyouluxian_luxiantupian6.jpg,upload/lvyouluxian_luxiantupian7.jpg,upload/lvyouluxian_luxiantupian8.jpg','起点6','终点6','交通方式6',6,'费用说明6','路线详情6','2024-02-04 22:02:27','2024-02-04 22:02:27',6,6),(27,'2024-02-04 14:02:27','路线名称7','upload/lvyouluxian_luxiantupian7.jpg,upload/lvyouluxian_luxiantupian8.jpg,upload/lvyouluxian_luxiantupian9.jpg','起点7','终点7','交通方式7',7,'费用说明7','路线详情7','2024-02-04 22:02:27','2024-02-04 22:02:27',7,7),(28,'2024-02-04 14:02:27','路线名称8','upload/lvyouluxian_luxiantupian8.jpg,upload/lvyouluxian_luxiantupian9.jpg,upload/lvyouluxian_luxiantupian10.jpg','起点8','终点8','交通方式8',8,'费用说明8','路线详情8','2024-02-04 22:02:27','2024-02-04 22:04:33',9,8),(29,'2024-02-04 14:06:50','路线名称','upload/1707055599256.png','起点','终点','交通方式',200,'费用说明\n费用说明\n','<p>路线详情</p><p><br></p>','2024-02-04 22:06:19','2024-02-04 22:16:51',2,0);
/*!40000 ALTER TABLE `lvyouluxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishifenlei`
--

DROP TABLE IF EXISTS `meishifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishifenlei` varchar(200) DEFAULT NULL COMMENT '美食分类',
  `image` longtext COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='美食分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishifenlei`
--

LOCK TABLES `meishifenlei` WRITE;
/*!40000 ALTER TABLE `meishifenlei` DISABLE KEYS */;
INSERT INTO `meishifenlei` VALUES (121,'2024-02-04 14:02:28','美食分类1','upload/meishifenlei_image1.jpg,upload/meishifenlei_image2.jpg,upload/meishifenlei_image3.jpg'),(122,'2024-02-04 14:02:28','美食分类2','upload/meishifenlei_image2.jpg,upload/meishifenlei_image3.jpg,upload/meishifenlei_image4.jpg'),(123,'2024-02-04 14:02:28','美食分类3','upload/meishifenlei_image3.jpg,upload/meishifenlei_image4.jpg,upload/meishifenlei_image5.jpg'),(124,'2024-02-04 14:02:28','美食分类4','upload/meishifenlei_image4.jpg,upload/meishifenlei_image5.jpg,upload/meishifenlei_image6.jpg'),(125,'2024-02-04 14:02:28','美食分类5','upload/meishifenlei_image5.jpg,upload/meishifenlei_image6.jpg,upload/meishifenlei_image7.jpg'),(126,'2024-02-04 14:02:28','美食分类6','upload/meishifenlei_image6.jpg,upload/meishifenlei_image7.jpg,upload/meishifenlei_image8.jpg'),(127,'2024-02-04 14:02:28','美食分类7','upload/meishifenlei_image7.jpg,upload/meishifenlei_image8.jpg,upload/meishifenlei_image9.jpg'),(128,'2024-02-04 14:02:28','美食分类8','upload/meishifenlei_image8.jpg,upload/meishifenlei_image9.jpg,upload/meishifenlei_image10.jpg'),(129,'2024-02-04 14:09:51','美食分类','upload/1707055791157.webp');
/*!40000 ALTER TABLE `meishifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  `fengmian` longtext COMMENT '封面',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `meishididian` varchar(200) DEFAULT NULL COMMENT '美食地点',
  `meishipingfen` varchar(200) DEFAULT NULL COMMENT '美食评分',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `meishizhuliao` varchar(200) DEFAULT NULL COMMENT '美食主料',
  `meishikouwei` varchar(200) DEFAULT NULL COMMENT '美食口味',
  `meishitese` longtext COMMENT '美食特色',
  `pengrenfangfa` longtext COMMENT '烹饪方法',
  `meishixiangqing` longtext COMMENT '美食详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (131,'2024-02-04 14:02:28','美食名称1','美食分类1','upload/meishixinxi_fengmian1.jpg,upload/meishixinxi_fengmian2.jpg,upload/meishixinxi_fengmian3.jpg',1,'美食地点1','好评','','美食主料1','美食口味1','美食特色1','烹饪方法1','美食详情1','2024-02-04 22:02:28','2024-02-04 22:02:28',1,0,1),(132,'2024-02-04 14:02:28','美食名称2','美食分类2','upload/meishixinxi_fengmian2.jpg,upload/meishixinxi_fengmian3.jpg,upload/meishixinxi_fengmian4.jpg',2,'美食地点2','好评','','美食主料2','美食口味2','美食特色2','烹饪方法2','美食详情2','2024-02-04 22:02:28','2024-02-04 22:02:28',2,0,2),(133,'2024-02-04 14:02:28','美食名称3','美食分类3','upload/meishixinxi_fengmian3.jpg,upload/meishixinxi_fengmian4.jpg,upload/meishixinxi_fengmian5.jpg',3,'美食地点3','好评','','美食主料3','美食口味3','美食特色3','烹饪方法3','美食详情3','2024-02-04 22:02:28','2024-02-04 22:02:28',3,0,3),(134,'2024-02-04 14:02:28','美食名称4','美食分类4','upload/meishixinxi_fengmian4.jpg,upload/meishixinxi_fengmian5.jpg,upload/meishixinxi_fengmian6.jpg',4,'美食地点4','好评','','美食主料4','美食口味4','美食特色4','烹饪方法4','美食详情4','2024-02-04 22:02:28','2024-02-04 22:02:28',4,0,4),(135,'2024-02-04 14:02:28','美食名称5','美食分类5','upload/meishixinxi_fengmian5.jpg,upload/meishixinxi_fengmian6.jpg,upload/meishixinxi_fengmian7.jpg',5,'美食地点5','好评','','美食主料5','美食口味5','美食特色5','烹饪方法5','美食详情5','2024-02-04 22:02:28','2024-02-04 22:02:28',5,0,5),(136,'2024-02-04 14:02:28','美食名称6','美食分类6','upload/meishixinxi_fengmian6.jpg,upload/meishixinxi_fengmian7.jpg,upload/meishixinxi_fengmian8.jpg',6,'美食地点6','好评','','美食主料6','美食口味6','美食特色6','烹饪方法6','美食详情6','2024-02-04 22:02:28','2024-02-04 22:02:28',6,0,6),(137,'2024-02-04 14:02:28','美食名称7','美食分类7','upload/meishixinxi_fengmian7.jpg,upload/meishixinxi_fengmian8.jpg,upload/meishixinxi_fengmian9.jpg',7,'美食地点7','好评','','美食主料7','美食口味7','美食特色7','烹饪方法7','美食详情7','2024-02-04 22:02:28','2024-02-04 22:02:28',7,0,7),(138,'2024-02-04 14:02:28','美食名称8','美食分类8','upload/meishixinxi_fengmian8.jpg,upload/meishixinxi_fengmian9.jpg,upload/meishixinxi_fengmian10.jpg',8,'美食地点8','好评','','美食主料8','美食口味8','美食特色8','烹饪方法8','美食详情8','2024-02-04 22:02:28','2024-02-04 22:04:53',9,0,8),(139,'2024-02-04 14:10:51','美食名称','美食分类','upload/1707055800415.gif',200,'美食地点','好评','upload/1707055810428.mp4','美食主料','美食口味','美食特色','烹饪方法\n','<p><span style=\"color: rgb(51, 51, 51);\">美食详情</span></p>','2024-02-04 22:09:55','2024-02-04 22:25:50',3,0,1);
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishiyuding`
--

DROP TABLE IF EXISTS `meishiyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishiyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishifenlei` varchar(200) DEFAULT NULL COMMENT '美食分类',
  `fengmian` longtext COMMENT '封面',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `yudingshuliang` int(11) DEFAULT NULL COMMENT '预定数量',
  `yudingjine` double DEFAULT NULL COMMENT '预定金额',
  `meishididian` varchar(200) DEFAULT NULL COMMENT '美食地点',
  `meishipingfen` varchar(200) DEFAULT NULL COMMENT '美食评分',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `meishizhuliao` varchar(200) DEFAULT NULL COMMENT '美食主料',
  `meishikouwei` varchar(200) DEFAULT NULL COMMENT '美食口味',
  `meishitese` longtext COMMENT '美食特色',
  `pengrenfangfa` longtext COMMENT '烹饪方法',
  `meishixiangqing` longtext COMMENT '美食详情',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `epangxingming` varchar(200) DEFAULT NULL COMMENT 'e彷姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='美食预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishiyuding`
--

LOCK TABLES `meishiyuding` WRITE;
/*!40000 ALTER TABLE `meishiyuding` DISABLE KEYS */;
INSERT INTO `meishiyuding` VALUES (141,'2024-02-04 14:02:28','美食名称1','美食分类1','upload/meishiyuding_fengmian1.jpg,upload/meishiyuding_fengmian2.jpg,upload/meishiyuding_fengmian3.jpg',1,1,1,'美食地点1','好评','','美食主料1','美食口味1','美食特色1','烹饪方法1','美食详情1','2024-02-04 22:02:28','用户账号1','e彷姓名1','未支付'),(142,'2024-02-04 14:02:28','美食名称2','美食分类2','upload/meishiyuding_fengmian2.jpg,upload/meishiyuding_fengmian3.jpg,upload/meishiyuding_fengmian4.jpg',2,2,2,'美食地点2','好评','','美食主料2','美食口味2','美食特色2','烹饪方法2','美食详情2','2024-02-04 22:02:28','用户账号2','e彷姓名2','未支付'),(143,'2024-02-04 14:02:28','美食名称3','美食分类3','upload/meishiyuding_fengmian3.jpg,upload/meishiyuding_fengmian4.jpg,upload/meishiyuding_fengmian5.jpg',3,3,3,'美食地点3','好评','','美食主料3','美食口味3','美食特色3','烹饪方法3','美食详情3','2024-02-04 22:02:28','用户账号3','e彷姓名3','未支付'),(144,'2024-02-04 14:02:28','美食名称4','美食分类4','upload/meishiyuding_fengmian4.jpg,upload/meishiyuding_fengmian5.jpg,upload/meishiyuding_fengmian6.jpg',4,4,4,'美食地点4','好评','','美食主料4','美食口味4','美食特色4','烹饪方法4','美食详情4','2024-02-04 22:02:28','用户账号4','e彷姓名4','未支付'),(145,'2024-02-04 14:02:28','美食名称5','美食分类5','upload/meishiyuding_fengmian5.jpg,upload/meishiyuding_fengmian6.jpg,upload/meishiyuding_fengmian7.jpg',5,5,5,'美食地点5','好评','','美食主料5','美食口味5','美食特色5','烹饪方法5','美食详情5','2024-02-04 22:02:28','用户账号5','e彷姓名5','未支付'),(146,'2024-02-04 14:02:28','美食名称6','美食分类6','upload/meishiyuding_fengmian6.jpg,upload/meishiyuding_fengmian7.jpg,upload/meishiyuding_fengmian8.jpg',6,6,6,'美食地点6','好评','','美食主料6','美食口味6','美食特色6','烹饪方法6','美食详情6','2024-02-04 22:02:28','用户账号6','e彷姓名6','未支付'),(147,'2024-02-04 14:02:28','美食名称7','美食分类7','upload/meishiyuding_fengmian7.jpg,upload/meishiyuding_fengmian8.jpg,upload/meishiyuding_fengmian9.jpg',7,7,7,'美食地点7','好评','','美食主料7','美食口味7','美食特色7','烹饪方法7','美食详情7','2024-02-04 22:02:28','用户账号7','e彷姓名7','未支付'),(148,'2024-02-04 14:02:28','美食名称8','美食分类8','upload/meishiyuding_fengmian8.jpg,upload/meishiyuding_fengmian9.jpg,upload/meishiyuding_fengmian10.jpg',8,8,8,'美食地点8','好评','','美食主料8','美食口味8','美食特色8','烹饪方法8','美食详情8','2024-02-04 22:02:28','用户账号8','e彷姓名8','未支付'),(149,'2024-02-04 14:18:53','美食名称','美食分类','upload/1707055800415.gif',200,2,400,'美食地点','好评','upload/1707055810428.mp4','美食主料','美食口味','美食特色','烹饪方法\n','<p><span style=\"color: rgb(51, 51, 51);\">美食详情</span></p>','2024-02-04 22:18:27','111','e彷姓名','已支付');
/*!40000 ALTER TABLE `meishiyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menpiaoyuding`
--

DROP TABLE IF EXISTS `menpiaoyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menpiaoyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预定编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiantupian` longtext COMMENT '景点图片',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `menpiaojiage` double DEFAULT NULL COMMENT '门票价格',
  `goumairenshu` int(11) DEFAULT NULL COMMENT '购买人数',
  `dingdanjine` double DEFAULT NULL COMMENT '订单金额',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='门票预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menpiaoyuding`
--

LOCK TABLES `menpiaoyuding` WRITE;
/*!40000 ALTER TABLE `menpiaoyuding` DISABLE KEYS */;
INSERT INTO `menpiaoyuding` VALUES (81,'2024-02-04 14:02:28','1111111111','景点名称1','upload/menpiaoyuding_jingdiantupian1.jpg,upload/menpiaoyuding_jingdiantupian2.jpg,upload/menpiaoyuding_jingdiantupian3.jpg','景点类型1',1,1,1,'2024-02-04 22:02:28','用户账号1','用户姓名1','未支付'),(82,'2024-02-04 14:02:28','2222222222','景点名称2','upload/menpiaoyuding_jingdiantupian2.jpg,upload/menpiaoyuding_jingdiantupian3.jpg,upload/menpiaoyuding_jingdiantupian4.jpg','景点类型2',2,2,2,'2024-02-04 22:02:28','用户账号2','用户姓名2','未支付'),(83,'2024-02-04 14:02:28','3333333333','景点名称3','upload/menpiaoyuding_jingdiantupian3.jpg,upload/menpiaoyuding_jingdiantupian4.jpg,upload/menpiaoyuding_jingdiantupian5.jpg','景点类型3',3,3,3,'2024-02-04 22:02:28','用户账号3','用户姓名3','未支付'),(84,'2024-02-04 14:02:28','4444444444','景点名称4','upload/menpiaoyuding_jingdiantupian4.jpg,upload/menpiaoyuding_jingdiantupian5.jpg,upload/menpiaoyuding_jingdiantupian6.jpg','景点类型4',4,4,4,'2024-02-04 22:02:28','用户账号4','用户姓名4','未支付'),(85,'2024-02-04 14:02:28','5555555555','景点名称5','upload/menpiaoyuding_jingdiantupian5.jpg,upload/menpiaoyuding_jingdiantupian6.jpg,upload/menpiaoyuding_jingdiantupian7.jpg','景点类型5',5,5,5,'2024-02-04 22:02:28','用户账号5','用户姓名5','未支付'),(86,'2024-02-04 14:02:28','6666666666','景点名称6','upload/menpiaoyuding_jingdiantupian6.jpg,upload/menpiaoyuding_jingdiantupian7.jpg,upload/menpiaoyuding_jingdiantupian8.jpg','景点类型6',6,6,6,'2024-02-04 22:02:28','用户账号6','用户姓名6','未支付'),(87,'2024-02-04 14:02:28','7777777777','景点名称7','upload/menpiaoyuding_jingdiantupian7.jpg,upload/menpiaoyuding_jingdiantupian8.jpg,upload/menpiaoyuding_jingdiantupian9.jpg','景点类型7',7,7,7,'2024-02-04 22:02:28','用户账号7','用户姓名7','未支付'),(88,'2024-02-04 14:02:28','8888888888','景点名称8','upload/menpiaoyuding_jingdiantupian8.jpg,upload/menpiaoyuding_jingdiantupian9.jpg,upload/menpiaoyuding_jingdiantupian10.jpg','景点类型8',8,8,8,'2024-02-04 22:02:28','用户账号8','用户姓名8','未支付'),(89,'2024-02-04 14:17:45','1707056261510','景点名称','upload/1707055698498.jpeg','景点类型',200,2,400,'2024-02-04 22:17:41','111','111','已支付');
/*!40000 ALTER TABLE `menpiaoyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `typename` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext COMMENT '头像',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (191,'2024-02-04 14:02:28','趁着年轻，输得起，看得开，去经历','我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤','分类名称1','发布人1','upload/news_headportrait1.jpg',1,'2024-02-04 22:02:28',1,1,1,'upload/news_picture1.jpg','<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>  首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>    我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p> 电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>  社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>   失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>'),(192,'2024-02-04 14:02:28','大学就该抓住青春，用汗水实现梦想','大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还','分类名称2','发布人2','upload/news_headportrait2.jpg',2,'2024-02-04 22:02:28',2,2,2,'upload/news_picture2.jpg','<p>  大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>  青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，学生活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>   青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为学生工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>   我们是大学生，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>'),(193,'2024-02-04 14:02:28','留退路就没有出路','公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了','分类名称3','发布人3','upload/news_headportrait3.jpg',3,'2024-02-04 22:02:28',3,3,3,'upload/news_picture3.jpg','<p>  公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>  很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>  一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>   不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>    面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大学生励志青春文章:培养积极的思维模式。</p>'),(194,'2024-02-04 14:02:28','在大学给自己定个目标','最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到','分类名称4','发布人4','upload/news_headportrait4.jpg',4,'2024-02-04 22:02:28',4,4,4,'upload/news_picture4.jpg','<p>  最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>   这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>  也许，这样的大学生不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大学生起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，学生们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p> 此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大学生对自己的学习、对大学生活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大学生生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>  如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导学生树立明确的奋斗目标、进而指引学生为之努力的大学，学生很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给学生们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大学生活，也许只会给很多学生带来悔过。</p><p>无论如何，混日子的大学生活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大学生，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>'),(195,'2024-02-04 14:02:28','做个真正的学生','最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点','分类名称5','发布人5','upload/news_headportrait5.jpg',5,'2024-02-04 22:02:28',5,5,5,'upload/news_picture5.jpg','<p>  最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>  在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>   目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p> 我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>    生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>'),(196,'2024-02-04 14:02:28','远大的目标是成功的磁石','上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标','分类名称6','发布人6','upload/news_headportrait6.jpg',6,'2024-02-04 22:02:28',6,6,6,'upload/news_picture6.jpg','<p>  上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>    有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p> 从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>  目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p> 能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>'),(197,'2024-02-04 14:02:28','做一个最好的自己','自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费','分类名称7','发布人7','upload/news_headportrait7.jpg',7,'2024-02-04 22:02:28',7,7,7,'upload/news_picture7.jpg','<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p> 一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>'),(198,'2024-02-04 14:02:28','有了梦想就不会感到疲惫','一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃','分类名称8','发布人8','upload/news_headportrait8.jpg',8,'2024-02-04 22:02:28',8,8,8,'upload/news_picture8.jpg','<p>  一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污。”能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>  说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>    《当幸福来敲门/The Pursuit of Happyness》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>    学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>    终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>    父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>   钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>  克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>  这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?只要有梦想</p>'),(199,'2024-02-04 14:13:40','标题','简介\n','分类名称1','发布人','',0,NULL,0,0,0,'upload/1707056016619.jpg','<p><span style=\"color: rgb(51, 51, 51);\">内容内容内容</span></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newstype`
--

DROP TABLE IF EXISTS `newstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newstype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='公告信息分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newstype`
--

LOCK TABLES `newstype` WRITE;
/*!40000 ALTER TABLE `newstype` DISABLE KEYS */;
INSERT INTO `newstype` VALUES (181,'2024-02-04 14:02:28','分类名称1'),(182,'2024-02-04 14:02:28','分类名称2'),(183,'2024-02-04 14:02:28','分类名称3'),(184,'2024-02-04 14:02:28','分类名称4'),(185,'2024-02-04 14:02:28','分类名称5'),(186,'2024-02-04 14:02:28','分类名称6'),(187,'2024-02-04 14:02:28','分类名称7'),(188,'2024-02-04 14:02:28','分类名称8'),(189,'2024-02-04 14:13:45','分类名称');
/*!40000 ALTER TABLE `newstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2024-02-04 14:18:25',1707055531936,139,'meishixinxi','美食名称','upload/1707055800415.gif','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2024-02-04 14:02:28','系统简介标题标题标题','SYSTEM INTRODUCTION','<p>在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','2sd9an7rmyuh1l5lrz89mqoy7zhv0fm6','2024-02-04 14:05:38','2024-02-04 15:26:11'),(2,1707055531936,'111','yonghu','用户','zrvawuwqfpdsnyfcoxop2bo4sr7iflmk','2024-02-04 14:13:57','2024-02-04 15:13:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-02-04 14:02:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` longtext COMMENT '照片',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1707055531937 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-02-04 14:02:27','用户账号1','123456','用户姓名1','男','upload/yonghu_zhaopian1.jpg','13823888881'),(12,'2024-02-04 14:02:27','用户账号2','123456','用户姓名2','男','upload/yonghu_zhaopian2.jpg','13823888882'),(13,'2024-02-04 14:02:27','用户账号3','123456','用户姓名3','男','upload/yonghu_zhaopian3.jpg','13823888883'),(14,'2024-02-04 14:02:27','用户账号4','123456','用户姓名4','男','upload/yonghu_zhaopian4.jpg','13823888884'),(15,'2024-02-04 14:02:27','用户账号5','123456','用户姓名5','男','upload/yonghu_zhaopian5.jpg','13823888885'),(16,'2024-02-04 14:02:27','用户账号6','123456','用户姓名6','男','upload/yonghu_zhaopian6.jpg','13823888886'),(17,'2024-02-04 14:02:27','用户账号7','123456','用户姓名7','男','upload/yonghu_zhaopian7.jpg','13823888887'),(18,'2024-02-04 14:02:27','用户账号8','123456','用户姓名8','男','upload/yonghu_zhaopian8.jpg','13823888888'),(1707055531936,'2024-02-04 14:05:31','111','111','111','女','upload/1707055527242.jpg','15233333333');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05 22:29:18
