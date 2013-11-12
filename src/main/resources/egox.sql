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


-- 导出  表 egox.t_file 结构
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE IF NOT EXISTS `t_file` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_file 的数据：~0 rows (大约)
DELETE FROM `t_file`;
/*!40000 ALTER TABLE `t_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_file` ENABLE KEYS */;


-- 导出  表 egox.t_group 结构
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE IF NOT EXISTS `t_group` (
  `id` int(10) NOT NULL,
  `description` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_group 的数据：~0 rows (大约)
DELETE FROM `t_group`;
/*!40000 ALTER TABLE `t_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_group` ENABLE KEYS */;


-- 导出  表 egox.t_menu 结构
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE IF NOT EXISTS `t_menu` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_menu 的数据：~0 rows (大约)
DELETE FROM `t_menu`;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;


-- 导出  表 egox.t_operation 结构
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE IF NOT EXISTS `t_operation` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_operation 的数据：~0 rows (大约)
DELETE FROM `t_operation`;
/*!40000 ALTER TABLE `t_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_operation` ENABLE KEYS */;


-- 导出  表 egox.t_permission 结构
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE IF NOT EXISTS `t_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_permission 的数据：~0 rows (大约)
DELETE FROM `t_permission`;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;


-- 导出  表 egox.t_role 结构
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_role 的数据：~0 rows (大约)
DELETE FROM `t_role`;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;


-- 导出  表 egox.t_roles_groups 结构
DROP TABLE IF EXISTS `t_roles_groups`;
CREATE TABLE IF NOT EXISTS `t_roles_groups` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_roles_groups 的数据：~0 rows (大约)
DELETE FROM `t_roles_groups`;
/*!40000 ALTER TABLE `t_roles_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_roles_groups` ENABLE KEYS */;


-- 导出  表 egox.t_user 结构
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_user 的数据：~1 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `username`, `password`, `email`, `date_created`, `date_modified`, `screen_name`) VALUES
	(1, '名字', '201密码3', '2013', '2013-11-11 15:51:53', '2013-11-11 15:51:55', '阿百川');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;


-- 导出  表 egox.t_users_groups 结构
DROP TABLE IF EXISTS `t_users_groups`;
CREATE TABLE IF NOT EXISTS `t_users_groups` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  egox.t_users_groups 的数据：~0 rows (大约)
DELETE FROM `t_users_groups`;
/*!40000 ALTER TABLE `t_users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_users_groups` ENABLE KEYS */;


-- 导出  表 egox.t_users_roles 结构
DROP TABLE IF EXISTS `t_users_roles`;
CREATE TABLE IF NOT EXISTS `t_users_roles` (
  `id` int(10) NOT NULL,
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
