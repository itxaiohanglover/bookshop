/*
 Navicat Premium Data Transfer

 Source Server         : localhsot
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : bookshop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 30/06/2023 15:15:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_book
-- ----------------------------
DROP TABLE IF EXISTS `sys_book`;
CREATE TABLE `sys_book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coverurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic COMMENT '书籍信息表';

-- ----------------------------
-- Records of sys_book
-- ----------------------------
INSERT INTO `sys_book` VALUES (1, '未知书目', '刘宇航', '哈哈哈哈', '哈哈出版社', '文学作品', 'http://localhost:9090/file/9b4e2b32271c48b186f7dad47dde1895.jpg');

-- ----------------------------
-- Table structure for sys_carousel
-- ----------------------------
DROP TABLE IF EXISTS `sys_carousel`;
CREATE TABLE `sys_carousel`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NULL DEFAULT NULL,
  `image_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable` int NULL DEFAULT NULL,
  `imageurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_carousel
-- ----------------------------
INSERT INTO `sys_carousel` VALUES (1, 3, NULL, 1, 'http://localhost:9090/file/da16b16ad3524245a6c133201da90cac.jpg');
INSERT INTO `sys_carousel` VALUES (2, 3, NULL, 1, 'http://localhost:9090/file/e354642001034a44b96b459e74d8f1d6.jpg');

-- ----------------------------
-- Table structure for sys_cart
-- ----------------------------
DROP TABLE IF EXISTS `sys_cart`;
CREATE TABLE `sys_cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `buy_id` int NULL DEFAULT NULL comment '购物者ID',
  `inventory_id` int NULL DEFAULT NULL comment '库存者ID',
  `count` int NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `connection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_cart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filesize` int UNSIGNED NULL DEFAULT NULL,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` bit(1) NULL DEFAULT NULL,
  `enable` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (1, '436e3b581bb968582b893075a8e8efc.jpg', 'jpg', 48, 'http://localhost:9090/file/459dce46001045ccb94c62cfd598b026.jpg', '9b719022432c6c28e218cda04c7e6c8c', NULL, NULL);
INSERT INTO `sys_file` VALUES (2, '1cb32702eca74a5597f879ac9798976e.jpg', 'jpg', 64, 'http://localhost:9090/file/dd1adf58d16b455fb39f26d9bf5987a7.jpg', 'b4cb931c33903f3b15aad09077224812', NULL, NULL);
INSERT INTO `sys_file` VALUES (3, '1cdaf2c2cd0d4a31bbc351e7b4346611.jpg', 'jpg', 183, 'http://localhost:9090/file/9b4e2b32271c48b186f7dad47dde1895.jpg', '97764a7552682f050308089e6cf2cdf5', NULL, NULL);
INSERT INTO `sys_file` VALUES (4, '0849a481331a45ea83ad988acc4dbab3.jpg', 'jpg', 48, 'http://localhost:9090/file/52fdef5eadd44d1896083e4d2c8e3068.jpg', '483960454e8b9c523b2028e825a98b42', NULL, NULL);
INSERT INTO `sys_file` VALUES (5, '1e2a5f6841ca4cf298c3d728dcd66269.jpg', 'jpg', 110, 'http://localhost:9090/file/da16b16ad3524245a6c133201da90cac.jpg', '24d32a561b922c38602f110a1afcc2e0', NULL, NULL);
INSERT INTO `sys_file` VALUES (6, '4db0961020dc4122bddb8180fca125a9.jpg', 'jpg', 565, 'http://localhost:9090/file/e354642001034a44b96b459e74d8f1d6.jpg', '6513c17c5e17c55977f6985f84ab2de0', NULL, NULL);
INSERT INTO `sys_file` VALUES (7, '77ce34b56116467d80e5de4837977cd9.jpg', 'jpg', 460, 'http://localhost:9090/file/b6fa25efde294cd8bbde503e17a0825e.jpg', '53bc98edeaf1c75c4dcd3755c333a9c8', NULL, NULL);

-- ----------------------------
-- Table structure for sys_inventory
-- ----------------------------
DROP TABLE IF EXISTS `sys_inventory`;
CREATE TABLE `sys_inventory`  (
  `id` int NOT NULL AUTO_INCREMENT comment '主键ID',
  `shop_id` int NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `discount` double NULL DEFAULT NULL,
  `enable` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_inventory
-- ----------------------------
INSERT INTO `sys_inventory` VALUES (1, 1, 1, 100, 10, 10, 1);

-- ----------------------------
-- Table structure for sys_selldata
-- ----------------------------
DROP TABLE IF EXISTS `sys_selldata`;
CREATE TABLE `sys_selldata`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NULL DEFAULT NULL,
  `buy_id` int NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `count` int NULL DEFAULT NULL,
  `is_pay` int NULL DEFAULT NULL,
  `is_sent` int NULL DEFAULT NULL,
  `express_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `connection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_selldata
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '123456', NULL, NULL, NULL, NULL, 'http://localhost:9090/file/dd1adf58d16b455fb39f26d9bf5987a7.jpg', 1);
INSERT INTO `sys_user` VALUES (2, 'test1', '123456', NULL, NULL, NULL, NULL, 'http://localhost:9090/file/b6fa25efde294cd8bbde503e17a0825e.jpg', 2);
INSERT INTO `sys_user` VALUES (3, 'test2', '123456', '文艺倾年', '1531137510@qq.com', '15234390329', '中国', 'http://localhost:9090/file/52fdef5eadd44d1896083e4d2c8e3068.jpg', 3);

-- ----------------------------
-- Table structure for test_sys_shop
-- ----------------------------
DROP TABLE IF EXISTS `test_sys_shop`;
CREATE TABLE `test_sys_shop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pictureurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_sys_shop
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
