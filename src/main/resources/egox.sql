-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.32-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 egox 的数据库结构
DROP DATABASE IF EXISTS `egox`;
CREATE DATABASE IF NOT EXISTS `egox` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `egox`;


-- 导出  表 egox.t_menu 结构
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE IF NOT EXISTS `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `order` int(10) unsigned zerofill DEFAULT '0000000000',
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_menu 的数据：~0 rows (大约)
DELETE FROM `t_menu`;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;


-- 导出  表 egox.t_permission 结构
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE IF NOT EXISTS `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_permission 的数据：~6 rows (大约)
DELETE FROM `t_permission`;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` (`id`, `name`, `description`) VALUES
	(1, '全部', NULL),
	(2, '增加', NULL),
	(3, '删除', NULL),
	(4, '修改', NULL),
	(5, '查询', NULL),
	(6, '审核', NULL);
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;


-- 导出  表 egox.t_role 结构
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_role 的数据：~1 rows (大约)
DELETE FROM `t_role`;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` (`id`, `name`, `description`) VALUES
	(1, '超级管理员', NULL);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;


-- 导出  表 egox.t_roles_menus_permissions 结构
DROP TABLE IF EXISTS `t_roles_menus_permissions`;
CREATE TABLE IF NOT EXISTS `t_roles_menus_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `permission_ids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_roles_menus_permissions 的数据：~0 rows (大约)
DELETE FROM `t_roles_menus_permissions`;
/*!40000 ALTER TABLE `t_roles_menus_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_roles_menus_permissions` ENABLE KEYS */;


-- 导出  表 egox.t_user 结构
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_user 的数据：~1 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `username`, `password`, `email`, `date_created`, `screen_name`) VALUES
	(1, 'egox', '1', 'test@test.com', '2013-11-11 15:51:53', '阿百川');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;


-- 导出  表 egox.t_users_roles 结构
DROP TABLE IF EXISTS `t_users_roles`;
CREATE TABLE IF NOT EXISTS `t_users_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_users_roles 的数据：~0 rows (大约)
DELETE FROM `t_users_roles`;
/*!40000 ALTER TABLE `t_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_users_roles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
