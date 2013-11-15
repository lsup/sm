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


-- 导出  表 egox.sys_permission 结构
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE IF NOT EXISTS `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_permission 的数据：~6 rows (大约)
DELETE FROM `sys_permission`;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` (`id`, `name`, `description`) VALUES
	(1, '全部', NULL),
	(2, '增加', NULL),
	(3, '删除', NULL),
	(4, '修改', NULL),
	(5, '查询', NULL),
	(6, '审核', NULL);
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;


-- 导出  表 egox.sys_resource 结构
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE IF NOT EXISTS `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `order` int(10) unsigned zerofill DEFAULT '0000000000',
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_resource 的数据：~0 rows (大约)
DELETE FROM `sys_resource`;
/*!40000 ALTER TABLE `sys_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_resource` ENABLE KEYS */;


-- 导出  表 egox.sys_role 结构
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_role 的数据：~1 rows (大约)
DELETE FROM `sys_role`;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `name`, `description`) VALUES
	(1, '超级管理员', NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- 导出  表 egox.sys_roles_resources_permissions 结构
DROP TABLE IF EXISTS `sys_roles_resources_permissions`;
CREATE TABLE IF NOT EXISTS `sys_roles_resources_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `resource_id` bigint(20) NOT NULL,
  `permission_ids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_roles_resources_permissions 的数据：~0 rows (大约)
DELETE FROM `sys_roles_resources_permissions`;
/*!40000 ALTER TABLE `sys_roles_resources_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_roles_resources_permissions` ENABLE KEYS */;


-- 导出  表 egox.sys_user 结构
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_user 的数据：~1 rows (大约)
DELETE FROM `sys_user`;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `email`, `date_created`, `screen_name`) VALUES
	(1, 'egox', '1', 'test@test.com', '2013-11-11 15:51:53', '阿百川');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- 导出  表 egox.sys_users_roles 结构
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE IF NOT EXISTS `sys_users_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.sys_users_roles 的数据：~0 rows (大约)
DELETE FROM `sys_users_roles`;
/*!40000 ALTER TABLE `sys_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_users_roles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
