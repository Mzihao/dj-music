/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : music_db

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 13/05/2022 22:47:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 歌曲分类', 6, 'add_label');
INSERT INTO `auth_permission` VALUES (22, 'Can change 歌曲分类', 6, 'change_label');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 歌曲分类', 6, 'delete_label');
INSERT INTO `auth_permission` VALUES (24, 'Can view 歌曲分类', 6, 'view_label');
INSERT INTO `auth_permission` VALUES (25, 'Can add 歌曲信息', 7, 'add_song');
INSERT INTO `auth_permission` VALUES (26, 'Can change 歌曲信息', 7, 'change_song');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 歌曲信息', 7, 'delete_song');
INSERT INTO `auth_permission` VALUES (28, 'Can view 歌曲信息', 7, 'view_song');
INSERT INTO `auth_permission` VALUES (29, 'Can add 歌曲动态', 8, 'add_dynamic');
INSERT INTO `auth_permission` VALUES (30, 'Can change 歌曲动态', 8, 'change_dynamic');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 歌曲动态', 8, 'delete_dynamic');
INSERT INTO `auth_permission` VALUES (32, 'Can view 歌曲动态', 8, 'view_dynamic');
INSERT INTO `auth_permission` VALUES (33, 'Can add 歌曲评论', 9, 'add_comment');
INSERT INTO `auth_permission` VALUES (34, 'Can change 歌曲评论', 9, 'change_comment');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 歌曲评论', 9, 'delete_comment');
INSERT INTO `auth_permission` VALUES (36, 'Can view 歌曲评论', 9, 'view_comment');
INSERT INTO `auth_permission` VALUES (37, 'Can add user', 10, 'add_myuser');
INSERT INTO `auth_permission` VALUES (38, 'Can change user', 10, 'change_myuser');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user', 10, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (40, 'Can view user', 10, 'view_myuser');
INSERT INTO `auth_permission` VALUES (41, 'Can add captcha store', 11, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (42, 'Can change captcha store', 11, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (43, 'Can delete captcha store', 11, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (44, 'Can view captcha store', 11, 'view_captchastore');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (11, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'index', 'comment');
INSERT INTO `django_content_type` VALUES (8, 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES (6, 'index', 'label');
INSERT INTO `django_content_type` VALUES (7, 'index', 'song');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-04-19 21:44:56.181924');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2021-04-19 21:44:58.025660');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2021-04-19 21:45:00.299911');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2021-04-19 21:45:06.184295');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2021-04-19 21:45:06.258926');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2021-04-19 21:45:06.325492');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2021-04-19 21:45:06.383806');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2021-04-19 21:45:06.431952');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2021-04-19 21:45:06.489917');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2021-04-19 21:45:06.549951');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2021-04-19 21:45:06.607992');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2021-04-19 21:45:07.724737');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2021-04-19 21:45:07.796262');
INSERT INTO `django_migrations` VALUES (14, 'user', '0001_initial', '2021-04-19 21:45:10.274126');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2021-04-19 21:45:18.648545');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2021-04-19 21:45:20.976768');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-19 21:45:21.039843');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-04-19 21:45:21.098882');
INSERT INTO `django_migrations` VALUES (19, 'index', '0001_initial', '2021-04-19 21:45:23.281839');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2021-04-19 21:45:28.444725');
INSERT INTO `django_migrations` VALUES (21, 'user', '0002_auto_20201210_1253', '2021-04-19 21:45:30.360929');
INSERT INTO `django_migrations` VALUES (22, 'captcha', '0001_initial', '2021-05-05 11:15:37.785975');
INSERT INTO `django_migrations` VALUES (23, 'user', '0002_auto_20210505_1915', '2021-05-05 11:15:38.289016');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0ej94lvtlvf0gaq71ul7xsn4u13eorft', '.eJxVjc0OwiAQBt9lzyRSlv9XEWOKgCGpjbHlYBreXWgv9TJ7mf1mg_c0fu9TXlaw1w1yADsMBJY8P-MHLLiiUHtXBDOdXqdLOyhZY4jKFaMSAoF5fMVdF0aFxvTA_kSlK5Jx34w17wZFSylUcrTYX4pHHZsvtDp43uVJYK9JdtriljOot_oDcAE6Cw:1lZ8IE:QYXKchgstFqVRezSTeAe9tHlnsfdit58QCCfNt0pY5A', '2021-05-05 08:33:06.312988');
INSERT INTO `django_session` VALUES ('0s7ks6497iurtm7mlytyx457utvlm19u', '.eJxVT8lugzAQ_RefEfW-cOy9t95KhcbYTkgoVIAPVZR_77iJKrg8jz1v8410kLdzl9e4dEMgDWGk2r956K9xKotwgek01_08bcvg60Kpn9u1fptDHF-f3IPBGdZzUasEzhtwYJTjmoGXnIJVfQrWJAHWcOm8Y0ZC0poKCd5RUF4znbRXHk2_R_jpxmHdSPNxI6WsrMg6TKe4YMA7TFckTfAV8dZmmRi02SmT2oyJps1GW4lzNBZnZxOyt-GPTWUjOLlXD1fGdrZIFdajjLuC3qYXPITmiCGiq8P2-1zlTEBMvSgiqtusufS7LNFQ-p_FD1Ey2oh8Zc0Dj_9RoqRpfugtsffn_RdhGYnS:1lYmXJ:NmKm-0HnGE68GnDki2KMH72R551ukeYNlG_WmDjTRB8', '2021-05-04 09:19:13.177310');
INSERT INTO `django_session` VALUES ('0vsmvl8zxlgvzqzetampilnt6m0p33kg', '.eJxlUNFqwzAM_JWh50BlybZs_0ozSpPYI9CV0TQPo-TfK6fQJezlbOzT3eke8HM5_54u43SHdHzAOEAy1MA0Xr_yDRK0s5co7RxNr-g7Ymjgev7O65_r2eirp9LOoQxR74FFGfdxZaBLhmFpXsJ7XZtDVr4L8sKtri2O1VM8bbRssvTWMmYnJhw6jUOxYhfKQQ_2pDjkml7KPneUQbH0XIfQawKy3caLE-KfF--8XCHUAcy4ru62wkK1kFBqWbqg_6g5-lDpmP-1YxNGWD6XJ3tlb8w:1lZ82v:VwnrUlQLRneTRLdVUU_Kx7GD-b6X-97eO3E1l7wPdVQ', '2021-05-05 08:17:17.166134');
INSERT INTO `django_session` VALUES ('1qvszzxca370fiavfqw14971pexforki', '.eJxVjEsKwzAMBe-itRe2_PdVmlDiT4ohDaWJFyX47hXNptkMD2mYA17L9Lkvddsh3A6oGYJhsNX1Ud4QYGhaSTU0h0XTLjwBg3V6lvOHGInCZTJi5MRsLRl7_RlcBa6gs7Mr8BI21tuheZGIJqK8hJMUdDU4U3LOnraT_2EdhIQ-9i-47Tgn:1lZ8cD:5iQSXgHzmJmi3SFzna9OoraiNwsPsZqOMV6JYoMbg2o', '2021-05-05 08:53:45.025735');
INSERT INTO `django_session` VALUES ('31vn352qmvl0hmqt7ypjdnfqcbvij3wj', '.eJxVj8sKwjAQRX9FZl0wncn7V4xIH4kEahHbLKT0302qSLs5s7l3zswCz6F534Y4zWAvC8QebF1XMMXx7l9gwSVFunVJoClsdTjnQRIze69cMioQVDA2D7_FhVF9ZuiolJh0SSJvc2KOW4KRZQzW6ueig0sEZLnAfKFEsV-skGqXdOiylHstT-WOTpc485ma1M7CLTN_Cx4kuVzyQqsv9xIeBJWfJB52cYT1un4AZaNWrQ:1lq8im:kOMJcHNrSBEN94VfPVEdbDsHlUcyhL0ceacw78KbQB4', '2021-06-21 06:26:48.437978');
INSERT INTO `django_session` VALUES ('4pcwuzy1hh22z0jbmu7d00fbf7tefckz', '.eJxVzc0KgzAMB_B3ybkH2_TLPsguq4xO21Fwbqg9DPHdFxQ2vYSQ_PPLAu8-fG59nmZw1wVyB44LBlMeHnEEB75oUxtfat5S1XeBwGAIz7jtVIucplokX2zqauotGkrMeUtUynGEle3w2ZXRRsora_Z6dGVSSD-NFgdLOil-Fq_OWArEGIXVn7m8-jAe7tEpum_WL0UARjA:1lZ8OU:sMh1ktFBz65ZZKWLmBLgrd25ii2L_sGIcfoa69oqeFM', '2021-05-05 08:39:34.640920');
INSERT INTO `django_session` VALUES ('6eaiv9b8qhlb00hxbdi8vm9yib0xfm3u', '.eJyrVirISayMz8ksLlGyiq5WykxRsjLSUSrOzEtPLVKyUoopNUm1SI0pNTO1MIeQSjpKeYm5qRC5NFPjmFJLczMjoGhJJljUwMTKxEipNrYWABs-GvQ:1lZ8Je:7VniacEpUped3JVPl_bK1RAmPTsSTRBQ3nPhRiGzH4g', '2021-05-05 08:34:34.400194');
INSERT INTO `django_session` VALUES ('cvxgq4eac6kmfcxs4o6dktx89u0hhah7', '.eJxVjUEOwiAURO_y1yT-QoHCQdyIMSBgSLCatixMw92ljYnp5s3mzcwK72w_t5zmBfRlheRBdx2BOY2PMIEGUyQbnCmcqo1uiKcWTNBGH6QpSkYGBEb7DLvOlfSN8c62EgpTBO1dM5a0G8g0IlTy-8LDVx9tm5Sc4X_y_Mp2OvQ5hXqtX8c2Nwg:1layMb:YOmyTLFqPoDD_LLAui6H9eoNwdMDOzo7-zP1KJj94v4', '2021-05-10 10:21:13.271869');
INSERT INTO `django_session` VALUES ('hcam3tr6gpjuj7lwdk6usfapstmagzc9', '.eJwdyksKgCAYReG93LGDHpqPdTTLCCENqSTKfxDR3pNm34Hz4NjcPW3xyjDDgzjDcIYrpsWfMOhdWsGQ3O5LWeKhdpa0kMGS0I20JDvFi71UxVqFcuf43xU3bYN3fD9aOx6O:1lZ6b5:ypX2Mmq8ducg6M3D1DbhSE0o_gw-dUvNU1petmczRLg', '2021-05-05 06:44:27.259826');
INSERT INTO `django_session` VALUES ('lg0i4rzvm0jmn933opivezk36rgxoisr', '.eJwdykEOQDAURdGtyBsbfC1tdSsqInzSBBHagYi9K5M7uefGvvRXt_gzwDY3_AhbyByn32Y-YOFiNQlyURF_VaJCjq1f-X9ayMJFMw3axZKNyhKXg_k4caqROvHgf06lpRpP-7w_QSJ2:1laec2:qw32XUN4LzoDNfKOlJ-Z73PgHgsORexcGSfoJjW-8Rg', '2021-05-09 13:15:50.781808');
INSERT INTO `django_session` VALUES ('lyg2v2o3m7zv6tdf9m1gtbzan88c0xu0', '.eJxVj8sKwyAQRX-lzDpQnfEVf6WWkocWIQ2liYsS8u_VBEqyuW6O5-gC76H5PoY4zWBvC8QeLOcVTHF8-g9YcEmTaV2SWJdtTbjmgxTm7b12qdaBoIKxefkNl7Xu84aOyiWmXFIo2kzMcSMYWcZgrfYWnlLCG595afS-R68IkkpN4cElrMC_i9NJJgOyrGG-rEJ5lGkk7pIJnd6i6lL-1JmCs_ICQ_pUYTWs9_UHUEtWrQ:1lf2KJ:9Z9aidCcncIncYlY-eHoRpTfEQ1KCT8Sw34p-Id6WWo', '2021-05-21 15:23:39.112728');
INSERT INTO `django_session` VALUES ('tzrf4vllygdi0e6kmsfp00jhfj0ufwn3', '.eJxVjDsOwjAUBO_iGlmx4y8lfc4Q7fMHB5AjxUmFuDuylALanZl9sxnHXuajpW1eIrsywS6_GyE8U-0gPlDvKw9r3beFeFf4SRuf1phet9P9Oyhopdc6w5OFh9VeGgFScoDTIUdn8whnpfLkhVXIxgyjAvkBmoww2ZAm9vkC6Po32g:1leHFT:_lHucr__xotr2EIRB0XbbAHjf5IzJ59CtQvQO9Sy6uM', '2021-05-19 13:07:31.925999');
INSERT INTO `django_session` VALUES ('urt5uxzy1nzmahm3vjhvehrg7m6xdd97', '.eJxVjcsKwjAQRf9l1gHzfv2KEWmaRAK1iG0WUvLvTuumbs7Avcy5G7ym4XOf6rKCv25QE3hLYKnzI7_BQ2hWuRiazBJpR66BwDw889HpwmRoSiqL6VqPlErPGHTyczH2JzPCokbxXamiLRc8QnNkyiY0Z4o4-5UzCVlGsT9RjYtcxtOW8JRCv_UvTpY6Wg:1lafP4:xWPo0KpwfEbtdc81EPrEVfO3Efy1Jx3FoFcN8UkJTPQ', '2021-05-09 14:06:30.765778');
INSERT INTO `django_session` VALUES ('vgppfklbyhrpez1wzekb3tllo1b80zi0', '.eJxVjssKwyAQRf9l1kLN-PZXaimxahHSUJq4CMF_rzabdHMG7mXOzA7vadzuU15WsNcdcgCLBJY8P-MHLLjCo46uSKHVQSAwj694dEkwV4yS2NI1_1LKLUeo5HANw59MMe1dEWg6vU6XNpjExhBVNyV29gujQmN6sL5EZfsAuT_dYpZSqLf6BR6tOgs:1lZ8LS:gSupjlNVf9rYLS9PxGrQk7y508jRjTtRL7E-faEpc8A', '2021-05-05 08:36:26.810522');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_comment_song_id_e60ecaa2_fk_index_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES (1, '好', 'admin', '2019-05-28', 2);
INSERT INTO `index_comment` VALUES (2, '很好听1', 'admin', '2019-05-28', 2);
INSERT INTO `index_comment` VALUES (3, '2很好听', 'admin', '2019-05-28', 2);
INSERT INTO `index_comment` VALUES (4, '很好听', 'admin', '2019-05-28', 2);
INSERT INTO `index_comment` VALUES (5, '很好听，支持', '匿名用户', '2019-06-13', 7);
INSERT INTO `index_comment` VALUES (6, '支持支持', 'admin', '2019-06-19', 2);
INSERT INTO `index_comment` VALUES (7, '大赞', '匿名用户', '2019-06-19', 2);
INSERT INTO `index_comment` VALUES (8, '哈哈哈，不错', '匿名用户', '2021-04-20', 6);
INSERT INTO `index_comment` VALUES (9, '好听', 'mzh', '2021-04-20', 11);
INSERT INTO `index_comment` VALUES (10, '嗯嗯', '匿名用户', '2021-04-21', 4);
INSERT INTO `index_comment` VALUES (11, '不错', '匿名用户', '2021-04-21', 5);

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plays` int(11) NOT NULL,
  `search` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_dynamic_song_id_21bb9711_fk_index_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES (1, 29, 0, 1, 4);
INSERT INTO `index_dynamic` VALUES (2, 37, 3, 0, 12);
INSERT INTO `index_dynamic` VALUES (3, 12, 1, 1, 6);
INSERT INTO `index_dynamic` VALUES (4, 64, 0, 4, 2);
INSERT INTO `index_dynamic` VALUES (5, 141, 1, 1, 11);
INSERT INTO `index_dynamic` VALUES (6, 22, 9, 0, 13);
INSERT INTO `index_dynamic` VALUES (7, 29, 1, 0, 10);
INSERT INTO `index_dynamic` VALUES (8, 5, 1, 0, 9);
INSERT INTO `index_dynamic` VALUES (9, 11, 5, 0, 8);
INSERT INTO `index_dynamic` VALUES (10, 5, 1, 0, 5);
INSERT INTO `index_dynamic` VALUES (11, 5, 0, 0, 1);
INSERT INTO `index_dynamic` VALUES (12, 5, 0, 0, 3);
INSERT INTO `index_dynamic` VALUES (13, 5, 0, 0, 7);

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES (1, '情感天地');
INSERT INTO `index_label` VALUES (2, '摇滚金属');
INSERT INTO `index_label` VALUES (3, '经典流行');
INSERT INTO `index_label` VALUES (4, '环境心情');
INSERT INTO `index_label` VALUES (5, '午后场景');
INSERT INTO `index_label` VALUES (6, '岁月流金');
INSERT INTO `index_label` VALUES (7, '青春校园');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `languages` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release` date NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lyrics` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_song_label_id_9b9b68ed_fk_index_label_id`(`label_id`) USING BTREE,
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES (1, '爱 都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', 'songImg/1.jpg', '暂无歌词', 'songFile/1.m4a', 3);
INSERT INTO `index_song` VALUES (2, '体面', '于文文', '04:42', '《前任3：再见前任》电影插曲', '国语', '伤感', '2017-12-25', 'songImg/2.jpg', 'songLyric/2.txt', 'songFile/2.m4a', 4);
INSERT INTO `index_song` VALUES (3, '三国恋', 'Tank', '04:06', 'Fighting！生存之道', '国语', '摇滚', '2006-04-15', 'songImg/3.jpg', '暂无歌词', 'songFile/3.m4a', 2);
INSERT INTO `index_song` VALUES (4, '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', 'songImg/4.jpg', '暂无歌词', 'songFile/4.m4a', 4);
INSERT INTO `index_song` VALUES (5, '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', 'songImg/5.jpg', '暂无歌词', 'songFile/5.m4a', 1);
INSERT INTO `index_song` VALUES (6, '别再记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', 'songImg/6.jpg', '暂无歌词', 'songFile/6.m4a', 4);
INSERT INTO `index_song` VALUES (7, '爱的魔法', '金莎', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', 'songImg/7.jpg', '暂无歌词', 'songFile/7.m4a', 1);
INSERT INTO `index_song` VALUES (8, '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', 'songImg/8.jpg', '暂无歌词', 'songFile/8.m4a', 3);
INSERT INTO `index_song` VALUES (9, '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', 'songImg/9.jpg', '暂无歌词', 'songFile/9.m4a', 4);
INSERT INTO `index_song` VALUES (10, 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', 'songImg/10.jpg', '暂无歌词', 'songFile/10.m4a', 2);
INSERT INTO `index_song` VALUES (11, '好心分手', '王力宏/卢巧音', '03:00', '2 Love 致情挚爱', '国语', '伤感', '2015-07-24', 'songImg/11.jpg', 'songLyric/11.txt', 'songFile/11.m4a', 1);
INSERT INTO `index_song` VALUES (12, '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', 'songImg/12.jpg', '暂无歌词', 'songFile/12.m4a', 3);
INSERT INTO `index_song` VALUES (13, '爱过了 又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', 'songImg/13.jpg', '暂无歌词', 'songFile/13.m4a', 3);

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weChat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES (1, 'pbkdf2_sha256$216000$mZuaT9sxPUTV$zfeF9bjr9ziAiMc7vG9+ShQnDg4lcKeQSzJQIPtEKRM=', '2021-07-08 18:07:06.421040', 0, 'mzh', '', '', '', 0, 1, '2021-04-20 08:45:45.704765', '', '', '18475030859');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_groups_myuser_id_group_id_680fbae2_uniq`(`myuser_id`, `group_id`) USING BTREE,
  INDEX `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq`(`myuser_id`, `permission_id`) USING BTREE,
  INDEX `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
