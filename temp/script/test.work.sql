/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2014-01-03 17:47:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('0', 'john.smith@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('1', 'john.smith1@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('2', 'john.smith2@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('3', 'john.smith3@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('4', 'john.smith4@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('5', 'john.smith5@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('6', 'john.smith6@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('7', 'john.smith7@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('8', 'john.smith8@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('9', 'john.smith9@mailinator.com', 'John Smith', '2125551212');
INSERT INTO `member` VALUES ('10', 'john.smith10@mailinator.com', 'John Smith', '2125551212');

-- ----------------------------
-- Table structure for sys_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `CODE_ID` varchar(255) NOT NULL,
  `CODE_KEY` varchar(255) DEFAULT NULL,
  `CODE_LABEL` varchar(255) DEFAULT NULL,
  `CODE_VALUE` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code
-- ----------------------------
INSERT INTO `sys_code` VALUES ('1', 'BASIC_ROLE', '后台记录查询', '1', '');
INSERT INTO `sys_code` VALUES ('10', 'BASIC_ROLE', '模块参与数据', '10', '');
INSERT INTO `sys_code` VALUES ('11', 'ADVANCED_ROLE', '职位管理', '11', '');
INSERT INTO `sys_code` VALUES ('12', 'ADVANCED_ROLE', '账号建立', '12', '');
INSERT INTO `sys_code` VALUES ('13', 'ADVANCED_ROLE', '账户修改删除', '13', '');
INSERT INTO `sys_code` VALUES ('14', 'ADVANCED_ROLE', '账户权限配置', '14', '');
INSERT INTO `sys_code` VALUES ('15', 'ADVANCED_ROLE', '调数据', '15', '');
INSERT INTO `sys_code` VALUES ('16', 'ADVANCED_ROLE', '审核发放', '16', '');
INSERT INTO `sys_code` VALUES ('17', 'ADVANCED_ROLE', '后台记录查询', '17', '');
INSERT INTO `sys_code` VALUES ('18', 'ROLE_TYPE', '服务器权限', '1', '');
INSERT INTO `sys_code` VALUES ('19', 'ROLE_TYPE', '基本权限', '2', '');
INSERT INTO `sys_code` VALUES ('2', 'BASIC_ROLE', '奖励发放', '2', '');
INSERT INTO `sys_code` VALUES ('20', 'ROLE_TYPE', '高级权限', '3', '');
INSERT INTO `sys_code` VALUES ('3', 'BASIC_ROLE', '内部账户管理', '3', '');
INSERT INTO `sys_code` VALUES ('4', 'BASIC_ROLE', '封号处理', '4', '');
INSERT INTO `sys_code` VALUES ('5', 'BASIC_ROLE', '账户查询', '5', '');
INSERT INTO `sys_code` VALUES ('6', 'BASIC_ROLE', '登录留存数据', '6', '');
INSERT INTO `sys_code` VALUES ('7', 'BASIC_ROLE', '充值数据', '7', '');
INSERT INTO `sys_code` VALUES ('8', 'BASIC_ROLE', '排行数据', '8', '');
INSERT INTO `sys_code` VALUES ('9', 'BASIC_ROLE', '资源产量数据', '9', '');

-- ----------------------------
-- Table structure for sys_code_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_type`;
CREATE TABLE `sys_code_type` (
  `CODE_TYPE_ID` varchar(255) NOT NULL,
  `CODE_KEY` varchar(255) DEFAULT NULL,
  `CODE_LABEL` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_type
-- ----------------------------
INSERT INTO `sys_code_type` VALUES ('1', 'BASIC_ROLE', '基本权限', '');
INSERT INTO `sys_code_type` VALUES ('2', 'ADVANCED_ROLE', '高级权限', '');
INSERT INTO `sys_code_type` VALUES ('3', 'SERVER_ROLE', '服务器权限', '');

-- ----------------------------
-- Table structure for sys_gm_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_job`;
CREATE TABLE `sys_gm_job` (
  `JOB_ID` varchar(255) NOT NULL,
  `JOB_GRADE` varchar(255) DEFAULT NULL,
  `JOB_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_job
-- ----------------------------
INSERT INTO `sys_gm_job` VALUES ('1', '1', 'CEO');

-- ----------------------------
-- Table structure for sys_gm_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_menu`;
CREATE TABLE `sys_gm_menu` (
  `MENU_ID` varchar(255) NOT NULL,
  `route_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ENABLE` varchar(255) DEFAULT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_menu
-- ----------------------------
INSERT INTO `sys_gm_menu` VALUES ('1', '1', '', '1', 'root', '', null);
INSERT INTO `sys_gm_menu` VALUES ('11', '5', '', '1', '登录及留存数据', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('12', '3', '', '1', '充值数据', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('13', '5', '', '1', '排行数据', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('14', '3', '', '1', '资源产出消耗', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('15', '5', '', '1', '各模块参与数据', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('2', '3', '', '1', 'GM工具', '', '0');
INSERT INTO `sys_gm_menu` VALUES ('3', '5', '', '1', '发布公告', '', '1');
INSERT INTO `sys_gm_menu` VALUES ('4', '3', '', '1', '调数据工具', '', '0');
INSERT INTO `sys_gm_menu` VALUES ('5', '5', '', '1', '账户管理', '', '0');
INSERT INTO `sys_gm_menu` VALUES ('6', '3', '', '1', '后台记录查询', '', '0');

-- ----------------------------
-- Table structure for sys_gm_menu_re_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_menu_re_role`;
CREATE TABLE `sys_gm_menu_re_role` (
  `MENU_ROLE_ID` varchar(255) NOT NULL,
  `MENU_ID` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MENU_ROLE_ID`),
  KEY `FK9FD6DD6915BD48CA` (`ROLE_ID`),
  CONSTRAINT `FK9FD6DD6915BD48CA` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_gm_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_menu_re_role
-- ----------------------------
INSERT INTO `sys_gm_menu_re_role` VALUES ('2', '11', '3');
INSERT INTO `sys_gm_menu_re_role` VALUES ('3', '2', '13');
INSERT INTO `sys_gm_menu_re_role` VALUES ('4', '2', '3');
INSERT INTO `sys_gm_menu_re_role` VALUES ('5', '3', '10');
INSERT INTO `sys_gm_menu_re_role` VALUES ('6', '4', '2');
INSERT INTO `sys_gm_menu_re_role` VALUES ('7', '4', '3');
INSERT INTO `sys_gm_menu_re_role` VALUES ('8', '5', '3');
INSERT INTO `sys_gm_menu_re_role` VALUES ('9', '6', '5');

-- ----------------------------
-- Table structure for sys_gm_provider
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_provider`;
CREATE TABLE `sys_gm_provider` (
  `PROVIDER_ID` varchar(255) NOT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_provider
-- ----------------------------

-- ----------------------------
-- Table structure for sys_gm_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_role`;
CREATE TABLE `sys_gm_role` (
  `ROLE_ID` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `ROLE_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_role
-- ----------------------------
INSERT INTO `sys_gm_role` VALUES ('10', '', '模块参与数据', '2');
INSERT INTO `sys_gm_role` VALUES ('11', '', '职位管理', '3');
INSERT INTO `sys_gm_role` VALUES ('12', '', '账号建立', '3');
INSERT INTO `sys_gm_role` VALUES ('13', '', '账户修改删除', '3');
INSERT INTO `sys_gm_role` VALUES ('14', '', '账户权限配置', '3');
INSERT INTO `sys_gm_role` VALUES ('15', '', '调数据', '3');
INSERT INTO `sys_gm_role` VALUES ('16', '', '审核发放', '3');
INSERT INTO `sys_gm_role` VALUES ('17', '', '后台记录查询', '3');
INSERT INTO `sys_gm_role` VALUES ('2', '', '奖励发放', '2');
INSERT INTO `sys_gm_role` VALUES ('3', '', '内部账户管理', '2');
INSERT INTO `sys_gm_role` VALUES ('4', '', '封号处理', '2');
INSERT INTO `sys_gm_role` VALUES ('5', '', '账户查询', '2');
INSERT INTO `sys_gm_role` VALUES ('6', '', '登录留存数据', '2');
INSERT INTO `sys_gm_role` VALUES ('7', '', '充值数据', '2');
INSERT INTO `sys_gm_role` VALUES ('8', '', '排行数据', '2');
INSERT INTO `sys_gm_role` VALUES ('9', '', '资源产量数据', '2');

-- ----------------------------
-- Table structure for sys_gm_route
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_route`;
CREATE TABLE `sys_gm_route` (
  `route_id` varchar(32) NOT NULL,
  `route_path` varchar(255) DEFAULT NULL,
  `module_path` varchar(200) DEFAULT NULL,
  `module_name` varchar(200) DEFAULT NULL,
  `load_css` char(1) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_route
-- ----------------------------
INSERT INTO `sys_gm_route` VALUES ('1', '/', 'overview/', 'overview', '1', null);
INSERT INTO `sys_gm_route` VALUES ('2', '/settings', 'settings/', 'settings', '0', null);
INSERT INTO `sys_gm_route` VALUES ('3', '/user/subuser1', 'user/subuser1/', 'subuser1', '0', null);
INSERT INTO `sys_gm_route` VALUES ('4', '/user/subuser2/subuser21', 'user/subuser2/subuser21/', 'subuser21', '0', null);
INSERT INTO `sys_gm_route` VALUES ('5', '/user/subuser2/subuser22', 'user/subuser2/subuser22/', 'subuser22', '0', null);
INSERT INTO `sys_gm_route` VALUES ('6', '/user/subuser2/subuser22/:userName', 'user/subuser2/subuser22/', 'subuser22', '0', null);
INSERT INTO `sys_gm_route` VALUES ('7', '/admin/subadmin1', 'admin/subadmin1/', 'subadmin1', '0', null);
INSERT INTO `sys_gm_route` VALUES ('8', '/admin/subadmin2', 'admin/subadmin2/', 'subadmin2', '0', null);

-- ----------------------------
-- Table structure for sys_gm_server
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_server`;
CREATE TABLE `sys_gm_server` (
  `SERVER_ID` varchar(255) NOT NULL,
  `SERVER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SERVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_server
-- ----------------------------

-- ----------------------------
-- Table structure for sys_gm_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_user`;
CREATE TABLE `sys_gm_user` (
  `USER_ID` varchar(255) NOT NULL,
  `NICK_NAME` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `USER_PWD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_user
-- ----------------------------
INSERT INTO `sys_gm_user` VALUES ('1', 'zhangsan', 'root', 'root');

-- ----------------------------
-- Table structure for sys_gm_user_re_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_gm_user_re_role`;
CREATE TABLE `sys_gm_user_re_role` (
  `user_role_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_gm_user_re_role
-- ----------------------------
INSERT INTO `sys_gm_user_re_role` VALUES ('1', '1', '2');
INSERT INTO `sys_gm_user_re_role` VALUES ('2', '1', '4');
INSERT INTO `sys_gm_user_re_role` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for testa
-- ----------------------------
DROP TABLE IF EXISTS `testa`;
CREATE TABLE `testa` (
  `testa_id` varchar(32) NOT NULL,
  `testb_name` varchar(32) NOT NULL,
  PRIMARY KEY (`testa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testa
-- ----------------------------
INSERT INTO `testa` VALUES ('1', 'a');
INSERT INTO `testa` VALUES ('2', 'b');
INSERT INTO `testa` VALUES ('3', 'cc');

-- ----------------------------
-- Table structure for testabc
-- ----------------------------
DROP TABLE IF EXISTS `testabc`;
CREATE TABLE `testabc` (
  `id` int(11) NOT NULL,
  `abc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testabc
-- ----------------------------
INSERT INTO `testabc` VALUES ('1', 'abc');
INSERT INTO `testabc` VALUES ('2', 'abc');

-- ----------------------------
-- Table structure for testb
-- ----------------------------
DROP TABLE IF EXISTS `testb`;
CREATE TABLE `testb` (
  `testb_id` varchar(32) NOT NULL,
  `testb_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`testb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testb
-- ----------------------------
INSERT INTO `testb` VALUES ('1', 'b');
INSERT INTO `testb` VALUES ('2', 'c');
INSERT INTO `testb` VALUES ('3', 'd');

-- ----------------------------
-- Table structure for test_a_r_b
-- ----------------------------
DROP TABLE IF EXISTS `test_a_r_b`;
CREATE TABLE `test_a_r_b` (
  `id` varchar(32) NOT NULL,
  `testa_id` varchar(32) DEFAULT NULL,
  `testb_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_f_a_id` (`testa_id`),
  KEY `test_f_b_id` (`testb_id`),
  CONSTRAINT `test_f_a_id` FOREIGN KEY (`testa_id`) REFERENCES `testa` (`testa_id`),
  CONSTRAINT `test_f_b_id` FOREIGN KEY (`testb_id`) REFERENCES `testb` (`testb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_a_r_b
-- ----------------------------
INSERT INTO `test_a_r_b` VALUES ('1', '1', '2');
INSERT INTO `test_a_r_b` VALUES ('2', '1', '3');
INSERT INTO `test_a_r_b` VALUES ('3', '2', '2');
INSERT INTO `test_a_r_b` VALUES ('4', '3', '3');

-- ----------------------------
-- Table structure for user_conversion_rate
-- ----------------------------
DROP TABLE IF EXISTS `user_conversion_rate`;
CREATE TABLE `user_conversion_rate` (
  `id` varchar(255) NOT NULL,
  `convert_date` datetime DEFAULT NULL,
  `create_rule` int(11) DEFAULT NULL,
  `import_user` int(11) DEFAULT NULL,
  `regrist_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_conversion_rate
-- ----------------------------
INSERT INTO `user_conversion_rate` VALUES ('0', '2013-12-04 15:03:28', '12', '92', '44');
INSERT INTO `user_conversion_rate` VALUES ('1', '2013-12-05 15:03:28', '122', '82', '54');
INSERT INTO `user_conversion_rate` VALUES ('2', '2013-12-06 15:03:28', '142', '2', '4');
INSERT INTO `user_conversion_rate` VALUES ('3', '2013-12-07 15:03:28', '12', '42', '4');
INSERT INTO `user_conversion_rate` VALUES ('4', '2013-12-08 15:03:28', '112', '2', '24');
INSERT INTO `user_conversion_rate` VALUES ('5', '2013-12-09 15:03:28', '122', '2', '47');
INSERT INTO `user_conversion_rate` VALUES ('6', '2013-12-10 15:03:28', '12', '22', '45');
INSERT INTO `user_conversion_rate` VALUES ('7', '2013-12-11 15:03:28', '142', '2', '40');
INSERT INTO `user_conversion_rate` VALUES ('8', '2013-12-12 15:03:28', '172', '12', '14');
INSERT INTO `user_conversion_rate` VALUES ('9', '2013-12-13 15:03:28', '102', '82', '1');
