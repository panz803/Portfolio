-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-09-01 07:23:53
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `louisa`
--

-- --------------------------------------------------------

--
-- 資料表結構 `shopdownnav1`
--
-- 建立時間： 2023-08-31 06:22:29
-- 最後更新： 2023-08-31 06:27:38
--

DROP TABLE IF EXISTS `shopdownnav1`;
CREATE TABLE `shopdownnav1` (
  `id` int(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表新增資料前，先清除舊資料 `shopdownnav1`
--

TRUNCATE TABLE `shopdownnav1`;
--
-- 傾印資料表的資料 `shopdownnav1`
--

INSERT INTO `shopdownnav1` (`id`, `title`, `url`) VALUES
(1, '選擇單元', NULL),
(2, '濾掛咖啡系列', NULL),
(3, '精品咖啡', NULL),
(4, '經典義式咖啡', NULL),
(5, '嚴選在地小農牧場系列', NULL),
(6, '茶與其他飲品', NULL),
(7, '享瘦低醣新食感', NULL),
(8, '輕食', NULL),
(9, '軟歐藏心貝果', 'http://localhost/Louisa-main/louisa/shop7.php'),
(10, '糕點', 'http://localhost/Louisa-main/louisa/shop8.php'),
(11, '會議型糕點', 'http://localhost/Louisa-main/louisa/shop9.php'),
(12, 'LA MERENDA食光點心', NULL),
(13, '商品', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `shopdownnav1`
--
ALTER TABLE `shopdownnav1`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shopdownnav1`
--
ALTER TABLE `shopdownnav1`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
