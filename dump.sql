/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : my_finances

 Target Server Type    : MySQL
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 25/04/2019 09:16:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill_pays
-- ----------------------------
DROP TABLE IF EXISTS `bill_pays`;
CREATE TABLE `bill_pays`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_launch` date NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_cost_id` int(11) NOT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `category_cost_id`(`category_cost_id`) USING BTREE,
  CONSTRAINT `bill_pays_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bill_pays_ibfk_2` FOREIGN KEY (`category_cost_id`) REFERENCES `category_costs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bill_pays
-- ----------------------------
INSERT INTO `bill_pays` VALUES (1, '2019-03-07', 'quas', 154.86, 1, 8, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (2, '2019-03-27', 'ducimus', 683.2, 1, 16, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (3, '2019-03-21', 'enim', 974.65, 3, 17, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (4, '2019-03-21', 'velit', 745.58, 4, 5, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (5, '2019-03-16', 'autem', 604.14, 1, 8, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (6, '2019-03-20', 'officiis', 951.42, 3, 10, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (7, '2019-03-27', 'ea', 653.09, 3, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (8, '2019-04-03', 'optio', 719.6, 2, 13, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (9, '2019-03-09', 'aut', 120.08, 4, 5, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (10, '2019-03-24', 'hic', 119.1, 2, 13, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (11, '2019-03-27', 'et', 698.41, 1, 8, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (12, '2019-03-10', 'pariatur', 801.29, 2, 6, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (13, '2019-03-30', 'perspiciatis', 939.91, 4, 15, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (14, '2019-03-14', 'ut', 634.18, 1, 19, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (15, '2019-03-16', 'accusamus', 446.69, 4, 12, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (16, '2019-03-19', 'perferendis', 356.94, 3, 10, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (17, '2019-03-28', 'fuga', 271.38, 4, 12, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (18, '2019-03-22', 'eligendi', 745.71, 4, 5, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (19, '2019-03-23', 'facere', 477.53, 3, 10, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_pays` VALUES (20, '2019-03-10', 'quod', 14.57, 1, 19, '2019-04-04 16:11:18', '2019-04-04 16:11:18');

-- ----------------------------
-- Table structure for bill_receives
-- ----------------------------
DROP TABLE IF EXISTS `bill_receives`;
CREATE TABLE `bill_receives`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_launch` date NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `bill_receives_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bill_receives
-- ----------------------------
INSERT INTO `bill_receives` VALUES (1, '2019-03-09', 'Bico', 593.65, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (2, '2019-03-22', 'Bolsa de valores', 15.2, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (3, '2019-03-16', 'Salário', 618.19, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (4, '2019-03-16', 'Vendas de produtos usados', 978.6, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (5, '2019-04-04', 'Salário', 91.49, 2, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (6, '2019-03-14', 'Restituição de Imposto de Renda', 321.02, 2, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (7, '2019-03-12', 'Vendas de produtos usados', 621.45, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (8, '2019-03-18', 'Bolsa de valores', 188.25, 2, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (9, '2019-03-16', 'Bico', 776.38, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (10, '2019-03-05', 'Vendas de produtos usados', 218.68, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (11, '2019-03-18', 'Previdência Privada', 144.41, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (12, '2019-03-16', 'Bolsa de valores', 859.51, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (13, '2019-03-25', 'Restituição de Imposto de Renda', 88.46, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (14, '2019-03-18', 'Vendas de produtos usados', 134.66, 3, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (15, '2019-03-11', 'Restituição de Imposto de Renda', 715.26, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (16, '2019-03-12', 'Bolsa de valores', 129.1, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (17, '2019-03-17', 'Previdência Privada', 466.51, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (18, '2019-03-19', 'Restituição de Imposto de Renda', 948.91, 4, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (19, '2019-03-09', 'Salário', 927.64, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');
INSERT INTO `bill_receives` VALUES (20, '2019-03-28', 'Restituição de Imposto de Renda', 362.49, 1, '2019-04-04 16:11:18', '2019-04-04 16:11:18');

-- ----------------------------
-- Table structure for category_costs
-- ----------------------------
DROP TABLE IF EXISTS `category_costs`;
CREATE TABLE `category_costs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `category_costs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category_costs
-- ----------------------------
INSERT INTO `category_costs` VALUES (1, 'Vestuário', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (2, 'Entretenimento', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (3, 'Escola', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 2);
INSERT INTO `category_costs` VALUES (4, 'Gasolina', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 3);
INSERT INTO `category_costs` VALUES (5, 'Reparos', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (6, 'LUZ', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 2);
INSERT INTO `category_costs` VALUES (7, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (8, 'Gasolina', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 1);
INSERT INTO `category_costs` VALUES (9, 'Reparos', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 2);
INSERT INTO `category_costs` VALUES (10, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 3);
INSERT INTO `category_costs` VALUES (11, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (12, 'Escola', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (13, 'Telefone', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 2);
INSERT INTO `category_costs` VALUES (14, 'Escola', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (15, 'Cartão', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);
INSERT INTO `category_costs` VALUES (16, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 1);
INSERT INTO `category_costs` VALUES (17, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 3);
INSERT INTO `category_costs` VALUES (18, 'Água', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 1);
INSERT INTO `category_costs` VALUES (19, 'Imposto de Renda', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 1);
INSERT INTO `category_costs` VALUES (20, 'LUZ', '2019-04-04 16:11:18', '2019-04-04 16:11:18', 4);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `end_time` timestamp(0) NOT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (20171105131155, 'CreateUserTable', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);
INSERT INTO `migrations` VALUES (20171206152336, 'CreateUserAdminData', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);
INSERT INTO `migrations` VALUES (20181020003203, 'CreateCategoryCosts', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);
INSERT INTO `migrations` VALUES (20181114111139, 'AddUserToCategoryCosts', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);
INSERT INTO `migrations` VALUES (20181116133511, 'CreateBillReceivesTable', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);
INSERT INTO `migrations` VALUES (20181119120631, 'CreateBillPaysTable', '2019-04-04 16:11:17', '2019-04-04 16:11:17', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'System', 'admin@admin.com', '$2y$10$BoRTcSVMyp0x./NDuoiHoulv/WXOfVQC7ILY2QkOoO4iT5RYH6fOa', '2019-04-04 16:11:17', '2019-04-04 16:11:17');
INSERT INTO `users` VALUES (2, 'Leandro', 'Paz', 'yreis@uol.com.br', '$2y$10$WDPYZnTMzLPs8ldm9fYsnOA9Z8dOgRccMs59aYJfvhLWGWPgyaBGW', '2019-04-04 16:11:17', '2019-04-04 16:11:17');
INSERT INTO `users` VALUES (3, 'Alexa', 'Cortês', 'ariana.paes@hotmail.com', '$2y$10$TCWTgIHeByU7ENt12bkcD.KE35PPe8wYr8Hy3ZD/r3/QFeUHEnADq', '2019-04-04 16:11:17', '2019-04-04 16:11:17');
INSERT INTO `users` VALUES (4, 'Andrea', 'Colaço', 'assuncao.mia@yahoo.com', '$2y$10$t/KvjBBL4fPoOYhFpPayoO4DoT9ADGAhFTgfIlq8H0IudO1WuZ8zu', '2019-04-04 16:11:17', '2019-04-04 16:11:17');

SET FOREIGN_KEY_CHECKS = 1;
