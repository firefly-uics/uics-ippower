/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-20 17:15:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sy_area
-- ----------------------------
DROP TABLE IF EXISTS `sy_area`;
CREATE TABLE `sy_area` (
  `AreaId` int(10) NOT NULL auto_increment,
  `Fid` int(10) NOT NULL default '0',
  `AreaName` varchar(60) NOT NULL default '',
  `AreaProperty` int(4) default '1',
  `area_number` varchar(30) default NULL,
  `area_manager` varchar(30) default NULL,
  `connect_phone` varchar(30) default NULL,
  `area_img` varchar(60) default NULL,
  `area_order` int(6) default NULL,
  `area_text` text,
  `isJF` int(1) NOT NULL default '0',
  `slick_enable` int(1) NOT NULL default '1',
  `sound_enable` int(1) NOT NULL default '1',
  `roomName` varchar(12) default '' COMMENT '课室名称',
  `lineimage` varchar(30) default '',
  PRIMARY KEY  (`AreaId`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sy_area
-- ----------------------------
INSERT INTO `sy_area` VALUES ('43', '0', 'test', '1', '3453434', '', '', '', null, '', '0', '1', '1', '', '');
INSERT INTO `sy_area` VALUES ('45', '43', 'test', '1', '42343', '', '', '', null, '', '1', '1', '1', '', '');
