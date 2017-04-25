/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50130
Source Host           : localhost:3306
Source Database       : resthome

Target Server Type    : MYSQL
Target Server Version : 50130
File Encoding         : 65001

Date: 2017-04-26 07:07:14
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bed
-- ----------------------------
INSERT INTO `t_bed` VALUES ('1', 'B001', 'R001', 'A区', '1111\r\n              ');
INSERT INTO `t_bed` VALUES ('12', '1111', '1', '1', ' \r\n                          1111\r\n                          \r\n                         \r\n          ');
INSERT INTO `t_bed` VALUES ('6', 'T002', 'R002', 'A区', null);
INSERT INTO `t_bed` VALUES ('9', '1', '1', '11', ' 1111\r\n                         \r\n              ');

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

-- ----------------------------
-- Table structure for `t_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_move`;
CREATE TABLE `t_move` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `oldroom` varchar(10) DEFAULT NULL,
  `newroom` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_move
-- ----------------------------
INSERT INTO `t_move` VALUES ('1', '1', null, '1', null);

-- ----------------------------
-- Table structure for `t_room`
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomcode` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `bednum` int(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('10', '1', '11', '1', null);
INSERT INTO `t_room` VALUES ('9', '1', '1', '1', null);
INSERT INTO `t_room` VALUES ('5', '123', '123', '123', null);
INSERT INTO `t_room` VALUES ('6', '111', '1111', '111', null);
INSERT INTO `t_room` VALUES ('7', '123', '123123', '123', null);
INSERT INTO `t_room` VALUES ('8', '11', '11', '11', null);
