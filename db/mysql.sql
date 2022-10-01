DROP DATABASE IF EXISTS django6o293;

CREATE DATABASE django6o293 default character set utf8mb4 collate utf8mb4_general_ci;

USE django6o293;

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`touxiang` varchar(200)    COMMENT '头像',
	`xingbie` varchar(200)    COMMENT '性别',
	`shouji` varchar(200)    COMMENT '手机',
	`chepai` varchar(200)    COMMENT '车牌',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(11,'会员1','123456','姓名1','http://localhost:8080/django6o293/upload/huiyuan_touxiang1.jpg','男','13823888881','车牌1');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(12,'会员2','123456','姓名2','http://localhost:8080/django6o293/upload/huiyuan_touxiang2.jpg','男','13823888882','车牌2');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(13,'会员3','123456','姓名3','http://localhost:8080/django6o293/upload/huiyuan_touxiang3.jpg','男','13823888883','车牌3');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(14,'会员4','123456','姓名4','http://localhost:8080/django6o293/upload/huiyuan_touxiang4.jpg','男','13823888884','车牌4');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(15,'会员5','123456','姓名5','http://localhost:8080/django6o293/upload/huiyuan_touxiang5.jpg','男','13823888885','车牌5');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,chepai) VALUES(16,'会员6','123456','姓名6','http://localhost:8080/django6o293/upload/huiyuan_touxiang6.jpg','男','13823888886','车牌6');

DROP TABLE IF EXISTS `cheweileixing`;

CREATE TABLE `cheweileixing` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cheweileixing` varchar(200) NOT NULL UNIQUE   COMMENT '车位类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车位类型';

INSERT INTO cheweileixing(id,cheweileixing) VALUES(21,'车位类型1');
INSERT INTO cheweileixing(id,cheweileixing) VALUES(22,'车位类型2');
INSERT INTO cheweileixing(id,cheweileixing) VALUES(23,'车位类型3');
INSERT INTO cheweileixing(id,cheweileixing) VALUES(24,'车位类型4');
INSERT INTO cheweileixing(id,cheweileixing) VALUES(25,'车位类型5');
INSERT INTO cheweileixing(id,cheweileixing) VALUES(26,'车位类型6');

DROP TABLE IF EXISTS `cheweixinxi`;

CREATE TABLE `cheweixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cheweibianhao` varchar(200) NOT NULL UNIQUE   COMMENT '车位编号',
	`cheweimingcheng` varchar(200)    COMMENT '车位名称',
	`cheweileixing` varchar(200)    COMMENT '车位类型',
	`cheweitupian` varchar(200)    COMMENT '车位图片',
	`cheweiweizhi` varchar(200)    COMMENT '车位位置',
	`cheweizhuangtai` varchar(200) NOT NULL   COMMENT '车位状态',
	`tingchejiage` int NOT NULL   COMMENT '停车价格',
	`shoufeibiaozhun` varchar(200)    COMMENT '收费标准',
	`cheweixiangqing` longtext    COMMENT '车位详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车位信息';

INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(31,'车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian1.jpg','车位位置1','可停',1,'收费标准1','车位详情1');
INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(32,'车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian2.jpg','车位位置2','可停',2,'收费标准2','车位详情2');
INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(33,'车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian3.jpg','车位位置3','可停',3,'收费标准3','车位详情3');
INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(34,'车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian4.jpg','车位位置4','可停',4,'收费标准4','车位详情4');
INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(35,'车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian5.jpg','车位位置5','可停',5,'收费标准5','车位详情5');
INSERT INTO cheweixinxi(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,tingchejiage,shoufeibiaozhun,cheweixiangqing) VALUES(36,'车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/cheweixinxi_cheweitupian6.jpg','车位位置6','可停',6,'收费标准6','车位详情6');

DROP TABLE IF EXISTS `cheweiweihu`;

CREATE TABLE `cheweiweihu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cheweibianhao` varchar(200) NOT NULL   COMMENT '车位编号',
	`cheweimingcheng` varchar(200)    COMMENT '车位名称',
	`cheweileixing` varchar(200)    COMMENT '车位类型',
	`cheweiweizhi` varchar(200)    COMMENT '车位位置',
	`weihuleixing` varchar(200) NOT NULL   COMMENT '维护类型',
	`weihuxiangmu` varchar(200)    COMMENT '维护项目',
	`weihushijian` datetime NOT NULL   COMMENT '维护时间',
	`weihuxiangqing` longtext    COMMENT '维护详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车位维护';

INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(41,'车位编号1','车位名称1','车位类型1','车位位置1','保养','维护项目1',CURRENT_TIMESTAMP,'维护详情1');
INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(42,'车位编号2','车位名称2','车位类型2','车位位置2','保养','维护项目2',CURRENT_TIMESTAMP,'维护详情2');
INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(43,'车位编号3','车位名称3','车位类型3','车位位置3','保养','维护项目3',CURRENT_TIMESTAMP,'维护详情3');
INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(44,'车位编号4','车位名称4','车位类型4','车位位置4','保养','维护项目4',CURRENT_TIMESTAMP,'维护详情4');
INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(45,'车位编号5','车位名称5','车位类型5','车位位置5','保养','维护项目5',CURRENT_TIMESTAMP,'维护详情5');
INSERT INTO cheweiweihu(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweiweizhi,weihuleixing,weihuxiangmu,weihushijian,weihuxiangqing) VALUES(46,'车位编号6','车位名称6','车位类型6','车位位置6','保养','维护项目6',CURRENT_TIMESTAMP,'维护详情6');

DROP TABLE IF EXISTS `ruchangtingche`;

CREATE TABLE `ruchangtingche` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cheweibianhao` varchar(200) NOT NULL   COMMENT '车位编号',
	`cheweimingcheng` varchar(200)    COMMENT '车位名称',
	`cheweileixing` varchar(200)    COMMENT '车位类型',
	`cheweitupian` varchar(200)    COMMENT '车位图片',
	`cheweiweizhi` varchar(200)    COMMENT '车位位置',
	`cheweizhuangtai` varchar(200)    COMMENT '车位状态',
	`shoufeibiaozhun` varchar(200)    COMMENT '收费标准',
	`tingchejiage` int    COMMENT '停车价格',
	`ruchangshijian` datetime NOT NULL   COMMENT '入场时间',
	`ruchangbeizhu` varchar(200)    COMMENT '入场备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`chepai` varchar(200)    COMMENT '车牌',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入场停车';

INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(51,'车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian1.jpg','车位位置1','可停','收费标准1',1,CURRENT_TIMESTAMP,'入场备注1','用户名1','13823888881','车牌1','是','');
INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(52,'车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian2.jpg','车位位置2','可停','收费标准2',2,CURRENT_TIMESTAMP,'入场备注2','用户名2','13823888882','车牌2','是','');
INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(53,'车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian3.jpg','车位位置3','可停','收费标准3',3,CURRENT_TIMESTAMP,'入场备注3','用户名3','13823888883','车牌3','是','');
INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(54,'车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian4.jpg','车位位置4','可停','收费标准4',4,CURRENT_TIMESTAMP,'入场备注4','用户名4','13823888884','车牌4','是','');
INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(55,'车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian5.jpg','车位位置5','可停','收费标准5',5,CURRENT_TIMESTAMP,'入场备注5','用户名5','13823888885','车牌5','是','');
INSERT INTO ruchangtingche(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,cheweiweizhi,cheweizhuangtai,shoufeibiaozhun,tingchejiage,ruchangshijian,ruchangbeizhu,yonghuming,shouji,chepai,sfsh,shhf) VALUES(56,'车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/ruchangtingche_cheweitupian6.jpg','车位位置6','可停','收费标准6',6,CURRENT_TIMESTAMP,'入场备注6','用户名6','13823888886','车牌6','是','');

DROP TABLE IF EXISTS `chuchangjiaofei`;

CREATE TABLE `chuchangjiaofei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`cheweibianhao` varchar(200) NOT NULL   COMMENT '车位编号',
	`cheweimingcheng` varchar(200)    COMMENT '车位名称',
	`cheweileixing` varchar(200)    COMMENT '车位类型',
	`cheweitupian` varchar(200)    COMMENT '车位图片',
	`tingchejiage` int    COMMENT '停车价格',
	`ruchangshijian` varchar(200)    COMMENT '入场时间',
	`chuchangshijian` datetime NOT NULL   COMMENT '出场时间',
	`tingcheshizhang` int NOT NULL   COMMENT '停车时长',
	`tingchefeiyong` int    COMMENT '停车费用',
	`xinxibeizhu` varchar(200)    COMMENT '信息备注',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`chepai` varchar(200)    COMMENT '车牌',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出场缴费';

INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(61,'车位编号1','车位名称1','车位类型1','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian1.jpg',1,'入场时间1',CURRENT_TIMESTAMP,1,1,'信息备注1','用户名1','13823888881','车牌1','是','','未支付');
INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(62,'车位编号2','车位名称2','车位类型2','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian2.jpg',2,'入场时间2',CURRENT_TIMESTAMP,2,2,'信息备注2','用户名2','13823888882','车牌2','是','','未支付');
INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(63,'车位编号3','车位名称3','车位类型3','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian3.jpg',3,'入场时间3',CURRENT_TIMESTAMP,3,3,'信息备注3','用户名3','13823888883','车牌3','是','','未支付');
INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(64,'车位编号4','车位名称4','车位类型4','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian4.jpg',4,'入场时间4',CURRENT_TIMESTAMP,4,4,'信息备注4','用户名4','13823888884','车牌4','是','','未支付');
INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(65,'车位编号5','车位名称5','车位类型5','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian5.jpg',5,'入场时间5',CURRENT_TIMESTAMP,5,5,'信息备注5','用户名5','13823888885','车牌5','是','','未支付');
INSERT INTO chuchangjiaofei(id,cheweibianhao,cheweimingcheng,cheweileixing,cheweitupian,tingchejiage,ruchangshijian,chuchangshijian,tingcheshizhang,tingchefeiyong,xinxibeizhu,yonghuming,shouji,chepai,sfsh,shhf,ispay) VALUES(66,'车位编号6','车位名称6','车位类型6','http://localhost:8080/django6o293/upload/chuchangjiaofei_cheweitupian6.jpg',6,'入场时间6',CURRENT_TIMESTAMP,6,6,'信息备注6','用户名6','13823888886','车牌6','是','','未支付');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息';

INSERT INTO news(id,title,introduction,picture,content) VALUES(81,'标题1','简介1','http://localhost:8080/django6o293/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(82,'标题2','简介2','http://localhost:8080/django6o293/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(83,'标题3','简介3','http://localhost:8080/django6o293/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(84,'标题4','简介4','http://localhost:8080/django6o293/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(85,'标题5','简介5','http://localhost:8080/django6o293/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(86,'标题6','简介6','http://localhost:8080/django6o293/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(id,userid,username,content,reply) VALUES(91,1,'用户名1','留言内容1','回复内容1');
INSERT INTO messages(id,userid,username,content,reply) VALUES(92,2,'用户名2','留言内容2','回复内容2');
INSERT INTO messages(id,userid,username,content,reply) VALUES(93,3,'用户名3','留言内容3','回复内容3');
INSERT INTO messages(id,userid,username,content,reply) VALUES(94,4,'用户名4','留言内容4','回复内容4');
INSERT INTO messages(id,userid,username,content,reply) VALUES(95,5,'用户名5','留言内容5','回复内容5');
INSERT INTO messages(id,userid,username,content,reply) VALUES(96,6,'用户名6','留言内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/django6o293/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/django6o293/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/django6o293/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');


