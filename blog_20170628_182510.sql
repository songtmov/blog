-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "auth_assignment" --------------------------
-- DROP TABLE "auth_assignment" --------------------------------
DROP TABLE IF EXISTS `auth_assignment` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "auth_assignment" ------------------------------
CREATE TABLE `auth_assignment` ( 
	`item_name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`user_id` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Int( 11 ) NULL,
	PRIMARY KEY ( `item_name`, `user_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_item" --------------------------------
-- DROP TABLE "auth_item" --------------------------------------
DROP TABLE IF EXISTS `auth_item` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "auth_item" ------------------------------------
CREATE TABLE `auth_item` ( 
	`name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`type` Smallint( 6 ) NOT NULL,
	`description` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`rule_name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`data` Blob NULL,
	`created_at` Int( 11 ) NULL,
	`updated_at` Int( 11 ) NULL,
	PRIMARY KEY ( `name` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_item_child" --------------------------
-- DROP TABLE "auth_item_child" --------------------------------
DROP TABLE IF EXISTS `auth_item_child` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "auth_item_child" ------------------------------
CREATE TABLE `auth_item_child` ( 
	`parent` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`child` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `parent`, `child` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_rule" --------------------------------
-- DROP TABLE "auth_rule" --------------------------------------
DROP TABLE IF EXISTS `auth_rule` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "auth_rule" ------------------------------------
CREATE TABLE `auth_rule` ( 
	`name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`data` Blob NULL,
	`created_at` Int( 11 ) NULL,
	`updated_at` Int( 11 ) NULL,
	PRIMARY KEY ( `name` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "menu" -------------------------------------
-- DROP TABLE "menu" -------------------------------------------
DROP TABLE IF EXISTS `menu` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "menu" -----------------------------------------
CREATE TABLE `menu` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`parent` Int( 11 ) NULL,
	`route` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`order` Int( 11 ) NULL,
	`data` Blob NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "migration" --------------------------------
-- DROP TABLE "migration" --------------------------------------
DROP TABLE IF EXISTS `migration` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "migration" ------------------------------------
CREATE TABLE `migration` ( 
	`version` VarChar( 180 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`apply_time` Int( 11 ) NULL,
	PRIMARY KEY ( `version` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user" -------------------------------------
-- DROP TABLE "user" -------------------------------------------
DROP TABLE IF EXISTS `user` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "user" -----------------------------------------
CREATE TABLE `user` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 32 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`auth_key` VarChar( 32 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`password_hash` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`password_reset_token` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`status` Smallint( 6 ) NOT NULL DEFAULT '10',
	`created_at` Int( 11 ) NOT NULL,
	`updated_at` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "auth_assignment" --------------------------
INSERT INTO `auth_assignment`(`item_name`,`user_id`,`created_at`) VALUES ( 'admin', '1', '1498644920' );
-- ---------------------------------------------------------


-- Dump data of "auth_item" --------------------------------
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/*', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/assignment/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/assignment/assign', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/assignment/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/assignment/revoke', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/assignment/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/default/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/default/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/create', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/delete', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/update', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/menu/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/assign', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/create', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/delete', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/remove', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/update', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/permission/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/assign', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/create', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/delete', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/remove', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/update', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/role/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/assign', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/create', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/refresh', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/route/remove', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/create', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/delete', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/update', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/rule/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/activate', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/change-password', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/delete', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/login', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/logout', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/request-password-reset', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/reset-password', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/signup', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/admin/user/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/*', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/db-explain', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/download-mail', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/toolbar', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/debug/default/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/*', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/*', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/action', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/diff', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/index', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/preview', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/gii/default/view', '2', NULL, NULL, NULL, '1498644502', '1498644502' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/site/*', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/site/error', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/site/index', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/site/login', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( '/site/logout', '2', NULL, NULL, NULL, '1498644503', '1498644503' );
INSERT INTO `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) VALUES ( 'admin', '1', NULL, NULL, NULL, '1498644906', '1498644906' );
-- ---------------------------------------------------------


-- Dump data of "auth_item_child" --------------------------
INSERT INTO `auth_item_child`(`parent`,`child`) VALUES ( 'admin', '/*' );
-- ---------------------------------------------------------


-- Dump data of "auth_rule" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "menu" -------------------------------------
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '1', '菜单管理', NULL, '/admin/menu/index', NULL, NULL );
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '2', '权限管理', NULL, '/admin/route/index', NULL, NULL );
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '3', '角色列表', '2', '/admin/role/index', NULL, NULL );
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '4', '路由列表', '2', '/admin/route/index', NULL, NULL );
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '5', '权限列表', '2', '/admin/permission/index', NULL, NULL );
INSERT INTO `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) VALUES ( '6', '权限分配', '2', '/admin/assignment/index', NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "migration" --------------------------------
INSERT INTO `migration`(`version`,`apply_time`) VALUES ( 'm000000_000000_base', '1498643511' );
INSERT INTO `migration`(`version`,`apply_time`) VALUES ( 'm140506_102106_rbac_init', '1498643567' );
INSERT INTO `migration`(`version`,`apply_time`) VALUES ( 'm140602_111327_create_menu_table', '1498643513' );
INSERT INTO `migration`(`version`,`apply_time`) VALUES ( 'm160312_050000_create_user', '1498643514' );
-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
INSERT INTO `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) VALUES ( '1', 'admin', 'VbzGocdnSamkBxkOt8yCAsAxDmflLz81', '$2y$13$5TM6CR2ihL7is2CPxQ39kuNW2bL.STTY8fCcnQ0MmiE1pmS6NUdDK', NULL, 'song8328787@163.com', '10', '1498643604', '1498643604' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------
