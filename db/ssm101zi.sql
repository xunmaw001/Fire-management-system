-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm101zi
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074471006 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-01-08 02:40:46',1,1,'提问1','回复1',1),(42,'2021-01-08 02:40:46',2,2,'提问2','回复2',2),(43,'2021-01-08 02:40:46',3,3,'提问3','回复3',3),(44,'2021-01-08 02:40:46',4,4,'提问4','回复4',4),(45,'2021-01-08 02:40:46',5,5,'提问5','回复5',5),(46,'2021-01-08 02:40:46',6,6,'提问6','回复6',6),(1610074291474,'2021-01-08 02:51:30',1610074208997,NULL,'你好',NULL,0),(1610074471005,'2021-01-08 02:54:30',1610074208997,1,NULL,'你会受到 ',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm101zi/upload/1610074074543.jpg'),(2,'picture2','http://localhost:8080/ssm101zi/upload/1610074108327.jpg'),(3,'picture3','http://localhost:8080/ssm101zi/upload/picture3.jpg'),(6,'homepage',NULL),(7,'都是','http://localhost:8080/ssm101zi/upload/1610074487248.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
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
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074261290 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (51,'2021-01-08 02:40:46','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-01-08 02:40:46','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-01-08 02:40:46','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-01-08 02:40:46','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-01-08 02:40:46','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-01-08 02:40:46','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1610074026231,'2021-01-08 02:47:06','阿斯蒂芬大富士达富士达富士达发','<p>请输入内a的发的富士达富士达富士达容</p>',0,1610073923525,'123','开放'),(1610074249904,'2021-01-08 02:50:49','发过的很反感回防高地回复大概回复大概','<p>请输入内容好的话发过的回防高地回防高地回防高地</p>',0,1610074208997,'234','开放'),(1610074261289,'2021-01-08 02:51:00',NULL,'对方过后刚发的和豆腐干花港饭店',1610074026231,1610074208997,'234',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074449371 DEFAULT CHARSET=utf8 COMMENT='消防知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-01-08 02:40:46','标题1','http://localhost:8080/ssm101zi/upload/1610074131489.jpg','<p>内容1</p>'),(62,'2021-01-08 02:40:46','标题2','http://localhost:8080/ssm101zi/upload/news_picture2.jpg','内容2'),(63,'2021-01-08 02:40:46','标题3','http://localhost:8080/ssm101zi/upload/news_picture3.jpg','内容3'),(64,'2021-01-08 02:40:46','标题4','http://localhost:8080/ssm101zi/upload/news_picture4.jpg','内容4'),(65,'2021-01-08 02:40:46','标题5','http://localhost:8080/ssm101zi/upload/news_picture5.jpg','内容5'),(66,'2021-01-08 02:40:46','标题6','http://localhost:8080/ssm101zi/upload/news_picture6.jpg','内容6'),(1610074449370,'2021-01-08 02:54:09','消防知识sad发富士达f','http://localhost:8080/ssm101zi/upload/1610074443504.jpg','<p>撒旦法手打富士达范德萨富士达富士达答复</p><p>答复感到十分广东佛山感到十分</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1610073923525,'123','xiaofangdanwei','消防单位','medtuunm0w1letezw9eb4hflnoi0wslm','2021-01-08 02:45:29','2021-01-08 03:49:23'),(2,1,'abo','users','管理员','pfn8zgs6ler4xs2vvtfcb5m2kcbmehno','2021-01-08 02:47:39','2021-01-08 03:52:49'),(3,1610074208997,'234','xiaofangdanwei','消防单位','dc6aen8rt8xdxtl2nhcckph6o9vtc268','2021-01-08 02:50:17','2021-01-08 03:50:18');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-08 02:40:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaofangdanwei`
--

DROP TABLE IF EXISTS `xiaofangdanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaofangdanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweizhanghao` varchar(200) NOT NULL COMMENT '单位账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `danweiyouxiang` varchar(200) DEFAULT NULL COMMENT '单位邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danweizhanghao` (`danweizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074208998 DEFAULT CHARSET=utf8 COMMENT='消防单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaofangdanwei`
--

LOCK TABLES `xiaofangdanwei` WRITE;
/*!40000 ALTER TABLE `xiaofangdanwei` DISABLE KEYS */;
INSERT INTO `xiaofangdanwei` VALUES (11,'2021-01-08 02:40:46','消防单位1','123456','单位名称1','负责人1','13823888881','773890001@qq.com'),(12,'2021-01-08 02:40:46','消防单位2','123456','单位名称2','负责人2','13823888882','773890002@qq.com'),(13,'2021-01-08 02:40:46','消防单位3','123456','单位名称3','负责人3','13823888883','773890003@qq.com'),(14,'2021-01-08 02:40:46','消防单位4','123456','单位名称4','负责人4','13823888884','773890004@qq.com'),(15,'2021-01-08 02:40:46','消防单位5','123456','单位名称5','负责人5','13823888885','773890005@qq.com'),(16,'2021-01-08 02:40:46','消防单位6','123456','单位名称6','负责人6','13823888886','773890006@qq.com'),(1610073923525,'2021-01-08 02:45:23','123','123','单位234','都是','13455667788','32453@qq.com'),(1610074208997,'2021-01-08 02:50:08','234','234','梵蒂冈','沟通','13455667788','76576@qq.com');
/*!40000 ALTER TABLE `xiaofangdanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaofangshebei`
--

DROP TABLE IF EXISTS `xiaofangshebei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaofangshebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweizhanghao` varchar(200) DEFAULT NULL COMMENT '单位账号',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `jianchajilu` longtext COMMENT '检查记录',
  `weihujilu` longtext COMMENT '维护记录',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074325142 DEFAULT CHARSET=utf8 COMMENT='消防设备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaofangshebei`
--

LOCK TABLES `xiaofangshebei` WRITE;
/*!40000 ALTER TABLE `xiaofangshebei` DISABLE KEYS */;
INSERT INTO `xiaofangshebei` VALUES (21,'2021-01-08 02:40:46','单位账号1','单位名称1','设备名称1','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian1.jpg','使用方法1','检查记录1','维护记录1','否',''),(22,'2021-01-08 02:40:46','单位账号2','单位名称2','设备名称2','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian2.jpg','使用方法2','检查记录2','维护记录2','否',''),(23,'2021-01-08 02:40:46','单位账号3','单位名称3','设备名称3','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian3.jpg','使用方法3','检查记录3','维护记录3','否',''),(24,'2021-01-08 02:40:46','单位账号4','单位名称4','设备名称4','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian4.jpg','使用方法4','检查记录4','维护记录4','否',''),(25,'2021-01-08 02:40:46','单位账号5','单位名称5','设备名称5','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian5.jpg','使用方法5','检查记录5','维护记录5','否',''),(26,'2021-01-08 02:40:46','单位账号6','单位名称6','设备名称6','http://localhost:8080/ssm101zi/upload/xiaofangshebei_tupian6.jpg','使用方法6','检查记录6','维护记录6','否',''),(1610074325141,'2021-01-08 02:52:04','234','梵蒂冈','设备123','http://localhost:8080/ssm101zi/upload/1610074318918.jpg','范德萨富士达富士达富士达f','撒旦法大富士达富士达','士大夫手打富士达富士达','是','爱的方式大师傅手打范德萨发手打');
/*!40000 ALTER TABLE `xiaofangshebei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yanwubaojingqi`
--

DROP TABLE IF EXISTS `yanwubaojingqi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yanwubaojingqi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweizhanghao` varchar(200) DEFAULT NULL COMMENT '单位账号',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `baojingqimingcheng` varchar(200) DEFAULT NULL COMMENT '报警器名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `anzhuangshijian` date DEFAULT NULL COMMENT '安装时间',
  `baoxiushijian` date DEFAULT NULL COMMENT '保修时间',
  `baojingshuju` longtext COMMENT '报警数据',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610074357870 DEFAULT CHARSET=utf8 COMMENT='烟雾报警器';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yanwubaojingqi`
--

LOCK TABLES `yanwubaojingqi` WRITE;
/*!40000 ALTER TABLE `yanwubaojingqi` DISABLE KEYS */;
INSERT INTO `yanwubaojingqi` VALUES (31,'2021-01-08 02:40:46','单位账号1','单位名称1','报警器名称1','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian1.jpg','型号1','2021-01-08','2021-01-08','报警数据1','否',''),(32,'2021-01-08 02:40:46','单位账号2','单位名称2','报警器名称2','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian2.jpg','型号2','2021-01-08','2021-01-08','报警数据2','否',''),(33,'2021-01-08 02:40:46','单位账号3','单位名称3','报警器名称3','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian3.jpg','型号3','2021-01-08','2021-01-08','报警数据3','否',''),(34,'2021-01-08 02:40:46','单位账号4','单位名称4','报警器名称4','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian4.jpg','型号4','2021-01-08','2021-01-08','报警数据4','否',''),(35,'2021-01-08 02:40:46','单位账号5','单位名称5','报警器名称5','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian5.jpg','型号5','2021-01-08','2021-01-08','报警数据5','否',''),(36,'2021-01-08 02:40:46','单位账号6','单位名称6','报警器名称6','http://localhost:8080/ssm101zi/upload/yanwubaojingqi_tupian6.jpg','型号6','2021-01-08','2021-01-08','报警数据6','否',''),(1610073964038,'2021-01-08 02:46:03','123','单位234','大师傅个','http://localhost:8080/ssm101zi/upload/1610073949718.jpg','型号123','2021-01-08','2022-02-01','的说法手打发的发的','否',''),(1610074357869,'2021-01-08 02:52:37','234','梵蒂冈','的说法sad','http://localhost:8080/ssm101zi/upload/1610074341972.jpg','型号12','2021-01-08','2022-03-01','阿斯蒂芬手打范德萨富士达富士达','否','报警数据设置不合理');
/*!40000 ALTER TABLE `yanwubaojingqi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 12:56:56
