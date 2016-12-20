/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-25 10:53:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_historywarn
-- ----------------------------
DROP TABLE IF EXISTS `t_historywarn`;
CREATE TABLE `t_historywarn` (
  `hw_index` int(4) NOT NULL auto_increment,
  `pdi_index` int(10) NOT NULL default '0',
  `wd_index` int(10) NOT NULL default '0',
  `rs_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `Rs_status` tinyint(1) NOT NULL default '0',
  `rs_durationtime` varchar(100) default NULL,
  PRIMARY KEY  (`hw_index`),
  UNIQUE KEY `hw_index` (`hw_index`)
) ENGINE=MyISAM AUTO_INCREMENT=61882 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_historywarn
-- ----------------------------
INSERT INTO `t_historywarn` VALUES ('1', '1633', '5975', '2016-10-21 00:00:00', '1', '0000-00-00 00:00:08');
INSERT INTO `t_historywarn` VALUES ('3', '1630', '8054', '2016-10-21 11:36:45', '1', '0000-00-00 00:00:04');
INSERT INTO `t_historywarn` VALUES ('4', '1631', '100002162', '2016-10-21 11:36:48', '1', '0000-00-00 00:00:06');
INSERT INTO `t_historywarn` VALUES ('5', '1635', '100002264', '2016-10-21 16:52:51', '1', '0000-00-00 00:00:05');
INSERT INTO `t_historywarn` VALUES ('6', '1636', '43', '2016-10-21 10:51:41', '1', '0000-00-00 00:00:05');
