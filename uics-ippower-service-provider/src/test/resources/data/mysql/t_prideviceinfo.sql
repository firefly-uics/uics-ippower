/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-25 10:50:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_prideviceinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_prideviceinfo`;
CREATE TABLE `t_prideviceinfo` (
  `pdi_index` int(10) NOT NULL auto_increment,
  `pdi_name` varchar(64) NOT NULL default '',
  `pdi_code` varchar(64) NOT NULL default '',
  `dpt_id` int(10) NOT NULL default '0',
  `pdi_mac` varchar(20) NOT NULL default '',
  `pdi_ip` varchar(16) NOT NULL default '',
  `pdi_port` int(10) NOT NULL default '0',
  `pdi_interval` int(10) NOT NULL default '20',
  `pdi_pwd` varchar(16) NOT NULL default 'RICHCOMM',
  `pdi_saveinterval` int(4) NOT NULL default '0',
  `pdi_updatetime` datetime default NULL,
  `nm_delflag` tinyint(1) NOT NULL default '0',
  `pdi_enable` tinyint(1) NOT NULL default '0',
  `nm_memo` varchar(255) NOT NULL,
  `AreaId` varchar(20) default NULL,
  `u_username` varchar(50) default NULL,
  `u_tel` varchar(50) default NULL,
  `u_a` varchar(2) default NULL,
  `u_b` varchar(2) default NULL,
  `u_c` varchar(2) default NULL,
  `u_d` varchar(2) default NULL,
  `u_myrootid` int(10) default NULL,
  `pdi_icon` varchar(255) default NULL,
  `devicename` varchar(255) default NULL COMMENT '鍙ｄ覆璁惧鐢ㄦ埛鍛藉悕',
  `childTypeName` varchar(255) default NULL,
  `bd_index` int(4) default NULL,
  `conn_tele_phone` varchar(25) default NULL,
  `snmp_typeid` int(2) NOT NULL default '0',
  `snmp_version` varchar(50) NOT NULL default 'SNMPv1 ',
  `snmp_community` varchar(50) NOT NULL default 'public',
  `sitepro_id` int(10) default '0',
  `spdev_id` int(10) default '0',
  `ups_brandType` varchar(255) default NULL,
  `ups_barrNum` varchar(10) default NULL,
  `ups_installTime` datetime default NULL,
  `toplgy_request` int(11) default '0' COMMENT '拓扑请求标志',
  `mcrdog_limit` int(11) default '0' COMMENT '加密狗限制标志',
  `bandtype` int(4) default '0' COMMENT '品牌卡类型',
  `optSystem` varchar(64) default '',
  `vidioUName` varchar(64) default '',
  `vidioPW` varchar(64) default '',
  `vedioChannelNum` varchar(10) default '0',
  `pdi_netmask` varchar(16) NOT NULL,
  `pdi_gateway` varchar(16) NOT NULL,
  PRIMARY KEY  (`pdi_index`),
  UNIQUE KEY `pdi_index` (`pdi_index`)
) ENGINE=MyISAM AUTO_INCREMENT=1637 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_prideviceinfo
-- ----------------------------
INSERT INTO `t_prideviceinfo` VALUES ('1635', '精密配电柜', '23', '60', '-----', '234.234.34.234', '7001', '20', 'RICHCOMM', '10', '2016-10-21 16:27:40', '0', '1', '', '45', '', '', null, null, null, null, '43423', null, null, '通用一舟精密配电', '9', null, '0', 'SNMPv1', 'public', '6', '3', '', '', '0000-00-00 00:00:00', '0', '0', '0', '', '', '', '0', '...', '...');
INSERT INTO `t_prideviceinfo` VALUES ('1630', '精密空调', '345', '13', '-----', '34.42.34.3', '7001', '20', 'RICHCOMM', '10', '2016-10-20 16:59:58', '0', '1', '', '45', '', '', null, null, null, null, '345', null, null, '通用空调', '3', null, '0', 'SNMPv1', 'public', '0', '0', '', '', '0000-00-00 00:00:00', '0', '0', '0', '', '', '', '0', '...', '...');
INSERT INTO `t_prideviceinfo` VALUES ('1631', '冷通道', '324', '63', '-----', '32.43.42.34', '7001', '20', 'RICHCOMM', '10', '2016-10-20 17:00:36', '0', '1', '', '45', '', '', null, null, null, null, '234', null, null, '冷通道', '3', null, '0', 'SNMPv1', 'public', '0', '0', '', '', '0000-00-00 00:00:00', '0', '0', '0', '', '', '', '0', '...', '...');
INSERT INTO `t_prideviceinfo` VALUES ('1633', '漏水控制器', '453', '9', '-----', '242.32.34.234', '7001', '20', 'RICHCOMM', '10', '2016-10-20 17:03:16', '0', '1', '', '45', '', '', null, null, null, null, '534', null, null, '漏水控制器', '3', null, '0', 'SNMPv1', 'public', '0', '0', '', '', '0000-00-00 00:00:00', '0', '0', '0', '', '', '', '0', '...', '...');
INSERT INTO `t_prideviceinfo` VALUES ('1636', '环境设备', '7878', '1', '-----', '32.34.34.42', '7001', '20', 'RICHCOMM', '10', '2016-10-25 10:22:00', '0', '1', '', '45', '', '', null, null, null, null, '4324', null, null, 'none', '9', null, '0', 'SNMPv1', 'public', '7', '0', '', '', '0000-00-00 00:00:00', '0', '0', '0', '', '', '', '0', '...', '...');
