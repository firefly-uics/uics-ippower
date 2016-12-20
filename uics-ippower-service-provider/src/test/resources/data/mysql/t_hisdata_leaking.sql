/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ippower2009

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2016-10-21 12:00:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_hisdata_leaking
-- ----------------------------
DROP TABLE IF EXISTS `t_hisdata_leaking`;
CREATE TABLE `t_hisdata_leaking` (
  `hd_index` int(10) NOT NULL auto_increment,
  `dataTypeFlag` int(1) NOT NULL default '0',
  `rd_updatetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `hd_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `pdi_index` int(11) NOT NULL default '0',
  `hd_leaktype` float(9,2) default NULL,
  `hd_position` float(9,2) default NULL,
  `hd_length` float(9,2) default NULL,
  `hd_disconnect` int(11) default NULL,
  `hd_leak` int(11) default NULL,
  `hd_defend` int(11) default NULL,
  `hd_hitch` int(11) default NULL,
  `hd_dispatch_status` int(11) default NULL,
  `hd_NetCom` int(10) default '0',
  UNIQUE KEY `hd_index` USING BTREE (`hd_index`),
  KEY `pdi_index` (`pdi_index`),
  KEY `group_index` (`dataTypeFlag`,`hd_datetime`,`pdi_index`,`hd_dispatch_status`,`hd_NetCom`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hisdata_leaking
-- ----------------------------
INSERT INTO `t_hisdata_leaking` VALUES ('241', '0', '2016-10-20 17:10:24', '2016-10-20 17:10:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('240', '0', '2016-10-20 17:09:04', '2016-10-20 17:09:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('239', '0', '2016-10-20 17:07:44', '2016-10-20 17:07:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('238', '0', '2016-10-20 17:06:24', '2016-10-20 17:06:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('242', '0', '2016-10-20 17:11:44', '2016-10-20 17:11:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('243', '0', '2016-10-20 17:13:04', '2016-10-20 17:13:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('244', '0', '2016-10-20 17:14:24', '2016-10-20 17:14:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('245', '0', '2016-10-20 17:15:44', '2016-10-20 17:15:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('246', '0', '2016-10-20 17:17:04', '2016-10-20 17:17:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('247', '0', '2016-10-20 17:18:24', '2016-10-20 17:18:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('248', '0', '2016-10-20 17:19:44', '2016-10-20 17:19:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('249', '0', '2016-10-20 17:21:04', '2016-10-20 17:21:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('250', '0', '2016-10-20 17:22:24', '2016-10-20 17:22:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('251', '0', '2016-10-20 17:23:44', '2016-10-20 17:23:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('252', '0', '2016-10-20 17:25:04', '2016-10-20 17:25:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('253', '0', '2016-10-20 17:26:24', '2016-10-20 17:26:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('254', '0', '2016-10-20 17:27:44', '2016-10-20 17:27:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('255', '0', '2016-10-20 17:29:04', '2016-10-20 17:29:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('256', '0', '2016-10-20 17:30:24', '2016-10-20 17:30:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('257', '0', '2016-10-20 17:31:44', '2016-10-20 17:31:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('258', '0', '2016-10-20 17:33:04', '2016-10-20 17:33:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('259', '0', '2016-10-20 17:34:24', '2016-10-20 17:34:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('260', '0', '2016-10-20 17:35:44', '2016-10-20 17:35:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('261', '0', '2016-10-20 17:37:04', '2016-10-20 17:37:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('262', '0', '2016-10-20 17:38:24', '2016-10-20 17:38:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('263', '0', '2016-10-20 17:39:44', '2016-10-20 17:39:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('264', '0', '2016-10-20 17:41:04', '2016-10-20 17:41:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('265', '0', '2016-10-20 17:42:24', '2016-10-20 17:42:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('266', '0', '2016-10-20 17:43:45', '2016-10-20 17:43:45', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('267', '0', '2016-10-20 17:45:04', '2016-10-20 17:45:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('268', '0', '2016-10-20 17:46:24', '2016-10-20 17:46:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('269', '0', '2016-10-20 17:47:44', '2016-10-20 17:47:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('270', '0', '2016-10-20 17:49:04', '2016-10-20 17:49:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('271', '0', '2016-10-20 17:50:24', '2016-10-20 17:50:24', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('272', '0', '2016-10-20 17:51:44', '2016-10-20 17:51:44', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_hisdata_leaking` VALUES ('273', '0', '2016-10-20 17:53:04', '2016-10-20 17:53:04', '1633', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0', '0');
