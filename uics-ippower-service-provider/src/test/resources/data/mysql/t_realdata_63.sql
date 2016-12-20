/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-20 17:11:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_realdata_63
-- ----------------------------
DROP TABLE IF EXISTS `t_realdata_63`;
CREATE TABLE `t_realdata_63` (
  `rd_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `pdi_index` int(11) NOT NULL default '0',
  `rd_tmp1` float(9,2) default '0.00',
  `rd_hump1` float(9,2) default '0.00',
  `rd_tmp2` float(9,2) default '0.00',
  `rd_hump2` float(9,2) default '0.00',
  `rd_tmp3` float(9,2) default '0.00',
  `rd_hump3` float(9,2) default '0.00',
  `rd_tmp4` float(9,2) default '0.00',
  `rd_hump4` float(9,2) default '0.00',
  `rd_pdu_num_1` float(9,2) default '0.00',
  `rd_addr` float(9,2) default '0.00',
  `rd_vol` float(9,2) default '0.00',
  `rd_current` float(9,2) default '0.00',
  `rd_activePower` float(9,2) default '0.00',
  `rd_reactivePower` float(9,2) default '0.00',
  `rd_powerFactor` float(9,2) default '0.00',
  `rd_electricPower` float(9,2) default '0.00',
  `rd_frequece` float(9,2) default '0.00',
  `rd_currentUp` float(9,2) default '0.00',
  `rd_currentDown` float(9,2) default '0.00',
  `rd_alarmAll` tinyint(2) default '0',
  `rd_yangan1` tinyint(2) default '0',
  `rd_yangan2` tinyint(2) default '0',
  `rd_overCurrent` tinyint(2) default '0',
  `rd_underCurrent` tinyint(2) default '0',
  `rd_DevCom` tinyint(2) default '0',
  `rd_NetCom` tinyint(2) default '0',
  UNIQUE KEY `pdi_index` (`pdi_index`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_realdata_63
-- ----------------------------
INSERT INTO `t_realdata_63` VALUES ('2016-10-20 17:11:04', '1631', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '0');
