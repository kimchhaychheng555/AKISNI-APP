/*
 Navicat Premium Data Transfer

 Source Server         : 172.104.172.189_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 172.104.172.189:3306
 Source Schema         : akisni_project

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 11/01/2023 22:13:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_user
-- ----------------------------
DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `profile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `lastLatitude` double NULL DEFAULT NULL,
  `lastLongitude` double NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_user_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_user
-- ----------------------------
INSERT INTO `data_user` VALUES ('06c03851-8437-4cca-bbd9-bd80a6e82b55', 'SOKHA ZADY', '098999601', 'S.ZADY', 'Zady250792', 'Admin', '281a6053-1d62-4638-b939-e83dadfcba65.jpg', 'SP1A.210812.016', NULL, NULL, '2022-12-16 16:11:12', '2023-01-10 01:56:51', NULL, NULL);
INSERT INTO `data_user` VALUES ('0ceb315b-2cb8-4e24-87cf-af5379884192', 'PANG SOKHA', '016288563', 'P.SOKHA', '016288563', 'Admin', NULL, 'SP1A.210812.016', 11.4680277, 104.9446966, '2022-12-17 04:10:47', '2023-01-09 12:47:30', NULL, NULL);
INSERT INTO `data_user` VALUES ('1d6d6a46-42d0-4916-88de-1ac8ac55410a', 'Chhay Low', '0969695651', 'chhay', '123456', 'Moderator', 'e3cd5f55-2b13-4d4f-95f9-010873a46292.jpg', 'SP1A.210812.016', 11.577505, 104.9161349, '2023-01-10 07:15:38', '2023-01-10 07:21:10', NULL, NULL);
INSERT INTO `data_user` VALUES ('26847061-9aeb-4c05-b420-255e83d16aa6', 'PRUM RITHY', '016588663', 'P.RITHY', '016588663', 'Moderator', NULL, NULL, NULL, NULL, '2023-01-10 01:56:08', '2023-01-10 01:56:19', NULL, NULL);
INSERT INTO `data_user` VALUES ('415c9d95-d912-4e3a-9ca5-363eb35682f5', 'admin', 'admin', 'admin', '123456', 'Admin', '44853e34-e940-4d56-ad77-4a2258eb5903.jpg', 'RP1A.200720.012', 14.6526487, 121.035936, '2022-10-29 04:20:37', '2023-01-11 14:14:06', NULL, NULL);
INSERT INTO `data_user` VALUES ('512da13e-1b72-4390-a88b-ce1ef285e900', 'Soth Punluer', '067456140', 'S.PUNLUER', '123456', 'User', NULL, 'SP1A.210812.016', 11.469211, 104.792135, '2022-12-17 03:31:37', '2022-12-25 13:20:33', NULL, NULL);
INSERT INTO `data_user` VALUES ('780514e2-fe33-4353-b857-b3cfd42f9d60', 'CHHOUNG LAUT', '0964648055', 'C.LAUT', '123456', 'Moderator', NULL, 'PPR1.180610.011', 11.4631636, 104.8146695, '2023-01-10 01:58:25', '2023-01-10 02:13:51', NULL, NULL);
INSERT INTO `data_user` VALUES ('7b1050df-00b9-4c44-ac09-6834ade56910', 'dodol', '098765432456', 'dodol', 'dodol', NULL, NULL, NULL, NULL, NULL, '2023-01-10 09:02:49', '2023-01-10 09:02:49', NULL, NULL);
INSERT INTO `data_user` VALUES ('8bdb755d-28c5-44c5-a42f-fa73852a4f6e', 'NOV SAMNANG', '093845898', 'N.SAMNANG', '123456', 'User', NULL, NULL, NULL, NULL, '2023-01-10 02:21:35', '2023-01-10 02:29:12', NULL, NULL);
INSERT INTO `data_user` VALUES ('a3a0cf25-7e86-4fd8-bb0d-266a81c97696', 'Moderator', '012520494', 'moderator', '123456', 'Moderator', NULL, NULL, 11.587792, 104.9292156, '2022-11-15 11:07:28', '2022-12-16 15:57:24', NULL, NULL);
INSERT INTO `data_user` VALUES ('b55dd93a-e70d-4e4b-97de-fa4bc6f62bac', 'User', '0969695651', 'user', '123456', 'User', NULL, 'SP1A.210812.016', 11.4679924, 104.944556, '2022-11-15 02:19:27', '2022-12-16 16:21:34', NULL, NULL);
INSERT INTO `data_user` VALUES ('c674e93d-f8f8-4bac-9cee-c4212721943f', 'Suon Buntheoun', '015460234', 'S.BUNTHEOUN', '123456', 'Moderator', NULL, 'SP1A.210812.003', NULL, NULL, '2022-12-16 16:19:44', '2023-01-10 02:48:09', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
