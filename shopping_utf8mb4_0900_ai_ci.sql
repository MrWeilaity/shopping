-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2024-06-13 09:40:43
-- 服务器版本： 8.2.0
-- PHP 版本： 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shopping`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrators`
--

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE IF NOT EXISTS `administrators` (
  `account` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `administrators`
--

INSERT INTO `administrators` (`account`, `password`) VALUES
('13187502076', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `carousel_images`
--

DROP TABLE IF EXISTS `carousel_images`;
CREATE TABLE IF NOT EXISTS `carousel_images` (
  `id` int NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `carousel_images`
--

INSERT INTO `carousel_images` (`id`, `src`) VALUES
(20241, './img/carousel_images/20241.png'),
(20242, './img/carousel_images/20242.png'),
(20243, './img/carousel_images/20243.jpg'),
(20244, './img/carousel_images/20244.webp'),
(20245, './img/carousel_images/20245.jpg'),
(20246, './img/carousel_images/20246.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `computer_detail_table`
--

DROP TABLE IF EXISTS `computer_detail_table`;
CREATE TABLE IF NOT EXISTS `computer_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `computer_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computer_id` (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `computer_detail_table`
--

INSERT INTO `computer_detail_table` (`id`, `computer_id`, `detail_src`) VALUES
(1, 11111, './img/main/Computer/11111.webp'),
(2, 11111, './img/main/Computer/11111-1.webp'),
(3, 11111, './img/main/Computer/11111-2.webp'),
(4, 11111, './img/main/Computer/11111-3.webp'),
(5, 11111, './img/main/Computer/11111-4.webp'),
(6, 11112, './img/main/Computer/11112.webp'),
(7, 11112, './img/main/Computer/11112-1.webp'),
(8, 11112, './img/main/Computer/11112-2.webp'),
(9, 11112, './img/main/Computer/11112-3.webp'),
(10, 11113, './img/main/Computer/11113.webp'),
(11, 11113, './img/main/Computer/11113-1.webp'),
(12, 11113, './img/main/Computer/11113-2.webp'),
(13, 11113, './img/main/Computer/11113-3.webp'),
(14, 11113, './img/main/Computer/11113-4.webp'),
(15, 11114, './img/main/Computer/11114.webp'),
(16, 11114, './img/main/Computer/11114-1.webp'),
(17, 11114, './img/main/Computer/11114-2.webp'),
(18, 11114, './img/main/Computer/11114-3.webp'),
(19, 11114, './img/main/Computer/11114-4.webp'),
(20, 11115, './img/main/Computer/11115.webp'),
(21, 11115, './img/main/Computer/11115-1.webp'),
(22, 11115, './img/main/Computer/11115-2.webp'),
(23, 11115, './img/main/Computer/11115-3.webp'),
(24, 11115, './img/main/Computer/11115-4.webp'),
(25, 11116, './img/main/Computer/11116.webp'),
(26, 11116, './img/main/Computer/11116-1.webp'),
(27, 11116, './img/main/Computer/11116-2.webp'),
(28, 11116, './img/main/Computer/11116-3.webp'),
(29, 11116, './img/main/Computer/11116-4.webp'),
(30, 11117, './img/main/Computer/11117.webp'),
(31, 11117, './img/main/Computer/11117-1.webp'),
(32, 11117, './img/main/Computer/11117-2.webp'),
(33, 11117, './img/main/Computer/11117-3.webp'),
(34, 11118, './img/main/Computer/11118.webp'),
(35, 11118, './img/main/Computer/11118-1.webp'),
(36, 11118, './img/main/Computer/11118-2.webp'),
(37, 11118, './img/main/Computer/11118-3.webp'),
(38, 11119, './img/main/Computer/11119.webp'),
(39, 11119, './img/main/Computer/11119-1.webp'),
(40, 11119, './img/main/Computer/11119-2.webp'),
(41, 11119, './img/main/Computer/11119-3.webp'),
(42, 11120, './img/main/Computer/11120-1.webp'),
(43, 11120, './img/main/Computer/11120-2.webp'),
(44, 11120, './img/main/Computer/11120-3.webp');

-- --------------------------------------------------------

--
-- 表的结构 `computer_images_table`
--

DROP TABLE IF EXISTS `computer_images_table`;
CREATE TABLE IF NOT EXISTS `computer_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `computer_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computer_id` (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `computer_images_table`
--

INSERT INTO `computer_images_table` (`id`, `computer_id`, `detail_src`) VALUES
(1, 11111, './img/detail/Computer/11111.webp'),
(2, 11111, './img/detail/Computer/11111-1.webp'),
(3, 11111, './img/detail/Computer/11111-2.webp'),
(4, 11111, './img/detail/Computer/11111-3.webp'),
(5, 11111, './img/detail/Computer/11111-4.webp'),
(6, 11111, './img/detail/Computer/11111-5.webp'),
(7, 11111, './img/detail/Computer/11111-6.webp'),
(8, 11112, './img/detail/Computer/11112.webp'),
(9, 11112, './img/detail/Computer/11112-1.webp'),
(10, 11112, './img/detail/Computer/11112-2.webp'),
(11, 11112, './img/detail/Computer/11112-3.webp'),
(12, 11113, './img/detail/Computer/11113.webp'),
(13, 11113, './img/detail/Computer/11113-1.webp'),
(14, 11113, './img/detail/Computer/11113-2.webp'),
(15, 11113, './img/detail/Computer/11113-3.webp'),
(16, 11113, './img/detail/Computer/11113-4.webp'),
(17, 11113, './img/detail/Computer/11113-5.webp'),
(18, 11113, './img/detail/Computer/11113-6.webp'),
(19, 11114, './img/detail/Computer/11114.webp'),
(20, 11114, './img/detail/Computer/11114-1.webp'),
(21, 11114, './img/detail/Computer/11114-2.webp'),
(22, 11114, './img/detail/Computer/11114-3.webp'),
(23, 11114, './img/detail/Computer/11114-4.webp'),
(24, 11115, './img/detail/Computer/11115.webp'),
(25, 11115, './img/detail/Computer/11115-1.webp'),
(26, 11115, './img/detail/Computer/11115-2.webp'),
(27, 11115, './img/detail/Computer/11115-3.webp'),
(28, 11115, './img/detail/Computer/11115-4.webp'),
(29, 11115, './img/detail/Computer/11115-5.webp'),
(30, 11115, './img/detail/Computer/11115-6.webp'),
(31, 11115, './img/detail/Computer/11115-7.webp'),
(32, 11115, './img/detail/Computer/11115-8.webp'),
(33, 11116, './img/detail/Computer/11116.webp'),
(34, 11116, './img/detail/Computer/11116-1.webp'),
(35, 11116, './img/detail/Computer/11116-2.webp'),
(36, 11116, './img/detail/Computer/11116-3.webp'),
(37, 11116, './img/detail/Computer/11116-4.webp'),
(38, 11116, './img/detail/Computer/11116-5.webp'),
(39, 11116, './img/detail/Computer/11116-6.webp'),
(40, 11117, './img/detail/Computer/11117-1.webp'),
(41, 11117, './img/detail/Computer/11117-2.webp'),
(42, 11117, './img/detail/Computer/11117-3.webp'),
(43, 11117, './img/detail/Computer/11117-4.webp'),
(44, 11117, './img/detail/Computer/11117-5.webp'),
(45, 11117, './img/detail/Computer/11117-6.webp'),
(46, 11118, './img/detail/Computer/11118.webp'),
(47, 11118, './img/detail/Computer/11118-1.webp'),
(48, 11118, './img/detail/Computer/11118-2.webp'),
(49, 11118, './img/detail/Computer/11118-3.webp'),
(50, 11118, './img/detail/Computer/11118-4.webp'),
(51, 11118, './img/detail/Computer/11118-5.webp'),
(52, 11119, './img/detail/Computer/11119.webp'),
(53, 11119, './img/detail/Computer/11119-1.webp'),
(54, 11119, './img/detail/Computer/11119-2.webp'),
(55, 11119, './img/detail/Computer/11119-3.webp'),
(56, 11119, './img/detail/Computer/11119-4.webp'),
(57, 11119, './img/detail/Computer/11119-5.webp'),
(58, 11120, './img/detail/Computer/11120.webp'),
(59, 11120, './img/detail/Computer/11120-1.webp'),
(60, 11120, './img/detail/Computer/11120-2.webp'),
(61, 11120, './img/detail/Computer/11120-3.webp'),
(62, 11120, './img/detail/Computer/11120-4.webp'),
(63, 11120, './img/detail/Computer/11120-5.webp'),
(64, 11120, './img/detail/Computer/11120-6.webp'),
(65, 11120, './img/detail/Computer/11120-7.webp'),
(66, 11120, './img/detail/Computer/11120-8.webp'),
(67, 11120, './img/detail/Computer/11120-9.webp'),
(68, 11120, './img/detail/Computer/11120-10.webp'),
(69, 11120, './img/detail/Computer/11120-11.webp');

-- --------------------------------------------------------

--
-- 表的结构 `computer_table`
--

DROP TABLE IF EXISTS `computer_table`;
CREATE TABLE IF NOT EXISTS `computer_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `computer_table`
--

INSERT INTO `computer_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(11111, 'computer', '华为MateBook 14', '华为MateBook 14 笔记本电脑2K触控全面屏 13代英特尔酷睿16GB+512GB锐炬显卡学生轻薄办公', 5199, './img/main/Computer/11111.webp'),
(11112, 'computer', '华为MateStation S', '华为MateStation S 12代酷睿版台式机 远程开机 小机箱台式电脑主机箱小型家用办公游戏电脑官方旗舰店', 3799, './img/main/Computer/11112.webp'),
(11113, 'computer', '华为MateBook D16', '【教育优惠】华为MateBook D16 2024笔记本电脑 13代英特尔酷睿16英寸护眼大屏办公学生官方旗舰正品电脑', 4599, './img/main/Computer/11113.webp'),
(11114, 'computer', '华为MateBook X Pro', '【新品】华为MateBook X Pro 酷睿 Ultra 微绒典藏版 笔记本电脑 980克超轻薄 柔性OLED原色屏商务轻薄办公本', 11199, './img/main/Computer/11114.webp'),
(11115, 'computer', '华为MateStation X', '华为MateStation X 高性能智慧一体机电脑28.2英寸4K显示器办公台式可触屏电脑家用游戏一体机', 11907, './img/main/Computer/11115.webp'),
(11116, 'computer', '华为擎云 S520', '华为擎云 S520 轻薄便携办公笔记本电脑商用电脑官方旗舰店', 4199, './img/main/Computer/11116.webp'),
(11117, 'computer', '联想YOGA Pro16s', '【新品首发】新品 联想YOGA Pro16s AI元启可选 英特尔酷睿Ultra9联想AIPC 16英寸轻薄本笔记本电脑', 12999, './img/main/Computer/11117.webp'),
(11118, 'computer', '联想拯救者Y9000X 2024', '【新品热卖】新品 联想拯救者Y9000X 2024 AI元启 14代酷睿i9 HX 16英寸电竞游戏本笔记本电脑', 14499, './img/main/Computer/11118.webp'),
(11119, 'computer', '联想YOGA Book 9i', '【新品首发】联想YOGA Book 9i AI元启 英特尔酷睿Ultra7 联想AIPC 13.3\"双屏触控轻薄笔记本电脑', 17999, './img/main/Computer/11119.webp'),
(11120, 'computer', 'Xiaomi/小米笔记本Pro 14', '【轻薄旗舰】Xiaomi/小米笔记本Pro 14 锐龙版学生学习办公轻薄便携商务笔记本电脑AMD 5000小米官方旗舰店', 5499, './img/main/Computer/11120-1.webp');

-- --------------------------------------------------------

--
-- 表的结构 `earphone_detail_table`
--

DROP TABLE IF EXISTS `earphone_detail_table`;
CREATE TABLE IF NOT EXISTS `earphone_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `earphone_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earphone_id` (`earphone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `earphone_detail_table`
--

INSERT INTO `earphone_detail_table` (`id`, `earphone_id`, `detail_src`) VALUES
(1, 11121, './img/main/earphone/11121.webp'),
(2, 11121, './img/main/earphone/11121-1.webp'),
(3, 11121, './img/main/earphone/11121-2.webp'),
(4, 11121, './img/main/earphone/11121-3.webp'),
(5, 20001, './img/main/earphone/20001.webp'),
(6, 20001, './img/main/earphone/20001-1.webp'),
(7, 20001, './img/main/earphone/20001-2.webp'),
(8, 20001, './img/main/earphone/20001-3.webp'),
(9, 20002, './img/main/earphone/20002.webp'),
(10, 20002, './img/main/earphone/20002-1.webp'),
(11, 20002, './img/main/earphone/20002-2.webp'),
(12, 20002, './img/main/earphone/20002-3.webp'),
(13, 20002, './img/main/earphone/20002-4.webp'),
(14, 20003, './img/main/earphone/20003.webp'),
(15, 20003, './img/main/earphone/20003-1.webp'),
(16, 20003, './img/main/earphone/20003-2.webp'),
(17, 20003, './img/main/earphone/20003-3.webp'),
(18, 20004, './img/main/earphone/20004.webp'),
(19, 20004, './img/main/earphone/20004-1.webp'),
(20, 20004, './img/main/earphone/20004-2.webp'),
(21, 20004, './img/main/earphone/20004-3.webp'),
(22, 20005, './img/main/earphone/20005.webp'),
(23, 20005, './img/main/earphone/20005-1.webp'),
(24, 20005, './img/main/earphone/20005-2.webp'),
(25, 20005, './img/main/earphone/20005-3.webp'),
(26, 20006, './img/main/earphone/20006.webp'),
(27, 20006, './img/main/earphone/20006-1.webp'),
(28, 20006, './img/main/earphone/20006-2.webp'),
(29, 20006, './img/main/earphone/20006-3.webp'),
(30, 20006, './img/main/earphone/20006-4.webp'),
(31, 20007, './img/main/earphone/20007.webp'),
(32, 20007, './img/main/earphone/20007-1.webp'),
(33, 20007, './img/main/earphone/20007-2.webp'),
(34, 20007, './img/main/earphone/20007-3.webp'),
(35, 20008, './img/main/earphone/20008.webp'),
(36, 20008, './img/main/earphone/20008-1.webp'),
(37, 20008, './img/main/earphone/20008-2.webp'),
(38, 20008, './img/main/earphone/20008-3.webp'),
(39, 20008, './img/main/earphone/20008-4.webp'),
(40, 20009, './img/main/earphone/20009.webp'),
(41, 20009, './img/main/earphone/20009-1.webp'),
(42, 20009, './img/main/earphone/20009-2.webp'),
(43, 20009, './img/main/earphone/20009-3.webp');

-- --------------------------------------------------------

--
-- 表的结构 `earphone_images_table`
--

DROP TABLE IF EXISTS `earphone_images_table`;
CREATE TABLE IF NOT EXISTS `earphone_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `earphone_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earphone_id` (`earphone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `earphone_images_table`
--

INSERT INTO `earphone_images_table` (`id`, `earphone_id`, `detail_src`) VALUES
(1, 11121, './img/detail/earphone/11121.webp'),
(2, 11121, './img/detail/earphone/11121-1.webp'),
(3, 11121, './img/detail/earphone/11121-2.webp'),
(4, 11121, './img/detail/earphone/11121-3.webp'),
(5, 11121, './img/detail/earphone/11121-4.webp'),
(6, 11121, './img/detail/earphone/11121-5.webp'),
(7, 20001, './img/detail/earphone/20001.webp'),
(8, 20001, './img/detail/earphone/20001-1.webp'),
(9, 20001, './img/detail/earphone/20001-2.webp'),
(10, 20001, './img/detail/earphone/20001-3.webp'),
(11, 20001, './img/detail/earphone/20001-4.webp'),
(12, 20001, './img/detail/earphone/20001-5.webp'),
(13, 20002, './img/detail/earphone/20002.webp'),
(14, 20002, './img/detail/earphone/20002-1.webp'),
(15, 20002, './img/detail/earphone/20002-2.webp'),
(16, 20002, './img/detail/earphone/20002-3.webp'),
(17, 20002, './img/detail/earphone/20002-4.webp'),
(18, 20003, './img/detail/earphone/20003.webp'),
(19, 20003, './img/detail/earphone/20003-1.webp'),
(20, 20003, './img/detail/earphone/20003-2.webp'),
(21, 20003, './img/detail/earphone/20003-3.webp'),
(22, 20003, './img/detail/earphone/20003-4.webp'),
(23, 20003, './img/detail/earphone/20003-5.webp'),
(24, 20004, './img/detail/earphone/20004.webp'),
(25, 20004, './img/detail/earphone/20004-1.webp'),
(26, 20004, './img/detail/earphone/20004-2.webp'),
(27, 20004, './img/detail/earphone/20004-3.webp'),
(28, 20004, './img/detail/earphone/20004-4.webp'),
(29, 20005, './img/detail/earphone/20005.webp'),
(30, 20005, './img/detail/earphone/20005-1.webp'),
(31, 20005, './img/detail/earphone/20005-2.webp'),
(32, 20005, './img/detail/earphone/20005-3.webp'),
(33, 20005, './img/detail/earphone/20005-4.webp'),
(34, 20005, './img/detail/earphone/20005-5.webp'),
(35, 20006, './img/detail/earphone/20006.webp'),
(36, 20006, './img/detail/earphone/20006-1.webp'),
(37, 20006, './img/detail/earphone/20006-2.webp'),
(38, 20006, './img/detail/earphone/20006-3.webp'),
(39, 20006, './img/detail/earphone/20006-4.webp'),
(40, 20006, './img/detail/earphone/20006-5.webp'),
(41, 20006, './img/detail/earphone/20006-6.webp'),
(42, 20007, './img/detail/earphone/20007.webp'),
(43, 20007, './img/detail/earphone/20007-1.webp'),
(44, 20007, './img/detail/earphone/20007-2.webp'),
(45, 20007, './img/detail/earphone/20007-3.webp'),
(46, 20007, './img/detail/earphone/20007-4.webp'),
(47, 20008, './img/detail/earphone/20008.webp'),
(48, 20008, './img/detail/earphone/20008-1.webp'),
(49, 20008, './img/detail/earphone/20008-2.webp'),
(50, 20008, './img/detail/earphone/20008-3.webp'),
(51, 20008, './img/detail/earphone/20008-4.webp'),
(52, 20009, './img/detail/earphone/20009.webp'),
(53, 20009, './img/detail/earphone/20009-1.webp'),
(54, 20009, './img/detail/earphone/20009-2.webp'),
(55, 20009, './img/detail/earphone/20009-3.webp'),
(56, 20009, './img/detail/earphone/20009-4.webp'),
(57, 20009, './img/detail/earphone/20009-5.webp'),
(58, 20009, './img/detail/earphone/20009-6.webp');

-- --------------------------------------------------------

--
-- 表的结构 `earphone_table`
--

DROP TABLE IF EXISTS `earphone_table`;
CREATE TABLE IF NOT EXISTS `earphone_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `earphone_table`
--

INSERT INTO `earphone_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(11121, 'earphone', 'vivo TWS 4', '【新品上市 3期免息】vivo TWS 4 耳机 降噪无线蓝牙耳机官方旗舰', 399, './img/main/earphone/11121.webp'),
(20001, 'earphone', '华为FreeBuds SE2', '【香芋紫新色上市】华为FreeBuds SE2无线蓝牙耳机长续航华为耳机', 199, './img/main/earphone/20001.webp'),
(20002, 'earphone', '华为FreeClip耳夹耳机', '【暖星云新色】华为FreeClip耳夹耳机开放式蓝牙无线华为耳机舒适', 1299, './img/main/earphone/20002.webp'),
(20003, 'earphone', '华为FreeBudsPro3', '华为FreeBudsPro3无线蓝牙耳机入耳式动态降噪续航华为耳机Pura70', 1499, './img/main/earphone/20003.webp'),
(20004, 'earphone', 'Huawei/华为经典耳机CM33', 'Huawei/华为经典耳机CM33 type-c接头适配华为p20耳机原装正品', 59, './img/main/earphone/20004.webp'),
(20005, 'earphone', '华为FreeLace活力版无线耳机', '华为FreeLace活力版无线耳机半入耳式长续航蓝牙华为耳机运动降噪', 269, './img/main/earphone/20005.webp'),
(20006, 'earphone', '华为FreeBuds Lipstick2', '【新品】华为FreeBuds Lipstick2口红耳机无线蓝牙耳机Pura70搭档', 1699, './img/main/earphone/20006.webp'),
(20007, 'earphone', '华为FreeBuds4E', '华为FreeBuds4E2024款无线耳机耳机半入耳舒适佩戴华为耳机官方', 699, './img/main/earphone/20007.webp'),
(20008, 'earphone', '华为FreeBuds 5', '华为FreeBuds 5至臻版无线蓝牙耳机半入耳降噪华为耳机运动长续航', 999, './img/main/earphone/20008.webp'),
(20009, 'earphone', 'Huawei/华为半入耳式耳机AM115', 'Huawei/华为半入耳式耳机AM115 高品质音效佩戴舒适华为原装耳机', 39, './img/main/earphone/20009.webp');

-- --------------------------------------------------------

--
-- 表的结构 `flat_detail_table`
--

DROP TABLE IF EXISTS `flat_detail_table`;
CREATE TABLE IF NOT EXISTS `flat_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flat_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flat_id` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `flat_detail_table`
--

INSERT INTO `flat_detail_table` (`id`, `flat_id`, `detail_src`) VALUES
(2, 3000, './img/main/flat/3000-1.webp'),
(3, 3000, './img/main/flat/3000-2.webp'),
(4, 3000, './img/main/flat/3000-3.webp'),
(5, 3000, './img/main/flat/3000-4.webp'),
(6, 3000, './img/main/flat/3000-5.webp'),
(7, 3001, './img/main/flat/3001-1.webp'),
(8, 3001, './img/main/flat/3001-2.webp'),
(9, 3001, './img/main/flat/3001-3.webp'),
(10, 3001, './img/main/flat/3001-4.webp'),
(11, 3001, './img/main/flat/3001-5.webp'),
(12, 3002, './img/main/flat/3002-1.webp'),
(13, 3002, './img/main/flat/3002-2.webp'),
(14, 3002, './img/main/flat/3002-3.webp'),
(15, 3002, './img/main/flat/3002-4.webp'),
(16, 3002, './img/main/flat/3002-5.webp'),
(17, 3003, './img/main/flat/3003-1.webp'),
(18, 3003, './img/main/flat/3003-2.webp'),
(19, 3003, './img/main/flat/3003-3.webp'),
(20, 3003, './img/main/flat/3003-4.webp'),
(21, 3003, './img/main/flat/3003-5.webp'),
(22, 3004, './img/main/flat/3004-1.webp'),
(23, 3004, './img/main/flat/3004-2.webp'),
(24, 3004, './img/main/flat/3004-3.webp'),
(25, 3004, './img/main/flat/3004-4.webp'),
(26, 3004, './img/main/flat/3004-5.webp'),
(27, 3005, './img/main/flat/3005-1.jpg'),
(28, 3005, './img/main/flat/3005-2.jpg'),
(29, 3005, './img/main/flat/3005-3.jpg'),
(30, 3005, './img/main/flat/3005-4.jpg'),
(31, 3005, './img/main/flat/3005-5.jpg'),
(32, 3006, './img/main/flat/3006-1.jpg'),
(33, 3006, './img/main/flat/3006-2.jpg'),
(34, 3006, './img/main/flat/3006-3.jpg'),
(35, 3006, './img/main/flat/3006-4.jpg'),
(36, 3006, './img/main/flat/3006-5.jpg'),
(37, 3007, './img/main/flat/3007-1.jpg'),
(38, 3007, './img/main/flat/3007-2.jpg'),
(39, 3007, './img/main/flat/3007-3.jpg'),
(40, 3007, './img/main/flat/3007-4.jpg'),
(41, 3007, './img/main/flat/3007-5.jpg'),
(42, 3008, './img/main/flat/3008-1.jpg'),
(43, 3008, './img/main/flat/3008-2.jpg'),
(44, 3008, './img/main/flat/3008-3.jpg'),
(45, 3008, './img/main/flat/3008-4.jpg'),
(46, 3008, './img/main/flat/3008-5.jpg'),
(47, 3009, './img/main/flat/3009-1.jpg'),
(48, 3009, './img/main/flat/3009-2.jpg'),
(49, 3009, './img/main/flat/3009-3.jpg'),
(50, 3009, './img/main/flat/3009-4.jpg'),
(51, 3009, './img/main/flat/3009-5.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `flat_images_table`
--

DROP TABLE IF EXISTS `flat_images_table`;
CREATE TABLE IF NOT EXISTS `flat_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flat_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flat_id` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `flat_images_table`
--

INSERT INTO `flat_images_table` (`id`, `flat_id`, `detail_src`) VALUES
(1, 3000, './img/detail/flat/3000-1.jpg'),
(2, 3000, './img/detail/flat/3000-2.jpg'),
(3, 3000, './img/detail/flat/3000-3.jpg'),
(4, 3000, './img/detail/flat/3000-4.jpg'),
(5, 3000, './img/detail/flat/3000-5.jpg'),
(6, 3000, './img/detail/flat/3000-6.jpg'),
(7, 3001, './img/detail/flat/3001-1.jpg'),
(8, 3001, './img/detail/flat/3001-2.jpg'),
(9, 3001, './img/detail/flat/3001-3.jpg'),
(10, 3001, './img/detail/flat/3001-4.jpg'),
(11, 3001, './img/detail/flat/3001-5.jpg'),
(12, 3001, './img/detail/flat/3001-6.jpg'),
(13, 3002, './img/detail/flat/3002-1.jpg'),
(14, 3002, './img/detail/flat/3002-2.jpg'),
(15, 3002, './img/detail/flat/3002-3.jpg'),
(16, 3002, './img/detail/flat/3002-4.jpg'),
(17, 3002, './img/detail/flat/3002-5.jpg'),
(18, 3002, './img/detail/flat/3002-6.jpg'),
(19, 3003, './img/detail/flat/3003-1.jpg'),
(20, 3003, './img/detail/flat/3003-2.jpg'),
(21, 3003, './img/detail/flat/3003-3.jpg'),
(22, 3003, './img/detail/flat/3003-4.jpg'),
(23, 3003, './img/detail/flat/3003-5.jpg'),
(24, 3003, './img/detail/flat/3003-6.jpg'),
(25, 3004, './img/detail/flat/3004-1.jpg'),
(26, 3004, './img/detail/flat/3004-2.jpg'),
(27, 3004, './img/detail/flat/3004-3.jpg'),
(28, 3004, './img/detail/flat/3004-4.jpg'),
(29, 3004, './img/detail/flat/3004-5.jpg'),
(30, 3004, './img/detail/flat/3004-6.jpg'),
(31, 3005, './img/detail/flat/3005-1.jpg'),
(32, 3005, './img/detail/flat/3005-2.jpg'),
(33, 3005, './img/detail/flat/3005-3.jpg'),
(34, 3005, './img/detail/flat/3005-4.jpg'),
(35, 3005, './img/detail/flat/3005-5.jpg'),
(36, 3005, './img/detail/flat/3005-6.jpg'),
(37, 3006, './img/detail/flat/3006-1.jpg'),
(38, 3006, './img/detail/flat/3006-2.jpg'),
(39, 3006, './img/detail/flat/3006-3.jpg'),
(40, 3006, './img/detail/flat/3006-4.jpg'),
(41, 3006, './img/detail/flat/3006-5.jpg'),
(42, 3006, './img/detail/flat/3006-6.jpg'),
(43, 3007, './img/detail/flat/3007-1.jpg'),
(44, 3007, './img/detail/flat/3007-2.jpg'),
(45, 3007, './img/detail/flat/3007-3.jpg'),
(46, 3007, './img/detail/flat/3007-4.jpg'),
(47, 3007, './img/detail/flat/3007-5.jpg'),
(48, 3007, './img/detail/flat/3007-6.jpg'),
(49, 3008, './img/detail/flat/3008-1.jpg'),
(50, 3008, './img/detail/flat/3008-2.jpg'),
(51, 3008, './img/detail/flat/3008-3.jpg'),
(52, 3008, './img/detail/flat/3008-4.jpg'),
(53, 3008, './img/detail/flat/3008-5.jpg'),
(54, 3009, './img/detail/flat/3009-1.jpg'),
(55, 3009, './img/detail/flat/3009-2.jpg'),
(56, 3009, './img/detail/flat/3009-3.jpg'),
(57, 3009, './img/detail/flat/3009-4.jpg'),
(58, 3009, './img/detail/flat/3009-5.jpg'),
(59, 3009, './img/detail/flat/3009-6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `flat_table`
--

DROP TABLE IF EXISTS `flat_table`;
CREATE TABLE IF NOT EXISTS `flat_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `flat_table`
--

INSERT INTO `flat_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(3000, 'flat', 'HUAWEI MatePad 11.5\"S', '【新品】HUAWEI MatePad 11.5\"S华为平板电脑 144Hz高刷 2.8K护眼屏 办公绘画学习机2024新款官方旗舰店', 2099, './img/main/flat/3000-1.webp'),
(3001, 'flat', 'HUAWEI MatePad SE10.4', 'HUAWEI MatePad SE10.4英寸华为平板电脑2023新品护眼屏全面屏学生教育学习机官方旗舰店', 899, './img/main/flat/3001-1.webp'),
(3002, 'flat', 'HUAWEI MatePad 2023', 'HUAWEI MatePad 2023款华为平板电脑护眼屏11.5英寸大尺寸大学生学习教育官方旗舰店', 1899, './img/main/flat/3002-1.webp'),
(3003, 'flat', 'HUAWEI MatePad Pro11', 'HUAWEI MatePad Pro11英寸2024款华为平板电脑 OLED2.5K全面屏 星闪连接PC级页面布局全面屏学习绘画学生办公', 3699, './img/main/flat/3003-1.webp'),
(3004, 'flat', 'HUAWEI MateBook E 2023', 'HUAWEI MateBook E 2023华为平板电脑二合一笔记本电脑新款办公学习全能商务本官方旗舰店', 6299, './img/main/flat/3004-1.webp'),
(3005, 'flat', 'Apple', 'Apple/苹果 10.9 英寸 iPad 无线局域网机型', 2999, './img/main/flat/3005-1.jpg'),
(3006, 'flat', 'Apple', 'Apple/苹果 11 英寸 iPad Air', 4799, './img/main/flat/3006-1.jpg'),
(3007, 'flat', 'Apple', 'Apple/苹果 13 英寸 iPad Air', 6499, './img/main/flat/3007-1.jpg'),
(3008, 'flat', 'iPad mini', 'Apple/苹果 iPad mini 无线局域网机型', 3999, './img/main/flat/3008-1.jpg'),
(3009, 'flat', 'iPad Pro', 'Apple/苹果 11 英寸 iPad Pro - 纳米纹理玻璃面板', 14899, './img/main/flat/3009-1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `household_detail_table`
--

DROP TABLE IF EXISTS `household_detail_table`;
CREATE TABLE IF NOT EXISTS `household_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `household_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `household_id` (`household_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `household_detail_table`
--

INSERT INTO `household_detail_table` (`id`, `household_id`, `detail_src`) VALUES
(1, 1000, './img/main/household/1000.webp'),
(2, 1000, './img/main/household/1000-1.webp'),
(3, 1000, './img/main/household/1000-2.webp'),
(4, 1000, './img/main/household/1000-3.webp'),
(5, 1000, './img/main/household/1000-4.webp'),
(6, 1001, './img/main/household/1001.webp'),
(7, 1001, './img/main/household/1001-1.webp'),
(8, 1001, './img/main/household/1001-2.webp'),
(9, 1001, './img/main/household/1001-3.webp'),
(10, 1001, './img/main/household/1001-4.webp'),
(11, 1002, './img/main/household/1002.webp'),
(12, 1002, './img/main/household/1002-1.webp'),
(13, 1002, './img/main/household/1002-2.webp'),
(14, 1002, './img/main/household/1002-3.webp'),
(15, 1002, './img/main/household/1002-4.webp'),
(16, 1003, './img/main/household/1003.webp'),
(17, 1003, './img/main/household/1003-1.webp'),
(18, 1003, './img/main/household/1003-2.webp'),
(19, 1003, './img/main/household/1003-3.webp'),
(20, 1003, './img/main/household/1003-4.webp'),
(21, 1004, './img/main/household/1004.webp'),
(22, 1004, './img/main/household/1004-1.webp'),
(23, 1004, './img/main/household/1004-2.webp'),
(24, 1004, './img/main/household/1004-3.webp'),
(25, 1004, './img/main/household/1004-4.webp'),
(26, 1005, './img/main/household/1005.webp'),
(27, 1005, './img/main/household/1005-1.webp'),
(28, 1005, './img/main/household/1005-2.webp'),
(29, 1005, './img/main/household/1005-3.webp'),
(30, 1005, './img/main/household/1005-4.webp'),
(31, 1006, './img/main/household/1006.webp'),
(32, 1006, './img/main/household/1006-1.webp'),
(33, 1006, './img/main/household/1006-2.webp'),
(34, 1006, './img/main/household/1006-3.webp'),
(35, 1006, './img/main/household/1006-4.webp'),
(36, 1007, './img/main/household/1007.webp'),
(37, 1007, './img/main/household/1007-1.webp'),
(38, 1007, './img/main/household/1007-2.webp'),
(39, 1007, './img/main/household/1007-3.webp'),
(40, 1007, './img/main/household/1007-4.webp'),
(41, 1008, './img/main/household/1008.webp'),
(42, 1008, './img/main/household/1008-1.webp'),
(43, 1008, './img/main/household/1008-2.webp'),
(44, 1008, './img/main/household/1008-3.webp'),
(45, 1008, './img/main/household/1008-4.webp'),
(46, 1009, './img/main/household/1009.webp'),
(47, 1009, './img/main/household/1009-1.webp'),
(48, 1009, './img/main/household/1009-2.webp'),
(49, 1009, './img/main/household/1009-3.webp'),
(50, 1009, './img/main/household/1009-4.webp'),
(51, 1010, './img/main/household/1010.webp'),
(52, 1010, './img/main/household/1010-1.webp'),
(53, 1010, './img/main/household/1010-2.webp'),
(54, 1010, './img/main/household/1010-3.webp'),
(55, 1010, './img/main/household/1010-4.webp');

-- --------------------------------------------------------

--
-- 表的结构 `household_images_table`
--

DROP TABLE IF EXISTS `household_images_table`;
CREATE TABLE IF NOT EXISTS `household_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `household_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `household_id` (`household_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `household_images_table`
--

INSERT INTO `household_images_table` (`id`, `household_id`, `detail_src`) VALUES
(1, 1000, './img/detail/household/1000.webp'),
(2, 1000, './img/detail/household/1000-1.webp'),
(3, 1000, './img/detail/household/1000-2.webp'),
(4, 1000, './img/detail/household/1000-3.webp'),
(5, 1000, './img/detail/household/1000-4.webp'),
(6, 1000, './img/detail/household/1000-5.webp'),
(7, 1000, './img/detail/household/1000-6.webp'),
(8, 1001, './img/detail/household/1000.webp'),
(9, 1001, './img/detail/household/1000-1.webp'),
(10, 1001, './img/detail/household/1000-2.webp'),
(11, 1001, './img/detail/household/1000-3.webp'),
(12, 1001, './img/detail/household/1000-4.webp'),
(13, 1001, './img/detail/household/1000-5.webp'),
(14, 1002, './img/detail/household/1002.webp'),
(15, 1002, './img/detail/household/1002-1.webp'),
(16, 1002, './img/detail/household/1002-2.webp'),
(17, 1002, './img/detail/household/1002-3.webp'),
(18, 1002, './img/detail/household/1002-4.webp'),
(19, 1003, './img/detail/household/1003.webp'),
(20, 1003, './img/detail/household/1003-1.webp'),
(21, 1003, './img/detail/household/1003-2.webp'),
(22, 1003, './img/detail/household/1003-3.webp'),
(23, 1003, './img/detail/household/1003-4.webp'),
(24, 1004, './img/detail/household/1004.webp'),
(25, 1004, './img/detail/household/1004-1.webp'),
(26, 1004, './img/detail/household/1004-2.webp'),
(27, 1004, './img/detail/household/1004-3.webp'),
(28, 1004, './img/detail/household/1004-4.webp'),
(29, 1005, './img/detail/household/1005.webp'),
(30, 1005, './img/detail/household/1005-1.webp'),
(31, 1005, './img/detail/household/1005-2.webp'),
(32, 1005, './img/detail/household/1005-3.webp'),
(33, 1005, './img/detail/household/1005-4.webp'),
(34, 1006, './img/detail/household/1006.webp'),
(35, 1006, './img/detail/household/1006-1.webp'),
(36, 1006, './img/detail/household/1006-2.webp'),
(37, 1006, './img/detail/household/1006-3.webp'),
(38, 1006, './img/detail/household/1006-4.webp'),
(39, 1007, './img/detail/household/1007.webp'),
(40, 1007, './img/detail/household/1007-1.webp'),
(41, 1007, './img/detail/household/1007-2.webp'),
(42, 1007, './img/detail/household/1007-3.webp'),
(43, 1007, './img/detail/household/1007-4.webp'),
(44, 1008, './img/detail/household/1008.webp'),
(45, 1008, './img/detail/household/1008-1.webp'),
(46, 1008, './img/detail/household/1008-2.webp'),
(47, 1008, './img/detail/household/1008-3.webp'),
(48, 1008, './img/detail/household/1008-4.webp'),
(49, 1008, './img/detail/household/1008-5.webp'),
(50, 1009, './img/detail/household/1009.webp'),
(51, 1009, './img/detail/household/1009-1.webp'),
(52, 1009, './img/detail/household/1009-2.webp'),
(53, 1009, './img/detail/household/1009-3.webp'),
(54, 1009, './img/detail/household/1009-4.webp'),
(55, 1010, './img/detail/household/1010.webp'),
(56, 1010, './img/detail/household/1010-1.webp'),
(57, 1010, './img/detail/household/1010-2.webp'),
(58, 1010, './img/detail/household/1010-3.webp'),
(59, 1010, './img/detail/household/1010-4.webp');

-- --------------------------------------------------------

--
-- 表的结构 `household_table`
--

DROP TABLE IF EXISTS `household_table`;
CREATE TABLE IF NOT EXISTS `household_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `household_table`
--

INSERT INTO `household_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(1000, 'household', '飞利浦吹风机', '飞利浦吹风机家用电吹风护发大功率静音不伤发1200W学生宿舍专用', 59, './img/main/household/1000.webp'),
(1001, 'household', '美的电压力锅', '美的电压力锅家用全自动智能IH电高压锅电饭煲一体2023新款5L钢胆', 609, './img/main/household/1001.webp'),
(1002, 'household', '双压煮饭电饭煲', 'CUCKOO福库韩国进口家用5L智能多功能双压煮饭电饭煲2-10人ST1011', 1899, './img/main/household/1002.webp'),
(1003, 'household', '家用微波炉烤箱', '日立微烤炸多功能一体式变频家用微波炉烤箱炸烘焙W1000ZC进口', 9373, './img/main/household/1003.webp'),
(1004, 'household', '无线吸尘器', '吉米瑞无线吸尘器家用大吸力超静音强力除螨拖地一体吸猫毛除毛', 949, './img/main/household/1004.webp'),
(1005, 'household', '电地暖沙发清洗机', '多功能家电地暖沙发清洗机一体机管道清洗设备地毯空调蒸汽清洁机', 5280, './img/main/household/1005.webp'),
(1006, 'household', '蒸汽清洗机', '高压高温蒸汽清洁机家电自来水管道多功能一体机空调油烟机清洗机', 1700, './img/main/household/1006.webp'),
(1007, 'household', '省电空调', '小米巨省电空调挂机冷暖两用1.5匹一级能效变频家用智能壁挂式', 2599, './img/main/household/1007.webp'),
(1008, 'household', '台式电风扇', '骆驼台式电风扇台扇家用夏天可摇头学生小宿舍床上办公室桌面床头', 45, './img/main/household/1008.webp'),
(1009, 'household', '微波炉', '美的变频平板微波炉家用小滋味奶油风小型复古官方旗舰店正品M1G1', 900, './img/main/household/1009.webp'),
(1010, 'household', '电饭煲', 'CUCKOO福库进口IH电饭煲家用多功能3升小型智能预约电饭锅 2-4人', 2749, './img/main/household/1010.webp');

-- --------------------------------------------------------

--
-- 表的结构 `iphone_detail_table`
--

DROP TABLE IF EXISTS `iphone_detail_table`;
CREATE TABLE IF NOT EXISTS `iphone_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iphone_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iphone_id` (`iphone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `iphone_detail_table`
--

INSERT INTO `iphone_detail_table` (`id`, `iphone_id`, `detail_src`) VALUES
(1, 1111, './img/main/iphone/1111.webp'),
(2, 1111, './img/main/iphone/1111-1.webp'),
(3, 1111, './img/main/iphone/1111-2.webp'),
(4, 1111, './img/main/iphone/1111-3.webp'),
(5, 1111, './img/main/iphone/1111-4.webp'),
(6, 1112, './img/main/iphone/1112.webp'),
(7, 1112, './img/main/iphone/1112-1.webp'),
(8, 1112, './img/main/iphone/1112-2.webp'),
(9, 1112, './img/main/iphone/1112-3.webp'),
(10, 1112, './img/main/iphone/1112-4.webp'),
(11, 1113, './img/main/iphone/1113.webp'),
(12, 1113, './img/main/iphone/1113-1.webp'),
(13, 1113, './img/main/iphone/1113-2.webp'),
(14, 1113, './img/main/iphone/1113-3.webp'),
(15, 1113, './img/main/iphone/1113-4.webp'),
(16, 1114, './img/main/iphone/1114.webp'),
(17, 1114, './img/main/iphone/1114-1.webp'),
(18, 1114, './img/main/iphone/1114-2.webp'),
(19, 1114, './img/main/iphone/1114-3.webp'),
(20, 1115, './img/main/iphone/1115.webp'),
(21, 1115, './img/main/iphone/1115-1.webp'),
(22, 1115, './img/main/iphone/1115-2.webp'),
(23, 1115, './img/main/iphone/1115-3.webp'),
(24, 1115, './img/main/iphone/1115-4.webp'),
(25, 1116, './img/main/iphone/1116.webp'),
(26, 1116, './img/main/iphone/1116-1.webp'),
(27, 1116, './img/main/iphone/1116-2.webp'),
(28, 1116, './img/main/iphone/1116-3.webp'),
(29, 1116, './img/main/iphone/1116-4.webp'),
(30, 1117, './img/main/iphone/1117.webp'),
(31, 1117, './img/main/iphone/1117-1.webp'),
(32, 1117, './img/main/iphone/1117-2.webp'),
(33, 1117, './img/main/iphone/1117-3.webp'),
(34, 1118, './img/main/iphone/1118.webp'),
(35, 1118, './img/main/iphone/1118-1.webp'),
(36, 1118, './img/main/iphone/1118-2.webp'),
(37, 1118, './img/main/iphone/1118-3.webp'),
(38, 1118, './img/main/iphone/1118-4.webp'),
(39, 1119, './img/main/iphone/1119.webp'),
(40, 1119, './img/main/iphone/1119-1.webp'),
(41, 1119, './img/main/iphone/1119-2.webp'),
(42, 1119, './img/main/iphone/1119-3.webp'),
(43, 1119, './img/main/iphone/1119-4.webp'),
(44, 1120, './img/main/iphone/1120.webp'),
(45, 1120, './img/main/iphone/1120-1.webp'),
(46, 1120, './img/main/iphone/1120-2.webp'),
(47, 1120, './img/main/iphone/1120-3.webp');

-- --------------------------------------------------------

--
-- 表的结构 `iphone_images_table`
--

DROP TABLE IF EXISTS `iphone_images_table`;
CREATE TABLE IF NOT EXISTS `iphone_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iphone_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iphone_id` (`iphone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `iphone_images_table`
--

INSERT INTO `iphone_images_table` (`id`, `iphone_id`, `detail_src`) VALUES
(1, 1111, './img/detail/iphone/1111.webp'),
(2, 1111, './img/detail/iphone/1111-1.webp'),
(3, 1111, './img/detail/iphone/1111-2.webp'),
(4, 1111, './img/detail/iphone/1111-3.webp'),
(5, 1111, './img/detail/iphone/1111-4.webp'),
(6, NULL, './img/detail/iphone/1112.webp'),
(7, 1112, './img/detail/iphone/1112-1.webp'),
(8, 1112, './img/detail/iphone/1112-2.webp'),
(9, 1112, './img/detail/iphone/1112-3.webp'),
(10, 1112, './img/detail/iphone/1112-4.webp'),
(11, 1113, './img/detail/iphone/1113.webp'),
(12, 1113, './img/detail/iphone/1113-1.webp'),
(13, 1113, './img/detail/iphone/1113-2.webp'),
(14, 1113, './img/detail/iphone/1113-3.webp'),
(15, 1113, './img/detail/iphone/1113-4.webp'),
(16, 1114, './img/detail/iphone/1114.webp'),
(17, 1114, './img/detail/iphone/1114-1.webp'),
(18, 1114, './img/detail/iphone/1114-2.webp'),
(19, 1114, './img/detail/iphone/1114-3.webp'),
(20, 1114, './img/detail/iphone/1114-4.webp'),
(21, 1115, './img/detail/iphone/1115.webp'),
(22, 1115, './img/detail/iphone/1115-1.webp'),
(23, 1115, './img/detail/iphone/1115-2.webp'),
(24, 1115, './img/detail/iphone/1115-3.webp'),
(25, 1115, './img/detail/iphone/1115-4.webp'),
(26, 1116, './img/detail/iphone/1116.webp'),
(27, 1116, './img/detail/iphone/1116-1.webp'),
(28, 1116, './img/detail/iphone/1116-2.webp'),
(29, 1116, './img/detail/iphone/1116-3.webp'),
(30, 1116, './img/detail/iphone/1116-4.webp'),
(31, 1117, './img/detail/iphone/1117-1.webp'),
(32, 1117, './img/detail/iphone/1117-2.webp'),
(33, 1117, './img/detail/iphone/1117-3.webp'),
(34, 1117, './img/detail/iphone/1117-4.webp'),
(35, 1118, './img/detail/iphone/1118.webp'),
(36, 1118, './img/detail/iphone/1118-1.webp'),
(37, 1118, './img/detail/iphone/1118-2.webp'),
(38, 1118, './img/detail/iphone/1118-3.webp'),
(39, 1118, './img/detail/iphone/1118-4.webp'),
(40, 1119, './img/detail/iphone/1119.webp'),
(41, 1119, './img/detail/iphone/1119-1.webp'),
(42, 1119, './img/detail/iphone/1119-2.webp'),
(43, 1119, './img/detail/iphone/1119-3.webp'),
(44, 1119, './img/detail/iphone/1119-4.webp'),
(45, 1120, './img/detail/iphone/1120.webp'),
(46, 1120, './img/detail/iphone/1120-1.webp'),
(47, 1120, './img/detail/iphone/1120-2.webp'),
(48, 1120, './img/detail/iphone/1120-3.webp'),
(49, 1120, './img/detail/iphone/1120-4.webp');

-- --------------------------------------------------------

--
-- 表的结构 `iphone_table`
--

DROP TABLE IF EXISTS `iphone_table`;
CREATE TABLE IF NOT EXISTS `iphone_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `iphone_table`
--

INSERT INTO `iphone_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(1111, 'iphone', '黄金手机', 'VERTU纬图 Signature十二生肖唐卡4G款高端总裁黄金手机新款官方正品 威图vertu限量版手机', 298000, './img/main/iphone/1111.webp'),
(1112, 'iphone', '索野XS23手机', '索野XS23新款迷你学生手机戒网瘾专用可微信视频通话支付宝超长待机触屏无游戏老年机初高中生儿童4G全网通', 398, './img/main/iphone/1112.webp'),
(1113, 'iphone', '小米手机', 'MIUI/小米 Redmi K70E', 1949, './img/main/iphone/1113.webp'),
(1114, 'iphone', '华为手机', 'Huawei/华为 P50 Pro（麒麟版）麒麟9000全网通鸿蒙系统准新手机', 2658, './img/main/iphone/1114.webp'),
(1115, 'iphone', 'vivo手机', 'vivo X100s Pro 新品旗舰闪充拍照手机官方正品性能游戏手机 vivo手机官方旗舰 ', 5899, './img/main/iphone/1115.webp'),
(1116, 'iphone', '苹果手机', 'Apple/苹果 iPhone 14 Pro 苹果14 Pro Max全新正品双卡5G手机', 5020, './img/main/iphone/1116.webp'),
(1117, 'iphone', '华为手机', 'Huawei/华为 Mate 60 Pro 512G', 7899, './img/main/iphone/1117.webp'),
(1118, 'iphone', '华为手机', 'HUAWEI/华为 nova 12 活力版6.88mm超薄潮美直屏 前置6000万超广角拍照 华为手机官方旗舰店鸿蒙智能手机', 2499, './img/main/iphone/1118.webp'),
(1119, 'iphone', '荣耀手机', 'honor/荣耀 畅玩20', 579, './img/main/iphone/1119.webp'),
(1120, 'iphone', 'vivo手机', '【16+512GB】vivo iQOO（数码） Neo8 Pro', 3599, './img/main/iphone/1120.webp');

-- --------------------------------------------------------

--
-- 表的结构 `nav_computer`
--

DROP TABLE IF EXISTS `nav_computer`;
CREATE TABLE IF NOT EXISTS `nav_computer` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_computer`
--

INSERT INTO `nav_computer` (`id`, `src`, `text`, `Price`) VALUES
(16, './img/nav/Computer/16.webp', 'Redmi G Pro 游戏本 2024', 8999.00),
(17, './img/nav/Computer/17.webp', 'MacBook Air', 7999.00),
(18, './img/nav/Computer/18.webp', 'HUAWEI MateBook 14 酷睿 Ultra', 7399.00),
(19, './img/nav/Computer/19.webp', 'HUAWEI MateBook D 14 2024', 3889.00),
(20, './img/nav/Computer/20.webp', 'Redmi Book Pro 16 2024', 896399.00),
(21, './img/nav/Computer/21.webp', 'HUAWEI MateBook E Go 2023款', 4099.00);

-- --------------------------------------------------------

--
-- 表的结构 `nav_earphone`
--

DROP TABLE IF EXISTS `nav_earphone`;
CREATE TABLE IF NOT EXISTS `nav_earphone` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_earphone`
--

INSERT INTO `nav_earphone` (`id`, `src`, `text`, `Price`) VALUES
(22, './img/nav/earphone/22.webp', 'vivo TWS 4 Hi-Fi', 499.00),
(23, './img/nav/earphone/23.webp', 'iQOO TWS Air', 199.00),
(24, './img/nav/earphone/24.webp', 'HUAWEI FreeBuds Lipstick 2 口红耳机', 1699.00),
(25, './img/nav/earphone/25.webp', 'HUAWEI FreeLace Pro', 599.00),
(26, './img/nav/earphone/26.webp', 'HUAWEI FreeClip 耳夹耳机', 1299.00),
(27, './img/nav/earphone/27.webp', 'AirPods Pro (第二代) - 配 MagSafe 充电盒 (USB‑C)', 1899.00);

-- --------------------------------------------------------

--
-- 表的结构 `nav_flat`
--

DROP TABLE IF EXISTS `nav_flat`;
CREATE TABLE IF NOT EXISTS `nav_flat` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_flat`
--

INSERT INTO `nav_flat` (`id`, `src`, `text`, `Price`) VALUES
(28, './img/nav/flat/28.webp', 'iQOO Pad2 Pro 平板电脑', 3399.00),
(29, './img/nav/flat/29.webp', 'vivo Pad3 Pro 平板电脑', 3999.00),
(30, './img/nav/flat/30.webp', 'Xiaomi Pad 6 Max 14', 3499.00),
(31, './img/nav/flat/31.webp', 'HUAWEI MatePad 11.5S 灵动款', 2099.00),
(32, './img/nav/flat/32.webp', 'iPad Air', 4799.00),
(33, './img/nav/flat/33.webp', 'iPad', 2999.00);

-- --------------------------------------------------------

--
-- 表的结构 `nav_household`
--

DROP TABLE IF EXISTS `nav_household`;
CREATE TABLE IF NOT EXISTS `nav_household` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_household`
--

INSERT INTO `nav_household` (`id`, `src`, `text`, `Price`) VALUES
(50, './img/nav/household/50.webp', '米家冰箱对开门610L墨羽岩', 2199.00),
(51, './img/nav/household/51.webp', '米家新风空调 立式3匹新1级能效', 6399.00),
(52, './img/nav/household/52.webp', '米家洗烘一体机', 1999.00),
(53, './img/nav/household/53.webp', '华为智能门锁 Plus', 2899.00),
(54, './img/nav/household/54.webp', '佳普乐G6-300A旗舰全自动智能马桶', 4399.00),
(55, './img/nav/household/55.webp', '巨省电 小米空调 1.5匹新1级能效', 1899.00);

-- --------------------------------------------------------

--
-- 表的结构 `nav_iphone`
--

DROP TABLE IF EXISTS `nav_iphone`;
CREATE TABLE IF NOT EXISTS `nav_iphone` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_iphone`
--

INSERT INTO `nav_iphone` (`id`, `src`, `text`, `Price`) VALUES
(10, './img/nav/iphone/10.webp', 'iphone 14', 5399.00),
(11, './img/nav/iphone/11.webp', 'vivo x100 Ultra', 6499.00),
(12, './img/nav/iphone/12.webp', 'vivo S19', 2499.00),
(13, './img/nav/iphone/13.webp', 'Xiaomi 14 Ultra', 6499.00),
(14, './img/nav/iphone/14.webp', 'HUAWEI Mate 60 RS 非凡大师', 12999.00),
(15, './img/nav/iphone/15.webp', 'OPPO Reno12', 2999.00);

-- --------------------------------------------------------

--
-- 表的结构 `nav_router`
--

DROP TABLE IF EXISTS `nav_router`;
CREATE TABLE IF NOT EXISTS `nav_router` (
  `id` int NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `nav_router`
--

INSERT INTO `nav_router` (`id`, `src`, `text`, `Price`) VALUES
(40, './img/nav/router/40.webp', 'Xiaomi路由器AX3000T', 159.00),
(41, './img/nav/router/41.webp', 'Xiaomi路由器 BE6500 Pro', 599.00),
(42, './img/nav/router/42.webp', '华为路由AX2 Pro（白色）', 199.00),
(43, './img/nav/router/43.webp', 'Tenda腾达AX12 Pro', 198.00),
(44, './img/nav/router/44.webp', '中兴（ZTE）巡天', 2999.00),
(45, './img/nav/router/45.webp', 'TP-LINK 大道', 159.90);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `account_id`, `order_number`, `order_date`, `order_amount`) VALUES
(1, '18725358784', '1718190600365-7520', '2024-06-11 12:26:34', 6541.00),
(2, '18725358784', '1718190603496-7520', '2024-06-12 19:10:03', 34296.00),
(3, '18725358784', '1718191091778-6063', '2024-06-12 19:18:12', 34296.00),
(4, '18725358784', '1718191301625-3244', '2024-06-12 19:21:42', 7899.00),
(5, '18725358784', '1718191552970-6183', '2024-06-12 19:25:53', 3599.00),
(6, '13187502076', '1718195565262-2502', '2024-06-12 20:32:45', 298000.00),
(7, '13187502076', '1718195672911-2986', '2024-06-12 20:34:33', 5020.00),
(8, '13187502076', '1718195794495-9834', '2024-06-12 20:36:34', 17999.00);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `account_id`, `Model`, `src`, `Price`, `quantity`) VALUES
(1113, '18725358784', '小米手机', './img/main/iphone/1113.webp', 1949.00, 1);

-- --------------------------------------------------------

--
-- 表的结构 `router_detail_table`
--

DROP TABLE IF EXISTS `router_detail_table`;
CREATE TABLE IF NOT EXISTS `router_detail_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `router_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `router_id` (`router_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `router_detail_table`
--

INSERT INTO `router_detail_table` (`id`, `router_id`, `detail_src`) VALUES
(2, 4000, './img/main/router/4000-1.webp'),
(3, 4000, './img/main/router/4000-2.webp'),
(4, 4000, './img/main/router/4000-3.webp'),
(5, 4000, './img/main/router/4000-4.webp'),
(6, 4000, './img/main/router/4000-5.webp'),
(7, 4001, './img/main/router/4001-1.webp'),
(8, 4001, './img/main/router/4001-2.webp'),
(9, 4001, './img/main/router/4001-3.webp'),
(10, 4001, './img/main/router/4001-4.webp'),
(11, 4001, './img/main/router/4001-5.webp'),
(12, 4002, './img/main/router/4002-1.webp'),
(13, 4002, './img/main/router/4002-2.webp'),
(14, 4002, './img/main/router/4002-3.webp'),
(15, 4002, './img/main/router/4002-4.webp'),
(16, 4002, './img/main/router/4002-5.webp'),
(17, 4003, './img/main/router/4003-1.webp'),
(18, 4003, './img/main/router/4003-2.webp'),
(19, 4003, './img/main/router/4003-3.webp'),
(20, 4003, './img/main/router/4003-4.webp'),
(21, 4003, './img/main/router/4003-5.webp'),
(22, 4004, './img/main/router/4004-1.webp'),
(23, 4004, './img/main/router/4004-2.webp'),
(24, 4004, './img/main/router/4004-3.webp'),
(25, 4004, './img/main/router/4004-4.webp'),
(26, 4004, './img/main/router/4004-5.webp'),
(27, 4005, './img/main/router/4005-1.webp'),
(28, 4005, './img/main/router/4005-2.webp'),
(29, 4005, './img/main/router/4005-3.webp'),
(30, 4005, './img/main/router/4005-4.webp'),
(31, 4005, './img/main/router/4005-5.webp'),
(32, 4006, './img/main/router/4006-1.webp'),
(33, 4006, './img/main/router/4006-2.webp'),
(34, 4006, './img/main/router/4006-3.webp'),
(35, 4006, './img/main/router/4006-4.webp'),
(36, 4006, './img/main/router/4006-5.webp'),
(37, 4007, './img/main/router/4007-1.webp'),
(38, 4007, './img/main/router/4007-2.webp'),
(39, 4007, './img/main/router/4007-3.webp'),
(40, 4007, './img/main/router/4007-4.webp'),
(41, 4007, './img/main/router/4007-5.webp'),
(42, 4008, './img/main/router/4008-1.png'),
(43, 4008, './img/main/router/4008-2.webp'),
(44, 4008, './img/main/router/4008-3.webp'),
(45, 4008, './img/main/router/4008-4.webp'),
(46, 4008, './img/main/router/4008-5.webp'),
(47, 4009, './img/main/router/4009-1.webp'),
(48, 4009, './img/main/router/4009-2.webp'),
(49, 4009, './img/main/router/4009-3.webp'),
(50, 4009, './img/main/router/4009-4.webp'),
(51, 4009, './img/main/router/4009-5.webp');

-- --------------------------------------------------------

--
-- 表的结构 `router_images_table`
--

DROP TABLE IF EXISTS `router_images_table`;
CREATE TABLE IF NOT EXISTS `router_images_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `router_id` int DEFAULT NULL,
  `detail_src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `router_id` (`router_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `router_images_table`
--

INSERT INTO `router_images_table` (`id`, `router_id`, `detail_src`) VALUES
(1, 4000, './img/detail/router/4000-1.jpg'),
(2, 4000, './img/detail/router/4000-2.jpg'),
(3, 4000, './img/detail/router/4000-3.jpg'),
(4, 4000, './img/detail/router/4000-4.jpg'),
(5, 4000, './img/detail/router/4000-5.jpg'),
(6, 4000, './img/detail/router/4000-6.jpg'),
(7, 4001, './img/detail/router/4001-1.jpg'),
(8, 4001, './img/detail/router/4001-2.jpg'),
(9, 4001, './img/detail/router/4001-3.jpg'),
(10, 4001, './img/detail/router/4001-4.jpg'),
(11, 4001, './img/detail/router/4001-5.jpg'),
(12, 4001, './img/detail/router/4001-6.jpg'),
(13, 4002, './img/detail/router/4002-1.jpg'),
(14, 4002, './img/detail/router/4002-2.jpg'),
(15, 4002, './img/detail/router/4002-3.jpg'),
(16, 4002, './img/detail/router/4002-4.jpg'),
(17, 4002, './img/detail/router/4002-5.jpg'),
(18, 4002, './img/detail/router/4002-6.jpg'),
(19, 4003, './img/detail/router/4003-1.jpg'),
(20, 4003, './img/detail/router/4003-2.jpg'),
(21, 4003, './img/detail/router/4003-3.jpg'),
(22, 4003, './img/detail/router/4003-4.jpg'),
(23, 4003, './img/detail/router/4003-5.jpg'),
(24, 4003, './img/detail/router/4003-6.jpg'),
(25, 4004, './img/detail/router/4004-1.jpg'),
(26, 4004, './img/detail/router/4004-2.jpg'),
(27, 4004, './img/detail/router/4004-3.jpg'),
(28, 4004, './img/detail/router/4004-4.jpg'),
(29, 4004, './img/detail/router/4004-5.jpg'),
(30, 4004, './img/detail/router/4004-6.jpg'),
(31, 4005, './img/detail/router/4005-1.jpg'),
(32, 4005, './img/detail/router/4005-2.jpg'),
(33, 4005, './img/detail/router/4005-3.jpg'),
(34, 4005, './img/detail/router/4005-4.jpg'),
(35, 4005, './img/detail/router/4005-5.jpg'),
(36, 4005, './img/detail/router/4005-6.jpg'),
(37, 4006, './img/detail/router/4006-1.jpg'),
(38, 4006, './img/detail/router/4006-2.jpg'),
(39, 4006, './img/detail/router/4006-3.jpg'),
(40, 4006, './img/detail/router/4006-4.jpg'),
(41, 4006, './img/detail/router/4006-5.jpg'),
(42, 4006, './img/detail/router/4006-6.jpg'),
(43, 4007, './img/detail/router/4007-1.jpg'),
(44, 4007, './img/detail/router/4007-2.jpg'),
(45, 4007, './img/detail/router/4007-3.jpg'),
(46, 4007, './img/detail/router/4007-4.jpg'),
(47, 4007, './img/detail/router/4007-5.jpg'),
(48, 4007, './img/detail/router/4007-6.jpg'),
(49, 4008, './img/detail/router/4008-1.jpg'),
(50, 4008, './img/detail/router/4008-2.jpg'),
(51, 4008, './img/detail/router/4008-3.jpg'),
(52, 4008, './img/detail/router/4008-4.jpg'),
(53, 4008, './img/detail/router/4008-5.jpg'),
(54, 4008, './img/detail/router/4008-6.jpg'),
(55, 4009, './img/detail/router/4009-1.jpg'),
(56, 4009, './img/detail/router/4009-2.jpg'),
(57, 4009, './img/detail/router/4009-3.jpg'),
(58, 4009, './img/detail/router/4009-4.jpg'),
(59, 4009, './img/detail/router/4009-5.jpg'),
(60, 4009, './img/detail/router/4009-6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `router_table`
--

DROP TABLE IF EXISTS `router_table`;
CREATE TABLE IF NOT EXISTS `router_table` (
  `id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `context` text,
  `Price` int DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `router_table`
--

INSERT INTO `router_table` (`id`, `category`, `Model`, `context`, `Price`, `src`) VALUES
(4000, 'router', 'X32', '【顺丰】锐捷星耀WiFi6路由器X32 PRO千兆家用高速双频5G无线全屋WiFi覆盖mesh电信光纤宽带睿易宿舍穿墙王', 299, './img/main/router/4000-1.webp'),
(4001, 'router', 'X60', '[新品]Ruijie锐捷天蝎电竞路由器星耀X60 NEW 家用WiFi6千兆AX6000高速穿墙王 2.5G网口宽带聚合 官方旗舰店', 649, './img/main/router/4001-1.webp'),
(4002, 'router', 'M32', '锐捷星耀M32无线路由器WiFi6千兆高速大户型全屋WiFi覆盖mesh组网家用子母套装穿墙王双频5G官方旗舰店', 469, './img/main/router/4002-1.webp'),
(4003, 'router', 'BE3600', 'TP-LINK WiFi7 BE3600路由器千兆家用高速tplink无线全屋覆盖子母路由穿墙王兼容WiFi6 7DR3610/3630', 246, './img/main/router/4003-1.webp'),
(4004, 'router', 'BE6500', 'TP-LINK Wi-Fi7 BE6500路由器 2.5G千兆家用高速tplink无线全屋覆盖子母路由器mesh穿墙 兼容WiFi6 7DR6560', 682, './img/main/router/4004-1.webp'),
(4005, 'router', 'BE12000', 'TP-LINK WiFi7 BE13000三频路由器 2.5G千兆家用高速tplink无线mesh全屋覆盖大户型穿墙7TR13090', 2588, './img/main/router/4005-1.webp'),
(4006, 'router', 'AX5400', 'TP-LINK WiFi6 AX5400无线路由器千兆高速网络tplink家用mesh大户型全屋覆盖子母路由器穿墙王宿舍5430', 359, './img/main/router/4006-1.webp'),
(4007, 'router', 'Redmi AX5400', '小米Redmi电竞路由器AX5400 wifi6增强版无线家用5400兆无线速率全平台游戏加速大户型全屋覆盖', 649, './img/main/router/4007-1.webp'),
(4008, 'router', '小米 AX6000', '小米路由器AX6000 WiFi6路由器家用千兆高速5G双频千兆端口大户型全屋覆盖wifi', 446, './img/main/router/4008-1.png'),
(4009, 'router', 'G3C BE18000', 'H3C/新华三BE18000万兆路由器WiFi7家用无线穿墙18000M超高速率16颗信号放大器电竞路由大覆盖', 2299, './img/main/router/4009-1.webp');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `account` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`account`, `password`, `name`, `address`) VALUES
('13187502076', '123456', '哈哈哈哈', '云南省玉溪市红塔区'),
('18725358784', '456789', 'Freely', '云南省保山市隆阳区');

--
-- 限制导出的表
--

--
-- 限制表 `computer_detail_table`
--
ALTER TABLE `computer_detail_table`
  ADD CONSTRAINT `computer_detail_table_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `computer_images_table`
--
ALTER TABLE `computer_images_table`
  ADD CONSTRAINT `computer_images_table_ibfk_1` FOREIGN KEY (`computer_id`) REFERENCES `computer_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `earphone_detail_table`
--
ALTER TABLE `earphone_detail_table`
  ADD CONSTRAINT `earphone_detail_table_ibfk_1` FOREIGN KEY (`earphone_id`) REFERENCES `earphone_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `earphone_images_table`
--
ALTER TABLE `earphone_images_table`
  ADD CONSTRAINT `earphone_images_table_ibfk_1` FOREIGN KEY (`earphone_id`) REFERENCES `earphone_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `flat_detail_table`
--
ALTER TABLE `flat_detail_table`
  ADD CONSTRAINT `flat_detail_table_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `flat_images_table`
--
ALTER TABLE `flat_images_table`
  ADD CONSTRAINT `flat_images_table_ibfk_1` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `household_detail_table`
--
ALTER TABLE `household_detail_table`
  ADD CONSTRAINT `household_detail_table_ibfk_1` FOREIGN KEY (`household_id`) REFERENCES `household_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `household_images_table`
--
ALTER TABLE `household_images_table`
  ADD CONSTRAINT `household_images_table_ibfk_1` FOREIGN KEY (`household_id`) REFERENCES `household_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `iphone_detail_table`
--
ALTER TABLE `iphone_detail_table`
  ADD CONSTRAINT `iphone_detail_table_ibfk_1` FOREIGN KEY (`iphone_id`) REFERENCES `iphone_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `iphone_images_table`
--
ALTER TABLE `iphone_images_table`
  ADD CONSTRAINT `iphone_images_table_ibfk_1` FOREIGN KEY (`iphone_id`) REFERENCES `iphone_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `users` (`account`) ON DELETE CASCADE;

--
-- 限制表 `router_detail_table`
--
ALTER TABLE `router_detail_table`
  ADD CONSTRAINT `router_detail_table_ibfk_1` FOREIGN KEY (`router_id`) REFERENCES `router_table` (`id`) ON DELETE CASCADE;

--
-- 限制表 `router_images_table`
--
ALTER TABLE `router_images_table`
  ADD CONSTRAINT `router_images_table_ibfk_1` FOREIGN KEY (`router_id`) REFERENCES `router_table` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
