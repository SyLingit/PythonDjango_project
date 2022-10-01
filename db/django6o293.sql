-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django6o293
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
-- Table structure for table `cheweileixing`
--

DROP TABLE IF EXISTS `cheweileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweileixing` varchar(200) NOT NULL COMMENT '车位类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweileixing` (`cheweileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='车位类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweileixing`
--

LOCK TABLES `cheweileixing` WRITE;
/*!40000 ALTER TABLE `cheweileixing` DISABLE KEYS */;
INSERT INTO `cheweileixing` VALUES (21,'2021-04-13 07:43:50','车位类型1'),(22,'2021-04-13 07:43:50','车位类型2'),(23,'2021-04-13 07:43:50','车位类型3'),(24,'2021-04-13 07:43:50','车位类型4'),(25,'2021-04-13 07:43:50','车位类型5'),(26,'2021-04-13 07:43:50','车位类型6');
/*!40000 ALTER TABLE `cheweileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweiweihu`
--

DROP TABLE IF EXISTS `cheweiweihu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweiweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `weihuleixing` varchar(200) NOT NULL COMMENT '维护类型',
  `weihuxiangmu` varchar(200) DEFAULT NULL COMMENT '维护项目',
  `weihushijian` datetime NOT NULL COMMENT '维护时间',
  `weihuxiangqing` longtext COMMENT '维护详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='车位维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweiweihu`
--

LOCK TABLES `cheweiweihu` WRITE;
/*!40000 ALTER TABLE `cheweiweihu` DISABLE KEYS */;
INSERT INTO `cheweiweihu` VALUES (41,'2021-04-13 07:43:50','车位编号1','车位名称1','车位类型1','车位位置1','保养','维护项目1','2021-04-13 15:43:50','维护详情1'),(42,'2021-04-13 07:43:50','车位编号2','车位名称2','车位类型2','车位位置2','保养','维护项目2','2021-04-13 15:43:50','维护详情2'),(43,'2021-04-13 07:43:50','车位编号3','车位名称3','车位类型3','车位位置3','保养','维护项目3','2021-04-13 15:43:50','维护详情3'),(44,'2021-04-13 07:43:50','车位编号4','车位名称4','车位类型4','车位位置4','保养','维护项目4','2021-04-13 15:43:50','维护详情4'),(45,'2021-04-13 07:43:50','车位编号5','车位名称5','车位类型5','车位位置5','保养','维护项目5','2021-04-13 15:43:50','维护详情5'),(46,'2021-04-13 07:43:50','车位编号6','车位名称6','车位类型6','车位位置6','保养','维护项目6','2021-04-13 15:43:50','维护详情6');
/*!40000 ALTER TABLE `cheweiweihu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweitupian` varchar(200) DEFAULT NULL COMMENT '车位图片',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) NOT NULL COMMENT '车位状态',
  `tingchejiage` int(11) NOT NULL COMMENT '停车价格',
  `shoufeibiaozhun` varchar(200) DEFAULT NULL COMMENT '收费标准',
  `cheweixiangqing` longtext COMMENT '车位详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (31,'2021-04-13 07:43:50','车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian1.jpg','车位位置1','可停',1,'收费标准1','车位详情1'),(32,'2021-04-13 07:43:50','车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian2.jpg','车位位置2','可停',2,'收费标准2','车位详情2'),(33,'2021-04-13 07:43:50','车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian3.jpg','车位位置3','可停',3,'收费标准3','车位详情3'),(34,'2021-04-13 07:43:50','车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian4.jpg','车位位置4','可停',4,'收费标准4','车位详情4'),(35,'2021-04-13 07:43:50','车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian5.jpg','车位位置5','可停',5,'收费标准5','车位详情5'),(36,'2021-04-13 07:43:50','车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian6.jpg','车位位置6','可停',6,'收费标准6','车位详情6');
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuchangjiaofei`
--

DROP TABLE IF EXISTS `chuchangjiaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuchangjiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweitupian` varchar(200) DEFAULT NULL COMMENT '车位图片',
  `tingchejiage` int(11) DEFAULT NULL COMMENT '停车价格',
  `ruchangshijian` varchar(200) DEFAULT NULL COMMENT '入场时间',
  `chuchangshijian` datetime NOT NULL COMMENT '出场时间',
  `tingcheshizhang` int(11) NOT NULL COMMENT '停车时长',
  `tingchefeiyong` int(11) DEFAULT NULL COMMENT '停车费用',
  `xinxibeizhu` varchar(200) DEFAULT NULL COMMENT '信息备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='出场缴费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuchangjiaofei`
--

LOCK TABLES `chuchangjiaofei` WRITE;
/*!40000 ALTER TABLE `chuchangjiaofei` DISABLE KEYS */;
INSERT INTO `chuchangjiaofei` VALUES (61,'2021-04-13 07:43:50','车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian1.jpg',1,'入场时间1','2021-04-13 15:43:50',1,1,'信息备注1','用户名1','13823888881','车牌1','是','','未支付'),(62,'2021-04-13 07:43:50','车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian2.jpg',2,'入场时间2','2021-04-13 15:43:50',2,2,'信息备注2','用户名2','13823888882','车牌2','是','','未支付'),(63,'2021-04-13 07:43:50','车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian3.jpg',3,'入场时间3','2021-04-13 15:43:50',3,3,'信息备注3','用户名3','13823888883','车牌3','是','','未支付'),(64,'2021-04-13 07:43:50','车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian4.jpg',4,'入场时间4','2021-04-13 15:43:50',4,4,'信息备注4','用户名4','13823888884','车牌4','是','','未支付'),(65,'2021-04-13 07:43:50','车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian5.jpg',5,'入场时间5','2021-04-13 15:43:50',5,5,'信息备注5','用户名5','13823888885','车牌5','是','','未支付'),(66,'2021-04-13 07:43:50','车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian6.jpg',6,'入场时间6','2021-04-13 15:43:50',6,6,'信息备注6','用户名6','13823888886','车牌6','是','','未支付');
/*!40000 ALTER TABLE `chuchangjiaofei` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/django6o293/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/django6o293/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/django6o293/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2021-04-13 07:43:50','会员1','123456','姓名1','http://localhost:8080/django6o293/upload/huiyuan_touxiang1.jpg','男','13823888881','车牌1'),(12,'2021-04-13 07:43:50','会员2','123456','姓名2','http://localhost:8080/django6o293/upload/huiyuan_touxiang2.jpg','男','13823888882','车牌2'),(13,'2021-04-13 07:43:50','会员3','123456','姓名3','http://localhost:8080/django6o293/upload/huiyuan_touxiang3.jpg','男','13823888883','车牌3'),(14,'2021-04-13 07:43:50','会员4','123456','姓名4','http://localhost:8080/django6o293/upload/huiyuan_touxiang4.jpg','男','13823888884','车牌4'),(15,'2021-04-13 07:43:50','会员5','123456','姓名5','http://localhost:8080/django6o293/upload/huiyuan_touxiang5.jpg','男','13823888885','车牌5'),(16,'2021-04-13 07:43:50','会员6','123456','姓名6','http://localhost:8080/django6o293/upload/huiyuan_touxiang6.jpg','男','13823888886','车牌6');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-04-13 07:43:50',1,'用户名1','留言内容1','回复内容1'),(92,'2021-04-13 07:43:50',2,'用户名2','留言内容2','回复内容2'),(93,'2021-04-13 07:43:50',3,'用户名3','留言内容3','回复内容3'),(94,'2021-04-13 07:43:50',4,'用户名4','留言内容4','回复内容4'),(95,'2021-04-13 07:43:50',5,'用户名5','留言内容5','回复内容5'),(96,'2021-04-13 07:43:50',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-04-13 07:43:50','标题1','简介1','http://localhost:8080/django6o293/upload/news_picture1.jpg','内容1'),(82,'2021-04-13 07:43:50','标题2','简介2','http://localhost:8080/django6o293/upload/news_picture2.jpg','内容2'),(83,'2021-04-13 07:43:50','标题3','简介3','http://localhost:8080/django6o293/upload/news_picture3.jpg','内容3'),(84,'2021-04-13 07:43:50','标题4','简介4','http://localhost:8080/django6o293/upload/news_picture4.jpg','内容4'),(85,'2021-04-13 07:43:50','标题5','简介5','http://localhost:8080/django6o293/upload/news_picture5.jpg','内容5'),(86,'2021-04-13 07:43:50','标题6','简介6','http://localhost:8080/django6o293/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruchangtingche`
--

DROP TABLE IF EXISTS `ruchangtingche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruchangtingche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweitupian` varchar(200) DEFAULT NULL COMMENT '车位图片',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `shoufeibiaozhun` varchar(200) DEFAULT NULL COMMENT '收费标准',
  `tingchejiage` int(11) DEFAULT NULL COMMENT '停车价格',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `ruchangbeizhu` varchar(200) DEFAULT NULL COMMENT '入场备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepai` varchar(200) DEFAULT NULL COMMENT '车牌',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='入场停车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruchangtingche`
--

LOCK TABLES `ruchangtingche` WRITE;
/*!40000 ALTER TABLE `ruchangtingche` DISABLE KEYS */;
INSERT INTO `ruchangtingche` VALUES (51,'2021-04-13 07:43:50','车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian1.jpg','车位位置1','可停','收费标准1',1,'2021-04-13 15:43:50','入场备注1','用户名1','13823888881','车牌1','是',''),(52,'2021-04-13 07:43:50','车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian2.jpg','车位位置2','可停','收费标准2',2,'2021-04-13 15:43:50','入场备注2','用户名2','13823888882','车牌2','是',''),(53,'2021-04-13 07:43:50','车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian3.jpg','车位位置3','可停','收费标准3',3,'2021-04-13 15:43:50','入场备注3','用户名3','13823888883','车牌3','是',''),(54,'2021-04-13 07:43:50','车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian4.jpg','车位位置4','可停','收费标准4',4,'2021-04-13 15:43:50','入场备注4','用户名4','13823888884','车牌4','是',''),(55,'2021-04-13 07:43:50','车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian5.jpg','车位位置5','可停','收费标准5',5,'2021-04-13 15:43:50','入场备注5','用户名5','13823888885','车牌5','是',''),(56,'2021-04-13 07:43:50','车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian6.jpg','车位位置6','可停','收费标准6',6,'2021-04-13 15:43:50','入场备注6','用户名6','13823888886','车牌6','是','');
/*!40000 ALTER TABLE `ruchangtingche` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-13 07:43:50');
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

-- Dump completed on 2021-04-14 17:39:44
