-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-09-01 07:22:43
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
-- 資料表結構 `shop8`
--
-- 建立時間： 2023-08-28 06:17:55
-- 最後更新： 2023-08-29 05:53:55
--

DROP TABLE IF EXISTS `shop8`;
CREATE TABLE `shop8` (
  `id` int(50) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表新增資料前，先清除舊資料 `shop8`
--

TRUNCATE TABLE `shop8`;
--
-- 傾印資料表的資料 `shop8`
--

INSERT INTO `shop8` (`id`, `img`, `title`, `info`) VALUES
(1, '1.jpg', '伯爵柚香波士頓派 <br>Earl Grapefruit Boston Pie', '$80/單片<br><br>蛋奶素'),
(2, '2.jpg', '伯爵核桃軟餅乾<br>Earl Grey Walnut Fudge Cookies', '$30/單片<br><br>蛋奶素'),
(3, '3.png', '金色山丘 地瓜蒙布朗<br>Sweet Potato Mont-Blanc', '$85/單片<br><br>葷(含酒)'),
(4, '4.png', '生酮乳酪捲<br>Keto Cheese Rolls', '$70/單片<br><br>蛋奶素'),
(5, '5.png', '生酮伯爵茶乳酪捲<br>Keto Earl Grey Cheese Rolls', '$70/單片<br><br>蛋奶素'),
(6, '6.png', '輕乳酪焦糖布丁蛋糕', '$65/單片<br><br>蛋奶素'),
(7, '7.png', '焦糖核桃咖啡派<br>Coffee Caramel Walnut Pie', '$90/單片<br><br>葷(含豬明膠)'),
(8, '8.png', '岩燒黃金乳酪派<br>Cream Cheese Pie', '$65/單片<br><br>蛋奶素'),
(9, '9.png', '檸檬脆皮泡芙<br>Lemon Puff with Custard Cream', '$45/單顆<br><br>蛋奶素'),
(10, '10.png', '粉紅泡泡慕斯蛋糕<br>Strawberry Mousse Cake', '$65/單片<br><br>葷(含酒與豬明膠)'),
(11, '11.png', '深黑巧克脆皮泡芙<br>Chocolate Puff with Chocolate Cream', '$45/單顆<br><br>蛋奶素'),
(12, '12.png', '草莓脆皮泡芙<br>Strawberry Puff', '$45/單顆<br><br>蛋奶素');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `shop8`
--
ALTER TABLE `shop8`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shop8`
--
ALTER TABLE `shop8`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
