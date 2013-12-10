-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.33a-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 sm 的数据库结构
DROP DATABASE IF EXISTS `sm`;
CREATE DATABASE IF NOT EXISTS `sm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sm`;


-- 导出  表 sm.sys_permission 结构
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE IF NOT EXISTS `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_shown` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_permission_name` (`name`),
  KEY `idx_sys_permission_permission` (`permission`),
  KEY `idx_sys_permission_show` (`is_shown`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_permission 的数据：~6 rows (大约)
DELETE FROM `sys_permission`;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` (`id`, `name`, `permission`, `description`, `is_shown`) VALUES
	(1, '所有', '*', '所有数据操作的权限', 1),
	(2, '新增', 'create', '新增数据操作的权限', 1),
	(3, '修改', 'update', '修改数据操作的权限', 1),
	(4, '删除', 'delete', '删除数据操作的权限', 1),
	(5, '查看', 'view', '查看数据操作的权限', 1),
	(6, '审核', 'audit', '审核数据操作的权限', 1);
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;


-- 导出  表 sm.sys_resource 结构
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE IF NOT EXISTS `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identity` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_shown` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_name` (`name`),
  KEY `idx_sys_resource_identity` (`identity`),
  KEY `idx_sys_resource_user` (`url`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_resource 的数据：~47 rows (大约)
DELETE FROM `sys_resource`;
/*!40000 ALTER TABLE `sys_resource` DISABLE KEYS */;
INSERT INTO `sys_resource` (`id`, `name`, `identity`, `url`, `parent_id`, `parent_ids`, `icon`, `weight`, `is_shown`) VALUES
	(1, '资源', '', '', 0, '0/', NULL, 1, 1),
	(2, '示例管理', 'showcase', '', 1, '0/1/', NULL, 1, 1),
	(3, '示例列表', 'sample', '/showcase/sample', 2, '0/1/2/', NULL, 1, 1),
	(4, '逻辑删除列表', 'deleted', '/showcase/deleted', 2, '0/1/2/', NULL, 2, 1),
	(5, '可移动列表', 'move', '/showcase/move', 2, '0/1/2/', NULL, 3, 1),
	(6, '文件上传列表', 'upload', '/showcase/upload', 2, '0/1/2/', NULL, 4, 1),
	(7, '树列表', 'tree', '/showcase/tree', 2, '0/1/2/', NULL, 5, 1),
	(8, '编辑器列表', 'editor', '/showcase/editor', 2, '0/1/2/', NULL, 6, 1),
	(9, '父子表（小数据量）', 'parentchild', '/showcase/parentchild/parent', 2, '0/1/2/', NULL, 7, 1),
	(10, '父子表（大数据量）管理', '', '', 2, '0/1/2/', NULL, 8, 1),
	(11, '类别列表', 'productCategory', '/showcase/product/category', 10, '0/1/2/10/', NULL, 1, 1),
	(12, '产品列表', 'product', '/showcase/product/product', 10, '0/1/2/10/', NULL, 2, 1),
	(13, '状态管理', '', '', 2, '0/1/2/', NULL, 9, 1),
	(14, '审核状态列表', 'statusAudit', '/showcase/status/audit', 13, '0/1/2/13/', NULL, 1, 1),
	(15, '显示状态列表', 'statusShow', '/showcase/status/show', 13, '0/1/2/13/', NULL, 2, 1),
	(16, '系统管理', 'sys', '', 1, '0/1/', NULL, 2, 1),
	(17, '用户管理', '', '', 16, '0/1/16/', NULL, 1, 1),
	(18, '用户列表', 'user', '/admin/sys/user/main', 17, '0/1/16/17/', NULL, 1, 1),
	(19, '在线用户列表', 'userOnline', '/admin/sys/user/online', 17, '0/1/16/17/', NULL, 2, 1),
	(20, '状态变更历史列表', 'userStatusHistory', '/admin/sys/user/statusHistory', 17, '0/1/16/17/', NULL, 3, 1),
	(21, '用户最后在线历史列表', 'userLastOnline', '/admin/sys/user/lastOnline', 17, '0/1/16/17/', NULL, 4, 1),
	(22, '组织机构管理', '', '', 16, '0/1/16/', NULL, 2, 1),
	(23, '组织机构列表', 'organization', '/admin/sys/organization/organization', 22, '0/1/16/22/', NULL, 1, 1),
	(24, '工作职务列表', 'job', '/admin/sys/organization/job', 22, '0/1/16/22/', NULL, 2, 1),
	(25, '资源列表', 'resource', '/admin/sys/resource', 16, '0/1/16/', NULL, 4, 1),
	(26, '权限管理', '', '', 16, '0/1/16/', NULL, 5, 1),
	(27, '权限列表', 'permission', '/admin/sys/permission/permission', 26, '0/1/16/26/', NULL, 1, 1),
	(28, '授权权限给角色', 'role', '/admin/sys/permission/role', 26, '0/1/16/26/', NULL, 2, 1),
	(29, '分组列表', 'group', '/admin/sys/group', 16, '0/1/16/', NULL, 3, 1),
	(30, '授权角色给实体', 'auth', '/admin/sys/auth', 26, '0/1/16/26/', NULL, 3, 1),
	(31, '个人中心', '', '', 1, '0/1/', NULL, 4, 1),
	(32, '我的消息', '', '/admin/personal/message', 31, '0/1/31/', NULL, 1, 1),
	(33, '开发维护', 'maintain', '', 1, '0/1/', NULL, 5, 1),
	(34, '图标管理', 'icon', '/admin/maintain/icon', 33, '0/1/33/', NULL, 2, 1),
	(35, '键值对', 'keyvalue', '/admin/maintain/keyvalue', 33, '0/1/33/', NULL, 3, 1),
	(37, '静态资源版本控制', 'staticResource', '/admin/maintain/staticResource', 33, '0/1/33/', NULL, 4, 1),
	(38, '在线编辑', 'onlineEditor', '/admin/maintain/editor', 33, '0/1/33/', NULL, 5, 1),
	(39, '系统监控', 'monitor', '', 1, '0/1/', NULL, 6, 1),
	(40, '在线用户列表', 'userOnline', '/admin/sys/user/online', 39, '0/1/39/', NULL, 1, 1),
	(41, '数据库监控', 'db', '/admin/monitor/druid/index.html', 39, '0/1/39/', NULL, 2, 1),
	(42, 'hibernate监控', 'hibernate', '/admin/monitor/hibernate', 39, '0/1/39/', NULL, 3, 1),
	(43, '执行SQL/JPA QL', 'ql', '/admin/monitor/db/sql', 39, '0/1/39/', NULL, 4, 1),
	(44, 'ehcache监控', 'ehcache', '/admin/monitor/ehcache', 39, '0/1/39/', NULL, 5, 1),
	(45, 'jvm监控', 'jvm', '/admin/monitor/jvm', 39, '0/1/39/', NULL, 6, 1),
	(46, 'Excel导入/导出', 'excel', '/showcase/excel', 2, '0/1/2/', NULL, 10, 1),
	(47, '我的通知', '', '/admin/personal/notification', 31, '0/1/31/', NULL, 2, 1),
	(48, '通知模板', 'notificationTemplate', '/admin/maintain/notification/template', 33, '0/1/33/', NULL, 1, 1);
/*!40000 ALTER TABLE `sys_resource` ENABLE KEYS */;


-- 导出  表 sm.sys_role 结构
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_shown` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_name` (`name`),
  KEY `idx_sys_role_role` (`role`),
  KEY `idx_sys_role_show` (`is_shown`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_role 的数据：~10 rows (大约)
DELETE FROM `sys_role`;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `name`, `role`, `description`, `is_shown`) VALUES
	(1, '超级管理员', 'admin', '拥有所有权限', 1),
	(2, '示例管理员', 'example_admin', '拥有示例管理的所有权限', 1),
	(3, '系统管理员', 'sys_admin', '拥有系统管理的所有权限', 1),
	(4, '维护管理员', 'conf_admin', '拥有维护管理的所有权限', 1),
	(5, '新增管理员', 'create_admin', '拥有新增/查看管理的所有权限', 1),
	(6, '修改管理员', 'update_admin', '拥有修改/查看管理的所有权限', 1),
	(7, '删除管理员', 'delete_admin', '拥有删除/查看管理的所有权限', 1),
	(8, '查看管理员', 'view_admin', '拥有查看管理的所有权限', 1),
	(9, '审核管理员', 'audit_admin', '拥有审核管理的所有权限', 1),
	(10, '监控管理员', 'audit_admin', '拥有审核管理的所有权限', 1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- 导出  表 sm.sys_role_resource_permission 结构
DROP TABLE IF EXISTS `sys_role_resource_permission`;
CREATE TABLE IF NOT EXISTS `sys_role_resource_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `permission_ids` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_role_resource_permission` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_role_resource_permission 的数据：~27 rows (大约)
DELETE FROM `sys_role_resource_permission`;
/*!40000 ALTER TABLE `sys_role_resource_permission` DISABLE KEYS */;
INSERT INTO `sys_role_resource_permission` (`id`, `role_id`, `resource_id`, `permission_ids`) VALUES
	(1, 1, 3, '1'),
	(2, 1, 17, '1'),
	(3, 1, 34, '1'),
	(4, 1, 4, '1'),
	(5, 2, 2, '1'),
	(6, 3, 16, '1'),
	(7, 4, 33, '1'),
	(8, 5, 2, '2,5'),
	(9, 5, 16, '2,5'),
	(10, 5, 33, '2,5'),
	(11, 5, 39, '2,5'),
	(12, 6, 2, '3,5'),
	(13, 6, 16, '3,5'),
	(14, 6, 33, '3,5'),
	(15, 6, 39, '3,5'),
	(16, 7, 2, '4,5'),
	(17, 7, 16, '4,5'),
	(18, 7, 33, '4,5'),
	(19, 7, 39, '4,5'),
	(20, 8, 2, '5'),
	(21, 8, 16, '5'),
	(22, 8, 33, '5'),
	(23, 8, 39, '5'),
	(24, 9, 7, '5,6'),
	(25, 9, 14, '5,6'),
	(26, 9, 15, '5,6'),
	(27, 10, 39, '1');
/*!40000 ALTER TABLE `sys_role_resource_permission` ENABLE KEYS */;


-- 导出  表 sm.sys_user 结构
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_username` (`username`),
  UNIQUE KEY `unique_sys_user_email` (`email`),
  UNIQUE KEY `unique_sys_user_mobile_phone_number` (`phone`),
  KEY `idx_sys_user_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_user 的数据：~10 rows (大约)
DELETE FROM `sys_user`;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `email`, `phone`, `password`, `salt`, `create_date`, `status`, `is_deleted`, `is_admin`) VALUES
	(1, 'admin', 'admin@sishuok.com', '13412345671', 'ec21fa1738f39d5312c6df46002d403d', 'yDd1956wn1', '2013-11-27 22:05:01', 'normal', 0, 1),
	(2, 'showcase', 'showcase@sishuok.com', '13412345672', '5f915c55c6d43da136a42e3ebabbecfc', 'hSSixwNQwt', '2013-11-27 22:05:01', 'normal', 0, 1),
	(3, 'sys', 'sys@sishuok.com', '13412345673', 'a10b3c7af051a81fe2506318f982ce28', 'MANHOoCpnb', '2013-11-27 22:05:01', 'normal', 0, 1),
	(4, 'maintain', 'maintain@sishuok.com', '13412345674', '594813c5eb02b210dacc1a36c2482fc1', 'iY71e4dtoa', '2013-11-27 22:05:01', 'normal', 0, 1),
	(5, 'create', 'create@sishuok.com', '13412345675', 'a6d5988a698dec63c6eea71994dd7be0', 'iruPxupgfb', '2013-11-27 22:05:01', 'normal', 0, 1),
	(6, 'update', 'update@sishuok.com', '13412345676', 'fffa26ac5c47ec1bf9a37d9823816074', '2WQx5LmvlV', '2013-11-27 22:05:01', 'normal', 0, 1),
	(7, 'delete', 'delete@sishuok.com', '13412345677', '4c472bf1d56f440d2953803ab4eea8d4', 'E8KSvr1C7d', '2013-11-27 22:05:01', 'normal', 0, 1),
	(8, 'view', 'view@sishuok.com', '13412345678', 'c919215efcef4064858bf02f8776c00d', 'XFJZQOXWZW', '2013-11-27 22:05:01', 'normal', 0, 1),
	(9, 'audit', 'audit@sishuok.com', '13412345679', '15d8f7b8da8045d24c71a92a142ffad7', 'BI2XbXMUr7', '2013-11-27 22:05:01', 'normal', 0, 1),
	(10, 'monitor', 'monitor@sishuok.com', '13412345822', 'e1549e68ad21fe888ae36ec4965116cd', 'iY71e4d123', '2013-11-27 22:05:01', 'normal', 0, 1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- 导出  表 sm.sys_user_role 结构
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_ids` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  sm.sys_user_role 的数据：~10 rows (大约)
DELETE FROM `sys_user_role`;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_ids`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
	(9, 9, 9),
	(10, 10, 10);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
