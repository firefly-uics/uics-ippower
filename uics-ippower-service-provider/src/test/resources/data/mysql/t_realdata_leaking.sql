/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-20 17:10:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_realdata_leaking
-- ----------------------------
DROP TABLE IF EXISTS `t_realdata_leaking`;
CREATE TABLE `t_realdata_leaking` (
  `rd_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `pdi_index` int(11) NOT NULL default '0',
  `rd_leaktype` float(9,2) default NULL,
  `rd_position` float(9,2) default NULL,
  `rd_length` float(9,2) default NULL,
  `rd_disconnect` int(11) default NULL,
  `rd_leak` int(11) default NULL,
  `rd_defend` int(11) default NULL,
  `rd_hitch` int(11) default NULL,
  `rd_dispatch_status` int(11) default NULL,
  `rd_NetCom` int(10) default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_realdata_leaking
-- ----------------------------
INSERT INTO `t_realdata_leaking` VALUES ('2016-10-20 17:10:40', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
