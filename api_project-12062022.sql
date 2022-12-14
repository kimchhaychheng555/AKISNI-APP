/*
 Navicat Premium Data Transfer

 Source Server         : 143.198.218.47_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 143.198.218.47:3306
 Source Schema         : api_project

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 06/12/2022 20:52:03
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_locations_list
-- ----------------------------
INSERT INTO `data_locations_list` VALUES ('00839870-902d-4892-89ba-d9cdb9cd1f73', 'DK1-205', 'DK', NULL, '2022-11-03', '630kVA (Fuji)', 'LV', 'បុរី ប៉េង អិម', '4978a0cd-0e0d-4645-8707-3780f13597d7.jpg', NULL, 11.4955652, 104.8667818, '2022-11-02 03:45:32', '2022-11-19 02:46:51');
INSERT INTO `data_locations_list` VALUES ('0343af8d-90d7-42d4-88f8-d4e6455c6e67', 'DK41-41', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៤', NULL, '320 kVA ( Thibidi )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', NULL, NULL, 11.486702, 104.870836, '2022-11-02 03:45:18', '2022-11-02 03:45:18');
INSERT INTO `data_locations_list` VALUES ('0561cd36-9779-419a-a90b-278d59ce07e0', 'DK01-021', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4966734, 104.866638, '2022-11-02 03:45:49', '2022-11-02 03:45:49');
INSERT INTO `data_locations_list` VALUES ('05e1317f-7e9f-4dfd-870c-5f2408ccc8b6', 'DK9-208', NULL, 'ផង ទៀង', NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ', NULL, NULL, 11.46478, 104.8524394, '2022-11-02 03:45:38', '2022-11-02 03:45:38');
INSERT INTO `data_locations_list` VALUES ('07a04da4-ffd8-4c72-a711-164972b5e719', 'DK38-023', NULL, NULL, NULL, '320kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.49931, 104.8438862, '2022-11-02 03:45:56', '2022-11-02 03:45:56');
INSERT INTO `data_locations_list` VALUES ('07f40dec-80c0-468d-b6e1-ac8551d9be67', 'DK01-037', NULL, NULL, NULL, '630 kVA ( Thibidi )', 'MV(CT-VT 20/5A) ឆ្លងផ្លូវ', 'រោងចក្រ កៅស៊ូ', NULL, NULL, 11.494061, 104.872993, '2022-11-02 03:45:19', '2022-11-02 03:45:19');
INSERT INTO `data_locations_list` VALUES ('0a6ea260-0117-4b8b-99a9-aba3db29da45', 'DK41-038', NULL, 'អង្គភាពគ្រប់គ្រងសេវាកម្ម សំណល់វេជ្ជសាស្រ្ត', NULL, '100 kVA ( Thibidi )', 'LV', NULL, NULL, NULL, 11.483258, 104.884316, '2022-11-02 03:45:15', '2022-11-02 03:45:15');
INSERT INTO `data_locations_list` VALUES ('0afa70e8-b6b6-4c54-805f-edd5c1897121', 'DK9-146', NULL, NULL, NULL, '50kVA (Thai Maxwell)', 'LV', NULL, NULL, NULL, 11.4690095, 104.8535508, '2022-11-02 03:45:39', '2022-11-02 03:45:39');
INSERT INTO `data_locations_list` VALUES ('0b60048f-12c0-4c1d-8b0b-3d0df5811f34', 'DK20-128', NULL, NULL, NULL, '100kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4998603, 104.8137747, '2022-11-02 03:46:08', '2022-11-02 03:46:08');
INSERT INTO `data_locations_list` VALUES ('0bbcaa8e-556b-4062-82be-64ae7dde8c18', 'DK40-109', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'សប្បកម្ម ទឹកកក', NULL, NULL, 11.4893184, 104.8391926, '2022-11-02 03:45:52', '2022-11-02 03:45:52');
INSERT INTO `data_locations_list` VALUES ('0c470b6c-5f77-4453-a6c0-84405c606537', 'DK44-056', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4582886, 104.860556, '2022-11-02 03:45:38', '2022-11-02 03:45:38');
INSERT INTO `data_locations_list` VALUES ('0e79e69a-d2fb-4996-bc33-06b50a69f1ee', 'DK2-067', NULL, 'សុខ សុភា', NULL, '630kVA (Precise)', 'LV', 'រោងចក្រ រ៉េន អាន', NULL, NULL, 11.4859326, 104.8515382, '2022-11-02 03:45:28', '2022-11-02 03:45:28');
INSERT INTO `data_locations_list` VALUES ('0f5c00e3-f148-4876-aba0-cafb1205106a', 'DK45-076', NULL, 'ស៊ិន ឡុងតៃ', NULL, '800kVA (Fuji)', 'MV 30/5A', 'រោងចក្រ', NULL, NULL, 11.4793563, 104.8736939, '2022-11-02 03:45:47', '2022-11-02 03:45:47');
INSERT INTO `data_locations_list` VALUES ('0fba377a-0582-498a-8233-28a01b9681e1', 'DK9-232', NULL, 'នូ សុខឿន', NULL, '160kVA (Fuji)', 'LV', 'រោងចក្រ ពត់ដែក', NULL, NULL, 11.4566565, 104.8452018, '2022-11-02 03:45:36', '2022-11-02 03:45:36');
INSERT INTO `data_locations_list` VALUES ('1005ece8-60d2-41ae-9398-f5624f1489ef', 'DK1', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4962528, 104.8673944, '2022-11-02 03:45:33', '2022-11-02 03:45:33');
INSERT INTO `data_locations_list` VALUES ('10d2c519-9f73-4086-b672-03d7346866d4', 'Auto Re-Closeer', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.505347, 104.8740385, '2022-11-02 03:45:50', '2022-11-02 03:45:50');
INSERT INTO `data_locations_list` VALUES ('116fbdd3-2202-44bd-a261-83ba485ce376', 'DK2-003', NULL, 'ណេ សួន', NULL, '315kVA (Fuji)', 'LV', 'ឃ្លាំងដែក', NULL, NULL, 11.4919406, 104.8593716, '2022-11-02 03:45:30', '2022-11-02 03:45:30');
INSERT INTO `data_locations_list` VALUES ('1200dfe6-c64b-45b5-9c56-8fa4b4037570', 'DK18-147', NULL, 'លី ប៉ុនឡុង', NULL, '100kVA (Precise)', 'LV', 'ឃ្លាំង Container', NULL, NULL, 11.4859612, 104.8165531, '2022-11-02 03:46:03', '2022-11-02 03:46:03');
INSERT INTO `data_locations_list` VALUES ('12bf1eb7-b282-4dbb-9a65-31d50dff938c', 'DK19-272', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ២', NULL, NULL, 11.4918072, 104.8129543, '2022-11-02 03:46:04', '2022-11-02 03:46:04');
INSERT INTO `data_locations_list` VALUES ('13dbc3b1-6183-4782-a00a-5c634509e9b7', 'DK05-049', NULL, 'ខូវ ហ៊ន់', NULL, '250kVA', 'LV', 'រោងចក្រ ផលិតប្រហិត', NULL, NULL, 11.4687614, 104.8444689, '2022-11-02 03:45:35', '2022-11-02 03:45:35');
INSERT INTO `data_locations_list` VALUES ('1415b86b-74fb-47ae-926e-0ae5b8631260', 'DK41-045', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៨', NULL, '320 kVA ( Thibid )', 'LV', NULL, NULL, NULL, 11.485355, 104.8713, '2022-11-02 03:45:17', '2022-11-02 03:45:17');
INSERT INTO `data_locations_list` VALUES ('150d8edd-3965-4c63-a452-6b5d65c3e2b9', 'DK38-217', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4980569, 104.8380681, '2022-11-02 03:45:55', '2022-11-02 03:45:55');
INSERT INTO `data_locations_list` VALUES ('15d06eb3-4988-416e-b907-d3f04a6f2c12', 'DK9-236', 'CEE', 'ឧកញ្ញា ទី លាង', '44482', '630kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4662451, 104.847366, '2022-11-02 03:45:23', '2022-11-02 03:45:23');
INSERT INTO `data_locations_list` VALUES ('1631a666-1cf6-4162-82de-73378bb8b4ff', 'DK20-404', NULL, NULL, NULL, '315kVA (Fuji)', 'LV', 'ការដ្ឋាន បុរី ខាស់សិន', NULL, NULL, 11.506555, 104.8186016, '2022-11-02 03:46:09', '2022-11-02 03:46:09');
INSERT INTO `data_locations_list` VALUES ('172921fa-6d16-410d-89f2-92c3901c5c11', 'DK40-080', NULL, NULL, NULL, '200kVA ( No Brand )', 'LV', 'ចែកចាយ', NULL, NULL, 11.4851039, 104.8491865, '2022-11-02 03:45:26', '2022-11-02 03:45:26');
INSERT INTO `data_locations_list` VALUES ('19345052-a07d-4ae6-8024-f4296ed795d0', 'DK9-226', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4602661, 104.8474347, '2022-11-02 03:45:36', '2022-11-02 03:45:36');
INSERT INTO `data_locations_list` VALUES ('19961087-653e-4503-8950-e08be675958c', 'DK08-106', NULL, NULL, NULL, '2500kVA', 'MV 75/5A', 'មន្ទីពេទ្យ លួង ម៉ែ', NULL, NULL, 11.4966409, 104.8590453, '2022-11-02 03:45:41', '2022-11-02 03:45:41');
INSERT INTO `data_locations_list` VALUES ('1d1dbb76-2034-4961-8990-fb5ee1b33d3b', 'DK20-76', NULL, NULL, NULL, '630kVA (Fuji Tusco)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.5000141, 104.815271, '2022-11-02 03:46:08', '2022-11-02 03:46:08');
INSERT INTO `data_locations_list` VALUES ('1d7043ff-be73-45ca-8cd2-b3bbe738a2e3', 'DK38-026E', NULL, NULL, NULL, '1000kVA (Precise) Indoor', 'MV 20/5A', 'រោងចក្រ កៅតា', NULL, NULL, 11.5042411, 104.8451062, '2022-11-02 03:45:58', '2022-11-02 03:45:58');
INSERT INTO `data_locations_list` VALUES ('1ddaa615-b83d-4356-ac40-651477e240c8', 'DK02-119', NULL, NULL, NULL, '100kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4870395, 104.8468886, '2022-11-02 03:45:40', '2022-11-02 03:45:40');
INSERT INTO `data_locations_list` VALUES ('1ec24951-2a4f-43b4-a1ad-3a2b701bdab1', 'DK9-224', NULL, NULL, NULL, '200kVA (No Brand)', 'LV', NULL, NULL, NULL, 11.4601945, 104.8475383, '2022-11-02 03:45:36', '2022-11-02 03:45:36');
INSERT INTO `data_locations_list` VALUES ('1efd209b-e66b-4314-84cb-1ac7ad7f4f58', 'DK42-082', NULL, 'សុខ ហ៊ាង', NULL, '320kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4786989, 104.8709513, '2022-11-02 03:45:45', '2022-11-02 03:45:45');
INSERT INTO `data_locations_list` VALUES ('1f1c8ed4-49e9-4d45-963e-75e357759d40', 'DK25-024', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រ កាតុង JH', NULL, NULL, 11.498829, 104.8119105, '2022-11-02 03:46:07', '2022-11-02 03:46:07');
INSERT INTO `data_locations_list` VALUES ('206d320e-61cf-47ce-b2ba-0b32f19cf485', 'DK25-079', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4976272, 104.8074021, '2022-11-02 03:46:06', '2022-11-02 03:46:06');
INSERT INTO `data_locations_list` VALUES ('23016cc1-98d2-4058-b68c-6bcc3b529902', 'DK5', NULL, NULL, NULL, '160kVA (Precise)', 'LV', NULL, NULL, NULL, 11.46178, 104.8297912, '2022-11-02 03:45:22', '2022-11-02 03:45:22');
INSERT INTO `data_locations_list` VALUES ('23648606-12e3-4679-a196-8971621d0f96', 'DK20-65', NULL, NULL, NULL, NULL, 'MV 200/5A', 'Oliver Apparle Cambodia Co.,LTD', NULL, NULL, 11.5061801, 104.8196071, '2022-11-02 03:46:08', '2022-11-02 03:46:08');
INSERT INTO `data_locations_list` VALUES ('23bc19eb-ee9f-4681-bf15-02e9f2ce884c', 'LBS', 'DK', 'DK', NULL, NULL, NULL, 'កែងស្ទុប អាស៊ីសាញ់', NULL, NULL, 11.498909, 104.873623, '2022-11-02 03:45:19', '2022-11-02 03:45:19');
INSERT INTO `data_locations_list` VALUES ('23f377cd-8f37-4ac2-a4ef-b1471fe88110', 'DK19-121', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ឃ្លាំង', NULL, NULL, 11.4925389, 104.8036705, '2022-11-02 03:46:05', '2022-11-02 03:46:05');
INSERT INTO `data_locations_list` VALUES ('243477f1-d4d6-4294-be57-0b006a50b8be', 'DK2-167', NULL, NULL, NULL, '50kVA (EMAX)', 'LV', 'ឃ្លាំង', NULL, NULL, 11.4863676, 104.8516488, '2022-11-02 03:45:27', '2022-11-02 03:45:27');
INSERT INTO `data_locations_list` VALUES ('24a0395b-4e90-47ff-9c19-781b801a434e', 'DK38-114', NULL, NULL, NULL, '630kVA (EMAX)', 'MV 15/5A', 'រោងចក្រកញ្ជក់ ហេង សៀ', NULL, NULL, 11.5016226, 104.8422178, '2022-11-02 03:45:55', '2022-11-02 03:45:55');
INSERT INTO `data_locations_list` VALUES ('26a1d4c7-8385-408d-9e22-e682d2ddefeb', 'DK2-117B', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4939412, 104.8631625, '2022-11-02 03:45:31', '2022-11-02 03:45:31');
INSERT INTO `data_locations_list` VALUES ('28eb16f1-6dc3-49d6-b8c1-488067c8fb8f', 'DK9-240', NULL, 'ជួន​ វុធ', NULL, '100kVA (Fuji)', 'LV', 'ឃ្លាំង អេតចាយ', NULL, NULL, 11.464127, 104.8449823, '2022-11-02 03:45:35', '2022-11-02 03:45:35');
INSERT INTO `data_locations_list` VALUES ('29829d73-f6fa-4781-b776-0047f915ba1c', 'DK25-59', NULL, NULL, NULL, '400kVA (EDL)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.498026, 104.8094868, '2022-11-02 03:46:07', '2022-11-02 03:46:07');
INSERT INTO `data_locations_list` VALUES ('2d563f89-34b4-4bf3-9ff0-0229384d3f5e', 'DK01-056', NULL, 'ម៉េង ហេង', NULL, '160kVA (Thibidi)', 'LV', 'ឃ្លាំង', NULL, NULL, 11.4879946, 104.8650629, '2022-11-02 03:45:43', '2022-11-02 03:45:43');
INSERT INTO `data_locations_list` VALUES ('332f896c-7ced-4f34-8054-ac3689de89c9', 'LBS ព្រៃសរ', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.4903609, 104.8560959, '2022-11-02 03:45:30', '2022-11-02 03:45:30');
INSERT INTO `data_locations_list` VALUES ('34bd38c5-1ea7-4e3d-8079-554203233866', 'DK21-032', NULL, NULL, NULL, '400kVA + 630kVA (Fuji)', 'MV 75/5A', NULL, NULL, NULL, 11.4835679, 104.8377835, '2022-11-02 03:45:51', '2022-11-02 03:45:51');
INSERT INTO `data_locations_list` VALUES ('35f3582d-7074-4802-b671-db0388a3703e', 'DK01-043', 'DK', 'ឡៅ ហាំគួង', NULL, '50 kVA ( Precise )', 'LV', 'ឃ្លាំង', NULL, NULL, 11.497139, 104.873213, '2022-11-02 03:45:20', '2022-11-02 03:45:20');
INSERT INTO `data_locations_list` VALUES ('36031ed4-8ee0-4eaa-a955-e116abc4f973', 'DK08-151', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4996507, 104.8573153, '2022-11-02 03:45:40', '2022-11-02 03:45:40');
INSERT INTO `data_locations_list` VALUES ('396844a6-e235-4ccc-83cd-183b91438af9', 'DK2-120', NULL, 'ជិន សោភ័ណ្ឌ', NULL, '100kVA (Thai Maxwell)', 'LV', NULL, NULL, NULL, 11.4875323, 104.8565069, '2022-11-02 03:45:31', '2022-11-02 03:45:31');
INSERT INTO `data_locations_list` VALUES ('39a9b126-eef0-44a5-b2ea-68201979e317', 'DK01-196', 'DK', 'អ៊ឹង ប៉ុនប៉េង', NULL, '630kVA (Thibidi)', 'LV', 'បុរី អ៊ឹង ប៉ុនប៉េង', NULL, NULL, 11.4927873, 104.8698761, '2022-11-02 03:45:43', '2022-11-02 03:45:43');
INSERT INTO `data_locations_list` VALUES ('3a0272ed-f285-4ca9-8340-c21311df2142', 'DK25-179', NULL, NULL, NULL, '500kVA (EMAX)', 'MV 15/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4976426, 104.8064009, '2022-11-02 03:46:05', '2022-11-02 03:46:05');
INSERT INTO `data_locations_list` VALUES ('3a5326e1-e00e-4178-a5b6-b0c6a11d34f1', 'DK6', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4640265, 104.8220305, '2022-11-02 03:45:22', '2022-11-02 03:45:22');
INSERT INTO `data_locations_list` VALUES ('3b6f2d8d-9ef3-43e9-ad9e-9869ab407c5d', 'DK20-126', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.5042388, 104.820382, '2022-11-02 03:46:00', '2022-11-02 03:46:00');
INSERT INTO `data_locations_list` VALUES ('3d8bcc4b-9848-4053-a804-910f260584a8', 'DK2', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.49054, 104.8568017, '2022-11-02 03:45:30', '2022-11-02 03:45:30');
INSERT INTO `data_locations_list` VALUES ('3da40012-cd51-44c2-9bff-65c1fe9145e3', 'DK42-054', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4981965, 104.871007, '2022-11-02 03:45:34', '2022-11-02 03:45:34');
INSERT INTO `data_locations_list` VALUES ('3fa7c6bb-40fc-4441-b3be-d67b9c8ca4b2', 'DK48-176', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'បុរី', NULL, NULL, 11.495278, 104.837361, '2022-11-02 03:45:53', '2022-11-02 03:45:53');
INSERT INTO `data_locations_list` VALUES ('43876546-b859-42f0-b092-aae3a57400f2', 'DK38-254', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 20/5A', NULL, NULL, NULL, 11.4991621, 104.8422497, '2022-11-02 03:45:56', '2022-11-02 03:45:56');
INSERT INTO `data_locations_list` VALUES ('44d53713-10e2-4e8a-b62a-fc8bca81d0a5', 'DK40-164', NULL, NULL, NULL, '1000kVA (Thaipat) Indoor', 'MV 30/5A', NULL, NULL, NULL, 11.4929391, 104.8439234, '2022-11-02 03:45:56', '2022-11-02 03:45:56');
INSERT INTO `data_locations_list` VALUES ('45dc8d31-345f-450e-86df-a111b64f3f82', 'DK41-054', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៣', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.484544, 104.875495, '2022-11-02 03:45:14', '2022-11-02 03:45:14');
INSERT INTO `data_locations_list` VALUES ('4698a478-d616-4637-af4d-0dd3e03b113c', 'DK41-039', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០២', NULL, '630 kVA ( Thibid )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', NULL, NULL, 11.483705, 104.872043, '2022-11-02 03:45:16', '2022-11-02 03:45:16');
INSERT INTO `data_locations_list` VALUES ('47373229-7531-4431-befc-9d7ad32b408a', 'DK08-158', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី LC', NULL, NULL, 11.4945372, 104.8590775, '2022-11-02 03:45:41', '2022-11-02 03:45:41');
INSERT INTO `data_locations_list` VALUES ('475cb8ed-26cb-454f-b8ba-cfeaea88f08b', 'DK9-028', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4601459, 104.8473113, '2022-11-02 03:45:37', '2022-11-02 03:45:37');
INSERT INTO `data_locations_list` VALUES ('476698ce-1455-4b24-be0e-c97dff1d25db', 'DK41-050', NULL, NULL, NULL, '250kVA (Thai Maxwell)', 'LV', 'សហគ្រាស តាំង គឹមស្រេង', NULL, NULL, 11.4837509, 104.8674691, '2022-11-02 03:45:45', '2022-11-02 03:45:45');
INSERT INTO `data_locations_list` VALUES ('49208b7e-be67-4670-991c-d59b50c4a7ff', 'DK1-083', NULL, NULL, NULL, '315kVA (Fuji)', 'LV', 'PTT', NULL, NULL, 11.4989443, 104.872686, '2022-11-02 03:45:34', '2022-11-02 03:45:34');
INSERT INTO `data_locations_list` VALUES ('49558180-9c69-4427-846c-7ed1f23f5349', 'DK8-256', 'CEE', 'អ៊ូន និមល', '44786', '250kVA (Thibidi)', 'LV', 'ឃ្លាំងកាត់ដេរ', NULL, NULL, 11.5018759, 104.8553496, '2022-11-02 03:45:58', '2022-11-02 03:45:58');
INSERT INTO `data_locations_list` VALUES ('4b420c4d-6810-4e2d-b5be-130120f477c4', 'DK01-117', NULL, 'ហេង សាយ', NULL, '400kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4926733, 104.8688632, '2022-11-02 03:45:43', '2022-11-02 03:45:43');
INSERT INTO `data_locations_list` VALUES ('4b580cfc-c104-4dd9-87ed-400fedc94f68', 'DK48-066', NULL, NULL, NULL, '320kVA (Full Light)', 'LV', 'រោងចក្រស្បែកជើង', NULL, NULL, 11.5004931, 104.8284762, '2022-11-02 03:45:54', '2022-11-02 03:45:54');
INSERT INTO `data_locations_list` VALUES ('4fda340e-a065-4c5d-afc8-47e6d7e4ef79', 'DK19-175', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'មណ្ឌលវេជ្ជសាស្រ្ត កូមីស៊ូ', NULL, NULL, 11.4865877, 104.8286854, '2022-11-02 03:45:54', '2022-11-02 03:45:54');
INSERT INTO `data_locations_list` VALUES ('50bc1dbc-7cd7-4e1f-af4a-b35269c5ae0d', 'DK19-1024', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ៣', NULL, NULL, 11.4885548, 104.8129653, '2022-11-02 03:46:03', '2022-11-02 03:46:03');
INSERT INTO `data_locations_list` VALUES ('521bb561-a5a3-450c-9bfa-897a8aaabd26', 'DK41-047', NULL, 'ឈឹម កៃឡុង', NULL, '250 kVA ( Precise )', 'LV', 'ឃ្លាំង សង្កត់សសរគ្រឹស', NULL, NULL, 11.489083, 104.873022, '2022-11-02 03:45:18', '2022-11-02 03:45:18');
INSERT INTO `data_locations_list` VALUES ('52a31e55-baed-46a0-94c9-4482e660cbf4', 'DK40-154', NULL, NULL, NULL, '250kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4880557, 104.83925, '2022-11-02 03:45:52', '2022-11-02 03:45:52');
INSERT INTO `data_locations_list` VALUES ('52cf9176-8ee1-40a1-b3e5-3d8f55efe69c', 'DK38-219', 'CEE', 'លីននាង លីមឃុន', '44612', '250kVA (Thibidi)', 'LV', 'រោងចក្រ កិនជ័រ', NULL, NULL, 11.4993494, 104.8496462, '2022-11-02 03:45:58', '2022-11-02 03:45:58');
INSERT INTO `data_locations_list` VALUES ('52f07305-96c7-4029-b514-26a6060dffda', 'DK25-174', NULL, NULL, NULL, '500kVA (China)', 'MV 15/5A', 'រោងចក្រ', NULL, NULL, 11.4978578, 104.808884, '2022-11-02 03:46:06', '2022-11-02 03:46:06');
INSERT INTO `data_locations_list` VALUES ('5329b8fa-03ca-4ce7-b130-53f29919e98d', 'DK41-061', NULL, NULL, NULL, '100 kVA ( Thibidi )', 'LV', 'DK ចែកចាយ', NULL, NULL, 11.490855, 104.871548, '2022-11-02 03:45:21', '2022-11-02 03:45:21');
INSERT INTO `data_locations_list` VALUES ('5538b33d-3d47-435d-9e52-c5537b5d2150', 'DK40-362', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', NULL, NULL, 11.4825326, 104.8478481, '2022-11-02 03:45:25', '2022-11-02 03:45:25');
INSERT INTO `data_locations_list` VALUES ('55a64784-ef13-42c5-b7fd-b02f0cd44b24', 'DK2-118', NULL, 'អ៊ិច សុខា', NULL, '400kVA (Fuji)', 'LV', 'រោងចក្រ កិនជ័រ', NULL, NULL, 11.4875767, 104.8564825, '2022-11-02 03:45:29', '2022-11-02 03:45:29');
INSERT INTO `data_locations_list` VALUES ('5609fd62-5b18-45fb-abb0-d3bea3e63d29', 'DK07', NULL, NULL, NULL, '160kVA (Precise)', 'LV', 'ទល់មុខ Office', NULL, NULL, 11.4626675, 104.8144902, '2022-11-02 03:45:22', '2022-11-02 03:45:22');
INSERT INTO `data_locations_list` VALUES ('56490aeb-5fd6-4c87-b1e0-aa6cb430e1f5', 'DK20-150', NULL, NULL, NULL, '400kVA ខ្នែង 100A (Thai Maxwell)', 'LV', 'បុរី ពីភពថ្មី ២', NULL, NULL, 11.4993675, 104.8207652, '2022-11-02 03:46:01', '2022-11-02 03:46:01');
INSERT INTO `data_locations_list` VALUES ('57b044c8-3d90-4915-a9ab-a7811e2d9c35', 'DK3-065', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4801623, 104.8458576, '2022-11-02 03:45:25', '2022-11-02 03:45:25');
INSERT INTO `data_locations_list` VALUES ('5b2c88ca-8f9a-4612-9668-35b3092c9e19', 'DK04-029', NULL, NULL, NULL, '160kVA (Thibid)', 'LV', NULL, NULL, NULL, 11.4638024, 104.8375411, '2022-11-02 03:45:23', '2022-11-02 03:45:23');
INSERT INTO `data_locations_list` VALUES ('5c5e06ed-d0ca-4504-9a0a-2ab7b199f77e', 'DK40-163', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.492782, 104.8439361, '2022-11-02 03:45:56', '2022-11-02 03:45:56');
INSERT INTO `data_locations_list` VALUES ('5f25f9fe-d376-4e3b-bbf2-7e571680b6da', 'DK2-168', 'CEE', 'អ៊ិច សុខា', '44757', '400kVA (Trasfix)', 'MV 10/5A', 'រោងចក្រ កិនជ៍រ', NULL, NULL, 11.4875488, 104.8563068, '2022-11-02 03:45:29', '2022-11-02 03:45:29');
INSERT INTO `data_locations_list` VALUES ('6087913a-a542-4468-a63a-4dc4890798ab', 'DK19-641', NULL, NULL, NULL, '400kVA (Fuji)', 'MV 15/5A', NULL, NULL, NULL, 11.4862227, 104.8323922, '2022-11-02 03:45:54', '2022-11-02 03:45:54');
INSERT INTO `data_locations_list` VALUES ('61acaa80-27b0-47d5-a7c0-360df0c50e67', 'DK42-081', 'DK', 'ងួន វីទូ', NULL, '630kVA ( Thibidi / Indoor )', 'MV 20/5A', 'ផ្ទះវីឡា', NULL, NULL, 11.4793853, 104.8710579, '2022-11-02 03:45:45', '2022-11-02 03:45:45');
INSERT INTO `data_locations_list` VALUES ('62473a13-774b-44fb-9935-68943545ca64', 'DK2-51', NULL, NULL, NULL, '100kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី១ ព្រៃសរ', NULL, NULL, 11.4874302, 104.8468792, '2022-11-02 03:45:27', '2022-11-02 03:45:27');
INSERT INTO `data_locations_list` VALUES ('626e55e2-0d24-4808-9a6e-2f1aec7bd583', 'DK41-060', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី១៩', NULL, '630kVA (Thibidi)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4872872, 104.8668556, '2022-11-02 03:45:44', '2022-11-02 03:45:44');
INSERT INTO `data_locations_list` VALUES ('63fcf470-7ccc-4d0f-82f6-e42ba9de124d', 'DK2-130', NULL, 'វ៉ាន់ សុផល', NULL, '200kVA (Fuji)', 'LV', 'លំនៅដ្ឋាន ស្តង់ដារ', NULL, NULL, 11.488178, 104.8477103, '2022-11-02 03:45:27', '2022-11-02 03:45:27');
INSERT INTO `data_locations_list` VALUES ('658e5e59-64a2-411f-9025-fc23f9d7a36a', 'DK44-051', NULL, 'ចាប លឹមឃាង', NULL, '100kVA (EMAX)', 'LV', 'កន្លែង ចាក់លូ', NULL, NULL, 11.4541234, 104.8508804, '2022-11-02 03:45:37', '2022-11-02 03:45:37');
INSERT INTO `data_locations_list` VALUES ('671c7cc0-8f10-4134-a532-6a295fc72678', 'DK20-406', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.5072643, 104.8197071, '2022-11-02 03:46:08', '2022-11-02 03:46:08');
INSERT INTO `data_locations_list` VALUES ('68966c68-c0b2-446f-a47f-cb4ea39106e1', 'DK45-074', NULL, 'ឃន ចាន់ណា', NULL, '400 kVA ( Thibidi )', 'LV', 'ក្រឡុក​ ស៊ីម៉ង', NULL, NULL, 11.477572, 104.885113, '2022-11-02 03:45:21', '2022-11-02 03:45:21');
INSERT INTO `data_locations_list` VALUES ('68bf0786-554d-4a61-ba33-7f59be464f1d', 'DK19-275', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ២', NULL, NULL, 11.4908672, 104.8102845, '2022-11-02 03:46:04', '2022-11-02 03:46:04');
INSERT INTO `data_locations_list` VALUES ('6bf4e080-f2c8-4c24-a470-634aec89e4d1', 'DK41-057', 'DK', '​អ៊ឺង ប៊ុនប៉េង​ ទី១៦', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.483584, 104.87558, '2022-11-02 03:45:15', '2022-11-02 03:45:15');
INSERT INTO `data_locations_list` VALUES ('6c109064-0a6f-4fd9-aca8-04ade2bd9f83', 'DK40-322', NULL, NULL, NULL, '630kVA (Fuji)', 'LV', 'បុរី Sunny', NULL, NULL, 11.4909595, 104.8438831, '2022-11-02 03:45:57', '2022-11-02 03:45:57');
INSERT INTO `data_locations_list` VALUES ('6d51e41e-465a-411f-8370-e575a48ad5d8', 'DK02-129', NULL, NULL, NULL, '200kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4870424, 104.8591851, '2022-11-02 03:45:42', '2022-11-02 03:45:42');
INSERT INTO `data_locations_list` VALUES ('6eeff4b7-6909-4e14-a9e3-0f7a4822ad64', 'DK01-063', NULL, 'ហៅ ឃ្វីមីង', NULL, '630kVA (Fuji)', 'MV 20/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4833635, 104.8643367, '2022-11-02 03:45:44', '2022-11-02 03:45:44');
INSERT INTO `data_locations_list` VALUES ('6ef772eb-1d48-40fe-8dad-bf4397e53823', 'DK4-048', NULL, 'ជៀប ស្រ៊ុន', NULL, '100kVA (Thibid)', 'LV', NULL, NULL, NULL, 11.4673784, 104.8430617, '2022-11-02 03:45:23', '2022-11-02 03:45:23');
INSERT INTO `data_locations_list` VALUES ('6fdf09cb-1d30-44e3-97f3-ec1d637b97a0', 'DK2-50', NULL, NULL, NULL, '50kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី២ ព្រៃសរ', NULL, NULL, 11.4862115, 104.846905, '2022-11-02 03:45:26', '2022-11-02 03:45:26');
INSERT INTO `data_locations_list` VALUES ('70a58f8a-7b85-47c6-8b1c-2546c911a32a', 'DK48-056', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 15/5A', NULL, NULL, NULL, 11.5019045, 104.8249816, '2022-11-02 03:45:59', '2022-11-02 03:45:59');
INSERT INTO `data_locations_list` VALUES ('722e9703-bd6a-4f57-af32-2a26c338dc75', 'DK9-233', NULL, 'ងួន ហ៊ួ ទី១', NULL, '100kVA (Fuji)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4766739, 104.8536065, '2022-11-02 03:45:40', '2022-11-02 03:45:40');
INSERT INTO `data_locations_list` VALUES ('74ec5c33-d625-460e-af5a-0c58d8b48881', 'DK1-061', NULL, 'ឡាក់ ណាំអ៊ី', NULL, '160kVA (Fuji)', 'LV', 'Park Cafe', NULL, NULL, 11.4977546, 104.8698553, '2022-11-02 03:45:33', '2022-11-02 03:45:33');
INSERT INTO `data_locations_list` VALUES ('767449bd-88e2-4de8-b7c7-3347af180314', 'DK16-266', NULL, NULL, NULL, '630kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.5059268, 104.8740553, '2022-11-02 03:45:49', '2022-11-02 03:45:49');
INSERT INTO `data_locations_list` VALUES ('79be196b-8fe4-4b72-86e8-18a87d908d72', 'DK16-01', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'កន្លែងដុតខ្មោច វត្តឬស្សីសាញ់', NULL, NULL, 11.5033471, 104.8728983, '2022-11-02 03:45:50', '2022-11-02 03:45:50');
INSERT INTO `data_locations_list` VALUES ('7aa2c366-8dfb-4326-87f8-3a6c63540da0', 'DK41-058', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៧', NULL, '800 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.486062, 104.876935, '2022-11-02 03:45:16', '2022-11-02 03:45:16');
INSERT INTO `data_locations_list` VALUES ('7ab17e5c-9e72-45bb-89f8-b4e7aad4873b', 'DK2-142', NULL, NULL, NULL, '50kVA (Thibidi)', 'LV', 'មណ្ឌលកែប្រែទី១ ព្រៃសរ', NULL, NULL, 11.4875172, 104.8466482, '2022-11-02 03:45:27', '2022-11-02 03:45:27');
INSERT INTO `data_locations_list` VALUES ('7abf4a56-3ab5-4728-adb5-f12ad5e30543', 'DK38-035', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 10/5A', 'ក្រុមហ៊ុន ស៊ូភើ ឆែម ហ្វូតវែរ ចិន ជីងសាយ', NULL, NULL, 11.5005272, 104.8422446, '2022-11-02 03:45:55', '2022-11-02 03:45:55');
INSERT INTO `data_locations_list` VALUES ('7c6bb4ed-df10-4889-8ff8-d5b717dd7fef', 'DK38-38', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'រោងចក្រ ចែកចាយអង្ករ', NULL, NULL, 11.5033665, 104.845698, '2022-11-02 03:45:59', '2022-11-02 03:45:59');
INSERT INTO `data_locations_list` VALUES ('7e99b85a-d02e-49e3-867c-a86e3937db9d', 'DK2-132', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ហេង ណា', NULL, NULL, 11.4940933, 104.8630013, '2022-11-02 03:45:31', '2022-11-02 03:45:31');
INSERT INTO `data_locations_list` VALUES ('7eb66a01-bd1e-49e2-9ca0-51fdd07c40f2', 'DK25-061', NULL, NULL, NULL, '400kVA (ABB)', 'LV', NULL, NULL, NULL, 11.5011347, 104.8108263, '2022-11-02 03:46:10', '2022-11-02 03:46:10');
INSERT INTO `data_locations_list` VALUES ('84584943-c9ea-4da7-9b33-f7bd84c1d388', 'DK01-042', NULL, NULL, NULL, 'ABB', 'LV', NULL, NULL, NULL, 11.4982866, 104.8664288, '2022-11-02 03:45:48', '2022-11-02 03:45:48');
INSERT INTO `data_locations_list` VALUES ('86ce34f3-6961-4b78-8553-3dc27ad4cdb9', 'DK20-149', NULL, NULL, NULL, '400kVA (Thai Maxwell)', 'LV', 'បុរី ពីភពថ្មី ២', NULL, NULL, 11.49963, 104.8207786, '2022-11-02 03:46:01', '2022-11-02 03:46:01');
INSERT INTO `data_locations_list` VALUES ('87649da3-a5c0-4c36-9732-642695894ef3', 'DK48-160', 'GreenFornext (B.Lux)', NULL, NULL, '250kVA (Fuji)', 'LV', 'ក្រឡុក​​ ស៊ីម៉ង', NULL, NULL, 11.5036855, 104.8247174, '2022-11-02 03:46:00', '2022-11-02 03:46:00');
INSERT INTO `data_locations_list` VALUES ('89aca31b-01ae-4160-a0e4-0de70d0916e8', 'DK19-088', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រ ស្បែកជើង', NULL, NULL, 11.4926752, 104.8154259, '2022-11-02 03:46:05', '2022-11-02 03:46:05');
INSERT INTO `data_locations_list` VALUES ('8a192241-ec37-41f3-8fd0-b4d67646c9da', 'DK3A', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4740811, 104.8447093, '2022-11-02 03:45:24', '2022-11-02 03:45:24');
INSERT INTO `data_locations_list` VALUES ('8b827fe1-a784-4957-b7e3-ca8434eecffa', 'DK41-051', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១១', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.48621, 104.87694, '2022-11-02 03:45:16', '2022-11-02 03:45:16');
INSERT INTO `data_locations_list` VALUES ('8bb48e76-d47d-45bd-a16e-6cfabc1fd34a', 'DK41-044', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៧', NULL, '320 kVA ( Thibidi )', 'LV', 'រោងចក្រ អន្លង់គងថ្មី', NULL, NULL, 11.491642, 104.872099, '2022-11-02 03:45:18', '2022-11-02 03:45:18');
INSERT INTO `data_locations_list` VALUES ('8bbf5b69-88bd-4839-bc43-719c61776dde', 'DK3-066', NULL, NULL, NULL, '630kVA (Thibid)', 'LV', 'បុរី ធីវីស្តា គម្រោង៦', NULL, NULL, 11.4672848, 104.8421776, '2022-11-02 03:45:23', '2022-11-02 03:45:23');
INSERT INTO `data_locations_list` VALUES ('8c38baba-d3fa-4378-a6db-77a948be7811', 'DK7-036', NULL, NULL, NULL, '200kVA (Thaipat)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4678572, 104.8144151, '2022-11-02 03:46:02', '2022-11-02 03:46:02');
INSERT INTO `data_locations_list` VALUES ('8c7c102f-f8f4-4798-8e72-439c75f98d94', 'DK2-166', NULL, 'ស៊ីន សុភា', NULL, '250kVA (Thibidi)', NULL, 'សំណង់វីឡាកូនកាត់ អាយស៊ី ( IC )', NULL, NULL, 11.4852258, 104.8515479, '2022-11-02 03:45:28', '2022-11-02 03:45:28');
INSERT INTO `data_locations_list` VALUES ('8cea2ecf-7de8-4798-ab31-4d9e16c28db2', 'DK41-046', 'DK', 'អ.ជ : អ៊ឺង ប៊ុនប៉េង​ ទី៩', NULL, '630 kVA ( Precise )', 'LV', NULL, NULL, NULL, 11.485075, 104.87225, '2022-11-02 03:45:14', '2022-11-02 03:45:14');
INSERT INTO `data_locations_list` VALUES ('8cf55879-1c2d-416d-b351-d38d314e34e1', 'DK25-057', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ឃ្លាំង ផលិតស៊ីតែនសាំង', NULL, NULL, 11.5025517, 104.8112574, '2022-11-02 03:46:10', '2022-11-02 03:46:10');
INSERT INTO `data_locations_list` VALUES ('8ec79059-de4e-4425-91e2-7e3b62ec39cb', 'DK43-029', NULL, 'គីម អាយ', NULL, '800kVA (Thibidi)', 'MV 25/5A', NULL, NULL, NULL, 11.4628866, 104.8612727, '2022-11-02 03:45:39', '2022-11-02 03:45:39');
INSERT INTO `data_locations_list` VALUES ('8f35a077-5ab4-481b-98a2-fa8c989b66e1', 'DK01-052', NULL, NULL, NULL, '100 kVA ( Thai Maxwell )', 'LV', 'ផ្ទះអតិថិជន', NULL, NULL, 11.4983575, 104.8714965, '2022-11-02 03:45:22', '2022-11-02 03:45:22');
INSERT INTO `data_locations_list` VALUES ('912f15f2-efe6-4694-adbd-3c417c87c7c7', 'DK48-067', NULL, NULL, NULL, '1250kVA x2pcs (Indoor)', 'MV 50/5A', 'រោងចក្រ ដែកគោល', NULL, NULL, 11.5075794, 104.8246185, '2022-11-02 03:46:01', '2022-11-02 03:46:01');
INSERT INTO `data_locations_list` VALUES ('91327014-344e-4c6a-8a97-ffd3cb0b82ca', 'DK9-068', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4647047, 104.8525081, '2022-11-02 03:45:36', '2022-11-02 03:45:36');
INSERT INTO `data_locations_list` VALUES ('9183e404-d81f-4916-b557-1688ecfc61c6', 'DK41-053', NULL, 'ប៉េង គីម', NULL, '400 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.483443, 104.879378, '2022-11-02 03:45:15', '2022-11-02 03:45:15');
INSERT INTO `data_locations_list` VALUES ('91bdb651-9356-49b5-8014-d31bddb71e86', 'DK25-25', NULL, NULL, NULL, '250kVA (Thaipat)', 'LV', 'រោងចក្រកាត់ដេរ', NULL, NULL, 11.5011577, 104.8108159, '2022-11-02 03:46:11', '2022-11-02 03:46:11');
INSERT INTO `data_locations_list` VALUES ('9264b187-735f-4d7c-9b0f-a63ec769f5ea', 'DK40-', NULL, NULL, NULL, '75 kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', NULL, NULL, 11.4833166, 104.8480034, '2022-11-02 03:45:25', '2022-11-02 03:45:25');
INSERT INTO `data_locations_list` VALUES ('92dd8ece-b6f9-4b9c-ac3d-ebaa0d6ebd83', 'DK9-239', NULL, 'ប៉ែន សុភី', NULL, '315 kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4619377, 104.84696, '2022-11-02 03:45:35', '2022-11-02 03:45:35');
INSERT INTO `data_locations_list` VALUES ('938d1b5f-a8c6-4089-80f0-99de10cc8ea3', 'DK25-030', NULL, NULL, NULL, '250kVA (China)', 'LV', NULL, NULL, NULL, 11.4990974, 104.8125616, '2022-11-02 03:46:07', '2022-11-02 03:46:07');
INSERT INTO `data_locations_list` VALUES ('959a1598-ae0d-458b-9e81-a1403aa09007', 'DK10-034', NULL, NULL, NULL, '400kVA (Thibidi)', 'MV 15/5A', 'បុរី Chip Mong', NULL, NULL, 11.5017721, 104.8785913, '2022-11-02 03:45:48', '2022-11-02 03:45:48');
INSERT INTO `data_locations_list` VALUES ('9622653c-7a64-4458-9039-67c57a04a3a8', 'DK10-23', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'Caltex ចំការដូង', NULL, NULL, 11.5004819, 104.8750028, '2022-11-02 03:45:51', '2022-11-02 03:45:51');
INSERT INTO `data_locations_list` VALUES ('98226e69-b371-40cd-9683-34f436990025', 'DK01-058', NULL, 'ដុង ខៃវិន', NULL, '630 kVA ( Thai Maxwell )', 'MV ( CT-VT 15/5A )', 'រោងចក្រ ក្រឡុកស៊ីម៉ង', NULL, NULL, 11.494154, 104.872336, '2022-11-02 03:45:20', '2022-11-02 03:45:20');
INSERT INTO `data_locations_list` VALUES ('989fb21b-321a-4ff3-92a3-b399e7664f3f', 'DK19-640', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', NULL, NULL, NULL, 11.4885867, 104.8129687, '2022-11-02 03:46:03', '2022-11-02 03:46:03');
INSERT INTO `data_locations_list` VALUES ('98b15c57-e8d6-4228-9a17-5b24e247d72f', 'DK10-081', NULL, NULL, NULL, '1250kVA (Fuji / Indoor)', 'LV', 'បុរី Chip Mong', NULL, NULL, 11.5014491, 104.878607, '2022-11-02 03:45:48', '2022-11-02 03:45:48');
INSERT INTO `data_locations_list` VALUES ('9a7a479a-19b2-4875-8d4e-b7eabc019d5a', 'DK2-056', NULL, 'លួន តេង', NULL, '1600kVA (Thaipat) Indoor', 'MV (CT-VT 30/5A) Outdoor', 'រោងចក្រ កញ្ជក់', NULL, NULL, 11.4930879, 104.8611696, '2022-11-02 03:45:31', '2022-11-02 03:45:31');
INSERT INTO `data_locations_list` VALUES ('9b1d204d-2859-4a64-a6ea-c1ae5d1edee8', 'DK1-039 (ទី2)', NULL, NULL, NULL, '630kVA (Precise)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', NULL, NULL, 11.495214, 104.8673397, '2022-11-02 03:45:32', '2022-11-02 03:45:32');
INSERT INTO `data_locations_list` VALUES ('9d0966a7-6022-44c7-80c0-b322d19a40d2', 'DK45-079', NULL, 'តាំង ស្រីវី', NULL, '400kVA (សករាជ)', 'MV 15/5A', NULL, NULL, NULL, 11.4792706, 104.88102, '2022-11-02 03:45:47', '2022-11-02 03:45:47');
INSERT INTO `data_locations_list` VALUES ('9ef03f05-9f2a-46f3-9ec0-0b632debc9d7', 'DK39-046', NULL, NULL, NULL, '200kVA (Full Light)', 'LV', 'ព្រះវិហារចិន', NULL, NULL, 11.5080144, 104.8480771, '2022-11-02 03:45:58', '2022-11-02 03:45:58');
INSERT INTO `data_locations_list` VALUES ('9f4389c9-8105-43a8-81be-5b537f80eb25', 'DK42-083', NULL, 'យីង ជុង ឃីង', NULL, '315kVA (Fuji)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4808408, 104.8690557, '2022-11-02 03:45:46', '2022-11-02 03:45:46');
INSERT INTO `data_locations_list` VALUES ('9f5c35e1-16e4-48a7-ac1e-6a0dddddcd96', 'DK7-027', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4632606, 104.8135705, '2022-11-02 03:46:02', '2022-11-02 03:46:02');
INSERT INTO `data_locations_list` VALUES ('9f930180-9e0c-4637-ab5b-6ad5e5db357d', 'DK2-161', NULL, NULL, NULL, '315kVA (Fuji)', 'LV', 'មណ្ឌលកែប្រែទី២ ព្រៃសរ', NULL, NULL, 11.4863364, 104.8468939, '2022-11-02 03:45:26', '2022-11-02 03:45:26');
INSERT INTO `data_locations_list` VALUES ('a1055f76-7b76-4302-9838-6321e67155e5', 'DK08-75', NULL, NULL, NULL, '50kVA (Precise)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4957275, 104.8590581, '2022-11-02 03:45:41', '2022-11-02 03:45:41');
INSERT INTO `data_locations_list` VALUES ('a1f367ed-d171-4b6c-9a29-114a92dd5181', 'DK25-173', 'GreenFornext', NULL, NULL, '400kVA (Fuji)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4995439, 104.8091904, '2022-11-02 03:46:07', '2022-11-02 03:46:07');
INSERT INTO `data_locations_list` VALUES ('a2204c20-90ef-4d00-abdf-93744acddc47', 'DK38-24', NULL, NULL, NULL, '50kVA (Thaipat)', 'LV', 'រោងចក្រស្បែកជើង', NULL, NULL, 11.5003252, 104.8422507, '2022-11-02 03:45:55', '2022-11-02 03:45:55');
INSERT INTO `data_locations_list` VALUES ('a413f4b9-f66c-4278-8f72-1ab7869423c2', 'LBS DK1', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.4982849, 104.871191, '2022-11-02 03:45:33', '2022-11-02 03:45:33');
INSERT INTO `data_locations_list` VALUES ('a431117e-f28a-4099-9fde-9afd4c159c4c', 'DK2-127', NULL, 'គង់ ស៊ីថន', NULL, '100kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4886442, 104.8534402, '2022-11-02 03:45:28', '2022-11-02 03:45:28');
INSERT INTO `data_locations_list` VALUES ('a46d70d6-4246-4a71-b913-a6dd4457f82f', 'DK40-106', NULL, NULL, NULL, '60kVA (Thaipat)', 'LV', 'បុរី', NULL, NULL, 111.4908803, 104.8391004, '2022-11-02 03:45:53', '2022-11-02 03:45:53');
INSERT INTO `data_locations_list` VALUES ('a5526629-0d23-44a6-8eed-3af9f21b4d70', 'DK03-041', NULL, NULL, NULL, '315kVA (Fuji)', 'LV', 'រោងចក្រ', NULL, NULL, 11.4823729, 104.847131, '2022-11-02 03:45:40', '2022-11-02 03:45:40');
INSERT INTO `data_locations_list` VALUES ('a91a3788-513e-4630-bc5e-17bc5cc4e201', 'DK20-063', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.5036878, 104.8181232, '2022-11-02 03:46:09', '2022-11-02 03:46:09');
INSERT INTO `data_locations_list` VALUES ('adb99ab5-66d8-4331-88b6-a4b278747264', 'DK38-25', NULL, NULL, NULL, '2000kVA (Indoor)', 'MV 50/5A', 'JC CORP PhnomPenh', NULL, NULL, 11.5025921, 104.8418805, '2022-11-02 03:45:59', '2022-11-02 03:45:59');
INSERT INTO `data_locations_list` VALUES ('addf9ee6-7134-433d-ac0d-f07ca3839258', 'DK01-055', NULL, 'ឡៅ ចាយ', NULL, '400 kVA ( Fuji )', 'LV', 'ឃ្លាំង ដែក', NULL, NULL, 11.493302, 104.872099, '2022-11-02 03:45:20', '2022-11-02 03:45:20');
INSERT INTO `data_locations_list` VALUES ('afc2a193-3be7-4c67-b370-d5a172ac1db5', 'DK41-001', NULL, NULL, NULL, '160 kVA ( Full Light )', 'LV', 'DK ចែកចាយ', NULL, NULL, 11.489547, 104.871245, '2022-11-02 03:45:21', '2022-11-02 03:45:21');
INSERT INTO `data_locations_list` VALUES ('b2eadcfb-d395-44dc-b2d8-d8ced7988d13', 'DK41-049', NULL, NULL, NULL, '50 kVA ( Thibidi / Mono )', 'LV', 'DK ចែកចាយ', NULL, NULL, 11.492477, 104.871936, '2022-11-02 03:45:21', '2022-11-02 03:45:21');
INSERT INTO `data_locations_list` VALUES ('b3203f5a-f898-489f-a12b-684f7d9ff03d', 'DK1-039 (ទី៣)', NULL, NULL, NULL, '630kVA (Fuji)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', NULL, NULL, 11.4954236, 104.8673035, '2022-11-02 03:45:32', '2022-11-02 03:45:32');
INSERT INTO `data_locations_list` VALUES ('b43339ce-a35d-4709-a46b-95769879d7ad', 'DK45-073', NULL, 'វ៉ាង ប៉េង', NULL, '500kVA (XYZ)', 'MV 25/5A', NULL, NULL, NULL, 11.4793991, 104.8728775, '2022-11-02 03:45:46', '2022-11-02 03:45:46');
INSERT INTO `data_locations_list` VALUES ('b468c1d2-d680-434e-b241-10d0e7e25d10', 'DK9-237', 'Green Fornext ( Lux )', 'ជួន ជៀន', NULL, '500kVA (XYZ)', 'MV 15/5A', 'រោងចក្រ ផលិតស្បែកជើង', NULL, NULL, 11.4595146, 104.8482424, '2022-11-02 03:45:37', '2022-11-02 03:45:37');
INSERT INTO `data_locations_list` VALUES ('b46ceb0e-df6f-42db-92be-07d0fc1f4c47', 'DK40-283', NULL, NULL, NULL, '100kVA (Full Light)', 'LV', NULL, NULL, NULL, 11.4930077, 104.8477613, '2022-11-02 03:45:57', '2022-11-02 03:45:57');
INSERT INTO `data_locations_list` VALUES ('b56d8fca-9e06-459e-999d-64254c032fad', 'DK25-096', NULL, NULL, NULL, '400kVA (China)', 'MV 10/5A', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4980126, 104.8093883, '2022-11-02 03:46:06', '2022-11-02 03:46:06');
INSERT INTO `data_locations_list` VALUES ('b59e65b5-dbd3-4e92-9059-05fec037353e', 'DK43-011', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.459627, 104.8635779, '2022-11-02 03:45:39', '2022-11-02 03:45:39');
INSERT INTO `data_locations_list` VALUES ('b804ca90-babb-447b-8a03-811bef1fe01d', 'DK01-136', 'CEE', 'ឧកញ្ញា ឈឹម បញ្ញា', '44464', '630 kVA ( Fuji )', 'LV', 'បុរី ច័ន្ទខាស់សល', 'f6d1d9f6-ce25-4044-bde1-78914678dd0a.jpg', NULL, 11.496249, 104.873534, '2022-11-02 03:45:20', '2022-11-16 11:23:17');
INSERT INTO `data_locations_list` VALUES ('b9c1aa50-5589-41cf-bc4d-360e7b32c982', 'DK20-099', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ឃ្លាំង ដែក', NULL, NULL, 11.5042542, 104.8208339, '2022-11-02 03:46:00', '2022-11-02 03:46:00');
INSERT INTO `data_locations_list` VALUES ('bc03d171-1fc4-408e-ab1b-6aaeaa99fea8', 'DK41-037', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០១', NULL, '630 kVA ( Thibidi )', 'LV', NULL, NULL, NULL, 11.48446, 104.875195, '2022-11-02 03:45:14', '2022-11-02 03:45:14');
INSERT INTO `data_locations_list` VALUES ('bd6a4410-1732-494d-ad02-5176d6ebf918', 'DK1-40', NULL, 'ឈាវ ប៉ៃជូ', NULL, '400kVA (Thaipat)', 'MV 10/5A', NULL, NULL, NULL, 11.4985553, 104.8713838, '2022-11-02 03:45:34', '2022-11-02 03:45:34');
INSERT INTO `data_locations_list` VALUES ('bd9492ca-9bbd-47a7-b47f-03c133ff80ac', 'DK10-047', NULL, NULL, NULL, '400kVA (Fuji)', 'MV 10/5A', NULL, NULL, NULL, 11.5008183, 104.876021, '2022-11-02 03:45:51', '2022-11-02 03:45:51');
INSERT INTO `data_locations_list` VALUES ('be34e0b4-f2a1-4d8c-b52d-88067778d250', 'DK9-003', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4637446, 104.844492, '2022-11-02 03:45:35', '2022-11-02 03:45:35');
INSERT INTO `data_locations_list` VALUES ('bedf31ed-c5b6-4235-af0f-c8229d9a37ba', 'DK01-139', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ទ្រី គីម', NULL, NULL, 11.4882867, 104.8645804, '2022-11-02 03:45:42', '2022-11-02 03:45:42');
INSERT INTO `data_locations_list` VALUES ('bf77bc62-e62f-4d24-9a7d-bffa98e4b222', 'DK16-04', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី ពិភពថ្មី ឬស្សីសាញ់', NULL, NULL, 11.5066828, 104.871821, '2022-11-02 03:45:49', '2022-11-02 03:45:49');
INSERT INTO `data_locations_list` VALUES ('c15b136e-b728-44b1-8171-cd1f02148f92', 'DK01-135', NULL, 'លៀក លីដា', NULL, '400kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.485857, 104.8650491, '2022-11-02 03:45:43', '2022-11-02 03:45:43');
INSERT INTO `data_locations_list` VALUES ('c1d8f7ab-5795-47dc-afcb-32ff0c18dedb', 'DK48-57', NULL, 'ជុង មេនយ៉ុង', NULL, '630kVA (Indoor)', 'MV 20/5A', NULL, NULL, NULL, 11.4949968, 104.8284923, '2022-11-02 03:45:53', '2022-11-02 03:45:53');
INSERT INTO `data_locations_list` VALUES ('c3de951a-be29-4b9c-96f6-9bdcaa49f1fa', 'DK41-056', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៥', NULL, '400 kVA ( Thibidi )', 'LV', NULL, NULL, NULL, 11.486234, 104.876864, '2022-11-02 03:45:16', '2022-11-02 03:45:16');
INSERT INTO `data_locations_list` VALUES ('c408fc8b-9837-4a67-a087-fb7276c15c87', 'DK40-105', NULL, NULL, NULL, '315kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4903596, 104.8439673, '2022-11-02 03:45:57', '2022-11-02 03:45:57');
INSERT INTO `data_locations_list` VALUES ('c80c36f0-7ef6-4bf8-b7a1-afd760c7dbc9', 'DK20-97', NULL, NULL, NULL, '315kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.5033185, 104.8151909, '2022-11-02 03:46:10', '2022-11-02 03:46:10');
INSERT INTO `data_locations_list` VALUES ('c88406f8-571c-459e-8f3b-83b0a97e164d', 'DK41-043', NULL, 'អ៊ឹង ប៉ុនប៉េង ទី៦', NULL, '630kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4869012, 104.8738226, '2022-11-02 03:45:47', '2022-11-02 03:45:47');
INSERT INTO `data_locations_list` VALUES ('c9565ceb-a849-4fa5-ad8f-676ee768cbee', 'DK19-274', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ២', NULL, NULL, 11.4909033, 104.8102848, '2022-11-02 03:46:04', '2022-11-02 03:46:04');
INSERT INTO `data_locations_list` VALUES ('cab5317c-2673-4c38-9ac5-a039560678e6', 'DK2-057', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4897587, 104.8553962, '2022-11-02 03:45:29', '2022-11-02 03:45:29');
INSERT INTO `data_locations_list` VALUES ('cac93935-da4f-4812-896c-9352e93511af', 'DK17-003', NULL, NULL, NULL, '100kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4728266, 104.8150514, '2022-11-02 03:46:03', '2022-11-02 03:46:03');
INSERT INTO `data_locations_list` VALUES ('cc577bbd-925e-4626-867e-2177d0060034', 'DK17-004', NULL, NULL, NULL, '315kVA (Thai Maxwell)', 'MV 10/5A', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4723393, 104.8149857, '2022-11-02 03:46:02', '2022-11-02 03:46:02');
INSERT INTO `data_locations_list` VALUES ('cce11406-6659-48ab-a5bd-182abdb96e84', 'DK3-049', NULL, NULL, NULL, '630kVA (Fuji)', 'LV', 'បុរី ធីវីស្តា គម្រោង៦', NULL, NULL, 11.4687614, 104.8444689, '2022-11-02 03:45:24', '2022-11-02 03:45:24');
INSERT INTO `data_locations_list` VALUES ('cce6a644-87a3-46b4-a668-be5ebdbddca7', 'DK20-146', NULL, NULL, NULL, '400kVA (Thai Maxwell)', 'LV', NULL, NULL, NULL, 11.4993465, 104.8193198, '2022-11-02 03:46:00', '2022-11-02 03:46:00');
INSERT INTO `data_locations_list` VALUES ('ccee64d5-6f2e-40ae-8d5f-9d9b333b7f6e', 'DK20-013', NULL, NULL, NULL, '160kVA (ThiraThai)', 'LV', 'រោងចក្រ​ កាត់ដេរ', NULL, NULL, 11.503262, 104.8157642, '2022-11-02 03:46:09', '2022-11-02 03:46:09');
INSERT INTO `data_locations_list` VALUES ('ce2e5b2b-32cc-4afa-b986-972c1ace3f6a', 'DK41-042', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី៥', NULL, '630kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.486887, 104.8738541, '2022-11-02 03:45:47', '2022-11-02 03:45:47');
INSERT INTO `data_locations_list` VALUES ('ce57f194-5047-4441-a473-8b6b838578db', 'DK9-174', NULL, NULL, NULL, '315kVA (No Brand)', 'MV 10/5A', NULL, NULL, NULL, 11.4602178, 104.8475058, '2022-11-02 03:45:37', '2022-11-02 03:45:37');
INSERT INTO `data_locations_list` VALUES ('cedce9b1-c078-47d9-a59b-932ad1cc6982', 'DK9-143', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4647047, 104.8525081, '2022-11-02 03:45:39', '2022-11-02 03:45:39');
INSERT INTO `data_locations_list` VALUES ('d0d25f12-2dd2-40ae-992b-38ab1ec168a0', 'DK08-107', NULL, NULL, NULL, '400kVA (Fuji)', 'LV', 'បុរី', NULL, NULL, 11.494089, 104.8590517, '2022-11-02 03:45:41', '2022-11-02 03:45:41');
INSERT INTO `data_locations_list` VALUES ('d1dc9fe9-a0cf-463a-ba85-3847fe0d342c', 'DK1-072', 'សេង លី', 'សាង វាសនា', NULL, '400kVA (Fuji)', 'LV', 'បុរី ធីវីស្តារ ទី៥', NULL, NULL, 11.4946853, 104.8649542, '2022-11-02 03:45:31', '2022-11-02 03:45:31');
INSERT INTO `data_locations_list` VALUES ('d26be7f1-deb0-4c98-94cb-6f9bce9ddc3f', 'DK10-082', NULL, NULL, NULL, '1250kVA (EMAX / Indoor )', 'LV', 'បុរី Chip Mong', NULL, NULL, 11.5013962, 104.8786137, '2022-11-02 03:45:48', '2022-11-02 03:45:48');
INSERT INTO `data_locations_list` VALUES ('d399050f-30c2-47e1-8386-3d17f8b4a6f9', 'DK38-036', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.5003436, 104.8380695, '2022-11-02 03:45:54', '2022-11-02 03:45:54');
INSERT INTO `data_locations_list` VALUES ('d7fdaaad-9331-43e4-801e-17cb8b38757e', 'DK05-048', NULL, 'សុង ឡាយ', NULL, '800kVA', 'MV 20/5A', NULL, NULL, NULL, 11.462587, 104.8327526, '2022-11-02 03:45:35', '2022-11-02 03:45:35');
INSERT INTO `data_locations_list` VALUES ('d87549f7-fc1e-4729-94b9-d9116f0ffebf', 'DK16-220', NULL, NULL, NULL, '100kVA (Transfix)', 'LV', 'PTT វត្តឬស្សីសាញ់', NULL, NULL, 11.5036691, 104.8742357, '2022-11-02 03:45:50', '2022-11-02 03:45:50');
INSERT INTO `data_locations_list` VALUES ('dbf46e35-4005-4b88-9e60-2ae8b1ee474b', 'DK40-363', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី គៀង ហ៊ត', NULL, NULL, 11.4815209, 104.8478692, '2022-11-02 03:45:25', '2022-11-02 03:45:25');
INSERT INTO `data_locations_list` VALUES ('dc4808ea-ac19-4d9b-b360-0df8a93301fa', 'DK41-059', 'DK', 'អ៊ឹង ប៉ុនប៉េង ទី១៨', NULL, '630kVA (Thibidi)', 'LV', 'SUN-ALPS (Cambodia) Co,LTD', NULL, NULL, 11.4873329, 104.8678011, '2022-11-02 03:45:44', '2022-11-02 03:45:44');
INSERT INTO `data_locations_list` VALUES ('dd1f0cc7-67b6-4ba7-aea0-bd5a54e47e47', 'DK48-091', NULL, NULL, NULL, '400kVA (Thaipat)', 'LV', NULL, NULL, NULL, 11.5020195, 104.8263053, '2022-11-02 03:45:59', '2022-11-02 03:45:59');
INSERT INTO `data_locations_list` VALUES ('dd74c966-ca5b-42fc-8c9a-1f077b5d8b8c', 'DK40-249', NULL, NULL, NULL, '400kVA (Thibidi)', 'LV', 'បុរី វីខេ (VK)', NULL, NULL, 11.4836711, 104.8480208, '2022-11-02 03:45:26', '2022-11-02 03:45:26');
INSERT INTO `data_locations_list` VALUES ('deeb15d2-abb1-4b62-ac29-e69d8150e30b', 'DK21-030', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.4833284, 104.8403805, '2022-11-02 03:45:51', '2022-11-02 03:45:51');
INSERT INTO `data_locations_list` VALUES ('e18367e4-4f32-446c-a52a-45e5ce19a429', 'DK20-64', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'រោងចក្រ', NULL, NULL, 11.5033478, 104.8156013, '2022-11-02 03:46:09', '2022-11-02 03:46:09');
INSERT INTO `data_locations_list` VALUES ('e370ee0d-d888-4b4a-b777-350635ecec5d', 'DK25-176', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4976301, 104.8073716, '2022-11-02 03:46:06', '2022-11-02 03:46:06');
INSERT INTO `data_locations_list` VALUES ('e49bc934-ac50-40de-9d66-ff8e68514b2a', 'DK20-062', NULL, NULL, NULL, '400kVA', 'MV 10/5A', 'រោងចក្រកាត់ដេរ', NULL, NULL, 11.5077509, 104.8208493, '2022-11-02 03:46:08', '2022-11-02 03:46:08');
INSERT INTO `data_locations_list` VALUES ('e4cf4551-b5dd-44d2-b7f6-8c35fdea3a5a', 'DK19-159', NULL, NULL, NULL, '100kVA (Fuji)', 'LV', 'រោងចក្រ កាត់ដេរ', NULL, NULL, 11.4926154, 104.8053633, '2022-11-02 03:46:05', '2022-11-02 03:46:05');
INSERT INTO `data_locations_list` VALUES ('e5572c1d-28a6-4b2e-905c-1af2a09f20d9', 'DK2-126', NULL, 'លឹម ហុង', NULL, '400kVA (Precise)', 'LV', NULL, NULL, NULL, 11.4928704, 104.8611921, '2022-11-02 03:45:30', '2022-11-02 03:45:30');
INSERT INTO `data_locations_list` VALUES ('e64e52e3-6a62-4f8b-857d-61eb19f38a8c', 'DK42-023', NULL, NULL, NULL, 'គ្មានលេខ គ្មានឈ្មោះ', 'LV', 'ចែកចាយ', NULL, NULL, 11.475287, 104.8676603, '2022-11-02 03:45:45', '2022-11-02 03:45:45');
INSERT INTO `data_locations_list` VALUES ('e64eb5f7-ceca-43c1-b2e1-a162f8df997e', 'DK21-033', 'CEE', 'ឧកញ្ញា ឈាង រ័ត្ន', '44624', '250kVA (Full Light)', 'LV', 'បុរី បុស្បា', NULL, NULL, 11.4739323, 104.8372635, '2022-11-02 03:45:24', '2022-11-02 03:45:24');
INSERT INTO `data_locations_list` VALUES ('e7713927-7c6f-41d5-838e-7fc0df31d693', 'DK01-050', NULL, NULL, NULL, '800kVA (Thaipat)', 'MV 20/5A', NULL, NULL, NULL, 11.4999572, 104.8686101, '2022-11-02 03:45:49', '2022-11-02 03:45:49');
INSERT INTO `data_locations_list` VALUES ('ea2df1f7-e070-48af-983f-b77381c255cf', 'DK01-195', 'DK', 'អ៊ឹង ប៉ុនប៉េង', NULL, '630kVA (Fuji)', 'LV', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.483048, 104.8650415, '2022-11-02 03:45:44', '2022-11-02 03:45:44');
INSERT INTO `data_locations_list` VALUES ('ea868193-090a-41da-927c-9ce5a616a96a', 'DK1-039 (ទី1)', NULL, NULL, NULL, '630kVA (ABB)', 'MV 75/5A', 'រោងចក្រ ទឹកកក ប្រការ', NULL, NULL, 11.4946949, 104.8673179, '2022-11-02 03:45:32', '2022-11-02 03:45:32');
INSERT INTO `data_locations_list` VALUES ('eb028fbf-1e18-44b1-a18d-6eb4cfaec46f', 'DK01-074', NULL, NULL, NULL, '630kVA (EMAX)', 'MV 15/5A', 'បុរី Chip Mong 50M', NULL, NULL, 11.4957896, 104.8753297, '2022-11-02 03:45:48', '2022-11-02 03:45:48');
INSERT INTO `data_locations_list` VALUES ('eb9debbf-c9cd-4492-9bb4-b98de01b60a2', 'DK48-177', 'CEE', NULL, '44367', '630kVA (Fuji)', 'MV 15/5A', 'ឃ្លាំង កាត់ដេរ', NULL, NULL, 11.5019906, 104.8274694, '2022-11-02 03:45:59', '2022-11-02 03:45:59');
INSERT INTO `data_locations_list` VALUES ('ece434cb-5c35-4883-ac27-fb29240a1cc3', 'DK45-077', NULL, NULL, NULL, '200kVA (Precise)', 'LV', 'ឃ្លាំង DI ZHIZAO Co.,LTD', NULL, NULL, 11.4794474, 104.8729905, '2022-11-02 03:45:46', '2022-11-02 03:45:46');
INSERT INTO `data_locations_list` VALUES ('ece824b2-d2ec-41b2-96ed-1262df4074cd', 'DK41-052', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១២', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.484587, 104.874564, '2022-11-02 03:45:14', '2022-11-02 03:45:14');
INSERT INTO `data_locations_list` VALUES ('edd8d4ec-f3cc-4347-b1bd-f95f863e3865', 'DK2-128', NULL, 'គង់ លុច', NULL, '160kVA (Fuji)', 'LV', NULL, NULL, NULL, 11.4877548, 104.8535317, '2022-11-02 03:45:29', '2022-11-02 03:45:29');
INSERT INTO `data_locations_list` VALUES ('eeee5ce6-057e-4dba-9bdc-e3aed112fa1c', 'DK7-068', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'Tela Gastation វត្តស្លែង', NULL, NULL, 11.4631955, 104.8136, '2022-11-02 03:46:01', '2022-11-02 03:46:01');
INSERT INTO `data_locations_list` VALUES ('ef35d70d-171d-48b4-beff-340e1550888e', 'DK17-02', NULL, NULL, NULL, '100kVA (Precise)', 'LV', 'ផែស្អួត', NULL, NULL, 11.4719408, 104.8148945, '2022-11-02 03:46:02', '2022-11-02 03:46:02');
INSERT INTO `data_locations_list` VALUES ('ef89a510-f0b9-411b-89eb-20e3648baed8', 'DK19-273', NULL, NULL, NULL, '400kVA (Transfix)', 'LV', 'បុរី ពិភពថ្មី ២', NULL, NULL, 11.491752, 104.8129596, '2022-11-02 03:46:04', '2022-11-02 03:46:04');
INSERT INTO `data_locations_list` VALUES ('ef9d9b50-3118-4236-b220-8b18bf52b88d', 'DK01-041', NULL, 'អ៊ី ហ៊ួហុង', NULL, '200kVA (Thibidi)', 'LV', NULL, NULL, NULL, 11.4906908, 104.865023, '2022-11-02 03:45:42', '2022-11-02 03:45:42');
INSERT INTO `data_locations_list` VALUES ('f08b6d10-dfeb-4c8e-9506-21b50ae4cc85', 'DK02-131', NULL, 'ធុន ស្រស់', NULL, '800kVA (XYZ)', 'MV 20/5A', NULL, NULL, NULL, 11.4897554, 104.8651615, '2022-11-02 03:45:42', '2022-11-02 03:45:42');
INSERT INTO `data_locations_list` VALUES ('f0c8b735-dfdb-45f7-83ed-c40c95d1fa0b', 'DK1-062', NULL, NULL, NULL, '400kVA (Precise)', 'LV', 'បុរី លឹម តិច ហេង', NULL, NULL, 11.4960495, 104.8677511, '2022-11-02 03:45:33', '2022-11-02 03:45:33');
INSERT INTO `data_locations_list` VALUES ('f132c8cb-d899-46a3-a839-a5df8c646fec', 'DK3-048', NULL, 'លី កញ្ញរិទ្ធ', NULL, '250kVA (EMAX)', 'LV', 'ក្រឡុក ស៊ីម៉ង', NULL, NULL, 11.4777286, 104.8451552, '2022-11-02 03:45:24', '2022-11-02 03:45:24');
INSERT INTO `data_locations_list` VALUES ('f1a73ba9-e93a-4c34-8685-459e83491b16', 'DK41-048', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១០', NULL, '630 kVA ( Thaipat', 'LV', 'រោងចក្រ', NULL, NULL, 11.484592, 104.874533, '2022-11-02 03:45:14', '2022-11-02 03:45:14');
INSERT INTO `data_locations_list` VALUES ('f3420c1e-1a5b-4d0a-abd2-19135f9c357b', 'DK41-055', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី១៤', NULL, '630 kVA ( Fuji )', 'LV', NULL, NULL, NULL, 11.493302, 104.872099, '2022-11-02 03:45:13', '2022-11-02 03:45:13');
INSERT INTO `data_locations_list` VALUES ('f34ff491-4581-4ad4-8433-2a415262fa40', 'DK45-072', NULL, 'សហគ្រាស ស៊ិន ឡុងតៃ', NULL, '630kVA x2pcs (Fuji)', 'MV 40/5A', 'រោងចក្រ', NULL, NULL, 11.4798847, 104.8744224, '2022-11-02 03:45:46', '2022-11-02 03:45:46');
INSERT INTO `data_locations_list` VALUES ('f3819bfd-a4a2-4256-8c84-7ea9c50c8a47', 'DK40-213', NULL, NULL, NULL, '200kVA (Thibidi)', 'LV', 'រោងចក្រផលិតពូក', NULL, NULL, 11.4939076, 104.8477599, '2022-11-02 03:45:57', '2022-11-02 03:45:57');
INSERT INTO `data_locations_list` VALUES ('f544bb49-405b-44fc-83d9-8be8b9c289ec', 'PE 01', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.5060168, 104.8861031, '2022-11-02 03:45:50', '2022-11-02 03:45:50');
INSERT INTO `data_locations_list` VALUES ('f6a79387-5916-4a41-ab5e-68263c3edfbe', 'DK2-139', NULL, 'លឹម ហេង', NULL, '100kVA (Fuji)', 'LV', 'ផ្ទះអតិថិជន', NULL, NULL, 11.4857565, 104.8515405, '2022-11-02 03:45:28', '2022-11-02 03:45:28');
INSERT INTO `data_locations_list` VALUES ('f90d646e-8610-4bbd-8375-3704024956e0', 'LBS តាបោះ', NULL, NULL, NULL, NULL, 'LV', NULL, NULL, NULL, 11.4658883, 104.8382995, '2022-11-02 03:45:52', '2022-11-02 03:45:52');
INSERT INTO `data_locations_list` VALUES ('f985119e-6be9-4cfb-8748-378e2630cd59', 'DK48-58', NULL, NULL, NULL, '250kVA (Thibidi)', 'LV', 'រោងចក្រផលិតទឹកពិសារដប ហ្គោលស្តា', NULL, NULL, 11.4968199, 104.8324415, '2022-11-02 03:45:53', '2022-11-02 03:45:53');
INSERT INTO `data_locations_list` VALUES ('fa025302-97ad-48a0-b7ff-2d438c3bd439', 'DK44-016', NULL, NULL, NULL, '160kVA (Thibidi)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4554677, 104.8557144, '2022-11-02 03:45:38', '2022-11-02 03:45:38');
INSERT INTO `data_locations_list` VALUES ('fc22c0fb-098b-4ec3-835e-56ed67ee4570', 'DK21-001', NULL, NULL, NULL, '160kVA (Fuji)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4889699, 104.8382451, '2022-11-02 03:45:52', '2022-11-02 03:45:52');
INSERT INTO `data_locations_list` VALUES ('fcec33bb-4305-4973-be4c-c23063622d52', 'DK01-203', NULL, NULL, NULL, '160 kVA ( Thibid )', 'LV', NULL, NULL, NULL, 11.497587, 104.873316, '2022-11-02 03:45:20', '2022-11-02 03:45:20');
INSERT INTO `data_locations_list` VALUES ('fdbfc75e-2532-407d-a1c1-a589f8debe82', 'DK9-207', NULL, 'លី ហុយឈុន', NULL, '250kVA (ThiraThai)', 'LV', NULL, NULL, NULL, 11.4638432, 104.8556131, '2022-11-02 03:45:38', '2022-11-02 03:45:38');
INSERT INTO `data_locations_list` VALUES ('ff2112ac-ce51-47fb-af5e-db26046479f4', 'DK41-040', 'DK', 'អ៊ឺង ប៊ុនប៉េង​ ទី០៣', NULL, '320 kVA ( Thibidi )', 'LV', NULL, NULL, NULL, 11.483524, 104.876814, '2022-11-02 03:45:15', '2022-11-02 03:45:15');
INSERT INTO `data_locations_list` VALUES ('ff5fe5b7-1874-4efe-9fcf-aa67ddf04f46', 'DK25-165', NULL, NULL, NULL, '400kVA (Fuji', 'LV', NULL, NULL, NULL, 11.5026066, 104.8111032, '2022-11-02 03:46:10', '2022-11-02 03:46:10');
INSERT INTO `data_locations_list` VALUES ('ff9817bb-155c-4b42-8d87-ac8e9a1c3996', 'DK01-064', NULL, NULL, NULL, '50kVA (Thai Maxwell)', 'LV', 'ចែកចាយ', NULL, NULL, 11.4852942, 104.8650498, '2022-11-02 03:45:43', '2022-11-02 03:45:43');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_user_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_user
-- ----------------------------
INSERT INTO `data_user` VALUES ('415c9d95-d912-4e3a-9ca5-363eb35682f5', 'admin', 'admin', 'admin', '123456', 'Admin', '49b30987-a731-4dff-94de-f1f2e92917a5.jpg', 'SP1A.210812.016', 11.5775032, 104.9161901, '2022-10-29 04:20:37', '2022-12-06 04:44:51');
INSERT INTO `data_user` VALUES ('a3a0cf25-7e86-4fd8-bb0d-266a81c97696', 'Moderator', '012520494', 'moderator', '123456', 'Moderator', NULL, NULL, NULL, NULL, '2022-11-15 11:07:28', '2022-11-16 11:13:26');
INSERT INTO `data_user` VALUES ('b55dd93a-e70d-4e4b-97de-fa4bc6f62bac', 'User', '0969695651', 'user', '123456', 'User', NULL, 'SP1A.210812.016', 11.5878236, 104.9293503, '2022-11-15 02:19:27', '2022-12-01 13:05:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 483 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_user_active
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
