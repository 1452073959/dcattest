/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : dcat

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-05-28 17:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'feather icon-bar-chart-2', '/', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'feather icon-settings', '', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', '', 'auth/users', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', '', 'auth/roles', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', '', 'auth/permissions', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', '', 'auth/menu', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', '', 'auth/logs', '2020-05-28 07:24:58', null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '用户', 'fa-adjust', '/users', '2020-05-28 08:30:43', '2020-05-28 08:30:43');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:30:07', '2020-05-28 07:30:07');
INSERT INTO `admin_operation_log` VALUES ('2', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:29:22', '2020-05-28 07:29:22');
INSERT INTO `admin_operation_log` VALUES ('3', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:30:38', '2020-05-28 07:30:38');
INSERT INTO `admin_operation_log` VALUES ('4', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:30:41', '2020-05-28 07:30:41');
INSERT INTO `admin_operation_log` VALUES ('5', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:31:25', '2020-05-28 07:31:25');
INSERT INTO `admin_operation_log` VALUES ('6', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DCnSMVTAkjDKXnQrzkc7A47svS87Vjz5xJuKD5y0\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-28 07:31:57', '2020-05-28 07:31:57');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 07:31:58', '2020-05-28 07:31:58');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:06', '2020-05-28 07:32:06');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:06', '2020-05-28 07:32:06');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:07', '2020-05-28 07:32:07');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:10', '2020-05-28 07:32:10');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:12', '2020-05-28 07:32:12');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:32:13', '2020-05-28 07:32:13');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:33:56', '2020-05-28 07:33:56');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-28 07:41:25', '2020-05-28 07:41:25');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-28 07:43:12', '2020-05-28 07:43:12');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:43:22', '2020-05-28 07:43:22');
INSERT INTO `admin_operation_log` VALUES ('18', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:43:23', '2020-05-28 07:43:23');
INSERT INTO `admin_operation_log` VALUES ('19', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 07:43:25', '2020-05-28 07:43:25');
INSERT INTO `admin_operation_log` VALUES ('20', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"pUT83va9QO0ZdVlKhug1FVYExxRjf5KtdFuWSIFv\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-28 07:43:31', '2020-05-28 07:43:31');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 07:43:32', '2020-05-28 07:43:32');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:43:36', '2020-05-28 07:43:36');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:43:42', '2020-05-28 07:43:42');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:43:44', '2020-05-28 07:43:44');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:43:45', '2020-05-28 07:43:45');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-28 07:47:04', '2020-05-28 07:47:04');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"users\",\"_token\":\"DZVycpBnAY4NC6wiyl4egXFLfQwGDEHg7mIRjzbb\"}', '2020-05-28 07:47:12', '2020-05-28 07:47:12');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-05-28 07:47:12', '2020-05-28 07:47:12');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"migrations\",\"_token\":\"DZVycpBnAY4NC6wiyl4egXFLfQwGDEHg7mIRjzbb\"}', '2020-05-28 07:47:51', '2020-05-28 07:47:51');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"migrations\"}', '2020-05-28 07:47:52', '2020-05-28 07:47:52');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dcat\",\"tb\":\"users\",\"_token\":\"DZVycpBnAY4NC6wiyl4egXFLfQwGDEHg7mIRjzbb\"}', '2020-05-28 07:47:53', '2020-05-28 07:47:53');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-05-28 07:47:54', '2020-05-28 07:47:54');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"dcat|users\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email_verified_at\",\"translation\":null,\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"remember_token\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"_token\":\"DZVycpBnAY4NC6wiyl4egXFLfQwGDEHg7mIRjzbb\"}', '2020-05-28 07:49:17', '2020-05-28 07:49:17');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-28 07:49:17', '2020-05-28 07:49:17');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-28 07:50:06', '2020-05-28 07:50:06');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-05-28 07:50:18', '2020-05-28 07:50:18');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:50:21', '2020-05-28 07:50:21');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-05-28 07:52:05', '2020-05-28 07:52:05');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-05-28 07:53:34', '2020-05-28 07:53:34');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:57:38', '2020-05-28 07:57:38');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:57:39', '2020-05-28 07:57:39');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 07:58:36', '2020-05-28 07:58:36');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-05-28 07:58:46', '2020-05-28 07:58:46');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:00:36', '2020-05-28 08:00:36');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:00:53', '2020-05-28 08:00:53');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:01:59', '2020-05-28 08:01:59');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:02:40', '2020-05-28 08:02:40');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:03:04', '2020-05-28 08:03:04');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:03:57', '2020-05-28 08:03:57');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:03', '2020-05-28 08:07:03');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:11', '2020-05-28 08:07:11');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:20', '2020-05-28 08:07:20');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:21', '2020-05-28 08:07:21');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:33', '2020-05-28 08:07:33');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:49', '2020-05-28 08:07:49');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:07:59', '2020-05-28 08:07:59');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:08:49', '2020-05-28 08:08:49');
INSERT INTO `admin_operation_log` VALUES ('58', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 08:08:49', '2020-05-28 08:08:49');
INSERT INTO `admin_operation_log` VALUES ('59', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"lEV2O74snnmijKUg8jrLIeyo7B6i72UYOe8hmN4m\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-28 08:09:02', '2020-05-28 08:09:02');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:09:03', '2020-05-28 08:09:03');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:10:58', '2020-05-28 08:10:58');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-28 08:13:34', '2020-05-28 08:13:34');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-28 08:13:36', '2020-05-28 08:13:36');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:13:37', '2020-05-28 08:13:37');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:13:37', '2020-05-28 08:13:37');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:13:39', '2020-05-28 08:13:39');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:13:52', '2020-05-28 08:13:52');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:13:53', '2020-05-28 08:13:53');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:00', '2020-05-28 08:14:00');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:02', '2020-05-28 08:14:02');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:04', '2020-05-28 08:14:04');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:14:06', '2020-05-28 08:14:06');
INSERT INTO `admin_operation_log` VALUES ('73', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:06', '2020-05-28 08:14:06');
INSERT INTO `admin_operation_log` VALUES ('74', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:07', '2020-05-28 08:14:07');
INSERT INTO `admin_operation_log` VALUES ('75', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DCO3W8qdoZq2agAnVdY75Tvo0Alna3gsLQvnOT4y\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-28 08:14:10', '2020-05-28 08:14:10');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:14:11', '2020-05-28 08:14:11');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:17:03', '2020-05-28 08:17:03');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:19:59', '2020-05-28 08:19:59');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 08:20:17', '2020-05-28 08:20:17');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:30:09', '2020-05-28 08:30:09');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-adjust\",\"uri\":\"\\/users\",\"roles\":[null],\"permissions\":null,\"_token\":\"ui8xajOEZNNr0wGUaCxaCQRUmdQZTjUSfPlzOQIl\"}', '2020-05-28 08:30:43', '2020-05-28 08:30:43');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:30:43', '2020-05-28 08:30:43');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-28 08:30:45', '2020-05-28 08:30:45');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:30:47', '2020-05-28 08:30:47');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:30:49', '2020-05-28 08:30:49');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"demo2\",\"email\":\"admin@qq.com\",\"email_verified_at\":\"2020-05-04 09:00:55\",\"password\":\"123******\",\"remember_token\":\"plodad\",\"_token\":\"ui8xajOEZNNr0wGUaCxaCQRUmdQZTjUSfPlzOQIl\",\"_previous_\":\"http:\\/\\/dcat.test\\/admin\\/users\"}', '2020-05-28 08:31:01', '2020-05-28 08:31:01');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:31:01', '2020-05-28 08:31:01');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/users', 'GET', '127.0.0.1', '[]', '2020-05-28 08:31:03', '2020-05-28 08:31:03');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:31:06', '2020-05-28 08:31:06');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:31:08', '2020-05-28 08:31:08');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:31:10', '2020-05-28 08:31:10');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:40:34', '2020-05-28 08:40:34');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:40:35', '2020-05-28 08:40:35');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 08:40:38', '2020-05-28 08:40:38');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-28 09:06:40', '2020-05-28 09:06:40');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 09:06:41', '2020-05-28 09:06:41');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:06:43', '2020-05-28 09:06:43');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:06:53', '2020-05-28 09:06:53');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:07:03', '2020-05-28 09:07:03');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:08:54', '2020-05-28 09:08:54');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:08:58', '2020-05-28 09:08:58');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:09:03', '2020-05-28 09:09:03');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:09:59', '2020-05-28 09:09:59');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:10:03', '2020-05-28 09:10:03');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:11:22', '2020-05-28 09:11:22');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:11:35', '2020-05-28 09:11:35');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:11:37', '2020-05-28 09:11:37');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:12:14', '2020-05-28 09:12:14');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-05-28 09:12:19', '2020-05-28 09:12:19');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 09:17:10', '2020-05-28 09:17:10');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 09:17:10', '2020-05-28 09:17:10');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 09:17:11', '2020-05-28 09:17:11');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-28 09:17:11', '2020-05-28 09:17:11');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'Auth management', 'auth-management', '', '', '1', '0', '2020-05-28 07:24:58', null);
INSERT INTO `admin_permissions` VALUES ('2', 'Users', 'users', '', '/auth/users*', '2', '1', '2020-05-28 07:24:58', null);
INSERT INTO `admin_permissions` VALUES ('3', 'Roles', 'roles', '', '/auth/roles*', '3', '1', '2020-05-28 07:24:58', null);
INSERT INTO `admin_permissions` VALUES ('4', 'Permissions', 'permissions', '', '/auth/permissions*', '4', '1', '2020-05-28 07:24:58', null);
INSERT INTO `admin_permissions` VALUES ('5', 'Menu', 'menu', '', '/auth/menu*', '5', '1', '2020-05-28 07:24:58', null);
INSERT INTO `admin_permissions` VALUES ('6', 'Operation log', 'operation-log', '', '/auth/logs*', '6', '1', '2020-05-28 07:24:58', null);

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-05-28 07:24:58', '2020-05-28 07:25:00');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$ebofA9hhvztl4aRfMbZQCOEiUrbEeZhw00etwrr3D.1qd.hLRpXU6', 'Administrator', null, null, '2020-05-28 07:24:58', '2020-05-28 07:24:59');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'demo2', 'admin@qq.com', '2020-05-04 09:00:55', '123456', 'plodad', '2020-05-28 08:31:01', '2020-05-28 08:31:01');
