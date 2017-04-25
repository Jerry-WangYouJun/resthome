/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : resthome

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2017-04-25 22:48:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', '你我他', '1');
INSERT INTO `d_user` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for `t_bed`
-- ----------------------------
DROP TABLE IF EXISTS `t_bed`;
CREATE TABLE `t_bed` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `room` varchar(5) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bed
-- ----------------------------
INSERT INTO `t_bed` VALUES ('1', 'B001', 'R001', 'A区', '1111\r\n              ');
INSERT INTO `t_bed` VALUES ('6', 'T002', 'R002', 'A区', null);

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bedId` int(11) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `idcard` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `nurse` varchar(20) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `outdate` datetime DEFAULT NULL,
  `relation` varchar(10) DEFAULT NULL,
  `rphone` varchar(20) DEFAULT NULL,
  `rname` varchar(20) DEFAULT NULL,
  `raddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
