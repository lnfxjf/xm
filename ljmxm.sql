/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - caigou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`caigou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `caigou`;

/*Table structure for table `cgthb` */

DROP TABLE IF EXISTS `cgthb`;

CREATE TABLE `cgthb` (
  `DanHao` varchar(20) NOT NULL COMMENT '单号',
  `RiQi` datetime NOT NULL COMMENT '日期',
  `Gongyingshang` varchar(20) NOT NULL COMMENT '供应商——关联供应商',
  `Djsfhs` varchar(10) NOT NULL COMMENT '单价是否含税——是/否',
  `Cangku` varchar(20) NOT NULL COMMENT '仓库——关联仓库ID',
  `Cxrk` varchar(50) NOT NULL COMMENT '重新入库——是/否',
  `Cgry` varchar(20) NOT NULL COMMENT '采购人员——采购表ID',
  `Zdry` varchar(20) NOT NULL COMMENT '制单人员——制单表ID',
  `Zkss` varchar(20) NOT NULL COMMENT '账款所属',
  `Fkrq` datetime NOT NULL COMMENT '付款日期',
  `Fktj` varchar(20) NOT NULL COMMENT '付款条件',
  `Zkyf` datetime NOT NULL COMMENT '付款月份',
  `Beizhu` varchar(666) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DanHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cgthb` */

/*Table structure for table `cgthxqb` */

DROP TABLE IF EXISTS `cgthxqb`;

CREATE TABLE `cgthxqb` (
  `DanHao` varchar(20) NOT NULL COMMENT '单号',
  `Xianqing` varchar(20) NOT NULL COMMENT '关联物料表ID',
  PRIMARY KEY (`DanHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cgthxqb` */

/*Table structure for table `gyscgxqb` */

DROP TABLE IF EXISTS `gyscgxqb`;

CREATE TABLE `gyscgxqb` (
  `Gysbh` varchar(20) NOT NULL COMMENT '供应商编号',
  `Zccgrkr` datetime DEFAULT NULL COMMENT '最初采购入库日',
  `Zccgthr` datetime DEFAULT NULL COMMENT '最近采购退货日',
  `Zjcgrkr` datetime DEFAULT NULL COMMENT '最近采购入库日',
  `Zjcgthr` datetime DEFAULT NULL COMMENT '最近采购退货日',
  `Djsfhs` varchar(20) DEFAULT NULL COMMENT '单价是否含税——未税/以税',
  `Jzjyr` datetime DEFAULT NULL COMMENT '禁止交易日',
  PRIMARY KEY (`Gysbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gyscgxqb` */

/*Table structure for table `gysdzxq` */

DROP TABLE IF EXISTS `gysdzxq`;

CREATE TABLE `gysdzxq` (
  `Dizhibh` varchar(20) NOT NULL COMMENT '地址编号',
  `Dizhi` varchar(20) DEFAULT NULL COMMENT '地址',
  `Yzbm` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `Lxr` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Lxrzc` int(10) DEFAULT NULL COMMENT '联系人职称',
  `Lxdh` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `Czhm` int(10) DEFAULT NULL COMMENT '传真号码',
  `Xzlx` varchar(20) DEFAULT NULL COMMENT '行走路线',
  `Beizhu` varchar(20) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Dizhibh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gysdzxq` */

/*Table structure for table `gysfkxq` */

DROP TABLE IF EXISTS `gysfkxq`;

CREATE TABLE `gysfkxq` (
  `Gysbh` varchar(20) NOT NULL COMMENT '供应商编号',
  `Zked` double DEFAULT NULL COMMENT '账款额度',
  `Syed` double DEFAULT NULL COMMENT '剩余额度',
  `Fktj` varchar(20) DEFAULT NULL COMMENT '付款条件',
  `Myjzr` int(10) NOT NULL COMMENT '每月结账日',
  `Xydj` varchar(20) DEFAULT NULL COMMENT '信用等级',
  `Fplx` varchar(20) DEFAULT NULL COMMENT '发票类型',
  `Qcyufk` double DEFAULT NULL COMMENT '期初预付款',
  `Qcyingfk` double DEFAULT NULL COMMENT '期初应付款',
  `Qmyufk` double DEFAULT NULL COMMENT '期末预付款',
  `Qmyingfk` double DEFAULT NULL COMMENT '期末应付款',
  `Wkpje` double DEFAULT NULL COMMENT '未开票金额',
  `Yufzkkm` varchar(20) DEFAULT NULL COMMENT '预付账款科目',
  `Yingfzkkm` varchar(20) DEFAULT NULL COMMENT '应付账款科目',
  `Yfzgkm` varchar(20) DEFAULT NULL COMMENT '应付暂估科目',
  PRIMARY KEY (`Gysbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gysfkxq` */

/*Table structure for table `gyszwjb` */

DROP TABLE IF EXISTS `gyszwjb`;

CREATE TABLE `gyszwjb` (
  `Gysbh` varchar(20) NOT NULL COMMENT '供应商编号',
  `Zkgs` varchar(20) DEFAULT NULL COMMENT '账款归属',
  `Gysqc` varchar(20) DEFAULT NULL COMMENT '供应商全称',
  `Gysjc` varchar(20) DEFAULT NULL COMMENT '供应商简称',
  `Ywqc` varchar(20) DEFAULT NULL COMMENT '英文全称',
  `Ywjc` varchar(20) DEFAULT NULL COMMENT '英文简称',
  `Leibie` varchar(20) DEFAULT NULL COMMENT '类别——类别表ID',
  `Diqv` varchar(20) DEFAULT NULL COMMENT '地区',
  `Fuzeren` varchar(20) DEFAULT NULL COMMENT '负责人',
  `Lianxiren` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Lxdh1` int(20) DEFAULT NULL COMMENT '联系电话1',
  `Lxdh2` int(20) DEFAULT NULL COMMENT '联系电话2',
  `Lxdh3` int(20) DEFAULT NULL COMMENT '联系电话3',
  `Yddh` int(20) DEFAULT NULL COMMENT '移动电话',
  `Yhzh` varchar(20) DEFAULT NULL COMMENT '银行账号',
  `Khyh` varchar(20) DEFAULT NULL COMMENT '开户银行',
  `Cgry` varchar(20) DEFAULT NULL COMMENT '采购人员——采购ID',
  `Swdjh` varchar(20) DEFAULT NULL COMMENT '税务登记号',
  `Zbe` double NOT NULL COMMENT '资本额',
  `Hyb` varchar(20) DEFAULT NULL COMMENT '行业别',
  `Dzyj` varchar(20) DEFAULT NULL COMMENT '电子邮件',
  `Wz` varchar(20) DEFAULT NULL COMMENT '网址',
  `Czhm` int(20) DEFAULT NULL COMMENT '传真号码',
  `Beizhu` varchar(20) DEFAULT NULL COMMENT '备注',
  `Dizhi` varchar(20) DEFAULT NULL COMMENT '关联地址==地址ID',
  PRIMARY KEY (`Gysbh`,`Zbe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gyszwjb` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
