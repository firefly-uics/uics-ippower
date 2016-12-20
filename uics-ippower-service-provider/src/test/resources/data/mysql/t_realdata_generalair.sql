/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-20 17:09:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_realdata_generalair
-- ----------------------------
DROP TABLE IF EXISTS `t_realdata_generalair`;
CREATE TABLE `t_realdata_generalair` (
  `rd_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `pdi_index` int(11) NOT NULL default '0',
  `rd_air_type` float(9,2) default '0.00',
  `rd_air_innertemp` float(9,2) default '0.00',
  `rd_air_innerhum` float(9,2) default '0.00',
  `rd_air_backwindtemp` float(9,2) default '0.00',
  `rd_air_backwindhum` float(9,2) default '0.00',
  `rd_air_sendwindtemp` float(9,2) default '0.00',
  `rd_air_sendwindhum` float(9,2) default '0.00',
  `rd_air_ontemp` float(9,2) default '0.00',
  `rd_air_offtemp` float(9,2) default '0.00',
  `rd_air_tempdevi` float(9,2) default '0.00',
  `rd_air_humdevi` float(9,2) default '0.00',
  `rd_air_tempsetpoint` float(9,2) default '0.00',
  `rd_air_humsetpoint` float(9,2) default '0.00',
  `rd_air_tempuplim` float(9,2) default '0.00',
  `rd_air_version` float(9,2) NOT NULL default '0.00',
  `rd_air_return2` float(9,2) NOT NULL default '0.00',
  `rd_air_return3` float(9,2) NOT NULL default '0.00',
  `rd_air_supply2` float(9,2) NOT NULL default '0.00',
  `rd_air_supply3` float(9,2) NOT NULL default '0.00',
  `rd_air_sensitivity1` float(9,2) NOT NULL default '0.00',
  `rd_air_sensitivity2` float(9,2) NOT NULL default '0.00',
  `rd_air_humuplim` float(9,2) default '0.00',
  `rd_air_tempdownlim` float(9,2) default '0.00',
  `rd_air_humdownlim` float(9,2) default '0.00',
  `rd_air_state` tinyint(2) default '0',
  `rd_air_windstate` tinyint(2) default '0',
  `rd_air_compstate` tinyint(2) default '0',
  `rd_air_runstate` tinyint(2) default '0',
  `rd_air_temphalarm` tinyint(2) default '0',
  `rd_air_humhalarm` tinyint(2) default '0',
  `rd_air_templowalarm` tinyint(2) default '0',
  `rd_air_humlowalarm` tinyint(2) default '0',
  `rd_air_windalarm` tinyint(2) default '0',
  `rd_air_addhumalarm` tinyint(2) default '0',
  `rd_air_leakalarm` tinyint(2) default '0',
  `rd_air_poweralarm` tinyint(2) default '0',
  `rd_air_somkealarm` tinyint(2) default '0',
  `rd_air_origalarm` tinyint(2) default '0',
  `rd_air_online` tinyint(2) default '0',
  `rd_air_compalarm` tinyint(2) default '0',
  `rd_air_sensefault` tinyint(2) default '0',
  `rd_air_senseoffailure` tinyint(2) default '0',
  `rd_air_rheumatismsensefault` tinyint(2) default '0',
  `rd_air_Cooling` tinyint(2) default '0',
  `rd_air_acommunicationfailure` tinyint(2) default '0',
  `rd_air_addhotstate` tinyint(2) default '0',
  `rd_air_deleshistate` tinyint(2) default '0',
  `rd_air_addshistate` tinyint(2) default '0',
  `rd_air_Innerfan` tinyint(2) default '0',
  `rd_air_Channelheater` tinyint(2) default '0',
  `rd_air_Outsidethefan` tinyint(2) default '0',
  `rd_NetCom` tinyint(2) default '0',
  `rd_air_moniNA` float(35,2) default NULL,
  `rd_air_stateNA` float(35,2) default NULL,
  `rd_air_alarmNA` float(35,2) default NULL,
  `rd_air_column1` tinyint(2) default '0',
  `rd_air_column2` tinyint(2) default '0',
  `rd_air_column3` tinyint(2) default '0',
  `rd_air_column4` tinyint(2) default '0',
  `rd_air_column5` tinyint(2) default '0',
  `rd_air_column6` tinyint(2) default '0',
  `rd_air_column7` tinyint(2) default '0',
  `rd_air_column8` tinyint(2) default '0',
  `rd_air_column9` tinyint(2) default '0',
  `rd_air_column10` tinyint(2) default '0',
  `rd_air_column11` tinyint(2) default '0',
  `rd_air_column12` tinyint(2) default '0',
  `rd_air_column13` tinyint(2) default '0',
  `rd_air_column14` tinyint(2) default '0',
  `rd_air_column15` tinyint(2) default '0',
  `rd_air_column16` tinyint(2) default '0',
  `rd_air_column17` tinyint(2) default '0',
  `rd_air_column18` tinyint(2) default '0',
  `rd_air_column19` tinyint(2) default '0',
  `rd_air_column20` tinyint(2) default '0',
  `rd_air_column21` tinyint(2) default '0',
  `rd_air_column22` tinyint(2) default '0',
  `rd_air_column23` tinyint(2) default '0',
  `rd_air_column24` tinyint(2) default '0',
  `rd_air_column25` tinyint(2) default '0',
  `rd_air_column26` tinyint(2) default '0',
  `rd_air_column27` tinyint(2) default '0',
  UNIQUE KEY `pdi_index` (`pdi_index`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_realdata_generalair
-- ----------------------------
INSERT INTO `t_realdata_generalair` VALUES ('2016-10-20 17:09:04', '1630', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
