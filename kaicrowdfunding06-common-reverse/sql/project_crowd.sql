/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : project_crowd

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 23/10/2022 16:52:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inner_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `inner_admin_role`;
CREATE TABLE `inner_admin_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inner_admin_role
-- ----------------------------
INSERT INTO `inner_admin_role` VALUES (1, 3, 1);
INSERT INTO `inner_admin_role` VALUES (2, 3, 3);
INSERT INTO `inner_admin_role` VALUES (3, 4, 2);
INSERT INTO `inner_admin_role` VALUES (4, 4, 4);

-- ----------------------------
-- Table structure for inner_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `inner_role_auth`;
CREATE TABLE `inner_role_auth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `auth_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inner_role_auth
-- ----------------------------
INSERT INTO `inner_role_auth` VALUES (1, 3, 1);
INSERT INTO `inner_role_auth` VALUES (2, 3, 8);
INSERT INTO `inner_role_auth` VALUES (9, 4, 1);
INSERT INTO `inner_role_auth` VALUES (10, 4, 3);
INSERT INTO `inner_role_auth` VALUES (11, 4, 4);
INSERT INTO `inner_role_auth` VALUES (12, 4, 5);

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pswd` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_acct`(`login_acct` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'tom', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', '??????', 'tom@qq.com', '2022-08-18 12:32:15');
INSERT INTO `t_admin` VALUES (2, 'mike', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', '??????', 'mike@qq.com', '2022-08-30 16:45:27');
INSERT INTO `t_admin` VALUES (3, 'adminOperator', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', 'AAOO', 'ao@qq.com', '');
INSERT INTO `t_admin` VALUES (4, 'roleOperator', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', 'RROO', 'ro@qq.com', '');
INSERT INTO `t_admin` VALUES (5, 'admin01', '222222', 'admin01', 'aaa', '');
INSERT INTO `t_admin` VALUES (6, 'admin02', '222222', 'admin02', 'bbb', '');
INSERT INTO `t_admin` VALUES (7, 'admin03', '222222', 'admin03', 'ccc', '');
INSERT INTO `t_admin` VALUES (8, 'uuu', '$2a$10$CciauE1Skmo9V0ICoWCq4OiAFXIAz/A.PWAysFjX3eMWZj87uqu8W', 'www', '', '2022-08-31 15:16:36');

-- ----------------------------
-- Table structure for t_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_auth`;
CREATE TABLE `t_auth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_auth
-- ----------------------------
INSERT INTO `t_auth` VALUES (1, '', '????????????', NULL);
INSERT INTO `t_auth` VALUES (2, 'user:delete', '??????', 1);
INSERT INTO `t_auth` VALUES (3, 'user:get', '??????', 1);
INSERT INTO `t_auth` VALUES (4, '', '????????????', NULL);
INSERT INTO `t_auth` VALUES (5, 'role:delete', '??????', 4);
INSERT INTO `t_auth` VALUES (6, 'role:get', '??????', 4);
INSERT INTO `t_auth` VALUES (7, 'role:add', '??????', 4);
INSERT INTO `t_auth` VALUES (8, 'user:save', '??????', 1);

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpswd` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authstatus` int NULL DEFAULT NULL COMMENT '?????????????????? 0 - ?????????????????? 1 - ??????????????? ????????? 2 - ???????????????',
  `usertype` int NULL DEFAULT NULL COMMENT ' 0 - ????????? 1 - ??????',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accttype` int NULL DEFAULT NULL COMMENT '0 - ????????? 1 - ????????? 2 - ????????? 3 - ??????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `loginacct`(`loginacct` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (1, 'jack', '$2a$10$b5.e08C9m90srkuE.nWtgOz.5eDIaQk720Wg6rv39CdwVmQ12Jh.O', '??????', 'jack@QQ.com', 1, 1, '??????', '123213', 2);
INSERT INTO `t_member` VALUES (2, 'tom', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (4, 'harry', '$2a$10$aBqErJCCDIBN7.ddNEBKxeA5cQaQPtheEeb0igwc01FQKcnGxpX4.', '??????', 'harry@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (8, 'boss', '$2a$10$PRfpreMB2VlKOft1RhCtwudzWOrKbIZScrTc4gZtm.1j0nLOpp0WG', '??????', 'boss@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (11, 'haha', '$2a$10$wl8OQRHFM22iLG3zPTFn5ueDXO4S9iGqObDkqBoiX5d6FCzp.XACy', 'haha', 'haha@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (12, 'bb', '$2a$10$Cb2sQ6hPHnK10NaBkfpnW.SZb0Z5sv/QXUTcPFbSE4DuytS6MpwjK', 'bb', 'aa@qq.com', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_member_confirm_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_confirm_info`;
CREATE TABLE `t_member_confirm_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberid` int NULL DEFAULT NULL COMMENT '?????? id',
  `paynum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `cardnum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member_confirm_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_member_launch_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_launch_info`;
CREATE TABLE `t_member_launch_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberid` int NULL DEFAULT NULL COMMENT '?????? id',
  `description_simple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `description_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `phone_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `service_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member_launch_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, NULL, '??????????????????', NULL, 'glyphicon glyphicon-th-list');
INSERT INTO `t_menu` VALUES (2, 1, ' ??? ??? ??? ??? ', 'main.htm', 'glyphicon glyphicon-dashboard');
INSERT INTO `t_menu` VALUES (3, 1, '????????????', NULL, 'glyphicon glyphicon glyphicon-tasks');
INSERT INTO `t_menu` VALUES (4, 3, ' ??? ??? ??? ??? ', 'user/index.htm', 'glyphicon glyphicon-user');
INSERT INTO `t_menu` VALUES (5, 3, ' ??? ??? ??? ??? ', 'role/index.htm', 'glyphicon glyphicon-king');
INSERT INTO `t_menu` VALUES (6, 3, ' ??? ??? ??? ??? ', 'permission/index.htm', 'glyphicon glyphicon-lock');
INSERT INTO `t_menu` VALUES (7, 1, ' ??? ??? ??? ??? ', NULL, 'glyphicon glyphicon-ok');
INSERT INTO `t_menu` VALUES (8, 7, ' ??? ??? ??? ??? ??? ??? ', 'auth_cert/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (9, 7, ' ??? ??? ??? ??? ', 'auth_adv/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (10, 7, ' ??? ??? ??? ??? ', 'auth_project/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (11, 1, ' ??? ??? ??? ??? ', NULL, 'glyphicon glyphicon-th-large');
INSERT INTO `t_menu` VALUES (12, 11, ' ??? ??? ??? ??? ', 'cert/index.htm', 'glyphicon glyphicon-picture');
INSERT INTO `t_menu` VALUES (13, 11, ' ??? ??? ??? ??? ', 'certtype/index.htm', 'glyphicon glyphicon-equalizer');
INSERT INTO `t_menu` VALUES (14, 11, ' ??? ??? ??? ??? ', 'process/index.htm', 'glyphicon glyphicon-random');
INSERT INTO `t_menu` VALUES (15, 11, ' ??? ??? ??? ??? ', 'advert/index.htm', 'glyphicon glyphicon-hdd');
INSERT INTO `t_menu` VALUES (16, 11, ' ??? ??? ??? ??? ', 'message/index.htm', 'glyphicon glyphicon-comment');
INSERT INTO `t_menu` VALUES (17, 11, ' ??? ??? ??? ??? ', 'projectType/index.htm', 'glyphicon glyphicon-list');
INSERT INTO `t_menu` VALUES (18, 11, ' ??? ??? ??? ??? ', 'tag/index.htm', 'glyphicon glyphicon-tags');
INSERT INTO `t_menu` VALUES (19, 1, ' ??? ??? ??? ??? ', 'param/index.htm', 'glyphicon glyphicon-list-alt');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `project_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `money` bigint NULL DEFAULT NULL COMMENT '????????????',
  `DAY` int NULL DEFAULT NULL COMMENT '????????????',
  `STATUS` int NULL DEFAULT NULL COMMENT '0-???????????????1-????????????2-???????????????3-????????????',
  `deploydate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `supportmoney` bigint NULL DEFAULT NULL COMMENT '?????????????????????',
  `supporter` int NULL DEFAULT NULL COMMENT '????????????',
  `COMPLETION` int NULL DEFAULT NULL COMMENT '??????????????????',
  `memberid` int NULL DEFAULT NULL COMMENT '?????????????????? id',
  `createdate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `follower` int NULL DEFAULT NULL COMMENT '????????????',
  `header_picture_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project
-- ----------------------------

-- ----------------------------
-- Table structure for t_project_item_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_project_item_pic`;
CREATE TABLE `t_project_item_pic`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectid` int NULL DEFAULT NULL,
  `item_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project_item_pic
-- ----------------------------

-- ----------------------------
-- Table structure for t_project_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_project_tag`;
CREATE TABLE `t_project_tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectid` int NULL DEFAULT NULL,
  `tagid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_project_type
-- ----------------------------
DROP TABLE IF EXISTS `t_project_type`;
CREATE TABLE `t_project_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectid` int NULL DEFAULT NULL,
  `typeid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_return
-- ----------------------------
DROP TABLE IF EXISTS `t_return`;
CREATE TABLE `t_return`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectid` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL COMMENT '0 - ??????????????? 1 ??????????????????',
  `supportmoney` int NULL DEFAULT NULL COMMENT '????????????',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `count` int NULL DEFAULT NULL COMMENT '????????????????????????0????????????????????????',
  `signalpurchase` int NULL DEFAULT NULL COMMENT '????????????????????????',
  `purchase` int NULL DEFAULT NULL COMMENT '??????????????????',
  `freight` int NULL DEFAULT NULL COMMENT '????????????0????????????',
  `invoice` int NULL DEFAULT NULL COMMENT '0 - ??????????????? 1 - ?????????',
  `returndate` int NULL DEFAULT NULL COMMENT '????????????????????????????????????????????????',
  `describ_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_return
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '??????');
INSERT INTO `t_role` VALUES (2, '??????');
INSERT INTO `t_role` VALUES (3, '???????????????');
INSERT INTO `t_role` VALUES (4, '???????????????');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
