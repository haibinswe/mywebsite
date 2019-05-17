/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : mywebsite

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-05-15 17:38:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blogs`
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('001557801513311372971bbecc64f44963b19ea1268c0b5000', '001557800736405888aa5c4202b4a38910c6bb0c1eb22a4000', 'admin', '/static/img/admin.jpg', '进行第二次测试', '编写完成了博客管理部分的api,', '编写dqwdq成了博客管理部分的api,进行第一次测试', '1557801513.31105');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('00155789275633722297bc5e55f43babdfcb21809909c1a000', '001557801513311372971bbecc64f44963b19ea1268c0b5000', '001557800736405888aa5c4202b4a38910c6bb0c1eb22a4000', 'admin', 'http://www.gravatar.com/avatar/e40d491a5b8182e55f5dc8db37a51333?d=mm&s=120', '第二次测试\nwhat a fuck', '1557892756.33785');
INSERT INTO `comments` VALUES ('1', '1', '001557800736405888aa5c4202b4a38910c6bb0c1eb22a4000', 'admin', '/static/img/admin.jpg', 'test测试评论功能', '11111111');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0015577505373967f8ac338d47a4b45a6029eb1565f5175000', 'haibinswe@qq.com', 'd25948d5eb789c857f5383cf93911880fe9dbd15', '0', 'ref--rain', 'http://www.gravatar.com/avatar/02a88f952c5b093acf6a2f19ff0d3c7f?d=mm&s=120', '1557750537.39633');
INSERT INTO `users` VALUES ('001557750690382f2d26c5a4e2a44ff8439924a283dd0b9000', 'haibinswe@163.com', '4bcec7385e30c277e792e7eab906d5abc868eb06', '0', '铭年', 'http://www.gravatar.com/avatar/71f8e2bbc486f953d434ac0fb6959942?d=mm&s=120', '1557750690.38268');
INSERT INTO `users` VALUES ('001557800736405888aa5c4202b4a38910c6bb0c1eb22a4000', 'admin@163.com', 'cbd327e09160952dafd15792d76cb79aefbeb661', '1', 'admin', 'http://www.gravatar.com/avatar/e40d491a5b8182e55f5dc8db37a51333?d=mm&s=120', '1557800736.40573');
