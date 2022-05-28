/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : cafe_2

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 28/05/2022 08:08:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for list_alternatife
-- ----------------------------
DROP TABLE IF EXISTS `list_alternatife`;
CREATE TABLE `list_alternatife`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_list_food` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `list_alternatife_id_list_food_foreign`(`id_list_food`) USING BTREE,
  CONSTRAINT `list_alternatife_id_list_food_foreign` FOREIGN KEY (`id_list_food`) REFERENCES `list_food` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_alternatife
-- ----------------------------
INSERT INTO `list_alternatife` VALUES (1, 1, 'lauk sayur', '2022-05-28 00:45:01', '2022-05-28 00:45:01');
INSERT INTO `list_alternatife` VALUES (2, 1, 'ikan bakar', '2022-05-28 00:45:13', '2022-05-28 00:45:13');

-- ----------------------------
-- Table structure for list_changes
-- ----------------------------
DROP TABLE IF EXISTS `list_changes`;
CREATE TABLE `list_changes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `id_list_food` bigint(20) UNSIGNED NOT NULL,
  `name_food` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `list_changes_id_users_foreign`(`id_users`) USING BTREE,
  INDEX `list_changes_id_list_food_foreign`(`id_list_food`) USING BTREE,
  CONSTRAINT `list_changes_id_list_food_foreign` FOREIGN KEY (`id_list_food`) REFERENCES `list_food` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `list_changes_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_changes
-- ----------------------------
INSERT INTO `list_changes` VALUES (1, 2, 1, 'lauk sayur', '2022-05-28 00:47:58', '2022-05-28 00:47:58');
INSERT INTO `list_changes` VALUES (2, 2, 1, 'lauk sayur', '2022-05-28 00:48:13', '2022-05-28 00:48:13');
INSERT INTO `list_changes` VALUES (3, 2, 1, 'lauk sayur', '2022-05-28 00:48:43', '2022-05-28 00:48:43');
INSERT INTO `list_changes` VALUES (4, 2, 1, 'lauk sayur', '2022-05-28 00:49:42', '2022-05-28 00:49:42');

-- ----------------------------
-- Table structure for list_day
-- ----------------------------
DROP TABLE IF EXISTS `list_day`;
CREATE TABLE `list_day`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_day
-- ----------------------------
INSERT INTO `list_day` VALUES (1, 'Senin', '2022-05-28', 'Modal Usaha', '2.png', '2022-05-28 00:44:12', '2022-05-28 00:44:12');

-- ----------------------------
-- Table structure for list_food
-- ----------------------------
DROP TABLE IF EXISTS `list_food`;
CREATE TABLE `list_food`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_list_day` bigint(20) UNSIGNED NOT NULL,
  `name_food` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `list_food_id_list_day_foreign`(`id_list_day`) USING BTREE,
  CONSTRAINT `list_food_id_list_day_foreign` FOREIGN KEY (`id_list_day`) REFERENCES `list_day` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list_food
-- ----------------------------
INSERT INTO `list_food` VALUES (1, 1, 'Sarapan', 'Modal Usaha', '5.png', 'blue-screen.png', '11,111', '00:44:00', '02:44:00', '2022-05-28 00:44:48', '2022-05-28 00:44:48');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2022_05_18_062419_create_list_day_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_05_18_062551_create_list_food_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_05_27_141405_create_list_alternatife_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_05_28_003419_create_list_changes_table', 1);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_phone_unique`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@gmail.com', 'admin', 'admin', '085267816542', '$2y$10$h2uC.e2IbVJssxrFw3XuYehlildrMAWOgApZH6YF615.WE.fge3Se', '2022-05-28 00:36:44', '2022-05-28 00:36:44');
INSERT INTO `users` VALUES (2, 'User', 'user@gmail.com', 'user', 'user', '012387223', '$2y$10$XwC9iEQ4NiS3MAnWy2F3F.hDPwURgeOpfhp1jjYLjOvaWjq5/mCfq', '2022-05-28 00:36:44', '2022-05-28 00:36:44');

SET FOREIGN_KEY_CHECKS = 1;
