/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-11-03 18:08:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_phpwarn
-- ----------------------------
DROP TABLE IF EXISTS `t_phpwarn`;
CREATE TABLE `t_phpwarn` (
  `pdi_index` int(10) NOT NULL auto_increment,
  `rs_index` int(10) NOT NULL default '0',
  `pdi_devid` int(10) NOT NULL default '0',
  `pdi_name` varchar(64) NOT NULL default '',
  `pdi_type` int(10) NOT NULL default '0',
  `pdi_typename` varchar(64) NOT NULL default '',
  `pdi_typememo` varchar(255) default NULL,
  `Pdi_netoff` int(10) NOT NULL default '0',
  `Pdi_devoff` int(10) NOT NULL default '0',
  `pdi_warnlevel` int(10) NOT NULL default '0',
  `pdi_warnname` varchar(64) NOT NULL default '',
  `pdi_warnId` int(4) NOT NULL default '0',
  `pdi_warnPId` bigint(20) NOT NULL default '0',
  `pdi_warnDId` int(11) NOT NULL default '0',
  `pdi_warnorigDId` int(11) default '0',
  `pdi_warnJId` int(11) NOT NULL default '0',
  `pdi_areaid` int(10) NOT NULL default '0',
  `pdi_areaname` varchar(60) NOT NULL default '',
  `pdi_realtable` varchar(64) NOT NULL default '',
  `pdi_histable` varchar(64) NOT NULL default '',
  `pdi_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `pdi_realdata` varchar(64) NOT NULL default '',
  `pdi_realdataname` varchar(64) NOT NULL default '',
  `pdi_realdatadesc` varchar(64) NOT NULL default '',
  `pdi_realdataunit` varchar(64) NOT NULL default '',
  `pdi_slack` int(11) NOT NULL default '0',
  `pdi_warnconfirm` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`pdi_index`),
  UNIQUE KEY `pdi_index` (`pdi_index`)
) ENGINE=MEMORY AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_phpwarn
-- ----------------------------
INSERT INTO `t_phpwarn` VALUES ('71', '219611276', '3351', '三项UPS', '10', 'Netmate Lite', '三相UPS', '0', '0', '1', '旁路', '0', '10911778', '19', '0', '140', '1764', 'test1', 't_realdata_three', 't_hisdata_three', '2016-11-02 13:47:09', 'NA', '(null)', '(null)', '(null)', '0', '0');
