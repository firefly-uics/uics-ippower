/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-25 10:47:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_devicetype
-- ----------------------------
DROP TABLE IF EXISTS `t_devicetype`;
CREATE TABLE `t_devicetype` (
  `dt_index` int(10) NOT NULL auto_increment,
  `dt_typeid` int(10) NOT NULL default '0',
  `dt_typename` varchar(64) NOT NULL default '',
  `dt_issupportext` tinyint(1) NOT NULL default '0',
  `dt_isenable` tinyint(1) NOT NULL default '0',
  `dt_rtdata_table` varchar(64) NOT NULL default '',
  `dt_hisdata_table` varchar(64) NOT NULL default '',
  `dt_typememo` varchar(255) default NULL,
  `dt_typememo_en` varchar(255) default NULL,
  `dt_page` varchar(255) NOT NULL default '',
  `dt_pre` varchar(255) NOT NULL default '',
  `dt_icon` varchar(255) NOT NULL default '',
  `haschildType` int(11) default '0',
  PRIMARY KEY  (`dt_index`),
  KEY `dt_typeid` (`dt_typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_devicetype
-- ----------------------------
INSERT INTO `t_devicetype` VALUES ('1', '1', 'Sitemate', '0', '1', 't_realdata_single', 't_hisdata_single', '单相UPS', 'One-phase UPS ', 'all1', 'rd_', '1.jpg', '0');
INSERT INTO `t_devicetype` VALUES ('91', '9', 'Sitemate BE', '0', '1', 't_realdata_leaking', 't_hisdata_leaking', '漏水控制器', 'Leakage controller', '', 'rd_', '', '0');
INSERT INTO `t_devicetype` VALUES ('94', '13', 'Netmate II', '0', '1', 't_realdata_generalair', 't_hisdata_generalair', '通用空调', 'General air conditioning ', '', 'rd_', '', '0');
INSERT INTO `t_devicetype` VALUES ('129', '63', 'Netmate II', '0', '0', 't_realdata_63', 't_hisdata_63', '冷通道', '', '', 'rd_', '', '0');
INSERT INTO `t_devicetype` VALUES ('130', '60', 'sitpro', '0', '1', 't_realdata_yzdistribution', 't_hisdata_yzdistribution', '通用一舟精密配电', 'General Zhou distribution', '', 'rd_', '', '0');
