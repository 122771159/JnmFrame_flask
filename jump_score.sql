/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40)
 Source Host           : localhost:3306
 Source Schema         : jump_score

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40)
 File Encoding         : 65001

 Date: 20/07/2024 23:19:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jnm_hshow
-- ----------------------------
DROP TABLE IF EXISTS `jnm_hshow`;
CREATE TABLE `jnm_hshow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_venue` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_hshow
-- ----------------------------

-- ----------------------------
-- Table structure for jnm_hshow_gd
-- ----------------------------
DROP TABLE IF EXISTS `jnm_hshow_gd`;
CREATE TABLE `jnm_hshow_gd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_venue` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_hshow_gd
-- ----------------------------

-- ----------------------------
-- Table structure for jnm_hshow_jy
-- ----------------------------
DROP TABLE IF EXISTS `jnm_hshow_jy`;
CREATE TABLE `jnm_hshow_jy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_venue` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_hshow_jy
-- ----------------------------
INSERT INTO `jnm_hshow_jy` VALUES (144, 39);

-- ----------------------------
-- Table structure for jnm_hshow_jy_by
-- ----------------------------
DROP TABLE IF EXISTS `jnm_hshow_jy_by`;
CREATE TABLE `jnm_hshow_jy_by`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_venue` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_hshow_jy_by
-- ----------------------------

-- ----------------------------
-- Table structure for jnm_hshow_sd
-- ----------------------------
DROP TABLE IF EXISTS `jnm_hshow_sd`;
CREATE TABLE `jnm_hshow_sd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_venue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_hshow_sd
-- ----------------------------
INSERT INTO `jnm_hshow_sd` VALUES (165, '79');
INSERT INTO `jnm_hshow_sd` VALUES (172, '80');
INSERT INTO `jnm_hshow_sd` VALUES (173, '81');
INSERT INTO `jnm_hshow_sd` VALUES (174, '82');
INSERT INTO `jnm_hshow_sd` VALUES (175, '83');
INSERT INTO `jnm_hshow_sd` VALUES (176, '84');
INSERT INTO `jnm_hshow_sd` VALUES (177, '85');
INSERT INTO `jnm_hshow_sd` VALUES (178, '86');
INSERT INTO `jnm_hshow_sd` VALUES (179, '87');
INSERT INTO `jnm_hshow_sd` VALUES (180, '88');
INSERT INTO `jnm_hshow_sd` VALUES (181, '89');
INSERT INTO `jnm_hshow_sd` VALUES (182, '90');
INSERT INTO `jnm_hshow_sd` VALUES (183, '91');
INSERT INTO `jnm_hshow_sd` VALUES (184, '92');
INSERT INTO `jnm_hshow_sd` VALUES (185, '93');
INSERT INTO `jnm_hshow_sd` VALUES (186, '94');
INSERT INTO `jnm_hshow_sd` VALUES (187, '95');
INSERT INTO `jnm_hshow_sd` VALUES (188, '139');
INSERT INTO `jnm_hshow_sd` VALUES (189, '140');
INSERT INTO `jnm_hshow_sd` VALUES (190, '141');
INSERT INTO `jnm_hshow_sd` VALUES (191, '142');
INSERT INTO `jnm_hshow_sd` VALUES (192, '143');
INSERT INTO `jnm_hshow_sd` VALUES (193, '144');
INSERT INTO `jnm_hshow_sd` VALUES (194, '145');
INSERT INTO `jnm_hshow_sd` VALUES (195, '146');
INSERT INTO `jnm_hshow_sd` VALUES (196, '147');
INSERT INTO `jnm_hshow_sd` VALUES (197, '148');
INSERT INTO `jnm_hshow_sd` VALUES (202, '149');
INSERT INTO `jnm_hshow_sd` VALUES (203, '170');
INSERT INTO `jnm_hshow_sd` VALUES (208, '171');
INSERT INTO `jnm_hshow_sd` VALUES (209, '172');
INSERT INTO `jnm_hshow_sd` VALUES (210, '173');
INSERT INTO `jnm_hshow_sd` VALUES (211, '174');
INSERT INTO `jnm_hshow_sd` VALUES (212, '175');
INSERT INTO `jnm_hshow_sd` VALUES (213, '176');
INSERT INTO `jnm_hshow_sd` VALUES (214, '177');
INSERT INTO `jnm_hshow_sd` VALUES (216, '178');

-- ----------------------------
-- Table structure for jnm_info
-- ----------------------------
DROP TABLE IF EXISTS `jnm_info`;
CREATE TABLE `jnm_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_info
-- ----------------------------
INSERT INTO `jnm_info` VALUES (1, 'show_bac', 'no');
INSERT INTO `jnm_info` VALUES (2, 'now_project_type', 'sd');

-- ----------------------------
-- Table structure for jnm_judge_type
-- ----------------------------
DROP TABLE IF EXISTS `jnm_judge_type`;
CREATE TABLE `jnm_judge_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `judge_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identifier` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_judge_type
-- ----------------------------
INSERT INTO `jnm_judge_type` VALUES (1, '难度裁判1', 'nd1');
INSERT INTO `jnm_judge_type` VALUES (5, '难度裁判2', 'nd2');
INSERT INTO `jnm_judge_type` VALUES (7, '难度裁判3', 'nd3');
INSERT INTO `jnm_judge_type` VALUES (8, '主裁判', 'z');
INSERT INTO `jnm_judge_type` VALUES (9, '完成裁判1', 'wc1');
INSERT INTO `jnm_judge_type` VALUES (10, '完成裁判2', 'wc2');
INSERT INTO `jnm_judge_type` VALUES (11, '完成裁判3', 'wc3');
INSERT INTO `jnm_judge_type` VALUES (12, '创编裁判1', 'cb1');
INSERT INTO `jnm_judge_type` VALUES (13, '创编裁判2', 'cb2');
INSERT INTO `jnm_judge_type` VALUES (14, '创编裁判3', 'cb3');
INSERT INTO `jnm_judge_type` VALUES (15, '规定元素裁判1', 'gd1');
INSERT INTO `jnm_judge_type` VALUES (16, '规定元素裁判2', 'gd2');
INSERT INTO `jnm_judge_type` VALUES (17, '规定元素裁判3', 'gd3');
INSERT INTO `jnm_judge_type` VALUES (18, '速度裁判', 'sd1');
INSERT INTO `jnm_judge_type` VALUES (19, '速度裁判2', 'sd2');
INSERT INTO `jnm_judge_type` VALUES (20, '速度裁判3', 'sd3');
INSERT INTO `jnm_judge_type` VALUES (21, '难度裁判1-jy', 'jynd1');
INSERT INTO `jnm_judge_type` VALUES (22, '难度裁判2-jy', 'jynd2');
INSERT INTO `jnm_judge_type` VALUES (23, '难度裁判3-jy', 'jynd3');
INSERT INTO `jnm_judge_type` VALUES (24, '规定元素1-jy', 'jygd1');
INSERT INTO `jnm_judge_type` VALUES (25, '规定元素2-jy', 'jygd2');
INSERT INTO `jnm_judge_type` VALUES (26, '规定元素3-jy', 'jygd3');
INSERT INTO `jnm_judge_type` VALUES (27, 'PA1', 'PA1');
INSERT INTO `jnm_judge_type` VALUES (28, 'PA2', 'PA2');
INSERT INTO `jnm_judge_type` VALUES (29, 'PA3', 'PA3');
INSERT INTO `jnm_judge_type` VALUES (30, 'PRE1', 'PRE1');
INSERT INTO `jnm_judge_type` VALUES (31, 'PRE2', 'PRE2');
INSERT INTO `jnm_judge_type` VALUES (32, 'PRE3', 'PRE3');
INSERT INTO `jnm_judge_type` VALUES (33, 'PRM1', 'PRM1');
INSERT INTO `jnm_judge_type` VALUES (34, 'PRM2', 'PRM2');
INSERT INTO `jnm_judge_type` VALUES (35, 'PRM3', 'PRM3');
INSERT INTO `jnm_judge_type` VALUES (36, 'PRS1', 'PRS1');
INSERT INTO `jnm_judge_type` VALUES (37, 'PRS2', 'PRS2');
INSERT INTO `jnm_judge_type` VALUES (38, 'PRS3', 'PRS3');
INSERT INTO `jnm_judge_type` VALUES (39, 'z-jy', 'z-jy');

-- ----------------------------
-- Table structure for jnm_perm
-- ----------------------------
DROP TABLE IF EXISTS `jnm_perm`;
CREATE TABLE `jnm_perm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_perm
-- ----------------------------
INSERT INTO `jnm_perm` VALUES (1, 'sys:user:add', '[\"/user/add\"]', '新增用户');
INSERT INTO `jnm_perm` VALUES (2, 'sys:user:role', '[\"/role/roles\",\"/role/perms\",\"/role/perms_id\",\"/role/delete_add_perms\",\"/role/delete_add_urls\",\"/role/urls\"]', '权限控制');
INSERT INTO `jnm_perm` VALUES (3, 'sys:user:manage', '[\"/user/users\",\"/user/get_user\",\"/user/add_user\",\"/user/delete_user\"]', '用户管理');
INSERT INTO `jnm_perm` VALUES (6, 'sys:project:admin', '[\"/venues/get_venue\",\"/venues/edit_venue\",\"/venues/delete_venue\",\"/venues/get_sports\",\"/venues/add_venue\",\"/venues/add_sports\"]', '项目管理员');
INSERT INTO `jnm_perm` VALUES (7, 'sys:project:judge', '[\"/venues/get_judge\",\"/venues/change_add_judge\",\"/venues/get_judges\",\"/venues/get_judge_types\",\"/venues/get_sport\",\"/venues/get_sports\",\"/venues/save_score\",\"/venues/save_score_sd\"]', '裁判');
INSERT INTO `jnm_perm` VALUES (9, '修改这里', '[]', '修改这里');

-- ----------------------------
-- Table structure for jnm_project_type
-- ----------------------------
DROP TABLE IF EXISTS `jnm_project_type`;
CREATE TABLE `jnm_project_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_project_type
-- ----------------------------
INSERT INTO `jnm_project_type` VALUES (4, '速度赛', 'sd1');
INSERT INTO `jnm_project_type` VALUES (8, '花样赛', 'z,nd1,nd2,nd3,wc1,wc2,wc3,cb1,cb2,cb3,gd1,gd2,gd3');
INSERT INTO `jnm_project_type` VALUES (9, '大型表演赛', 'jynd1,jynd2,jygd1,jygd2,PA1,PA2,PRE1,PRE2,PRM1,PRM2,PRS1,PRS2,z-jy');
INSERT INTO `jnm_project_type` VALUES (10, '规定赛', 'z,wc1,wc2,wc3,cb1,cb2,cb3');
INSERT INTO `jnm_project_type` VALUES (11, '亲子赛', 'sd1');
INSERT INTO `jnm_project_type` VALUES (12, '国际花样赛', 'jynd1,jynd2,jynd3,jygd1,jygd2,jygd3,PA1,PA2,PA3,PRE1,PRE2,PRE3,PRM1,PRM2,PRM3,z-jy');

-- ----------------------------
-- Table structure for jnm_projects
-- ----------------------------
DROP TABLE IF EXISTS `jnm_projects`;
CREATE TABLE `jnm_projects`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `project_type_id` int(10) NULL DEFAULT NULL,
  `delete_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `time_id` int(11) NULL DEFAULT NULL,
  `is_hidden` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_id`(`project_type_id`) USING BTREE,
  CONSTRAINT `jnm_projects_ibfk_1` FOREIGN KEY (`project_type_id`) REFERENCES `jnm_project_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 442 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_projects
-- ----------------------------
INSERT INTO `jnm_projects` VALUES (368, '大型表演赛', 0, 9, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 233, 0);
INSERT INTO `jnm_projects` VALUES (369, '个人花样集体规定套路  初级', 0, 10, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 234, 0);
INSERT INTO `jnm_projects` VALUES (370, '个人花样集体规定套路中级', 0, 10, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 234, 0);
INSERT INTO `jnm_projects` VALUES (371, '个人花样集体规定套路高级', 0, 10, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 234, 0);
INSERT INTO `jnm_projects` VALUES (372, '30秒单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 235, 0);
INSERT INTO `jnm_projects` VALUES (373, '30秒单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 236, 0);
INSERT INTO `jnm_projects` VALUES (374, '30秒双摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 237, 0);
INSERT INTO `jnm_projects` VALUES (375, '30秒双摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 238, 0);
INSERT INTO `jnm_projects` VALUES (376, '30秒双摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 239, 0);
INSERT INTO `jnm_projects` VALUES (377, '个人花样男子组', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 240, 0);
INSERT INTO `jnm_projects` VALUES (378, '个人花样男子组', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 241, 0);
INSERT INTO `jnm_projects` VALUES (379, '30秒间隔交叉单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 242, 0);
INSERT INTO `jnm_projects` VALUES (380, '30秒间隔交叉单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 243, 0);
INSERT INTO `jnm_projects` VALUES (381, '2×30秒双摇接力', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 244, 0);
INSERT INTO `jnm_projects` VALUES (382, '2×30秒双摇接力', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 245, 0);
INSERT INTO `jnm_projects` VALUES (383, '30 秒一带一单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 246, 0);
INSERT INTO `jnm_projects` VALUES (384, '30 秒一带一单摇跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 247, 0);
INSERT INTO `jnm_projects` VALUES (385, '两人同步花样', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 248, 0);
INSERT INTO `jnm_projects` VALUES (386, '两人车轮花样', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 249, 0);
INSERT INTO `jnm_projects` VALUES (387, '三人交互花样', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 250, 0);
INSERT INTO `jnm_projects` VALUES (388, '4×30秒单摇接力', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 251, 0);
INSERT INTO `jnm_projects` VALUES (389, '4×30秒交互绳接力', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 251, 0);
INSERT INTO `jnm_projects` VALUES (390, '60秒交互绳速度赛', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 252, 0);
INSERT INTO `jnm_projects` VALUES (391, '个人花样女子组', 0, 12, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 253, 0);
INSERT INTO `jnm_projects` VALUES (392, '1分钟10人长绳集体跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 254, 0);
INSERT INTO `jnm_projects` VALUES (393, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 255, 0);
INSERT INTO `jnm_projects` VALUES (394, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 256, 0);
INSERT INTO `jnm_projects` VALUES (395, '3分钟10人长绳“8”字跳', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 257, 0);
INSERT INTO `jnm_projects` VALUES (396, '3分钟单摇跳女子组', 0, 4, NULL, '2024-07-10 20:00:08', '2024-07-10 20:00:08', 258, 0);
INSERT INTO `jnm_projects` VALUES (397, '两人同步花样', 0, 12, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 259, 0);
INSERT INTO `jnm_projects` VALUES (398, '两人车轮花样', 0, 12, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 260, 0);
INSERT INTO `jnm_projects` VALUES (399, '三人交互花样', 0, 12, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 261, 0);
INSERT INTO `jnm_projects` VALUES (400, '4×30秒单摇接力', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 262, 0);
INSERT INTO `jnm_projects` VALUES (401, '4×30秒交互绳接力', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 262, 0);
INSERT INTO `jnm_projects` VALUES (402, '60秒交互绳速度赛', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 263, 0);
INSERT INTO `jnm_projects` VALUES (403, '个人花样女子组', 0, 12, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 264, 0);
INSERT INTO `jnm_projects` VALUES (404, '1分钟10人长绳集体跳', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 265, 0);
INSERT INTO `jnm_projects` VALUES (405, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 266, 0);
INSERT INTO `jnm_projects` VALUES (406, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 267, 0);
INSERT INTO `jnm_projects` VALUES (407, '3分钟10人长绳“8”字跳', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 268, 0);
INSERT INTO `jnm_projects` VALUES (408, '3分钟单摇跳女子组', 0, 4, NULL, '2024-07-12 17:37:35', '2024-07-12 17:37:35', 269, 0);
INSERT INTO `jnm_projects` VALUES (409, '两人同步花样', 0, 12, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 270, 0);
INSERT INTO `jnm_projects` VALUES (410, '两人车轮花样', 0, 12, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 271, 0);
INSERT INTO `jnm_projects` VALUES (411, '三人交互花样', 0, 12, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 272, 0);
INSERT INTO `jnm_projects` VALUES (412, '4×30秒单摇接力', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 273, 0);
INSERT INTO `jnm_projects` VALUES (413, '4×30秒交互绳接力', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 273, 0);
INSERT INTO `jnm_projects` VALUES (414, '60秒交互绳速度赛', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 274, 0);
INSERT INTO `jnm_projects` VALUES (415, '个人花样女子组', 0, 12, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 275, 0);
INSERT INTO `jnm_projects` VALUES (416, '1分钟10人长绳集体跳', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 276, 0);
INSERT INTO `jnm_projects` VALUES (417, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 277, 0);
INSERT INTO `jnm_projects` VALUES (418, '3分钟10人长绳“8”字跳', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 278, 0);
INSERT INTO `jnm_projects` VALUES (419, '3分钟单摇跳女子组', 0, 4, NULL, '2024-07-12 17:40:26', '2024-07-12 17:40:26', 279, 0);
INSERT INTO `jnm_projects` VALUES (420, '两人同步花样', 0, 12, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 280, 0);
INSERT INTO `jnm_projects` VALUES (421, '两人车轮花样', 0, 12, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 281, 0);
INSERT INTO `jnm_projects` VALUES (422, '三人交互花样', 0, 12, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 282, 0);
INSERT INTO `jnm_projects` VALUES (423, '4×30秒单摇接力', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 283, 0);
INSERT INTO `jnm_projects` VALUES (424, '4×30秒交互绳接力', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 283, 0);
INSERT INTO `jnm_projects` VALUES (425, '60秒交互绳速度赛', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 284, 0);
INSERT INTO `jnm_projects` VALUES (426, '个人花样女子组', 0, 12, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 285, 0);
INSERT INTO `jnm_projects` VALUES (427, '1分钟10人长绳集体跳', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 286, 0);
INSERT INTO `jnm_projects` VALUES (428, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 287, 0);
INSERT INTO `jnm_projects` VALUES (429, '3分钟10人长绳“8”字跳', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 288, 0);
INSERT INTO `jnm_projects` VALUES (430, '3分钟单摇跳女子组', 0, 4, NULL, '2024-07-12 17:45:11', '2024-07-12 17:45:11', 289, 0);
INSERT INTO `jnm_projects` VALUES (431, '两人同步花样', 0, 12, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 290, 0);
INSERT INTO `jnm_projects` VALUES (432, '两人车轮花样', 0, 12, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 291, 0);
INSERT INTO `jnm_projects` VALUES (433, '三人交互花样', 0, 12, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 292, 0);
INSERT INTO `jnm_projects` VALUES (434, '4×30秒单摇接力', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 293, 0);
INSERT INTO `jnm_projects` VALUES (435, '4×30秒交互绳接力', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 293, 0);
INSERT INTO `jnm_projects` VALUES (436, '60秒交互绳速度赛', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 294, 0);
INSERT INTO `jnm_projects` VALUES (437, '个人花样女子组', 0, 12, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 295, 0);
INSERT INTO `jnm_projects` VALUES (438, '1分钟10人长绳集体跳', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 296, 0);
INSERT INTO `jnm_projects` VALUES (439, '3分钟单摇跳男子组', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 297, 0);
INSERT INTO `jnm_projects` VALUES (440, '3分钟10人长绳“8”字跳', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 298, 0);
INSERT INTO `jnm_projects` VALUES (441, '3分钟单摇跳女子组', 0, 4, NULL, '2024-07-13 11:04:26', '2024-07-13 11:04:26', 299, 0);

-- ----------------------------
-- Table structure for jnm_role
-- ----------------------------
DROP TABLE IF EXISTS `jnm_role`;
CREATE TABLE `jnm_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_role
-- ----------------------------
INSERT INTO `jnm_role` VALUES (7, '裁判');
INSERT INTO `jnm_role` VALUES (8, '管理员');

-- ----------------------------
-- Table structure for jnm_role_perm
-- ----------------------------
DROP TABLE IF EXISTS `jnm_role_perm`;
CREATE TABLE `jnm_role_perm`  (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`, `perm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_role_perm
-- ----------------------------
INSERT INTO `jnm_role_perm` VALUES (7, 1);
INSERT INTO `jnm_role_perm` VALUES (7, 3);
INSERT INTO `jnm_role_perm` VALUES (8, 1);
INSERT INTO `jnm_role_perm` VALUES (8, 2);
INSERT INTO `jnm_role_perm` VALUES (8, 3);
INSERT INTO `jnm_role_perm` VALUES (8, 6);
INSERT INTO `jnm_role_perm` VALUES (8, 7);

-- ----------------------------
-- Table structure for jnm_role_url
-- ----------------------------
DROP TABLE IF EXISTS `jnm_role_url`;
CREATE TABLE `jnm_role_url`  (
  `role_id` int(11) UNSIGNED NOT NULL COMMENT '角色ID',
  `url_id` int(11) UNSIGNED NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`role_id`, `url_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-权限关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_role_url
-- ----------------------------
INSERT INTO `jnm_role_url` VALUES (7, 1);
INSERT INTO `jnm_role_url` VALUES (7, 2);
INSERT INTO `jnm_role_url` VALUES (7, 27);
INSERT INTO `jnm_role_url` VALUES (7, 30);
INSERT INTO `jnm_role_url` VALUES (7, 31);
INSERT INTO `jnm_role_url` VALUES (7, 32);
INSERT INTO `jnm_role_url` VALUES (7, 34);
INSERT INTO `jnm_role_url` VALUES (8, 1);
INSERT INTO `jnm_role_url` VALUES (8, 2);
INSERT INTO `jnm_role_url` VALUES (8, 23);
INSERT INTO `jnm_role_url` VALUES (8, 25);
INSERT INTO `jnm_role_url` VALUES (8, 27);
INSERT INTO `jnm_role_url` VALUES (8, 31);
INSERT INTO `jnm_role_url` VALUES (8, 32);
INSERT INTO `jnm_role_url` VALUES (8, 34);

-- ----------------------------
-- Table structure for jnm_score
-- ----------------------------
DROP TABLE IF EXISTS `jnm_score`;
CREATE TABLE `jnm_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adscore` decimal(10, 2) NULL DEFAULT NULL,
  `descore` decimal(10, 2) NULL DEFAULT NULL,
  `iden` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sports_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `venues_id` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_score
-- ----------------------------

-- ----------------------------
-- Table structure for jnm_sports
-- ----------------------------
DROP TABLE IF EXISTS `jnm_sports`;
CREATE TABLE `jnm_sports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `venues_id` int(11) NULL DEFAULT NULL,
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subscore` decimal(10, 2) NULL DEFAULT 0.00,
  `pre_venue` int(11) NULL DEFAULT NULL,
  `sport_type` int(11) NULL DEFAULT NULL,
  `venue_order` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15424 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_sports
-- ----------------------------
INSERT INTO `jnm_sports` VALUES (14100, '郭晨阳  覃继媚  金芮希  张  潇  甘容鑫  邹扬扬  符柳彬  李丽诗  白凌璇  梁厚德  桂红伟  王  毅  孙文锋  曹雪原  蒋俊杰  昝加宇', '不分组别', 1287, '上海市代表队', 0.00, 1, 9, NULL);
INSERT INTO `jnm_sports` VALUES (14101, '郭昌昊  生浩宇  张茂然  王继凯  郭念衡  钟雅婷  孙美绮  朱煜璇  朱雅琪  潘欣怡  王一涵  潘  政', '不分组别', 1287, '山东省代表队少年组二队', 0.00, 2, 9, NULL);
INSERT INTO `jnm_sports` VALUES (14102, '张炜鑫  毛  旋  黄  斌  陈其聪  何军武  郭本华  连浩东  曾华昆', '不分组别', 1287, '福建省代表队二队', 0.00, 3, 9, NULL);
INSERT INTO `jnm_sports` VALUES (14103, '梁德福  丁子诺  郭昌昊  白梓涵  徐玉玉  魏子贻  于佳诺  苗立华', '不分组别', 1288, '山东省代表队少年组二队', 0.00, 4, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14104, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗', '不分组别', 1288, '福建省代表队一队', 0.00, 5, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14105, '丁子诺  郭昌昊  张茂然  潘欣怡  徐玉玉  魏子贻  于佳诺  苗立华', '不分组别', 1289, '山东省代表队少年组二队', 0.00, 6, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14106, '张炜鑫  毛  旋  黄  斌  陈其聪  何军武  郭本华  连浩东  曾华昆', '不分组别', 1289, '福建省代表队二队', 0.00, 7, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14107, '倪思妍  江晓曦  曾善特  叶静怡  赖昱辰  胡大山  金裕凯   王东奎   谢壮壮', '不分组别', 1289, '浙江省代表队一队', 0.00, 8, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14108, '谢红艳  甘容鑫  符柳彬  廖俊杰  蒋俊杰  牛旭生  昝加宇  张 潇', '不分组别', 1290, '上海市代表队', 0.00, 9, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14109, '丁子诺  张茂然  朱雅琪  王一涵  魏子贻  于佳诺  苗立华  张嘉然', '不分组别', 1290, '山东省代表队少年组二队', 0.00, 10, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14110, '张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚   陈冰心', '不分组别', 1290, '福建省代表队一队', 0.00, 11, 10, NULL);
INSERT INTO `jnm_sports` VALUES (14111, '金永研', '男子组儿童组', 1291, '山东省代表队儿童组一队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14112, '魏子程', '男子组儿童组', 1292, '山东省代表队儿童组一队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14113, '金辰恺', '男子组儿童组', 1293, '上海市代表队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14114, '王嘉睿', '男子组儿童组', 1294, '上海市代表队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14115, '赖昱辰', '男子组儿童组', 1295, '浙江省代表队一队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14116, '胡大山', '男子组儿童组', 1296, '浙江省代表队一队', 0.00, 12, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14117, '张海腾', '男子组儿童组', 1291, '山东省代表队儿童组二队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14118, '董俊泽', '男子组儿童组', 1292, '山东省代表队儿童组二队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14119, '朱晟轩', '男子组儿童组', 1293, '浙江省代表队二队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14120, '徐乾晖', '男子组儿童组', 1294, '浙江省代表队二队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14121, '戚辰轩', '男子组儿童组', 1295, '安徽省代表队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14122, '张蔼烜', '男子组儿童组', 1296, '安徽省代表队', 0.00, 13, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14123, '陈智新', '男子组儿童组', 1291, '福建省代表队一队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14124, '陈陶然', '男子组儿童组', 1292, '福建省代表队一队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14125, '桂浩峻', '男子组儿童组', 1293, '江苏省代表队二队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14126, '李宸宇', '男子组儿童组', 1294, '江苏省代表队二队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14127, '王鑫鹏', '男子组儿童组', 1295, '江苏省代表队一队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14128, '周文韬', '男子组儿童组', 1296, '江苏省代表队一队', 0.00, 14, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14129, '梁德福', '男子组少年组', 1291, '山东省代表队少年组二队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14130, '王继凯', '男子组少年组', 1292, '山东省代表队少年组二队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14131, '舒澍校', '男子组少年组', 1293, '浙江省代表队二队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14132, '郭振铭', '男子组少年组', 1294, '山东省代表队少年组一队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14133, '林煜轩', '男子组少年组', 1295, '山东省代表队少年组一队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14134, '张世豪', '男子组少年组', 1296, '安徽省代表队', 0.00, 15, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14135, '陈裕涛', '男子组少年组', 1291, '福建省代表队二队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14136, '张炜鑫', '男子组少年组', 1292, '福建省代表队二队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14137, '陈昊宇', '男子组少年组', 1293, '江苏省代表队二队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14138, '赵一凡', '男子组少年组', 1294, '江苏省代表队二队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14139, '徐乐恒', '男子组少年组', 1295, '江苏省代表队一队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14140, '周凤啟', '男子组青年组', 1296, '山东省代表队青年组一队', 0.00, 16, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14141, '徐嘉诚', '男子组青年组', 1291, '山东省代表队青年组一队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14142, '张  潇', '男子组青年组', 1292, '上海市代表队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14143, '桂红伟', '男子组青年组', 1293, '上海市代表队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14144, '段中飞', '男子组青年组', 1294, '浙江省代表队一队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14145, '徐梓凌', '男子组青年组', 1295, '浙江省代表队二队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14146, '毛泽文', '男子组青年组', 1296, '浙江省代表队二队', 0.00, 17, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14147, '毛  旋', '男子组青年组', 1291, '福建省代表队二队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14148, '何军武', '男子组青年组', 1292, '福建省代表队二队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14149, '赵崎超', '男子组青年组', 1293, '山东省代表队青年组二队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14150, '鲁长琛', '男子组青年组', 1294, '山东省代表队青年组二队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14151, '刘泽瑞康', '男子组青年组', 1295, '江苏省代表队一队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14152, '陈松林', '男子组青年组', 1296, '江苏省代表队一队', 0.00, 18, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14153, '王东奎', '男子组中青年组', 1291, '浙江省代表队一队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14154, '于亚雄', '男子组中青年组', 1292, '山东省代表队中青年组一队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14155, '张耀辉', '男子组中青年组', 1293, '山东省代表队中青年组一队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14156, '赵皖龙', '男子组中青年组', 1294, '安徽省代表队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14157, '杨柳青', '男子组中青年组', 1295, '安徽省代表队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14158, '刘超龙', '男子组中青年组', 1296, '福建省代表队二队', 0.00, 19, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14159, '李  磊', '男子组中老年组', 1291, '山东省代表队中老年组一队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14160, '冯  锋', '男子组中老年组', 1292, '安徽省代表队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14161, '梁建锋', '男子组中老年组', 1293, '福建省代表队一队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14162, '林树森', '男子组中老年组', 1294, '福建省代表队一队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14163, '程泉方', '女子组儿童组', 1297, '山东省代表队儿童组一队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14164, '陈心烁', '女子组儿童组', 1298, '山东省代表队儿童组一队', 0.00, 20, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14165, '倪思妍', '女子组儿童组', 1299, '浙江省代表队一队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14166, '江晓曦', '女子组儿童组', 1300, '浙江省代表队一队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14167, '张雅茹', '女子组儿童组', 1301, '山东省代表队儿童组二队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14168, '潘欣冉', '女子组儿童组', 1302, '山东省代表队儿童组二队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14169, '施奕辰', '女子组儿童组', 1297, '浙江省代表队二队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14170, '朱佳妍', '女子组儿童组', 1298, '浙江省代表队二队', 0.00, 21, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14171, '甘依灵', '女子组儿童组', 1299, '安徽省代表队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14172, '陈冰心', '女子组儿童组', 1300, '福建省代表队一队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14173, '张汤艺', '女子组儿童组', 1301, '福建省代表队一队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14174, '桂小晶', '女子组儿童组', 1302, '江苏省代表队二队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14175, '王子阁', '女子组儿童组', 1297, '江苏省代表队二队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14176, '钟雅婷', '女子组少年组', 1298, '山东省代表队少年组二队', 0.00, 22, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14177, '魏子贻', '女子组少年组', 1299, '山东省代表队少年组二队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14178, '张楚颜', '女子组少年组', 1300, '山东省代表队少年组一队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14179, '付峻菁', '女子组少年组', 1301, '山东省代表队少年组一队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14180, '黄嘉欣', '女子组少年组', 1302, '安徽省代表队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14181, '沈安静', '女子组少年组', 1297, '江苏省代表队二队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14182, '沈安平', '女子组少年组', 1298, '江苏省代表队二队', 0.00, 23, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14183, '冯熙惠', '女子组青年组', 1299, '山东省代表队青年组一队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14184, '鲍春慧', '女子组青年组', 1300, '山东省代表队青年组一队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14185, '覃继媚', '女子组青年组', 1301, '上海市代表队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14186, '张  茜', '女子组青年组', 1302, '浙江省代表队二队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14187, '虞雅惠', '女子组青年组', 1297, '浙江省代表队二队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14188, '詹祈诗', '女子组青年组', 1298, '福建省代表队一队', 0.00, 24, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14189, '崔雪茹', '女子组青年组', 1299, '山东省代表队青年组二队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14190, '仵可辛', '女子组青年组', 1300, '山东省代表队青年组二队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14191, '庞贵荣', '女子组中青年组', 1301, '山东省代表队中青年组一队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14192, '窦夏倩', '女子组中青年组', 1302, '山东省代表队中青年组一队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14193, '贺冰冰', '女子组中青年组', 1297, '安徽省代表队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14194, '赵玉芝', '女子组中老年组', 1298, '安徽省代表队', 0.00, 25, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14195, '张恺清', '男子组儿童组', 1303, '山东省代表队儿童组一队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14196, '李武赫', '男子组儿童组', 1304, '山东省代表队儿童组一队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14197, '金辰恺', '男子组儿童组', 1305, '上海市代表队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14198, '王嘉睿', '男子组儿童组', 1306, '上海市代表队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14199, '赖昱辰', '男子组儿童组', 1307, '浙江省代表队一队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14200, '张珩德', '男子组儿童组', 1308, '山东省代表队儿童组二队', 0.00, 26, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14201, '李沐泽', '男子组儿童组', 1303, '山东省代表队儿童组二队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14202, '王诗凯', '男子组儿童组', 1304, '浙江省代表队二队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14203, '徐乾晖', '男子组儿童组', 1305, '浙江省代表队二队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14204, '戚辰轩', '男子组儿童组', 1306, '安徽省代表队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14205, '晏一帆', '男子组儿童组', 1307, '安徽省代表队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14206, '陈智新', '男子组儿童组', 1308, '福建省代表队一队', 0.00, 27, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14207, '陈陶然', '男子组儿童组', 1303, '福建省代表队一队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14208, '桂浩峻', '男子组儿童组', 1304, '江苏省代表队二队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14209, '李宸宇', '男子组儿童组', 1305, '江苏省代表队二队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14210, '梁德福', '男子组少年组', 1306, '山东省代表队少年组二队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14211, '生浩宇', '男子组少年组', 1307, '山东省代表队少年组二队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14212, '舒澍校', '男子组少年组', 1308, '浙江省代表队二队', 0.00, 28, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14213, '孙海峰', '男子组少年组', 1303, '山东省代表队少年组一队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14214, '郭振铭', '男子组少年组', 1304, '山东省代表队少年组一队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14215, '张世豪', '男子组少年组', 1305, '安徽省代表队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14216, '陈裕涛', '男子组少年组', 1306, '福建省代表队二队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14217, '张炜鑫', '男子组少年组', 1307, '福建省代表队二队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14218, '陈昊宇', '男子组少年组', 1308, '江苏省代表队二队', 0.00, 29, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14219, '赵一凡', '男子组少年组', 1303, '江苏省代表队二队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14220, '彭治皓', '男子组青年组', 1304, '山东省代表队青年组一队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14221, '徐嘉诚', '男子组青年组', 1305, '山东省代表队青年组一队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14222, '张  潇', '男子组青年组', 1306, '上海市代表队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14223, '梁厚德', '男子组青年组', 1307, '上海市代表队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14224, '徐梓凌', '男子组青年组', 1308, '浙江省代表队二队', 0.00, 30, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14225, '潘乾飚', '男子组青年组', 1309, '浙江省代表队二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14226, '陈其聪', '男子组青年组', 1310, '福建省代表队二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14227, '连浩东', '男子组青年组', 1311, '福建省代表队二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14228, '赵崎超', '男子组青年组', 1312, '山东省代表队青年组二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14229, '陈守印', '男子组青年组', 1313, '山东省代表队青年组二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14230, '胡  康', '男子组青年组', 1314, '江苏省代表队二队', 0.00, 31, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14231, '王东奎', '男子组中青年组', 1309, '浙江省代表队一队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14232, '于亚雄', '男子组中青年组', 1310, '山东省代表队中青年组一队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14233, '吴  迪', '男子组中青年组', 1311, '安徽省代表队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14234, '刘超龙', '男子组中青年组', 1312, '福建省代表队二队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14235, '刘文雄', '男子组中青年组', 1313, '福建省代表队二队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14236, '李  磊', '男子组中老年组', 1314, '山东省代表队中老年组一队', 0.00, 32, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14237, '梁建锋', '男子组中老年组', 1309, '福建省代表队一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14238, '林树森', '男子组中老年组', 1310, '福建省代表队一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14239, '李悦涵', '女子组儿童组', 1311, '山东省代表队儿童组一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14240, '胡笑颖', '女子组儿童组', 1312, '山东省代表队儿童组一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14241, '倪思妍', '女子组儿童组', 1313, '浙江省代表队一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14242, '江晓曦', '女子组儿童组', 1314, '浙江省代表队一队', 0.00, 33, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14243, '巩洛伊', '女子组儿童组', 1309, '山东省代表队儿童组二队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14244, '潘欣冉', '女子组儿童组', 1310, '山东省代表队儿童组二队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14245, '吴奕楠', '女子组儿童组', 1311, '浙江省代表队二队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14246, '朱佳妍', '女子组儿童组', 1312, '浙江省代表队二队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14247, '甘依灵', '女子组儿童组', 1313, '安徽省代表队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14248, '陈冰心', '女子组儿童组', 1314, '福建省代表队一队', 0.00, 34, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14249, '张汤艺', '女子组儿童组', 1309, '福建省代表队一队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14250, '桂小晶', '女子组儿童组', 1310, '江苏省代表队二队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14251, '王子阁', '女子组儿童组', 1311, '江苏省代表队二队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14252, '朱煜璇', '女子组少年组', 1312, '山东省代表队少年组二队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14253, '于佳诺', '女子组少年组', 1313, '山东省代表队少年组二队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14254, '叶静怡', '女子组少年组', 1314, '浙江省代表队一队', 0.00, 35, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14255, '张楚颜', '女子组少年组', 1315, '山东省代表队少年组一队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14256, '杨雅茹', '女子组少年组', 1316, '山东省代表队少年组一队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14257, '黄嘉欣', '女子组少年组', 1317, '安徽省代表队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14258, '马欣怡', '女子组少年组', 1318, '江苏省代表队二队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14259, '沈安静', '女子组少年组', 1319, '江苏省代表队二队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14260, '冯熙惠', '女子组青年组', 1320, '山东省代表队青年组一队', 0.00, 36, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14261, '牛同萌', '女子组青年组', 1315, '山东省代表队青年组一队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14262, '金芮希', '女子组青年组', 1316, '上海市代表队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14263, '白凌璇', '女子组青年组', 1317, '上海市代表队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14264, '鲍智智', '女子组青年组', 1318, '浙江省代表队二队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14265, '虞雅惠', '女子组青年组', 1319, '浙江省代表队二队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14266, '詹祈诗', '女子组青年组', 1320, '福建省代表队一队', 0.00, 37, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14267, '王贞茹', '女子组青年组', 1315, '山东省代表队青年组二队', 0.00, 38, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14268, '陈丽媛', '女子组青年组', 1316, '山东省代表队青年组二队', 0.00, 38, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14269, '窦夏倩', '女子组中青年组', 1317, '山东省代表队中青年组一队', 0.00, 38, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14270, '金永研', '男子组儿童组', 1321, '山东省代表队儿童组一队', 0.00, 39, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14271, '李武赫', '男子组儿童组', 1321, '山东省代表队儿童组一队', 0.00, 40, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14272, '王嘉睿', '男子组儿童组', 1321, '上海市代表队', 0.00, 41, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14273, '樊鸣轩', '男子组儿童组', 1321, '上海市代表队', 0.00, 42, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14274, '赖昱辰', '男子组儿童组', 1321, '浙江省代表队一队', 0.00, 43, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14275, '金裕凯', '男子组儿童组', 1321, '浙江省代表队一队', 0.00, 44, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14276, '徐瑞隆', '男子组儿童组', 1321, '山东省代表队儿童组二队', 0.00, 45, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14277, '孟圣皓', '男子组儿童组', 1321, '山东省代表队儿童组二队', 0.00, 46, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14278, '戚辰轩', '男子组儿童组', 1321, '安徽省代表队', 0.00, 47, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14279, '晏一帆', '男子组儿童组', 1321, '安徽省代表队', 0.00, 48, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14280, '徐圣鑫', '男子组儿童组', 1321, '江苏省代表队二队', 0.00, 49, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14281, '史楷杰', '男子组儿童组', 1321, '江苏省代表队二队', 0.00, 50, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14282, '黄  翰', '男子组儿童组', 1321, '江苏省代表队一队', 0.00, 51, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14283, '彭  越', '男子组儿童组', 1321, '江苏省代表队一队', 0.00, 52, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14284, '生浩宇', '男子组少年组', 1321, '山东省代表队少年组二队', 0.00, 53, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14285, '王继凯', '男子组少年组', 1321, '山东省代表队少年组二队', 0.00, 54, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14286, '郭振铭', '男子组少年组', 1321, '山东省代表队少年组一队', 0.00, 55, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14287, '张凯涛', '男子组少年组', 1321, '山东省代表队少年组一队', 0.00, 56, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14288, '张炜鑫', '男子组少年组', 1321, '福建省代表队二队', 0.00, 57, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14289, '刘偌熙', '男子组少年组', 1321, '江苏省代表队一队', 0.00, 58, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14290, '徐曦明', '男子组少年组', 1321, '江苏省代表队一队', 0.00, 59, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14291, '王  硕', '男子组少年组', 1321, '江苏省代表队二队', 0.00, 60, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14292, '孙树康', '男子组青年组', 1321, '山东省代表队青年组一队', 0.00, 61, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14293, '宋欣阳', '男子组青年组', 1321, '山东省代表队青年组一队', 0.00, 62, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14294, '杨  运', '男子组青年组', 1321, '上海市代表队', 0.00, 63, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14295, '符柳彬', '男子组青年组', 1321, '上海市代表队', 0.00, 64, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14296, '段中飞', '男子组青年组', 1321, '浙江省代表队一队', 0.00, 65, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14297, '何军武', '男子组青年组', 1321, '福建省代表队二队', 0.00, 66, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14298, '郭本华', '男子组青年组', 1322, '福建省代表队二队', 0.00, 67, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14299, '肖凤辉', '男子组青年组', 1322, '山东省代表队青年组二队', 0.00, 68, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14300, '胡  康', '男子组青年组', 1322, '江苏省代表队二队', 0.00, 69, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14301, '孙鑫宇', '男子组青年组', 1322, '江苏省代表队一队', 0.00, 70, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14302, '陈同财', '男子组青年组', 1322, '江苏省代表队一队', 0.00, 71, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14303, '谢壮壮', '男子组中青年组', 1322, '浙江省代表队一队', 0.00, 72, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14304, '张华翀', '男子组中青年组', 1322, '山东省代表队中青年组一队', 0.00, 73, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14305, '刘文雄', '男子组中青年组', 1322, '福建省代表队二队', 0.00, 74, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14306, '张恺清', '男子组儿童组', 1323, '山东省代表队儿童组一队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14307, '耿轶凡', '男子组儿童组', 1324, '山东省代表队儿童组一队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14308, '林明轩', '男子组儿童组', 1325, '上海市代表队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14309, '樊鸣轩', '男子组儿童组', 1326, '上海市代表队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14310, '胡大山', '男子组儿童组', 1327, '浙江省代表队一队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14311, '金裕凯', '男子组儿童组', 1328, '浙江省代表队一队', 0.00, 75, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14312, '徐瑞隆', '男子组儿童组', 1323, '山东省代表队儿童组二队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14313, '李沐泽', '男子组儿童组', 1324, '山东省代表队儿童组二队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14314, '陈子聪', '男子组儿童组', 1325, '安徽省代表队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14315, '张蔼烜', '男子组儿童组', 1326, '安徽省代表队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14316, '叶  梵', '男子组儿童组', 1327, '福建省代表队一队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14317, '丁子诺', '男子组少年组', 1328, '山东省代表队少年组二队', 0.00, 76, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14318, '张茂然', '男子组少年组', 1323, '山东省代表队少年组二队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14319, '王运男', '男子组少年组', 1324, '山东省代表队少年组一队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14320, '张皓博', '男子组少年组', 1325, '山东省代表队少年组一队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14321, '彭治皓', '男子组青年组', 1326, '山东省代表队青年组一队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14322, '于正帅', '男子组青年组', 1327, '山东省代表队青年组一队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14323, '杨  运', '男子组青年组', 1328, '上海市代表队', 0.00, 77, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14324, '孙文锋', '男子组青年组', 1323, '上海市代表队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14325, '范嘉伟', '男子组青年组', 1324, '浙江省代表队二队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14326, '黄澄可', '男子组青年组', 1329, '浙江省代表队二队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14327, '陈俊刚', '男子组青年组', 1330, '福建省代表队一队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14328, '连浩东', '男子组青年组', 1331, '福建省代表队二队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14329, '张培旺', '男子组青年组', 1332, '山东省代表队青年组二队', 0.00, 78, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14330, '周文生', '男子组青年组', 1333, '山东省代表队青年组二队', 0.00, 79, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14331, '胡  康', '男子组青年组', 1334, '江苏省代表队二队', 0.00, 79, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14332, '王东奎', '男子组中青年组', 1330, '浙江省代表队一队', 0.00, 79, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14333, '谢壮壮', '男子组中青年组', 1331, '浙江省代表队一队', 0.00, 79, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14334, '张耀辉', '男子组中青年组', 1332, '山东省代表队中青年组一队', 0.00, 79, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14335, '吴  迪', '男子组中青年组', 1333, '安徽省代表队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14336, '刘超龙', '男子组中青年组', 1334, '福建省代表队二队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14337, '冯  锋', '男子组中老年组', 1329, '安徽省代表队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14338, '梁建锋', '男子组中老年组', 1330, '福建省代表队一队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14339, '林树森', '男子组中老年组', 1331, '福建省代表队一队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14340, '张宸瑜', '女子组儿童组', 1332, '山东省代表队儿童组一队', 0.00, 80, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14341, '赵梓涵', '女子组儿童组', 1333, '山东省代表队儿童组一队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14342, '曾善特', '女子组儿童组', 1334, '浙江省代表队一队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14343, '张雅茹', '女子组儿童组', 1329, '山东省代表队儿童组二队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14344, '洪景昕', '女子组儿童组', 1330, '山东省代表队儿童组二队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14345, '陈静钥', '女子组儿童组', 1331, '福建省代表队一队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14346, '张嘉然', '女子组少年组', 1332, '山东省代表队少年组二队', 0.00, 81, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14347, '朱雅琪', '女子组少年组', 1333, '山东省代表队少年组二队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14348, '叶静怡', '女子组少年组', 1334, '浙江省代表队一队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14349, '杨雅茹', '女子组少年组', 1329, '山东省代表队少年组一队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14350, '李静洁', '女子组青年组', 1330, '山东省代表队青年组一队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14351, '牛同萌', '女子组青年组', 1331, '山东省代表队青年组一队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14352, '谢红艳', '女子组青年组', 1332, '上海市代表队', 0.00, 82, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14353, '李丽诗', '女子组青年组', 1333, '上海市代表队', 0.00, 83, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14354, '鲍智智', '女子组青年组', 1334, '浙江省代表队二队', 0.00, 83, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14355, '张  茜', '女子组青年组', 1329, '浙江省代表队二队', 0.00, 83, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14356, '仵可辛', '女子组青年组', 1330, '山东省代表队青年组二队', 0.00, 83, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14357, '陈丽媛', '女子组青年组', 1331, '山东省代表队青年组二队', 0.00, 83, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14358, '金永研  张恺清', '男子组儿童组', 1335, '山东省代表队儿童组一队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14359, '金辰恺  王嘉睿', '男子组儿童组', 1336, '上海市代表队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14360, '赖昱辰  胡大山', '男子组儿童组', 1337, '浙江省代表队一队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14361, '张海腾  董俊泽', '男子组儿童组', 1338, '山东省代表队儿童组二队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14362, '晏一帆  张蔼烜', '男子组儿童组', 1339, '安徽省代表队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14363, '陈智新  陈陶然', '男子组儿童组', 1340, '福建省代表队一队', 0.00, 84, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14364, '桂浩峻  李宸宇', '男子组儿童组', 1335, '江苏省代表队二队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14365, '生浩宇  潘  政', '男子组少年组', 1336, '山东省代表队少年组二队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14366, '郭振铭  林煜轩', '男子组少年组', 1337, '山东省代表队少年组一队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14367, '陈裕涛  张炜鑫', '男子组少年组', 1338, '福建省代表队二队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14368, '彭治皓  于正帅', '男子组青年组', 1339, '山东省代表队青年组一队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14369, '廖俊杰  牛旭生', '男子组青年组', 1340, '上海市代表队', 0.00, 85, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14370, '毛泽文  潘乾飚', '男子组青年组', 1335, '浙江省代表队二队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14371, '陈守印  周文生', '男子组青年组', 1336, '山东省代表队青年组二队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14372, '王东奎  谢壮壮', '男子组中青年组', 1337, '浙江省代表队一队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14373, '张华翀  张耀辉', '男子组中青年组', 1338, '山东省代表队中青年组一队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14374, '吴  迪  张世豪', '男子组中青年组', 1339, '安徽省代表队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14375, '刘超龙  刘文雄', '男子组中青年组', 1340, '福建省代表队二队', 0.00, 86, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14376, '陈俊刚  梁建锋', '男子组中老年组', 1335, '福建省代表队一队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14377, '陈心烁  李悦涵', '女子组儿童组', 1336, '山东省代表队儿童组一队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14378, '倪思妍 江晓曦', '女子组儿童组', 1337, '浙江省代表队一队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14379, '曹馨月  潘欣冉', '女子组儿童组', 1338, '山东省代表队儿童组二队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14380, '吴奕楠  施奕辰', '女子组儿童组', 1339, '浙江省代表队二队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14381, '陈冰心  张汤艺', '女子组儿童组', 1340, '福建省代表队一队', 0.00, 87, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14382, '桂小晶  王子阁', '女子组儿童组', 1335, '江苏省代表队二队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14383, '王一涵  于佳诺', '女子组少年组', 1336, '山东省代表队少年组二队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14384, '付峻菁  杨雅茹', '女子组少年组', 1337, '山东省代表队少年组一队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14385, '李静洁  鲍春慧', '女子组青年组', 1338, '山东省代表队青年组一队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14386, '王贞茹  陈丽媛', '女子组青年组', 1339, '山东省代表队青年组二队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14387, '李武赫  胡笑颖', '混合组儿童组', 1341, '山东省代表队儿童组一队', 0.00, 88, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14388, '金裕凯  曾善特', '混合组儿童组', 1342, '浙江省代表队一队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14389, '张珩德  巩洛伊', '混合组儿童组', 1343, '山东省代表队儿童组二队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14390, '戚辰轩  甘依灵', '混合组儿童组', 1344, '安徽省代表队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14391, '梁德福  朱煜璇', '混合组少年组', 1345, '山东省代表队少年组二队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14392, '孙海峰  张楚颜', '混合组少年组', 1346, '山东省代表队少年组一队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14393, '黄嘉欣  陈子聪', '混合组少年组', 1341, '安徽省代表队', 0.00, 89, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14394, '徐嘉诚  冯熙惠', '混合组青年组', 1342, '山东省代表队青年组一队', 0.00, 90, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14395, '杨  运  金芮希', '混合组青年组', 1343, '上海市代表队', 0.00, 90, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14396, '虞雅惠  徐梓凌', '混合组青年组', 1344, '浙江省代表队二队', 0.00, 90, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14397, '赵崎超  崔雪茹', '混合组青年组', 1345, '山东省代表队青年组二队', 0.00, 90, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14398, '于亚雄  窦夏倩', '混合组中青年组', 1346, '山东省代表队中青年组一队', 0.00, 90, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14399, '耿轶凡  任世文', '男子组儿童组', 1347, '山东省代表队儿童组一队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14400, '林明轩  樊鸣轩', '男子组儿童组', 1348, '上海市代表队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14401, '王俊初  于果', '男子组儿童组', 1349, '山东省代表队儿童组二队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14402, '王诗凯  徐乾晖', '男子组儿童组', 1350, '浙江省代表队二队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14403, '晏一帆  张蔼烜', '男子组儿童组', 1351, '安徽省代表队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14404, '王运男  张皓博', '男子组少年组', 1352, '山东省代表队少年组一队', 0.00, 91, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14405, '周凤啟  陈家乐', '男子组青年组', 1347, '山东省代表队青年组一队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14406, '郭晨阳  曹雪原', '男子组青年组', 1348, '上海市代表队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14407, '范嘉伟  黄澄可', '男子组青年组', 1349, '浙江省代表队二队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14408, '李浩然  张培旺', '男子组青年组', 1350, '山东省代表队青年组二队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14409, '王东奎  谢壮壮', '男子组中青年组', 1351, '浙江省代表队一队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14410, '吴  迪  赵皖龙', '男子组中青年组', 1352, '安徽省代表队', 0.00, 92, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14411, '刘超龙  刘文雄', '男子组中青年组', 1347, '福建省代表队二队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14412, '冯  锋  戚辰轩', '男子组中老年组', 1348, '安徽省代表队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14413, '陈雨杭  金笑妍', '女子组儿童组', 1349, '山东省代表队儿童组一队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14414, '张雅茹  刘雨溪', '女子组儿童组', 1350, '山东省代表队儿童组二队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14415, '马欣怡  沈安平', '女子组少年组', 1351, '江苏省代表队二队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14416, '李静洁  牛同萌', '女子组青年组', 1353, '山东省代表队青年组一队', 0.00, 93, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14417, '谢红艳  白凌璇', '女子组青年组', 1354, '上海市代表队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14418, '王  宣  张  茜', '女子组青年组', 1355, '浙江省代表队二队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14419, '仵可辛  王贞茹', '女子组青年组', 1356, '山东省代表队青年组二队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14420, '赵玉芝  贺冰冰 ', '女子组中老年组', 1357, '安徽省代表队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14421, '姜竣译  李悦涵', '混合组儿童组', 1358, '山东省代表队儿童组一队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14422, '张珩德  巩洛伊', '混合组儿童组', 1353, '山东省代表队儿童组二队', 0.00, 94, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14423, '朱晟轩  朱佳妍', '混合组儿童组', 1354, '浙江省代表队二队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14424, '陈星辰  沈安静', '混合组少年组', 1355, '江苏省代表队二队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14425, '于存宝  侯亚男', '混合组青年组', 1356, '山东省代表队青年组一队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14426, '邹扬扬  李丽诗', '混合组青年组', 1357, '上海市代表队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14427, '许弘钰  黄  琰', '混合组青年组', 1358, '山东省代表队青年组二队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14428, '陈静钥  林树森', '混合组中老年组', 1353, '福建省代表队一队', 0.00, 95, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14429, '金永研  张恺清', '男子组儿童组', 1359, '山东省代表队儿童组一队', 0.00, 96, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14430, '林明轩  金辰恺', '男子组儿童组', 1359, '上海市代表队', 0.00, 97, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14431, '赖昱辰  胡大山', '男子组儿童组', 1359, '浙江省代表队一队', 0.00, 98, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14432, '张海腾  董俊泽 ', '男子组儿童组', 1359, '山东省代表队儿童组二队', 0.00, 99, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14433, '徐圣鑫  史楷杰', '男子组儿童组', 1359, '江苏省代表队二队', 0.00, 100, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14434, '黄  翰  彭  越', '男子组儿童组', 1359, '江苏省代表队一队', 0.00, 101, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14435, '郭振铭  林煜轩', '男子组少年组', 1359, '山东省代表队少年组一队', 0.00, 102, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14436, '刘偌熙  徐曦明', '男子组少年组', 1359, '江苏省代表队一队', 0.00, 103, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14437, '周凤啟  于存宝', '男子组青年组', 1359, '山东省代表队青年组一队', 0.00, 104, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14438, '张  潇  孙文锋', '男子组青年组', 1359, '上海市代表队', 0.00, 105, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14439, '何军武  郭本华', '男子组青年组', 1359, '福建省代表队二队', 0.00, 106, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14440, '孙鑫宇  陈同财', '男子组青年组', 1359, '江苏省代表队一队', 0.00, 107, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14441, '张冰莹  张宸瑜', '女子组儿童组', 1359, '山东省代表队儿童组一队', 0.00, 108, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14442, '潘欣冉  洪景昕', '女子组儿童组', 1359, '山东省代表队儿童组二队', 0.00, 109, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14443, '付峻菁  杨雅茹', '女子组少年组', 1359, '山东省代表队少年组一队', 0.00, 110, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14444, '李静洁  牛同萌', '女子组青年组', 1359, '山东省代表队青年组一队', 0.00, 111, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14445, '姜竣译  李悦涵', '混合组儿童组', 1359, '山东省代表队儿童组一队', 0.00, 112, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14446, '于  果  辛梓菡', '混合组儿童组', 1359, '山东省代表队儿童组二队', 0.00, 113, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14447, '曹炎溪  翁梓祺', '混合组儿童组', 1359, '江苏省代表队一队', 0.00, 114, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14448, '叶静怡  金裕凯', '混合组少年组', 1359, '浙江省代表队一队', 0.00, 115, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14449, '刘子暄  鲍春慧', '混合组青年组', 1359, '山东省代表队青年组一队', 0.00, 116, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14450, '杨  运  覃继媚', '混合组青年组', 1359, '上海市代表队', 0.00, 117, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14451, '金永研  张恺清', '男子组儿童组', 1360, '山东省代表队儿童组一队', 0.00, 118, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14452, '赵一凡  陈星辰', '男子组少年组', 1360, '江苏省代表队二队', 0.00, 119, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14453, '方立钊  刘晓航', '男子组青年组', 1360, '山东省代表队青年组一队', 0.00, 120, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14454, '桂红伟  王  毅', '男子组青年组', 1360, '上海市代表队', 0.00, 121, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14455, '王东奎  谢壮壮', '男子组中青年组', 1360, '浙江省代表队一队', 0.00, 122, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14456, '陈心烁  张冰莹', '女子组儿童组', 1360, '山东省代表队儿童组一队', 0.00, 123, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14457, '沈安静  沈安平', '女子组少年组', 1360, '江苏省代表队二队', 0.00, 124, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14458, '王建强  程泉方', '混合组儿童组', 1360, '山东省代表队儿童组一队', 0.00, 125, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14459, '曹炎溪  翁梓祺', '混合组儿童组', 1360, '江苏省代表队一队', 0.00, 126, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14460, '侍继宇  徐思菡', '混合组儿童组', 1360, '江苏省代表队二队', 0.00, 127, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14461, '张茂然  王一涵', '混合组少年组', 1360, '山东省代表队少年组二队', 0.00, 128, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14462, '陈昊宇  马欣怡', '混合组少年组', 1360, '江苏省代表队二队', 0.00, 129, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14463, '许弘钰  黄  琰', '混合组青年组', 1360, '山东省代表队青年组二队', 0.00, 130, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14464, '方立钊  孙树康  刘子暄', '男子组青年组', 1361, '山东省代表队青年组一队', 0.00, 131, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14465, '毛  旋  黄  斌  陈其聪', '男子组青年组', 1361, '福建省代表队二队', 0.00, 132, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14466, '王东奎  谢壮壮  段中飞', '男子组中青年组', 1361, '浙江省代表队一队', 0.00, 133, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14467, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1361, '江苏省代表队一队', 0.00, 134, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14468, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1361, '江苏省代表队二队', 0.00, 135, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14469, '陈昊宇  赵一凡  马欣怡', '混合组少年组', 1361, '江苏省代表队二队', 0.00, 136, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14470, '付峻菁  张凯涛  王运男', '混合组少年组', 1361, '山东省代表队少年组一队', 0.00, 137, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14471, '杨  运  张  潇  金芮希', '混合组青年组', 1361, '上海市代表队', 0.00, 138, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14472, '金永研  张恺清  魏子程  李武赫', '男子组儿童组', 1362, '山东省代表队儿童组一队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14473, '樊鸣轩  林明轩  王嘉睿  金辰恺', '男子组儿童组', 1363, '上海市代表队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14474, '于  果  鹿皓清  杜  政  胡振泽', '男子组儿童组', 1364, '山东省代表队儿童组二队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14475, '黄  翰  彭  越  王鑫鹏  周文韬', '男子组儿童组', 1365, '江苏省代表队一队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14476, '梁德福  郭昌昊  生浩宇  王继凯', '男子组少年组', 1366, '山东省代表队少年组二队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14477, '张凯涛  刘腾泽  王运男  张皓博', '男子组少年组', 1367, '山东省代表队少年组一队', 0.00, 139, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14478, '阚明利  彭治皓  于存宝  孙树康', '男子组青年组', 1362, '山东省代表队青年组一队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14479, '梁厚德  桂红伟  王  毅  孙文锋', '男子组青年组', 1363, '上海市代表队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14480, '毛  旋  黄  斌  陈其聪  何军武', '男子组青年组', 1364, '福建省代表队二队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14481, '鲁长琛  陈守印  肖凤辉  周文生', '男子组青年组', 1365, '山东省代表队青年组二队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14482, '孙鑫宇  陈同财  陈松林  刘泽瑞康', '男子组青年组', 1366, '江苏省代表队一队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14483, '吴  迪  赵皖龙  杨柳青  陈子聪', '男子组中青年组', 1367, '安徽省代表队', 0.00, 140, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14484, '陈裕涛  张炜鑫  刘超龙  刘文雄', '男子组中青年组', 1362, '福建省代表队二队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14485, '冯  锋  张世豪  戚辰轩  张蔼烜', '男子组中老年组', 1363, '安徽省代表队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14486, '陈雨杭  赵梓涵  金笑妍  陆芊竹', '女子组儿童组', 1364, '山东省代表队儿童组一队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14487, '张雅茹  刘雨溪  潘欣冉  崔润依', '女子组儿童组', 1365, '山东省代表队儿童组二队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14488, '钟雅婷  孙美绮  朱煜璇  魏子贻', '女子组少年组', 1366, '山东省代表队少年组二队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14489, '侯亚男  李静洁  鲍春慧  牛同萌', '女子组青年组', 1367, '山东省代表队青年组一队', 0.00, 141, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14490, '谢红艳  金芮希  李丽诗  白凌璇', '女子组青年组', 1362, '上海市代表队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14491, '仵可辛  许弘钰  王贞茹  陈丽媛', '女子组青年组', 1363, '山东省代表队青年组二队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14492, '赵玉芝  贺冰冰  黄嘉欣  甘依灵', '女子组中老年组', 1364, '安徽省代表队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14493, '姜竣译  耿轶凡  张宸瑜  李悦涵', '混合组儿童组', 1365, '山东省代表队儿童组一队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14494, '倪思妍 江晓曦  赖昱辰  胡大山', '混合组儿童组', 1366, '浙江省代表队一队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14495, '张海腾  董俊泽  徐瑞隆  巩洛伊', '混合组儿童组', 1367, '山东省代表队儿童组二队', 0.00, 142, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14496, '朱晟轩  王诗凯  徐乾晖  施奕辰', '混合组儿童组', 1362, '浙江省代表队二队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14497, '桂浩峻  桂小晶  李宸宇  王子阁', '混合组儿童组', 1363, '江苏省代表队二队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14498, '潘  政  郭念衡  白梓涵  徐玉玉', '混合组少年组', 1364, '山东省代表队少年组二队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14499, '郭振铭、孙海峰、张楚颜、林煜轩', '混合组少年组', 1365, '山东省代表队少年组一队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14500, '周凤啟  徐嘉诚  曹先锋  冯熙惠', '混合组青年组', 1366, '山东省代表队青年组一队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14501, '鲍智智  虞雅惠  徐梓凌  毛泽文', '混合组青年组', 1367, '浙江省代表队二队', 0.00, 143, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14502, '赵崎超  崔雪茹  黄  琰  张培旺', '混合组青年组', 1362, '山东省代表队青年组二队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14503, '庞贵荣  窦夏倩  于亚雄  张耀辉', '混合组中青年组', 1363, '山东省代表队中青年组一队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14504, '黄  翰  彭  越  王鑫鹏  陈昊冉', '男子组儿童组', 1368, '江苏省代表队一队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14505, '徐乐恒  钦子涵  魏邵志  徐曦明', '男子组儿童组', 1369, '江苏省代表队一队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14506, '周凤啟  阚明利  陈家乐  于存宝', '男子组青年组', 1370, '山东省代表队青年组一队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14507, '郭晨阳  甘容鑫  邹扬扬  符柳彬', '男子组青年组', 1371, '上海市代表队', 0.00, 144, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14508, '侍继宇  徐思菡  张雨鑫  汤霖烨', '混合组儿童组', 1372, '江苏省代表队二队', 0.00, 145, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14509, '陈昊宇  赵一凡  陈星辰  沈安静', '混合组少年组', 1373, '江苏省代表队二队', 0.00, 145, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14510, '方立钊  刘子暄  鲍春慧  刘晓航', '混合组青年组', 1368, '山东省代表队青年组一队', 0.00, 145, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14511, '杨  运  谢红艳  覃继媚  孙文锋', '混合组青年组', 1369, '上海市代表队', 0.00, 145, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14512, '黄  翰  彭  越  王鑫鹏', '男子组儿童组', 1374, '江苏省代表队一队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14513, '孙海峰  林煜轩  郭振铭', '男子组少年组', 1375, '山东省代表队少年组一队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14514, '陈昊宇  赵一凡  陈星辰', '男子组少年组', 1376, '江苏省代表队二队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14515, '徐乐恒  钦子涵  魏邵志', '男子组少年组', 1377, '江苏省代表队一队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14516, '孙树康  刘子暄  刘晓航', '男子组青年组', 1378, '山东省代表队青年组一队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14517, '梁厚德  桂红伟  王  毅', '男子组青年组', 1379, '上海市代表队', 0.00, 146, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14518, '范嘉伟  黄澄可  吕凌昊', '男子组青年组', 1374, '浙江省代表队二队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14519, '陈裕涛  刘超龙  刘文雄', '男子组中青年组', 1375, '福建省代表队二队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14520, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1376, '江苏省代表队一队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14521, '张冰莹  张宸瑜  赵梓涵', '女子组儿童组', 1377, '山东省代表队儿童组一队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14522, '马欣怡  沈安静  沈安平', '女子组少年组', 1378, '江苏省代表队二队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14523, '鲍智智  王  宣  张  茜', '女子组青年组', 1379, '浙江省代表队二队', 0.00, 147, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14524, '王建强  程泉方  陈心烁', '混合组儿童组', 1374, '山东省代表队儿童组一队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14525, '张海腾  董俊泽  巩洛伊', '混合组儿童组', 1375, '山东省代表队儿童组二队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14526, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1376, '江苏省代表队二队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14527, '王继凯  张嘉然  朱煜璇', '混合组少年组', 1377, '山东省代表队少年组二队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14528, '曾善特  叶静怡  金裕凯', '混合组少年组', 1378, '浙江省代表队一队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14529, '彭治皓  于正帅  姜  鑫', '混合组青年组', 1379, '山东省代表队青年组一队', 0.00, 148, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14530, '李丽诗  白凌璇  曹雪原', '混合组青年组', 1374, '上海市代表队', 0.00, 149, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14531, '赵崎超  许弘钰  黄  琰', '混合组青年组', 1375, '山东省代表队青年组二队', 0.00, 149, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14532, '詹祈诗  梁建锋  陈俊刚', '混合组中老年组', 1376, '福建省代表队一队', 0.00, 149, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14533, '陈心烁', '女子组儿童组', 1380, '山东省代表队儿童组一队', 0.00, 150, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14534, '张冰莹', '女子组儿童组', 1380, '山东省代表队儿童组一队', 0.00, 151, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14535, '曾善特', '女子组儿童组', 1380, '浙江省代表队一队', 0.00, 152, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14536, '辛梓菡', '女子组儿童组', 1380, '山东省代表队儿童组二队', 0.00, 153, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14537, '洪景昕', '女子组儿童组', 1380, '山东省代表队儿童组二队', 0.00, 154, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14538, '甘依灵', '女子组儿童组', 1380, '安徽省代表队', 0.00, 155, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14539, '李琪琪', '女子组儿童组', 1380, '江苏省代表队一队', 0.00, 156, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14540, '曹炎溪', '女子组儿童组', 1380, '江苏省代表队一队', 0.00, 157, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14541, '孙美绮', '女子组少年组', 1380, '山东省代表队少年组二队', 0.00, 158, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14542, '潘欣怡', '女子组少年组', 1380, '山东省代表队少年组二队', 0.00, 159, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14543, '叶静怡', '女子组少年组', 1380, '浙江省代表队一队', 0.00, 160, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14544, '张楚颜', '女子组少年组', 1380, '山东省代表队少年组一队', 0.00, 161, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14545, '付峻菁', '女子组少年组', 1380, '山东省代表队少年组一队', 0.00, 162, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14546, '鲍春慧', '女子组青年组', 1380, '山东省代表队青年组一队', 0.00, 163, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14547, '牛同萌', '女子组青年组', 1380, '山东省代表队青年组一队', 0.00, 164, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14548, '谢红艳', '女子组青年组', 1380, '上海市代表队', 0.00, 165, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14549, '覃继媚', '女子组青年组', 1380, '上海市代表队', 0.00, 166, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14550, '窦夏倩', '女子组中青年组', 1380, '山东省代表队中青年组一队', 0.00, 167, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14551, '贺冰冰', '女子组中青年组', 1380, '安徽省代表队', 0.00, 168, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14552, '赵玉芝', '女子组中老年组', 1380, '安徽省代表队', 0.00, 169, 12, NULL);
INSERT INTO `jnm_sports` VALUES (14553, '王建强  耿轶凡  任世文  程泉方  张宸瑜  陈雨杭  孙海峰  张楚颜  刘腾泽  付峻菁', '不分组别', 1381, '山东省代表队儿童组一队', 0.00, 170, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14554, '郭晨阳  甘容鑫  邹扬扬  符柳彬  梁厚德  曹雪原  廖俊杰  蒋俊杰  牛旭生  昝加宇', '不分组别', 1382, '上海市代表队', 0.00, 170, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14555, '梁德福  生浩宇  王继凯  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡', '不分组别', 1383, '山东省代表队少年组二队', 0.00, 170, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14556, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1381, '浙江省代表队二队', 0.00, 171, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14557, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚  梁建锋', '不分组别', 1382, '福建省代表队一队', 0.00, 171, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14558, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1383, '山东省代表队青年组二队', 0.00, 171, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14559, '金永研', '男子组儿童组', 1384, '山东省代表队儿童组一队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14560, '张恺清', '男子组儿童组', 1385, '山东省代表队儿童组一队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14561, '金辰恺', '男子组儿童组', 1386, '上海市代表队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14562, '林明轩', '男子组儿童组', 1387, '上海市代表队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14563, '胡大山', '男子组儿童组', 1388, '浙江省代表队一队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14564, '金裕凯', '男子组儿童组', 1389, '浙江省代表队一队', 0.00, 172, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14565, '董俊泽', '男子组儿童组', 1384, '山东省代表队儿童组二队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14566, '王俊初', '男子组儿童组', 1385, '山东省代表队儿童组二队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14567, '朱晟轩', '男子组儿童组', 1390, '浙江省代表队二队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14568, '王诗凯', '男子组儿童组', 1391, '浙江省代表队二队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14569, '陈子聪', '男子组儿童组', 1392, '安徽省代表队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14570, '史轩泽', '男子组儿童组', 1393, '江苏省代表队二队', 0.00, 173, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14571, '孙睿韬', '男子组儿童组', 1394, '江苏省代表队二队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14572, '梁德福', '男子组少年组', 1395, '山东省代表队少年组二队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14573, '王继凯', '男子组少年组', 1390, '山东省代表队少年组二队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14574, '舒澍校', '男子组少年组', 1391, '浙江省代表队二队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14575, '林煜轩', '男子组少年组', 1392, '山东省代表队少年组一队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14576, '张凯涛', '男子组少年组', 1393, '山东省代表队少年组一队', 0.00, 174, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14577, '陈裕涛', '男子组少年组', 1394, '福建省代表队二队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14578, '王硕', '男子组少年组', 1395, '江苏省代表队二队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14579, '孙树康', '男子组青年组', 1390, '山东省代表队青年组一队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14580, '徐嘉诚', '男子组青年组', 1391, '山东省代表队青年组一队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14581, '蒋俊杰', '男子组青年组', 1392, '上海市代表队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14582, '昝加宇', '男子组青年组', 1393, '上海市代表队', 0.00, 175, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14583, '段中飞', '男子组青年组', 1394, '浙江省代表队一队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14584, '徐梓凌', '男子组青年组', 1395, '浙江省代表队二队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14585, '毛泽文', '男子组青年组', 1390, '浙江省代表队二队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14586, '毛旋', '男子组青年组', 1391, '福建省代表队二队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14587, '黄斌', '男子组青年组', 1392, '福建省代表队二队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14588, '肖凤辉', '男子组青年组', 1393, '山东省代表队青年组二队', 0.00, 176, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14589, '周文生', '男子组青年组', 1394, '山东省代表队青年组二队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14590, '于亚雄', '男子组中青年组', 1395, '山东省代表队中青年组一队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14591, '张耀辉', '男子组中青年组', 1390, '山东省代表队中青年组一队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14592, '赵皖龙', '男子组中青年组', 1391, '安徽省代表队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14593, '杨柳青', '男子组中青年组', 1392, '安徽省代表队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14594, '刘文雄', '男子组中青年组', 1393, '福建省代表队二队', 0.00, 177, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14595, '李磊', '男子组中老年组', 1394, '山东省代表队中老年组一队', 0.00, 178, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14596, '冯锋', '男子组中老年组', 1395, '安徽省代表队', 0.00, 178, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14597, '阚明利  彭治皓  程杰睿  于正帅  方立钊  徐嘉诚  曹先锋  姜  鑫  宋欣阳  陈家乐', '不分组别', 1396, '山东省代表队青年组一队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14598, '王建强  耿轶凡  任世文  程泉方  陈心烁  张冰莹  陈雨杭  张楚颜  刘腾泽  张凯涛', '不分组别', 1397, '山东省代表队儿童组一队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14599, '潘  政  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡  徐玉玉  苗立华', '不分组别', 1398, '山东省代表队少年组二队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14600, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1399, '浙江省代表队二队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14601, '吴  迪  赵皖龙  贺冰冰  张世豪  黄嘉欣  陈子聪  戚辰轩  甘依灵  晏一帆  张蔼烜', '不分组别', 1400, '安徽省代表队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14602, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1401, '山东省代表队青年组二队', 0.00, 179, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14603, '陈心烁', '女子组儿童组', 1402, '山东省代表队儿童组一队', 1.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14604, '张冰莹', '女子组儿童组', 1403, '山东省代表队儿童组一队', 0.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14605, '倪思妍', '女子组儿童组', 1404, '浙江省代表队一队', 0.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14606, '江晓曦', '女子组儿童组', 1405, '浙江省代表队一队', 0.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14607, '辛梓菡', '女子组儿童组', 1406, '山东省代表队儿童组二队', 0.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14608, '曹馨月', '女子组儿童组', 1407, '山东省代表队儿童组二队', 0.00, 180, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14609, '吴奕楠', '女子组儿童组', 1402, '浙江省代表队二队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14610, '施奕辰', '女子组儿童组', 1403, '浙江省代表队二队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14611, '陈冰心', '女子组儿童组', 1404, '福建省代表队一队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14612, '张汤艺', '女子组儿童组', 1405, '福建省代表队一队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14613, '孙美绮', '女子组少年组', 1406, '山东省代表队少年组二队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14614, '朱煜璇', '女子组少年组', 1407, '山东省代表队少年组二队', 0.00, 181, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14615, '付峻菁', '女子组少年组', 1402, '山东省代表队少年组一队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14616, '杨雅茹', '女子组少年组', 1403, '山东省代表队少年组一队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14617, '冯熙惠', '女子组青年组', 1404, '山东省代表队青年组一队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14618, '鲍春慧', '女子组青年组', 1405, '山东省代表队青年组一队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14619, '谢红艳', '女子组青年组', 1406, '上海市代表队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14620, '鲍智智', '女子组青年组', 1407, '浙江省代表队二队', 0.00, 182, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14621, '王宣', '女子组青年组', 1402, '浙江省代表队二队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14622, '詹祈诗', '女子组青年组', 1403, '福建省代表队一队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14623, '崔雪茹', '女子组青年组', 1404, '山东省代表队青年组二队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14624, '陈丽媛', '女子组青年组', 1405, '山东省代表队青年组二队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14625, '庞贵荣', '女子组中青年组', 1406, '山东省代表队中青年组一队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14626, '贺冰冰', '女子组中青年组', 1407, '安徽省代表队', 0.00, 183, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14627, '赵玉芝', '女子组中老年组', 1402, '安徽省代表队', 0.00, 184, 4, NULL);
INSERT INTO `jnm_sports` VALUES (14628, '金永研  张恺清', '男子组儿童组', 1408, '山东省代表队儿童组一队', 0.00, 96, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14629, '林明轩  金辰恺', '男子组儿童组', 1408, '上海市代表队', 0.00, 97, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14630, '赖昱辰  胡大山', '男子组儿童组', 1408, '浙江省代表队一队', 0.00, 98, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14631, '张海腾  董俊泽 ', '男子组儿童组', 1408, '山东省代表队儿童组二队', 0.00, 99, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14632, '徐圣鑫  史楷杰', '男子组儿童组', 1408, '江苏省代表队二队', 0.00, 100, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14633, '黄  翰  彭  越', '男子组儿童组', 1408, '江苏省代表队一队', 0.00, 101, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14634, '郭振铭  林煜轩', '男子组少年组', 1408, '山东省代表队少年组一队', 0.00, 102, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14635, '刘偌熙  徐曦明', '男子组少年组', 1408, '江苏省代表队一队', 0.00, 103, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14636, '周凤啟  于存宝', '男子组青年组', 1408, '山东省代表队青年组一队', 0.00, 104, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14637, '张  潇  孙文锋', '男子组青年组', 1408, '上海市代表队', 0.00, 105, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14638, '何军武  郭本华', '男子组青年组', 1408, '福建省代表队二队', 0.00, 106, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14639, '孙鑫宇  陈同财', '男子组青年组', 1408, '江苏省代表队一队', 0.00, 107, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14640, '张冰莹  张宸瑜', '女子组儿童组', 1408, '山东省代表队儿童组一队', 0.00, 108, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14641, '潘欣冉  洪景昕', '女子组儿童组', 1408, '山东省代表队儿童组二队', 0.00, 109, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14642, '付峻菁  杨雅茹', '女子组少年组', 1408, '山东省代表队少年组一队', 0.00, 110, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14643, '李静洁  牛同萌', '女子组青年组', 1408, '山东省代表队青年组一队', 0.00, 111, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14644, '姜竣译  李悦涵', '混合组儿童组', 1408, '山东省代表队儿童组一队', 0.00, 112, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14645, '于  果  辛梓菡', '混合组儿童组', 1408, '山东省代表队儿童组二队', 0.00, 113, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14646, '曹炎溪  翁梓祺', '混合组儿童组', 1408, '江苏省代表队一队', 0.00, 114, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14647, '叶静怡  金裕凯', '混合组少年组', 1408, '浙江省代表队一队', 0.00, 115, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14648, '刘子暄  鲍春慧', '混合组青年组', 1408, '山东省代表队青年组一队', 0.00, 116, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14649, '杨  运  覃继媚', '混合组青年组', 1408, '上海市代表队', 0.00, 117, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14650, '金永研  张恺清', '男子组儿童组', 1409, '山东省代表队儿童组一队', 0.00, 118, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14651, '赵一凡  陈星辰', '男子组少年组', 1409, '江苏省代表队二队', 0.00, 119, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14652, '方立钊  刘晓航', '男子组青年组', 1409, '山东省代表队青年组一队', 0.00, 120, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14653, '桂红伟  王  毅', '男子组青年组', 1409, '上海市代表队', 0.00, 121, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14654, '王东奎  谢壮壮', '男子组中青年组', 1409, '浙江省代表队一队', 0.00, 122, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14655, '陈心烁  张冰莹', '女子组儿童组', 1409, '山东省代表队儿童组一队', 0.00, 123, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14656, '沈安静  沈安平', '女子组少年组', 1409, '江苏省代表队二队', 0.00, 124, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14657, '王建强  程泉方', '混合组儿童组', 1409, '山东省代表队儿童组一队', 0.00, 125, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14658, '曹炎溪  翁梓祺', '混合组儿童组', 1409, '江苏省代表队一队', 0.00, 126, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14659, '侍继宇  徐思菡', '混合组儿童组', 1409, '江苏省代表队二队', 0.00, 127, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14660, '张茂然  王一涵', '混合组少年组', 1409, '山东省代表队少年组二队', 0.00, 128, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14661, '陈昊宇  马欣怡', '混合组少年组', 1409, '江苏省代表队二队', 0.00, 129, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14662, '许弘钰  黄  琰', '混合组青年组', 1409, '山东省代表队青年组二队', 0.00, 130, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14663, '方立钊  孙树康  刘子暄', '男子组青年组', 1410, '山东省代表队青年组一队', 0.00, 131, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14664, '毛  旋  黄  斌  陈其聪', '男子组青年组', 1410, '福建省代表队二队', 0.00, 132, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14665, '王东奎  谢壮壮  段中飞', '男子组中青年组', 1410, '浙江省代表队一队', 0.00, 133, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14666, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1410, '江苏省代表队一队', 0.00, 134, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14667, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1410, '江苏省代表队二队', 0.00, 135, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14668, '陈昊宇  赵一凡  马欣怡', '混合组少年组', 1410, '江苏省代表队二队', 0.00, 136, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14669, '付峻菁  张凯涛  王运男', '混合组少年组', 1410, '山东省代表队少年组一队', 0.00, 137, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14670, '杨  运  张  潇  金芮希', '混合组青年组', 1410, '上海市代表队', 0.00, 138, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14671, '金永研  张恺清  魏子程  李武赫', '男子组儿童组', 1411, '山东省代表队儿童组一队', 0.00, 139, 4, '1');
INSERT INTO `jnm_sports` VALUES (14672, '樊鸣轩  林明轩  王嘉睿  金辰恺', '男子组儿童组', 1412, '上海市代表队', 0.00, 139, 4, '2');
INSERT INTO `jnm_sports` VALUES (14673, '于  果  鹿皓清  杜  政  胡振泽', '男子组儿童组', 1413, '山东省代表队儿童组二队', 0.00, 139, 4, '3');
INSERT INTO `jnm_sports` VALUES (14674, '黄  翰  彭  越  王鑫鹏  周文韬', '男子组儿童组', 1414, '江苏省代表队一队', 0.00, 139, 4, '4');
INSERT INTO `jnm_sports` VALUES (14675, '梁德福  郭昌昊  生浩宇  王继凯', '男子组少年组', 1415, '山东省代表队少年组二队', 0.00, 139, 4, '5');
INSERT INTO `jnm_sports` VALUES (14676, '张凯涛  刘腾泽  王运男  张皓博', '男子组少年组', 1416, '山东省代表队少年组一队', 0.00, 139, 4, '6');
INSERT INTO `jnm_sports` VALUES (14677, '阚明利  彭治皓  于存宝  孙树康', '男子组青年组', 1411, '山东省代表队青年组一队', 0.00, 140, 4, '1');
INSERT INTO `jnm_sports` VALUES (14678, '梁厚德  桂红伟  王  毅  孙文锋', '男子组青年组', 1412, '上海市代表队', 0.00, 140, 4, '2');
INSERT INTO `jnm_sports` VALUES (14679, '毛  旋  黄  斌  陈其聪  何军武', '男子组青年组', 1413, '福建省代表队二队', 0.00, 140, 4, '3');
INSERT INTO `jnm_sports` VALUES (14680, '鲁长琛  陈守印  肖凤辉  周文生', '男子组青年组', 1414, '山东省代表队青年组二队', 0.00, 140, 4, '4');
INSERT INTO `jnm_sports` VALUES (14681, '孙鑫宇  陈同财  陈松林  刘泽瑞康', '男子组青年组', 1415, '江苏省代表队一队', 0.00, 140, 4, '5');
INSERT INTO `jnm_sports` VALUES (14682, '吴  迪  赵皖龙  杨柳青  陈子聪', '男子组中青年组', 1416, '安徽省代表队', 0.00, 140, 4, '6');
INSERT INTO `jnm_sports` VALUES (14683, '陈裕涛  张炜鑫  刘超龙  刘文雄', '男子组中青年组', 1411, '福建省代表队二队', 0.00, 141, 4, '1');
INSERT INTO `jnm_sports` VALUES (14684, '冯  锋  张世豪  戚辰轩  张蔼烜', '男子组中老年组', 1412, '安徽省代表队', 0.00, 141, 4, '2');
INSERT INTO `jnm_sports` VALUES (14685, '陈雨杭  赵梓涵  金笑妍  陆芊竹', '女子组儿童组', 1413, '山东省代表队儿童组一队', 0.00, 141, 4, '3');
INSERT INTO `jnm_sports` VALUES (14686, '张雅茹  刘雨溪  潘欣冉  崔润依', '女子组儿童组', 1414, '山东省代表队儿童组二队', 0.00, 141, 4, '4');
INSERT INTO `jnm_sports` VALUES (14687, '钟雅婷  孙美绮  朱煜璇  魏子贻', '女子组少年组', 1415, '山东省代表队少年组二队', 0.00, 141, 4, '5');
INSERT INTO `jnm_sports` VALUES (14688, '侯亚男  李静洁  鲍春慧  牛同萌', '女子组青年组', 1416, '山东省代表队青年组一队', 0.00, 141, 4, '6');
INSERT INTO `jnm_sports` VALUES (14689, '谢红艳  金芮希  李丽诗  白凌璇', '女子组青年组', 1411, '上海市代表队', 0.00, 142, 4, '1');
INSERT INTO `jnm_sports` VALUES (14690, '仵可辛  许弘钰  王贞茹  陈丽媛', '女子组青年组', 1412, '山东省代表队青年组二队', 0.00, 142, 4, '2');
INSERT INTO `jnm_sports` VALUES (14691, '赵玉芝  贺冰冰  黄嘉欣  甘依灵', '女子组中老年组', 1413, '安徽省代表队', 0.00, 142, 4, '3');
INSERT INTO `jnm_sports` VALUES (14692, '姜竣译  耿轶凡  张宸瑜  李悦涵', '混合组儿童组', 1414, '山东省代表队儿童组一队', 0.00, 142, 4, '4');
INSERT INTO `jnm_sports` VALUES (14693, '倪思妍 江晓曦  赖昱辰  胡大山', '混合组儿童组', 1415, '浙江省代表队一队', 0.00, 142, 4, '5');
INSERT INTO `jnm_sports` VALUES (14694, '张海腾  董俊泽  徐瑞隆  巩洛伊', '混合组儿童组', 1416, '山东省代表队儿童组二队', 0.00, 142, 4, '6');
INSERT INTO `jnm_sports` VALUES (14695, '朱晟轩  王诗凯  徐乾晖  施奕辰', '混合组儿童组', 1411, '浙江省代表队二队', 0.00, 143, 4, '1');
INSERT INTO `jnm_sports` VALUES (14696, '桂浩峻  桂小晶  李宸宇  王子阁', '混合组儿童组', 1412, '江苏省代表队二队', 0.00, 143, 4, '2');
INSERT INTO `jnm_sports` VALUES (14697, '潘  政  郭念衡  白梓涵  徐玉玉', '混合组少年组', 1413, '山东省代表队少年组二队', 0.00, 143, 4, '3');
INSERT INTO `jnm_sports` VALUES (14698, '郭振铭、孙海峰、张楚颜、林煜轩', '混合组少年组', 1414, '山东省代表队少年组一队', 0.00, 143, 4, '4');
INSERT INTO `jnm_sports` VALUES (14699, '周凤啟  徐嘉诚  曹先锋  冯熙惠', '混合组青年组', 1415, '山东省代表队青年组一队', 0.00, 143, 4, '5');
INSERT INTO `jnm_sports` VALUES (14700, '鲍智智  虞雅惠  徐梓凌  毛泽文', '混合组青年组', 1416, '浙江省代表队二队', 0.00, 143, 4, '6');
INSERT INTO `jnm_sports` VALUES (14701, '赵崎超  崔雪茹  黄  琰  张培旺', '混合组青年组', 1411, '山东省代表队青年组二队', 0.00, 144, 4, '1');
INSERT INTO `jnm_sports` VALUES (14702, '庞贵荣  窦夏倩  于亚雄  张耀辉', '混合组中青年组', 1412, '山东省代表队中青年组一队', 0.00, 144, 4, '2');
INSERT INTO `jnm_sports` VALUES (14703, '黄  翰  彭  越  王鑫鹏  陈昊冉', '男子组儿童组', 1417, '江苏省代表队一队', 0.00, 144, 4, '3');
INSERT INTO `jnm_sports` VALUES (14704, '徐乐恒  钦子涵  魏邵志  徐曦明', '男子组儿童组', 1418, '江苏省代表队一队', 0.00, 144, 4, '4');
INSERT INTO `jnm_sports` VALUES (14705, '周凤啟  阚明利  陈家乐  于存宝', '男子组青年组', 1419, '山东省代表队青年组一队', 0.00, 144, 4, '5');
INSERT INTO `jnm_sports` VALUES (14706, '郭晨阳  甘容鑫  邹扬扬  符柳彬', '男子组青年组', 1420, '上海市代表队', 0.00, 144, 4, '6');
INSERT INTO `jnm_sports` VALUES (14707, '侍继宇  徐思菡  张雨鑫  汤霖烨', '混合组儿童组', 1421, '江苏省代表队二队', 0.00, 145, 4, '1');
INSERT INTO `jnm_sports` VALUES (14708, '陈昊宇  赵一凡  陈星辰  沈安静', '混合组少年组', 1422, '江苏省代表队二队', 0.00, 145, 4, '2');
INSERT INTO `jnm_sports` VALUES (14709, '方立钊  刘子暄  鲍春慧  刘晓航', '混合组青年组', 1417, '山东省代表队青年组一队', 0.00, 145, 4, '3');
INSERT INTO `jnm_sports` VALUES (14710, '杨  运  谢红艳  覃继媚  孙文锋', '混合组青年组', 1418, '上海市代表队', 0.00, 145, 4, '4');
INSERT INTO `jnm_sports` VALUES (14711, '黄  翰  彭  越  王鑫鹏', '男子组儿童组', 1423, '江苏省代表队一队', 0.00, 146, 4, '1');
INSERT INTO `jnm_sports` VALUES (14712, '孙海峰  林煜轩  郭振铭', '男子组少年组', 1424, '山东省代表队少年组一队', 0.00, 146, 4, '2');
INSERT INTO `jnm_sports` VALUES (14713, '陈昊宇  赵一凡  陈星辰', '男子组少年组', 1425, '江苏省代表队二队', 0.00, 146, 4, '3');
INSERT INTO `jnm_sports` VALUES (14714, '徐乐恒  钦子涵  魏邵志', '男子组少年组', 1426, '江苏省代表队一队', 0.00, 146, 4, '4');
INSERT INTO `jnm_sports` VALUES (14715, '孙树康  刘子暄  刘晓航', '男子组青年组', 1427, '山东省代表队青年组一队', 0.00, 146, 4, '5');
INSERT INTO `jnm_sports` VALUES (14716, '梁厚德  桂红伟  王  毅', '男子组青年组', 1428, '上海市代表队', 0.00, 146, 4, '6');
INSERT INTO `jnm_sports` VALUES (14717, '范嘉伟  黄澄可  吕凌昊', '男子组青年组', 1423, '浙江省代表队二队', 0.00, 147, 4, '1');
INSERT INTO `jnm_sports` VALUES (14718, '陈裕涛  刘超龙  刘文雄', '男子组中青年组', 1424, '福建省代表队二队', 0.00, 147, 4, '2');
INSERT INTO `jnm_sports` VALUES (14719, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1425, '江苏省代表队一队', 0.00, 147, 4, '3');
INSERT INTO `jnm_sports` VALUES (14720, '张冰莹  张宸瑜  赵梓涵', '女子组儿童组', 1426, '山东省代表队儿童组一队', 0.00, 147, 4, '4');
INSERT INTO `jnm_sports` VALUES (14721, '马欣怡  沈安静  沈安平', '女子组少年组', 1427, '江苏省代表队二队', 0.00, 147, 4, '5');
INSERT INTO `jnm_sports` VALUES (14722, '鲍智智  王  宣  张  茜', '女子组青年组', 1428, '浙江省代表队二队', 0.00, 147, 4, '6');
INSERT INTO `jnm_sports` VALUES (14723, '王建强  程泉方  陈心烁', '混合组儿童组', 1423, '山东省代表队儿童组一队', 0.00, 148, 4, '1');
INSERT INTO `jnm_sports` VALUES (14724, '张海腾  董俊泽  巩洛伊', '混合组儿童组', 1424, '山东省代表队儿童组二队', 0.00, 148, 4, '2');
INSERT INTO `jnm_sports` VALUES (14725, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1425, '江苏省代表队二队', 0.00, 148, 4, '3');
INSERT INTO `jnm_sports` VALUES (14726, '王继凯  张嘉然  朱煜璇', '混合组少年组', 1426, '山东省代表队少年组二队', 0.00, 148, 4, '4');
INSERT INTO `jnm_sports` VALUES (14727, '曾善特  叶静怡  金裕凯', '混合组少年组', 1427, '浙江省代表队一队', 0.00, 148, 4, '5');
INSERT INTO `jnm_sports` VALUES (14728, '彭治皓  于正帅  姜  鑫', '混合组青年组', 1428, '山东省代表队青年组一队', 0.00, 148, 4, '6');
INSERT INTO `jnm_sports` VALUES (14729, '李丽诗  白凌璇  曹雪原', '混合组青年组', 1423, '上海市代表队', 0.00, 149, 4, '1');
INSERT INTO `jnm_sports` VALUES (14730, '赵崎超  许弘钰  黄  琰', '混合组青年组', 1424, '山东省代表队青年组二队', 0.00, 149, 4, '2');
INSERT INTO `jnm_sports` VALUES (14731, '詹祈诗  梁建锋  陈俊刚', '混合组中老年组', 1425, '福建省代表队一队', 0.00, 149, 4, '3');
INSERT INTO `jnm_sports` VALUES (14732, '陈心烁', '女子组儿童组', 1429, '山东省代表队儿童组一队', 0.00, 150, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14733, '张冰莹', '女子组儿童组', 1429, '山东省代表队儿童组一队', 0.00, 151, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14734, '曾善特', '女子组儿童组', 1429, '浙江省代表队一队', 0.00, 152, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14735, '辛梓菡', '女子组儿童组', 1429, '山东省代表队儿童组二队', 0.00, 153, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14736, '洪景昕', '女子组儿童组', 1429, '山东省代表队儿童组二队', 0.00, 154, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14737, '甘依灵', '女子组儿童组', 1429, '安徽省代表队', 0.00, 155, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14738, '李琪琪', '女子组儿童组', 1429, '江苏省代表队一队', 0.00, 156, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14739, '曹炎溪', '女子组儿童组', 1429, '江苏省代表队一队', 0.00, 157, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14740, '孙美绮', '女子组少年组', 1429, '山东省代表队少年组二队', 0.00, 158, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14741, '潘欣怡', '女子组少年组', 1429, '山东省代表队少年组二队', 0.00, 159, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14742, '叶静怡', '女子组少年组', 1429, '浙江省代表队一队', 0.00, 160, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14743, '张楚颜', '女子组少年组', 1429, '山东省代表队少年组一队', 0.00, 161, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14744, '付峻菁', '女子组少年组', 1429, '山东省代表队少年组一队', 0.00, 162, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14745, '鲍春慧', '女子组青年组', 1429, '山东省代表队青年组一队', 0.00, 163, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14746, '牛同萌', '女子组青年组', 1429, '山东省代表队青年组一队', 0.00, 164, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14747, '谢红艳', '女子组青年组', 1429, '上海市代表队', 0.00, 165, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14748, '覃继媚', '女子组青年组', 1429, '上海市代表队', 0.00, 166, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14749, '窦夏倩', '女子组中青年组', 1429, '山东省代表队中青年组一队', 0.00, 167, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14750, '贺冰冰', '女子组中青年组', 1429, '安徽省代表队', 0.00, 168, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14751, '赵玉芝', '女子组中老年组', 1429, '安徽省代表队', 0.00, 169, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14752, '王建强  耿轶凡  任世文  程泉方  张宸瑜  陈雨杭  孙海峰  张楚颜  刘腾泽  付峻菁', '不分组别', 1430, '山东省代表队儿童组一队', 0.00, 170, 4, '1');
INSERT INTO `jnm_sports` VALUES (14753, '郭晨阳  甘容鑫  邹扬扬  符柳彬  梁厚德  曹雪原  廖俊杰  蒋俊杰  牛旭生  昝加宇', '不分组别', 1431, '上海市代表队', 0.00, 170, 4, '2');
INSERT INTO `jnm_sports` VALUES (14754, '梁德福  生浩宇  王继凯  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡', '不分组别', 1432, '山东省代表队少年组二队', 0.00, 170, 4, '3');
INSERT INTO `jnm_sports` VALUES (14755, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1430, '浙江省代表队二队', 0.00, 171, 4, '1');
INSERT INTO `jnm_sports` VALUES (14756, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚  梁建锋', '不分组别', 1431, '福建省代表队一队', 0.00, 171, 4, '2');
INSERT INTO `jnm_sports` VALUES (14757, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1432, '山东省代表队青年组二队', 0.00, 171, 4, '3');
INSERT INTO `jnm_sports` VALUES (14758, '金永研', '男子组儿童组', 1433, '山东省代表队儿童组一队', 0.00, 172, 4, '1');
INSERT INTO `jnm_sports` VALUES (14759, '张恺清', '男子组儿童组', 1434, '山东省代表队儿童组一队', 0.00, 172, 4, '2');
INSERT INTO `jnm_sports` VALUES (14760, '金辰恺', '男子组儿童组', 1435, '上海市代表队', 0.00, 172, 4, '3');
INSERT INTO `jnm_sports` VALUES (14761, '林明轩', '男子组儿童组', 1436, '上海市代表队', 0.00, 172, 4, '4');
INSERT INTO `jnm_sports` VALUES (14762, '胡大山', '男子组儿童组', 1437, '浙江省代表队一队', 0.00, 172, 4, '5');
INSERT INTO `jnm_sports` VALUES (14763, '金裕凯', '男子组儿童组', 1438, '浙江省代表队一队', 0.00, 172, 4, '6');
INSERT INTO `jnm_sports` VALUES (14764, '董俊泽', '男子组儿童组', 1433, '山东省代表队儿童组二队', 0.00, 173, 4, '1');
INSERT INTO `jnm_sports` VALUES (14765, '王俊初', '男子组儿童组', 1434, '山东省代表队儿童组二队', 0.00, 173, 4, '2');
INSERT INTO `jnm_sports` VALUES (14766, '朱晟轩', '男子组儿童组', 1439, '浙江省代表队二队', 0.00, 173, 4, '3');
INSERT INTO `jnm_sports` VALUES (14767, '王诗凯', '男子组儿童组', 1440, '浙江省代表队二队', 0.00, 173, 4, '4');
INSERT INTO `jnm_sports` VALUES (14768, '陈子聪', '男子组儿童组', 1441, '安徽省代表队', 0.00, 173, 4, '5');
INSERT INTO `jnm_sports` VALUES (14769, '史轩泽', '男子组儿童组', 1442, '江苏省代表队二队', 0.00, 173, 4, '6');
INSERT INTO `jnm_sports` VALUES (14770, '孙睿韬', '男子组儿童组', 1443, '江苏省代表队二队', 0.00, 174, 4, '1');
INSERT INTO `jnm_sports` VALUES (14771, '梁德福', '男子组少年组', 1444, '山东省代表队少年组二队', 0.00, 174, 4, '2');
INSERT INTO `jnm_sports` VALUES (14772, '王继凯', '男子组少年组', 1439, '山东省代表队少年组二队', 0.00, 174, 4, '3');
INSERT INTO `jnm_sports` VALUES (14773, '舒澍校', '男子组少年组', 1440, '浙江省代表队二队', 0.00, 174, 4, '4');
INSERT INTO `jnm_sports` VALUES (14774, '林煜轩', '男子组少年组', 1441, '山东省代表队少年组一队', 0.00, 174, 4, '5');
INSERT INTO `jnm_sports` VALUES (14775, '张凯涛', '男子组少年组', 1442, '山东省代表队少年组一队', 0.00, 174, 4, '6');
INSERT INTO `jnm_sports` VALUES (14776, '陈裕涛', '男子组少年组', 1443, '福建省代表队二队', 0.00, 175, 4, '1');
INSERT INTO `jnm_sports` VALUES (14777, '王硕', '男子组少年组', 1444, '江苏省代表队二队', 0.00, 175, 4, '2');
INSERT INTO `jnm_sports` VALUES (14778, '孙树康', '男子组青年组', 1439, '山东省代表队青年组一队', 0.00, 175, 4, '3');
INSERT INTO `jnm_sports` VALUES (14779, '徐嘉诚', '男子组青年组', 1440, '山东省代表队青年组一队', 0.00, 175, 4, '4');
INSERT INTO `jnm_sports` VALUES (14780, '蒋俊杰', '男子组青年组', 1441, '上海市代表队', 0.00, 175, 4, '5');
INSERT INTO `jnm_sports` VALUES (14781, '昝加宇', '男子组青年组', 1442, '上海市代表队', 0.00, 175, 4, '6');
INSERT INTO `jnm_sports` VALUES (14782, '段中飞', '男子组青年组', 1443, '浙江省代表队一队', 0.00, 176, 4, '1');
INSERT INTO `jnm_sports` VALUES (14783, '徐梓凌', '男子组青年组', 1444, '浙江省代表队二队', 0.00, 176, 4, '2');
INSERT INTO `jnm_sports` VALUES (14784, '毛泽文', '男子组青年组', 1439, '浙江省代表队二队', 0.00, 176, 4, '3');
INSERT INTO `jnm_sports` VALUES (14785, '毛旋', '男子组青年组', 1440, '福建省代表队二队', 0.00, 176, 4, '4');
INSERT INTO `jnm_sports` VALUES (14786, '黄斌', '男子组青年组', 1441, '福建省代表队二队', 0.00, 176, 4, '5');
INSERT INTO `jnm_sports` VALUES (14787, '肖凤辉', '男子组青年组', 1442, '山东省代表队青年组二队', 0.00, 176, 4, '6');
INSERT INTO `jnm_sports` VALUES (14788, '周文生', '男子组青年组', 1443, '山东省代表队青年组二队', 0.00, 177, 4, '1');
INSERT INTO `jnm_sports` VALUES (14789, '于亚雄', '男子组中青年组', 1444, '山东省代表队中青年组一队', 0.00, 177, 4, '2');
INSERT INTO `jnm_sports` VALUES (14790, '张耀辉', '男子组中青年组', 1439, '山东省代表队中青年组一队', 0.00, 177, 4, '3');
INSERT INTO `jnm_sports` VALUES (14791, '赵皖龙', '男子组中青年组', 1440, '安徽省代表队', 0.00, 177, 4, '4');
INSERT INTO `jnm_sports` VALUES (14792, '杨柳青', '男子组中青年组', 1441, '安徽省代表队', 0.00, 177, 4, '5');
INSERT INTO `jnm_sports` VALUES (14793, '刘文雄', '男子组中青年组', 1442, '福建省代表队二队', 0.00, 177, 4, '6');
INSERT INTO `jnm_sports` VALUES (14794, '李磊', '男子组中老年组', 1443, '山东省代表队中老年组一队', 0.00, 178, 4, '1');
INSERT INTO `jnm_sports` VALUES (14795, '冯锋', '男子组中老年组', 1444, '安徽省代表队', 0.00, 178, 4, '2');
INSERT INTO `jnm_sports` VALUES (14796, '阚明利  彭治皓  程杰睿  于正帅  方立钊  徐嘉诚  曹先锋  姜  鑫  宋欣阳  陈家乐', '不分组别', 1445, '山东省代表队青年组一队', 0.00, 179, 4, '1');
INSERT INTO `jnm_sports` VALUES (14797, '王建强  耿轶凡  任世文  程泉方  陈心烁  张冰莹  陈雨杭  张楚颜  刘腾泽  张凯涛', '不分组别', 1446, '山东省代表队儿童组一队', 0.00, 179, 4, '2');
INSERT INTO `jnm_sports` VALUES (14798, '潘  政  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡  徐玉玉  苗立华', '不分组别', 1447, '山东省代表队少年组二队', 0.00, 179, 4, '3');
INSERT INTO `jnm_sports` VALUES (14799, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1448, '浙江省代表队二队', 0.00, 179, 4, '4');
INSERT INTO `jnm_sports` VALUES (14800, '吴  迪  赵皖龙  贺冰冰  张世豪  黄嘉欣  陈子聪  戚辰轩  甘依灵  晏一帆  张蔼烜', '不分组别', 1449, '安徽省代表队', 0.00, 179, 4, '5');
INSERT INTO `jnm_sports` VALUES (14801, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1450, '山东省代表队青年组二队', 0.00, 179, 4, '6');
INSERT INTO `jnm_sports` VALUES (14802, '陈心烁', '女子组儿童组', 1451, '山东省代表队儿童组一队', 0.00, 180, 4, '1');
INSERT INTO `jnm_sports` VALUES (14803, '张冰莹', '女子组儿童组', 1452, '山东省代表队儿童组一队', 0.00, 180, 4, '2');
INSERT INTO `jnm_sports` VALUES (14804, '倪思妍', '女子组儿童组', 1453, '浙江省代表队一队', 0.00, 180, 4, '3');
INSERT INTO `jnm_sports` VALUES (14805, '江晓曦', '女子组儿童组', 1454, '浙江省代表队一队', 0.00, 180, 4, '4');
INSERT INTO `jnm_sports` VALUES (14806, '辛梓菡', '女子组儿童组', 1455, '山东省代表队儿童组二队', 0.00, 180, 4, '5');
INSERT INTO `jnm_sports` VALUES (14807, '曹馨月', '女子组儿童组', 1456, '山东省代表队儿童组二队', 0.00, 180, 4, '6');
INSERT INTO `jnm_sports` VALUES (14808, '吴奕楠', '女子组儿童组', 1451, '浙江省代表队二队', 0.00, 181, 4, '1');
INSERT INTO `jnm_sports` VALUES (14809, '施奕辰', '女子组儿童组', 1452, '浙江省代表队二队', 0.00, 181, 4, '2');
INSERT INTO `jnm_sports` VALUES (14810, '陈冰心', '女子组儿童组', 1453, '福建省代表队一队', 0.00, 181, 4, '3');
INSERT INTO `jnm_sports` VALUES (14811, '张汤艺', '女子组儿童组', 1454, '福建省代表队一队', 0.00, 181, 4, '4');
INSERT INTO `jnm_sports` VALUES (14812, '孙美绮', '女子组少年组', 1455, '山东省代表队少年组二队', 0.00, 181, 4, '5');
INSERT INTO `jnm_sports` VALUES (14813, '朱煜璇', '女子组少年组', 1456, '山东省代表队少年组二队', 0.00, 181, 4, '6');
INSERT INTO `jnm_sports` VALUES (14814, '付峻菁', '女子组少年组', 1451, '山东省代表队少年组一队', 0.00, 182, 4, '1');
INSERT INTO `jnm_sports` VALUES (14815, '杨雅茹', '女子组少年组', 1452, '山东省代表队少年组一队', 0.00, 182, 4, '2');
INSERT INTO `jnm_sports` VALUES (14816, '冯熙惠', '女子组青年组', 1453, '山东省代表队青年组一队', 0.00, 182, 4, '3');
INSERT INTO `jnm_sports` VALUES (14817, '鲍春慧', '女子组青年组', 1454, '山东省代表队青年组一队', 0.00, 182, 4, '4');
INSERT INTO `jnm_sports` VALUES (14818, '谢红艳', '女子组青年组', 1455, '上海市代表队', 0.00, 182, 4, '5');
INSERT INTO `jnm_sports` VALUES (14819, '鲍智智', '女子组青年组', 1456, '浙江省代表队二队', 0.00, 182, 4, '6');
INSERT INTO `jnm_sports` VALUES (14820, '王宣', '女子组青年组', 1451, '浙江省代表队二队', 0.00, 183, 4, '1');
INSERT INTO `jnm_sports` VALUES (14821, '詹祈诗', '女子组青年组', 1452, '福建省代表队一队', 0.00, 183, 4, '2');
INSERT INTO `jnm_sports` VALUES (14822, '崔雪茹', '女子组青年组', 1453, '山东省代表队青年组二队', 0.00, 183, 4, '3');
INSERT INTO `jnm_sports` VALUES (14823, '陈丽媛', '女子组青年组', 1454, '山东省代表队青年组二队', 0.00, 183, 4, '4');
INSERT INTO `jnm_sports` VALUES (14824, '庞贵荣', '女子组中青年组', 1455, '山东省代表队中青年组一队', 0.00, 183, 4, '5');
INSERT INTO `jnm_sports` VALUES (14825, '贺冰冰', '女子组中青年组', 1456, '安徽省代表队', 0.00, 183, 4, '6');
INSERT INTO `jnm_sports` VALUES (14826, '赵玉芝', '女子组中老年组', 1451, '安徽省代表队', 0.00, 184, 4, '1');
INSERT INTO `jnm_sports` VALUES (14827, '金永研  张恺清', '男子组儿童组', 1457, '山东省代表队儿童组一队', 0.00, 96, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14828, '林明轩  金辰恺', '男子组儿童组', 1457, '上海市代表队', 0.00, 97, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14829, '赖昱辰  胡大山', '男子组儿童组', 1457, '浙江省代表队一队', 0.00, 98, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14830, '张海腾  董俊泽 ', '男子组儿童组', 1457, '山东省代表队儿童组二队', 0.00, 99, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14831, '徐圣鑫  史楷杰', '男子组儿童组', 1457, '江苏省代表队二队', 0.00, 100, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14832, '黄  翰  彭  越', '男子组儿童组', 1457, '江苏省代表队一队', 0.00, 101, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14833, '郭振铭  林煜轩', '男子组少年组', 1457, '山东省代表队少年组一队', 0.00, 102, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14834, '刘偌熙  徐曦明', '男子组少年组', 1457, '江苏省代表队一队', 0.00, 103, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14835, '周凤啟  于存宝', '男子组青年组', 1457, '山东省代表队青年组一队', 0.00, 104, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14836, '张  潇  孙文锋', '男子组青年组', 1457, '上海市代表队', 0.00, 105, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14837, '何军武  郭本华', '男子组青年组', 1457, '福建省代表队二队', 0.00, 106, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14838, '孙鑫宇  陈同财', '男子组青年组', 1457, '江苏省代表队一队', 0.00, 107, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14839, '张冰莹  张宸瑜', '女子组儿童组', 1457, '山东省代表队儿童组一队', 0.00, 108, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14840, '潘欣冉  洪景昕', '女子组儿童组', 1457, '山东省代表队儿童组二队', 0.00, 109, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14841, '付峻菁  杨雅茹', '女子组少年组', 1457, '山东省代表队少年组一队', 0.00, 110, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14842, '李静洁  牛同萌', '女子组青年组', 1457, '山东省代表队青年组一队', 0.00, 111, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14843, '姜竣译  李悦涵', '混合组儿童组', 1457, '山东省代表队儿童组一队', 0.00, 112, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14844, '于  果  辛梓菡', '混合组儿童组', 1457, '山东省代表队儿童组二队', 0.00, 113, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14845, '曹炎溪  翁梓祺', '混合组儿童组', 1457, '江苏省代表队一队', 0.00, 114, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14846, '叶静怡  金裕凯', '混合组少年组', 1457, '浙江省代表队一队', 0.00, 115, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14847, '刘子暄  鲍春慧', '混合组青年组', 1457, '山东省代表队青年组一队', 0.00, 116, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14848, '杨  运  覃继媚', '混合组青年组', 1457, '上海市代表队', 0.00, 117, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14849, '金永研  张恺清', '男子组儿童组', 1458, '山东省代表队儿童组一队', 0.00, 118, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14850, '赵一凡  陈星辰', '男子组少年组', 1458, '江苏省代表队二队', 0.00, 119, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14851, '方立钊  刘晓航', '男子组青年组', 1458, '山东省代表队青年组一队', 0.00, 120, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14852, '桂红伟  王  毅', '男子组青年组', 1458, '上海市代表队', 0.00, 121, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14853, '王东奎  谢壮壮', '男子组中青年组', 1458, '浙江省代表队一队', 0.00, 122, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14854, '陈心烁  张冰莹', '女子组儿童组', 1458, '山东省代表队儿童组一队', 0.00, 123, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14855, '沈安静  沈安平', '女子组少年组', 1458, '江苏省代表队二队', 0.00, 124, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14856, '王建强  程泉方', '混合组儿童组', 1458, '山东省代表队儿童组一队', 0.00, 125, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14857, '曹炎溪  翁梓祺', '混合组儿童组', 1458, '江苏省代表队一队', 0.00, 126, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14858, '侍继宇  徐思菡', '混合组儿童组', 1458, '江苏省代表队二队', 0.00, 127, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14859, '张茂然  王一涵', '混合组少年组', 1458, '山东省代表队少年组二队', 0.00, 128, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14860, '陈昊宇  马欣怡', '混合组少年组', 1458, '江苏省代表队二队', 0.00, 129, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14861, '许弘钰  黄  琰', '混合组青年组', 1458, '山东省代表队青年组二队', 0.00, 130, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14862, '方立钊  孙树康  刘子暄', '男子组青年组', 1459, '山东省代表队青年组一队', 0.00, 131, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14863, '毛  旋  黄  斌  陈其聪', '男子组青年组', 1459, '福建省代表队二队', 0.00, 132, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14864, '王东奎  谢壮壮  段中飞', '男子组中青年组', 1459, '浙江省代表队一队', 0.00, 133, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14865, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1459, '江苏省代表队一队', 0.00, 134, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14866, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1459, '江苏省代表队二队', 0.00, 135, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14867, '陈昊宇  赵一凡  马欣怡', '混合组少年组', 1459, '江苏省代表队二队', 0.00, 136, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14868, '付峻菁  张凯涛  王运男', '混合组少年组', 1459, '山东省代表队少年组一队', 0.00, 137, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14869, '杨  运  张  潇  金芮希', '混合组青年组', 1459, '上海市代表队', 0.00, 138, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14870, '金永研  张恺清  魏子程  李武赫', '男子组儿童组', 1460, '山东省代表队儿童组一队', 0.00, 139, 4, '1');
INSERT INTO `jnm_sports` VALUES (14871, '樊鸣轩  林明轩  王嘉睿  金辰恺', '男子组儿童组', 1461, '上海市代表队', 0.00, 139, 4, '2');
INSERT INTO `jnm_sports` VALUES (14872, '于  果  鹿皓清  杜  政  胡振泽', '男子组儿童组', 1462, '山东省代表队儿童组二队', 0.00, 139, 4, '3');
INSERT INTO `jnm_sports` VALUES (14873, '黄  翰  彭  越  王鑫鹏  周文韬', '男子组儿童组', 1463, '江苏省代表队一队', 0.00, 139, 4, '4');
INSERT INTO `jnm_sports` VALUES (14874, '梁德福  郭昌昊  生浩宇  王继凯', '男子组少年组', 1464, '山东省代表队少年组二队', 0.00, 139, 4, '5');
INSERT INTO `jnm_sports` VALUES (14875, '张凯涛  刘腾泽  王运男  张皓博', '男子组少年组', 1465, '山东省代表队少年组一队', 0.00, 139, 4, '6');
INSERT INTO `jnm_sports` VALUES (14876, '阚明利  彭治皓  于存宝  孙树康', '男子组青年组', 1460, '山东省代表队青年组一队', 0.00, 140, 4, '1');
INSERT INTO `jnm_sports` VALUES (14877, '梁厚德  桂红伟  王  毅  孙文锋', '男子组青年组', 1461, '上海市代表队', 0.00, 140, 4, '2');
INSERT INTO `jnm_sports` VALUES (14878, '毛  旋  黄  斌  陈其聪  何军武', '男子组青年组', 1462, '福建省代表队二队', 0.00, 140, 4, '3');
INSERT INTO `jnm_sports` VALUES (14879, '鲁长琛  陈守印  肖凤辉  周文生', '男子组青年组', 1463, '山东省代表队青年组二队', 0.00, 140, 4, '4');
INSERT INTO `jnm_sports` VALUES (14880, '孙鑫宇  陈同财  陈松林  刘泽瑞康', '男子组青年组', 1464, '江苏省代表队一队', 0.00, 140, 4, '5');
INSERT INTO `jnm_sports` VALUES (14881, '吴  迪  赵皖龙  杨柳青  陈子聪', '男子组中青年组', 1465, '安徽省代表队', 0.00, 140, 4, '6');
INSERT INTO `jnm_sports` VALUES (14882, '陈裕涛  张炜鑫  刘超龙  刘文雄', '男子组中青年组', 1460, '福建省代表队二队', 0.00, 141, 4, '1');
INSERT INTO `jnm_sports` VALUES (14883, '冯  锋  张世豪  戚辰轩  张蔼烜', '男子组中老年组', 1461, '安徽省代表队', 0.00, 141, 4, '2');
INSERT INTO `jnm_sports` VALUES (14884, '陈雨杭  赵梓涵  金笑妍  陆芊竹', '女子组儿童组', 1462, '山东省代表队儿童组一队', 0.00, 141, 4, '3');
INSERT INTO `jnm_sports` VALUES (14885, '张雅茹  刘雨溪  潘欣冉  崔润依', '女子组儿童组', 1463, '山东省代表队儿童组二队', 0.00, 141, 4, '4');
INSERT INTO `jnm_sports` VALUES (14886, '钟雅婷  孙美绮  朱煜璇  魏子贻', '女子组少年组', 1464, '山东省代表队少年组二队', 0.00, 141, 4, '5');
INSERT INTO `jnm_sports` VALUES (14887, '侯亚男  李静洁  鲍春慧  牛同萌', '女子组青年组', 1465, '山东省代表队青年组一队', 0.00, 141, 4, '6');
INSERT INTO `jnm_sports` VALUES (14888, '谢红艳  金芮希  李丽诗  白凌璇', '女子组青年组', 1460, '上海市代表队', 0.00, 142, 4, '1');
INSERT INTO `jnm_sports` VALUES (14889, '仵可辛  许弘钰  王贞茹  陈丽媛', '女子组青年组', 1461, '山东省代表队青年组二队', 0.00, 142, 4, '2');
INSERT INTO `jnm_sports` VALUES (14890, '赵玉芝  贺冰冰  黄嘉欣  甘依灵', '女子组中老年组', 1462, '安徽省代表队', 0.00, 142, 4, '3');
INSERT INTO `jnm_sports` VALUES (14891, '姜竣译  耿轶凡  张宸瑜  李悦涵', '混合组儿童组', 1463, '山东省代表队儿童组一队', 0.00, 142, 4, '4');
INSERT INTO `jnm_sports` VALUES (14892, '倪思妍 江晓曦  赖昱辰  胡大山', '混合组儿童组', 1464, '浙江省代表队一队', 0.00, 142, 4, '5');
INSERT INTO `jnm_sports` VALUES (14893, '张海腾  董俊泽  徐瑞隆  巩洛伊', '混合组儿童组', 1465, '山东省代表队儿童组二队', 0.00, 142, 4, '6');
INSERT INTO `jnm_sports` VALUES (14894, '朱晟轩  王诗凯  徐乾晖  施奕辰', '混合组儿童组', 1460, '浙江省代表队二队', 0.00, 143, 4, '1');
INSERT INTO `jnm_sports` VALUES (14895, '桂浩峻  桂小晶  李宸宇  王子阁', '混合组儿童组', 1461, '江苏省代表队二队', 0.00, 143, 4, '2');
INSERT INTO `jnm_sports` VALUES (14896, '潘  政  郭念衡  白梓涵  徐玉玉', '混合组少年组', 1462, '山东省代表队少年组二队', 0.00, 143, 4, '3');
INSERT INTO `jnm_sports` VALUES (14897, '郭振铭、孙海峰、张楚颜、林煜轩', '混合组少年组', 1463, '山东省代表队少年组一队', 0.00, 143, 4, '4');
INSERT INTO `jnm_sports` VALUES (14898, '周凤啟  徐嘉诚  曹先锋  冯熙惠', '混合组青年组', 1464, '山东省代表队青年组一队', 0.00, 143, 4, '5');
INSERT INTO `jnm_sports` VALUES (14899, '鲍智智  虞雅惠  徐梓凌  毛泽文', '混合组青年组', 1465, '浙江省代表队二队', 0.00, 143, 4, '6');
INSERT INTO `jnm_sports` VALUES (14900, '赵崎超  崔雪茹  黄  琰  张培旺', '混合组青年组', 1460, '山东省代表队青年组二队', 0.00, 144, 4, '1');
INSERT INTO `jnm_sports` VALUES (14901, '庞贵荣  窦夏倩  于亚雄  张耀辉', '混合组中青年组', 1461, '山东省代表队中青年组一队', 0.00, 144, 4, '2');
INSERT INTO `jnm_sports` VALUES (14902, '黄  翰  彭  越  王鑫鹏  陈昊冉', '男子组儿童组', 1466, '江苏省代表队一队', 0.00, 144, 4, '3');
INSERT INTO `jnm_sports` VALUES (14903, '徐乐恒  钦子涵  魏邵志  徐曦明', '男子组儿童组', 1467, '江苏省代表队一队', 0.00, 144, 4, '4');
INSERT INTO `jnm_sports` VALUES (14904, '周凤啟  阚明利  陈家乐  于存宝', '男子组青年组', 1468, '山东省代表队青年组一队', 0.00, 144, 4, '5');
INSERT INTO `jnm_sports` VALUES (14905, '郭晨阳  甘容鑫  邹扬扬  符柳彬', '男子组青年组', 1469, '上海市代表队', 0.00, 144, 4, '6');
INSERT INTO `jnm_sports` VALUES (14906, '侍继宇  徐思菡  张雨鑫  汤霖烨', '混合组儿童组', 1470, '江苏省代表队二队', 0.00, 145, 4, '1');
INSERT INTO `jnm_sports` VALUES (14907, '陈昊宇  赵一凡  陈星辰  沈安静', '混合组少年组', 1471, '江苏省代表队二队', 0.00, 145, 4, '2');
INSERT INTO `jnm_sports` VALUES (14908, '方立钊  刘子暄  鲍春慧  刘晓航', '混合组青年组', 1466, '山东省代表队青年组一队', 0.00, 145, 4, '3');
INSERT INTO `jnm_sports` VALUES (14909, '杨  运  谢红艳  覃继媚  孙文锋', '混合组青年组', 1467, '上海市代表队', 0.00, 145, 4, '4');
INSERT INTO `jnm_sports` VALUES (14910, '黄  翰  彭  越  王鑫鹏', '男子组儿童组', 1472, '江苏省代表队一队', 0.00, 146, 4, '1');
INSERT INTO `jnm_sports` VALUES (14911, '孙海峰  林煜轩  郭振铭', '男子组少年组', 1473, '山东省代表队少年组一队', 0.00, 146, 4, '2');
INSERT INTO `jnm_sports` VALUES (14912, '陈昊宇  赵一凡  陈星辰', '男子组少年组', 1474, '江苏省代表队二队', 0.00, 146, 4, '3');
INSERT INTO `jnm_sports` VALUES (14913, '徐乐恒  钦子涵  魏邵志', '男子组少年组', 1475, '江苏省代表队一队', 0.00, 146, 4, '4');
INSERT INTO `jnm_sports` VALUES (14914, '孙树康  刘子暄  刘晓航', '男子组青年组', 1476, '山东省代表队青年组一队', 0.00, 146, 4, '5');
INSERT INTO `jnm_sports` VALUES (14915, '梁厚德  桂红伟  王  毅', '男子组青年组', 1477, '上海市代表队', 0.00, 146, 4, '6');
INSERT INTO `jnm_sports` VALUES (14916, '范嘉伟  黄澄可  吕凌昊', '男子组青年组', 1472, '浙江省代表队二队', 0.00, 147, 4, '1');
INSERT INTO `jnm_sports` VALUES (14917, '陈裕涛  刘超龙  刘文雄', '男子组中青年组', 1473, '福建省代表队二队', 0.00, 147, 4, '2');
INSERT INTO `jnm_sports` VALUES (14918, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1474, '江苏省代表队一队', 0.00, 147, 4, '3');
INSERT INTO `jnm_sports` VALUES (14919, '张冰莹  张宸瑜  赵梓涵', '女子组儿童组', 1475, '山东省代表队儿童组一队', 0.00, 147, 4, '4');
INSERT INTO `jnm_sports` VALUES (14920, '马欣怡  沈安静  沈安平', '女子组少年组', 1476, '江苏省代表队二队', 0.00, 147, 4, '5');
INSERT INTO `jnm_sports` VALUES (14921, '鲍智智  王  宣  张  茜', '女子组青年组', 1477, '浙江省代表队二队', 0.00, 147, 4, '6');
INSERT INTO `jnm_sports` VALUES (14922, '王建强  程泉方  陈心烁', '混合组儿童组', 1472, '山东省代表队儿童组一队', 0.00, 148, 4, '1');
INSERT INTO `jnm_sports` VALUES (14923, '张海腾  董俊泽  巩洛伊', '混合组儿童组', 1473, '山东省代表队儿童组二队', 0.00, 148, 4, '2');
INSERT INTO `jnm_sports` VALUES (14924, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1474, '江苏省代表队二队', 0.00, 148, 4, '3');
INSERT INTO `jnm_sports` VALUES (14925, '王继凯  张嘉然  朱煜璇', '混合组少年组', 1475, '山东省代表队少年组二队', 0.00, 148, 4, '4');
INSERT INTO `jnm_sports` VALUES (14926, '曾善特  叶静怡  金裕凯', '混合组少年组', 1476, '浙江省代表队一队', 0.00, 148, 4, '5');
INSERT INTO `jnm_sports` VALUES (14927, '彭治皓  于正帅  姜  鑫', '混合组青年组', 1477, '山东省代表队青年组一队', 0.00, 148, 4, '6');
INSERT INTO `jnm_sports` VALUES (14928, '李丽诗  白凌璇  曹雪原', '混合组青年组', 1472, '上海市代表队', 0.00, 149, 4, '1');
INSERT INTO `jnm_sports` VALUES (14929, '赵崎超  许弘钰  黄  琰', '混合组青年组', 1473, '山东省代表队青年组二队', 0.00, 149, 4, '2');
INSERT INTO `jnm_sports` VALUES (14930, '詹祈诗  梁建锋  陈俊刚', '混合组中老年组', 1474, '福建省代表队一队', 0.00, 149, 4, '3');
INSERT INTO `jnm_sports` VALUES (14931, '陈心烁', '女子组儿童组', 1478, '山东省代表队儿童组一队', 0.00, 150, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14932, '张冰莹', '女子组儿童组', 1478, '山东省代表队儿童组一队', 0.00, 151, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14933, '曾善特', '女子组儿童组', 1478, '浙江省代表队一队', 0.00, 152, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14934, '辛梓菡', '女子组儿童组', 1478, '山东省代表队儿童组二队', 0.00, 153, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14935, '洪景昕', '女子组儿童组', 1478, '山东省代表队儿童组二队', 0.00, 154, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14936, '甘依灵', '女子组儿童组', 1478, '安徽省代表队', 0.00, 155, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14937, '李琪琪', '女子组儿童组', 1478, '江苏省代表队一队', 0.00, 156, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14938, '曹炎溪', '女子组儿童组', 1478, '江苏省代表队一队', 0.00, 157, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14939, '孙美绮', '女子组少年组', 1478, '山东省代表队少年组二队', 0.00, 158, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14940, '潘欣怡', '女子组少年组', 1478, '山东省代表队少年组二队', 0.00, 159, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14941, '叶静怡', '女子组少年组', 1478, '浙江省代表队一队', 0.00, 160, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14942, '张楚颜', '女子组少年组', 1478, '山东省代表队少年组一队', 0.00, 161, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14943, '付峻菁', '女子组少年组', 1478, '山东省代表队少年组一队', 0.00, 162, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14944, '鲍春慧', '女子组青年组', 1478, '山东省代表队青年组一队', 0.00, 163, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14945, '牛同萌', '女子组青年组', 1478, '山东省代表队青年组一队', 0.00, 164, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14946, '谢红艳', '女子组青年组', 1478, '上海市代表队', 0.00, 165, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14947, '覃继媚', '女子组青年组', 1478, '上海市代表队', 0.00, 166, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14948, '窦夏倩', '女子组中青年组', 1478, '山东省代表队中青年组一队', 0.00, 167, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14949, '贺冰冰', '女子组中青年组', 1478, '安徽省代表队', 0.00, 168, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14950, '赵玉芝', '女子组中老年组', 1478, '安徽省代表队', 0.00, 169, 12, 'A');
INSERT INTO `jnm_sports` VALUES (14951, '王建强  耿轶凡  任世文  程泉方  张宸瑜  陈雨杭  孙海峰  张楚颜  刘腾泽  付峻菁', '不分组别', 1479, '山东省代表队儿童组一队', 0.00, 170, 4, '1');
INSERT INTO `jnm_sports` VALUES (14952, '郭晨阳  甘容鑫  邹扬扬  符柳彬  梁厚德  曹雪原  廖俊杰  蒋俊杰  牛旭生  昝加宇', '不分组别', 1480, '上海市代表队', 0.00, 170, 4, '2');
INSERT INTO `jnm_sports` VALUES (14953, '梁德福  生浩宇  王继凯  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡', '不分组别', 1481, '山东省代表队少年组二队', 0.00, 170, 4, '3');
INSERT INTO `jnm_sports` VALUES (14954, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1479, '浙江省代表队二队', 0.00, 171, 4, '1');
INSERT INTO `jnm_sports` VALUES (14955, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚  梁建锋', '不分组别', 1480, '福建省代表队一队', 0.00, 171, 4, '2');
INSERT INTO `jnm_sports` VALUES (14956, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1481, '山东省代表队青年组二队', 0.00, 171, 4, '3');
INSERT INTO `jnm_sports` VALUES (14957, '金永研', '男子组儿童组', 1482, '山东省代表队儿童组一队', 0.00, 172, 4, '1');
INSERT INTO `jnm_sports` VALUES (14958, '张恺清', '男子组儿童组', 1483, '山东省代表队儿童组一队', 0.00, 172, 4, '2');
INSERT INTO `jnm_sports` VALUES (14959, '金辰恺', '男子组儿童组', 1484, '上海市代表队', 0.00, 172, 4, '3');
INSERT INTO `jnm_sports` VALUES (14960, '林明轩', '男子组儿童组', 1485, '上海市代表队', 0.00, 172, 4, '4');
INSERT INTO `jnm_sports` VALUES (14961, '胡大山', '男子组儿童组', 1486, '浙江省代表队一队', 0.00, 172, 4, '5');
INSERT INTO `jnm_sports` VALUES (14962, '金裕凯', '男子组儿童组', 1487, '浙江省代表队一队', 0.00, 172, 4, '6');
INSERT INTO `jnm_sports` VALUES (14963, '董俊泽', '男子组儿童组', 1482, '山东省代表队儿童组二队', 0.00, 173, 4, '1');
INSERT INTO `jnm_sports` VALUES (14964, '王俊初', '男子组儿童组', 1483, '山东省代表队儿童组二队', 0.00, 173, 4, '2');
INSERT INTO `jnm_sports` VALUES (14965, '朱晟轩', '男子组儿童组', 1484, '浙江省代表队二队', 0.00, 173, 4, '3');
INSERT INTO `jnm_sports` VALUES (14966, '王诗凯', '男子组儿童组', 1485, '浙江省代表队二队', 0.00, 173, 4, '4');
INSERT INTO `jnm_sports` VALUES (14967, '陈子聪', '男子组儿童组', 1486, '安徽省代表队', 0.00, 173, 4, '5');
INSERT INTO `jnm_sports` VALUES (14968, '史轩泽', '男子组儿童组', 1487, '江苏省代表队二队', 0.00, 173, 4, '6');
INSERT INTO `jnm_sports` VALUES (14969, '孙睿韬', '男子组儿童组', 1482, '江苏省代表队二队', 0.00, 174, 4, '1');
INSERT INTO `jnm_sports` VALUES (14970, '梁德福', '男子组少年组', 1483, '山东省代表队少年组二队', 0.00, 174, 4, '2');
INSERT INTO `jnm_sports` VALUES (14971, '王继凯', '男子组少年组', 1484, '山东省代表队少年组二队', 0.00, 174, 4, '3');
INSERT INTO `jnm_sports` VALUES (14972, '舒澍校', '男子组少年组', 1485, '浙江省代表队二队', 0.00, 174, 4, '4');
INSERT INTO `jnm_sports` VALUES (14973, '林煜轩', '男子组少年组', 1486, '山东省代表队少年组一队', 0.00, 174, 4, '5');
INSERT INTO `jnm_sports` VALUES (14974, '张凯涛', '男子组少年组', 1487, '山东省代表队少年组一队', 0.00, 174, 4, '6');
INSERT INTO `jnm_sports` VALUES (14975, '陈裕涛', '男子组少年组', 1482, '福建省代表队二队', 0.00, 175, 4, '1');
INSERT INTO `jnm_sports` VALUES (14976, '王硕', '男子组少年组', 1483, '江苏省代表队二队', 0.00, 175, 4, '2');
INSERT INTO `jnm_sports` VALUES (14977, '孙树康', '男子组青年组', 1484, '山东省代表队青年组一队', 0.00, 175, 4, '3');
INSERT INTO `jnm_sports` VALUES (14978, '徐嘉诚', '男子组青年组', 1485, '山东省代表队青年组一队', 0.00, 175, 4, '4');
INSERT INTO `jnm_sports` VALUES (14979, '蒋俊杰', '男子组青年组', 1486, '上海市代表队', 0.00, 175, 4, '5');
INSERT INTO `jnm_sports` VALUES (14980, '昝加宇', '男子组青年组', 1487, '上海市代表队', 0.00, 175, 4, '6');
INSERT INTO `jnm_sports` VALUES (14981, '段中飞', '男子组青年组', 1482, '浙江省代表队一队', 0.00, 176, 4, '1');
INSERT INTO `jnm_sports` VALUES (14982, '徐梓凌', '男子组青年组', 1483, '浙江省代表队二队', 0.00, 176, 4, '2');
INSERT INTO `jnm_sports` VALUES (14983, '毛泽文', '男子组青年组', 1484, '浙江省代表队二队', 0.00, 176, 4, '3');
INSERT INTO `jnm_sports` VALUES (14984, '毛旋', '男子组青年组', 1485, '福建省代表队二队', 0.00, 176, 4, '4');
INSERT INTO `jnm_sports` VALUES (14985, '黄斌', '男子组青年组', 1486, '福建省代表队二队', 0.00, 176, 4, '5');
INSERT INTO `jnm_sports` VALUES (14986, '肖凤辉', '男子组青年组', 1487, '山东省代表队青年组二队', 0.00, 176, 4, '6');
INSERT INTO `jnm_sports` VALUES (14987, '周文生', '男子组青年组', 1482, '山东省代表队青年组二队', 0.00, 177, 4, '1');
INSERT INTO `jnm_sports` VALUES (14988, '于亚雄', '男子组中青年组', 1483, '山东省代表队中青年组一队', 0.00, 177, 4, '2');
INSERT INTO `jnm_sports` VALUES (14989, '张耀辉', '男子组中青年组', 1484, '山东省代表队中青年组一队', 0.00, 177, 4, '3');
INSERT INTO `jnm_sports` VALUES (14990, '赵皖龙', '男子组中青年组', 1485, '安徽省代表队', 0.00, 177, 4, '4');
INSERT INTO `jnm_sports` VALUES (14991, '杨柳青', '男子组中青年组', 1486, '安徽省代表队', 0.00, 177, 4, '5');
INSERT INTO `jnm_sports` VALUES (14992, '刘文雄', '男子组中青年组', 1487, '福建省代表队二队', 0.00, 177, 4, '6');
INSERT INTO `jnm_sports` VALUES (14993, '李磊', '男子组中老年组', 1482, '山东省代表队中老年组一队', 0.00, 178, 4, '1');
INSERT INTO `jnm_sports` VALUES (14994, '冯锋', '男子组中老年组', 1483, '安徽省代表队', 0.00, 178, 4, '2');
INSERT INTO `jnm_sports` VALUES (14995, '阚明利  彭治皓  程杰睿  于正帅  方立钊  徐嘉诚  曹先锋  姜  鑫  宋欣阳  陈家乐', '不分组别', 1488, '山东省代表队青年组一队', 0.00, 179, 4, '1');
INSERT INTO `jnm_sports` VALUES (14996, '王建强  耿轶凡  任世文  程泉方  陈心烁  张冰莹  陈雨杭  张楚颜  刘腾泽  张凯涛', '不分组别', 1489, '山东省代表队儿童组一队', 0.00, 179, 4, '2');
INSERT INTO `jnm_sports` VALUES (14997, '潘  政  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡  徐玉玉  苗立华', '不分组别', 1490, '山东省代表队少年组二队', 0.00, 179, 4, '3');
INSERT INTO `jnm_sports` VALUES (14998, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1491, '浙江省代表队二队', 0.00, 179, 4, '4');
INSERT INTO `jnm_sports` VALUES (14999, '吴  迪  赵皖龙  贺冰冰  张世豪  黄嘉欣  陈子聪  戚辰轩  甘依灵  晏一帆  张蔼烜', '不分组别', 1492, '安徽省代表队', 0.00, 179, 4, '5');
INSERT INTO `jnm_sports` VALUES (15000, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1493, '山东省代表队青年组二队', 0.00, 179, 4, '6');
INSERT INTO `jnm_sports` VALUES (15001, '陈心烁', '女子组儿童组', 1494, '山东省代表队儿童组一队', 0.00, 180, 4, '1');
INSERT INTO `jnm_sports` VALUES (15002, '张冰莹', '女子组儿童组', 1495, '山东省代表队儿童组一队', 0.00, 180, 4, '2');
INSERT INTO `jnm_sports` VALUES (15003, '倪思妍', '女子组儿童组', 1496, '浙江省代表队一队', 0.00, 180, 4, '3');
INSERT INTO `jnm_sports` VALUES (15004, '江晓曦', '女子组儿童组', 1497, '浙江省代表队一队', 0.00, 180, 4, '4');
INSERT INTO `jnm_sports` VALUES (15005, '辛梓菡', '女子组儿童组', 1498, '山东省代表队儿童组二队', 0.00, 180, 4, '5');
INSERT INTO `jnm_sports` VALUES (15006, '曹馨月', '女子组儿童组', 1499, '山东省代表队儿童组二队', 0.00, 180, 4, '6');
INSERT INTO `jnm_sports` VALUES (15007, '吴奕楠', '女子组儿童组', 1494, '浙江省代表队二队', 0.00, 181, 4, '1');
INSERT INTO `jnm_sports` VALUES (15008, '施奕辰', '女子组儿童组', 1495, '浙江省代表队二队', 0.00, 181, 4, '2');
INSERT INTO `jnm_sports` VALUES (15009, '陈冰心', '女子组儿童组', 1496, '福建省代表队一队', 0.00, 181, 4, '3');
INSERT INTO `jnm_sports` VALUES (15010, '张汤艺', '女子组儿童组', 1497, '福建省代表队一队', 0.00, 181, 4, '4');
INSERT INTO `jnm_sports` VALUES (15011, '孙美绮', '女子组少年组', 1498, '山东省代表队少年组二队', 0.00, 181, 4, '5');
INSERT INTO `jnm_sports` VALUES (15012, '朱煜璇', '女子组少年组', 1499, '山东省代表队少年组二队', 0.00, 181, 4, '6');
INSERT INTO `jnm_sports` VALUES (15013, '付峻菁', '女子组少年组', 1494, '山东省代表队少年组一队', 0.00, 182, 4, '1');
INSERT INTO `jnm_sports` VALUES (15014, '杨雅茹', '女子组少年组', 1495, '山东省代表队少年组一队', 0.00, 182, 4, '2');
INSERT INTO `jnm_sports` VALUES (15015, '冯熙惠', '女子组青年组', 1496, '山东省代表队青年组一队', 0.00, 182, 4, '3');
INSERT INTO `jnm_sports` VALUES (15016, '鲍春慧', '女子组青年组', 1497, '山东省代表队青年组一队', 0.00, 182, 4, '4');
INSERT INTO `jnm_sports` VALUES (15017, '谢红艳', '女子组青年组', 1498, '上海市代表队', 0.00, 182, 4, '5');
INSERT INTO `jnm_sports` VALUES (15018, '鲍智智', '女子组青年组', 1499, '浙江省代表队二队', 0.00, 182, 4, '6');
INSERT INTO `jnm_sports` VALUES (15019, '王宣', '女子组青年组', 1494, '浙江省代表队二队', 0.00, 183, 4, '1');
INSERT INTO `jnm_sports` VALUES (15020, '詹祈诗', '女子组青年组', 1495, '福建省代表队一队', 0.00, 183, 4, '2');
INSERT INTO `jnm_sports` VALUES (15021, '崔雪茹', '女子组青年组', 1496, '山东省代表队青年组二队', 0.00, 183, 4, '3');
INSERT INTO `jnm_sports` VALUES (15022, '陈丽媛', '女子组青年组', 1497, '山东省代表队青年组二队', 0.00, 183, 4, '4');
INSERT INTO `jnm_sports` VALUES (15023, '庞贵荣', '女子组中青年组', 1498, '山东省代表队中青年组一队', 0.00, 183, 4, '5');
INSERT INTO `jnm_sports` VALUES (15024, '贺冰冰', '女子组中青年组', 1499, '安徽省代表队', 0.00, 183, 4, '6');
INSERT INTO `jnm_sports` VALUES (15025, '赵玉芝', '女子组中老年组', 1494, '安徽省代表队', 0.00, 184, 4, '1');
INSERT INTO `jnm_sports` VALUES (15026, '金永研  张恺清', '男子组儿童组', 1500, '山东省代表队儿童组一队', 0.00, 96, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15027, '林明轩  金辰恺', '男子组儿童组', 1500, '上海市代表队', 0.00, 97, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15028, '赖昱辰  胡大山', '男子组儿童组', 1500, '浙江省代表队一队', 0.00, 98, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15029, '张海腾  董俊泽 ', '男子组儿童组', 1500, '山东省代表队儿童组二队', 0.00, 99, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15030, '徐圣鑫  史楷杰', '男子组儿童组', 1500, '江苏省代表队二队', 0.00, 100, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15031, '黄  翰  彭  越', '男子组儿童组', 1500, '江苏省代表队一队', 0.00, 101, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15032, '郭振铭  林煜轩', '男子组少年组', 1500, '山东省代表队少年组一队', 0.00, 102, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15033, '刘偌熙  徐曦明', '男子组少年组', 1500, '江苏省代表队一队', 0.00, 103, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15034, '周凤啟  于存宝', '男子组青年组', 1500, '山东省代表队青年组一队', 0.00, 104, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15035, '张  潇  孙文锋', '男子组青年组', 1500, '上海市代表队', 0.00, 105, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15036, '何军武  郭本华', '男子组青年组', 1500, '福建省代表队二队', 0.00, 106, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15037, '孙鑫宇  陈同财', '男子组青年组', 1500, '江苏省代表队一队', 0.00, 107, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15038, '张冰莹  张宸瑜', '女子组儿童组', 1500, '山东省代表队儿童组一队', 0.00, 108, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15039, '潘欣冉  洪景昕', '女子组儿童组', 1500, '山东省代表队儿童组二队', 0.00, 109, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15040, '付峻菁  杨雅茹', '女子组少年组', 1500, '山东省代表队少年组一队', 0.00, 110, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15041, '李静洁  牛同萌', '女子组青年组', 1500, '山东省代表队青年组一队', 0.00, 111, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15042, '姜竣译  李悦涵', '混合组儿童组', 1500, '山东省代表队儿童组一队', 0.00, 112, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15043, '于  果  辛梓菡', '混合组儿童组', 1500, '山东省代表队儿童组二队', 0.00, 113, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15044, '曹炎溪  翁梓祺', '混合组儿童组', 1500, '江苏省代表队一队', 0.00, 114, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15045, '叶静怡  金裕凯', '混合组少年组', 1500, '浙江省代表队一队', 0.00, 115, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15046, '刘子暄  鲍春慧', '混合组青年组', 1500, '山东省代表队青年组一队', 0.00, 116, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15047, '杨  运  覃继媚', '混合组青年组', 1500, '上海市代表队', 0.00, 117, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15048, '金永研  张恺清', '男子组儿童组', 1501, '山东省代表队儿童组一队', 0.00, 118, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15049, '赵一凡  陈星辰', '男子组少年组', 1501, '江苏省代表队二队', 0.00, 119, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15050, '方立钊  刘晓航', '男子组青年组', 1501, '山东省代表队青年组一队', 0.00, 120, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15051, '桂红伟  王  毅', '男子组青年组', 1501, '上海市代表队', 0.00, 121, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15052, '王东奎  谢壮壮', '男子组中青年组', 1501, '浙江省代表队一队', 0.00, 122, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15053, '陈心烁  张冰莹', '女子组儿童组', 1501, '山东省代表队儿童组一队', 0.00, 123, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15054, '沈安静  沈安平', '女子组少年组', 1501, '江苏省代表队二队', 0.00, 124, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15055, '王建强  程泉方', '混合组儿童组', 1501, '山东省代表队儿童组一队', 0.00, 125, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15056, '曹炎溪  翁梓祺', '混合组儿童组', 1501, '江苏省代表队一队', 0.00, 126, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15057, '侍继宇  徐思菡', '混合组儿童组', 1501, '江苏省代表队二队', 0.00, 127, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15058, '张茂然  王一涵', '混合组少年组', 1501, '山东省代表队少年组二队', 0.00, 128, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15059, '陈昊宇  马欣怡', '混合组少年组', 1501, '江苏省代表队二队', 0.00, 129, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15060, '许弘钰  黄  琰', '混合组青年组', 1501, '山东省代表队青年组二队', 0.00, 130, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15061, '方立钊  孙树康  刘子暄', '男子组青年组', 1502, '山东省代表队青年组一队', 0.00, 131, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15062, '毛  旋  黄  斌  陈其聪', '男子组青年组', 1502, '福建省代表队二队', 0.00, 132, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15063, '王东奎  谢壮壮  段中飞', '男子组中青年组', 1502, '浙江省代表队一队', 0.00, 133, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15064, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1502, '江苏省代表队一队', 0.00, 134, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15065, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1502, '江苏省代表队二队', 0.00, 135, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15066, '陈昊宇  赵一凡  马欣怡', '混合组少年组', 1502, '江苏省代表队二队', 0.00, 136, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15067, '付峻菁  张凯涛  王运男', '混合组少年组', 1502, '山东省代表队少年组一队', 0.00, 137, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15068, '杨  运  张  潇  金芮希', '混合组青年组', 1502, '上海市代表队', 0.00, 138, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15069, '金永研  张恺清  魏子程  李武赫', '男子组儿童组', 1503, '山东省代表队儿童组一队', 0.00, 139, 4, '1');
INSERT INTO `jnm_sports` VALUES (15070, '樊鸣轩  林明轩  王嘉睿  金辰恺', '男子组儿童组', 1504, '上海市代表队', 0.00, 139, 4, '2');
INSERT INTO `jnm_sports` VALUES (15071, '于  果  鹿皓清  杜  政  胡振泽', '男子组儿童组', 1505, '山东省代表队儿童组二队', 0.00, 139, 4, '3');
INSERT INTO `jnm_sports` VALUES (15072, '黄  翰  彭  越  王鑫鹏  周文韬', '男子组儿童组', 1506, '江苏省代表队一队', 0.00, 139, 4, '4');
INSERT INTO `jnm_sports` VALUES (15073, '梁德福  郭昌昊  生浩宇  王继凯', '男子组少年组', 1507, '山东省代表队少年组二队', 0.00, 139, 4, '5');
INSERT INTO `jnm_sports` VALUES (15074, '张凯涛  刘腾泽  王运男  张皓博', '男子组少年组', 1508, '山东省代表队少年组一队', 0.00, 139, 4, '6');
INSERT INTO `jnm_sports` VALUES (15075, '阚明利  彭治皓  于存宝  孙树康', '男子组青年组', 1503, '山东省代表队青年组一队', 0.00, 140, 4, '1');
INSERT INTO `jnm_sports` VALUES (15076, '梁厚德  桂红伟  王  毅  孙文锋', '男子组青年组', 1504, '上海市代表队', 0.00, 140, 4, '2');
INSERT INTO `jnm_sports` VALUES (15077, '毛  旋  黄  斌  陈其聪  何军武', '男子组青年组', 1505, '福建省代表队二队', 0.00, 140, 4, '3');
INSERT INTO `jnm_sports` VALUES (15078, '鲁长琛  陈守印  肖凤辉  周文生', '男子组青年组', 1506, '山东省代表队青年组二队', 0.00, 140, 4, '4');
INSERT INTO `jnm_sports` VALUES (15079, '孙鑫宇  陈同财  陈松林  刘泽瑞康', '男子组青年组', 1507, '江苏省代表队一队', 0.00, 140, 4, '5');
INSERT INTO `jnm_sports` VALUES (15080, '吴  迪  赵皖龙  杨柳青  陈子聪', '男子组中青年组', 1508, '安徽省代表队', 0.00, 140, 4, '6');
INSERT INTO `jnm_sports` VALUES (15081, '陈裕涛  张炜鑫  刘超龙  刘文雄', '男子组中青年组', 1503, '福建省代表队二队', 0.00, 141, 4, '1');
INSERT INTO `jnm_sports` VALUES (15082, '冯  锋  张世豪  戚辰轩  张蔼烜', '男子组中老年组', 1504, '安徽省代表队', 0.00, 141, 4, '2');
INSERT INTO `jnm_sports` VALUES (15083, '陈雨杭  赵梓涵  金笑妍  陆芊竹', '女子组儿童组', 1505, '山东省代表队儿童组一队', 0.00, 141, 4, '3');
INSERT INTO `jnm_sports` VALUES (15084, '张雅茹  刘雨溪  潘欣冉  崔润依', '女子组儿童组', 1506, '山东省代表队儿童组二队', 0.00, 141, 4, '4');
INSERT INTO `jnm_sports` VALUES (15085, '钟雅婷  孙美绮  朱煜璇  魏子贻', '女子组少年组', 1507, '山东省代表队少年组二队', 0.00, 141, 4, '5');
INSERT INTO `jnm_sports` VALUES (15086, '侯亚男  李静洁  鲍春慧  牛同萌', '女子组青年组', 1508, '山东省代表队青年组一队', 0.00, 141, 4, '6');
INSERT INTO `jnm_sports` VALUES (15087, '谢红艳  金芮希  李丽诗  白凌璇', '女子组青年组', 1503, '上海市代表队', 0.00, 142, 4, '1');
INSERT INTO `jnm_sports` VALUES (15088, '仵可辛  许弘钰  王贞茹  陈丽媛', '女子组青年组', 1504, '山东省代表队青年组二队', 0.00, 142, 4, '2');
INSERT INTO `jnm_sports` VALUES (15089, '赵玉芝  贺冰冰  黄嘉欣  甘依灵', '女子组中老年组', 1505, '安徽省代表队', 0.00, 142, 4, '3');
INSERT INTO `jnm_sports` VALUES (15090, '姜竣译  耿轶凡  张宸瑜  李悦涵', '混合组儿童组', 1506, '山东省代表队儿童组一队', 0.00, 142, 4, '4');
INSERT INTO `jnm_sports` VALUES (15091, '倪思妍 江晓曦  赖昱辰  胡大山', '混合组儿童组', 1507, '浙江省代表队一队', 0.00, 142, 4, '5');
INSERT INTO `jnm_sports` VALUES (15092, '张海腾  董俊泽  徐瑞隆  巩洛伊', '混合组儿童组', 1508, '山东省代表队儿童组二队', 0.00, 142, 4, '6');
INSERT INTO `jnm_sports` VALUES (15093, '朱晟轩  王诗凯  徐乾晖  施奕辰', '混合组儿童组', 1503, '浙江省代表队二队', 0.00, 143, 4, '1');
INSERT INTO `jnm_sports` VALUES (15094, '桂浩峻  桂小晶  李宸宇  王子阁', '混合组儿童组', 1504, '江苏省代表队二队', 0.00, 143, 4, '2');
INSERT INTO `jnm_sports` VALUES (15095, '潘  政  郭念衡  白梓涵  徐玉玉', '混合组少年组', 1505, '山东省代表队少年组二队', 0.00, 143, 4, '3');
INSERT INTO `jnm_sports` VALUES (15096, '郭振铭、孙海峰、张楚颜、林煜轩', '混合组少年组', 1506, '山东省代表队少年组一队', 0.00, 143, 4, '4');
INSERT INTO `jnm_sports` VALUES (15097, '周凤啟  徐嘉诚  曹先锋  冯熙惠', '混合组青年组', 1507, '山东省代表队青年组一队', 0.00, 143, 4, '5');
INSERT INTO `jnm_sports` VALUES (15098, '鲍智智  虞雅惠  徐梓凌  毛泽文', '混合组青年组', 1508, '浙江省代表队二队', 0.00, 143, 4, '6');
INSERT INTO `jnm_sports` VALUES (15099, '赵崎超  崔雪茹  黄  琰  张培旺', '混合组青年组', 1503, '山东省代表队青年组二队', 0.00, 144, 4, '1');
INSERT INTO `jnm_sports` VALUES (15100, '庞贵荣  窦夏倩  于亚雄  张耀辉', '混合组中青年组', 1504, '山东省代表队中青年组一队', 0.00, 144, 4, '2');
INSERT INTO `jnm_sports` VALUES (15101, '黄  翰  彭  越  王鑫鹏  陈昊冉', '男子组儿童组', 1509, '江苏省代表队一队', 0.00, 144, 4, '3');
INSERT INTO `jnm_sports` VALUES (15102, '徐乐恒  钦子涵  魏邵志  徐曦明', '男子组儿童组', 1510, '江苏省代表队一队', 0.00, 144, 4, '4');
INSERT INTO `jnm_sports` VALUES (15103, '周凤啟  阚明利  陈家乐  于存宝', '男子组青年组', 1511, '山东省代表队青年组一队', 0.00, 144, 4, '5');
INSERT INTO `jnm_sports` VALUES (15104, '郭晨阳  甘容鑫  邹扬扬  符柳彬', '男子组青年组', 1512, '上海市代表队', 0.00, 144, 4, '6');
INSERT INTO `jnm_sports` VALUES (15105, '侍继宇  徐思菡  张雨鑫  汤霖烨', '混合组儿童组', 1513, '江苏省代表队二队', 0.00, 145, 4, '1');
INSERT INTO `jnm_sports` VALUES (15106, '陈昊宇  赵一凡  陈星辰  沈安静', '混合组少年组', 1514, '江苏省代表队二队', 0.00, 145, 4, '2');
INSERT INTO `jnm_sports` VALUES (15107, '方立钊  刘子暄  鲍春慧  刘晓航', '混合组青年组', 1509, '山东省代表队青年组一队', 0.00, 145, 4, '3');
INSERT INTO `jnm_sports` VALUES (15108, '杨  运  谢红艳  覃继媚  孙文锋', '混合组青年组', 1510, '上海市代表队', 0.00, 145, 4, '4');
INSERT INTO `jnm_sports` VALUES (15109, '黄  翰  彭  越  王鑫鹏', '男子组儿童组', 1515, '江苏省代表队一队', 0.00, 146, 4, '1');
INSERT INTO `jnm_sports` VALUES (15110, '孙海峰  林煜轩  郭振铭', '男子组少年组', 1516, '山东省代表队少年组一队', 0.00, 146, 4, '2');
INSERT INTO `jnm_sports` VALUES (15111, '陈昊宇  赵一凡  陈星辰', '男子组少年组', 1517, '江苏省代表队二队', 0.00, 146, 4, '3');
INSERT INTO `jnm_sports` VALUES (15112, '徐乐恒  钦子涵  魏邵志', '男子组少年组', 1518, '江苏省代表队一队', 0.00, 146, 4, '4');
INSERT INTO `jnm_sports` VALUES (15113, '孙树康  刘子暄  刘晓航', '男子组青年组', 1519, '山东省代表队青年组一队', 0.00, 146, 4, '5');
INSERT INTO `jnm_sports` VALUES (15114, '梁厚德  桂红伟  王  毅', '男子组青年组', 1520, '上海市代表队', 0.00, 146, 4, '6');
INSERT INTO `jnm_sports` VALUES (15115, '范嘉伟  黄澄可  吕凌昊', '男子组青年组', 1515, '浙江省代表队二队', 0.00, 147, 4, '1');
INSERT INTO `jnm_sports` VALUES (15116, '陈裕涛  刘超龙  刘文雄', '男子组中青年组', 1516, '福建省代表队二队', 0.00, 147, 4, '2');
INSERT INTO `jnm_sports` VALUES (15117, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1517, '江苏省代表队一队', 0.00, 147, 4, '3');
INSERT INTO `jnm_sports` VALUES (15118, '张冰莹  张宸瑜  赵梓涵', '女子组儿童组', 1518, '山东省代表队儿童组一队', 0.00, 147, 4, '4');
INSERT INTO `jnm_sports` VALUES (15119, '马欣怡  沈安静  沈安平', '女子组少年组', 1519, '江苏省代表队二队', 0.00, 147, 4, '5');
INSERT INTO `jnm_sports` VALUES (15120, '鲍智智  王  宣  张  茜', '女子组青年组', 1520, '浙江省代表队二队', 0.00, 147, 4, '6');
INSERT INTO `jnm_sports` VALUES (15121, '王建强  程泉方  陈心烁', '混合组儿童组', 1515, '山东省代表队儿童组一队', 0.00, 148, 4, '1');
INSERT INTO `jnm_sports` VALUES (15122, '张海腾  董俊泽  巩洛伊', '混合组儿童组', 1516, '山东省代表队儿童组二队', 0.00, 148, 4, '2');
INSERT INTO `jnm_sports` VALUES (15123, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1517, '江苏省代表队二队', 0.00, 148, 4, '3');
INSERT INTO `jnm_sports` VALUES (15124, '王继凯  张嘉然  朱煜璇', '混合组少年组', 1518, '山东省代表队少年组二队', 0.00, 148, 4, '4');
INSERT INTO `jnm_sports` VALUES (15125, '曾善特  叶静怡  金裕凯', '混合组少年组', 1519, '浙江省代表队一队', 0.00, 148, 4, '5');
INSERT INTO `jnm_sports` VALUES (15126, '彭治皓  于正帅  姜  鑫', '混合组青年组', 1520, '山东省代表队青年组一队', 0.00, 148, 4, '6');
INSERT INTO `jnm_sports` VALUES (15127, '李丽诗  白凌璇  曹雪原', '混合组青年组', 1515, '上海市代表队', 0.00, 149, 4, '1');
INSERT INTO `jnm_sports` VALUES (15128, '赵崎超  许弘钰  黄  琰', '混合组青年组', 1516, '山东省代表队青年组二队', 0.00, 149, 4, '2');
INSERT INTO `jnm_sports` VALUES (15129, '詹祈诗  梁建锋  陈俊刚', '混合组中老年组', 1517, '福建省代表队一队', 0.00, 149, 4, '3');
INSERT INTO `jnm_sports` VALUES (15130, '陈心烁', '女子组儿童组', 1521, '山东省代表队儿童组一队', 0.00, 150, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15131, '张冰莹', '女子组儿童组', 1521, '山东省代表队儿童组一队', 0.00, 151, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15132, '曾善特', '女子组儿童组', 1521, '浙江省代表队一队', 0.00, 152, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15133, '辛梓菡', '女子组儿童组', 1521, '山东省代表队儿童组二队', 0.00, 153, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15134, '洪景昕', '女子组儿童组', 1521, '山东省代表队儿童组二队', 0.00, 154, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15135, '甘依灵', '女子组儿童组', 1521, '安徽省代表队', 0.00, 155, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15136, '李琪琪', '女子组儿童组', 1521, '江苏省代表队一队', 0.00, 156, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15137, '曹炎溪', '女子组儿童组', 1521, '江苏省代表队一队', 0.00, 157, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15138, '孙美绮', '女子组少年组', 1521, '山东省代表队少年组二队', 0.00, 158, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15139, '潘欣怡', '女子组少年组', 1521, '山东省代表队少年组二队', 0.00, 159, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15140, '叶静怡', '女子组少年组', 1521, '浙江省代表队一队', 0.00, 160, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15141, '张楚颜', '女子组少年组', 1521, '山东省代表队少年组一队', 0.00, 161, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15142, '付峻菁', '女子组少年组', 1521, '山东省代表队少年组一队', 0.00, 162, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15143, '鲍春慧', '女子组青年组', 1521, '山东省代表队青年组一队', 0.00, 163, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15144, '牛同萌', '女子组青年组', 1521, '山东省代表队青年组一队', 0.00, 164, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15145, '谢红艳', '女子组青年组', 1521, '上海市代表队', 0.00, 165, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15146, '覃继媚', '女子组青年组', 1521, '上海市代表队', 0.00, 166, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15147, '窦夏倩', '女子组中青年组', 1521, '山东省代表队中青年组一队', 0.00, 167, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15148, '贺冰冰', '女子组中青年组', 1521, '安徽省代表队', 0.00, 168, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15149, '赵玉芝', '女子组中老年组', 1521, '安徽省代表队', 0.00, 169, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15150, '王建强  耿轶凡  任世文  程泉方  张宸瑜  陈雨杭  孙海峰  张楚颜  刘腾泽  付峻菁', '不分组别', 1522, '山东省代表队儿童组一队', 0.00, 170, 4, '1');
INSERT INTO `jnm_sports` VALUES (15151, '郭晨阳  甘容鑫  邹扬扬  符柳彬  梁厚德  曹雪原  廖俊杰  蒋俊杰  牛旭生  昝加宇', '不分组别', 1523, '上海市代表队', 0.00, 170, 4, '2');
INSERT INTO `jnm_sports` VALUES (15152, '梁德福  生浩宇  王继凯  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡', '不分组别', 1524, '山东省代表队少年组二队', 0.00, 170, 4, '3');
INSERT INTO `jnm_sports` VALUES (15153, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1522, '浙江省代表队二队', 0.00, 171, 4, '1');
INSERT INTO `jnm_sports` VALUES (15154, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚  梁建锋', '不分组别', 1523, '福建省代表队一队', 0.00, 171, 4, '2');
INSERT INTO `jnm_sports` VALUES (15155, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1524, '山东省代表队青年组二队', 0.00, 171, 4, '3');
INSERT INTO `jnm_sports` VALUES (15156, '金永研', '男子组儿童组', 1525, '山东省代表队儿童组一队', 0.00, 172, 4, '1');
INSERT INTO `jnm_sports` VALUES (15157, '张恺清', '男子组儿童组', 1526, '山东省代表队儿童组一队', 0.00, 172, 4, '2');
INSERT INTO `jnm_sports` VALUES (15158, '金辰恺', '男子组儿童组', 1527, '上海市代表队', 0.00, 172, 4, '3');
INSERT INTO `jnm_sports` VALUES (15159, '林明轩', '男子组儿童组', 1528, '上海市代表队', 0.00, 172, 4, '4');
INSERT INTO `jnm_sports` VALUES (15160, '胡大山', '男子组儿童组', 1529, '浙江省代表队一队', 0.00, 172, 4, '5');
INSERT INTO `jnm_sports` VALUES (15161, '金裕凯', '男子组儿童组', 1530, '浙江省代表队一队', 0.00, 172, 4, '6');
INSERT INTO `jnm_sports` VALUES (15162, '董俊泽', '男子组儿童组', 1525, '山东省代表队儿童组二队', 0.00, 173, 4, '1');
INSERT INTO `jnm_sports` VALUES (15163, '王俊初', '男子组儿童组', 1526, '山东省代表队儿童组二队', 0.00, 173, 4, '2');
INSERT INTO `jnm_sports` VALUES (15164, '朱晟轩', '男子组儿童组', 1527, '浙江省代表队二队', 0.00, 173, 4, '3');
INSERT INTO `jnm_sports` VALUES (15165, '王诗凯', '男子组儿童组', 1528, '浙江省代表队二队', 0.00, 173, 4, '4');
INSERT INTO `jnm_sports` VALUES (15166, '陈子聪', '男子组儿童组', 1529, '安徽省代表队', 0.00, 173, 4, '5');
INSERT INTO `jnm_sports` VALUES (15167, '史轩泽', '男子组儿童组', 1530, '江苏省代表队二队', 0.00, 173, 4, '6');
INSERT INTO `jnm_sports` VALUES (15168, '孙睿韬', '男子组儿童组', 1525, '江苏省代表队二队', 0.00, 174, 4, '1');
INSERT INTO `jnm_sports` VALUES (15169, '梁德福', '男子组少年组', 1526, '山东省代表队少年组二队', 0.00, 174, 4, '2');
INSERT INTO `jnm_sports` VALUES (15170, '王继凯', '男子组少年组', 1527, '山东省代表队少年组二队', 0.00, 174, 4, '3');
INSERT INTO `jnm_sports` VALUES (15171, '舒澍校', '男子组少年组', 1528, '浙江省代表队二队', 0.00, 174, 4, '4');
INSERT INTO `jnm_sports` VALUES (15172, '林煜轩', '男子组少年组', 1529, '山东省代表队少年组一队', 0.00, 174, 4, '5');
INSERT INTO `jnm_sports` VALUES (15173, '张凯涛', '男子组少年组', 1530, '山东省代表队少年组一队', 0.00, 174, 4, '6');
INSERT INTO `jnm_sports` VALUES (15174, '陈裕涛', '男子组少年组', 1525, '福建省代表队二队', 0.00, 175, 4, '1');
INSERT INTO `jnm_sports` VALUES (15175, '王硕', '男子组少年组', 1526, '江苏省代表队二队', 0.00, 175, 4, '2');
INSERT INTO `jnm_sports` VALUES (15176, '孙树康', '男子组青年组', 1527, '山东省代表队青年组一队', 0.00, 175, 4, '3');
INSERT INTO `jnm_sports` VALUES (15177, '徐嘉诚', '男子组青年组', 1528, '山东省代表队青年组一队', 0.00, 175, 4, '4');
INSERT INTO `jnm_sports` VALUES (15178, '蒋俊杰', '男子组青年组', 1529, '上海市代表队', 0.00, 175, 4, '5');
INSERT INTO `jnm_sports` VALUES (15179, '昝加宇', '男子组青年组', 1530, '上海市代表队', 0.00, 175, 4, '6');
INSERT INTO `jnm_sports` VALUES (15180, '段中飞', '男子组青年组', 1525, '浙江省代表队一队', 0.00, 176, 4, '1');
INSERT INTO `jnm_sports` VALUES (15181, '徐梓凌', '男子组青年组', 1526, '浙江省代表队二队', 0.00, 176, 4, '2');
INSERT INTO `jnm_sports` VALUES (15182, '毛泽文', '男子组青年组', 1527, '浙江省代表队二队', 0.00, 176, 4, '3');
INSERT INTO `jnm_sports` VALUES (15183, '毛旋', '男子组青年组', 1528, '福建省代表队二队', 0.00, 176, 4, '4');
INSERT INTO `jnm_sports` VALUES (15184, '黄斌', '男子组青年组', 1529, '福建省代表队二队', 0.00, 176, 4, '5');
INSERT INTO `jnm_sports` VALUES (15185, '肖凤辉', '男子组青年组', 1530, '山东省代表队青年组二队', 0.00, 176, 4, '6');
INSERT INTO `jnm_sports` VALUES (15186, '周文生', '男子组青年组', 1525, '山东省代表队青年组二队', 0.00, 177, 4, '1');
INSERT INTO `jnm_sports` VALUES (15187, '于亚雄', '男子组中青年组', 1526, '山东省代表队中青年组一队', 0.00, 177, 4, '2');
INSERT INTO `jnm_sports` VALUES (15188, '张耀辉', '男子组中青年组', 1527, '山东省代表队中青年组一队', 0.00, 177, 4, '3');
INSERT INTO `jnm_sports` VALUES (15189, '赵皖龙', '男子组中青年组', 1528, '安徽省代表队', 0.00, 177, 4, '4');
INSERT INTO `jnm_sports` VALUES (15190, '杨柳青', '男子组中青年组', 1529, '安徽省代表队', 0.00, 177, 4, '5');
INSERT INTO `jnm_sports` VALUES (15191, '刘文雄', '男子组中青年组', 1530, '福建省代表队二队', 0.00, 177, 4, '6');
INSERT INTO `jnm_sports` VALUES (15192, '李磊', '男子组中老年组', 1525, '山东省代表队中老年组一队', 0.00, 178, 4, '1');
INSERT INTO `jnm_sports` VALUES (15193, '冯锋', '男子组中老年组', 1526, '安徽省代表队', 0.00, 178, 4, '2');
INSERT INTO `jnm_sports` VALUES (15194, '阚明利  彭治皓  程杰睿  于正帅  方立钊  徐嘉诚  曹先锋  姜  鑫  宋欣阳  陈家乐', '不分组别', 1531, '山东省代表队青年组一队', 0.00, 179, 4, '1');
INSERT INTO `jnm_sports` VALUES (15195, '王建强  耿轶凡  任世文  程泉方  陈心烁  张冰莹  陈雨杭  张楚颜  刘腾泽  张凯涛', '不分组别', 1532, '山东省代表队儿童组一队', 0.00, 179, 4, '2');
INSERT INTO `jnm_sports` VALUES (15196, '潘  政  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡  徐玉玉  苗立华', '不分组别', 1533, '山东省代表队少年组二队', 0.00, 179, 4, '3');
INSERT INTO `jnm_sports` VALUES (15197, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1534, '浙江省代表队二队', 0.00, 179, 4, '4');
INSERT INTO `jnm_sports` VALUES (15198, '吴  迪  赵皖龙  贺冰冰  张世豪  黄嘉欣  陈子聪  戚辰轩  甘依灵  晏一帆  张蔼烜', '不分组别', 1535, '安徽省代表队', 0.00, 179, 4, '5');
INSERT INTO `jnm_sports` VALUES (15199, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1536, '山东省代表队青年组二队', 0.00, 179, 4, '6');
INSERT INTO `jnm_sports` VALUES (15200, '陈心烁', '女子组儿童组', 1537, '山东省代表队儿童组一队', 0.00, 180, 4, '1');
INSERT INTO `jnm_sports` VALUES (15201, '张冰莹', '女子组儿童组', 1538, '山东省代表队儿童组一队', 0.00, 180, 4, '2');
INSERT INTO `jnm_sports` VALUES (15202, '倪思妍', '女子组儿童组', 1539, '浙江省代表队一队', 0.00, 180, 4, '3');
INSERT INTO `jnm_sports` VALUES (15203, '江晓曦', '女子组儿童组', 1540, '浙江省代表队一队', 0.00, 180, 4, '4');
INSERT INTO `jnm_sports` VALUES (15204, '辛梓菡', '女子组儿童组', 1541, '山东省代表队儿童组二队', 0.00, 180, 4, '5');
INSERT INTO `jnm_sports` VALUES (15205, '曹馨月', '女子组儿童组', 1542, '山东省代表队儿童组二队', 0.00, 180, 4, '6');
INSERT INTO `jnm_sports` VALUES (15206, '吴奕楠', '女子组儿童组', 1537, '浙江省代表队二队', 0.00, 181, 4, '1');
INSERT INTO `jnm_sports` VALUES (15207, '施奕辰', '女子组儿童组', 1538, '浙江省代表队二队', 0.00, 181, 4, '2');
INSERT INTO `jnm_sports` VALUES (15208, '陈冰心', '女子组儿童组', 1539, '福建省代表队一队', 0.00, 181, 4, '3');
INSERT INTO `jnm_sports` VALUES (15209, '张汤艺', '女子组儿童组', 1540, '福建省代表队一队', 0.00, 181, 4, '4');
INSERT INTO `jnm_sports` VALUES (15210, '孙美绮', '女子组少年组', 1541, '山东省代表队少年组二队', 0.00, 181, 4, '5');
INSERT INTO `jnm_sports` VALUES (15211, '朱煜璇', '女子组少年组', 1542, '山东省代表队少年组二队', 0.00, 181, 4, '6');
INSERT INTO `jnm_sports` VALUES (15212, '付峻菁', '女子组少年组', 1537, '山东省代表队少年组一队', 0.00, 182, 4, '1');
INSERT INTO `jnm_sports` VALUES (15213, '杨雅茹', '女子组少年组', 1538, '山东省代表队少年组一队', 0.00, 182, 4, '2');
INSERT INTO `jnm_sports` VALUES (15214, '冯熙惠', '女子组青年组', 1539, '山东省代表队青年组一队', 0.00, 182, 4, '3');
INSERT INTO `jnm_sports` VALUES (15215, '鲍春慧', '女子组青年组', 1540, '山东省代表队青年组一队', 0.00, 182, 4, '4');
INSERT INTO `jnm_sports` VALUES (15216, '谢红艳', '女子组青年组', 1541, '上海市代表队', 0.00, 182, 4, '5');
INSERT INTO `jnm_sports` VALUES (15217, '鲍智智', '女子组青年组', 1542, '浙江省代表队二队', 0.00, 182, 4, '6');
INSERT INTO `jnm_sports` VALUES (15218, '王宣', '女子组青年组', 1537, '浙江省代表队二队', 0.00, 183, 4, '1');
INSERT INTO `jnm_sports` VALUES (15219, '詹祈诗', '女子组青年组', 1538, '福建省代表队一队', 0.00, 183, 4, '2');
INSERT INTO `jnm_sports` VALUES (15220, '崔雪茹', '女子组青年组', 1539, '山东省代表队青年组二队', 0.00, 183, 4, '3');
INSERT INTO `jnm_sports` VALUES (15221, '陈丽媛', '女子组青年组', 1540, '山东省代表队青年组二队', 0.00, 183, 4, '4');
INSERT INTO `jnm_sports` VALUES (15222, '庞贵荣', '女子组中青年组', 1541, '山东省代表队中青年组一队', 0.00, 183, 4, '5');
INSERT INTO `jnm_sports` VALUES (15223, '贺冰冰', '女子组中青年组', 1542, '安徽省代表队', 0.00, 183, 4, '6');
INSERT INTO `jnm_sports` VALUES (15224, '赵玉芝', '女子组中老年组', 1537, '安徽省代表队', 0.00, 184, 4, '1');
INSERT INTO `jnm_sports` VALUES (15225, '金永研  张恺清', '男子组儿童组', 1543, '山东省代表队儿童组一队', 0.00, 96, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15226, '林明轩  金辰恺', '男子组儿童组', 1543, '上海市代表队', 0.00, 97, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15227, '赖昱辰  胡大山', '男子组儿童组', 1543, '浙江省代表队一队', 0.00, 98, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15228, '张海腾  董俊泽 ', '男子组儿童组', 1543, '山东省代表队儿童组二队', 0.00, 99, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15229, '徐圣鑫  史楷杰', '男子组儿童组', 1543, '江苏省代表队二队', 0.00, 100, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15230, '黄  翰  彭  越', '男子组儿童组', 1543, '江苏省代表队一队', 0.00, 101, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15231, '郭振铭  林煜轩', '男子组少年组', 1543, '山东省代表队少年组一队', 0.00, 102, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15232, '刘偌熙  徐曦明', '男子组少年组', 1543, '江苏省代表队一队', 0.00, 103, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15233, '周凤啟  于存宝', '男子组青年组', 1543, '山东省代表队青年组一队', 0.00, 104, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15234, '张  潇  孙文锋', '男子组青年组', 1543, '上海市代表队', 0.00, 105, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15235, '何军武  郭本华', '男子组青年组', 1543, '福建省代表队二队', 0.00, 106, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15236, '孙鑫宇  陈同财', '男子组青年组', 1543, '江苏省代表队一队', 0.00, 107, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15237, '张冰莹  张宸瑜', '女子组儿童组', 1543, '山东省代表队儿童组一队', 0.00, 108, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15238, '潘欣冉  洪景昕', '女子组儿童组', 1543, '山东省代表队儿童组二队', 0.00, 109, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15239, '付峻菁  杨雅茹', '女子组少年组', 1543, '山东省代表队少年组一队', 0.00, 110, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15240, '李静洁  牛同萌', '女子组青年组', 1543, '山东省代表队青年组一队', 0.00, 111, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15241, '姜竣译  李悦涵', '混合组儿童组', 1543, '山东省代表队儿童组一队', 0.00, 112, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15242, '于  果  辛梓菡', '混合组儿童组', 1543, '山东省代表队儿童组二队', 0.00, 113, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15243, '曹炎溪  翁梓祺', '混合组儿童组', 1543, '江苏省代表队一队', 0.00, 114, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15244, '叶静怡  金裕凯', '混合组少年组', 1543, '浙江省代表队一队', 0.00, 115, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15245, '刘子暄  鲍春慧', '混合组青年组', 1543, '山东省代表队青年组一队', 0.00, 116, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15246, '杨  运  覃继媚', '混合组青年组', 1543, '上海市代表队', 0.00, 117, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15247, '金永研  张恺清', '男子组儿童组', 1544, '山东省代表队儿童组一队', 0.00, 118, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15248, '赵一凡  陈星辰', '男子组少年组', 1544, '江苏省代表队二队', 0.00, 119, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15249, '方立钊  刘晓航', '男子组青年组', 1544, '山东省代表队青年组一队', 0.00, 120, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15250, '桂红伟  王  毅', '男子组青年组', 1544, '上海市代表队', 0.00, 121, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15251, '王东奎  谢壮壮', '男子组中青年组', 1544, '浙江省代表队一队', 0.00, 122, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15252, '陈心烁  张冰莹', '女子组儿童组', 1544, '山东省代表队儿童组一队', 0.00, 123, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15253, '沈安静  沈安平', '女子组少年组', 1544, '江苏省代表队二队', 0.00, 124, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15254, '王建强  程泉方', '混合组儿童组', 1544, '山东省代表队儿童组一队', 0.00, 125, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15255, '曹炎溪  翁梓祺', '混合组儿童组', 1544, '江苏省代表队一队', 0.00, 126, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15256, '侍继宇  徐思菡', '混合组儿童组', 1544, '江苏省代表队二队', 0.00, 127, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15257, '张茂然  王一涵', '混合组少年组', 1544, '山东省代表队少年组二队', 0.00, 128, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15258, '陈昊宇  马欣怡', '混合组少年组', 1544, '江苏省代表队二队', 0.00, 129, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15259, '许弘钰  黄  琰', '混合组青年组', 1544, '山东省代表队青年组二队', 0.00, 130, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15260, '方立钊  孙树康  刘子暄', '男子组青年组', 1545, '山东省代表队青年组一队', 0.00, 131, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15261, '毛  旋  黄  斌  陈其聪', '男子组青年组', 1545, '福建省代表队二队', 0.00, 132, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15262, '王东奎  谢壮壮  段中飞', '男子组中青年组', 1545, '浙江省代表队一队', 0.00, 133, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15263, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1545, '江苏省代表队一队', 0.00, 134, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15264, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1545, '江苏省代表队二队', 0.00, 135, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15265, '陈昊宇  赵一凡  马欣怡', '混合组少年组', 1545, '江苏省代表队二队', 0.00, 136, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15266, '付峻菁  张凯涛  王运男', '混合组少年组', 1545, '山东省代表队少年组一队', 0.00, 137, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15267, '杨  运  张  潇  金芮希', '混合组青年组', 1545, '上海市代表队', 0.00, 138, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15268, '金永研  张恺清  魏子程  李武赫', '男子组儿童组', 1546, '山东省代表队儿童组一队', 0.00, 139, 4, '1');
INSERT INTO `jnm_sports` VALUES (15269, '樊鸣轩  林明轩  王嘉睿  金辰恺', '男子组儿童组', 1547, '上海市代表队', 0.00, 139, 4, '2');
INSERT INTO `jnm_sports` VALUES (15270, '于  果  鹿皓清  杜  政  胡振泽', '男子组儿童组', 1548, '山东省代表队儿童组二队', 0.00, 139, 4, '3');
INSERT INTO `jnm_sports` VALUES (15271, '黄  翰  彭  越  王鑫鹏  周文韬', '男子组儿童组', 1549, '江苏省代表队一队', 0.00, 139, 4, '4');
INSERT INTO `jnm_sports` VALUES (15272, '梁德福  郭昌昊  生浩宇  王继凯', '男子组少年组', 1550, '山东省代表队少年组二队', 0.00, 139, 4, '5');
INSERT INTO `jnm_sports` VALUES (15273, '张凯涛  刘腾泽  王运男  张皓博', '男子组少年组', 1551, '山东省代表队少年组一队', 0.00, 139, 4, '6');
INSERT INTO `jnm_sports` VALUES (15274, '阚明利  彭治皓  于存宝  孙树康', '男子组青年组', 1546, '山东省代表队青年组一队', 0.00, 140, 4, '1');
INSERT INTO `jnm_sports` VALUES (15275, '梁厚德  桂红伟  王  毅  孙文锋', '男子组青年组', 1547, '上海市代表队', 0.00, 140, 4, '2');
INSERT INTO `jnm_sports` VALUES (15276, '毛  旋  黄  斌  陈其聪  何军武', '男子组青年组', 1548, '福建省代表队二队', 0.00, 140, 4, '3');
INSERT INTO `jnm_sports` VALUES (15277, '鲁长琛  陈守印  肖凤辉  周文生', '男子组青年组', 1549, '山东省代表队青年组二队', 0.00, 140, 4, '4');
INSERT INTO `jnm_sports` VALUES (15278, '孙鑫宇  陈同财  陈松林  刘泽瑞康', '男子组青年组', 1550, '江苏省代表队一队', 0.00, 140, 4, '5');
INSERT INTO `jnm_sports` VALUES (15279, '吴  迪  赵皖龙  杨柳青  陈子聪', '男子组中青年组', 1551, '安徽省代表队', 0.00, 140, 4, '6');
INSERT INTO `jnm_sports` VALUES (15280, '陈裕涛  张炜鑫  刘超龙  刘文雄', '男子组中青年组', 1546, '福建省代表队二队', 0.00, 141, 4, '1');
INSERT INTO `jnm_sports` VALUES (15281, '冯  锋  张世豪  戚辰轩  张蔼烜', '男子组中老年组', 1547, '安徽省代表队', 0.00, 141, 4, '2');
INSERT INTO `jnm_sports` VALUES (15282, '陈雨杭  赵梓涵  金笑妍  陆芊竹', '女子组儿童组', 1548, '山东省代表队儿童组一队', 0.00, 141, 4, '3');
INSERT INTO `jnm_sports` VALUES (15283, '张雅茹  刘雨溪  潘欣冉  崔润依', '女子组儿童组', 1549, '山东省代表队儿童组二队', 0.00, 141, 4, '4');
INSERT INTO `jnm_sports` VALUES (15284, '钟雅婷  孙美绮  朱煜璇  魏子贻', '女子组少年组', 1550, '山东省代表队少年组二队', 0.00, 141, 4, '5');
INSERT INTO `jnm_sports` VALUES (15285, '侯亚男  李静洁  鲍春慧  牛同萌', '女子组青年组', 1551, '山东省代表队青年组一队', 0.00, 141, 4, '6');
INSERT INTO `jnm_sports` VALUES (15286, '谢红艳  金芮希  李丽诗  白凌璇', '女子组青年组', 1546, '上海市代表队', 0.00, 142, 4, '1');
INSERT INTO `jnm_sports` VALUES (15287, '仵可辛  许弘钰  王贞茹  陈丽媛', '女子组青年组', 1547, '山东省代表队青年组二队', 0.00, 142, 4, '2');
INSERT INTO `jnm_sports` VALUES (15288, '赵玉芝  贺冰冰  黄嘉欣  甘依灵', '女子组中老年组', 1548, '安徽省代表队', 0.00, 142, 4, '3');
INSERT INTO `jnm_sports` VALUES (15289, '姜竣译  耿轶凡  张宸瑜  李悦涵', '混合组儿童组', 1549, '山东省代表队儿童组一队', 0.00, 142, 4, '4');
INSERT INTO `jnm_sports` VALUES (15290, '倪思妍 江晓曦  赖昱辰  胡大山', '混合组儿童组', 1550, '浙江省代表队一队', 0.00, 142, 4, '5');
INSERT INTO `jnm_sports` VALUES (15291, '张海腾  董俊泽  徐瑞隆  巩洛伊', '混合组儿童组', 1551, '山东省代表队儿童组二队', 0.00, 142, 4, '6');
INSERT INTO `jnm_sports` VALUES (15292, '朱晟轩  王诗凯  徐乾晖  施奕辰', '混合组儿童组', 1546, '浙江省代表队二队', 0.00, 143, 4, '1');
INSERT INTO `jnm_sports` VALUES (15293, '桂浩峻  桂小晶  李宸宇  王子阁', '混合组儿童组', 1547, '江苏省代表队二队', 0.00, 143, 4, '2');
INSERT INTO `jnm_sports` VALUES (15294, '潘  政  郭念衡  白梓涵  徐玉玉', '混合组少年组', 1548, '山东省代表队少年组二队', 0.00, 143, 4, '3');
INSERT INTO `jnm_sports` VALUES (15295, '郭振铭、孙海峰、张楚颜、林煜轩', '混合组少年组', 1549, '山东省代表队少年组一队', 0.00, 143, 4, '4');
INSERT INTO `jnm_sports` VALUES (15296, '周凤啟  徐嘉诚  曹先锋  冯熙惠', '混合组青年组', 1550, '山东省代表队青年组一队', 0.00, 143, 4, '5');
INSERT INTO `jnm_sports` VALUES (15297, '鲍智智  虞雅惠  徐梓凌  毛泽文', '混合组青年组', 1551, '浙江省代表队二队', 0.00, 143, 4, '6');
INSERT INTO `jnm_sports` VALUES (15298, '赵崎超  崔雪茹  黄  琰  张培旺', '混合组青年组', 1546, '山东省代表队青年组二队', 0.00, 144, 4, '1');
INSERT INTO `jnm_sports` VALUES (15299, '庞贵荣  窦夏倩  于亚雄  张耀辉', '混合组中青年组', 1547, '山东省代表队中青年组一队', 0.00, 144, 4, '2');
INSERT INTO `jnm_sports` VALUES (15300, '黄  翰  彭  越  王鑫鹏  陈昊冉', '男子组儿童组', 1552, '江苏省代表队一队', 0.00, 144, 4, '3');
INSERT INTO `jnm_sports` VALUES (15301, '徐乐恒  钦子涵  魏邵志  徐曦明', '男子组儿童组', 1553, '江苏省代表队一队', 0.00, 144, 4, '4');
INSERT INTO `jnm_sports` VALUES (15302, '周凤啟  阚明利  陈家乐  于存宝', '男子组青年组', 1554, '山东省代表队青年组一队', 0.00, 144, 4, '5');
INSERT INTO `jnm_sports` VALUES (15303, '郭晨阳  甘容鑫  邹扬扬  符柳彬', '男子组青年组', 1555, '上海市代表队', 0.00, 144, 4, '6');
INSERT INTO `jnm_sports` VALUES (15304, '侍继宇  徐思菡  张雨鑫  汤霖烨', '混合组儿童组', 1556, '江苏省代表队二队', 0.00, 145, 4, '1');
INSERT INTO `jnm_sports` VALUES (15305, '陈昊宇  赵一凡  陈星辰  沈安静', '混合组少年组', 1557, '江苏省代表队二队', 0.00, 145, 4, '2');
INSERT INTO `jnm_sports` VALUES (15306, '方立钊  刘子暄  鲍春慧  刘晓航', '混合组青年组', 1552, '山东省代表队青年组一队', 0.00, 145, 4, '3');
INSERT INTO `jnm_sports` VALUES (15307, '杨  运  谢红艳  覃继媚  孙文锋', '混合组青年组', 1553, '上海市代表队', 0.00, 145, 4, '4');
INSERT INTO `jnm_sports` VALUES (15308, '黄  翰  彭  越  王鑫鹏', '男子组儿童组', 1558, '江苏省代表队一队', 0.00, 146, 4, '1');
INSERT INTO `jnm_sports` VALUES (15309, '孙海峰  林煜轩  郭振铭', '男子组少年组', 1559, '山东省代表队少年组一队', 0.00, 146, 4, '2');
INSERT INTO `jnm_sports` VALUES (15310, '陈昊宇  赵一凡  陈星辰', '男子组少年组', 1560, '江苏省代表队二队', 0.00, 146, 4, '3');
INSERT INTO `jnm_sports` VALUES (15311, '徐乐恒  钦子涵  魏邵志', '男子组少年组', 1561, '江苏省代表队一队', 0.00, 146, 4, '4');
INSERT INTO `jnm_sports` VALUES (15312, '孙树康  刘子暄  刘晓航', '男子组青年组', 1562, '山东省代表队青年组一队', 0.00, 146, 4, '5');
INSERT INTO `jnm_sports` VALUES (15313, '梁厚德  桂红伟  王  毅', '男子组青年组', 1563, '上海市代表队', 0.00, 146, 4, '6');
INSERT INTO `jnm_sports` VALUES (15314, '范嘉伟  黄澄可  吕凌昊', '男子组青年组', 1558, '浙江省代表队二队', 0.00, 147, 4, '1');
INSERT INTO `jnm_sports` VALUES (15315, '陈裕涛  刘超龙  刘文雄', '男子组中青年组', 1559, '福建省代表队二队', 0.00, 147, 4, '2');
INSERT INTO `jnm_sports` VALUES (15316, '赵  伟  李  亮  杨文杰', '男子组中青年组', 1560, '江苏省代表队一队', 0.00, 147, 4, '3');
INSERT INTO `jnm_sports` VALUES (15317, '张冰莹  张宸瑜  赵梓涵', '女子组儿童组', 1561, '山东省代表队儿童组一队', 0.00, 147, 4, '4');
INSERT INTO `jnm_sports` VALUES (15318, '马欣怡  沈安静  沈安平', '女子组少年组', 1562, '江苏省代表队二队', 0.00, 147, 4, '5');
INSERT INTO `jnm_sports` VALUES (15319, '鲍智智  王  宣  张  茜', '女子组青年组', 1563, '浙江省代表队二队', 0.00, 147, 4, '6');
INSERT INTO `jnm_sports` VALUES (15320, '王建强  程泉方  陈心烁', '混合组儿童组', 1558, '山东省代表队儿童组一队', 0.00, 148, 4, '1');
INSERT INTO `jnm_sports` VALUES (15321, '张海腾  董俊泽  巩洛伊', '混合组儿童组', 1559, '山东省代表队儿童组二队', 0.00, 148, 4, '2');
INSERT INTO `jnm_sports` VALUES (15322, '侍继宇  徐思菡  张雨鑫', '混合组儿童组', 1560, '江苏省代表队二队', 0.00, 148, 4, '3');
INSERT INTO `jnm_sports` VALUES (15323, '王继凯  张嘉然  朱煜璇', '混合组少年组', 1561, '山东省代表队少年组二队', 0.00, 148, 4, '4');
INSERT INTO `jnm_sports` VALUES (15324, '曾善特  叶静怡  金裕凯', '混合组少年组', 1562, '浙江省代表队一队', 0.00, 148, 4, '5');
INSERT INTO `jnm_sports` VALUES (15325, '彭治皓  于正帅  姜  鑫', '混合组青年组', 1563, '山东省代表队青年组一队', 0.00, 148, 4, '6');
INSERT INTO `jnm_sports` VALUES (15326, '李丽诗  白凌璇  曹雪原', '混合组青年组', 1558, '上海市代表队', 0.00, 149, 4, '1');
INSERT INTO `jnm_sports` VALUES (15327, '赵崎超  许弘钰  黄  琰', '混合组青年组', 1559, '山东省代表队青年组二队', 0.00, 149, 4, '2');
INSERT INTO `jnm_sports` VALUES (15328, '詹祈诗  梁建锋  陈俊刚', '混合组中老年组', 1560, '福建省代表队一队', 0.00, 149, 4, '3');
INSERT INTO `jnm_sports` VALUES (15329, '陈心烁', '女子组儿童组', 1564, '山东省代表队儿童组一队', 0.00, 150, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15330, '张冰莹', '女子组儿童组', 1564, '山东省代表队儿童组一队', 0.00, 151, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15331, '曾善特', '女子组儿童组', 1564, '浙江省代表队一队', 0.00, 152, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15332, '辛梓菡', '女子组儿童组', 1564, '山东省代表队儿童组二队', 0.00, 153, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15333, '洪景昕', '女子组儿童组', 1564, '山东省代表队儿童组二队', 0.00, 154, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15334, '甘依灵', '女子组儿童组', 1564, '安徽省代表队', 0.00, 155, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15335, '李琪琪', '女子组儿童组', 1564, '江苏省代表队一队', 0.00, 156, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15336, '曹炎溪', '女子组儿童组', 1564, '江苏省代表队一队', 0.00, 157, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15337, '孙美绮', '女子组少年组', 1564, '山东省代表队少年组二队', 0.00, 158, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15338, '潘欣怡', '女子组少年组', 1564, '山东省代表队少年组二队', 0.00, 159, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15339, '叶静怡', '女子组少年组', 1564, '浙江省代表队一队', 0.00, 160, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15340, '张楚颜', '女子组少年组', 1564, '山东省代表队少年组一队', 0.00, 161, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15341, '付峻菁', '女子组少年组', 1564, '山东省代表队少年组一队', 0.00, 162, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15342, '鲍春慧', '女子组青年组', 1564, '山东省代表队青年组一队', 0.00, 163, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15343, '牛同萌', '女子组青年组', 1564, '山东省代表队青年组一队', 0.00, 164, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15344, '谢红艳', '女子组青年组', 1564, '上海市代表队', 0.00, 165, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15345, '覃继媚', '女子组青年组', 1564, '上海市代表队', 0.00, 166, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15346, '窦夏倩', '女子组中青年组', 1564, '山东省代表队中青年组一队', 0.00, 167, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15347, '贺冰冰', '女子组中青年组', 1564, '安徽省代表队', 0.00, 168, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15348, '赵玉芝', '女子组中老年组', 1564, '安徽省代表队', 0.00, 169, 12, 'A');
INSERT INTO `jnm_sports` VALUES (15349, '王建强  耿轶凡  任世文  程泉方  张宸瑜  陈雨杭  孙海峰  张楚颜  刘腾泽  付峻菁', '不分组别', 1565, '山东省代表队儿童组一队', 0.00, 170, 4, '1');
INSERT INTO `jnm_sports` VALUES (15350, '郭晨阳  甘容鑫  邹扬扬  符柳彬  梁厚德  曹雪原  廖俊杰  蒋俊杰  牛旭生  昝加宇', '不分组别', 1566, '上海市代表队', 0.00, 170, 4, '2');
INSERT INTO `jnm_sports` VALUES (15351, '梁德福  生浩宇  王继凯  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡', '不分组别', 1567, '山东省代表队少年组二队', 0.00, 170, 4, '3');
INSERT INTO `jnm_sports` VALUES (15352, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1565, '浙江省代表队二队', 0.00, 171, 4, '1');
INSERT INTO `jnm_sports` VALUES (15353, '陈冰心  张汤艺  陈静钥  林沚涵  叶  梵  陈智新  陈陶然  詹祈诗  陈俊刚  梁建锋', '不分组别', 1566, '福建省代表队一队', 0.00, 171, 4, '2');
INSERT INTO `jnm_sports` VALUES (15354, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1567, '山东省代表队青年组二队', 0.00, 171, 4, '3');
INSERT INTO `jnm_sports` VALUES (15355, '金永研', '男子组儿童组', 1568, '山东省代表队儿童组一队', 0.00, 172, 4, '1');
INSERT INTO `jnm_sports` VALUES (15356, '张恺清', '男子组儿童组', 1569, '山东省代表队儿童组一队', 0.00, 172, 4, '2');
INSERT INTO `jnm_sports` VALUES (15357, '金辰恺', '男子组儿童组', 1570, '上海市代表队', 0.00, 172, 4, '3');
INSERT INTO `jnm_sports` VALUES (15358, '林明轩', '男子组儿童组', 1571, '上海市代表队', 0.00, 172, 4, '4');
INSERT INTO `jnm_sports` VALUES (15359, '胡大山', '男子组儿童组', 1572, '浙江省代表队一队', 0.00, 172, 4, '5');
INSERT INTO `jnm_sports` VALUES (15360, '金裕凯', '男子组儿童组', 1573, '浙江省代表队一队', 0.00, 172, 4, '6');
INSERT INTO `jnm_sports` VALUES (15361, '董俊泽', '男子组儿童组', 1568, '山东省代表队儿童组二队', 0.00, 173, 4, '1');
INSERT INTO `jnm_sports` VALUES (15362, '王俊初', '男子组儿童组', 1569, '山东省代表队儿童组二队', 0.00, 173, 4, '2');
INSERT INTO `jnm_sports` VALUES (15363, '朱晟轩', '男子组儿童组', 1570, '浙江省代表队二队', 0.00, 173, 4, '3');
INSERT INTO `jnm_sports` VALUES (15364, '王诗凯', '男子组儿童组', 1571, '浙江省代表队二队', 0.00, 173, 4, '4');
INSERT INTO `jnm_sports` VALUES (15365, '陈子聪', '男子组儿童组', 1572, '安徽省代表队', 0.00, 173, 4, '5');
INSERT INTO `jnm_sports` VALUES (15366, '史轩泽', '男子组儿童组', 1573, '江苏省代表队二队', 0.00, 173, 4, '6');
INSERT INTO `jnm_sports` VALUES (15367, '孙睿韬', '男子组儿童组', 1568, '江苏省代表队二队', 0.00, 174, 4, '1');
INSERT INTO `jnm_sports` VALUES (15368, '梁德福', '男子组少年组', 1569, '山东省代表队少年组二队', 0.00, 174, 4, '2');
INSERT INTO `jnm_sports` VALUES (15369, '王继凯', '男子组少年组', 1570, '山东省代表队少年组二队', 0.00, 174, 4, '3');
INSERT INTO `jnm_sports` VALUES (15370, '舒澍校', '男子组少年组', 1571, '浙江省代表队二队', 0.00, 174, 4, '4');
INSERT INTO `jnm_sports` VALUES (15371, '林煜轩', '男子组少年组', 1572, '山东省代表队少年组一队', 0.00, 174, 4, '5');
INSERT INTO `jnm_sports` VALUES (15372, '张凯涛', '男子组少年组', 1573, '山东省代表队少年组一队', 0.00, 174, 4, '6');
INSERT INTO `jnm_sports` VALUES (15373, '陈裕涛', '男子组少年组', 1568, '福建省代表队二队', 0.00, 175, 4, '1');
INSERT INTO `jnm_sports` VALUES (15374, '王硕', '男子组少年组', 1569, '江苏省代表队二队', 0.00, 175, 4, '2');
INSERT INTO `jnm_sports` VALUES (15375, '孙树康', '男子组青年组', 1570, '山东省代表队青年组一队', 0.00, 175, 4, '3');
INSERT INTO `jnm_sports` VALUES (15376, '徐嘉诚', '男子组青年组', 1571, '山东省代表队青年组一队', 0.00, 175, 4, '4');
INSERT INTO `jnm_sports` VALUES (15377, '蒋俊杰', '男子组青年组', 1572, '上海市代表队', 0.00, 175, 4, '5');
INSERT INTO `jnm_sports` VALUES (15378, '昝加宇', '男子组青年组', 1573, '上海市代表队', 0.00, 175, 4, '6');
INSERT INTO `jnm_sports` VALUES (15379, '段中飞', '男子组青年组', 1568, '浙江省代表队一队', 0.00, 176, 4, '1');
INSERT INTO `jnm_sports` VALUES (15380, '徐梓凌', '男子组青年组', 1569, '浙江省代表队二队', 0.00, 176, 4, '2');
INSERT INTO `jnm_sports` VALUES (15381, '毛泽文', '男子组青年组', 1570, '浙江省代表队二队', 0.00, 176, 4, '3');
INSERT INTO `jnm_sports` VALUES (15382, '毛旋', '男子组青年组', 1571, '福建省代表队二队', 0.00, 176, 4, '4');
INSERT INTO `jnm_sports` VALUES (15383, '黄斌', '男子组青年组', 1572, '福建省代表队二队', 0.00, 176, 4, '5');
INSERT INTO `jnm_sports` VALUES (15384, '肖凤辉', '男子组青年组', 1573, '山东省代表队青年组二队', 0.00, 176, 4, '6');
INSERT INTO `jnm_sports` VALUES (15385, '周文生', '男子组青年组', 1568, '山东省代表队青年组二队', 0.00, 177, 4, '1');
INSERT INTO `jnm_sports` VALUES (15386, '于亚雄', '男子组中青年组', 1569, '山东省代表队中青年组一队', 0.00, 177, 4, '2');
INSERT INTO `jnm_sports` VALUES (15387, '张耀辉', '男子组中青年组', 1570, '山东省代表队中青年组一队', 0.00, 177, 4, '3');
INSERT INTO `jnm_sports` VALUES (15388, '赵皖龙', '男子组中青年组', 1571, '安徽省代表队', 0.00, 177, 4, '4');
INSERT INTO `jnm_sports` VALUES (15389, '杨柳青', '男子组中青年组', 1572, '安徽省代表队', 0.00, 177, 4, '5');
INSERT INTO `jnm_sports` VALUES (15390, '刘文雄', '男子组中青年组', 1573, '福建省代表队二队', 0.00, 177, 4, '6');
INSERT INTO `jnm_sports` VALUES (15391, '李磊', '男子组中老年组', 1568, '山东省代表队中老年组一队', 0.00, 178, 4, '1');
INSERT INTO `jnm_sports` VALUES (15392, '冯锋', '男子组中老年组', 1569, '安徽省代表队', 0.00, 178, 4, '2');
INSERT INTO `jnm_sports` VALUES (15393, '阚明利  彭治皓  程杰睿  于正帅  方立钊  徐嘉诚  曹先锋  姜  鑫  宋欣阳  陈家乐', '不分组别', 1574, '山东省代表队青年组一队', 0.00, 179, 4, '1');
INSERT INTO `jnm_sports` VALUES (15394, '王建强  耿轶凡  任世文  程泉方  陈心烁  张冰莹  陈雨杭  张楚颜  刘腾泽  张凯涛', '不分组别', 1575, '山东省代表队儿童组一队', 0.00, 179, 4, '2');
INSERT INTO `jnm_sports` VALUES (15395, '潘  政  郭念衡  白梓涵  张嘉然  钟雅婷  孙美绮  朱雅琪  潘欣怡  徐玉玉  苗立华', '不分组别', 1576, '山东省代表队少年组二队', 0.00, 179, 4, '3');
INSERT INTO `jnm_sports` VALUES (15396, '鲍智智  王  宣  张  茜  虞雅惠  徐梓凌  范嘉伟  黄澄可  毛泽文  潘乾飚  吕凌昊', '不分组别', 1577, '浙江省代表队二队', 0.00, 179, 4, '4');
INSERT INTO `jnm_sports` VALUES (15397, '吴  迪  赵皖龙  贺冰冰  张世豪  黄嘉欣  陈子聪  戚辰轩  甘依灵  晏一帆  张蔼烜', '不分组别', 1578, '安徽省代表队', 0.00, 179, 4, '5');
INSERT INTO `jnm_sports` VALUES (15398, '鲁长琛  陈守印  肖凤辉  周文生  王雨涛  杜玲洁  葛  迪  刘  成  魏金旭  江高升', '不分组别', 1579, '山东省代表队青年组二队', 0.00, 179, 4, '6');
INSERT INTO `jnm_sports` VALUES (15399, '陈心烁', '女子组儿童组', 1580, '山东省代表队儿童组一队', 0.00, 180, 4, '1');
INSERT INTO `jnm_sports` VALUES (15400, '张冰莹', '女子组儿童组', 1581, '山东省代表队儿童组一队', 0.00, 180, 4, '2');
INSERT INTO `jnm_sports` VALUES (15401, '倪思妍', '女子组儿童组', 1582, '浙江省代表队一队', 0.00, 180, 4, '3');
INSERT INTO `jnm_sports` VALUES (15402, '江晓曦', '女子组儿童组', 1583, '浙江省代表队一队', 0.00, 180, 4, '4');
INSERT INTO `jnm_sports` VALUES (15403, '辛梓菡', '女子组儿童组', 1584, '山东省代表队儿童组二队', 0.00, 180, 4, '5');
INSERT INTO `jnm_sports` VALUES (15404, '曹馨月', '女子组儿童组', 1585, '山东省代表队儿童组二队', 0.00, 180, 4, '6');
INSERT INTO `jnm_sports` VALUES (15405, '吴奕楠', '女子组儿童组', 1580, '浙江省代表队二队', 0.00, 181, 4, '1');
INSERT INTO `jnm_sports` VALUES (15406, '施奕辰', '女子组儿童组', 1581, '浙江省代表队二队', 0.00, 181, 4, '2');
INSERT INTO `jnm_sports` VALUES (15407, '陈冰心', '女子组儿童组', 1582, '福建省代表队一队', 0.00, 181, 4, '3');
INSERT INTO `jnm_sports` VALUES (15408, '张汤艺', '女子组儿童组', 1583, '福建省代表队一队', 0.00, 181, 4, '4');
INSERT INTO `jnm_sports` VALUES (15409, '孙美绮', '女子组少年组', 1584, '山东省代表队少年组二队', 0.00, 181, 4, '5');
INSERT INTO `jnm_sports` VALUES (15410, '朱煜璇', '女子组少年组', 1585, '山东省代表队少年组二队', 0.00, 181, 4, '6');
INSERT INTO `jnm_sports` VALUES (15411, '付峻菁', '女子组少年组', 1580, '山东省代表队少年组一队', 0.00, 182, 4, '1');
INSERT INTO `jnm_sports` VALUES (15412, '杨雅茹', '女子组少年组', 1581, '山东省代表队少年组一队', 0.00, 182, 4, '2');
INSERT INTO `jnm_sports` VALUES (15413, '冯熙惠', '女子组青年组', 1582, '山东省代表队青年组一队', 0.00, 182, 4, '3');
INSERT INTO `jnm_sports` VALUES (15414, '鲍春慧', '女子组青年组', 1583, '山东省代表队青年组一队', 0.00, 182, 4, '4');
INSERT INTO `jnm_sports` VALUES (15415, '谢红艳', '女子组青年组', 1584, '上海市代表队', 0.00, 182, 4, '5');
INSERT INTO `jnm_sports` VALUES (15416, '鲍智智', '女子组青年组', 1585, '浙江省代表队二队', 0.00, 182, 4, '6');
INSERT INTO `jnm_sports` VALUES (15417, '王宣', '女子组青年组', 1580, '浙江省代表队二队', 0.00, 183, 4, '1');
INSERT INTO `jnm_sports` VALUES (15418, '詹祈诗', '女子组青年组', 1581, '福建省代表队一队', 0.00, 183, 4, '2');
INSERT INTO `jnm_sports` VALUES (15419, '崔雪茹', '女子组青年组', 1582, '山东省代表队青年组二队', 0.00, 183, 4, '3');
INSERT INTO `jnm_sports` VALUES (15420, '陈丽媛', '女子组青年组', 1583, '山东省代表队青年组二队', 0.00, 183, 4, '4');
INSERT INTO `jnm_sports` VALUES (15421, '庞贵荣', '女子组中青年组', 1584, '山东省代表队中青年组一队', 0.00, 183, 4, '5');
INSERT INTO `jnm_sports` VALUES (15422, '贺冰冰', '女子组中青年组', 1585, '安徽省代表队', 0.00, 183, 4, '6');
INSERT INTO `jnm_sports` VALUES (15423, '赵玉芝', '女子组中老年组', 1580, '安徽省代表队', 0.00, 184, 4, '1');

-- ----------------------------
-- Table structure for jnm_time
-- ----------------------------
DROP TABLE IF EXISTS `jnm_time`;
CREATE TABLE `jnm_time`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `delete_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 300 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_time
-- ----------------------------
INSERT INTO `jnm_time` VALUES (290, '2024-07-13 08:30:00', '2024-07-13 09:20:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (291, '2024-07-13 09:30:00', '2024-07-13 10:00:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (292, '2024-07-13 10:10:00', '2024-07-13 10:30:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (293, '2024-07-13 10:40:00', '2024-07-13 11:05:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (294, '2024-07-13 11:25:00', '2024-07-13 11:40:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (295, '2024-07-13 14:00:00', '2024-07-13 14:50:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (296, '2024-07-13 14:50:00', '2024-07-13 14:55:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (297, '2024-07-13 15:00:00', '2024-07-13 15:30:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (298, '2024-07-13 15:30:00', '2024-07-13 15:40:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);
INSERT INTO `jnm_time` VALUES (299, '2024-07-13 15:40:00', '2024-07-13 16:00:00', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL);

-- ----------------------------
-- Table structure for jnm_url
-- ----------------------------
DROP TABLE IF EXISTS `jnm_url`;
CREATE TABLE `jnm_url`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isshow` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `redirect` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_url
-- ----------------------------
INSERT INTO `jnm_url` VALUES (1, NULL, 'House', '0', '1', '/user/index', '{\"component\": \"dashboard/index\", \"isParentView\": 1, \"sort\": \"1\", \"title\": \"系统首页\", \"isNewPage\": 0}', '/competition/project');
INSERT INTO `jnm_url` VALUES (2, NULL, 'User', '1', NULL, '/user/manage', '{\"component\": \"user/index\", \"isParentView\": 1, \"sort\": 2, \"title\": \"个人中心\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (3, 4, '', '1', NULL, '/user/role', '{\"component\": \"user/role\", \"isParentView\": 1, \"sort\": 3, \"title\": \"角色控制\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (4, NULL, 'Operation', '1', NULL, '', '{\"component\": \"\", \"isParentView\": 1, \"sort\": 3, \"title\": \"权限管理\", \"isNewPage\": 0}', '');
INSERT INTO `jnm_url` VALUES (5, 4, NULL, '1', NULL, '/user/role/perms', '{\"component\": \"user/perms\", \"isParentView\": 1, \"sort\": 3, \"title\": \"权限列表\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (6, 4, NULL, '1', NULL, '/user/role/urls', '{\"component\": \"user/urls\", \"isParentView\": 1, \"sort\": 3, \"title\": \"页面管理\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (23, NULL, 'Avatar', '1', NULL, '/user/user_manage', '{\"component\": \"user/userManage\", \"isParentView\": 1, \"sort\": \"1\", \"title\": \"用户管理\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (25, NULL, NULL, '0', NULL, NULL, '{\"component\": \"\", \"isParentView\": 0, \"sort\": \"\", \"title\": \"用户编辑\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (26, NULL, 'WindPower', '1', NULL, '/competition/project', '{\"component\": \"competition/project\", \"isParentView\": 1, \"sort\": \"1\", \"title\": \"项目管理\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (27, 26, NULL, '1', NULL, '/competition/project', '{\"component\": \"competition/project\", \"isParentView\": 1, \"sort\": \"\", \"title\": \"项目列表\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (28, 26, NULL, '1', NULL, '/competition/judge_type', '{\"title\":\"\\u88c1\\u5224\\u7c7b\\u578b\\u7ba1\\u7406\",\"sort\":\"\",\"component\":\"competition\\/judgeType\",\"isParentView\":1}', NULL);
INSERT INTO `jnm_url` VALUES (29, 26, NULL, '1', NULL, '/competition/project_type', '{\"component\": \"competition/projectType\", \"isParentView\": 1, \"sort\": \"\", \"title\": \"项目类型管理\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (30, 26, NULL, '0', NULL, '/competition/judge', '{\"component\": \"competition/judge\", \"isParentView\": 1, \"sort\": \"\", \"title\": \"制裁评判\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (31, 33, NULL, '1', NULL, '/competition/hshow', '{\"component\": \"competition/hshow\", \"isParentView\": 0, \"sort\": \"\", \"title\": \"综合大屏展示\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (32, 33, NULL, '1', NULL, '/competition/hshowsd', '{\"component\": \"competition/hshowsd\", \"isParentView\": 0, \"sort\": \"\", \"title\": \"速度赛大屏展示\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (33, NULL, 'TrendCharts', '1', NULL, NULL, '{\"component\": \"\", \"isParentView\": 1, \"sort\": \"\", \"title\": \"大屏展示\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (34, 33, NULL, '1', NULL, '/competition/hshowgd', '{\"component\": \"competition/hshowgd\", \"isParentView\": 0, \"sort\": \"\", \"title\": \"规定赛大屏展示\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (35, 33, NULL, '1', NULL, '/competition/hshowhy', '{\"component\": \"competition/hshowhy\", \"isParentView\": 0, \"sort\": \"\", \"title\": \"花样赛大屏展示\", \"isNewPage\": 0}', NULL);
INSERT INTO `jnm_url` VALUES (38, NULL, 'Paperclip', '1', NULL, '/user/role/urls1', '{\"component\": \"user/urls\", \"isNewPage\": 1, \"isParentView\": 0, \"sort\": \"\", \"title\": \"新页面新窗口打开\"}', NULL);

-- ----------------------------
-- Table structure for jnm_user
-- ----------------------------
DROP TABLE IF EXISTS `jnm_user`;
CREATE TABLE `jnm_user`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NULL DEFAULT '1997-01-01 00:00:00',
  `update_time` datetime NULL DEFAULT '1997-01-01 00:00:00',
  `delete_time` datetime NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timeout` int(11) NULL DEFAULT 180,
  `forbidden` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_user
-- ----------------------------
INSERT INTO `jnm_user` VALUES (1, 'sfs', '111111', '111111', '1997-01-01 00:00:00', '2024-03-12 16:15:35', NULL, 'http://cdn.jnm.ink/JNM1-25576c460a9048f38a4e5b935ec57429', NULL, '777888999444555666', 'http://cdn.jnm.ink/Fhw8G7Ac7cNOH3lrPn-Kkcy_eUpw', 180, 0);
INSERT INTO `jnm_user` VALUES (202, 'sadmin', 'sadmin', 'sadmin', '2024-06-06 13:07:17', '2024-06-06 13:07:28', NULL, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', NULL, NULL, NULL, 180, 0);
INSERT INTO `jnm_user` VALUES (203, 'ceshi1', 'ceshi1', 'ceshi1', '2024-07-11 19:28:13', '2024-07-11 19:28:13', NULL, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', NULL, NULL, NULL, 180, 0);
INSERT INTO `jnm_user` VALUES (204, '121212', '121212', '121212', '2024-07-11 23:18:14', '2024-07-11 23:18:14', NULL, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', NULL, NULL, NULL, 180, 0);

-- ----------------------------
-- Table structure for jnm_user_role
-- ----------------------------
DROP TABLE IF EXISTS `jnm_user_role`;
CREATE TABLE `jnm_user_role`  (
  `user_id` int(11) UNSIGNED NOT NULL COMMENT '用户ID',
  `role_id` int(11) UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户-角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_user_role
-- ----------------------------
INSERT INTO `jnm_user_role` VALUES (16, 1);
INSERT INTO `jnm_user_role` VALUES (116, 7);
INSERT INTO `jnm_user_role` VALUES (130, 1);
INSERT INTO `jnm_user_role` VALUES (131, 8);
INSERT INTO `jnm_user_role` VALUES (132, 7);
INSERT INTO `jnm_user_role` VALUES (138, 7);
INSERT INTO `jnm_user_role` VALUES (139, 7);
INSERT INTO `jnm_user_role` VALUES (140, 7);
INSERT INTO `jnm_user_role` VALUES (141, 7);
INSERT INTO `jnm_user_role` VALUES (142, 7);
INSERT INTO `jnm_user_role` VALUES (143, 7);
INSERT INTO `jnm_user_role` VALUES (144, 7);
INSERT INTO `jnm_user_role` VALUES (145, 7);
INSERT INTO `jnm_user_role` VALUES (146, 7);
INSERT INTO `jnm_user_role` VALUES (147, 7);
INSERT INTO `jnm_user_role` VALUES (148, 7);
INSERT INTO `jnm_user_role` VALUES (149, 7);
INSERT INTO `jnm_user_role` VALUES (150, 7);
INSERT INTO `jnm_user_role` VALUES (151, 7);
INSERT INTO `jnm_user_role` VALUES (152, 7);
INSERT INTO `jnm_user_role` VALUES (153, 7);
INSERT INTO `jnm_user_role` VALUES (154, 7);
INSERT INTO `jnm_user_role` VALUES (155, 7);
INSERT INTO `jnm_user_role` VALUES (156, 7);
INSERT INTO `jnm_user_role` VALUES (157, 7);
INSERT INTO `jnm_user_role` VALUES (158, 7);
INSERT INTO `jnm_user_role` VALUES (159, 7);
INSERT INTO `jnm_user_role` VALUES (160, 7);
INSERT INTO `jnm_user_role` VALUES (161, 7);
INSERT INTO `jnm_user_role` VALUES (162, 7);
INSERT INTO `jnm_user_role` VALUES (163, 7);
INSERT INTO `jnm_user_role` VALUES (164, 7);
INSERT INTO `jnm_user_role` VALUES (165, 7);
INSERT INTO `jnm_user_role` VALUES (166, 7);
INSERT INTO `jnm_user_role` VALUES (167, 7);
INSERT INTO `jnm_user_role` VALUES (168, 7);
INSERT INTO `jnm_user_role` VALUES (169, 7);
INSERT INTO `jnm_user_role` VALUES (170, 7);
INSERT INTO `jnm_user_role` VALUES (171, 7);
INSERT INTO `jnm_user_role` VALUES (172, 7);
INSERT INTO `jnm_user_role` VALUES (173, 7);
INSERT INTO `jnm_user_role` VALUES (174, 7);
INSERT INTO `jnm_user_role` VALUES (175, 7);
INSERT INTO `jnm_user_role` VALUES (176, 7);
INSERT INTO `jnm_user_role` VALUES (177, 7);
INSERT INTO `jnm_user_role` VALUES (178, 7);
INSERT INTO `jnm_user_role` VALUES (179, 7);
INSERT INTO `jnm_user_role` VALUES (180, 7);
INSERT INTO `jnm_user_role` VALUES (181, 7);
INSERT INTO `jnm_user_role` VALUES (182, 7);
INSERT INTO `jnm_user_role` VALUES (183, 7);
INSERT INTO `jnm_user_role` VALUES (184, 7);
INSERT INTO `jnm_user_role` VALUES (185, 7);
INSERT INTO `jnm_user_role` VALUES (186, 7);
INSERT INTO `jnm_user_role` VALUES (187, 7);
INSERT INTO `jnm_user_role` VALUES (188, 7);
INSERT INTO `jnm_user_role` VALUES (189, 7);
INSERT INTO `jnm_user_role` VALUES (190, 7);
INSERT INTO `jnm_user_role` VALUES (191, 7);
INSERT INTO `jnm_user_role` VALUES (192, 7);
INSERT INTO `jnm_user_role` VALUES (193, 7);
INSERT INTO `jnm_user_role` VALUES (194, 7);
INSERT INTO `jnm_user_role` VALUES (199, 7);
INSERT INTO `jnm_user_role` VALUES (200, 7);
INSERT INTO `jnm_user_role` VALUES (201, 7);
INSERT INTO `jnm_user_role` VALUES (202, 8);
INSERT INTO `jnm_user_role` VALUES (203, 7);
INSERT INTO `jnm_user_role` VALUES (204, 7);

-- ----------------------------
-- Table structure for jnm_venues
-- ----------------------------
DROP TABLE IF EXISTS `jnm_venues`;
CREATE TABLE `jnm_venues`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `venue_order` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `delete_time` datetime NULL DEFAULT NULL,
  `projects_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1586 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_venues
-- ----------------------------
INSERT INTO `jnm_venues` VALUES (1287, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 368);
INSERT INTO `jnm_venues` VALUES (1288, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 369);
INSERT INTO `jnm_venues` VALUES (1289, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 370);
INSERT INTO `jnm_venues` VALUES (1290, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 371);
INSERT INTO `jnm_venues` VALUES (1291, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1292, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1293, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1294, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1295, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1296, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 372);
INSERT INTO `jnm_venues` VALUES (1297, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1298, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1299, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1300, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1301, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1302, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 373);
INSERT INTO `jnm_venues` VALUES (1303, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1304, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1305, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1306, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1307, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1308, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 374);
INSERT INTO `jnm_venues` VALUES (1309, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1310, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1311, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1312, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1313, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1314, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 375);
INSERT INTO `jnm_venues` VALUES (1315, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1316, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1317, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1318, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1319, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1320, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 376);
INSERT INTO `jnm_venues` VALUES (1321, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 377);
INSERT INTO `jnm_venues` VALUES (1322, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 378);
INSERT INTO `jnm_venues` VALUES (1323, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1324, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1325, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1326, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1327, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1328, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 379);
INSERT INTO `jnm_venues` VALUES (1329, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1330, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1331, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1332, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1333, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1334, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 380);
INSERT INTO `jnm_venues` VALUES (1335, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1336, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1337, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1338, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1339, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1340, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 381);
INSERT INTO `jnm_venues` VALUES (1341, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1342, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1343, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1344, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1345, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1346, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 382);
INSERT INTO `jnm_venues` VALUES (1347, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1348, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1349, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1350, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1351, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1352, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 383);
INSERT INTO `jnm_venues` VALUES (1353, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1354, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1355, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1356, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1357, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1358, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 384);
INSERT INTO `jnm_venues` VALUES (1359, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 385);
INSERT INTO `jnm_venues` VALUES (1360, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 386);
INSERT INTO `jnm_venues` VALUES (1361, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 387);
INSERT INTO `jnm_venues` VALUES (1362, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1363, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1364, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1365, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1366, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1367, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 388);
INSERT INTO `jnm_venues` VALUES (1368, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1369, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1370, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1371, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1372, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1373, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 389);
INSERT INTO `jnm_venues` VALUES (1374, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1375, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1376, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1377, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1378, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1379, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 390);
INSERT INTO `jnm_venues` VALUES (1380, '场地A', 'A', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 391);
INSERT INTO `jnm_venues` VALUES (1381, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 392);
INSERT INTO `jnm_venues` VALUES (1382, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 392);
INSERT INTO `jnm_venues` VALUES (1383, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 392);
INSERT INTO `jnm_venues` VALUES (1384, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1385, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1386, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1387, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1388, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1389, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 393);
INSERT INTO `jnm_venues` VALUES (1390, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1391, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1392, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1393, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1394, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1395, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 394);
INSERT INTO `jnm_venues` VALUES (1396, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1397, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1398, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1399, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1400, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1401, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 395);
INSERT INTO `jnm_venues` VALUES (1402, '场地1', '1', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1403, '场地2', '2', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1404, '场地3', '3', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1405, '场地4', '4', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1406, '场地5', '5', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1407, '场地6', '6', '2024-07-10 20:00:08', '2024-07-10 20:00:08', NULL, 396);
INSERT INTO `jnm_venues` VALUES (1408, '场地A', 'A', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 397);
INSERT INTO `jnm_venues` VALUES (1409, '场地A', 'A', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 398);
INSERT INTO `jnm_venues` VALUES (1410, '场地A', 'A', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 399);
INSERT INTO `jnm_venues` VALUES (1411, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1412, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1413, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1414, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1415, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1416, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 400);
INSERT INTO `jnm_venues` VALUES (1417, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1418, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1419, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1420, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1421, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1422, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 401);
INSERT INTO `jnm_venues` VALUES (1423, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1424, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1425, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1426, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1427, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1428, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 402);
INSERT INTO `jnm_venues` VALUES (1429, '场地A', 'A', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 403);
INSERT INTO `jnm_venues` VALUES (1430, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 404);
INSERT INTO `jnm_venues` VALUES (1431, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 404);
INSERT INTO `jnm_venues` VALUES (1432, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 404);
INSERT INTO `jnm_venues` VALUES (1433, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1434, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1435, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1436, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1437, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1438, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 405);
INSERT INTO `jnm_venues` VALUES (1439, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1440, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1441, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1442, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1443, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1444, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 406);
INSERT INTO `jnm_venues` VALUES (1445, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1446, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1447, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1448, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1449, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1450, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 407);
INSERT INTO `jnm_venues` VALUES (1451, '场地1', '1', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1452, '场地2', '2', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1453, '场地3', '3', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1454, '场地4', '4', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1455, '场地5', '5', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1456, '场地6', '6', '2024-07-12 17:37:35', '2024-07-12 17:37:35', NULL, 408);
INSERT INTO `jnm_venues` VALUES (1457, '场地A', 'A', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 409);
INSERT INTO `jnm_venues` VALUES (1458, '场地A', 'A', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 410);
INSERT INTO `jnm_venues` VALUES (1459, '场地A', 'A', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 411);
INSERT INTO `jnm_venues` VALUES (1460, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1461, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1462, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1463, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1464, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1465, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 412);
INSERT INTO `jnm_venues` VALUES (1466, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1467, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1468, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1469, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1470, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1471, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 413);
INSERT INTO `jnm_venues` VALUES (1472, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1473, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1474, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1475, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1476, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1477, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 414);
INSERT INTO `jnm_venues` VALUES (1478, '场地A', 'A', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 415);
INSERT INTO `jnm_venues` VALUES (1479, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 416);
INSERT INTO `jnm_venues` VALUES (1480, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 416);
INSERT INTO `jnm_venues` VALUES (1481, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 416);
INSERT INTO `jnm_venues` VALUES (1482, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1483, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1484, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1485, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1486, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1487, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 417);
INSERT INTO `jnm_venues` VALUES (1488, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1489, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1490, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1491, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1492, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1493, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 418);
INSERT INTO `jnm_venues` VALUES (1494, '场地1', '1', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1495, '场地2', '2', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1496, '场地3', '3', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1497, '场地4', '4', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1498, '场地5', '5', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1499, '场地6', '6', '2024-07-12 17:40:26', '2024-07-12 17:40:26', NULL, 419);
INSERT INTO `jnm_venues` VALUES (1500, '场地A', 'A', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 420);
INSERT INTO `jnm_venues` VALUES (1501, '场地A', 'A', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 421);
INSERT INTO `jnm_venues` VALUES (1502, '场地A', 'A', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 422);
INSERT INTO `jnm_venues` VALUES (1503, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1504, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1505, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1506, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1507, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1508, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 423);
INSERT INTO `jnm_venues` VALUES (1509, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1510, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1511, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1512, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1513, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1514, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 424);
INSERT INTO `jnm_venues` VALUES (1515, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1516, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1517, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1518, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1519, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1520, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 425);
INSERT INTO `jnm_venues` VALUES (1521, '场地A', 'A', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 426);
INSERT INTO `jnm_venues` VALUES (1522, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 427);
INSERT INTO `jnm_venues` VALUES (1523, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 427);
INSERT INTO `jnm_venues` VALUES (1524, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 427);
INSERT INTO `jnm_venues` VALUES (1525, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1526, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1527, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1528, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1529, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1530, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 428);
INSERT INTO `jnm_venues` VALUES (1531, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1532, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1533, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1534, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1535, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1536, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 429);
INSERT INTO `jnm_venues` VALUES (1537, '场地1', '1', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1538, '场地2', '2', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1539, '场地3', '3', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1540, '场地4', '4', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1541, '场地5', '5', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1542, '场地6', '6', '2024-07-12 17:45:11', '2024-07-12 17:45:11', NULL, 430);
INSERT INTO `jnm_venues` VALUES (1543, '场地A', 'A', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 431);
INSERT INTO `jnm_venues` VALUES (1544, '场地A', 'A', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 432);
INSERT INTO `jnm_venues` VALUES (1545, '场地A', 'A', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 433);
INSERT INTO `jnm_venues` VALUES (1546, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1547, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1548, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1549, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1550, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1551, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 434);
INSERT INTO `jnm_venues` VALUES (1552, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1553, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1554, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1555, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1556, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1557, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 435);
INSERT INTO `jnm_venues` VALUES (1558, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1559, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1560, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1561, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1562, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1563, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 436);
INSERT INTO `jnm_venues` VALUES (1564, '场地A', 'A', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 437);
INSERT INTO `jnm_venues` VALUES (1565, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 438);
INSERT INTO `jnm_venues` VALUES (1566, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 438);
INSERT INTO `jnm_venues` VALUES (1567, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 438);
INSERT INTO `jnm_venues` VALUES (1568, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1569, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1570, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1571, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1572, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1573, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 439);
INSERT INTO `jnm_venues` VALUES (1574, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1575, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1576, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1577, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1578, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1579, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 440);
INSERT INTO `jnm_venues` VALUES (1580, '场地1', '1', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);
INSERT INTO `jnm_venues` VALUES (1581, '场地2', '2', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);
INSERT INTO `jnm_venues` VALUES (1582, '场地3', '3', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);
INSERT INTO `jnm_venues` VALUES (1583, '场地4', '4', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);
INSERT INTO `jnm_venues` VALUES (1584, '场地5', '5', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);
INSERT INTO `jnm_venues` VALUES (1585, '场地6', '6', '2024-07-13 11:04:26', '2024-07-13 11:04:26', NULL, 441);

-- ----------------------------
-- Table structure for jnm_venues_user
-- ----------------------------
DROP TABLE IF EXISTS `jnm_venues_user`;
CREATE TABLE `jnm_venues_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venues_id` int(11) NOT NULL,
  `identity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jnm_venues_user
-- ----------------------------
INSERT INTO `jnm_venues_user` VALUES (276, 1321, 'jynd1', 203);
INSERT INTO `jnm_venues_user` VALUES (278, 1360, 'jygd2', 204);
INSERT INTO `jnm_venues_user` VALUES (279, 1303, 'sd1', 1);
INSERT INTO `jnm_venues_user` VALUES (281, 1360, 'PRE2', 1);
INSERT INTO `jnm_venues_user` VALUES (282, 1478, 'PA1', 1);

SET FOREIGN_KEY_CHECKS = 1;
