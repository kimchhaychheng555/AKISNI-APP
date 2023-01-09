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

 Date: 08/01/2023 22:37:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_locations_list
-- ----------------------------
DROP TABLE IF EXISTS `data_locations_list`;
CREATE TABLE `data_locations_list`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `installDate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `power` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deposit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_locations_list
-- ----------------------------
INSERT INTO `data_locations_list` VALUES ('00ba7f77-38e8-4867-884d-803922a8fba3', 'DK10-034', NULL, 'លាង ឃុន', NULL, '400kVA (Thibidi)', 'MV 15/5A', 'បុរី Chip Mong', 'DK10-034.jpg', NULL, 11.5017721, 104.8785913, '2023-01-08 15:21:27', '2023-01-08 15:21:27');
INSERT INTO `data_locations_list` VALUES ('00df9540-5591-4447-89d6-908c5e801fc8', 'DK1-062', NULL, NULL, NULL, '400kVA (Precise)', 'LV', 'បុរី លឹម តិច ហេង', 'DK1-062.jpg', NULL, 11.4960495, 104.8677511, '2023-01-08 15:20:00', '2023-01-08 15:20:00');
INSERT INTO `data_locations_list` VALUES ('0138e7e6-9d1d-47af-8306-864776e4331e', 'DK20-126', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', 'DK20-126.jpg', NULL, 11.5042388, 104.820382, '2023-01-08 15:22:31', '2023-01-08 15:22:31');
INSERT INTO `data_locations_list` VALUES ('0253e303-24c8-4088-9b54-9e283ce19336', 'DK20-150', NULL, NULL, NULL, '400kVA ខ្នែង 100A (Thai Maxwell)', 'LV', 'បុរី ពីភពថ្មី ៦', 'DK20-150.jpg', NULL, 11.4993675, 104.8207652, '2023-01-08 15:22:33', '2023-01-08 15:22:33');
INSERT INTO `data_locations_list` VALUES ('025826e9-b2cb-4c73-9ad5-3b4b63cde52d', 'DK25-165', NULL, 'ទា ហាំងសេង', NULL, '400kVA (Fuji)', 'LV', 'រោងចក្រ កាត់ដរ', 'DK25-165.jpg', NULL, 11.5026066, 104.8111032, '2023-01-08 15:23:29', '2023-01-08 15:23:29');
INSERT INTO `data_locations_list` VALUES ('03a6e090-9193-438b-8e23-5829fabd2347', 'DK1-072', 'សេង លី', 'សាង វាសនា', NULL, '400kVA (Fuji)', 'LV', 'បុរី ធីវីស្តារ ទី៥', 'DK1-072.jpg', NULL, 11.4946853, 104.8649542, '2023-01-08 15:19:54', '2023-01-08 15:19:54');
INSERT INTO `data_locations_list` VALUES ('03ce201a-a520-4430-bec3-587f76f985b2', 'DK27-026', 'DK', NULL, NULL, '160kVA (Thibidi)', 'LV', 'ផ្ទះល្វេង ចៅសីរ័ត្ន', 'DK27-026.jpg', NULL, 11.4946055, 104.7931726, '2023-01-08 15:24:03', '2023-01-08 15:24:03');
INSERT INTO `data_locations_list` VALUES ('03eb81ef-c210-4a28-9f18-cacf1fcfc0a3', 'DK7-027', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ចែកចាយ', 'DK7-027.jpg', NULL, 11.4632606, 104.8135705, '2023-01-08 15:22:39', '2023-01-08 15:22:39');
INSERT INTO `data_locations_list` VALUES ('0436877d-affd-4102-8cdf-9ff9b817ee25', 'DK9-240', NULL, 'ជួន​ វុធ', NULL, '100kVA (Fuji)', 'LV', 'ឃ្លាំង អេតចាយ', 'DK9-240.jpg', NULL, 11.464127, 4.8449823, '2023-01-08 15:20:12', '2023-01-08 15:20:12');
INSERT INTO `data_locations_list` VALUES ('05fbf37e-2615-442a-83ec-4f5c20d74fe7', 'DK53-36', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ពិភពថ្មី កំបូល', NULL, NULL, 11.4980635, 104.7700848, '2023-01-08 15:24:27', '2023-01-08 15:24:27');
INSERT INTO `data_locations_list` VALUES ('0605212c-2ec3-42d3-a1d3-3fa197abe35e', 'DK45-072', NULL, 'សហគ្រាស ស៊ិន ឡុងតៃ', NULL, '630kVA x2pcs (Fuji)', 'MV 40/5A', 'រោងចក្រ', 'DK45-072.jpg', NULL, 11.4798847, 104.8744224, '2023-01-08 15:21:13', '2023-01-08 15:21:13');
INSERT INTO `data_locations_list` VALUES ('07575bc1-c354-4f25-83b4-0609f7986185', 'DK25-024', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រ កាតុង JH', NULL, NULL, 11.498829, 104.8119105, '2023-01-08 15:23:11', '2023-01-08 15:23:11');
INSERT INTO `data_locations_list` VALUES ('0937515d-59a5-4f5f-a8ae-348f05d824d1', 'DK2-128', NULL, 'គង់ លុច', NULL, '160kVA (Fuji)', 'LV', NULL, 'DK2-128.jpg', NULL, 11.4877548, 104.8535317, '2023-01-08 15:19:35', '2023-01-08 15:19:35');
INSERT INTO `data_locations_list` VALUES ('0b2a148f-ba9b-4db4-9bc5-aaeb67828674', 'LBS', 'DK', 'DK', NULL, NULL, NULL, 'កែងស្ទុប អាស៊ីសាញ់', NULL, NULL, 11.498909, 104.873623, '2023-01-08 15:18:53', '2023-01-08 15:18:53');
INSERT INTO `data_locations_list` VALUES ('0c796a11-36e0-4956-894e-c30b71a53a19', 'DK19-1024', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ១៥', 'DK19-1024.jpg', NULL, 11.4885548, 104.8129653, '2023-01-08 15:22:47', '2023-01-08 15:22:47');
INSERT INTO `data_locations_list` VALUES ('0c9dec07-3ab5-4486-887c-3f0a1d9317e9', 'DK5', NULL, NULL, NULL, '160kVA (Precise)', 'LV', NULL, NULL, NULL, 11.46178, 104.8297912, '2023-01-08 15:19:07', '2023-01-08 15:19:07');
INSERT INTO `data_locations_list` VALUES ('0cb24962-bb67-458c-a56e-d4d4c7e01e12', 'DK2-067', NULL, 'សុខ សុភា', NULL, '630kVA (Precise)', 'LV', 'រោងចក្រ រ៉េន អាន', 'DK2-067.jpg', NULL, 11.4859326, 104.8515382, '2023-01-08 15:19:31', '2023-01-08 15:19:31');
INSERT INTO `data_locations_list` VALUES ('0ce0fbd3-6d7c-4d13-bbe2-038ee8e75a13', 'DK43-011', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', 'DK43-011.jpg', NULL, 11.459627, 104.8635779, '2023-01-08 15:20:30', '2023-01-08 15:20:30');
INSERT INTO `data_locations_list` VALUES ('0cee4a31-9b41-499d-99dd-f01e2998f8bd', 'DK9-237', 'Green Fornext ( Lux )', 'យួន ជៀន', NULL, '500kVA (XYZ)', 'MV 15/5A', 'រោងចក្រ ផលិតស្បែកជើង', 'DK9-237.jpg', NULL, 11.4595146, 104.8482424, '2023-01-08 15:20:23', '2023-01-08 15:20:23');
INSERT INTO `data_locations_list` VALUES ('0d90265b-cd62-4b63-a5d1-df08e3d16406', 'DK9-207', NULL, 'លី ហុយឈុន', NULL, '250kVA (ThiraThai)', 'LV', NULL, 'DK9-207.jpg', NULL, 11.4638432, 104.8556131, '2023-01-08 15:20:25', '2023-01-08 15:20:25');
INSERT INTO `data_locations_list` VALUES ('0ee8b5e6-136d-413c-b984-96289cac6638', 'DK48-57', NULL, 'ជុង មេនយ៉ុង', NULL, '630kVA (Indoor)', 'MV 20/5A', NULL, NULL, NULL, 11.4949968, 104.8284923, '2023-01-08 15:21:49', '2023-01-08 15:21:49');
INSERT INTO `data_locations_list` VALUES ('10768c98-8cc5-4153-b9a5-0974d25e6204', 'DK10-047', NULL, 'លី ឆេង', NULL, '400kVA (Fuji)', 'MV 10/5A', NULL, NULL, NULL, 11.5008183, 104.876021, '2023-01-08 15:21:37', '2023-01-08 15:21:37');
INSERT INTO `data_locations_list` VALUES ('10a281a5-1728-45a4-a3f2-2b182d258ec5', 'DK34-08', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'អាង ទឹកស្អាត', 'DK34-08.jpg', NULL, 11.4559619, 104.7468569, '2023-01-08 15:24:57', '2023-01-08 15:24:57');
INSERT INTO `data_locations_list` VALUES ('11388d1a-130d-4e04-9571-f0ad91095677', 'DK08-151', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4996507, 104.8573153, '2023-01-08 15:20:41', '2023-01-08 15:20:41');
INSERT INTO `data_locations_list` VALUES ('11655945-3b41-4198-9769-a5907c5ff8d7', 'DK38-219', 'CEE', 'លីននាង លីមឃុន', '20-02-2022', '250kVA (Thibidi)', 'LV', 'រោងចក្រ កិនជ័រ', 'DK38-219.jpg', NULL, 11.4993494, 104.8496462, '2023-01-08 15:22:15', '2023-01-08 15:22:15');
INSERT INTO `data_locations_list` VALUES ('122dbfc6-7c40-45de-82a0-6e0ffe6975b6', 'DK01-043', NULL, 'ឡៅ ហាំគួង', NULL, '50 kVA ( Precise )', 'LV', 'ឃ្លាំង', NULL, NULL, 11.497139, 104.873213, '2023-01-08 15:18:56', '2023-01-08 15:18:56');
INSERT INTO `data_locations_list` VALUES ('14d5fba3-8d2e-43bd-a0c1-249a45a3525b', 'DK21-004', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4889699, 104.8382451, '2023-01-08 15:21:42', '2023-01-08 15:21:42');
INSERT INTO `data_locations_list` VALUES ('1540af36-f058-4095-820a-6cec49d40aa3', 'DK19-088', NULL, 'ទួន សុភាព', NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រ ស្បែកជើង', NULL, NULL, 11.4926752, 104.8154259, '2023-01-08 15:22:56', '2023-01-08 15:22:56');
INSERT INTO `data_locations_list` VALUES ('15598857-1c46-4283-ba7c-fccda3e69c9c', 'DK25-59', NULL, 'ជូ យានវិន', NULL, '400kVA (EDL)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.498026, 104.8094868, '2023-01-08 15:23:09', '2023-01-08 15:23:09');
INSERT INTO `data_locations_list` VALUES ('17449e06-0007-4d52-9d82-ca76730dce23', 'DK45-079', NULL, 'តាំង ស្រីវី', NULL, '400kVA (សករាជ)', 'MV 15/5A', NULL, 'DK45-079.jpg', NULL, 11.4792706, 104.88102, '2023-01-08 15:21:19', '2023-01-08 15:21:19');
INSERT INTO `data_locations_list` VALUES ('17fc0a5b-9bad-4c1d-9325-f62bfb0ccb52', 'DK53-436', 'EM', NULL, NULL, '1250kVA (XYZ)', 'MV 30/5A', NULL, 'DK53-436.jpg', NULL, 11.4941205, 104.7715456, '2023-01-08 15:24:32', '2023-01-08 15:24:32');
INSERT INTO `data_locations_list` VALUES ('19b0a6e4-4195-4014-a236-d9c57e78c1df', 'DK19-275', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ១៩', 'DK19-275.jpg', NULL, 11.4908672, 104.8102845, '2023-01-08 15:22:51', '2023-01-08 15:22:51');
INSERT INTO `data_locations_list` VALUES ('1b8f56e5-e312-4bbb-a349-23198ad1cc0a', 'DK41-052', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១២', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.484587, 104.874564, '2023-01-08 15:18:34', '2023-01-08 15:18:34');
INSERT INTO `data_locations_list` VALUES ('1c7b3440-36ff-4283-beb3-28b2c61fc735', 'DK45-073', NULL, 'វ៉ាង ប៉េង', NULL, '500kVA (XYZ)', 'MV 25/5A', NULL, 'DK45-073.jpg', NULL, 11.4793991, 104.8728775, '2023-01-08 15:21:15', '2023-01-08 15:21:15');
INSERT INTO `data_locations_list` VALUES ('1dd628f5-2857-4237-9743-27afbd6196a2', 'DK34-061', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', NULL, 'DK34-061.jpg', NULL, 11.4667664, 104.7491775, '2023-01-08 15:24:50', '2023-01-08 15:24:50');
INSERT INTO `data_locations_list` VALUES ('1e2db3f5-5031-495d-99ad-f60386acf87e', 'DK25-026', NULL, 'ជា វន្ថា', NULL, '320kVA', 'MV 10/5A', NULL, NULL, NULL, 11.5020247, 104.8086577, '2023-01-08 15:23:41', '2023-01-08 15:23:41');
INSERT INTO `data_locations_list` VALUES ('1f83b147-1dad-4dc4-8a84-7644cfb8b8b3', 'DK40-154', NULL, NULL, NULL, '250kVA (Fuji)', 'LV', 'ចែកចាយ', 'DK40-154.jpg', NULL, 11.4880557, 104.83925, '2023-01-08 15:21:44', '2023-01-08 15:21:44');
INSERT INTO `data_locations_list` VALUES ('1fc511e7-8b93-493a-966d-d7edb44e336c', 'DK3-048', NULL, 'លី កញ្ញរិទ្ធ', NULL, '250kVA (EMAX)', 'LV', 'ក្រឡុក ស៊ីម៉ង', 'DK3-048.jpg', NULL, 11.4777286, 104.8451552, '2023-01-08 15:19:16', '2023-01-08 15:19:16');
INSERT INTO `data_locations_list` VALUES ('21318cb2-4f1b-4cd8-96ba-529de240c33e', 'DK40-106', NULL, 'ទ្រី ឆៀងហួត', NULL, '160kVA (Thaipat)', 'LV', 'បុរី', 'DK40-106.jpg', NULL, 11.4908803, 104.8391004, '2023-01-08 15:21:46', '2023-01-08 15:21:46');
INSERT INTO `data_locations_list` VALUES ('21ab96cd-6105-45e4-88d1-60d74c875d34', 'DK18-218', NULL, 'ភាព សុខលាង', NULL, '100kVA (Fuji)', 'LV', NULL, 'DK18-218.jpg', NULL, 11.4812581, 104.8062467, '2023-01-08 15:24:14', '2023-01-08 15:24:14');
INSERT INTO `data_locations_list` VALUES ('230c326b-536c-4a2d-8b8e-0504aef84474', 'DK48-181', NULL, 'ស្រេង យូគីម', NULL, '250kVA (Fuji / Indoor)', 'LV', NULL, 'DK48-181.jpg', NULL, 11.5035495, 104.822807, '2023-01-08 15:23:51', '2023-01-08 15:23:51');
INSERT INTO `data_locations_list` VALUES ('24066e48-7346-483b-be8e-ba62d4d5b273', 'DK41-41', '​ DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៤', NULL, '320 kVA ( Thibidi )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', NULL, NULL, 11.486702, 104.870836, '2023-01-08 15:18:48', '2023-01-08 15:18:48');
INSERT INTO `data_locations_list` VALUES ('24c066c1-0aa3-462b-92b2-c1f8e3adbbbf', 'DK1-083', NULL, 'ឡី សុក្រិត', NULL, '315kVA (Fuji)', 'LV', 'PTT', 'DK1-083.jpg', NULL, 11.4989443, 104.872686, '2023-01-08 15:20:08', '2023-01-08 15:20:08');
INSERT INTO `data_locations_list` VALUES ('26cd5664-6b29-4968-b85b-6ab23fe9f1d2', 'DK41-049', NULL, NULL, NULL, '50 kVA ( Thibidi / Mono )', 'LV', 'DK ចែកចាយ', 'DK41-049.jpg', NULL, 11.492477, 104.871936, '2023-01-08 15:18:59', '2023-01-08 15:18:59');
INSERT INTO `data_locations_list` VALUES ('26d36f6a-051a-400a-9f85-a4c6d549818c', 'DK41-061', NULL, NULL, NULL, '100 kVA ( Thibidi )', 'LV', 'DK ចែកចាយ', 'DK41-061.jpg', NULL, 11.490855, 104.871548, '2023-01-08 15:19:00', '2023-01-08 15:19:00');
INSERT INTO `data_locations_list` VALUES ('2710aeb9-922e-40bb-8cae-6966d797deb3', 'DK2', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', 'DK2.jpg', NULL, 11.49054, 104.8568017, '2023-01-08 15:19:41', '2023-01-08 15:19:41');
INSERT INTO `data_locations_list` VALUES ('28345c59-ec43-4d26-99b7-14152339f14f', 'DK48-066', NULL, 'ជាំង ស៊ុងហាន', NULL, '320kVA (Full Light)', 'LV', 'រោងចក្រស្បែកជើង', 'DK48-066.jpg', NULL, 11.5004931, 104.8284762, '2023-01-08 15:21:54', '2023-01-08 15:21:54');
INSERT INTO `data_locations_list` VALUES ('2ad65208-d8f4-4f03-8d7b-986e06c1f48b', 'DK18-118', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 15/5A', NULL, 'DK18-118.jpg', NULL, 11.4810015, 104.8063359, '2023-01-08 15:24:13', '2023-01-08 15:24:13');
INSERT INTO `data_locations_list` VALUES ('2c56b9fb-892e-464e-b7b8-aed9df379204', 'DK28-119', NULL, 'លី គឹមហេង', NULL, '200kVA (EDL)', 'LV', 'បុរី អេច អិម', 'DK28-119.jpg', NULL, 11.4903353, 104.791864, '2023-01-08 15:24:19', '2023-01-08 15:24:19');
INSERT INTO `data_locations_list` VALUES ('2ed279ea-86d8-4dbb-9cc7-7cd8cde09e67', 'DK18-217', NULL, 'គឹម រតនា', NULL, '160kVA (Thibidi)', 'LV', 'សប្បកម្ម​ ផលិតផ្លាក់សំលៀកបំពាក់​ យិន ផេង', 'DK18-217.jpg', NULL, 11.4799294, 104.8156445, '2023-01-08 15:23:44', '2023-01-08 15:23:44');
INSERT INTO `data_locations_list` VALUES ('30e9dfa9-166f-49f0-984d-223b7bad833f', 'DK38-023', NULL, 'លី វ៉ាននី', NULL, '320kVA (Thibidi)', 'LV', NULL, 'DK38-023.jpg', NULL, 11.49931, 104.8438862, '2023-01-08 15:22:05', '2023-01-08 15:22:05');
INSERT INTO `data_locations_list` VALUES ('313981cd-5f4f-4126-8ba8-988ce8e118d5', 'DK40-164', NULL, 'សាល រីណា', NULL, '1000kVA (Thaipat) Indoor', 'MV 30/5A', NULL, 'DK40-164.jpg', NULL, 11.4929391, 104.8439234, '2023-01-08 15:22:06', '2023-01-08 15:22:06');
INSERT INTO `data_locations_list` VALUES ('32d498b2-d295-4c1a-a932-878f3de11918', 'DK01-063', NULL, 'ហៅ ឃ្វីមីង', NULL, '630kVA (Fuji)', 'MV 20/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4833635, 104.8643367, '2023-01-08 15:21:02', '2023-01-08 15:21:02');
INSERT INTO `data_locations_list` VALUES ('32f31bd9-f6f0-4ed4-beb9-b6752b5d9ec4', 'DK44-056', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', 'ភូមិ ខ្វិត', 'DK44-056.jpg', NULL, 11.4582886, 104.860556, '2023-01-08 15:20:28', '2023-01-08 15:20:28');
INSERT INTO `data_locations_list` VALUES ('33d368fa-0382-4df5-9b44-aeeb7be9afc9', 'DK19-159', NULL, 'អៀង កន្និថា', NULL, '100kVA (Fuji)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4926154, 104.8053633, '2023-01-08 15:22:57', '2023-01-08 15:22:57');
INSERT INTO `data_locations_list` VALUES ('34c7f27a-71bd-49e8-ac51-2bc2f8be99d4', 'DK9-143', NULL, 'សំ សុផល', NULL, '100kVA (Precise)', 'LV', 'ចែកចាយ', 'DK9-143.jpg', NULL, 11.4647047, 104.8525081, '2023-01-08 15:20:33', '2023-01-08 15:20:33');
INSERT INTO `data_locations_list` VALUES ('3630c3cc-1a2b-4f2c-acd4-00180952f629', 'DK41-060', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី១៩', NULL, '630kVA (Thibidi)', 'LV', 'រោងចក្រ', 'DK41-060.jpg', NULL, 11.4872872, 104.8668556, '2023-01-08 15:20:59', '2023-01-08 15:20:59');
INSERT INTO `data_locations_list` VALUES ('38e26da6-f81a-4083-897e-00768ff327a3', 'DK42-081', 'DK', 'ងួន វីទូ', NULL, '630kVA ( Thibidi / Indoor )', 'MV 20/5A', 'ផ្ទះវីឡា', 'DK42-081.jpg', NULL, 11.4793853, 104.8710579, '2023-01-08 15:21:07', '2023-01-08 15:21:07');
INSERT INTO `data_locations_list` VALUES ('39ceae7e-8a84-46ba-9f1d-ba3539e9656b', 'DK41-047', NULL, 'ឈឹម កៃឡុង', NULL, '250 kVA ( Precise )', 'LV', 'ឃ្លាំង សង្កត់សសរគ្រឹស', 'DK41-047.jpg', NULL, 11.489083, 104.873022, '2023-01-08 15:18:49', '2023-01-08 15:18:49');
INSERT INTO `data_locations_list` VALUES ('3a29cfe1-c898-4820-9c8c-ae3ec9d21dd5', 'DK34-063', NULL, NULL, NULL, '630kVA (Fuji)', 'MV 15/5A', NULL, 'DK34-063.jpg', NULL, 11.4613327, 104.7489987, '2023-01-08 15:24:55', '2023-01-08 15:24:55');
INSERT INTO `data_locations_list` VALUES ('3a430ac8-77b0-4d08-804f-9867795e0db2', 'DK34-068', NULL, NULL, NULL, '630kVA (TRF Rockwell)', 'MV 15/5A', NULL, 'DK34-068.jpg', NULL, 11.4610607, 104.7490828, '2023-01-08 15:24:51', '2023-01-08 15:24:51');
INSERT INTO `data_locations_list` VALUES ('3aa69822-2254-44c3-98c3-86e7f017fe33', 'DK2-126', NULL, 'លឹម ហុង', NULL, '400kVA (Precise)', 'LV', NULL, 'DK2-126.jpg', NULL, 11.4928704, 104.8611921, '2023-01-08 15:19:44', '2023-01-08 15:19:44');
INSERT INTO `data_locations_list` VALUES ('3be858cd-0d3e-4ae8-9e02-fcc3ff0613a8', 'DK21-032', NULL, 'តាំង ធា', NULL, '400kVA + 630kVA (Fuji)', 'MV 75/5A', NULL, 'DK21-032.jpg', NULL, 11.4835679, 104.8377835, '2023-01-08 15:21:39', '2023-01-08 15:21:39');
INSERT INTO `data_locations_list` VALUES ('3cab3110-e50d-4b19-af1c-4cf12b500e54', 'DK38-24', NULL, NULL, NULL, '50kVA (Thaipat)', 'LV', 'រោងចក្រស្បែកជើង', 'DK38-24.jpg', NULL, 11.5003252, 104.8422507, '2023-01-08 15:22:01', '2023-01-08 15:22:01');
INSERT INTO `data_locations_list` VALUES ('3e2cb15e-961a-4368-a526-aca8cff3f1f6', 'DK26-035', NULL, 'ស៊ឹម ណាវី', NULL, '160kVA (Fuji)', 'LV', 'សិប្បកម្ម ផលិតម្សៅបៀក', NULL, NULL, 11.5039799, 104.802276, '2023-01-08 15:23:53', '2023-01-08 15:23:53');
INSERT INTO `data_locations_list` VALUES ('40336baa-6abc-4876-ab68-de6813e0a90c', 'DK25-004', '​ DK', NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', 'DK25-004.jpg', NULL, 11.5020675, 104.8095683, '2023-01-08 15:23:40', '2023-01-08 15:23:40');
INSERT INTO `data_locations_list` VALUES ('4077cdf4-d844-40c6-8600-ad39f87c7004', 'DK20-406', NULL, 'សុក លីន', NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រ កាត់ដេរ', 'DK20-406.jpg', NULL, 11.5072643, 104.8197071, '2023-01-08 15:23:19', '2023-01-08 15:23:19');
INSERT INTO `data_locations_list` VALUES ('4260291a-5586-4ae3-84f4-7fd81bbc77ab', 'DK38-026E', NULL, NULL, NULL, '1000kVA (Precise) Indoor', 'MV 20/5A', 'រោងចក្រ កៅតា', 'DK38-026E.jpg', NULL, 11.5042411, 104.8451062, '2023-01-08 15:22:20', '2023-01-08 15:22:20');
INSERT INTO `data_locations_list` VALUES ('46e34863-9826-4d98-a82c-c6ec976da4ac', 'DK20-146', NULL, NULL, NULL, '400kVA (Thai Maxwell)', 'LV', 'បុរី ពិភពថ្មី ទី ២', 'DK20-146.jpg', NULL, 11.4993465, 104.8193198, '2023-01-08 15:22:30', '2023-01-08 15:22:30');
INSERT INTO `data_locations_list` VALUES ('472d9174-2ac4-4566-8821-e5427ec0116f', 'DK1-039 (ទី2)', NULL, NULL, NULL, '630kVA (Precise)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', NULL, NULL, 11.495214, 104.8673397, '2023-01-08 15:19:56', '2023-01-08 15:19:56');
INSERT INTO `data_locations_list` VALUES ('4756daf9-5be3-49ad-b4dc-24ca9aa134de', 'DK2-139', NULL, 'លឹម ហេង', NULL, '100kVA (Fuji)', 'LV', 'ផ្ទះអតិថិជន', 'DK2-139.jpg', NULL, 11.4857565, 104.8515405, '2023-01-08 15:19:32', '2023-01-08 15:19:32');
INSERT INTO `data_locations_list` VALUES ('4774567e-8648-44c0-b6e2-f918e3d9412f', 'DK32-054', 'CEE', NULL, '26-11-2021', '160kVA (ABB)', 'MV 10/5A', 'PTT បឹងធំ', 'DK32-054.jpg', NULL, 11.4846481, 104.749989, '2023-01-08 15:24:37', '2023-01-08 15:24:37');
INSERT INTO `data_locations_list` VALUES ('4ab31214-9620-46b4-8b3a-b0f1a8792dd4', 'DK38-217', NULL, 'ទូ ឆកាយ', NULL, '400kVA (Thibidi)', 'LV', NULL, 'DK38-217.jpg', NULL, 11.4980569, 104.8380681, '2023-01-08 15:21:56', '2023-01-08 15:21:56');
INSERT INTO `data_locations_list` VALUES ('4b526a7d-72a5-4df7-b0f6-304c403eaa3f', 'DK45-076', NULL, 'ស៊ិន ឡុងតៃ', NULL, '800kVA (Fuji)', 'MV 30/5A', 'រោងចក្រ', 'DK45-076.jpg', NULL, 11.4793563, 104.8736939, '2023-01-08 15:21:18', '2023-01-08 15:21:18');
INSERT INTO `data_locations_list` VALUES ('4c5b4b9c-8fbd-4a10-917c-a7227738ff54', 'DK34-007', 'DK', NULL, NULL, '160kVA (Fuji)', 'LV', '​ ចែកចាយ', 'DK34-007.jpg', NULL, 11.4604794, 104.7490516, '2023-01-08 15:24:52', '2023-01-08 15:24:52');
INSERT INTO `data_locations_list` VALUES ('4c8546c7-03aa-4889-b024-99c4d5269f91', 'DK2-057', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', 'DK2-057.jpg', NULL, 11.4897587, 104.8553962, '2023-01-08 15:19:36', '2023-01-08 15:19:36');
INSERT INTO `data_locations_list` VALUES ('4c9b2328-82aa-4ce2-82d7-3b59cbace029', 'DK42-082', NULL, 'សុខ ហ៊ាង', NULL, '320kVA (Thibidi)', 'LV', NULL, 'DK42-082.jpg', NULL, 11.4786989, 104.8709513, '2023-01-08 15:21:09', '2023-01-08 15:21:09');
INSERT INTO `data_locations_list` VALUES ('4e0a0f65-6750-4a32-894e-b15987750064', 'DK9-146', NULL, NULL, NULL, '50kVA (Thai Maxwell)', 'LV', NULL, NULL, NULL, 11.4690095, 104.8535508, '2023-01-08 15:20:35', '2023-01-08 15:20:35');
INSERT INTO `data_locations_list` VALUES ('52a263a2-6a62-48d8-a275-e990c1f1b75d', 'DK38-254', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 20/5A', NULL, 'DK38-254.jpg', NULL, 11.4991621, 104.8422497, '2023-01-08 15:22:03', '2023-01-08 15:22:03');
INSERT INTO `data_locations_list` VALUES ('5342cb77-50da-46c5-8371-e495af9170ad', 'DK25-079', NULL, 'ដាំង ប៉ិចហា', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ កាត់ដេរ', 'DK25-079.jpg', NULL, 11.4976272, 104.8074021, '2023-01-08 15:23:04', '2023-01-08 15:23:04');
INSERT INTO `data_locations_list` VALUES ('537c8b42-bf33-4a16-90bd-d07bae43cd0b', 'DK04-029', NULL, NULL, NULL, '160kVA (Thibid)', 'LV', NULL, NULL, NULL, 11.4638024, 104.8375411, '2023-01-08 15:19:08', '2023-01-08 15:19:08');
INSERT INTO `data_locations_list` VALUES ('5397251e-65c8-4da9-b2c5-1adc06dc245a', 'DK9-208', NULL, 'ផង ទៀង', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ', 'DK9-208.jpg', NULL, 11.46478, 104.8524394, '2023-01-08 15:20:26', '2023-01-08 15:20:26');
INSERT INTO `data_locations_list` VALUES ('541cba6d-1d08-4a9a-bbe4-20eb7f726344', 'DK28-114', NULL, 'លី គីមហេង', NULL, '400kVA (TRF Rockwell)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', 'DK28-114.jpg', NULL, 11.4950182, 104.8013054, '2023-01-08 15:24:12', '2023-01-08 15:24:12');
INSERT INTO `data_locations_list` VALUES ('543ea22e-4a1c-4687-9df0-26cef29a4356', 'DK25-058', NULL, 'សូ ស៊ីវន', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ', 'DK25-058.jpg', NULL, 11.5020606, 104.8095421, '2023-01-08 15:23:39', '2023-01-08 15:23:39');
INSERT INTO `data_locations_list` VALUES ('5441ea5c-dfe3-445e-a8ac-be6b17c26ab9', 'DK03-041', NULL, 'សាក សុភារិទ្ធ', NULL, '315kVA (Fuji)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4823729, 104.847131, '2023-01-08 15:20:38', '2023-01-08 15:20:38');
INSERT INTO `data_locations_list` VALUES ('5447869e-8db8-45c6-872f-65deb9f064cb', 'DK40-092', NULL, NULL, NULL, '75 kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', NULL, NULL, 11.4833166, 104.8480034, '2023-01-08 15:19:21', '2023-01-08 15:19:21');
INSERT INTO `data_locations_list` VALUES ('55597c7d-60fe-4c2d-bfd1-5cb709d236e7', 'DK9-174', NULL, 'វ៉ិ ស្រីខួច', NULL, '315kVA (No Brand)', 'MV 10/5A', NULL, 'DK9-174.jpg', NULL, 11.4602178, 104.8475058, '2023-01-08 15:20:20', '2023-01-08 15:20:20');
INSERT INTO `data_locations_list` VALUES ('559a243d-07f0-4b34-904c-c29a29686dd7', 'DK28-087', NULL, 'លី មេងលាង', NULL, '800kVA (Thai Maxwell)', 'MV 20/5A', NULL, 'DK28-087.jpg', NULL, 11.4911685, 104.7954471, '2023-01-08 15:24:08', '2023-01-08 15:24:08');
INSERT INTO `data_locations_list` VALUES ('55f76ada-8cb1-4ec9-aa3f-06f25e173e7a', 'DK9-003', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'ចែកចាយ', 'DK9-003.jpg', NULL, 11.4637446, 104.844492, '2023-01-08 15:20:11', '2023-01-08 15:20:11');
INSERT INTO `data_locations_list` VALUES ('56e7ded1-3eb0-43af-af86-591e5bf2fb9f', 'DK19-175', NULL, 'គីម ជីហ៊ុន', NULL, '200kVA (Thibidi)', 'LV', 'មណ្ឌលវេជ្ជសាស្រ្ត កូមីស៊ូ', 'DK19-175.jpg', NULL, 11.4865877, 104.8286854, '2023-01-08 15:21:51', '2023-01-08 15:21:51');
INSERT INTO `data_locations_list` VALUES ('570be259-6549-484b-97f8-366ae9c34531', 'DK01-203', NULL, NULL, NULL, '160 kVA ( Thibid )', 'LV', NULL, NULL, NULL, 11.497587, 104.873316, '2023-01-08 15:18:55', '2023-01-08 15:18:55');
INSERT INTO `data_locations_list` VALUES ('5880bdb7-628d-4312-adf9-f911480a7206', 'DK53-41', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ពិភពថ្មី ទី៧', 'DK53-41.jpg', NULL, 11.5024167, 104.7681476, '2023-01-08 15:24:26', '2023-01-08 15:24:26');
INSERT INTO `data_locations_list` VALUES ('5890d5f9-210b-43fa-a418-334eda3f76fc', 'DK19-273', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ទី ៦ (បូមទឹក 300A)', NULL, NULL, 11.491752, 104.8129596, '2023-01-08 15:22:53', '2023-01-08 15:22:53');
INSERT INTO `data_locations_list` VALUES ('58e0695f-1fec-4c75-a5d1-f5524487af1e', 'DK25-057', NULL, 'ឈិន ឈាង', NULL, '100kVA (Precise)', 'LV', 'ឃ្លាំង ផលិតស៊ីតែនសាំង', NULL, NULL, 11.5025517, 104.8112574, '2023-01-08 15:23:28', '2023-01-08 15:23:28');
INSERT INTO `data_locations_list` VALUES ('59422c17-e5cd-49e0-a32a-1772b76e5b4e', 'DK48-056', NULL, 'គួច ហៀង', NULL, '400kVA (Thibidi)', 'MV 15/5A', NULL, NULL, NULL, 11.5019045, 104.8249816, '2023-01-08 15:22:27', '2023-01-08 15:22:27');
INSERT INTO `data_locations_list` VALUES ('59938a2f-e15e-4675-b4ba-bcbd6595f824', 'DK42-023', NULL, NULL, NULL, '250kva', 'LV', 'ចែកចាយ', 'DK42-023.jpg', NULL, 11.475287, 104.8676603, '2023-01-08 15:21:11', '2023-01-08 15:21:11');
INSERT INTO `data_locations_list` VALUES ('59e2c71f-b9a7-4c40-a693-2bb8fd6f0284', 'DK45-077', NULL, 'ងួន វិទូ', NULL, '200kVA (Precise)', 'LV', 'ឃ្លាំង DI ZHIZAO Co.,LTD', 'DK45-077.jpg', NULL, 11.4794474, 104.8729905, '2023-01-08 15:21:16', '2023-01-08 15:21:16');
INSERT INTO `data_locations_list` VALUES ('5a0c837c-1e67-4f63-b53d-035d8e0634d3', 'DK41-059', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី១៨', NULL, '630kVA (Thibidi)', 'LV', 'SUN-ALPS (Cambodia) Co,LTD', 'DK41-059.jpg', NULL, 11.4873329, 104.8678011, '2023-01-08 15:21:00', '2023-01-08 15:21:00');
INSERT INTO `data_locations_list` VALUES ('5ce528bc-641c-403b-a677-224f9d83d014', 'DK41-053', NULL, 'ប៉េង គីម', NULL, '400 kVA ( Fuji )', 'LV', NULL, 'DK41-053.jpg', NULL, 11.483443, 104.879378, '2023-01-08 15:18:39', '2023-01-08 15:18:39');
INSERT INTO `data_locations_list` VALUES ('5d83486c-db6f-4265-9af4-5a712c171418', 'DK38-38', NULL, 'ខៀវ សំណាង', NULL, '160kVA (Fuji)', 'LV', 'រោងចក្រ ចែកចាយអង្ករ', 'DK38-38.jpg', NULL, 11.5033665, 104.845698, '2023-01-08 15:22:21', '2023-01-08 15:22:21');
INSERT INTO `data_locations_list` VALUES ('5daf71a2-0d96-433f-a413-2eebe1dd07b5', 'DK2-003', NULL, 'ណេ សួន', NULL, '315kVA (Fuji)', 'LV', 'ឃ្លាំងដែក', 'DK2-003.jpg', NULL, 11.4919406, 104.8593716, '2023-01-08 15:19:43', '2023-01-08 15:19:43');
INSERT INTO `data_locations_list` VALUES ('5ea07a7d-eed2-4e69-b411-280b9da7bcdc', 'DK48-176', NULL, 'ហ៊ឹម ហ៊ាង', NULL, '160kVA (Fuji)', 'LV', 'បុរី KSH', 'DK48-176.jpg', NULL, 11.495278, 104.837361, '2023-01-08 15:21:47', '2023-01-08 15:21:47');
INSERT INTO `data_locations_list` VALUES ('5ef2ebe9-8f57-479f-81b7-eb75b3bacd71', 'DK3-066', NULL, NULL, NULL, '630kVA (Thibid)', 'LV', 'បុរី ធីវីស្តា គម្រោង៦', NULL, NULL, 11.4672848, 104.8421776, '2023-01-08 15:19:11', '2023-01-08 15:19:11');
INSERT INTO `data_locations_list` VALUES ('5f7f49f6-38cb-4a45-afc8-28c8f40264c9', 'DK3-049', NULL, NULL, NULL, '630kVA (Fuji)', 'LV', 'បុរី ធីវីស្តា គម្រោង៦', 'DK3-049.jpg', NULL, 11.4687614, 104.8444689, '2023-01-08 15:19:13', '2023-01-08 15:19:13');
INSERT INTO `data_locations_list` VALUES ('5f9c9f77-9fde-482f-8023-5108596faaba', 'DK20-062', NULL, 'សំឆាយវ៉ាន', NULL, '400kVA', 'MV 10/5A', 'រោងចក្រកាត់ដេរ', 'DK20-062.jpg', NULL, 11.5077509, 104.8208493, '2023-01-08 15:23:17', '2023-01-08 15:23:17');
INSERT INTO `data_locations_list` VALUES ('60bc6b76-5dfd-4c0a-91a6-f0419be661d9', 'PE 01', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.5060168, 104.8861031, '2023-01-08 15:21:36', '2023-01-08 15:21:36');
INSERT INTO `data_locations_list` VALUES ('60d6ef12-c611-4ba3-9600-4d343ad7d48b', 'DK38-036', NULL, 'គួ មីងសាន', NULL, '250kva', 'LV', NULL, 'DK38-036.jpg', NULL, 11.5003436, 104.8380695, '2023-01-08 15:21:55', '2023-01-08 15:21:55');
INSERT INTO `data_locations_list` VALUES ('60e3ee72-a3ed-48c2-a164-d50797b296bd', 'DK20-128', NULL, 'ថាច់ ឡឹម', NULL, '100kVA (Precise)', 'LV', NULL, 'DK20-128.jpg', NULL, 11.4998603, 104.8137747, '2023-01-08 15:23:13', '2023-01-08 15:23:13');
INSERT INTO `data_locations_list` VALUES ('61ed19b1-dc14-4527-a43c-dad1c75bc911', 'DK25-031', NULL, 'ម៉េង សំណាង', NULL, '400kVA ( China )', 'LV', NULL, 'DK25-031.jpg', NULL, 11.5021496, 104.8102959, '2023-01-08 15:23:38', '2023-01-08 15:23:38');
INSERT INTO `data_locations_list` VALUES ('6284d5bd-89b4-4037-b870-fe78fbaa8bf3', 'DK10-081', NULL, 'លាង ឃុន', NULL, '1250kVA (Fuji / Indoor)', 'LV', 'បុរី Chip Mong ទី ១', 'DK10-081.jpg', NULL, 11.5014491, 104.878607, '2023-01-08 15:21:26', '2023-01-08 15:21:26');
INSERT INTO `data_locations_list` VALUES ('6301ff00-1656-41e5-ac3e-0d9e98ef48fc', 'DK41-058', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៧', NULL, '800 kVA ( Fuji )', 'LV', NULL, 'DK41-058.jpg', NULL, 11.486062, 104.876935, '2023-01-08 15:18:46', '2023-01-08 15:18:46');
INSERT INTO `data_locations_list` VALUES ('64c01b21-9ccc-4ffb-adb2-79ad1704abe4', 'DK25-176', NULL, 'មាស ស៊ុយឃាង', NULL, '160kVA (Thibidi)', 'LV', 'រោងចក្រ កាត់ដេរ', 'DK25-176.jpg', NULL, 11.4976301, 104.8073716, '2023-01-08 15:23:01', '2023-01-08 15:23:01');
INSERT INTO `data_locations_list` VALUES ('6632fcaa-4f22-4d91-b2af-7b0a1301919e', 'DK41-046', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី៩', NULL, '630 kVA ( Precise )', 'LV', NULL, 'DK41-046.jpg', NULL, 11.485075, 104.87225, '2023-01-08 15:18:31', '2023-01-08 15:18:31');
INSERT INTO `data_locations_list` VALUES ('664e08e2-7656-47c8-8251-960505f21baa', 'DK30-060', NULL, NULL, NULL, '630kVA', 'MV 20/5A', 'រោងចក្រ ហ៊ុង ប៊ិន', NULL, NULL, 11.4609769, 104.7489742, '2023-01-08 15:24:54', '2023-01-08 15:24:54');
INSERT INTO `data_locations_list` VALUES ('67311fbb-f4da-4907-909b-b3dd7e02416e', 'DK01-041', NULL, 'អ៊ី ហ៊ួហុង', NULL, '200kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4906908, 104.865023, '2023-01-08 15:20:50', '2023-01-08 15:20:50');
INSERT INTO `data_locations_list` VALUES ('67618933-984f-4c42-8ad1-46af2bda37be', 'LBS វត្ត ស្លែង', NULL, NULL, NULL, NULL, NULL, NULL, 'LBS វត្ត ស្លែង.jpg', NULL, 11.4627408, 104.8132456, '2023-01-08 15:23:47', '2023-01-08 15:23:47');
INSERT INTO `data_locations_list` VALUES ('681ec157-5062-4e3e-aa79-26bbc70f3b17', 'DK41-048', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១០', NULL, '630 kVA ( Thaipat )', 'LV', 'រោងចក្រ', 'DK41-048.jpg', NULL, 11.484592, 104.874533, '2023-01-08 15:18:33', '2023-01-08 15:18:33');
INSERT INTO `data_locations_list` VALUES ('69350b89-57c6-4406-b80a-6eff491d44f9', 'DK32-034', NULL, NULL, NULL, '315kVA (Fuji)', 'MV 10/5A', 'ដីឡូ', 'DK32-034.jpg', NULL, 11.4865335, 104.7499449, '2023-01-08 15:24:36', '2023-01-08 15:24:36');
INSERT INTO `data_locations_list` VALUES ('69f20c31-5d88-4154-be23-df0ec161c733', 'DK40-163', NULL, 'ឃាម ចាន់ណា', NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', 'DK40-163.jpg', NULL, 11.492782, 104.8439361, '2023-01-08 15:22:07', '2023-01-08 15:22:07');
INSERT INTO `data_locations_list` VALUES ('6a30c325-3ec2-4d27-a3c2-88ccdbc46d44', 'DK21-030', NULL, 'ស៊ឹម មេងហុង', NULL, '500kva', 'LV', NULL, NULL, NULL, 11.4833284, 104.8403805, '2023-01-08 15:21:41', '2023-01-08 15:21:41');
INSERT INTO `data_locations_list` VALUES ('6adb47c8-b25b-4bce-8fe6-ac67b557c9a9', 'DK25-003', NULL, 'យ៉ង់ សាំងកុមារ', NULL, '400kVA (Thai Maxwell)', 'LV', 'រោងចក្រ កិនស្រូវ', NULL, NULL, 11.5021453, 104.8102784, '2023-01-08 15:23:37', '2023-01-08 15:23:37');
INSERT INTO `data_locations_list` VALUES ('6bde4d43-da65-43b3-bc23-164f6e3ab80a', 'DK2-161', NULL, 'ឈិន សុខខេង', NULL, '315kVA (Fuji)', 'LV', 'មណ្ឌលកែប្រែទី២ ព្រៃសរ', 'DK2-161.jpg', NULL, 11.4863364, 104.8468939, '2023-01-08 15:19:24', '2023-01-08 15:19:24');
INSERT INTO `data_locations_list` VALUES ('6d599999-1d63-46de-98da-1755eba72f20', 'DK25-166', NULL, 'ហុង ជីនលី', NULL, '100kVA (Thibidi)', 'LV', NULL, 'DK25-166.jpg', NULL, 11.5002069, 104.8126891, '2023-01-08 15:23:35', '2023-01-08 15:23:35');
INSERT INTO `data_locations_list` VALUES ('6d8e182d-3951-4d58-9d91-6527f27bb0ec', 'DK07-069', NULL, 'ស៊ូ រិនពេញ', NULL, '315kVA (X.Y.Z)', 'MV 10/5A', 'ផលិត ផ្ទះចល្ថត', NULL, NULL, 11.4623993, 104.8131685, '2023-01-08 15:23:49', '2023-01-08 15:23:49');
INSERT INTO `data_locations_list` VALUES ('6e0b23c2-1c97-4224-bb43-7be02166d4f4', 'DK25-085', NULL, 'តាំង សេង', NULL, '400kVA (Fuji)', 'LV', 'រោងចក្រ ផលិតពូក', 'DK25-085.jpg', NULL, 11.5005282, 104.8109392, '2023-01-08 15:23:32', '2023-01-08 15:23:32');
INSERT INTO `data_locations_list` VALUES ('6e2e4691-407c-4e17-957c-53060138ae98', 'DK01-042', NULL, 'ខៃ ស៊ូហ្គេច', NULL, '250 kva ABB', 'LV', 'សិប្បកម្មកិនម្សៅ', NULL, NULL, 11.4982866, 104.8664288, '2023-01-08 15:21:28', '2023-01-08 15:21:28');
INSERT INTO `data_locations_list` VALUES ('6f32f1d4-38d3-4ce1-a17f-e497c77b1b5c', 'DK01-074', NULL, 'លាង ឃុន', NULL, '630kVA (EMAX)', 'MV 15/5A', 'បុរី Chip Mong 50M', NULL, NULL, 11.4957896, 104.8753297, '2023-01-08 15:21:24', '2023-01-08 15:21:24');
INSERT INTO `data_locations_list` VALUES ('6fa309de-2e93-4879-92b7-2a9bc83bb95c', 'DK53-438', 'EM', NULL, NULL, '1000kVA (EMAX)', 'MV 25/5A', NULL, 'DK53-438.jpg', NULL, 11.4940318, 104.7699611, '2023-01-08 15:24:30', '2023-01-08 15:24:30');
INSERT INTO `data_locations_list` VALUES ('701a830d-1390-4a1c-ac50-866c4e323f4b', 'DK41-042', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី៥', NULL, '630kVA (Thibidi)', 'LV', NULL, 'DK41-042.jpg', NULL, 11.486887, 104.8738541, '2023-01-08 15:21:22', '2023-01-08 15:21:22');
INSERT INTO `data_locations_list` VALUES ('70212f64-878c-402d-87a3-bda475b7537b', 'DK41-039', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០២', NULL, '630 kVA ( Thibid )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', 'DK41-039.jpg', NULL, 11.483705, 104.872043, '2023-01-08 15:18:43', '2023-01-08 15:18:43');
INSERT INTO `data_locations_list` VALUES ('70ac0727-ebb1-4166-bb85-e10af9ee6a80', 'DK41-045', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៨', NULL, '320 kVA ( Thibid )', 'LV', NULL, 'DK41-045.jpg', NULL, 11.485355, 104.8713, '2023-01-08 15:18:47', '2023-01-08 15:18:47');
INSERT INTO `data_locations_list` VALUES ('7107d43e-ac23-40aa-8fa5-256ec56c3840', 'DK41-040', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៣', NULL, '320 kVA ( Thibidi )', 'LV', NULL, 'DK41-040.jpg', NULL, 11.483524, 104.876814, '2023-01-08 15:18:38', '2023-01-08 15:18:38');
INSERT INTO `data_locations_list` VALUES ('710e0ee1-ff2a-4bfa-8990-d3f95635fcba', 'DK25-061', NULL, 'មេង គារ', NULL, '400kVA (ABB)', 'LV', 'រោងចក្រ កាត់ដេរ', 'DK25-061.jpg', NULL, 11.5011347, 104.8108263, '2023-01-08 15:23:30', '2023-01-08 15:23:30');
INSERT INTO `data_locations_list` VALUES ('71eddcbb-14a3-43d2-8acb-8f0291a4d489', 'DK01-050', NULL, 'ជួន អៀង', NULL, '800kVA (Thaipat)', 'MV 20/5A', NULL, 'DK01-050.jpg', NULL, 11.4999572, 104.8686101, '2023-01-08 15:21:29', '2023-01-08 15:21:29');
INSERT INTO `data_locations_list` VALUES ('7291683b-8107-4ed6-93e4-0fecacc710ff', 'DK2-130', NULL, 'វ៉ាន់ សុផល', NULL, '200kVA (Fuji)', 'LV', 'លំនៅដ្ឋាន ស្តង់ដារ', 'DK2-130.jpg', NULL, 11.488178, 104.8477103, '2023-01-08 15:19:28', '2023-01-08 15:19:28');
INSERT INTO `data_locations_list` VALUES ('73fc8c2d-ed1d-4b73-a139-d4986aa6c4bc', 'DK54-025', NULL, NULL, NULL, '400kVA (Precise)', 'MV 15/5A', 'អញ្ញាប័ណ្ឌទឹកស្អាត', NULL, NULL, 11.4571793, 104.7311948, '2023-01-08 15:24:45', '2023-01-08 15:24:45');
INSERT INTO `data_locations_list` VALUES ('74428d89-6fef-4c7a-9d5f-65ee0714ee7e', 'DK41-054', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៣', NULL, '630 kVA ( Fuji )', 'LV', NULL, 'DK41-054.jpg', NULL, 11.484544, 104.875495, '2023-01-08 15:18:37', '2023-01-08 15:18:37');
INSERT INTO `data_locations_list` VALUES ('7473aee7-c967-4d7e-8926-937126622e73', 'DK20-407', NULL, 'សហគ្រាស ដីអេសអាយ', NULL, '100kVA (EMAX)', 'LV', 'Lucky Express', 'DK20-407.jpg', NULL, 11.5018378, 104.8185899, '2023-01-08 15:23:52', '2023-01-08 15:23:52');
INSERT INTO `data_locations_list` VALUES ('79a69733-b9c5-4f77-a8f0-f492b6326082', 'DK01-195', 'DK', 'អ៊ឹង ប៉ុនប៉េង', NULL, '630kVA (Fuji)', 'LV', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.483048, 104.8650415, '2023-01-08 15:21:04', '2023-01-08 15:21:04');
INSERT INTO `data_locations_list` VALUES ('7a38f76d-a16b-42df-8123-46866dec96c3', 'DK2-168', 'CEE', 'អ៊ិច សុខា ទី២', '15-07-2022', '400kVA (Trasfix)', 'MV 10/5A', 'រោងចក្រ កិនជ៍រ', 'DK2-168.jpg', NULL, 11.4875488, 104.8563068, '2023-01-08 15:19:37', '2023-01-08 15:19:37');
INSERT INTO `data_locations_list` VALUES ('7a78767d-3753-4f17-9b20-627cc47832b4', 'DK2-51', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី១ ព្រៃសរ', NULL, NULL, 11.4874302, 104.8468792, '2023-01-08 15:19:27', '2023-01-08 15:19:27');
INSERT INTO `data_locations_list` VALUES ('7b60d315-5b29-4b03-b60c-668d73ad1dec', 'DK40-249', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី វីខេ (VK)', 'DK40-249.jpg', NULL, 11.4836711, 104.8480208, '2023-01-08 15:19:22', '2023-01-08 15:19:22');
INSERT INTO `data_locations_list` VALUES ('7b934dcc-9281-4377-9b43-9dac9b743bb3', 'DK45-074', NULL, 'ឃន ចាន់ណា', NULL, '400 kVA ( Thibidi )', 'LV', 'ក្រឡុក​ ស៊ីម៉ង', 'DK45-074.jpg', NULL, 11.477572, 104.885113, '2023-01-08 15:19:03', '2023-01-08 15:19:03');
INSERT INTO `data_locations_list` VALUES ('7c2410eb-8ce2-4492-91f9-067c2885bd74', 'DK10-082', NULL, 'លាង ឃុន', NULL, '1250kVA (EMAX / Indoor )', 'LV', 'បុរី Chip Mong ទី ២', 'DK10-082.jpg', NULL, 11.5013962, 104.8786137, '2023-01-08 15:21:25', '2023-01-08 15:21:25');
INSERT INTO `data_locations_list` VALUES ('7df0c1b7-c3c3-45ef-a243-5875a3e82ed0', 'DK25-87', NULL, 'ធុង ដារា', NULL, '200kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.5021204, 104.8084139, '2023-01-08 15:23:43', '2023-01-08 15:23:43');
INSERT INTO `data_locations_list` VALUES ('7e2f3426-b80f-4823-b3b7-7a097f559e39', 'DK30-056', NULL, 'ម៉ៅ សុផាន់', NULL, '630kVA (Fuji)', 'MV 20/5A', NULL, 'DK30-056.jpg', NULL, 11.5005798, 104.7906296, '2023-01-08 15:24:00', '2023-01-08 15:24:00');
INSERT INTO `data_locations_list` VALUES ('7e3279ce-d85c-4c65-b932-1a4f452a8be5', 'DK01-117', NULL, 'ហេង សាយ', NULL, '400kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4926733, 104.8688632, '2023-01-08 15:20:57', '2023-01-08 15:20:57');
INSERT INTO `data_locations_list` VALUES ('7ed8c151-806a-4c2c-87d7-fe6f0010c857', 'DK7-036', NULL, 'ជា សាមាន', NULL, '200kVA (Thaipat)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4678572, 104.8144151, '2023-01-08 15:22:40', '2023-01-08 15:22:40');
INSERT INTO `data_locations_list` VALUES ('7f3666ef-2a41-4310-b494-8a5a30d8fe45', 'DK43-029', NULL, 'គីម អាយ', NULL, '800kVA (Thibidi)', 'MV 25/5A', NULL, 'DK43-029.jpg', NULL, 11.4628866, 104.8612727, '2023-01-08 15:20:32', '2023-01-08 15:20:32');
INSERT INTO `data_locations_list` VALUES ('80177148-4363-4daf-a547-f6d35709f190', 'DK42-054', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4981965, 104.871007, '2023-01-08 15:20:06', '2023-01-08 15:20:06');
INSERT INTO `data_locations_list` VALUES ('801aaa4f-ad25-40a8-81d2-ab3511bd2281', 'DK40-363', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', 'DK40-363.jpg', NULL, 11.4815209, 104.8478692, '2023-01-08 15:19:20', '2023-01-08 15:19:20');
INSERT INTO `data_locations_list` VALUES ('80f141f4-c788-482d-9e0b-4a98412c0ad3', 'DK53-027', NULL, 'ស៊ី លាង', NULL, '400kVA (EMAX)', 'MV 10/5A', NULL, 'DK53-027.jpg', NULL, 11.4990816, 104.77184, '2023-01-08 15:24:25', '2023-01-08 15:24:25');
INSERT INTO `data_locations_list` VALUES ('81685221-090c-4680-a4fe-cc739b0ebcc4', 'DK20-97', NULL, 'កូយ ឡេង', NULL, '315kVA (Fuji)', 'LV', NULL, 'DK20-97.jpg', NULL, 11.5033185, 104.8151909, '2023-01-08 15:23:27', '2023-01-08 15:23:27');
INSERT INTO `data_locations_list` VALUES ('82474f6c-e877-47ea-930a-7c1e71b6e3d3', 'DK37-086', 'CEE', NULL, '22-12-2021', '50kVA (Fuji)', 'LV', 'ផ្ទះសំណាក់', 'DK37-086.jpg', NULL, 11.4655029, 104.731678, '2023-01-08 15:24:44', '2023-01-08 15:24:44');
INSERT INTO `data_locations_list` VALUES ('8427462c-13a9-4b6d-ae68-3bf2acd2f044', 'DK2-167', NULL, 'ឆាយ ឆលីហ៊ាង', NULL, '50kVA (EMAX)', 'LV', 'ឃ្លាំង', 'DK2-167.jpg', NULL, 11.4863676, 104.8516488, '2023-01-08 15:19:30', '2023-01-08 15:19:30');
INSERT INTO `data_locations_list` VALUES ('853e0a1d-5f89-4dcc-9906-44ab3da5162e', 'DK40-362', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', 'DK40-362.jpg', NULL, 11.4825326, 104.8478481, '2023-01-08 15:19:18', '2023-01-08 15:19:18');
INSERT INTO `data_locations_list` VALUES ('8625a157-9363-4456-b4eb-a55b2526d69e', 'DK34-014', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.454754, 104.7548992, '2023-01-08 15:24:58', '2023-01-08 15:24:58');
INSERT INTO `data_locations_list` VALUES ('868acab4-1db3-4d7a-ac44-bb38a020418c', 'DK25-175', NULL, 'ចិន សារុំ', NULL, '160kVA (Fuji)', 'LV', NULL, 'DK25-175.jpg', NULL, 11.5021213, 104.8086436, '2023-01-08 15:23:42', '2023-01-08 15:23:42');
INSERT INTO `data_locations_list` VALUES ('869f4010-9d46-4a49-9aad-af54c253405a', 'DK41-037', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០១', NULL, '630 kVA ( Thibidi )', 'LV', NULL, 'DK41-037.jpg', NULL, 11.48446, 104.875195, '2023-01-08 15:18:35', '2023-01-08 15:18:35');
INSERT INTO `data_locations_list` VALUES ('86e7e28d-667b-4c77-9f7b-5e04f31ab5bf', 'DK25-25', NULL, 'សុង ដារិទ្ធ', NULL, '250kVA (Thaipat)', 'LV', 'រោងចក្រកាត់ដេរ', 'DK25-25.jpg', NULL, 11.5011577, 104.8108159, '2023-01-08 15:23:31', '2023-01-08 15:23:31');
INSERT INTO `data_locations_list` VALUES ('87633dd3-3ccd-4e13-89f3-b49e20ae5491', 'DK17-02', NULL, 'លី ប៊ុនឡុង', NULL, '100kVA (Precise)', 'LV', 'ផែស្អួត', 'DK17-02.jpg', NULL, 11.4719408, 104.8148945, '2023-01-08 15:22:42', '2023-01-08 15:22:42');
INSERT INTO `data_locations_list` VALUES ('89ff76b5-fc77-4c9b-83f2-2a10cc198720', 'DK9-236', 'CEE', 'ឧកញ្ញា ទី លាង', '13-10-2021', '630kVA (Fuji)', 'LV', 'បុរី ទីលាង', 'DK9-236.jpg', NULL, 11.4662451, 104.847366, '2023-01-08 15:19:12', '2023-01-08 15:19:12');
INSERT INTO `data_locations_list` VALUES ('8a55d7c1-4c1e-486a-8215-9f6fb110c404', 'DK50-01', 'DK', NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', 'DK50-01.jpg', NULL, 11.4962473, 104.778051, '2023-01-08 15:24:24', '2023-01-08 15:24:24');
INSERT INTO `data_locations_list` VALUES ('8b7ed33a-772c-40e7-9034-67df6447fbb1', 'DK38-035', NULL, 'ជិន ជីងសាយ', NULL, '2000kVA (Thibidi)', 'MV 10/5A', 'ក្រុមហ៊ុន ស៊ូភើ ឆែម ហ្វូតវែរ ជិន ជីងសាយ', 'DK38-035.jpg', NULL, 11.5005272, 104.8422446, '2023-01-08 15:21:59', '2023-01-08 15:21:59');
INSERT INTO `data_locations_list` VALUES ('8bc309c4-f5ff-49d3-a0b0-cb1ebdc9415b', 'DK41-051', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១១', NULL, '630 kVA ( Fuji )', 'LV', NULL, 'DK41-051.jpg', NULL, 11.48621, 104.87694, '2023-01-08 15:18:45', '2023-01-08 15:18:45');
INSERT INTO `data_locations_list` VALUES ('8bd336f8-dd5e-4530-8dd6-c7bbd01b6f5e', 'DK2-166', NULL, 'ស៊ីន សុភា', NULL, '250kVA (Thibidi)', 'LV', 'សំណង់វីឡាកូនកាត់ អាយស៊ី ( IC )', 'DK2-166.jpg', NULL, 11.4852258, 104.8515479, '2023-01-08 15:19:33', '2023-01-08 15:19:33');
INSERT INTO `data_locations_list` VALUES ('8cac77a6-cc76-4870-b891-5388d0133bfe', 'DK9-028', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4601459, 104.8473113, '2023-01-08 15:20:21', '2023-01-08 15:20:21');
INSERT INTO `data_locations_list` VALUES ('8d07c57d-3db1-447c-a150-75ab27a55e14', 'DK48-067', NULL, 'ជា ជៀង', NULL, '1250kVA x2pcs (Indoor)', 'MV 50/5A', 'រោងចក្រ ដែកគោល', 'DK48-067.jpg', NULL, 11.5075794, 104.8246185, '2023-01-08 15:22:35', '2023-01-08 15:22:35');
INSERT INTO `data_locations_list` VALUES ('8d3ece22-78dc-4476-871d-0bed440ad320', 'DK20-013', NULL, 'ហ្វាង វ៉ីមីង', NULL, '160kVA (ThiraThai)', 'LV', 'រោងចក្រ​ កាត់ដេរ', 'DK20-013.jpg', NULL, 11.503262, 104.8157642, '2023-01-08 15:23:25', '2023-01-08 15:23:25');
INSERT INTO `data_locations_list` VALUES ('8d80dbb8-f5ae-4bea-83a8-a8ab4315cce8', 'DK38-25', NULL, NULL, NULL, '2000kVA (Indoor)', 'MV 50/5A', 'JC CORP PhnomPenh', 'DK38-25.jpg', NULL, 11.5025921, 104.8418805, '2023-01-08 15:22:22', '2023-01-08 15:22:22');
INSERT INTO `data_locations_list` VALUES ('8e21d9f2-e1c2-4eeb-a4a0-96c90d53b7cf', 'DK44-016', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4554677, 104.8557144, '2023-01-08 15:20:27', '2023-01-08 15:20:27');
INSERT INTO `data_locations_list` VALUES ('8f15a9f1-5cd3-4520-8864-7272645074df', 'LBS ព្រៃសរ', NULL, NULL, NULL, NULL, 'LV', NULL, 'LBS ព្រៃសរ.jpg', NULL, 11.4903609, 104.8560959, '2023-01-08 15:19:40', '2023-01-08 15:19:40');
INSERT INTO `data_locations_list` VALUES ('8f562529-6d4a-4c2e-8ebc-074730a42892', 'DK32-35', NULL, NULL, NULL, '315kVA (Fuji)', 'MV 10/5A', NULL, NULL, NULL, 11.4808977, 104.7468086, '2023-01-08 15:24:38', '2023-01-08 15:24:38');
INSERT INTO `data_locations_list` VALUES ('900fc3ad-a185-4b71-9180-052181a7ea1b', 'DK28-113', NULL, 'នេត ស៊ីវរៈចិន្ថា', NULL, '400kVA (Thibidi)', 'MV 15/5A', NULL, 'DK28-113.jpg', NULL, 11.48628, 104.795272, '2023-01-08 15:24:17', '2023-01-08 15:24:17');
INSERT INTO `data_locations_list` VALUES ('9064d9ae-e879-418d-91f9-2449dc5295a9', 'DK1-061', NULL, 'ឡាក់ ណាំអ៊ី', NULL, '160kVA (Fuji)', 'LV', 'Park Cafe', 'DK1-061.jpg', NULL, 11.4977546, 104.8698553, '2023-01-08 15:20:02', '2023-01-08 15:20:02');
INSERT INTO `data_locations_list` VALUES ('906faf97-9aa2-42e5-904a-0bcafd3b8f1b', 'DK20-64', NULL, 'ចាន់ សុភាព', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ', 'DK20-64.jpg', NULL, 11.5033478, 104.8156013, '2023-01-08 15:23:23', '2023-01-08 15:23:23');
INSERT INTO `data_locations_list` VALUES ('9143f805-484d-4489-8efa-5f3f4e80f78c', 'DK55-001', NULL, NULL, NULL, '100kVA (Presice)', 'LV', NULL, 'DK55-001.jpg', NULL, 11.4806378, 104.7311988, '2023-01-08 15:24:39', '2023-01-08 15:24:39');
INSERT INTO `data_locations_list` VALUES ('91f4febb-9f3c-401b-9476-835ad5846d89', 'DK19-641', NULL, 'ម៉ន នីជីវិត', NULL, '400kVA (Fuji)', 'MV 15/5A', NULL, NULL, NULL, 11.4862227, 104.8323922, '2023-01-08 15:21:52', '2023-01-08 15:21:52');
INSERT INTO `data_locations_list` VALUES ('92422a21-f2da-400e-9d19-4746a3a0dbaf', 'DK2-142', NULL, 'ជាទិត្យ សូម៉ាតឿន', NULL, '50kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី១ ព្រៃសរ', 'DK2-142.jpg', NULL, 11.4875172, 104.8466482, '2023-01-08 15:19:26', '2023-01-08 15:19:26');
INSERT INTO `data_locations_list` VALUES ('9244aabd-cebc-4804-8ad4-1d50e2dd7acf', 'DK3-065', NULL, 'រ៉ា ស៊ី', NULL, '100kVA (Thibidi)', 'LV', NULL, 'DK3-065.jpg', NULL, 11.4801623, 104.8458576, '2023-01-08 15:19:17', '2023-01-08 15:19:17');
INSERT INTO `data_locations_list` VALUES ('933b2d08-0cb9-448d-aec6-ce5d319a9a5e', 'DK42-083', NULL, 'យីង ជានយ៉ីង', NULL, '315kVA (Fuji)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', 'DK42-083.jpg', NULL, 11.4808408, 104.8690557, '2023-01-08 15:21:12', '2023-01-08 15:21:12');
INSERT INTO `data_locations_list` VALUES ('95d89bea-6e05-4b8e-8fb2-4ce6457f2027', 'DK2-118', NULL, 'អ៊ិច សុខា ទី១', NULL, '400kVA (Fuji)', 'LV', 'រោងចក្រ កិនជ័រ', 'DK2-118.jpg', NULL, 11.4875767, 104.8564825, '2023-01-08 15:19:39', '2023-01-08 15:19:39');
INSERT INTO `data_locations_list` VALUES ('966b6d8a-69e6-4220-b3fa-7846f6b2d000', 'DK01-136', 'CEE', 'ឧកញ្ញា ឈឹម បញ្ញា', '25-09-2021', '630 kVA ( Fuji )', 'LV', 'បុរី ច័ន្ទខាស់សល', 'DK01-136.jpg', NULL, 11.2966162, 104.8733512, '2023-01-08 15:18:54', '2023-01-08 15:18:54');
INSERT INTO `data_locations_list` VALUES ('968516fa-5866-49c5-a0bc-00f5cd83338b', 'DK50-052', NULL, 'មី សារុន', NULL, '400kVA (Precise)', 'LV', NULL, 'DK50-052.jpg', NULL, 11.4927074, 104.7789029, '2023-01-08 15:24:23', '2023-01-08 15:24:23');
INSERT INTO `data_locations_list` VALUES ('999826eb-606b-4326-8b67-d63c4f6fc1c0', 'DK7-068', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'Tela Gastation វត្តស្លែង', 'DK7-068.jpg', NULL, 11.4631955, 104.8136, '2023-01-08 15:22:37', '2023-01-08 15:22:37');
INSERT INTO `data_locations_list` VALUES ('9b110edf-ecac-4fc5-b825-e2a881ae76d3', 'DK46-085', NULL, NULL, NULL, '100kVA (Presice)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4707454, 104.7320052, '2023-01-08 15:24:40', '2023-01-08 15:24:40');
INSERT INTO `data_locations_list` VALUES ('9c847e01-e3f0-48b6-95ea-0e04ebc816ff', 'LBS DK1', NULL, NULL, NULL, NULL, 'LV', NULL, 'LBS DK1.jpg', NULL, 11.4982849, 104.871191, '2023-01-08 15:20:04', '2023-01-08 15:20:04');
INSERT INTO `data_locations_list` VALUES ('9e8bc3e6-fd9e-48a4-be1f-7d09e20f44c1', 'DK36-065', NULL, NULL, NULL, '630kVA (Thai Maxwell)', 'MV 15/5A', NULL, NULL, NULL, 11.4599559, 104.7489681, '2023-01-08 15:24:56', '2023-01-08 15:24:56');
INSERT INTO `data_locations_list` VALUES ('9f6ccfe8-8d89-4f87-8ebe-63572c752d3f', 'DK1', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, 'DK1.jpg', NULL, 11.4962528, 104.8673944, '2023-01-08 15:19:59', '2023-01-08 15:19:59');
INSERT INTO `data_locations_list` VALUES ('a02d9557-0217-42ef-812f-d6da5a5d0871', 'DK48-091', NULL, 'តុងចិនហ្វូ', NULL, '400kVA (Thaipat)', 'LV', NULL, 'DK48-091.jpg', NULL, 11.5020195, 104.8263053, '2023-01-08 15:22:25', '2023-01-08 15:22:25');
INSERT INTO `data_locations_list` VALUES ('a0bdbb66-519a-4d62-8719-222670a283aa', 'DK01-056', NULL, 'ម៉េង ហេង', NULL, '160kVA (Thibidi)', 'LV', 'ឃ្លាំង', NULL, NULL, 11.4879946, 104.8650629, '2023-01-08 15:20:52', '2023-01-08 15:20:52');
INSERT INTO `data_locations_list` VALUES ('a28c1aa5-7454-48cd-b19e-5158fd4f9da2', 'DK40-283', NULL, 'កាន ចានថា', NULL, '100kVA (Full Light)', 'LV', NULL, 'DK40-283.jpg', NULL, 11.4930077, 104.8477613, '2023-01-08 15:22:11', '2023-01-08 15:22:11');
INSERT INTO `data_locations_list` VALUES ('a6f2b786-3f6f-4b30-821e-c69518f0b5a8', 'LBS តាបោះ', NULL, NULL, NULL, NULL, 'LV', NULL, 'LBS តាបោះ.jpg', NULL, 11.4658883, 104.8382995, '2023-01-08 15:21:43', '2023-01-08 15:21:43');
INSERT INTO `data_locations_list` VALUES ('a701f915-030f-4918-89ab-77a9120f6b11', 'DK41-038', NULL, 'អង្គភាពគ្រប់គ្រងសេវាកម្ម សំណល់វេជ្ជសាស្រ្ត', NULL, '100 kVA ( Thibidi )', 'LV', NULL, 'DK41-038.jpg', NULL, 11.483258, 104.884316, '2023-01-08 15:18:40', '2023-01-08 15:18:40');
INSERT INTO `data_locations_list` VALUES ('a7db49bd-df76-4491-bf00-5db6745ecee9', 'DK25-174', NULL, 'វ៉ាង សាវជុន', NULL, '500kVA (China)', 'MV 15/5A', 'រោងចក្រ', 'DK25-174.jpg', NULL, 11.4978578, 104.808884, '2023-01-08 15:23:06', '2023-01-08 15:23:06');
INSERT INTO `data_locations_list` VALUES ('a7de504e-8165-4016-8fbf-e89d2a9b77a6', 'DK18-147', NULL, 'លី ប៊ុនឡុង', NULL, '100kVA (Precise)', 'LV', 'ឃ្លាំង Container', 'DK18-147.jpg', NULL, 11.4859612, 104.8165531, '2023-01-08 15:22:45', '2023-01-08 15:22:45');
INSERT INTO `data_locations_list` VALUES ('a9a2523c-4bad-4bec-bb76-bd6b74ac2f81', 'DK16-01', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'កន្លែងដុតខ្មោច វត្តឬស្សីសាញ់', 'DK16-01.jpg', NULL, 11.5033471, 104.8728983, '2023-01-08 15:21:34', '2023-01-08 15:21:34');
INSERT INTO `data_locations_list` VALUES ('a9d2ce3e-71b4-493c-a0f7-2c331b18cdf5', 'DK48-160', 'GreenFornext (B.Lux)', 'ស៊ិន វិឆ័យ', NULL, '250kVA (Fuji)', 'LV', 'ក្រឡុក​​ ស៊ីម៉ង', 'DK48-160.jpg', NULL, 11.5036855, 104.8247174, '2023-01-08 15:22:28', '2023-01-08 15:22:28');
INSERT INTO `data_locations_list` VALUES ('a9d992f6-4b25-4374-a62f-84cca0aaaca2', 'DK25-096', NULL, 'ម៉ា ចាវ', NULL, '400kVA (China)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', 'DK25-096.jpg', NULL, 11.4980126, 104.8093883, '2023-01-08 15:23:07', '2023-01-08 15:23:07');
INSERT INTO `data_locations_list` VALUES ('abca9b15-aa38-4316-bd21-f5727536fccd', 'DK05-049', NULL, 'ខូវ ហ៊ន់', NULL, '250kVA', 'LV', 'រោងចក្រ ផលិតប្រហិត', NULL, NULL, 11.4687614, 104.8444689, '2023-01-08 15:20:10', '2023-01-08 15:20:10');
INSERT INTO `data_locations_list` VALUES ('acd9a70b-c69b-4b4f-bd43-d4f95398c7ca', 'DK02-129', NULL, 'ហម ពិសិទ្ធ', NULL, '200kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4870424, 104.8591851, '2023-01-08 15:20:48', '2023-01-08 15:20:48');
INSERT INTO `data_locations_list` VALUES ('ad678361-de5c-4673-b16b-662ee7db9bdd', 'DK38-114', NULL, 'ហេង សៀ', NULL, '630kVA (EMAX)', 'MV 15/5A', 'រោងចក្រកញ្ជក់ ហេង សៀ', 'DK38-114.jpg', NULL, 11.5016226, 104.8422178, '2023-01-08 15:21:58', '2023-01-08 15:21:58');
INSERT INTO `data_locations_list` VALUES ('adfeca66-b247-476f-a77a-82939f252340', 'DK28-062', NULL, 'នេត ស៊ីវរៈចិន្ថា', NULL, '400kVA (Precise)', 'LV', NULL, 'DK28-062.jpg', NULL, 11.4894327, 104.7937573, '2023-01-08 15:24:18', '2023-01-08 15:24:18');
INSERT INTO `data_locations_list` VALUES ('af083504-4758-4e83-884c-d8e45f68564f', 'DK9-068', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', 'DK9-068.jpg', NULL, 11.4647047, 104.8525081, '2023-01-08 15:20:16', '2023-01-08 15:20:16');
INSERT INTO `data_locations_list` VALUES ('af4a7ed4-2294-4ec0-930c-7797d919b631', 'DK6', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4640265, 104.8220305, '2023-01-08 15:19:06', '2023-01-08 15:19:06');
INSERT INTO `data_locations_list` VALUES ('b00dd543-6cba-4d20-93f3-39812b96cc24', 'DK16-266', NULL, NULL, NULL, '630kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.5059268, 104.8740553, '2023-01-08 15:21:33', '2023-01-08 15:21:33');
INSERT INTO `data_locations_list` VALUES ('b2b38565-4348-45a4-8ea6-132fcd58d0b1', 'DK25-060', NULL, 'គួក ឈុនម៉ី', NULL, '400kVA (Full Light)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', 'DK25-060.jpg', NULL, 11.5002237, 104.8121932, '2023-01-08 15:23:33', '2023-01-08 15:23:33');
INSERT INTO `data_locations_list` VALUES ('b37ff218-7c75-4fdd-a662-011b0e1363af', 'DK34-067', NULL, NULL, NULL, '400kVA (XYZ)', 'LV', NULL, 'DK34-067.jpg', NULL, 11.4646387, 104.7463862, '2023-01-08 15:24:47', '2023-01-08 15:24:47');
INSERT INTO `data_locations_list` VALUES ('b3fb5ab4-cda1-4162-baea-15e13e46eda2', 'DK01-055', NULL, 'ឡៅ ចាយ', NULL, '400 kVA ( Fuji )', 'LV', 'ឃ្លាំង ដែក', NULL, NULL, 11.493302, 104.872099, '2023-01-08 15:18:58', '2023-01-08 15:18:58');
INSERT INTO `data_locations_list` VALUES ('b44051bc-c153-4b03-8f8a-10c8be7fd238', 'DK29-026', NULL, 'ជុង ឈីងយាន', NULL, '250kVA (Fuji)', 'LV', NULL, 'DK29-026.jpg', NULL, 11.4807327, 104.8042914, '2023-01-08 15:24:16', '2023-01-08 15:24:16');
INSERT INTO `data_locations_list` VALUES ('b4d0ef43-65fc-4a44-a00e-88e1c6c86a3e', 'DK08-75', NULL, NULL, NULL, '50kVA (Precise)', 'LV', 'ផ្ទះល្វែង', NULL, NULL, 11.4957275, 104.8590581, '2023-01-08 15:20:43', '2023-01-08 15:20:43');
INSERT INTO `data_locations_list` VALUES ('b5263305-3548-4220-bac9-17c972fccac1', 'DK30-057', NULL, 'គឹម សែ', NULL, '800kVA (Fuji)', 'MV 20/5A', NULL, 'DK30-057.jpg', NULL, 11.500568, 104.7905571, '2023-01-08 15:23:58', '2023-01-08 15:23:58');
INSERT INTO `data_locations_list` VALUES ('b712829f-64c8-4e03-b2e2-20fb322bfcfd', 'DK9-233', NULL, 'ងួន ហ៊ួ ទី២', NULL, '100kVA (Fuji)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4766739, 104.8536065, '2023-01-08 15:20:37', '2023-01-08 15:20:37');
INSERT INTO `data_locations_list` VALUES ('b8596a1d-a2f1-47cf-add1-6bd51e3b91b8', 'DK27-001', 'DK', NULL, NULL, '160kVA (Fuji)', 'LV', '​ ចែកចាយ', NULL, NULL, 11.4969842, 104.7937094, '2023-01-08 15:24:01', '2023-01-08 15:24:01');
INSERT INTO `data_locations_list` VALUES ('b8c632e1-1acd-455f-8883-478609868659', 'DK41-055', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៤', NULL, '630 kVA ( Fuji )', 'LV', NULL, 'DK41-055.jpg', NULL, 11.493302, 104.872099, '2023-01-08 15:18:30', '2023-01-08 15:18:30');
INSERT INTO `data_locations_list` VALUES ('b91b0ee6-d543-47a2-9b36-284c1c6005cd', 'DK40-080', NULL, NULL, NULL, '200kVA ( No Brand )', 'LV', 'ចែកចាយ', 'DK40-080.jpg', NULL, 11.4851039, 104.8491865, '2023-01-08 15:19:23', '2023-01-08 15:19:23');
INSERT INTO `data_locations_list` VALUES ('b99f05ea-7e74-49a7-b56a-7ad0b2ab62f5', 'DK19-640', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពីភពថ្មី ១៣', 'DK19-640.jpg', NULL, 11.4885867, 104.8129687, '2023-01-08 15:22:49', '2023-01-08 15:22:49');
INSERT INTO `data_locations_list` VALUES ('bdb2121e-bba8-43f5-998c-e8d951d4b393', 'DK01-021', NULL, 'ផន ទៀង', NULL, '100kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4966734, 104.866638, '2023-01-08 15:21:32', '2023-01-08 15:21:32');
INSERT INTO `data_locations_list` VALUES ('be0ce48c-c520-482a-96e6-05a824e73b60', 'DK08-106', NULL, NULL, NULL, '2500kVA', 'MV 75/5A', 'មន្ទីពេទ្យ លួង ម៉ែ', NULL, NULL, 11.4966409, 104.8590453, '2023-01-08 15:20:42', '2023-01-08 15:20:42');
INSERT INTO `data_locations_list` VALUES ('bfa32c51-f8c0-4720-8488-750cb107b45e', 'DK27-111', NULL, 'លី សុភាព', NULL, '400kVA (Thibidi)', 'MV 10/5A', NULL, 'DK27-111.jpg', NULL, 11.4930859, 104.7914979, '2023-01-08 15:24:05', '2023-01-08 15:24:05');
INSERT INTO `data_locations_list` VALUES ('c15cd8bc-03cd-4a32-83f3-565d7be96a16', 'DK27-056', 'DK', NULL, NULL, '160kVA (Fuji)', 'LV', 'ផ្ទះល្វេង ចាន់ សុវណ្ណារ៉ា', 'DK27-056.jpg', NULL, 11.4941826, 104.7931998, '2023-01-08 15:24:04', '2023-01-08 15:24:04');
INSERT INTO `data_locations_list` VALUES ('c164ade9-c6d0-4f11-bf95-02bbb1bccb08', 'DK40-322', NULL, 'រ័ត វេជ្ជសិទិ្ធ', NULL, '630kVA (Fuji)', 'LV', 'បុរី Sunny', 'DK40-322.jpg', NULL, 11.4909595, 104.8438831, '2023-01-08 15:22:10', '2023-01-08 15:22:10');
INSERT INTO `data_locations_list` VALUES ('c166f0f2-d7b0-4dd0-8d2f-d6e15f399aa7', 'DK19-121', NULL, 'សុក ទី', NULL, '100kVA (Precise)', 'LV', '​ ឃ្លាំង', 'DK19-121.jpg', NULL, 11.4925389, 104.8036705, '2023-01-08 15:22:59', '2023-01-08 15:22:59');
INSERT INTO `data_locations_list` VALUES ('c19c770b-170d-4616-80dd-cf95d88210d5', 'DK08-158', NULL, 'ស៊ឹម ឈុន', NULL, '400kVA (Fuji)', 'LV', 'បុរី LC', NULL, NULL, 11.4945372, 104.8590775, '2023-01-08 15:20:45', '2023-01-08 15:20:45');
INSERT INTO `data_locations_list` VALUES ('c20897b8-bf43-475e-bdfe-fe4d5601ac54', 'DK34-066', NULL, NULL, NULL, '50kVA (Full Light)', 'LV', NULL, 'DK34-066.jpg', NULL, 11.4635862, 104.7466118, '2023-01-08 15:24:48', '2023-01-08 15:24:48');
INSERT INTO `data_locations_list` VALUES ('c23d1057-878b-4ed4-9cd2-2a3ee12f1ed4', 'DK27-115', NULL, 'លីសុភាព', NULL, '500kVA (Thibidi)', 'MV 15/5A', 'រោងចក្រ ផ្លាសស្ទិច', 'DK27-115.jpg', NULL, 11.4931625, 104.7919133, '2023-01-08 15:24:06', '2023-01-08 15:24:06');
INSERT INTO `data_locations_list` VALUES ('c2bcd9a3-bd89-4bb0-b214-75a5261ee519', 'DK48-177', 'CEE', 'ឯម សានី', '20-06-2021', '630kVA (Fuji)', 'MV 15/5A', 'ឃ្លាំង កាត់ដេរ', 'DK48-177.jpg', NULL, 11.5019906, 104.8274694, '2023-01-08 15:22:23', '2023-01-08 15:22:23');
INSERT INTO `data_locations_list` VALUES ('c324892e-829d-4662-9245-46dd3e7189da', 'DK48-58', NULL, 'សោម រក្សស្មី', NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រផលិតទឹកពិសារដប ហ្គោលស្តា', 'DK48-58.jpg', NULL, 11.4968199, 104.8324415, '2023-01-08 15:21:48', '2023-01-08 15:21:48');
INSERT INTO `data_locations_list` VALUES ('c58b0b7f-4f02-4ec4-b441-82c01958cbf2', 'DK25-178', NULL, 'ខែម សុធី', NULL, '250kVA (សករាជ)', 'LV', NULL, 'DK25-178.jpg', NULL, 11.500203, 104.8126247, '2023-01-08 15:23:34', '2023-01-08 15:23:34');
INSERT INTO `data_locations_list` VALUES ('c6b6389e-1ebb-4c17-bf69-7f00811d44d2', 'DK1-40', NULL, 'ឈាវ ប៉ៃជូ', NULL, '400kVA (Thaipat)', 'MV 10/5A', NULL, NULL, NULL, 11.4985553, 104.8713838, '2023-01-08 15:20:07', '2023-01-08 15:20:07');
INSERT INTO `data_locations_list` VALUES ('c6d7f178-340c-4d2d-b777-0cf7c48b5db0', 'DK9-226', NULL, 'ប៊ុន ឆាយ', NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រ', 'DK9-226.jpg', NULL, 11.4602661, 104.8474347, '2023-01-08 15:20:18', '2023-01-08 15:20:18');
INSERT INTO `data_locations_list` VALUES ('c7a78c7e-b764-45cb-8496-b50c0114597e', 'DK19-272', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ៧', 'DK19-272.jpg', NULL, 11.4918072, 104.8129543, '2023-01-08 15:22:54', '2023-01-08 15:22:54');
INSERT INTO `data_locations_list` VALUES ('c7c85af6-58d5-492a-a866-5a937d8d9125', 'DK20-149', NULL, NULL, NULL, '400kVA (Thai Maxwell)', 'LV', 'បុរី ពីភពថ្មី ៥', 'DK20-149.jpg', NULL, 11.49963, 104.8207786, '2023-01-08 15:22:32', '2023-01-08 15:22:32');
INSERT INTO `data_locations_list` VALUES ('c9093307-e388-486c-bbff-600edd02177e', 'DK41-001', NULL, NULL, NULL, '160 kVA ( Full Light )', 'LV', 'DK ចែកចាយ', 'DK41-001.jpg', NULL, 11.489547, 104.871245, '2023-01-08 15:19:02', '2023-01-08 15:19:02');
INSERT INTO `data_locations_list` VALUES ('cbbca851-05ff-4948-b52f-5332dcbe5d6c', 'DK20-65', NULL, 'លីថៃខីត', NULL, '2500kVA', 'MV 200/5A', 'Oliver Apparle Cambodia Co.,LTD', 'DK20-65.jpg', NULL, 11.5061801, 104.8196071, '2023-01-08 15:23:16', '2023-01-08 15:23:16');
INSERT INTO `data_locations_list` VALUES ('cc4803e2-03bd-4a13-9293-14779f234f0d', 'DK54-026', NULL, NULL, '22-12-2021', '100kVA (Precise)', 'LV', 'KTV', NULL, NULL, 11.4582509, 104.7346633, '2023-01-08 15:24:46', '2023-01-08 15:24:46');
INSERT INTO `data_locations_list` VALUES ('cc796c13-ed2e-4e81-8c19-8bd7c6b7db63', 'DK2-127', NULL, 'គង់ ស៊ីថន', NULL, '100kVA (Fuji)', 'LV', NULL, 'DK2-127.jpg', NULL, 11.4886442, 104.8534402, '2023-01-08 15:19:34', '2023-01-08 15:19:34');
INSERT INTO `data_locations_list` VALUES ('cd44a0aa-98c2-4e46-b1d0-56ee591d4b16', 'DK1-039 (ទី1)', NULL, NULL, NULL, '630kVA (ABB)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', NULL, NULL, 11.4946949, 104.8673179, '2023-01-08 15:19:55', '2023-01-08 15:19:55');
INSERT INTO `data_locations_list` VALUES ('ce7b11a3-d6b8-490c-834c-55f33730e33f', 'DK40-105', NULL, 'ចូ យែនគាង', NULL, '315kVA (Precise)', 'LV', NULL, 'DK40-105.jpg', NULL, 11.4903596, 104.8439673, '2023-01-08 15:22:08', '2023-01-08 15:22:08');
INSERT INTO `data_locations_list` VALUES ('ceb0fb61-dbf4-44b2-bfda-cfbcbb419b2b', 'DK2-056', NULL, 'លួន តេង', NULL, '1600kVA (Thaipat) Indoor', 'MV (CT-VT 30/5A) Outdoor', 'រោងចក្រ កញ្ជក់', 'DK2-056.jpg', NULL, 11.4930879, 104.8611696, '2023-01-08 15:19:47', '2023-01-08 15:19:47');
INSERT INTO `data_locations_list` VALUES ('cfa7667e-f993-4ff9-961d-ae731608b9f9', 'DK16-04', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ពិភពថ្មី ទី ៣', 'DK16-04.jpg', NULL, 11.5066828, 104.871821, '2023-01-08 15:21:30', '2023-01-08 15:21:30');
INSERT INTO `data_locations_list` VALUES ('cfce5a7f-13c4-4d2f-945a-38d714f26631', 'DK01-139', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ទ្រី គីម', NULL, NULL, 11.4882867, 104.8645804, '2023-01-08 15:20:51', '2023-01-08 15:20:51');
INSERT INTO `data_locations_list` VALUES ('d075aa4c-2434-45e2-bf81-0c5838c5e8fd', 'DK9-232', NULL, 'នូ សុខឿន', NULL, '160kVA (Fuji)', 'LV', 'រោងចក្រ ពត់ដែក', 'DK9-232.jpg', NULL, 11.4566565, 104.8452018, '2023-01-08 15:20:17', '2023-01-08 15:20:17');
INSERT INTO `data_locations_list` VALUES ('d3c8d87c-5568-4227-aa2a-a0fdf83f00b9', 'DK01-064', NULL, NULL, NULL, '50kVA (Thai Maxwell)', 'LV', 'ភូមិ ប្រការ', NULL, NULL, 11.4852942, 104.8650498, '2023-01-08 15:20:55', '2023-01-08 15:20:55');
INSERT INTO `data_locations_list` VALUES ('d3f687ee-48d7-46f1-83b0-44139c957ed8', 'DK53-437', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', NULL, 'DK53-437.jpg', NULL, 11.4949153, 104.7715031, '2023-01-08 15:24:28', '2023-01-08 15:24:28');
INSERT INTO `data_locations_list` VALUES ('d4f0405a-89e1-40a2-bbbe-40f547feeda3', 'DK27-25', NULL, 'ស៊ីម នឿន', NULL, '250kVA (Fuji)', 'LV', NULL, 'DK27-25.jpg', NULL, 11.4921174, 104.7934254, '2023-01-08 15:24:07', '2023-01-08 15:24:07');
INSERT INTO `data_locations_list` VALUES ('d6365db0-eecb-4da3-9969-761b1823f8b9', 'DK01-037', NULL, NULL, NULL, '630 kVA ( Thibidi )', '​ MV(CT-VT 20/5A) ឆ្លងផ្លូវ', 'រោងចក្រ កៅស៊ូ', 'DK01-037.jpg', NULL, 11.494061, 104.872993, '2023-01-08 15:18:52', '2023-01-08 15:18:52');
INSERT INTO `data_locations_list` VALUES ('d6876d74-d2ed-4870-8391-2de172d23956', 'DK25-173', 'GreenFornext', 'ព្រុំ ច័ន្ទរ៉ា', NULL, '400kVA (Fuji)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', 'DK25-173.jpg', NULL, 11.4995439, 104.8091904, '2023-01-08 15:23:10', '2023-01-08 15:23:10');
INSERT INTO `data_locations_list` VALUES ('d6989feb-0055-4313-a120-e452ddf682a5', 'DK8-256', 'CEE', 'អ៊ូន និមល', '13-08-2022', '250kVA (Thibidi)', 'LV', 'ឃ្លាំងកាត់ដេរ', 'DK8-256.jpg', NULL, 11.5018759, 104.8553496, '2023-01-08 15:22:17', '2023-01-08 15:22:17');
INSERT INTO `data_locations_list` VALUES ('d6c42d4f-424b-4d67-a4f6-7fa98995e2bb', 'DK05-048', NULL, 'សុង ឡាយ', NULL, '800kVA', 'MV 20/5A', NULL, NULL, NULL, 11.462587, 104.8327526, '2023-01-08 15:20:09', '2023-01-08 15:20:09');
INSERT INTO `data_locations_list` VALUES ('d8f0230a-abc0-4437-8e93-054f63a482b4', 'DK01-135', NULL, 'លៀក លីដា', NULL, '400kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.485857, 104.8650491, '2023-01-08 15:20:54', '2023-01-08 15:20:54');
INSERT INTO `data_locations_list` VALUES ('d991ea09-e71e-4249-822c-9f4d54976fe2', 'DK18-189', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, 'DK18-189.jpg', NULL, 11.4809686, 104.8062323, '2023-01-08 15:24:15', '2023-01-08 15:24:15');
INSERT INTO `data_locations_list` VALUES ('da7f8dd0-c793-49d0-b381-6c3a5fe983c7', 'DK2-132', NULL, 'សុខ ហេង', NULL, '400kVA (Fuji)', 'LV', 'បុរី ហេង ណា', 'DK2-132.jpg', NULL, 11.4940933, 104.8630013, '2023-01-08 15:19:51', '2023-01-08 15:19:51');
INSERT INTO `data_locations_list` VALUES ('da930336-9b1e-4378-af8b-ef77ce815baf', 'DK01-196', 'DK', 'អ៊ឹង ប៉ុនប៉េង', NULL, '630kVA (Thibidi)', 'LV', 'បុរី អ៊ឹង ប៉ុនប៉េង', NULL, NULL, 11.4927873, 104.8698761, '2023-01-08 15:20:58', '2023-01-08 15:20:58');
INSERT INTO `data_locations_list` VALUES ('db3a0492-7801-4d7f-bdff-e16ee4c7f695', 'DK20-404', NULL, 'ឆីន យ៉ាងគួយ', NULL, '315kVA (Fuji)', 'LV', 'ការដ្ឋាន បុរី ខាស់សិន', 'DK20-404.jpg', NULL, 11.506555, 104.8186016, '2023-01-08 15:23:20', '2023-01-08 15:23:20');
INSERT INTO `data_locations_list` VALUES ('db83d42b-6d22-4306-b372-c18830d2b099', 'DK20-099', NULL, 'កែវ វ៉ានដេត', NULL, '160kVA (Fuji)', 'LV', 'ឃ្លាំង ដែក', 'DK20-099.jpg', NULL, 11.5042542, 104.8208339, '2023-01-08 15:22:29', '2023-01-08 15:22:29');
INSERT INTO `data_locations_list` VALUES ('dbadca0e-06ef-4cd2-9e70-3b9671deb750', 'DK36-069', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'រោងចក្រ ផលិតពុម្ពស្បែកជើង', 'DK36-069.jpg', NULL, 11.4694511, 104.7303617, '2023-01-08 15:24:43', '2023-01-08 15:24:43');
INSERT INTO `data_locations_list` VALUES ('dcd5ab56-2016-45ff-ad52-6c1c995b9d4b', 'DK41-043', NULL, 'អ៊ឹង ប៉ុនប៉េង ទី៦', NULL, '630kVA (Thibidi)', 'LV', NULL, 'DK41-043.jpg', NULL, 11.4869012, 104.8738226, '2023-01-08 15:21:23', '2023-01-08 15:21:23');
INSERT INTO `data_locations_list` VALUES ('dcdd4c2d-3d59-4682-a5df-4b48da745854', 'DK25-179', NULL, 'នួន សុន', NULL, '500kVA (EMAX)', 'MV 15/5A', 'ក្រឡុក ស៊ីម៉ង', 'DK25-179.jpg', NULL, 11.4976426, 104.8064009, '2023-01-08 15:23:00', '2023-01-08 15:23:00');
INSERT INTO `data_locations_list` VALUES ('de17254d-d160-4ab1-8a70-94a7c1f31434', 'DK32-53', NULL, NULL, NULL, '320kVA (Thibidi)', 'MV 10/5A', 'រោងចក្រ កាបូប', 'DK32-53.jpg', NULL, 11.4852577, 104.7510405, '2023-01-08 15:24:35', '2023-01-08 15:24:35');
INSERT INTO `data_locations_list` VALUES ('de71e746-6776-4647-8cbf-092952780d4e', 'DK9-239', NULL, 'ប៉ែន សុភី', NULL, '315 kVA (Precise)', 'LV', NULL, 'DK9-239.jpg', NULL, 11.4619377, 104.84696, '2023-01-08 15:20:14', '2023-01-08 15:20:14');
INSERT INTO `data_locations_list` VALUES ('e01a8c4e-e195-4240-ab8e-f6d8ab7610f4', 'DK26-002', NULL, NULL, NULL, '800kVA (Fuji)', 'MV 25/5A', 'រោងចក្រ ផលិតស្បែកជើង', NULL, NULL, 11.5016601, 104.7991, '2023-01-08 15:23:55', '2023-01-08 15:23:55');
INSERT INTO `data_locations_list` VALUES ('e022f8a6-e204-4b89-aa3f-a302511c9984', 'DK17-004', NULL, NULL, NULL, '315kVA (Thai Maxwell)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', 'DK17-004.jpg', NULL, 11.4723393, 104.8149857, '2023-01-08 15:22:43', '2023-01-08 15:22:43');
INSERT INTO `data_locations_list` VALUES ('e0adf134-1c3c-48cc-9134-b652f0fccafd', 'DK27-162', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'បុរី លេង និមល', 'DK27-162.jpg', NULL, 11.4906086, 104.7923398, '2023-01-08 15:24:22', '2023-01-08 15:24:22');
INSERT INTO `data_locations_list` VALUES ('e1d6077b-82fd-4494-beb7-75aa7991aab7', 'DK21-033', 'CEE', 'ឧកញ្ញា ឈាង រ័ត្ន', '44654', '250kVA (Full Light)', 'LV', 'បុរី បុស្បា', 'DK21-033.jpg', NULL, 11.4739323, 104.8372635, '2023-01-08 15:19:14', '2023-01-08 15:19:14');
INSERT INTO `data_locations_list` VALUES ('e25f6362-0465-4564-aead-940931ff2aa2', 'DK07', NULL, NULL, NULL, '160kVA (Precise)', 'LV', 'ទល់មុខ Office', NULL, NULL, 11.4626675, 104.8144902, '2023-01-08 15:19:05', '2023-01-08 15:19:05');
INSERT INTO `data_locations_list` VALUES ('e48ba2ea-f5ed-4442-8d90-837b87993a5c', 'DK28-118', NULL, 'សាត់ ដក់', NULL, '315kVA (EDL)', 'LV', NULL, 'DK28-118.jpg', NULL, 11.4929266, 104.7977911, '2023-01-08 15:24:10', '2023-01-08 15:24:10');
INSERT INTO `data_locations_list` VALUES ('e4ea0b9e-7a6a-4808-aebc-5ec8df1839a4', 'DK1-205', 'DK', NULL, '44904', '630kVA (Fuji)', 'LV', 'បុរី ប៉េង អិម', 'DK1-205.jpg', NULL, 11.4955652, 104.8667818, '2023-01-08 15:19:58', '2023-01-08 15:19:58');
INSERT INTO `data_locations_list` VALUES ('e66f93d6-33cd-4774-8e67-c25e406366f0', 'DK01-052', NULL, 'យិន គារ', NULL, '100 kVA ( Thai Maxwell )', 'LV', 'ផ្ទះអតិថិជន', NULL, NULL, 11.4983575, 104.8714965, '2023-01-08 15:19:04', '2023-01-08 15:19:04');
INSERT INTO `data_locations_list` VALUES ('e8e0c7d2-3a0f-4df0-bcd8-27f417c054c1', 'DK41-044', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៧', NULL, '320 kVA ( Thibidi )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', 'DK41-044.jpg', NULL, 11.491642, 104.872099, '2023-01-08 15:18:50', '2023-01-08 15:18:50');
INSERT INTO `data_locations_list` VALUES ('e96af6b3-117a-44be-9c43-df79b32d750b', 'DK17-01', NULL, 'អេរី ស្រាវជ្រាវ', NULL, '400kVA', 'MV 15/5A', 'វិទ្យាស្ថាន ស្រាវជ្រាវ នឹង អភិវឌ្ឍន៍ កសិកម្ម កម្ពុជា', NULL, NULL, 11.4761127, 104.8151506, '2023-01-08 15:23:45', '2023-01-08 15:23:45');
INSERT INTO `data_locations_list` VALUES ('eadce834-02fc-4b39-b4be-4ff34c21addc', 'DK02-119', NULL, 'គុក ទី ១', NULL, '100kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4870395, 104.8468886, '2023-01-08 15:20:40', '2023-01-08 15:20:40');
INSERT INTO `data_locations_list` VALUES ('ed637ba1-18e2-4a3e-9d64-20fe2a21920c', 'DK9-224', NULL, 'វ៉ិ ស្រីខួច', NULL, '200kVA (No Brand)', 'LV', NULL, 'DK9-224.jpg', NULL, 11.4601945, 104.8475383, '2023-01-08 15:20:19', '2023-01-08 15:20:19');
INSERT INTO `data_locations_list` VALUES ('eda4a33f-2571-47bb-8aac-f09031583df4', 'DK01-058', NULL, 'ដុង ខៃវិន', NULL, '630 kVA ( Thai Maxwell )', 'MV ( CT-VT 15/5A )', 'រោងចក្រ ក្រឡុកស៊ីម៉ង', 'DK01-058.jpg', NULL, 11.494154, 104.872336, '2023-01-08 15:18:57', '2023-01-08 15:18:57');
INSERT INTO `data_locations_list` VALUES ('ee931955-934e-4669-a1ac-e0edc469a3e0', 'DK19-274', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ៨', 'DK19-274.jpg', NULL, 11.4909033, 104.8102848, '2023-01-08 15:22:52', '2023-01-08 15:22:52');
INSERT INTO `data_locations_list` VALUES ('ef22b981-db18-4d1c-a4aa-6e1d73ab20ad', 'DK41-056', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៥', NULL, '400 kVA ( Thibidi )', 'LV', NULL, 'DK41-056.jpg', NULL, 11.486234, 104.876864, '2023-01-08 15:18:44', '2023-01-08 15:18:44');
INSERT INTO `data_locations_list` VALUES ('ef71ea95-9b58-4507-9281-585f603a9f98', 'DK1-039 (ទី៣)', NULL, NULL, NULL, '630kVA (Fuji)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', 'DK1-039 (ទី៣).jpg', NULL, 11.4954236, 104.8673035, '2023-01-08 15:19:57', '2023-01-08 15:19:57');
INSERT INTO `data_locations_list` VALUES ('f0915baf-3b0b-407e-b7ce-a5afd29e024e', 'DK44-051', NULL, 'ចាប លឹមឃាង', NULL, '100kVA (EMAX)', 'LV', 'កន្លែង ចាក់លូ', NULL, NULL, 11.4541234, 104.8508804, '2023-01-08 15:20:24', '2023-01-08 15:20:24');
INSERT INTO `data_locations_list` VALUES ('f122aba9-3986-4ee4-b07a-fdc414740998', 'DK32-069', NULL, NULL, NULL, '2000kVA (Indoor)', 'MV 50/5A', NULL, 'DK32-069.jpg', NULL, 11.485008, 104.7524818, '2023-01-08 15:24:33', '2023-01-08 15:24:33');
INSERT INTO `data_locations_list` VALUES ('f127f5ab-4ef2-4e9a-afb4-14a3f335a010', 'DK10-23', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'Caltex ចំការដូង', NULL, NULL, 11.5004819, 104.8750028, '2023-01-08 15:21:38', '2023-01-08 15:21:38');
INSERT INTO `data_locations_list` VALUES ('f1b71442-0e7c-4154-9484-78e270102376', 'DK20-76', NULL, 'លីមេង ផាត', NULL, '630kVA (Fuji Tusco)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', 'DK20-76.jpg', NULL, 11, 710, '2023-01-08 15:23:15', '2023-01-08 15:23:15');
INSERT INTO `data_locations_list` VALUES ('f2037d51-dc6a-4367-abac-ca23c25fb1bd', 'DK41-057', 'DK', '​អ៊ឺង ប៊ុនប៉េង​ ទី១៦', NULL, '630 kVA ( Fuji )', 'LV', NULL, 'DK41-057.jpg', NULL, 11.483584, 104.87558, '2023-01-08 15:18:41', '2023-01-08 15:18:41');
INSERT INTO `data_locations_list` VALUES ('f226a98c-7b3d-404c-b05e-9dd38fab764b', 'DK3A', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, 'DK3A.jpg', NULL, 11.4740811, 104.8447093, '2023-01-08 15:19:15', '2023-01-08 15:19:15');
INSERT INTO `data_locations_list` VALUES ('f28c256b-5728-49ad-a000-387fa655226d', 'DK20-063', NULL, 'យឹម សំណាង', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.5036878, 104.8181232, '2023-01-08 15:23:22', '2023-01-08 15:23:22');
INSERT INTO `data_locations_list` VALUES ('f378e802-a397-4bbd-a2a1-3da22785ae92', 'DK26-033', NULL, 'ទូ ហៃ', NULL, '630kVA (Fuji)', 'MV 30/5A', 'រោងចក្រ ផលិត​តុក្កតា', 'DK26-033.jpg', NULL, 11.5016459, 104.7961898, '2023-01-08 15:23:57', '2023-01-08 15:23:57');
INSERT INTO `data_locations_list` VALUES ('f423f0ac-7e9e-4550-9a0f-af62314991da', 'DK4-048', NULL, 'ជៀប ស្រ៊ុន', NULL, '100kVA (Thibid)', 'LV', NULL, 'DK4-048.jpg', NULL, 11.4673784, 104.8430617, '2023-01-08 15:19:09', '2023-01-08 15:19:09');
INSERT INTO `data_locations_list` VALUES ('f434713a-81bf-466a-afc5-c18ca43c7d46', 'DK25-030', NULL, 'សោម ធិដា', NULL, '250kVA (China)', 'LV', NULL, NULL, NULL, 11.4990974, 104.8125616, '2023-01-08 15:23:12', '2023-01-08 15:23:12');
INSERT INTO `data_locations_list` VALUES ('f45def04-60da-4049-8b26-a08015466662', 'DK08-107', NULL, 'រ៉ា ឌី', NULL, '400kVA (Fuji)', 'LV', 'បុរី', NULL, NULL, 11.494089, 104.8590517, '2023-01-08 15:20:47', '2023-01-08 15:20:47');
INSERT INTO `data_locations_list` VALUES ('f72d5075-b860-4352-8cd1-d43d0774153b', 'DK40-213', NULL, 'កែវ វណ្ណា', NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រផលិតពូក', 'DK40-213.jpg', NULL, 11.4939076, 104.8477599, '2023-01-08 15:22:13', '2023-01-08 15:22:13');
INSERT INTO `data_locations_list` VALUES ('f762b921-09b6-4fef-b97a-925538a24e79', 'DK41-050', NULL, NULL, NULL, '250kVA (Thai Maxwell)', 'LV', 'សហគ្រាស តាំង គឹមស្រេង', 'DK41-050.jpg', NULL, 11.4837509, 104.8674691, '2023-01-08 15:21:06', '2023-01-08 15:21:06');
INSERT INTO `data_locations_list` VALUES ('f8681a30-a292-4908-a09e-077de1c14066', 'DK17-003', NULL, 'ជា គន្គា', NULL, '100kVA (Precise)', 'LV', NULL, 'DK17-003.jpg', NULL, 11.4728266, 104.8150514, '2023-01-08 15:22:44', '2023-01-08 15:22:44');
INSERT INTO `data_locations_list` VALUES ('f9943b59-d7ce-46ad-bd95-ae767555adaf', 'DK02-131', NULL, 'ធុន ស្រស់', NULL, '800kVA (XYZ)', 'MV 20/5A', NULL, NULL, NULL, 11.4897554, 104.8651615, '2023-01-08 15:20:49', '2023-01-08 15:20:49');
INSERT INTO `data_locations_list` VALUES ('faca9a5d-937a-43cb-8484-42647b791996', 'DK2-50', NULL, NULL, NULL, '50kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី២ ព្រៃសរ', 'DK2-50.jpg', NULL, 11.4862115, 104.846905, '2023-01-08 15:19:25', '2023-01-08 15:19:25');
INSERT INTO `data_locations_list` VALUES ('faf56935-c75d-4808-b2f7-e3af0f0f2093', 'DK2-117B', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, 'DK2-117B.jpg', NULL, 11.4939412, 104.8631625, '2023-01-08 15:19:49', '2023-01-08 15:19:49');
INSERT INTO `data_locations_list` VALUES ('fba7c513-f134-40b3-bd0c-3dc1fc88a0c3', 'DK2-120', NULL, 'ជិន សោភ័ណ្ឌ', NULL, '100kVA (Thai Maxwell)', 'LV', NULL, 'DK2-120.jpg', NULL, 11.4875323, 104.8565069, '2023-01-08 15:19:46', '2023-01-08 15:19:46');
INSERT INTO `data_locations_list` VALUES ('fbad9edb-63fc-4725-8637-aed5c8e01037', 'DK39-046', NULL, 'សាយ ភីស៊ីវ', NULL, '200kVA (Full Light)', 'LV', 'ព្រះវិហារចិន', 'DK39-046.jpg', NULL, 11.5080144, 104.8480771, '2023-01-08 15:22:19', '2023-01-08 15:22:19');
INSERT INTO `data_locations_list` VALUES ('fdfd0d4e-5c97-455f-b164-5f4c41592e32', 'DK16-220', NULL, NULL, NULL, '100kVA (Transfix)', 'LV', 'PTT វត្តឬស្សីសាញ់', 'DK16-220.jpg', NULL, 11.5036691, 104.8742357, '2023-01-08 15:21:35', '2023-01-08 15:21:35');
INSERT INTO `data_locations_list` VALUES ('fef46708-aff1-4ef0-90a2-9229a9888bdf', 'DK40-109', NULL, 'ពិសិទ្ធ ពេជ្យពីសី', NULL, '160kVA (Thibidi)', 'LV', 'សប្បកម្ម ទឹកកក', 'DK40-109.jpg', NULL, 11.4893184, 104.8391926, '2023-01-08 15:21:45', '2023-01-08 15:21:45');

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
INSERT INTO `data_user` VALUES ('06c03851-8437-4cca-bbd9-bd80a6e82b55', 'SOKHA ZADY', '098999601 078999601', 'S.ZADY', 'Zady250792', 'Admin', '281a6053-1d62-4638-b939-e83dadfcba65.jpg', 'SP1A.210812.016', NULL, NULL, '2022-12-16 16:11:12', '2023-01-05 13:39:27', NULL, NULL);
INSERT INTO `data_user` VALUES ('0ceb315b-2cb8-4e24-87cf-af5379884192', 'PANG SOKHA', '016288563', 'P.SOKHA', '016288563', 'Admin', NULL, NULL, NULL, NULL, '2022-12-17 04:10:47', '2022-12-17 04:11:02', NULL, NULL);
INSERT INTO `data_user` VALUES ('415c9d95-d912-4e3a-9ca5-363eb35682f5', 'admin', 'admin', 'admin', '123456', 'Admin', '44853e34-e940-4d56-ad77-4a2258eb5903.jpg', NULL, NULL, NULL, '2022-10-29 04:20:37', '2023-01-08 15:27:42', NULL, NULL);
INSERT INTO `data_user` VALUES ('512da13e-1b72-4390-a88b-ce1ef285e900', 'Soth Punluer', '067456140', 'S.PUNLUER', '123456', 'User', NULL, 'SP1A.210812.016', 11.469211, 104.792135, '2022-12-17 03:31:37', '2022-12-25 13:20:33', NULL, NULL);
INSERT INTO `data_user` VALUES ('a3a0cf25-7e86-4fd8-bb0d-266a81c97696', 'Moderator', '012520494', 'moderator', '123456', 'Moderator', NULL, NULL, 11.587792, 104.9292156, '2022-11-15 11:07:28', '2022-12-16 15:57:24', NULL, NULL);
INSERT INTO `data_user` VALUES ('b55dd93a-e70d-4e4b-97de-fa4bc6f62bac', 'User', '0969695651', 'user', '123456', 'User', NULL, 'SP1A.210812.016', 11.4679924, 104.944556, '2022-11-15 02:19:27', '2022-12-16 16:21:34', NULL, NULL);
INSERT INTO `data_user` VALUES ('c674e93d-f8f8-4bac-9cee-c4212721943f', 'Suon Buntheoun', '015460234', 'S.BUNTHEOUN', '123456', 'User', NULL, 'SP1A.210812.003', 11.4631772, 104.8146722, '2022-12-16 16:19:44', '2022-12-28 06:37:36', NULL, NULL);

-- ----------------------------
-- Table structure for data_user_active
-- ----------------------------
DROP TABLE IF EXISTS `data_user_active`;
CREATE TABLE `data_user_active`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fullName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `profile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `lastLatitude` double NULL DEFAULT NULL,
  `lastLongitude` double NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_user_active_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5770 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_user_active
-- ----------------------------
INSERT INTO `data_user_active` VALUES (878, 'a3a0cf25-7e86-4fd8-bb0d-266a81c97696', 'Moderator', '012520494', 'moderator', '123456', 'Moderator', NULL, 'active', 10.4795817, 104.28926, '2022-12-10 05:40:36', '2022-12-10 05:40:36');
INSERT INTO `data_user_active` VALUES (1290, 'b55dd93a-e70d-4e4b-97de-fa4bc6f62bac', 'User', '0969695651', 'user', '123456', 'User', NULL, 'active', 11.4679924, 104.944556, '2022-12-16 18:22:52', '2022-12-16 18:22:52');
INSERT INTO `data_user_active` VALUES (5773, '06c03851-8437-4cca-bbd9-bd80a6e82b55', 'SOKHA ZADY', '098999601 078999601', 'S.ZADY', 'Zady250792', 'Admin', '281a6053-1d62-4638-b939-e83dadfcba65.jpg', 'active', 11.4680961, 104.944516, '2023-01-08 15:32:44', '2023-01-08 15:32:44');
INSERT INTO `data_user_active` VALUES (5778, '415c9d95-d912-4e3a-9ca5-363eb35682f5', 'admin', 'admin', 'admin', '123456', 'Admin', '44853e34-e940-4d56-ad77-4a2258eb5903.jpg', 'active', 11.587788, 104.9293453, '2023-01-08 15:35:33', '2023-01-08 15:35:33');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (2, '2022_10_27_103112_create_table_data_user', 1);
INSERT INTO `migrations` VALUES (3, '2022_10_27_104140_create_table_data_locations_list', 1);
INSERT INTO `migrations` VALUES (4, '2022_10_27_104342_create_table_data_user_active', 1);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(0) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
