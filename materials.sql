/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : materials

 Target Server Type    : MySQL
 Target Server Version : 8.0

 Date: 18/11/2021 21:32:22
*/

CREATE DATABASE IF NOT EXISTS material;
USE material;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inputr
-- ----------------------------
DROP TABLE IF EXISTS `inputr`;
CREATE TABLE `inputr`  (
                           `Ino` INT(0) NOT NULL AUTO_INCREMENT,
                           `Mid` INT(0) NOT NULL,
                           `Rid` INT(0) NOT NULL,
                           `count` INT(0) NOT NULL,
                           `value` DECIMAL(8, 2) NULL DEFAULT NULL,
                           `dateTime` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
                           `deal_Pid` INT(0) NOT NULL,
                           `save_Pid` INT(0) NOT NULL,
                           `remark` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`Ino`) USING BTREE,
                           INDEX `Mid`(`Mid`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inputr
-- ----------------------------

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
                             `Mid` INT(0) NOT NULL AUTO_INCREMENT,
                             `Mname` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `spec` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `category` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `unit` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `price` DECIMAL(8, 2) NOT NULL,
                             PRIMARY KEY (`Mid`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (1, '棉花', '长绒棉', '综合物资', '吨', 1);
INSERT INTO `material` VALUES (2, '橡胶', '工业橡胶', '综合物资', '吨', 1);
INSERT INTO `material` VALUES (3, '铜', '黄铜', '综合物资', '吨', 2);
INSERT INTO `material` VALUES (4, '铁', '钢铁', '综合物资', '吨', 2);
INSERT INTO `material` VALUES (5, '石棉', '石棉', '综合物资', '吨', 2);
INSERT INTO `material` VALUES (6, '金', '黄金', '稀有物资', '克', 3);
INSERT INTO `material` VALUES (7, '银', '银', '稀有物资', '千克', 3);
INSERT INTO `material` VALUES (8, '矿物1', '矿物1', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (9, '矿物2', '矿物2', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (10, '矿物3', '矿物3', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (11, '矿物4', '矿物4', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (12, '矿物5', '矿物5', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (13, '矿物6', '矿物6', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (14, '矿物7', '矿物7', '矿产物资', '千克', 3);
INSERT INTO `material` VALUES (15, '矿物8', '矿物8', '矿产物资', '千克', 3);

-- ----------------------------
-- Table structure for outputr
-- ----------------------------
DROP TABLE IF EXISTS `outputr`;
CREATE TABLE `outputr`  (
                            `Ono` INT(0) NOT NULL AUTO_INCREMENT,
                            `Mid` INT(0) NOT NULL,
                            `Rid` INT(0) NOT NULL,
                            `count` INT(0) NOT NULL,
                            `value` DECIMAL(8, 2) NOT NULL,
                            `dateTime` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
                            `user_Pid` INT(0) NOT NULL,
                            `deal_Pid` INT(0) NOT NULL,
                            `remark` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            PRIMARY KEY (`Ono`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outputr
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
                           `Pid` INT(0) NOT NULL AUTO_INCREMENT,
                           `Ptype` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `Pname` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `Rid` INT(0) NOT NULL,
                           PRIMARY KEY (`Pid`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, '处理人', '处1', 1);
INSERT INTO `person` VALUES (2, '领取人', '领1', 1);
INSERT INTO `person` VALUES (3, '保管人', '保1', 1);
INSERT INTO `person` VALUES (4, '处理人', '处2', 2);
INSERT INTO `person` VALUES (5, '领取人', '领2', 2);
INSERT INTO `person` VALUES (6, '保管人', '保2', 2);
INSERT INTO `person` VALUES (7, '处理人', '处3', 3);
INSERT INTO `person` VALUES (8, '领取人', '领3Update1', 3);
INSERT INTO `person` VALUES (9, '保管人', '保3', 3);
INSERT INTO `person` VALUES (10, '处理人', '阿林', 4);
INSERT INTO `person` VALUES (11, '领取人', '阿楠', 4);
INSERT INTO `person` VALUES (12, '保管人', '阿力', 4);
INSERT INTO `person` VALUES (13, '处理人', '阿兴', 5);
INSERT INTO `person` VALUES (14, '领取人', '阿威', 5);
INSERT INTO `person` VALUES (15, '保管人', '阿坤2', 5);
INSERT INTO `person` VALUES (16, '处理人', '阿志', 1);
INSERT INTO `person` VALUES (17, '处理人', '处12', 1);
INSERT INTO `person` VALUES (18, '处理人', '处13', 1);
INSERT INTO `person` VALUES (19, '处理人', '处13', 1);
INSERT INTO `person` VALUES (20, '处理人', '处14', 1);
INSERT INTO `person` VALUES (21, '处理人', '处15', 1);
INSERT INTO `person` VALUES (22, '处理人', '处11', 1);
INSERT INTO `person` VALUES (23, '领取人', '领11', 1);
INSERT INTO `person` VALUES (24, '领取人', '领12', 1);
INSERT INTO `person` VALUES (25, '领取人', '领13', 1);
INSERT INTO `person` VALUES (26, '领取人', '领14', 1);
INSERT INTO `person` VALUES (27, '领取人', '领15', 1);
INSERT INTO `person` VALUES (28, '领取人', '领16', 1);
INSERT INTO `person` VALUES (29, '处理人', '处16', 1);
INSERT INTO `person` VALUES (30, '保管人', '保11', 1);
INSERT INTO `person` VALUES (31, '保管人', '保12', 1);
INSERT INTO `person` VALUES (32, '保管人', '保13', 1);
INSERT INTO `person` VALUES (33, '保管人', '保14', 1);
INSERT INTO `person` VALUES (34, '保管人', '保15', 1);
INSERT INTO `person` VALUES (35, '保管人', '保16', 1);
INSERT INTO `person` VALUES (36, '处理人', '处21', 2);
INSERT INTO `person` VALUES (37, '处理人', '处22', 2);
INSERT INTO `person` VALUES (38, '处理人', '处23', 2);
INSERT INTO `person` VALUES (39, '处理人', '处34', 2);
INSERT INTO `person` VALUES (40, '处理人', '处25', 2);
INSERT INTO `person` VALUES (41, '处理人', '处26', 2);
INSERT INTO `person` VALUES (42, '领取人', '领21', 2);
INSERT INTO `person` VALUES (43, '领取人', '领22', 2);
INSERT INTO `person` VALUES (44, '领取人', '领23', 2);
INSERT INTO `person` VALUES (45, '领取人', '领24', 2);
INSERT INTO `person` VALUES (46, '领取人', '领25', 2);
INSERT INTO `person` VALUES (47, '领取人', '领26', 2);
INSERT INTO `person` VALUES (48, '保管人', '保21', 2);
INSERT INTO `person` VALUES (49, '保管人', '保22', 2);
INSERT INTO `person` VALUES (50, '保管人', '保23', 2);
INSERT INTO `person` VALUES (51, '保管人', '保24', 2);
INSERT INTO `person` VALUES (52, '保管人', '保25', 2);
INSERT INTO `person` VALUES (53, '保管人', '保26', 2);
INSERT INTO `person` VALUES (54, '领取人', '领21', 2);
INSERT INTO `person` VALUES (55, '领取人', '领22', 2);
INSERT INTO `person` VALUES (56, '领取人', '领23', 2);
INSERT INTO `person` VALUES (57, '领取人', '领24', 2);

-- ----------------------------
-- Table structure for repository
-- ----------------------------
DROP TABLE IF EXISTS `repository`;
CREATE TABLE `repository`  (
                               `Rid` INT(0) NOT NULL AUTO_INCREMENT,
                               `Rname` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `Remark` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               PRIMARY KEY (`Rid`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repository
-- ----------------------------
INSERT INTO `repository` VALUES (1, '1号库', '王企鹅');
INSERT INTO `repository` VALUES (2, '2号库', '额');
INSERT INTO `repository` VALUES (3, '3号库', '32');
INSERT INTO `repository` VALUES (4, '4号库', '32');
INSERT INTO `repository` VALUES (5, '5号库', '32');

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest`  (
                         `Mid` INT(0) NOT NULL,
                         `Rid` INT(0) NOT NULL,
                         `count` INT(0) NOT NULL,
                         `value` DECIMAL(8, 2) NULL DEFAULT NULL,
                         `remark` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         PRIMARY KEY (`Mid`, `Rid`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rest
-- ----------------------------
INSERT INTO `rest` VALUES (1, 1, 10, 12.00, NULL);
INSERT INTO `rest` VALUES (2, 2, 5, 5.50, NULL);
INSERT INTO `rest` VALUES (3, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (4, 2, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (5, 2, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (6, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (7, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (8, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (9, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (10, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (11, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (12, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (13, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (14, 3, 50, 65.00, NULL);
INSERT INTO `rest` VALUES (15, 3, 50, 65.00, NULL);
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `uId` INT(0) NOT NULL AUTO_INCREMENT,
                         `uName` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `uPwd` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `state` INT(0) NOT NULL,
                         `actualName` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `UserSex` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `introduce` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `image` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         PRIMARY KEY (`uId`) USING BTREE,
                         UNIQUE INDEX `uName`(`uName`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'neverBetray1', '111', 0, 'wxl', '男', '1414141', '/upload/imgs/img20191228182733.jpg');
INSERT INTO `user` VALUES (2, '食物', '2', 0, '阿林', '男', '1我期待群无多·', '/upload/imgs/img20191229211936.jpg');
INSERT INTO `user` VALUES (3, '而且', '3', 0, '3', '女', '123', '/upload/imgs/img20191229182446.jpg');
INSERT INTO `user` VALUES (61, '123', '123', 1, '9809', '女', '0890980890', '/upload/imgs/img20191229212117.jpg');
INSERT INTO `user` VALUES (64, '加密test01', '$2a$10$XHX/sXhrbfn8r.jSpyTja.0g9mJc5qYoWllK0uKAS2AK/ds3O/s8O', 1, '加密test01', '女', '加密test01加密test01加密test01', '/upload/imgs/img20191230115541.jpg');
INSERT INTO `user` VALUES (65, '加密test02', '$2a$10$ts0PlJvm7pqS4Dw4GaFaouMV5lXDqDXFjC584pb5MgaAVHt6QUrxG', 1, '加密test02', '女', '加密test02', '/upload/imgs/img20191230123504.jpg');
INSERT INTO `user` VALUES (66, '加密test03', '$2a$10$PQpsFHg1QwG5caHeDMVATuj/89zzF5Dzxx1LmjEwWprtgUseZWZau', 1, '加密test03', '女', '加密test03加密test03vvvv1', '/upload/imgs/img20191230123940.jpg');
INSERT INTO `user` VALUES (67, 'neverBetray', '$2a$10$DyXZDJzc3gY5tt2d7SjJZeCGDMP03tQ5HfwiBETeQDRKxOuWJ72xO', 1, 'wxl', '女', '地区为多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多付群多多多多多多多哒哒哒哒哒哒多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多多', '/upload/imgs/img20191231191702.jpg');
INSERT INTO `user` VALUES (68, 'test1', '$2a$10$wsO5W169aH.IyHWt8omuvuWwLCrbZqZBsHpR/wvnRV7sYHbl7rdZm', 1, '武器', '女', '位', '/upload/imgs/img20191231192634.jpg');
INSERT INTO `user` VALUES (69, 'test02', '$2a$10$MAJQ7HqyzRwJUj7iMa1pOuodHFo7CHN71g0flmwpaBAG1LRyCQUaK', 1, '是阿林呀', '男', '打撒奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥二无', '/upload/imgs/img20200101095946.jpg');
INSERT INTO `user` VALUES (72, 'test3', '$2a$10$8.I35j4HFTLuVzQh6ks6OOeQeR/xWoUo3mkaef8QWe70cPu6HZ3QW', 1, '单位分为非', '男', '地区为的无单位单位翁的无多群无所群无所群无所的味道非法违法', '/upload/imgs/img20200101102200.jpg');
INSERT INTO `user` VALUES (73, 'test4', '$2a$10$Lx69TWfrghgpalWLBZnFzevAG/xnT1o8dVgCWKiRwLk7tIOoPcq42', 1, '服务费', '男', '单位房翁风多群无无无无无无无无无无无无无无无无无无无无无无无无无无无无无付群二群无无无无无无无无无无无无无无无无无若付群二', '/upload/imgs/img20200101102629.jpg');
INSERT INTO `user` VALUES (74, '作者', '$2a$10$wJ5YiMJysI7/YsbfnHvAHOX3A2VpaW5SLN893knwdkYnmbWW/aOPS', 1, '密码：root', '男', 'This account belongs to :帅气的作者!', '/upload/imgs/img20201204212957.jpg');
INSERT INTO `user` VALUES (75, 'test5', '$2a$10$dpcM0qZVi8cpsh7/J/Qw4OTJ46yV8sadW53X7xGnzdIe5EckKFJum', 0, '带我去', '女', '单位单位多翁的无多翁的无多', '/upload/imgs/img20200101161352.jpg');
INSERT INTO `user` VALUES (76, 'jiao', '$2a$10$CVEuwn/jmbRIoGny9PmRk.N.Wy6vQCWreeBafsJcLqed0moPFpbUO', 1, '密码：123456', '男', 'hellohello', '/upload/imgs/123.jfif');

SET FOREIGN_KEY_CHECKS = 1;
