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

 Date: 25/08/2022 17:55:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inner_admin_role
-- ----------------------------
INSERT INTO `inner_admin_role` VALUES (1, 14, 1);
INSERT INTO `inner_admin_role` VALUES (2, 14, 2);
INSERT INTO `inner_admin_role` VALUES (3, 14, 3);
INSERT INTO `inner_admin_role` VALUES (34, 6, 5);
INSERT INTO `inner_admin_role` VALUES (35, 6, 6);
INSERT INTO `inner_admin_role` VALUES (36, 6, 7);

-- ----------------------------
-- Table structure for inner_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `inner_role_auth`;
CREATE TABLE `inner_role_auth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `auth_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inner_role_auth
-- ----------------------------

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pswd` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_acct`(`login_acct` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (6, 'loginAcct4', '80BD23B1CFAE1CEEDD65833B45260E41', 'userName4', 'email4', NULL);
INSERT INTO `t_admin` VALUES (7, 'loginAcct5', 'C9B56F71BB980D4EAFAD8F65856E0183', 'userName5', 'email5', NULL);
INSERT INTO `t_admin` VALUES (8, 'loginAcct6', 'E86FAA1EF0D3C2372B667464AA337FD6', 'userName6', 'email6', NULL);
INSERT INTO `t_admin` VALUES (10, 'loginAcct8', '62F554E1EF2CBB5E28199DF029761EAE', 'userName8', 'email8', NULL);
INSERT INTO `t_admin` VALUES (11, 'loginAcct9', '12098F4300BC5229085E771F1B73A113', 'userName9', 'email9', NULL);
INSERT INTO `t_admin` VALUES (12, 'loginAcct10', '71485C6235C94A989CB8480DA8AF0F8C', 'userName10', 'email10', NULL);
INSERT INTO `t_admin` VALUES (13, 'loginAcct11', '947F00EFA057F38BA687B8C61CC220AC', 'userName11', 'email11', NULL);
INSERT INTO `t_admin` VALUES (14, 'loginAcct12', 'FD01E94433AEFD15450EB3E74CAF2E19', 'userName12', 'email12', NULL);
INSERT INTO `t_admin` VALUES (15, 'loginAcct13', '7EC8C32BE3149DB68F33E4DBC15130B0', 'userName13', 'email13', NULL);
INSERT INTO `t_admin` VALUES (16, 'loginAcct14', '936789D4D286B93F371D81DC66DB4B01', 'userName14', 'email14', NULL);
INSERT INTO `t_admin` VALUES (17, 'loginAcct15', 'F86E2965A8587352E93D84763080428D', 'userName15', 'email15', NULL);
INSERT INTO `t_admin` VALUES (18, 'loginAcct16', '1CF6C7E2B6CDB2A6A6B50B0D577DDE4', 'userName16', 'email16', NULL);
INSERT INTO `t_admin` VALUES (19, 'loginAcct17', 'D96CEF9C12207C0E7A7414B7D68952AC', 'userName17', 'email17', NULL);
INSERT INTO `t_admin` VALUES (20, 'loginAcct18', '8049A2DA65274E67C656EA42030BA899', 'userName18', 'email18', NULL);
INSERT INTO `t_admin` VALUES (21, 'loginAcct19', '7DC2CFD29219E0B2C271EABE6004E18D', 'userName19', 'email19', NULL);
INSERT INTO `t_admin` VALUES (22, 'loginAcct20', 'F00D8C521E926B310E40AAA230171FFE', 'userName20', 'email20', NULL);
INSERT INTO `t_admin` VALUES (23, 'loginAcct21', '3743845C0EBD0BDD8292C7583CAD76B4', 'userName21', 'email21', NULL);
INSERT INTO `t_admin` VALUES (24, 'loginAcct22', '1ED7CAE21F7E11981CDAD6B2A95C5C73', 'userName22', 'email22', NULL);
INSERT INTO `t_admin` VALUES (25, 'loginAcct23', '68FD72136E6A72B93D3255B0D203AFB', 'userName23', 'email23', NULL);
INSERT INTO `t_admin` VALUES (26, 'loginAcct24', '74D79EB15F2B5A7C4243A63360B324EC', 'userName24', 'email24', NULL);
INSERT INTO `t_admin` VALUES (27, 'loginAcct25', '59EF7B01F2539E483DED7C52E35980EA', 'userName25', 'email25', NULL);
INSERT INTO `t_admin` VALUES (28, 'loginAcct26', 'AA54E9ACFB3AB49128D8913F77C05B8A', 'userName26', 'email26', NULL);
INSERT INTO `t_admin` VALUES (29, 'loginAcct27', 'FB4714EE338467AE1FA27E602D44C27D', 'userName27', 'email27', NULL);
INSERT INTO `t_admin` VALUES (30, 'loginAcct28', 'F0996437850465F014E15BE3FDC6F309', 'userName28', 'email28', NULL);
INSERT INTO `t_admin` VALUES (31, 'loginAcct29', '52D6A51EFC1B1CF0CB52AA7C73CCFBB5', 'userName29', 'email29', NULL);
INSERT INTO `t_admin` VALUES (32, 'loginAcct30', '6AFCF5455644AD380EADFBA05E65BB6C', 'userName30', 'email30', NULL);
INSERT INTO `t_admin` VALUES (33, 'loginAcct31', 'FADB6F8FE10128B6735BD527A12C2516', 'userName31', 'email31', NULL);
INSERT INTO `t_admin` VALUES (34, 'loginAcct32', 'B4ABFB25D98BE9F83797D558E710A409', 'userName32', 'email32', NULL);
INSERT INTO `t_admin` VALUES (35, 'loginAcct33', '51A2EC4FA7D4B2223F7C7078BACC6134', 'userName33', 'email33', NULL);
INSERT INTO `t_admin` VALUES (36, 'loginAcct34', 'C9AB97DC8E05D729367873EE7F4D1B79', 'userName34', 'email34', NULL);
INSERT INTO `t_admin` VALUES (38, 'loginAcct36', '5C6365AF8E6000A1F0F955D2F25B8721', 'userName36', 'email36', NULL);
INSERT INTO `t_admin` VALUES (39, 'loginAcct37', 'BD1E8D5C202B59011F660B13A79D4628', 'userName37', 'email37', NULL);
INSERT INTO `t_admin` VALUES (40, 'loginAcct38', 'E2FA4C196A7BFD0E48F876B5BA45320B', 'userName38', 'email38', NULL);
INSERT INTO `t_admin` VALUES (41, 'loginAcct39', 'AC0E5218F7EAD3EB1405300336FABCBF', 'userName39', 'email39', NULL);
INSERT INTO `t_admin` VALUES (42, 'loginAcct40', 'E50F7150F3472211584B717843240139', 'userName40', 'email40', NULL);
INSERT INTO `t_admin` VALUES (43, 'loginAcct41', 'DEB77B7C88101B11DD2448D04F79C615', 'userName41', 'email41', NULL);
INSERT INTO `t_admin` VALUES (44, 'loginAcct42', '31233170E0865EDD54C5D421FEB5FFD0', 'userName42', 'email42', NULL);
INSERT INTO `t_admin` VALUES (45, 'loginAcct43', '7A5D058E6B29BF247A336860FC8EF299', 'userName43', 'email43', NULL);
INSERT INTO `t_admin` VALUES (46, 'loginAcct44', '6C19DD2C8E312B5DBF2326C6BDFDDF96', 'userName44', 'email44', NULL);
INSERT INTO `t_admin` VALUES (48, 'loginAcct46', '50DAEC876238C92902FEEB4A7C862882', 'userName46', 'email46', NULL);
INSERT INTO `t_admin` VALUES (49, 'loginAcct47', '80A47FEADBE3E755583F1DB9B7D4932C', 'userName47', 'email47', NULL);
INSERT INTO `t_admin` VALUES (50, 'loginAcct48', '87B52A3BA003DF4762DBC8B96EEF5E96', 'userName48', 'email48', NULL);
INSERT INTO `t_admin` VALUES (51, 'loginAcct49', 'D1CCA8996F2E255CB0EC65C78A62EB35', 'userName49', 'email49', NULL);
INSERT INTO `t_admin` VALUES (57, 'loginAcct55', '21BDB29652BC246723100AA162B8A638', 'userName55', 'email55', NULL);
INSERT INTO `t_admin` VALUES (58, 'loginAcct56', '335BE44C71FEED22ECE59951F134C397', 'userName56', 'email56', NULL);
INSERT INTO `t_admin` VALUES (59, 'loginAcct57', '325F46E2B53B17AB0861775FA457D92C', 'userName57', 'email57', NULL);
INSERT INTO `t_admin` VALUES (60, 'loginAcct58', 'EE52DFD83E6B8E1FC02C339BCE7C65E', 'userName58', 'email58', NULL);
INSERT INTO `t_admin` VALUES (61, 'loginAcct59', 'B104DFDFB2AAB7D0F9EAAAE80F731F93', 'userName59', 'email59', NULL);
INSERT INTO `t_admin` VALUES (62, 'loginAcct60', '1FC32105C3DF1E8E0372E1FDD2C7B03F', 'userName60', 'email60', NULL);
INSERT INTO `t_admin` VALUES (63, 'loginAcct61', '86D72A30A7DC78AA467E3670188B232E', 'userName61', 'email61', NULL);
INSERT INTO `t_admin` VALUES (64, 'loginAcct62', 'D463F81391636414C63F6F8F6D08B5D1', 'userName62', 'email62', NULL);
INSERT INTO `t_admin` VALUES (65, 'loginAcct63', '6C061EAF208CE03872D5B81E3E2C1553', 'userName63', 'email63', NULL);
INSERT INTO `t_admin` VALUES (66, 'loginAcct64', 'D059B79D2B89B4A65F34E0328436092E', 'userName64', 'email64', NULL);
INSERT INTO `t_admin` VALUES (67, 'loginAcct65', 'A764BD5AD9249AA9B7A9022ED29EB25B', 'userName65', 'email65', NULL);
INSERT INTO `t_admin` VALUES (68, 'loginAcct66', '1AA4C1479D030D329534A40201D1130B', 'userName66', 'email66', NULL);
INSERT INTO `t_admin` VALUES (69, 'loginAcct67', '9A70C5D9C34838CDCCC9EAA072242D59', 'userName67', 'email67', NULL);
INSERT INTO `t_admin` VALUES (70, 'loginAcct68', '140DEC1E1C164568257B66AEEE1980A2', 'userName68', 'email68', NULL);
INSERT INTO `t_admin` VALUES (71, 'loginAcct69', '49EB0623E4F2E324C92263B941D3D141', 'userName69', 'email69', NULL);
INSERT INTO `t_admin` VALUES (72, 'loginAcct70', 'B7F480D8212A796FC9CE7672DFE30E22', 'userName70', 'email70', NULL);
INSERT INTO `t_admin` VALUES (73, 'loginAcct71', 'C7511F9C56F735168AD93384B143B97C', 'userName71', 'email71', NULL);
INSERT INTO `t_admin` VALUES (74, 'loginAcct72', '71A798C6F709852A86826E4AB9F5888D', 'userName72', 'email72', NULL);
INSERT INTO `t_admin` VALUES (75, 'loginAcct73', '316618E7759A792AC36821D2B1FF6521', 'userName73', 'email73', NULL);
INSERT INTO `t_admin` VALUES (76, 'loginAcct74', 'E5965EBB53865BA27DADBBE5A4BB3D7C', 'userName74', 'email74', NULL);
INSERT INTO `t_admin` VALUES (77, 'loginAcct75', '11890D1F50D70FC4C8721959168EDCA0', 'userName75', 'email75', NULL);
INSERT INTO `t_admin` VALUES (78, 'loginAcct76', '586089D780043312688CA2AE48E0B91F', 'userName76', 'email76', NULL);
INSERT INTO `t_admin` VALUES (79, 'loginAcct77', '2834C42C6ECA79C34F6C3CAAB5D0B584', 'userName77', 'email77', NULL);
INSERT INTO `t_admin` VALUES (80, 'loginAcct78', 'DDF2D3B736D911D484EB09C8316D61CF', 'userName78', 'email78', NULL);
INSERT INTO `t_admin` VALUES (81, 'loginAcct79', 'AB70DB5B2B35908B86A9BD25BCDF8787', 'userName79', 'email79', NULL);
INSERT INTO `t_admin` VALUES (82, 'loginAcct80', '40BF59E954C2CB3917B4A642E110FF9E', 'userName80', 'email80', NULL);
INSERT INTO `t_admin` VALUES (83, 'loginAcct81', '8170B681E1A2827B3BDD0A42D14FABBA', 'userName81', 'email81', NULL);
INSERT INTO `t_admin` VALUES (84, 'loginAcct82', 'A02F4940472308F4164ADAD30C8B56E1', 'userName82', 'email82', NULL);
INSERT INTO `t_admin` VALUES (85, 'loginAcct83', 'ACB2DB2E828A0A14B6EA36DCE9CEA510', 'userName83', 'email83', NULL);
INSERT INTO `t_admin` VALUES (86, 'loginAcct84', 'CA9C0446FB388C36176B5D8E490AF8EB', 'userName84', 'email84', NULL);
INSERT INTO `t_admin` VALUES (87, 'loginAcct85', '3F0548F1D6F43EB25066000A38442A5F', 'userName85', 'email85', NULL);
INSERT INTO `t_admin` VALUES (88, 'loginAcct86', 'E61C9C12B465C878A4E6B46778A24352', 'userName86', 'email86', NULL);
INSERT INTO `t_admin` VALUES (89, 'loginAcct87', '73741377A47B983064C7C86DF1573AB0', 'userName87', 'email87', NULL);
INSERT INTO `t_admin` VALUES (90, 'loginAcct88', 'C99251B58AE43885BBFA5ADBA5AE0C11', 'userName88', 'email88', NULL);
INSERT INTO `t_admin` VALUES (91, 'loginAcct89', '6DCE860C3FFA47B39D2A3F4C13164A41', 'userName89', 'email89', NULL);
INSERT INTO `t_admin` VALUES (92, 'loginAcct90', 'AF814B1A79E3634BE5659AEB688FF88', 'userName90', 'email90', NULL);
INSERT INTO `t_admin` VALUES (93, 'loginAcct91', 'E38BEB11A24A981654ABCC18B0255A15', 'userName91', 'email91', NULL);
INSERT INTO `t_admin` VALUES (94, 'loginAcct92', '22DD500D88E30F501502F18DDD8A5263', 'userName92', 'email92', NULL);
INSERT INTO `t_admin` VALUES (95, 'loginAcct93', 'F0E07E149E082F3903FD648DB2271369', 'userName93', 'email93', NULL);
INSERT INTO `t_admin` VALUES (96, 'loginAcct94', 'C302CD6E678ECAE50E2D0F9427C9253C', 'userName94', 'email94', NULL);
INSERT INTO `t_admin` VALUES (97, 'loginAcct95', '17D88E49999A4DC1A9EEC70917132F12', 'userName95', 'email95', NULL);
INSERT INTO `t_admin` VALUES (98, 'loginAcct96', '60AFC9BEF2177D6EEAAC7E437D98ACF7', 'userName96', 'email96', NULL);
INSERT INTO `t_admin` VALUES (99, 'loginAcct97', '6732BE57E6611F3D2F912C247D257237', 'userName97', 'email97', NULL);
INSERT INTO `t_admin` VALUES (100, 'loginAcct98', '5B20648D992CCC1C083E43A9CA298717', 'userName98', 'email98', NULL);
INSERT INTO `t_admin` VALUES (101, 'loginAcct99', 'F6744AF4BE9D28E2DD908448473BC6A7', 'userName99', 'email99', NULL);
INSERT INTO `t_admin` VALUES (102, 'loginAcct100', '580B7A76B48828B0482F8713805D5E0A', 'userName100', 'email100', NULL);
INSERT INTO `t_admin` VALUES (103, 'loginAcct101', '864D2C53707FFB5F87014568EA2DFECC', 'userName101', 'email101', NULL);
INSERT INTO `t_admin` VALUES (104, 'loginAcct102', '7161EC8200340A8A44A717010F081DC7', 'userName102', 'email102', NULL);
INSERT INTO `t_admin` VALUES (105, 'loginAcct103', '8B96426C055537DE43B4C958E0ED0D97', 'userName103', 'email103', NULL);
INSERT INTO `t_admin` VALUES (106, 'loginAcct104', '5C63DEEC5AC0EA6C1D20056E66F83D43', 'userName104', 'email104', NULL);
INSERT INTO `t_admin` VALUES (107, 'loginAcct105', '565F44286C803829ADF9A3895D182E40', 'userName105', 'email105', NULL);
INSERT INTO `t_admin` VALUES (108, 'loginAcct106', '8CD032DAD3F7E14655C3A655B85050B9', 'userName106', 'email106', NULL);
INSERT INTO `t_admin` VALUES (109, 'loginAcct107', '53B7F832DDF9D617740FEFB713A3D147', 'userName107', 'email107', NULL);
INSERT INTO `t_admin` VALUES (110, 'loginAcct108', 'BCF510A029F136F44CC7C91C58878E7', 'userName108', 'email108', NULL);
INSERT INTO `t_admin` VALUES (111, 'loginAcct109', '111F3A208816F8F14C99D99927EF8DBF', 'userName109', 'email109', NULL);
INSERT INTO `t_admin` VALUES (112, 'loginAcct110', 'DD9FCCCC391F07452224427455DBDBC1', 'userName110', 'email110', NULL);
INSERT INTO `t_admin` VALUES (113, 'loginAcct111', 'FEA38EF4B484B142A27578ADFAC50ACB', 'userName111', 'email111', NULL);
INSERT INTO `t_admin` VALUES (114, 'loginAcct112', '999AAD5D6E7D28703BA43F7A20472C4A', 'userName112', 'email112', NULL);
INSERT INTO `t_admin` VALUES (115, 'loginAcct113', 'EABA37F4B31EA21B7416D5233707D79B', 'userName113', 'email113', NULL);
INSERT INTO `t_admin` VALUES (116, 'loginAcct114', 'DC9B409937E318B2CC853FE99583CE30', 'userName114', 'email114', NULL);
INSERT INTO `t_admin` VALUES (117, 'loginAcct115', 'B73780046672691C6B255EE86D1AEC16', 'userName115', 'email115', NULL);
INSERT INTO `t_admin` VALUES (118, 'loginAcct116', 'EAB3500DA623139D931AC86BD91483E1', 'userName116', 'email116', NULL);
INSERT INTO `t_admin` VALUES (119, 'loginAcct117', 'D6AC47FB131ABEEE16920B4D252B64F4', 'userName117', 'email117', NULL);
INSERT INTO `t_admin` VALUES (120, 'loginAcct118', '316230A044AAE63CD7F2CB9903D4D1EA', 'userName118', 'email118', NULL);
INSERT INTO `t_admin` VALUES (121, 'loginAcct119', '191A54F2454827A0885D1C2754811F00', 'userName119', 'email119', NULL);
INSERT INTO `t_admin` VALUES (122, 'loginAcct120', '2B3DDAAC50B3501096EFCC85B3BDAFBC', 'userName120', 'email120', NULL);
INSERT INTO `t_admin` VALUES (123, 'loginAcct121', 'AF5C9555DBA72719B85AB6937F9105D7', 'userName121', 'email121', NULL);
INSERT INTO `t_admin` VALUES (124, 'loginAcct122', '46D6D0AD80C387E5E4D26D044BEF7B34', 'userName122', 'email122', NULL);
INSERT INTO `t_admin` VALUES (125, 'loginAcct123', '5EDEE48C650790EE861E8A09B1249051', 'userName123', 'email123', NULL);
INSERT INTO `t_admin` VALUES (126, 'loginAcct124', '627BE623CC8BB3C456F54BF7E88E8575', 'userName124', 'email124', NULL);
INSERT INTO `t_admin` VALUES (127, 'loginAcct125', 'EF8FA866E32CCD633CAA393A69A0D6BE', 'userName125', 'email125', NULL);
INSERT INTO `t_admin` VALUES (128, 'loginAcct126', 'CF7134723DE0E5486D8EBFF89C6FD427', 'userName126', 'email126', NULL);
INSERT INTO `t_admin` VALUES (129, 'loginAcct127', 'BEE1324FD4F078D489810CF7929B81BD', 'userName127', 'email127', NULL);
INSERT INTO `t_admin` VALUES (130, 'loginAcct128', '731488DE5840EDF819BC107CBD8CE871', 'userName128', 'email128', NULL);
INSERT INTO `t_admin` VALUES (131, 'loginAcct129', 'FE071BABECB4B597235D60BD69FAD3DA', 'userName129', 'email129', NULL);
INSERT INTO `t_admin` VALUES (132, 'loginAcct130', 'B111A061989384C94D47CC71872FF6F4', 'userName130', 'email130', NULL);
INSERT INTO `t_admin` VALUES (133, 'loginAcct131', '685EDBBBC59CACB3166060C2A8BD4DD9', 'userName131', 'email131', NULL);
INSERT INTO `t_admin` VALUES (134, 'loginAcct132', '9BA940313F0759CCCDB1B60643390D6F', 'userName132', 'email132', NULL);
INSERT INTO `t_admin` VALUES (135, 'loginAcct133', '35082C580727C3571F47EF7118CCAC8E', 'userName133', 'email133', NULL);
INSERT INTO `t_admin` VALUES (136, 'loginAcct134', '80F2E8A2348ADEFD82FA70682EAD1A2C', 'userName134', 'email134', NULL);
INSERT INTO `t_admin` VALUES (137, 'loginAcct135', '4DFA97FF1380C2E768AAF92B1B8B2F05', 'userName135', 'email135', NULL);
INSERT INTO `t_admin` VALUES (138, 'loginAcct136', 'E29D71C4B98C55A073F38C07D16A6115', 'userName136', 'email136', NULL);
INSERT INTO `t_admin` VALUES (139, 'loginAcct137', '1DD442E06C10D8F7E32A72B686C460F7', 'userName137', 'email137', NULL);
INSERT INTO `t_admin` VALUES (140, 'loginAcct138', 'B7EAD13ADF55CD93BCDCBD63400A8086', 'userName138', 'email138', NULL);
INSERT INTO `t_admin` VALUES (141, 'loginAcct139', '4244FA4DDD8286CD9944AD4EE80F635', 'userName139', 'email139', NULL);
INSERT INTO `t_admin` VALUES (142, 'loginAcct140', 'B53701A9FDF24EB62D864F512D064C56', 'userName140', 'email140', NULL);
INSERT INTO `t_admin` VALUES (143, 'loginAcct141', '4C890070DA9AF26F66AFE6D3E37E99F8', 'userName141', 'email141', NULL);
INSERT INTO `t_admin` VALUES (144, 'loginAcct142', 'D5BC4AC11BA842533B78BF74BE25B60', 'userName142', 'email142', NULL);
INSERT INTO `t_admin` VALUES (145, 'loginAcct143', 'CE77B24685F7F2B9929BFFC6C28CCC7B', 'userName143', 'email143', NULL);
INSERT INTO `t_admin` VALUES (146, 'loginAcct144', '1BF5BA78349AF077E0EC005D15A24BF0', 'userName144', 'email144', NULL);
INSERT INTO `t_admin` VALUES (147, 'loginAcct145', '8FDAC12ED371785F6F9E5805A7A4E276', 'userName145', 'email145', NULL);
INSERT INTO `t_admin` VALUES (148, 'loginAcct146', '615C09D588EB94A77B60DF3906B47CA4', 'userName146', 'email146', NULL);
INSERT INTO `t_admin` VALUES (149, 'loginAcct147', '1C4CD28DDD00164E11916E8705CAF2A3', 'userName147', 'email147', NULL);
INSERT INTO `t_admin` VALUES (150, 'loginAcct148', '365F51733409937D9CF2810BAA7E82B6', 'userName148', 'email148', NULL);
INSERT INTO `t_admin` VALUES (151, 'loginAcct149', '8BB985DC28AE1270A75F53CC1D6FC1BB', 'userName149', 'email149', NULL);
INSERT INTO `t_admin` VALUES (152, 'loginAcct150', '43AAE0C013910CE96B0D42F27F324037', 'userName150', 'email150', NULL);
INSERT INTO `t_admin` VALUES (153, 'loginAcct151', '86CF54BC604689C20B62CB1C063F0BDD', 'userName151', 'email151', NULL);
INSERT INTO `t_admin` VALUES (154, 'loginAcct152', 'D4F189050BE643FFBD7BED9F4F2C2590', 'userName152', 'email152', NULL);
INSERT INTO `t_admin` VALUES (155, 'loginAcct153~', 'A260D03D8DD919F558CDB4809FB7323E', 'userName153~', 'email153~@qq.com', NULL);
INSERT INTO `t_admin` VALUES (156, 'loginAcct154', '203248B3D479D0EC2B3BCB7C52D1DA36', 'userName154', 'email154', NULL);
INSERT INTO `t_admin` VALUES (157, 'loginAcct155', 'EA24AD318D1F04AE94FC2CE4DD22F3BC', 'userName155', 'email155', NULL);
INSERT INTO `t_admin` VALUES (158, 'loginAcct156', 'C4502E442AEB970DFAA34FADDB405BA9', 'userName156', 'email156', NULL);
INSERT INTO `t_admin` VALUES (159, 'loginAcct157', '517B832CB7F7EA0DF050894547AD7775', 'userName157', 'email157', NULL);
INSERT INTO `t_admin` VALUES (160, 'loginAcct158', '68212B2814934A41BBC6E827FC73158E', 'userName158', 'email158', NULL);
INSERT INTO `t_admin` VALUES (161, 'loginAcct159', '1D64A97E3B9F49CDC767998F4F31E30D', 'userName159', 'email159', NULL);
INSERT INTO `t_admin` VALUES (162, 'loginAcct160', '57E6A24D83D758199A6F2B90A1DF9EFA', 'userName160', 'email160', NULL);
INSERT INTO `t_admin` VALUES (163, 'loginAcct161', 'A09CD837F6D3D08A9B7F3280DDA7A9A6', 'userName161', 'email161', NULL);
INSERT INTO `t_admin` VALUES (164, 'loginAcct162', 'CE83FF726342DD6FF3D57A316F4CCD77', 'userName162', 'email162', NULL);
INSERT INTO `t_admin` VALUES (165, 'loginAcct163', '2CC88355E98CE2EFA71FBDC180CA09EA', 'userName163', 'email163', NULL);
INSERT INTO `t_admin` VALUES (166, 'loginAcct164', '72CD07F9D7696303AF4F6810980A1231', 'userName164', 'email164', NULL);
INSERT INTO `t_admin` VALUES (167, 'loginAcct165', '4D9D35A88A783EDAC46565CA060E5BB1', 'userName165', 'email165', NULL);
INSERT INTO `t_admin` VALUES (168, 'loginAcct166', 'FCFBAFE326B4A7ECF347CED695A54DD2', 'userName166', 'email166', NULL);
INSERT INTO `t_admin` VALUES (169, 'loginAcct167', '3CC39AE3B95FFA3A69200B69E2DFC9F2', 'userName167', 'email167', NULL);
INSERT INTO `t_admin` VALUES (170, 'loginAcct168', '556777C377EFDDF661AD9F05B712F0E', 'userName168', 'email168', NULL);
INSERT INTO `t_admin` VALUES (171, 'loginAcct169', '8F336D6A4E316515979A0AAC7E5EB537', 'userName169', 'email169', NULL);
INSERT INTO `t_admin` VALUES (172, 'loginAcct170', 'BA7A4C1DD1716925C00DD00274B6B710', 'userName170', 'email170', NULL);
INSERT INTO `t_admin` VALUES (173, 'loginAcct171', 'C915D6F42F3A8DB8AEE9ADC4BACB073F', 'userName171', 'email171', NULL);
INSERT INTO `t_admin` VALUES (174, 'loginAcct172', 'DF560F190E8CF4AFA19CA1E58CE8D6A', 'userName172', 'email172', NULL);
INSERT INTO `t_admin` VALUES (175, 'loginAcct173', '4C2B0904A7FC3FEF6892360896B6E4F6', 'userName173', 'email173', NULL);
INSERT INTO `t_admin` VALUES (176, 'loginAcct174', 'C8FC97D483EB729EAC4D99AD82CAF6CE', 'userName174', 'email174', NULL);
INSERT INTO `t_admin` VALUES (177, 'loginAcct175', 'AF2C6B50E5EB4AC2097CA7FD812279F9', 'userName175', 'email175', NULL);
INSERT INTO `t_admin` VALUES (178, 'loginAcct176', 'C71270CB126BA35B160A2C38193BD53B', 'userName176', 'email176', NULL);
INSERT INTO `t_admin` VALUES (179, 'loginAcct177', 'A34F3086622AEF6EB42CFAFFE0313E19', 'userName177', 'email177', NULL);
INSERT INTO `t_admin` VALUES (180, 'loginAcct178', 'CF07D73B29AE68F86569639B625088E8', 'userName178', 'email178', NULL);
INSERT INTO `t_admin` VALUES (181, 'loginAcct179', '6686A31B43080543554FE48F51C774EC', 'userName179', 'email179', NULL);
INSERT INTO `t_admin` VALUES (182, 'loginAcct180', 'DE148EE0A81B54D84618C6D138CA2A85', 'userName180', 'email180', NULL);
INSERT INTO `t_admin` VALUES (183, 'loginAcct181', 'FFC20B4DEB0EF7A022606AC0AFA0DC45', 'userName181', 'email181', NULL);
INSERT INTO `t_admin` VALUES (184, 'loginAcct182', '929A5DFB72723418336B566EA9A0B651', 'userName182', 'email182', NULL);
INSERT INTO `t_admin` VALUES (185, 'loginAcct183', 'C71D5F4F27120B3A57958067089F3D0E', 'userName183', 'email183', NULL);
INSERT INTO `t_admin` VALUES (186, 'loginAcct184', '75FBE0035FD6C3A18608F477760D20DB', 'userName184', 'email184', NULL);
INSERT INTO `t_admin` VALUES (187, 'loginAcct185', '3D8C9231EC7F30635E17C255FA2E31B8', 'userName185', 'email185', NULL);
INSERT INTO `t_admin` VALUES (188, 'loginAcct186', '3762C419DD46F015CC27B73FF42DF41E', 'userName186', 'email186', NULL);
INSERT INTO `t_admin` VALUES (189, 'loginAcct187', 'F601EAF61DAAF36E7E7A22F31341CA04', 'userName187', 'email187', NULL);
INSERT INTO `t_admin` VALUES (190, 'loginAcct188', '39F77F12B089875EFE0F6810E8B466CC', 'userName188', 'email188', NULL);
INSERT INTO `t_admin` VALUES (191, 'loginAcct189', 'E2DD95B4057E6AC953092F0729E084EB', 'userName189', 'email189', NULL);
INSERT INTO `t_admin` VALUES (192, 'loginAcct190', '5CE1F3A005800D1E9209401BD74BB281', 'userName190', 'email190', NULL);
INSERT INTO `t_admin` VALUES (193, 'loginAcct191', '3C9AE1A0933B2BAB8DBB078897A33F04', 'userName191', 'email191', NULL);
INSERT INTO `t_admin` VALUES (194, 'loginAcct192', '4A6E3FEC722434E62040624580185F39', 'userName192', 'email192', NULL);
INSERT INTO `t_admin` VALUES (195, 'loginAcct193', '1C5496A77C75CE2CF5E8EE64637DDD21', 'userName193', 'email193', NULL);
INSERT INTO `t_admin` VALUES (196, 'loginAcct194', '41E3DD6888FE5F257509335E1219657', 'userName194', 'email194', NULL);
INSERT INTO `t_admin` VALUES (197, 'loginAcct195', '9F96FF9101348915926DF0FB6D0E18F0', 'userName195', 'email195', NULL);
INSERT INTO `t_admin` VALUES (198, 'loginAcct196', 'CCF04EC9B501569DFC40EE175265AE04', 'userName196', 'email196', NULL);
INSERT INTO `t_admin` VALUES (199, 'loginAcct197', 'CD86218418CF0D8F8B626696B98A6F17', 'userName197', 'email197', NULL);
INSERT INTO `t_admin` VALUES (200, 'loginAcct198', '80AEA582E0E5BC82AC30EACBCF71F89D', 'userName198', 'email198', NULL);
INSERT INTO `t_admin` VALUES (201, 'loginAcct199', 'D805A389528E7C4BF8AC3C9D335C471F', 'userName199', 'email199', NULL);
INSERT INTO `t_admin` VALUES (202, 'loginAcct200', 'C855BAB8F69EE52C042A0FA3A1834619', 'userName200', 'email200', NULL);
INSERT INTO `t_admin` VALUES (203, 'loginAcct201', 'CF7E61429801B813AF2C23AB6D6AAB33', 'userName201', 'email201', NULL);
INSERT INTO `t_admin` VALUES (204, 'loginAcct202', '6866E4298FF156B23C51261B1A6D3845', 'userName202', 'email202', NULL);
INSERT INTO `t_admin` VALUES (205, 'loginAcct203', '37579C93801E7FBCEE9E9016ACC2BDAC', 'userName203', 'email203', NULL);
INSERT INTO `t_admin` VALUES (206, 'loginAcct204', 'A93AFE9DF5EA6832FEA922AEF030DFCF', 'userName204', 'email204', NULL);
INSERT INTO `t_admin` VALUES (207, 'loginAcct205', 'AE2600F7E59DBE1C4A6CC5BB0A9E2051', 'userName205', 'email205', NULL);
INSERT INTO `t_admin` VALUES (208, 'loginAcct206', '8E2386126AA36B11A4EAF4A6D17AD8E0', 'userName206', 'email206', NULL);
INSERT INTO `t_admin` VALUES (209, 'loginAcct207', 'D807F725B70BA384CE3D55E337608D3A', 'userName207', 'email207', NULL);
INSERT INTO `t_admin` VALUES (210, 'loginAcct208', 'DCC83FFAB8FAEDE70421B6E49E3E2E12', 'userName208', 'email208', NULL);
INSERT INTO `t_admin` VALUES (211, 'loginAcct209', '195FF0B912D2D06F87A3128355DEAAB5', 'userName209', 'email209', NULL);
INSERT INTO `t_admin` VALUES (212, 'loginAcct210', '88BA9833C950A593CF1FDD65621ABE1C', 'userName210', 'email210', NULL);
INSERT INTO `t_admin` VALUES (213, 'loginAcct211', 'D2E7992A0F6B2DCBE65A048DA2C6E47E', 'userName211', 'email211', NULL);
INSERT INTO `t_admin` VALUES (214, 'loginAcct212', 'F877D49AF2867A32B6379A9E71DCF62D', 'userName212', 'email212', NULL);
INSERT INTO `t_admin` VALUES (215, 'loginAcct213', '3AC76F73194C7B47DA86216B52E10D19', 'userName213', 'email213', NULL);
INSERT INTO `t_admin` VALUES (216, 'loginAcct214', '1F3E3C445189A097613B3C14A0974B99', 'userName214', 'email214', NULL);
INSERT INTO `t_admin` VALUES (217, 'loginAcct215', '1253CC0E5B957140173278481D5B57E1', 'userName215', 'email215', NULL);
INSERT INTO `t_admin` VALUES (218, 'loginAcct216', '1EFB04B99E49170BD74267C5382D62FE', 'userName216', 'email216', NULL);
INSERT INTO `t_admin` VALUES (219, 'loginAcct217', '8BA4C60208614373C45DB925B0D36B9D', 'userName217', 'email217', NULL);
INSERT INTO `t_admin` VALUES (220, 'loginAcct218', '8494989328A62EC3A6A6D453BDFE51F4', 'userName218', 'email218', NULL);
INSERT INTO `t_admin` VALUES (221, 'loginAcct219', '8AD100ACE04EAE9F0626E7233C4A32F5', 'userName219', 'email219', NULL);
INSERT INTO `t_admin` VALUES (222, 'loginAcct220', '6855A98047B2B7591882FA918DAAB310', 'userName220', 'email220', NULL);
INSERT INTO `t_admin` VALUES (223, 'loginAcct221', '7A829CD616F2581A54951432D6053773', 'userName221', 'email221', NULL);
INSERT INTO `t_admin` VALUES (224, 'loginAcct222', 'F0413B1DE139AD7AD9C659376E7A7B0', 'userName222', 'email222', NULL);
INSERT INTO `t_admin` VALUES (225, 'loginAcct223', '753B9F6F32664B4D479BE3BB3B00550', 'userName223', 'email223', NULL);
INSERT INTO `t_admin` VALUES (226, 'loginAcct224', '3E3F6468558261BE891B4DBEE8D688D', 'userName224', 'email224', NULL);
INSERT INTO `t_admin` VALUES (227, 'loginAcct225', 'B53340DC24C88B93EA673BB8FE5BB8E8', 'userName225', 'email225', NULL);
INSERT INTO `t_admin` VALUES (228, 'loginAcct226', '5F6FEA07F9276BD3956B9DAD0FA37A2', 'userName226', 'email226', NULL);
INSERT INTO `t_admin` VALUES (229, 'loginAcct227', '37F143C4852924D5A2CA6EFEF75907A6', 'userName227', 'email227', NULL);
INSERT INTO `t_admin` VALUES (230, 'loginAcct228', '253A07B0410538AD1B2DF4C23728270E', 'userName228', 'email228', NULL);
INSERT INTO `t_admin` VALUES (231, 'loginAcct229', 'E8D9DF58D6FD6B8E6452DFEA7165C1FC', 'userName229', 'email229', NULL);
INSERT INTO `t_admin` VALUES (232, 'loginAcct230', 'F82CE7F97A74BC1F0C037FD283953118', 'userName230', 'email230', NULL);
INSERT INTO `t_admin` VALUES (233, 'loginAcct231', '46850C309CE883980D1F848BDA199263', 'userName231', 'email231', NULL);
INSERT INTO `t_admin` VALUES (234, 'loginAcct232', '31C55C0EDE0AA2D5FD6504AF2A66EEF5', 'userName232', 'email232', NULL);
INSERT INTO `t_admin` VALUES (235, 'loginAcct233', '554E5633A3D96841EDF2533E09A25D67', 'userName233', 'email233', NULL);
INSERT INTO `t_admin` VALUES (236, 'loginAcct234', '9621E7710D7B14D525F3BF9B162B5858', 'userName234', 'email234', NULL);
INSERT INTO `t_admin` VALUES (237, 'loginAcct235', '9CD040E4D8D937CE3FF5BEBCA13AED10', 'userName235', 'email235', NULL);
INSERT INTO `t_admin` VALUES (238, 'loginAcct236', '7FB5F516A54B3978DA05BC9695230DCF', 'userName236', 'email236', NULL);
INSERT INTO `t_admin` VALUES (239, 'loginAcct237', '6BCD594C42D5619751DAE2D3103EC134', 'userName237', 'email237', NULL);
INSERT INTO `t_admin` VALUES (240, 'bob', '202CB962AC59075B964B07152D234B70', '鲍勃', 'bob@qq.com', '2022-05-21 22:02:12');
INSERT INTO `t_admin` VALUES (241, 'jerry', '202CB962AC59075B964B07152D234B70', '杰瑞', 'jerry@qq.com', '2022-05-21 22:07:43');
INSERT INTO `t_admin` VALUES (242, 'jack', '202CB962AC59075B964B07152D234B70', '杰克', 'jack@qq.com', '2022-05-22 10:34:48');
INSERT INTO `t_admin` VALUES (243, 'andy', '202CB962AC59075B964B07152D234B70', '安迪', 'andy@qq.com', '2022-05-22 10:37:00');
INSERT INTO `t_admin` VALUES (249, 'tom', '202CB962AC59075B964B07152D234B70', '汤姆', 'tom@qq.com', '2022-08-18 12:32:15');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 472 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'role0');
INSERT INTO `t_role` VALUES (2, 'role1');
INSERT INTO `t_role` VALUES (3, 'role2');
INSERT INTO `t_role` VALUES (4, 'role3');
INSERT INTO `t_role` VALUES (5, 'role4');
INSERT INTO `t_role` VALUES (6, 'role5');
INSERT INTO `t_role` VALUES (7, 'role6');
INSERT INTO `t_role` VALUES (8, 'role7');
INSERT INTO `t_role` VALUES (9, 'role8');
INSERT INTO `t_role` VALUES (10, 'role9');
INSERT INTO `t_role` VALUES (11, 'role10');
INSERT INTO `t_role` VALUES (12, 'role11');
INSERT INTO `t_role` VALUES (13, 'role12');
INSERT INTO `t_role` VALUES (14, 'role13');
INSERT INTO `t_role` VALUES (15, 'role14');
INSERT INTO `t_role` VALUES (28, 'role27');
INSERT INTO `t_role` VALUES (29, 'role28');
INSERT INTO `t_role` VALUES (30, 'role29');
INSERT INTO `t_role` VALUES (31, 'role30');
INSERT INTO `t_role` VALUES (32, 'role31');
INSERT INTO `t_role` VALUES (33, 'role32');
INSERT INTO `t_role` VALUES (34, 'role33');
INSERT INTO `t_role` VALUES (35, 'role34');
INSERT INTO `t_role` VALUES (36, 'role35');
INSERT INTO `t_role` VALUES (37, 'role36');
INSERT INTO `t_role` VALUES (38, 'role37');
INSERT INTO `t_role` VALUES (39, 'role38');
INSERT INTO `t_role` VALUES (40, 'role39');
INSERT INTO `t_role` VALUES (41, 'role40');
INSERT INTO `t_role` VALUES (42, 'role41');
INSERT INTO `t_role` VALUES (43, 'role42');
INSERT INTO `t_role` VALUES (44, 'role43');
INSERT INTO `t_role` VALUES (45, 'role44');
INSERT INTO `t_role` VALUES (46, 'role45');
INSERT INTO `t_role` VALUES (47, 'role46');
INSERT INTO `t_role` VALUES (48, 'role47');
INSERT INTO `t_role` VALUES (49, 'role48');
INSERT INTO `t_role` VALUES (50, 'role49');
INSERT INTO `t_role` VALUES (51, 'role50');
INSERT INTO `t_role` VALUES (52, 'role51');
INSERT INTO `t_role` VALUES (53, 'role52');
INSERT INTO `t_role` VALUES (54, 'role53');
INSERT INTO `t_role` VALUES (55, 'role54');
INSERT INTO `t_role` VALUES (56, 'role55');
INSERT INTO `t_role` VALUES (57, 'role56');
INSERT INTO `t_role` VALUES (58, 'role57');
INSERT INTO `t_role` VALUES (59, 'role58');
INSERT INTO `t_role` VALUES (60, 'role59');
INSERT INTO `t_role` VALUES (61, 'role60');
INSERT INTO `t_role` VALUES (62, 'role61');
INSERT INTO `t_role` VALUES (63, 'role62');
INSERT INTO `t_role` VALUES (64, 'role63');
INSERT INTO `t_role` VALUES (65, 'role64');
INSERT INTO `t_role` VALUES (66, 'role65');
INSERT INTO `t_role` VALUES (67, 'role66');
INSERT INTO `t_role` VALUES (68, 'role67');
INSERT INTO `t_role` VALUES (69, 'role68');
INSERT INTO `t_role` VALUES (70, 'role69');
INSERT INTO `t_role` VALUES (71, 'role70');
INSERT INTO `t_role` VALUES (72, 'role71');
INSERT INTO `t_role` VALUES (73, 'role72');
INSERT INTO `t_role` VALUES (74, 'role73');
INSERT INTO `t_role` VALUES (75, 'role74');
INSERT INTO `t_role` VALUES (76, 'role75');
INSERT INTO `t_role` VALUES (77, 'role76');
INSERT INTO `t_role` VALUES (78, 'role77');
INSERT INTO `t_role` VALUES (79, 'role78');
INSERT INTO `t_role` VALUES (80, 'role79');
INSERT INTO `t_role` VALUES (81, 'role80');
INSERT INTO `t_role` VALUES (82, 'role81');
INSERT INTO `t_role` VALUES (83, 'role82');
INSERT INTO `t_role` VALUES (84, 'role83');
INSERT INTO `t_role` VALUES (85, 'role84');
INSERT INTO `t_role` VALUES (86, 'role85');
INSERT INTO `t_role` VALUES (87, 'role86');
INSERT INTO `t_role` VALUES (88, 'role87');
INSERT INTO `t_role` VALUES (89, 'role88');
INSERT INTO `t_role` VALUES (90, 'role89');
INSERT INTO `t_role` VALUES (91, 'role90');
INSERT INTO `t_role` VALUES (92, 'role91');
INSERT INTO `t_role` VALUES (93, 'role92');
INSERT INTO `t_role` VALUES (94, 'role93');
INSERT INTO `t_role` VALUES (95, 'role94');
INSERT INTO `t_role` VALUES (96, 'role95');
INSERT INTO `t_role` VALUES (97, 'role96');
INSERT INTO `t_role` VALUES (98, 'role97');
INSERT INTO `t_role` VALUES (99, 'role98');
INSERT INTO `t_role` VALUES (100, 'role99');
INSERT INTO `t_role` VALUES (101, 'role100');
INSERT INTO `t_role` VALUES (102, 'role101');
INSERT INTO `t_role` VALUES (103, 'role102');
INSERT INTO `t_role` VALUES (104, 'role103');
INSERT INTO `t_role` VALUES (105, 'role104');
INSERT INTO `t_role` VALUES (106, 'role105');
INSERT INTO `t_role` VALUES (107, 'role106');
INSERT INTO `t_role` VALUES (108, 'role107');
INSERT INTO `t_role` VALUES (109, 'role108');
INSERT INTO `t_role` VALUES (110, 'role109');
INSERT INTO `t_role` VALUES (111, 'role110');
INSERT INTO `t_role` VALUES (112, 'role111');
INSERT INTO `t_role` VALUES (113, 'role112');
INSERT INTO `t_role` VALUES (114, 'role113');
INSERT INTO `t_role` VALUES (115, 'role114');
INSERT INTO `t_role` VALUES (116, 'role115');
INSERT INTO `t_role` VALUES (117, 'role116');
INSERT INTO `t_role` VALUES (118, 'role117');
INSERT INTO `t_role` VALUES (119, 'role118');
INSERT INTO `t_role` VALUES (120, 'role119');
INSERT INTO `t_role` VALUES (121, 'role120');
INSERT INTO `t_role` VALUES (122, 'role121');
INSERT INTO `t_role` VALUES (123, 'role122');
INSERT INTO `t_role` VALUES (124, 'role123');
INSERT INTO `t_role` VALUES (125, 'role124');
INSERT INTO `t_role` VALUES (126, 'role125');
INSERT INTO `t_role` VALUES (127, 'role126');
INSERT INTO `t_role` VALUES (128, 'role127');
INSERT INTO `t_role` VALUES (129, 'role128');
INSERT INTO `t_role` VALUES (130, 'role129');
INSERT INTO `t_role` VALUES (131, 'role130');
INSERT INTO `t_role` VALUES (132, 'role131');
INSERT INTO `t_role` VALUES (133, 'role132');
INSERT INTO `t_role` VALUES (134, 'role133');
INSERT INTO `t_role` VALUES (135, 'role134');
INSERT INTO `t_role` VALUES (136, 'role135');
INSERT INTO `t_role` VALUES (137, 'role136');
INSERT INTO `t_role` VALUES (138, 'role137');
INSERT INTO `t_role` VALUES (139, 'role138');
INSERT INTO `t_role` VALUES (140, 'role139');
INSERT INTO `t_role` VALUES (141, 'role140');
INSERT INTO `t_role` VALUES (142, 'role141');
INSERT INTO `t_role` VALUES (143, 'role142');
INSERT INTO `t_role` VALUES (144, 'role143');
INSERT INTO `t_role` VALUES (145, 'role144');
INSERT INTO `t_role` VALUES (146, 'role145');
INSERT INTO `t_role` VALUES (147, 'role146');
INSERT INTO `t_role` VALUES (148, 'role147');
INSERT INTO `t_role` VALUES (149, 'role148');
INSERT INTO `t_role` VALUES (150, 'role149');
INSERT INTO `t_role` VALUES (151, 'role150');
INSERT INTO `t_role` VALUES (152, 'role151');
INSERT INTO `t_role` VALUES (153, 'role152');
INSERT INTO `t_role` VALUES (154, 'role153');
INSERT INTO `t_role` VALUES (155, 'role154');
INSERT INTO `t_role` VALUES (156, 'role155');
INSERT INTO `t_role` VALUES (157, 'role156');
INSERT INTO `t_role` VALUES (158, 'role157');
INSERT INTO `t_role` VALUES (159, 'role158');
INSERT INTO `t_role` VALUES (160, 'role159');
INSERT INTO `t_role` VALUES (161, 'role160');
INSERT INTO `t_role` VALUES (162, 'role161');
INSERT INTO `t_role` VALUES (163, 'role162');
INSERT INTO `t_role` VALUES (164, 'role163');
INSERT INTO `t_role` VALUES (165, 'role164');
INSERT INTO `t_role` VALUES (166, 'role165');
INSERT INTO `t_role` VALUES (167, 'role166');
INSERT INTO `t_role` VALUES (168, 'role167');
INSERT INTO `t_role` VALUES (169, 'role168');
INSERT INTO `t_role` VALUES (170, 'role169');
INSERT INTO `t_role` VALUES (171, 'role170');
INSERT INTO `t_role` VALUES (172, 'role171');
INSERT INTO `t_role` VALUES (173, 'role172');
INSERT INTO `t_role` VALUES (174, 'role173');
INSERT INTO `t_role` VALUES (175, 'role174');
INSERT INTO `t_role` VALUES (176, 'role175');
INSERT INTO `t_role` VALUES (177, 'role176');
INSERT INTO `t_role` VALUES (178, 'role177');
INSERT INTO `t_role` VALUES (179, 'role178');
INSERT INTO `t_role` VALUES (180, 'role179');
INSERT INTO `t_role` VALUES (181, 'role180');
INSERT INTO `t_role` VALUES (182, 'role181');
INSERT INTO `t_role` VALUES (183, 'role182');
INSERT INTO `t_role` VALUES (184, 'role183');
INSERT INTO `t_role` VALUES (185, 'role184');
INSERT INTO `t_role` VALUES (186, 'role185');
INSERT INTO `t_role` VALUES (187, 'role186');
INSERT INTO `t_role` VALUES (188, 'role187');
INSERT INTO `t_role` VALUES (189, 'role188');
INSERT INTO `t_role` VALUES (190, 'role189');
INSERT INTO `t_role` VALUES (191, 'role190');
INSERT INTO `t_role` VALUES (192, 'role191');
INSERT INTO `t_role` VALUES (193, 'role192');
INSERT INTO `t_role` VALUES (194, 'role193');
INSERT INTO `t_role` VALUES (195, 'role194');
INSERT INTO `t_role` VALUES (196, 'role195');
INSERT INTO `t_role` VALUES (197, 'role196');
INSERT INTO `t_role` VALUES (198, 'role197');
INSERT INTO `t_role` VALUES (199, 'role198');
INSERT INTO `t_role` VALUES (200, 'role199');
INSERT INTO `t_role` VALUES (201, 'role200');
INSERT INTO `t_role` VALUES (202, 'role201');
INSERT INTO `t_role` VALUES (203, 'role202');
INSERT INTO `t_role` VALUES (204, 'role203');
INSERT INTO `t_role` VALUES (205, 'role204');
INSERT INTO `t_role` VALUES (206, 'role205');
INSERT INTO `t_role` VALUES (207, 'role206');
INSERT INTO `t_role` VALUES (208, 'role207');
INSERT INTO `t_role` VALUES (209, 'role208');
INSERT INTO `t_role` VALUES (210, 'role209');
INSERT INTO `t_role` VALUES (211, 'role210');
INSERT INTO `t_role` VALUES (212, 'role211');
INSERT INTO `t_role` VALUES (213, 'role212');
INSERT INTO `t_role` VALUES (214, 'role213');
INSERT INTO `t_role` VALUES (215, 'role214');
INSERT INTO `t_role` VALUES (216, 'role215');
INSERT INTO `t_role` VALUES (217, 'role216');
INSERT INTO `t_role` VALUES (218, 'role217');
INSERT INTO `t_role` VALUES (219, 'role218');
INSERT INTO `t_role` VALUES (220, 'role219');
INSERT INTO `t_role` VALUES (221, 'role220');
INSERT INTO `t_role` VALUES (222, 'role221');
INSERT INTO `t_role` VALUES (223, 'role222');
INSERT INTO `t_role` VALUES (224, 'role223');
INSERT INTO `t_role` VALUES (225, 'role224');
INSERT INTO `t_role` VALUES (226, 'role225');
INSERT INTO `t_role` VALUES (227, 'role226');
INSERT INTO `t_role` VALUES (228, 'role227');
INSERT INTO `t_role` VALUES (229, 'role228');
INSERT INTO `t_role` VALUES (230, 'role229');
INSERT INTO `t_role` VALUES (231, 'role230');
INSERT INTO `t_role` VALUES (232, 'role231');
INSERT INTO `t_role` VALUES (233, 'role232');
INSERT INTO `t_role` VALUES (234, 'role233');
INSERT INTO `t_role` VALUES (235, 'role234');
INSERT INTO `t_role` VALUES (236, 'role0');
INSERT INTO `t_role` VALUES (237, 'role1');
INSERT INTO `t_role` VALUES (238, 'role2');
INSERT INTO `t_role` VALUES (239, 'role3');
INSERT INTO `t_role` VALUES (240, 'role4');
INSERT INTO `t_role` VALUES (241, 'role5');
INSERT INTO `t_role` VALUES (242, 'role6');
INSERT INTO `t_role` VALUES (243, 'role7');
INSERT INTO `t_role` VALUES (244, 'role8');
INSERT INTO `t_role` VALUES (245, 'role9');
INSERT INTO `t_role` VALUES (246, 'role10');
INSERT INTO `t_role` VALUES (247, 'role11');
INSERT INTO `t_role` VALUES (248, 'role12');
INSERT INTO `t_role` VALUES (249, 'role13');
INSERT INTO `t_role` VALUES (250, 'role14');
INSERT INTO `t_role` VALUES (251, 'role15');
INSERT INTO `t_role` VALUES (252, 'role16');
INSERT INTO `t_role` VALUES (253, 'role17');
INSERT INTO `t_role` VALUES (254, 'role18');
INSERT INTO `t_role` VALUES (255, 'role19');
INSERT INTO `t_role` VALUES (256, 'role20');
INSERT INTO `t_role` VALUES (257, 'role21');
INSERT INTO `t_role` VALUES (258, 'role22');
INSERT INTO `t_role` VALUES (259, 'role23');
INSERT INTO `t_role` VALUES (260, 'role24');
INSERT INTO `t_role` VALUES (261, 'role25');
INSERT INTO `t_role` VALUES (262, 'role26');
INSERT INTO `t_role` VALUES (263, 'role27');
INSERT INTO `t_role` VALUES (264, 'role28');
INSERT INTO `t_role` VALUES (265, 'role29');
INSERT INTO `t_role` VALUES (266, 'role30');
INSERT INTO `t_role` VALUES (267, 'role31');
INSERT INTO `t_role` VALUES (268, 'role32');
INSERT INTO `t_role` VALUES (269, 'role33');
INSERT INTO `t_role` VALUES (270, 'role34');
INSERT INTO `t_role` VALUES (271, 'role35');
INSERT INTO `t_role` VALUES (272, 'role36');
INSERT INTO `t_role` VALUES (273, 'role37');
INSERT INTO `t_role` VALUES (274, 'role38');
INSERT INTO `t_role` VALUES (275, 'role39');
INSERT INTO `t_role` VALUES (276, 'role40');
INSERT INTO `t_role` VALUES (277, 'role41');
INSERT INTO `t_role` VALUES (278, 'role42');
INSERT INTO `t_role` VALUES (279, 'role43');
INSERT INTO `t_role` VALUES (280, 'role44');
INSERT INTO `t_role` VALUES (281, 'role45');
INSERT INTO `t_role` VALUES (282, 'role46');
INSERT INTO `t_role` VALUES (283, 'role47');
INSERT INTO `t_role` VALUES (284, 'role48');
INSERT INTO `t_role` VALUES (285, 'role49');
INSERT INTO `t_role` VALUES (286, 'role50');
INSERT INTO `t_role` VALUES (287, 'role51');
INSERT INTO `t_role` VALUES (288, 'role52');
INSERT INTO `t_role` VALUES (289, 'role53');
INSERT INTO `t_role` VALUES (290, 'role54');
INSERT INTO `t_role` VALUES (291, 'role55');
INSERT INTO `t_role` VALUES (292, 'role56');
INSERT INTO `t_role` VALUES (293, 'role57');
INSERT INTO `t_role` VALUES (294, 'role58');
INSERT INTO `t_role` VALUES (295, 'role59');
INSERT INTO `t_role` VALUES (296, 'role60');
INSERT INTO `t_role` VALUES (297, 'role61');
INSERT INTO `t_role` VALUES (298, 'role62');
INSERT INTO `t_role` VALUES (299, 'role63');
INSERT INTO `t_role` VALUES (300, 'role64');
INSERT INTO `t_role` VALUES (301, 'role65');
INSERT INTO `t_role` VALUES (302, 'role66');
INSERT INTO `t_role` VALUES (303, 'role67');
INSERT INTO `t_role` VALUES (304, 'role68');
INSERT INTO `t_role` VALUES (305, 'role69');
INSERT INTO `t_role` VALUES (306, 'role70');
INSERT INTO `t_role` VALUES (307, 'role71');
INSERT INTO `t_role` VALUES (308, 'role72');
INSERT INTO `t_role` VALUES (309, 'role73');
INSERT INTO `t_role` VALUES (310, 'role74');
INSERT INTO `t_role` VALUES (311, 'role75');
INSERT INTO `t_role` VALUES (312, 'role76');
INSERT INTO `t_role` VALUES (313, 'role77');
INSERT INTO `t_role` VALUES (314, 'role78');
INSERT INTO `t_role` VALUES (315, 'role79');
INSERT INTO `t_role` VALUES (316, 'role80');
INSERT INTO `t_role` VALUES (317, 'role81');
INSERT INTO `t_role` VALUES (318, 'role82');
INSERT INTO `t_role` VALUES (319, 'role83');
INSERT INTO `t_role` VALUES (320, 'role84');
INSERT INTO `t_role` VALUES (321, 'role85');
INSERT INTO `t_role` VALUES (322, 'role86');
INSERT INTO `t_role` VALUES (323, 'role87');
INSERT INTO `t_role` VALUES (324, 'role88');
INSERT INTO `t_role` VALUES (325, 'role89');
INSERT INTO `t_role` VALUES (326, 'role90');
INSERT INTO `t_role` VALUES (327, 'role91');
INSERT INTO `t_role` VALUES (328, 'role92');
INSERT INTO `t_role` VALUES (329, 'role93');
INSERT INTO `t_role` VALUES (330, 'role94');
INSERT INTO `t_role` VALUES (331, 'role95');
INSERT INTO `t_role` VALUES (332, 'role96');
INSERT INTO `t_role` VALUES (333, 'role97');
INSERT INTO `t_role` VALUES (334, 'role98');
INSERT INTO `t_role` VALUES (335, 'role99');
INSERT INTO `t_role` VALUES (336, 'role100');
INSERT INTO `t_role` VALUES (337, 'role101');
INSERT INTO `t_role` VALUES (338, 'role102');
INSERT INTO `t_role` VALUES (339, 'role103');
INSERT INTO `t_role` VALUES (340, 'role104');
INSERT INTO `t_role` VALUES (341, 'role105');
INSERT INTO `t_role` VALUES (342, 'role106');
INSERT INTO `t_role` VALUES (343, 'role107');
INSERT INTO `t_role` VALUES (344, 'role108');
INSERT INTO `t_role` VALUES (345, 'role109');
INSERT INTO `t_role` VALUES (346, 'role110');
INSERT INTO `t_role` VALUES (347, 'role111');
INSERT INTO `t_role` VALUES (348, 'role112');
INSERT INTO `t_role` VALUES (349, 'role113');
INSERT INTO `t_role` VALUES (350, 'role114');
INSERT INTO `t_role` VALUES (351, 'role115');
INSERT INTO `t_role` VALUES (352, 'role116');
INSERT INTO `t_role` VALUES (353, 'role117');
INSERT INTO `t_role` VALUES (354, 'role118');
INSERT INTO `t_role` VALUES (355, 'role119');
INSERT INTO `t_role` VALUES (356, 'role120');
INSERT INTO `t_role` VALUES (357, 'role121');
INSERT INTO `t_role` VALUES (358, 'role122');
INSERT INTO `t_role` VALUES (359, 'role123');
INSERT INTO `t_role` VALUES (360, 'role124');
INSERT INTO `t_role` VALUES (361, 'role125');
INSERT INTO `t_role` VALUES (362, 'role126');
INSERT INTO `t_role` VALUES (363, 'role127');
INSERT INTO `t_role` VALUES (364, 'role128');
INSERT INTO `t_role` VALUES (365, 'role129');
INSERT INTO `t_role` VALUES (366, 'role130');
INSERT INTO `t_role` VALUES (367, 'role131');
INSERT INTO `t_role` VALUES (368, 'role132');
INSERT INTO `t_role` VALUES (369, 'role133');
INSERT INTO `t_role` VALUES (370, 'role134');
INSERT INTO `t_role` VALUES (371, 'role135');
INSERT INTO `t_role` VALUES (372, 'role136');
INSERT INTO `t_role` VALUES (373, 'role137');
INSERT INTO `t_role` VALUES (374, 'role138');
INSERT INTO `t_role` VALUES (375, 'role139');
INSERT INTO `t_role` VALUES (376, 'role140');
INSERT INTO `t_role` VALUES (377, 'role141');
INSERT INTO `t_role` VALUES (378, 'role142');
INSERT INTO `t_role` VALUES (379, 'role143');
INSERT INTO `t_role` VALUES (380, 'role144');
INSERT INTO `t_role` VALUES (381, 'role145');
INSERT INTO `t_role` VALUES (382, 'role146');
INSERT INTO `t_role` VALUES (383, 'role147');
INSERT INTO `t_role` VALUES (384, 'role148');
INSERT INTO `t_role` VALUES (385, 'role149');
INSERT INTO `t_role` VALUES (386, 'role150');
INSERT INTO `t_role` VALUES (387, 'role151');
INSERT INTO `t_role` VALUES (388, 'role152');
INSERT INTO `t_role` VALUES (389, 'role153');
INSERT INTO `t_role` VALUES (390, 'role154');
INSERT INTO `t_role` VALUES (391, 'role155');
INSERT INTO `t_role` VALUES (392, 'role156');
INSERT INTO `t_role` VALUES (393, 'role157');
INSERT INTO `t_role` VALUES (394, 'role158');
INSERT INTO `t_role` VALUES (395, 'role159');
INSERT INTO `t_role` VALUES (396, 'role160');
INSERT INTO `t_role` VALUES (397, 'role161');
INSERT INTO `t_role` VALUES (398, 'role162');
INSERT INTO `t_role` VALUES (399, 'role163');
INSERT INTO `t_role` VALUES (400, 'role164');
INSERT INTO `t_role` VALUES (401, 'role165');
INSERT INTO `t_role` VALUES (402, 'role166');
INSERT INTO `t_role` VALUES (403, 'role167');
INSERT INTO `t_role` VALUES (404, 'role168');
INSERT INTO `t_role` VALUES (405, 'role169');
INSERT INTO `t_role` VALUES (406, 'role170');
INSERT INTO `t_role` VALUES (407, 'role171');
INSERT INTO `t_role` VALUES (408, 'role172');
INSERT INTO `t_role` VALUES (409, 'role173');
INSERT INTO `t_role` VALUES (410, 'role174');
INSERT INTO `t_role` VALUES (411, 'role175');
INSERT INTO `t_role` VALUES (412, 'role176');
INSERT INTO `t_role` VALUES (413, 'role177');
INSERT INTO `t_role` VALUES (414, 'role178');
INSERT INTO `t_role` VALUES (415, 'role179');
INSERT INTO `t_role` VALUES (416, 'role180');
INSERT INTO `t_role` VALUES (417, 'role181');
INSERT INTO `t_role` VALUES (418, 'role182');
INSERT INTO `t_role` VALUES (419, 'role183');
INSERT INTO `t_role` VALUES (420, 'role184');
INSERT INTO `t_role` VALUES (421, 'role185');
INSERT INTO `t_role` VALUES (422, 'role186');
INSERT INTO `t_role` VALUES (423, 'role187');
INSERT INTO `t_role` VALUES (424, 'role188');
INSERT INTO `t_role` VALUES (425, 'role189');
INSERT INTO `t_role` VALUES (426, 'role190');
INSERT INTO `t_role` VALUES (427, 'role191');
INSERT INTO `t_role` VALUES (428, 'role192');
INSERT INTO `t_role` VALUES (429, 'role193');
INSERT INTO `t_role` VALUES (430, 'role194');
INSERT INTO `t_role` VALUES (431, 'role195');
INSERT INTO `t_role` VALUES (432, 'role196');
INSERT INTO `t_role` VALUES (433, 'role197');
INSERT INTO `t_role` VALUES (434, 'role198');
INSERT INTO `t_role` VALUES (435, 'role199');
INSERT INTO `t_role` VALUES (436, 'role200');
INSERT INTO `t_role` VALUES (437, 'role201');
INSERT INTO `t_role` VALUES (438, 'role202');
INSERT INTO `t_role` VALUES (439, 'role203');
INSERT INTO `t_role` VALUES (440, 'role204');
INSERT INTO `t_role` VALUES (441, 'role205');
INSERT INTO `t_role` VALUES (442, 'role206');
INSERT INTO `t_role` VALUES (443, 'role207');
INSERT INTO `t_role` VALUES (444, 'role208');
INSERT INTO `t_role` VALUES (445, 'role209');
INSERT INTO `t_role` VALUES (446, 'role210');
INSERT INTO `t_role` VALUES (447, 'role211');
INSERT INTO `t_role` VALUES (448, 'role212');
INSERT INTO `t_role` VALUES (449, 'role213');
INSERT INTO `t_role` VALUES (450, 'role214');
INSERT INTO `t_role` VALUES (451, 'role215');
INSERT INTO `t_role` VALUES (452, 'role216');
INSERT INTO `t_role` VALUES (453, 'role217');
INSERT INTO `t_role` VALUES (454, 'role218');
INSERT INTO `t_role` VALUES (455, 'role219');
INSERT INTO `t_role` VALUES (456, 'role220');
INSERT INTO `t_role` VALUES (457, 'role221');
INSERT INTO `t_role` VALUES (458, 'role222');
INSERT INTO `t_role` VALUES (459, 'role223');
INSERT INTO `t_role` VALUES (460, 'role224');
INSERT INTO `t_role` VALUES (461, 'role225');
INSERT INTO `t_role` VALUES (462, 'role226');
INSERT INTO `t_role` VALUES (463, 'role227');
INSERT INTO `t_role` VALUES (464, 'role228');
INSERT INTO `t_role` VALUES (465, 'role229');
INSERT INTO `t_role` VALUES (466, 'role230');
INSERT INTO `t_role` VALUES (467, 'role231');
INSERT INTO `t_role` VALUES (468, 'role232');
INSERT INTO `t_role` VALUES (469, 'role233');
INSERT INTO `t_role` VALUES (470, 'role234');
INSERT INTO `t_role` VALUES (471, 'AAA');

SET FOREIGN_KEY_CHECKS = 1;
