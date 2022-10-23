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
INSERT INTO `t_admin` VALUES (1, 'tom', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', '汤姆', 'tom@qq.com', '2022-08-18 12:32:15');
INSERT INTO `t_admin` VALUES (2, 'mike', '$2a$10$n3nN.ZPJyC58qBX4zAJESeStR9fTBbdvis/UbsAORREtUJZf8AGzy', '麦克', 'mike@qq.com', '2022-08-30 16:45:27');
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
INSERT INTO `t_auth` VALUES (1, '', '用户模块', NULL);
INSERT INTO `t_auth` VALUES (2, 'user:delete', '删除', 1);
INSERT INTO `t_auth` VALUES (3, 'user:get', '查询', 1);
INSERT INTO `t_auth` VALUES (4, '', '角色模块', NULL);
INSERT INTO `t_auth` VALUES (5, 'role:delete', '删除', 4);
INSERT INTO `t_auth` VALUES (6, 'role:get', '查询', 4);
INSERT INTO `t_auth` VALUES (7, 'role:add', '新增', 4);
INSERT INTO `t_auth` VALUES (8, 'user:save', '保存', 1);

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
  `authstatus` int NULL DEFAULT NULL COMMENT '实名认证状态 0 - 未实名认证， 1 - 实名认证申 请中， 2 - 已实名认证',
  `usertype` int NULL DEFAULT NULL COMMENT ' 0 - 个人， 1 - 企业',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accttype` int NULL DEFAULT NULL COMMENT '0 - 企业， 1 - 个体， 2 - 个人， 3 - 政府',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `loginacct`(`loginacct` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (1, 'jack', '$2a$10$b5.e08C9m90srkuE.nWtgOz.5eDIaQk720Wg6rv39CdwVmQ12Jh.O', '杰克', 'jack@QQ.com', 1, 1, '杰克', '123213', 2);
INSERT INTO `t_member` VALUES (2, 'tom', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (4, 'harry', '$2a$10$aBqErJCCDIBN7.ddNEBKxeA5cQaQPtheEeb0igwc01FQKcnGxpX4.', '哈利', 'harry@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (8, 'boss', '$2a$10$PRfpreMB2VlKOft1RhCtwudzWOrKbIZScrTc4gZtm.1j0nLOpp0WG', '博士', 'boss@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (11, 'haha', '$2a$10$wl8OQRHFM22iLG3zPTFn5ueDXO4S9iGqObDkqBoiX5d6FCzp.XACy', 'haha', 'haha@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (12, 'bb', '$2a$10$Cb2sQ6hPHnK10NaBkfpnW.SZb0Z5sv/QXUTcPFbSE4DuytS6MpwjK', 'bb', 'aa@qq.com', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_member_confirm_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_confirm_info`;
CREATE TABLE `t_member_confirm_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberid` int NULL DEFAULT NULL COMMENT '会员 id',
  `paynum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '易付宝企业账号',
  `cardnum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证号',
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
  `memberid` int NULL DEFAULT NULL COMMENT '会员 id',
  `description_simple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简单介绍',
  `description_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细介绍',
  `phone_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `service_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客服电话',
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
INSERT INTO `t_menu` VALUES (1, NULL, '系统权限菜单', NULL, 'glyphicon glyphicon-th-list');
INSERT INTO `t_menu` VALUES (2, 1, ' 控 制 面 板 ', 'main.htm', 'glyphicon glyphicon-dashboard');
INSERT INTO `t_menu` VALUES (3, 1, '权限管理', NULL, 'glyphicon glyphicon glyphicon-tasks');
INSERT INTO `t_menu` VALUES (4, 3, ' 用 户 维 护 ', 'user/index.htm', 'glyphicon glyphicon-user');
INSERT INTO `t_menu` VALUES (5, 3, ' 角 色 维 护 ', 'role/index.htm', 'glyphicon glyphicon-king');
INSERT INTO `t_menu` VALUES (6, 3, ' 菜 单 维 护 ', 'permission/index.htm', 'glyphicon glyphicon-lock');
INSERT INTO `t_menu` VALUES (7, 1, ' 业 务 审 核 ', NULL, 'glyphicon glyphicon-ok');
INSERT INTO `t_menu` VALUES (8, 7, ' 实 名 认 证 审 核 ', 'auth_cert/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (9, 7, ' 广 告 审 核 ', 'auth_adv/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (10, 7, ' 项 目 审 核 ', 'auth_project/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (11, 1, ' 业 务 管 理 ', NULL, 'glyphicon glyphicon-th-large');
INSERT INTO `t_menu` VALUES (12, 11, ' 资 质 维 护 ', 'cert/index.htm', 'glyphicon glyphicon-picture');
INSERT INTO `t_menu` VALUES (13, 11, ' 分 类 管 理 ', 'certtype/index.htm', 'glyphicon glyphicon-equalizer');
INSERT INTO `t_menu` VALUES (14, 11, ' 流 程 管 理 ', 'process/index.htm', 'glyphicon glyphicon-random');
INSERT INTO `t_menu` VALUES (15, 11, ' 广 告 管 理 ', 'advert/index.htm', 'glyphicon glyphicon-hdd');
INSERT INTO `t_menu` VALUES (16, 11, ' 消 息 模 板 ', 'message/index.htm', 'glyphicon glyphicon-comment');
INSERT INTO `t_menu` VALUES (17, 11, ' 项 目 分 类 ', 'projectType/index.htm', 'glyphicon glyphicon-list');
INSERT INTO `t_menu` VALUES (18, 11, ' 项 目 标 签 ', 'tag/index.htm', 'glyphicon glyphicon-tags');
INSERT INTO `t_menu` VALUES (19, 1, ' 参 数 管 理 ', 'param/index.htm', 'glyphicon glyphicon-list-alt');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `project_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  `money` bigint NULL DEFAULT NULL COMMENT '筹集金额',
  `DAY` int NULL DEFAULT NULL COMMENT '筹集天数',
  `STATUS` int NULL DEFAULT NULL COMMENT '0-即将开始，1-众筹中，2-众筹成功，3-众筹失败',
  `deploydate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目发起时间',
  `supportmoney` bigint NULL DEFAULT NULL COMMENT '已筹集到的金额',
  `supporter` int NULL DEFAULT NULL COMMENT '支持人数',
  `COMPLETION` int NULL DEFAULT NULL COMMENT '百分比完成度',
  `memberid` int NULL DEFAULT NULL COMMENT '发起人的会员 id',
  `createdate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目创建时间',
  `follower` int NULL DEFAULT NULL COMMENT '关注人数',
  `header_picture_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头图路径',
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
  `type` int NULL DEFAULT NULL COMMENT '0 - 实物回报， 1 虚拟物品回报',
  `supportmoney` int NULL DEFAULT NULL COMMENT '支持金额',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `count` int NULL DEFAULT NULL COMMENT '回报产品限额，“0”为不限回报数量',
  `signalpurchase` int NULL DEFAULT NULL COMMENT '是否设置单笔限购',
  `purchase` int NULL DEFAULT NULL COMMENT '具体限购数量',
  `freight` int NULL DEFAULT NULL COMMENT '运费，“0”为包邮',
  `invoice` int NULL DEFAULT NULL COMMENT '0 - 不开发票， 1 - 开发票',
  `returndate` int NULL DEFAULT NULL COMMENT '项目结束后多少天向支持者发送回报',
  `describ_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明图片路径',
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
INSERT INTO `t_role` VALUES (1, '经理');
INSERT INTO `t_role` VALUES (2, '部长');
INSERT INTO `t_role` VALUES (3, '经理操作者');
INSERT INTO `t_role` VALUES (4, '部长操作者');

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
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
