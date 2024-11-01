/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmun1dm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmun1dm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmun1dm`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmun1dm/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmun1dm/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmun1dm/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussmeifaxinxi` */

DROP TABLE IF EXISTS `discussmeifaxinxi`;

CREATE TABLE `discussmeifaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769039279 DEFAULT CHARSET=utf8 COMMENT='美发信息评论表';

/*Data for the table `discussmeifaxinxi` */

insert  into `discussmeifaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-26 22:27:46',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-26 22:27:46',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-26 22:27:46',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-26 22:27:46',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-26 22:27:46',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-26 22:27:46',6,6,'用户名6','评论内容6','回复内容6'),(1616769039278,'2021-03-26 22:30:38',31,1616768986527,'11','不错，美美哒',NULL);

/*Table structure for table `discussshangpuxinxi` */

DROP TABLE IF EXISTS `discussshangpuxinxi`;

CREATE TABLE `discussshangpuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769014233 DEFAULT CHARSET=utf8 COMMENT='商铺信息评论表';

/*Data for the table `discussshangpuxinxi` */

insert  into `discussshangpuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-26 22:27:46',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-26 22:27:46',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-26 22:27:46',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-26 22:27:46',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-26 22:27:46',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-26 22:27:46',6,6,'用户名6','评论内容6','回复内容6'),(1616769014232,'2021-03-26 22:30:13',21,1616768986527,'11','safqf',NULL);

/*Table structure for table `discussyonghufenxiang` */

DROP TABLE IF EXISTS `discussyonghufenxiang`;

CREATE TABLE `discussyonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='用户分享评论表';

/*Data for the table `discussyonghufenxiang` */

insert  into `discussyonghufenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-26 22:27:46',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-26 22:27:46',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-26 22:27:46',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-26 22:27:46',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-26 22:27:46',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-26 22:27:46',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyouhuihuodong` */

DROP TABLE IF EXISTS `discussyouhuihuodong`;

CREATE TABLE `discussyouhuihuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769057519 DEFAULT CHARSET=utf8 COMMENT='优惠活动评论表';

/*Data for the table `discussyouhuihuodong` */

insert  into `discussyouhuihuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-26 22:27:46',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-26 22:27:46',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-26 22:27:46',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-26 22:27:46',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-26 22:27:46',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-26 22:27:46',6,6,'用户名6','评论内容6','回复内容6'),(1616769057518,'2021-03-26 22:30:56',41,1616768986527,'11','活动很好',NULL);

/*Table structure for table `meifaxinxi` */

DROP TABLE IF EXISTS `meifaxinxi`;

CREATE TABLE `meifaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `hulixiaoguo` longtext COMMENT '护理效果',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='美发信息';

/*Data for the table `meifaxinxi` */

insert  into `meifaxinxi`(`id`,`addtime`,`mingcheng`,`xiangmuleixing`,`hulixiaoguo`,`jiage`,`xiangqing`,`tupian`,`thumbsupnum`,`crazilynum`) values (31,'2021-03-26 22:27:46','啊大大','护理','护理效果1阿斯顿撒旦',100,'<p>十大打算</p>','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian1.jpg',1,1),(32,'2021-03-26 22:27:46','名称2','烫发','护理效果2',2,'详情2','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian2.jpg',2,2),(33,'2021-03-26 22:27:46','名称3','烫发','护理效果3',3,'详情3','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian3.jpg',3,3),(34,'2021-03-26 22:27:46','名称4','烫发','护理效果4',4,'详情4','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian4.jpg',4,4),(35,'2021-03-26 22:27:46','名称5','烫发','护理效果5',5,'详情5','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian5.jpg',5,5),(36,'2021-03-26 22:27:46','名称6','烫发','护理效果6',6,'详情6','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian6.jpg',6,6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769182745 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-03-26 22:27:46',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-26 22:27:46',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-26 22:27:46',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-26 22:27:46',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-26 22:27:46',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-26 22:27:46',6,'用户名6','留言内容6','回复内容6'),(1616769182744,'2021-03-26 22:33:02',1616768986527,'11','是发发士大夫','好的');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='美发资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-26 22:27:46','a\'s\'da\'s\'d','的撒旦a','http://localhost:8080/ssmun1dm/upload/news_picture1.jpg','<p>的撒的撒</p>'),(82,'2021-03-26 22:27:46','标题2','简介2','http://localhost:8080/ssmun1dm/upload/news_picture2.jpg','内容2'),(83,'2021-03-26 22:27:46','标题3','简介3','http://localhost:8080/ssmun1dm/upload/news_picture3.jpg','内容3'),(84,'2021-03-26 22:27:46','标题4','简介4','http://localhost:8080/ssmun1dm/upload/news_picture4.jpg','内容4'),(85,'2021-03-26 22:27:46','标题5','简介5','http://localhost:8080/ssmun1dm/upload/news_picture5.jpg','内容5'),(86,'2021-03-26 22:27:46','标题6','简介6','http://localhost:8080/ssmun1dm/upload/news_picture6.jpg','内容6');

/*Table structure for table `shangpuxinxi` */

DROP TABLE IF EXISTS `shangpuxinxi`;

CREATE TABLE `shangpuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpumingcheng` varchar(200) NOT NULL COMMENT '商铺名称',
  `shangpudizhi` varchar(200) DEFAULT NULL COMMENT '商铺地址',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shangpujieshao` longtext COMMENT '商铺介绍',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商铺信息';

/*Data for the table `shangpuxinxi` */

insert  into `shangpuxinxi`(`id`,`addtime`,`shangpumingcheng`,`shangpudizhi`,`jingyingfanwei`,`lianxiren`,`lianxidianhua`,`shangpujieshao`,`tupian`,`thumbsupnum`,`crazilynum`) values (21,'2021-03-26 22:27:46','sadad ','dsadda','美容美发','dsadsa','13823888881','<p>编辑器可以上传文字图片</p>','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian1.jpg',2,1),(22,'2021-03-26 22:27:46','商铺名称2','商铺地址2','经营范围2','联系人2','13823888882','商铺介绍2','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian2.jpg',2,2),(23,'2021-03-26 22:27:46','商铺名称3','商铺地址3','经营范围3','联系人3','13823888883','商铺介绍3','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian3.jpg',3,3),(24,'2021-03-26 22:27:46','商铺名称4','商铺地址4','经营范围4','联系人4','13823888884','商铺介绍4','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian4.jpg',4,4),(25,'2021-03-26 22:27:46','商铺名称5','商铺地址5','经营范围5','联系人5','13823888885','商铺介绍5','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian5.jpg',5,5),(26,'2021-03-26 22:27:46','商铺名称6','商铺地址6','经营范围6','联系人6','13823888886','商铺介绍6','http://localhost:8080/ssmun1dm/upload/shangpuxinxi_tupian6.jpg',6,6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769025098 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616769025097,'2021-03-26 22:30:24',1616768986527,31,'meifaxinxi','名称1','http://localhost:8080/ssmun1dm/upload/meifaxinxi_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616768986527,'11','yonghu','用户','fz02borbi51w4jtr35usvn507l3aplaq','2021-03-26 22:29:50','2021-03-26 23:29:51'),(2,1,'abo','users','管理员','7mn6z4r7f3lzvibit309wh4lxsymvhbz','2021-03-26 22:34:30','2021-03-26 23:34:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-26 22:27:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616768986528 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`tupian`) values (11,'2021-03-26 22:27:46','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmun1dm/upload/yonghu_tupian1.jpg'),(12,'2021-03-26 22:27:46','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmun1dm/upload/yonghu_tupian2.jpg'),(13,'2021-03-26 22:27:46','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmun1dm/upload/yonghu_tupian3.jpg'),(14,'2021-03-26 22:27:46','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmun1dm/upload/yonghu_tupian4.jpg'),(15,'2021-03-26 22:27:46','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmun1dm/upload/yonghu_tupian5.jpg'),(16,'2021-03-26 22:27:46','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmun1dm/upload/yonghu_tupian6.jpg'),(1616768986527,'2021-03-26 22:29:46','11','11','11','男','18957465421','','','');

/*Table structure for table `yonghufenxiang` */

DROP TABLE IF EXISTS `yonghufenxiang`;

CREATE TABLE `yonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `hulixiaoguo` longtext COMMENT '护理效果',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769129214 DEFAULT CHARSET=utf8 COMMENT='用户分享';

/*Data for the table `yonghufenxiang` */

insert  into `yonghufenxiang`(`id`,`addtime`,`zhanghao`,`mima`,`mingcheng`,`xiangmuleixing`,`hulixiaoguo`,`jiage`,`xiangqing`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (61,'2021-03-26 22:27:46','账号1','密码1','名称1','项目类型1','护理效果1',1,'详情1','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian1.jpg',1,1,'2021-03-26 22:31:28',2),(62,'2021-03-26 22:27:46','账号2','密码2','名称2','项目类型2','护理效果2',2,'详情2','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian2.jpg',2,2,'2021-03-26 22:27:46',2),(63,'2021-03-26 22:27:46','账号3','密码3','名称3','项目类型3','护理效果3',3,'详情3','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian3.jpg',3,3,'2021-03-26 22:27:46',3),(64,'2021-03-26 22:27:46','账号4','密码4','名称4','项目类型4','护理效果4',4,'详情4','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian4.jpg',4,4,'2021-03-26 22:27:46',4),(65,'2021-03-26 22:27:46','账号5','密码5','名称5','项目类型5','护理效果5',5,'详情5','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian5.jpg',5,5,'2021-03-26 22:27:46',5),(66,'2021-03-26 22:27:46','账号6','密码6','名称6','项目类型6','护理效果6',6,'详情6','http://localhost:8080/ssmun1dm/upload/yonghufenxiang_tupian6.jpg',6,6,'2021-03-26 22:27:46',6),(1616769129213,'2021-03-26 22:32:08','11','11','大大撒旦','撒旦撒',NULL,88,'<p>请输入详情阿斯顿撒</p>',NULL,0,0,'2021-03-26 22:36:11',1);

/*Table structure for table `yonghuyuyue` */

DROP TABLE IF EXISTS `yonghuyuyue`;

CREATE TABLE `yonghuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616769073722 DEFAULT CHARSET=utf8 COMMENT='用户预约';

/*Data for the table `yonghuyuyue` */

insert  into `yonghuyuyue`(`id`,`addtime`,`mingcheng`,`xiangmuleixing`,`jiage`,`yuyueshijian`,`zhanghao`,`mima`,`sfsh`,`shhf`,`ispay`) values (51,'2021-03-26 22:27:46','名称1','项目类型1',1,'2021-03-26','账号1','密码1','是','','未支付'),(52,'2021-03-26 22:27:46','名称2','项目类型2',2,'2021-03-26','账号2','密码2','是','','未支付'),(53,'2021-03-26 22:27:46','名称3','项目类型3',3,'2021-03-26','账号3','密码3','是','','未支付'),(54,'2021-03-26 22:27:46','名称4','项目类型4',4,'2021-03-26','账号4','密码4','是','','未支付'),(55,'2021-03-26 22:27:46','名称5','项目类型5',5,'2021-03-26','账号5','密码5','是','','未支付'),(56,'2021-03-26 22:27:46','名称6','项目类型6',6,'2021-03-26','账号6','密码6','是','','未支付'),(1616769073721,'2021-03-26 22:31:13','名称2','烫发',2,'2021-03-26','11','11','是','OK','已支付');

/*Table structure for table `youhuihuodong` */

DROP TABLE IF EXISTS `youhuihuodong`;

CREATE TABLE `youhuihuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongzhuti` varchar(200) DEFAULT NULL COMMENT '活动主题',
  `huodongmude` varchar(200) DEFAULT NULL COMMENT '活动目的',
  `youhuixiangmu` longtext COMMENT '优惠项目',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='优惠活动';

/*Data for the table `youhuihuodong` */

insert  into `youhuihuodong`(`id`,`addtime`,`huodongzhuti`,`huodongmude`,`youhuixiangmu`,`kaishishijian`,`jieshushijian`,`xiangqing`,`fengmian`,`thumbsupnum`,`crazilynum`) values (41,'2021-03-26 22:27:46','啊实打实','的撒旦撒旦','阿斯顿撒打手','2021-03-26','2021-03-30','<p>详情1撒打撒打撒打撒</p>','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian1.jpg',2,1),(42,'2021-03-26 22:27:46','活动主题2','活动目的2','优惠项目2','2021-03-26','2021-03-26','详情2','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian2.jpg',2,2),(43,'2021-03-26 22:27:46','活动主题3','活动目的3','优惠项目3','2021-03-26','2021-03-26','详情3','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian3.jpg',3,3),(44,'2021-03-26 22:27:46','活动主题4','活动目的4','优惠项目4','2021-03-26','2021-03-26','详情4','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian4.jpg',4,4),(45,'2021-03-26 22:27:46','活动主题5','活动目的5','优惠项目5','2021-03-26','2021-03-26','详情5','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian5.jpg',5,5),(46,'2021-03-26 22:27:46','活动主题6','活动目的6','优惠项目6','2021-03-26','2021-03-26','详情6','http://localhost:8080/ssmun1dm/upload/youhuihuodong_fengmian6.jpg',6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
