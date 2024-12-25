-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-09-12 07:30:17
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `louisa`
--
CREATE DATABASE IF NOT EXISTS `louisa` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `louisa`;

-- --------------------------------------------------------

--
-- 資料表結構 `carousel`
--
-- 建立時間： 2023-08-01 07:22:52
--

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(10) NOT NULL,
  `ImgPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `carousel`
--

TRUNCATE TABLE `carousel`;
--
-- 傾印資料表的資料 `carousel`
--

INSERT INTO `carousel` (`id`, `ImgPath`) VALUES
(1, 'part_1.jpg'),
(2, 'part_2.jpg'),
(3, 'part_3.jpg'),
(4, 'part_4.jpg'),
(5, 'part_5.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `club_show1`
--
-- 建立時間： 2023-08-21 07:30:17
--

DROP TABLE IF EXISTS `club_show1`;
CREATE TABLE `club_show1` (
  `id` int(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` char(50) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `club_show1`
--

TRUNCATE TABLE `club_show1`;
--
-- 傾印資料表的資料 `club_show1`
--

INSERT INTO `club_show1` (`id`, `title`, `img`, `info`) VALUES
(1, '水果調性', 'club2.jpg', '<br>\r\n<h5>【巴拿馬藝伎 日曬（¼磅$750・半磅$1,360）】</h5>\r\n<p>世界冠軍品種，被稱作精品咖啡指標的巴拿馬藝伎，產量稀少珍貴，採用日曬處理、淺中焙度，口感乾淨明亮，聞得到花香、喝得到熱帶水果的甜韻。</p>\r\n\r\n<h6>風味：水蜜桃・熱帶水果・巧克力／焙度：淺中\r\n調性：水果調性</h6>\r\n\r\n<h5>【三連霸 古吉罕貝拉 非洲紅酒厭氧處理（¼磅$345・半磅$630）】</h5>\r\n<p>選自冠軍產區古吉的優質生豆，與尋豆師合作獨家客製「厭氧發酵日曬處理」，透過延長發酵時間將香氣和甜味保留住，提升風味發展出卓越的甜味及平衡感。 </p>\r\n\r\n<h6>風味：花香、荔枝、可可、溫帶水果／焙度：淺中\r\n調性：水果調性</h6>\r\n\r\n<h5>【超級肯亞（半磅$520）】</h5>\r\n<p>超級肯亞被譽為非洲精品豆之王，酸感優於一般肯亞能感受到極明亮的酸質，帶有黑醋栗、烏梅風味。</p>\r\n\r\n<h6>風味：柑橘・黑醋栗・烏梅・蔗糖／焙度：中\r\n調性：水果調性</h6>\r\n\r\n<h5>【水果耶加雪菲 G1（半磅$520）】</h5>\r\n<p>採用水洗處理法，過程中去除果皮與果肉並篩選掉不成熟的果實，與日曬法相比風味更清新香甜。</p>\r\n\r\n<h6>風味：水果感・葡萄・藍莓／焙度：淺\r\n調性：水果調性</h6>'),
(2, '木質調性', 'club3.jpg', '<br>\r\n<h5>【印尼 林東之金（半磅$520）】</h5>\r\n<p>林東之金曼特寧具有辨識度極高且讓饕客著迷的青草、藥草系風味，極致厚醇，凸顯出曼特寧特有的濃郁感。</p>\r\n\r\n<h6>風味：青草・藥草系風味／焙度：中\r\n調性：木質調性</h6>'),
(3, '花香調性', 'club4.jpg', '<br>\r\n<h5>【百年冠軍莊園 巴拿馬日曬（¼磅$360・半磅$660）】</h5>\r\n<p>嚴選於最佳巴拿馬（Best of Panama）獲獎無數的百年冠軍莊園咖啡豆，採用非洲棚日曬處理，帶有莓果、龍眼、核果、可可，Body厚實、甜感極佳。</p>\r\n\r\n<h6>風味：莓果、龍眼、核果、可可／焙度：中淺\r\n調性：花香調性</h6>\r\n\r\n<h5>【薩爾瓦多國寶豆種 PACAMARA（¼磅$315・半磅$570）】</h5>\r\n<p>由Pacas和Maragogipe混種培育而成，豆型碩大風味獨特，多次贏得CoE（Cup of Excellence）是為國際杯測賽中的常勝軍，花香濃烈，有著黑莓果明亮酸感，尾韻長帶有熟成柑橘的香甜。</p>\r\n\r\n<h6>風味：花香．黑莓果．熟成柑橘甜／焙度：中\r\n調性：花香調性</h6>');

-- --------------------------------------------------------

--
-- 資料表結構 `club_show2`
--
-- 建立時間： 2023-08-21 07:57:25
--

DROP TABLE IF EXISTS `club_show2`;
CREATE TABLE `club_show2` (
  `id` int(50) NOT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `club_show2`
--

TRUNCATE TABLE `club_show2`;
--
-- 傾印資料表的資料 `club_show2`
--

INSERT INTO `club_show2` (`id`, `info`) VALUES
(1, '<h5>【完美日曬耶加雪菲 G1（¼磅$275・半磅$500）】</h5>\r\n<p>咖啡果實經日曬後糖分轉化吸入咖啡豆中，能品嚐到濃郁奔放的果香、草莓、鳳梨等熱帶水果風味，尾韻甘甜醇厚。\r\n\r\n<strong>風味：果香・草莓・鳳梨・熱帶水果／焙度：淺\r\n調性：水果調性</strong></p>'),
(2, '<h5>【黃金曼特寧 G1-三次手選（半磅$520）】</h5>\r\n<p>選用Ｇ1特優級原生曼特寧，經由人工挑豆篩選優質生豆，價值直逼高海拔藍山咖啡，甘苦中散發天然水果香氣。\r\n\r\n<strong>風味：回甘明顯・水果香氣／焙度：中深\r\n調性：木質調性</strong></p>'),
(3, '<h5>【水洗耶加雪菲 科契爾 G1（¼磅$195・半磅$360）】</h5>\r\n<p>入口時細緻迷人的檸檬、茉莉花及野薑花香氣散發在口腔內，伴隨著柑橘般甘醇、酸甜的口感。\r\n\r\n<strong>風味：檸檬・柑橘・甜度高／焙度：淺中\r\n調性：水果調性</strong></p>'),
(4, '<h5>【肯亞 精選小農（¼磅$195・半磅$360）】</h5>\r\n<p>細緻、乾淨、酸質明亮，入口後由酸轉甜，蔗糖甜味帶出肯亞特有的烏梅酒香與黑醋栗般的尾韻。\r\n\r\n<strong>風味：烏梅酒香・黑醋栗／焙度：中\r\n調性：水果調性</strong></p>'),
(5, '<h5>【曼特寧 迦佑山 G1（半磅$340）】</h5>\r\n<p>嚴選迦佑產區Ｇ1高等級咖啡豆，散發獨特的大地藥草香及豐富的辛香料味，酸度低、口感厚實飽滿。\r\n\r\n<strong>風味：草本香料・醇厚口感／焙度：深\r\n調性：木質調性</strong></p>'),
(6, '<h5>【哥倫比亞 薇拉（半磅$340）】</h5>\r\n<p>世界第三大咖啡生產國哥倫比亞，以柔順甘醇、香甜順口著稱，葡萄柚般的明亮果酸及細緻口感，交織出豐富多變的餘韻。\r\n\r\n<strong>風味：葡萄柚・圓潤・甘甜／焙度：中\r\n調性：水果調性</strong></p>'),
(7, '<h5>【曼巴（¼磅$185・半磅$340）】</h5>\r\n<p>巴西咖啡太妃糖般的滑順甘甜，完美平衡曼特寧的醇厚濃度，更凸顯曼特寧特有的草本香料風味，兩者融合的口感溫順甘美怡人。\r\n\r\n<strong>風味：核果香料・平衡沉穩 ／焙度：中深\r\n調性：木質調性</strong></p>'),
(8, '<h5>【莊園老饕深焙（半磅$340）】</h5>\r\n<p>精選中南美洲高山種植的水洗阿拉比卡豆，香氣芳醇、口感豐厚沉穩，散發微微煙燻氣息。\r\n\r\n<strong>風味：黑巧克力・濃郁甘甜／焙度：深\r\n調性：木質調性</strong></h6>');

-- --------------------------------------------------------

--
-- 資料表結構 `img`
--
-- 建立時間： 2023-08-01 07:22:52
--

DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `id` int(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `imgPath` char(50) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `img`
--

TRUNCATE TABLE `img`;
--
-- 傾印資料表的資料 `img`
--

INSERT INTO `img` (`id`, `title`, `imgPath`, `info`) VALUES
(1, '<br>\r\n<br>\r\n<br>\r\n<p>JUL 30TH , 2023</p>\r\n<h3>8-9月黑卡優惠</h3>', 'card1.jpg', '<h4>尋豆師手沖〖限量販售〗</h4>\r\n<h5 style = \"color: #696969\";>【哥倫比亞 白朗峰 紫卡杜拉 薇拉水洗】黑卡價 $105（定價$140/杯）</h5>\r\n<h6 style = \"color: #696969\";>哥倫比亞 蒙大布蘭蔻(白朗峰)｜海拔1730公尺｜品種- 紫卡杜拉｜百香果水洗處理法｜中淺焙｜風味-乾香為百香果、芒果與草莓香氣。在口中展現香濃的鮮切百香果、芒果汁與金鑽鳳梨味，質地似優酪乳滑順飽滿，風味香甜多汁。</h6>\r\n\r\n<p style = \"color: #696969\";>• 咖啡因含量： ●  101-200mg/杯。  • 總熱量：(冰)4kcal、(熱)7.2kcal。</p>\r\n\r\n<h4>陶瓷塗層系列／咖啡馬克杯・85折</h4>\r\n<h6 style = \"color: #808080\";>\r\n＊路易莎陶瓷層彈跳杯-淺粉/卡其 定價$588。\r\n＊路易莎隨行陶瓷層保溫瓶-霧面白/拿鐵 定價$628。\r\n＊路易莎咖啡馬克杯-經典款/淺灰砂點款 定價$320。\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h4>憑5點換任1飲品 9折</h4>\r\n<h6 style = \"color: #808080\";>\r\n＊消費金額仍可集點（$60元集1點），點數須於下次消費使用。\r\n＊不限數量，皆可憑點折抵。</h6>\r\n\r\n<h4>咖啡豆【1/4磅&半磅】單包75折；【1/4磅】兩包7折</h4>\r\n<h6 style = \"color: #808080\";>\r\n風味和定價請見咖啡豆專區☞<a href=\"club_show1.php\" target=\"_blank\">私房咖啡系列</a>☞<a href=\"club_show2.php\" target=\"_blank\">精品咖啡系列</a><br>\r\n＊哥倫比亞 白朗峰 紫卡杜拉 薇拉水洗(定價$640)\r\n＊半磅路易莎精典綜合、典藏莊園綜合除外。\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h4>濾掛咖啡任選2盒(含)以上・總金額5折</h4>\r\n<h6 style = \"color: #808080\";>\r\n請見☞<a href=\"# target=\"_blank\">濾掛咖啡系列介紹</a><br>\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h5 style = \"background-color:#E5E4E2\";>消費滿額250元，憑5點免費兌換中杯美式1杯</h5>\r\n<h6 style = \"color: #808080\";>＊僅適用於餐飲產品，不適用購買咖啡豆、濾掛及周邊商品、馬克杯等，\r\n＊適用黑卡集點。\r\n\r\n備註：\r\n\r\n1.以門市實際銷售之商品價格計算。\r\n2.以紙本菜單正常銷售範圍和當期黑卡品項為準，其他商品不在活動範圍內。\r\n3.本期尋豆師手沖納入搭任 1 飲品活動範圍，並取該品項黑卡價計算。\r\n4.優惠不重複，自備環保杯折五元除外。\r\n5.黑卡不適用外送及你訂訂餐服務。\r\n6.圖片僅供參考，商品以實品為準。</h6>\r\n<hr>'),
(2, '<p>JUN 21ST , 2023</p>\r\n<h2>英國皇家泰勒伯爵茶季 ‧ 新品上市 9 折優惠</h2>', 'card2.jpg', '<h3>路易莎咖啡與皇家泰勒茶聯名活動，開跑啦！</h3>\r\n\r\n<h5 style = \"color:silver\";>“Tea Fit for a King”</h5>\r\n\r\n<h6 style = \"color: #696969\";>泰勒茶是英國皇家國宴唯一指定選用的皇家國宴茶\r\n\r\n使用義大利西西里生長的天然佛手柑，在香氣上兼具果香跟花香\r\n\r\n泰勒的伯爵茶為之名的風味茶，絕對是經典中的經典！\r\n\r\n邀請您至路易莎咖啡一起來品嘗全新風味~</h6>\r\n\r\n<h3 style = \"background-color: #FFE4E1\";>於6/22(四) ~ 7/23(日) 泰勒伯爵茶新品風味【上市 9 折優惠】</h3>\r\n\r\n<h6 style = \"color: #696969\";>全新的英國皇家經典泰勒伯爵系列品項有\r\n\r\n☞伯爵紅茶 (M)$45\r\n\r\n☞伯爵鮮奶茶 (M)$65、(L)$80\r\n\r\n☞伯爵水果茶 (L)$65\r\n\r\n☞伯爵柚香波士頓派 $80/片\r\n\r\n☞伯爵核桃軟餅乾 $30/片\r\n\r\n活動期間，路易莎咖啡全門市還有英國泰勒茶聯名的冰杯杯身和熱杯杯套，及可愛的主題打卡手拿版，還能看到門市的夥伴身上特色元素配飾，讓你一秒飛英國，喝英國皇家國宴茶感受英倫優雅。</h6>\r\n<hr>'),
(3, '<p>JUN 9TH , 2023</p>\r\n<h2>歡慶17週年慶 ‧ 飲品第二杯半價！</h2>', 'card3.jpg', '<h3 style = \"background-color:LightYellow\";>一起走過的日子，等不及與您分享喜悅\r\n\r\nHAPPY BIRTHDAY TO 路易莎</h3>\r\n\r\n<h5>☞ 6/12(一)～6/18(日)限時7天，每天11點前全飲品第二杯半價。\r\n\r\n(不含手沖、超越精品及其他商品)\r\n\r\n手機立即拿起來一鍵線上訂餐</h5>\r\n\r\n<h5>☞<a href=\"https://liff.line.me/1657160334-do4e2V4r\" target=\"_blank\">你訂訂餐</a></h5>\r\n\r\n<h6 style = \"color: #696969\";>注意事項：\r\n①本活動不提供寄杯服務，價低者折\r\n②優惠不重複，不與其他行銷活動並行，自備環保杯折五元除外\r\n③適用於實體門市及你訂訂餐服務\r\n④部分門市依百貨商場營業需求做適度調整\r\n⑤第二杯半價不包含客製化加價項目(例如：加一份濃縮)，需依加價商品數量另外付費\r\n⑥以MENU常態販售商品為準，其他商品不在活動範圍內\r\n⑦以門市實際販售之商品庫存為準\r\n⑧適用黑卡消費集點；不適用點數兌換</h6>\r\n\r\n<hr>'),
(4, '<p>MAY 31ST , 2023</p>\r\n<h2>6-7月黑卡優惠</h2>', 'card4.jpg', '<h4>尋豆師手沖〖限量販售〗</h4>\r\n<h5 style = \"color: #696969\";>【衣索比亞 科契爾 草莓甜心‧果丁丁日曬】黑卡價 $100（定價$135/杯）</h5>\r\n<h6 style = \"color: #696969\";>衣索比亞 果丁丁｜海拔2050-2200公尺｜品種- 古優原生種｜非洲床日曬｜中淺焙｜風味-草莓、蜜糖、風味香料、藍莓果，清爽口感</h6>\r\n\r\n<p style = \"color: #696969\";>• 咖啡因含量： ●  101-200mg/杯。  • 總熱量：(冰)4kcal、(熱)7.2kcal。</p>\r\n\r\n<h4>陶瓷塗層系列／咖啡馬克杯・85折</h4>\r\n<h6 style = \"color: #808080\";>\r\n＊路易莎陶瓷層彈跳杯-淺粉/卡其 定價$588。\r\n＊路易莎隨行陶瓷層保溫瓶-霧面白/拿鐵 定價$628。\r\n＊路易莎咖啡馬克杯-經典款/淺灰砂點款 定價$320。\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h4>憑5點換任1飲品 9折</h4>\r\n<h6 style = \"color: #808080\";>\r\n＊消費金額仍可集點（$60元集1點），點數須於下次消費使用。\r\n＊不限數量，皆可憑點折抵。</h6>\r\n\r\n<h4>咖啡豆【1/4磅&半磅】單包75折；【1/4磅】兩包7折</h4>\r\n<h6 style = \"color: #808080\";>\r\n風味和定價請見咖啡豆專區☞<a href=\"club_show1.php\" target=\"_blank\">私房咖啡系列</a>☞<a href=\"club_show2.php\" target=\"_blank\">精品咖啡系列</a><br>\r\n＊哥倫比亞 白朗峰 紫卡杜拉 薇拉水洗(定價$640)\r\n＊半磅路易莎精典綜合、典藏莊園綜合除外。\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h4>濾掛咖啡任選2盒(含)以上・總金額5折</h4>\r\n<h6 style = \"color: #808080\";>\r\n請見☞<a href=\"# target=\"_blank\">濾掛咖啡系列介紹</a><br>\r\n＊不適用黑卡集點。</h6>\r\n\r\n<h5 style = \"background-color:#E5E4E2\";>消費滿額250元，憑5點免費兌換中杯美式1杯</h5>\r\n<h6 style = \"color: #808080\";>＊僅適用於餐飲產品，不適用購買咖啡豆、濾掛及周邊商品、馬克杯等，\r\n＊適用黑卡集點。\r\n\r\n備註：\r\n\r\n1.以門市實際銷售之商品價格計算。\r\n2.以紙本菜單正常銷售範圍和當期黑卡品項為準，其他商品不在活動範圍內。\r\n3.本期尋豆師手沖納入搭任 1 飲品活動範圍，並取該品項黑卡價計算。\r\n4.優惠不重複，自備環保杯折五元除外。\r\n5.黑卡不適用外送及你訂訂餐服務。\r\n6.圖片僅供參考，商品以實品為準。</h6>\r\n<hr>'),
(5, '<p>MAY 25TH , 2023</p>\r\n<h2>夏季質感選物</h2>', 'card5.jpg', '<h3 style = \"background-color:LightSalmon\";>讓路易莎來完美您的生活品味</h3>\r\n<h5>推出超新質感選物，讓你外出隨行增添時尚感\r\n不可或缺的環保餐具組與一款讓人享受雨天的職人傘\r\n一起成為今夏時尚的完美結合❤️  </h5>\r\n<h6>◆隨行不鏽鋼摺疊餐具組 黑卡價$199/定價$249</h6>\r\n<h6 style = \"color:LightSalmon\";>☑戶外野餐簡易收納</h6>\r\n<h6>◆透明黑直傘 黑卡價$338/定價$398</h6>\r\n<h6 style = \"color:LightSalmon\";>☑日系風格，一款讓人享受雨天的職人傘</h6>\r\n<h6>◆隨行不鏽鋼餐具組 黑卡價$209/定價$259</h6>\r\n<h6 style = \"color:LightSalmon\";>☑質感矽膠保護套</h6>\r\n\r\n<h6  style = \"color:#808080\";>\r\n備註：\r\n\r\n．活動依門市現場公告為主\r\n．販售時間、數量依門市實際供應為準。\r\n．刊載之商品僅供參考，商品以實品為準。\r\n．商品不適用黑卡消費集點</h6>\r\n<hr>\r\n<br>\r\n<br>\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `shop`
--
-- 建立時間： 2023-09-10 05:19:50
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `flag` double NOT NULL,
  `img` char(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `shop`
--

TRUNCATE TABLE `shop`;
--
-- 傾印資料表的資料 `shop`
--

INSERT INTO `shop` (`id`, `flag`, `img`, `title`, `info`) VALUES
(1, 1, '1.jpg', '<strong><h5>大師精選系列\r\nMASTER COLLECTION</h5></strong>', '<p>\r\n$440 ／盒10入\r\n\r\n\r\n2入・巴拿馬藝伎 日曬 (世界冠軍豆種)\r\n焙度：淺中\r\n\r\n風味：水蜜桃、熱帶水果、巧克力\r\n\r\n\r\n4入・巴拿馬 日曬\r\n焙度：淺中\r\n\r\n風味：酒香、鳳梨、熱帶水果、果乾\r\n\r\n\r\n4入・肯亞 精選小農\r\n焙度：中\r\n\r\n風味：烏梅酒香、黑醋栗\r\n</p>'),
(2, 1, '2.jpg', '<strong><h5>黑金尋豆師系列\r\n\r\n</h5></strong>', '<p>\r\n$400 ／盒10入\r\n\r\n\r\n5入・完美日曬耶加雪菲 G1\r\n焙度：淺\r\n\r\n風味：果香、草莓、鳳梨、熱帶水果\r\n\r\n\r\n3入・黃金曼特寧 G1（三次手選）\r\n焙度：中深\r\n\r\n風味：回甘明顯、水果香氣\r\n\r\n\r\n2入・中美洲超級象豆\r\n焙度：中\r\n\r\n風味：甜度高、厚實、酒香\r\n</p>'),
(3, 1, '3.jpg', '<strong><h5>白金尋豆師系列\r\n\r\n</h5></strong>', '<p>\r\n$320 ／盒10入\r\n\r\n\r\n5入・水洗耶加雪菲 科契爾 G1\r\n焙度：淺中\r\n\r\n風味：檸檬、柑橘、甜度高\r\n\r\n\r\n3入・曼巴\r\n焙度：中深\r\n\r\n風味：核果香料、平衡沉穩\r\n\r\n\r\n2入・曼特寧 迦佑山 G1\r\n焙度：深\r\n\r\n風味：草本香料、醇厚口感\r\n</p>'),
(4, 1, '4.jpg', '<strong><h5>典藏莊園綜合\r\nFINCA RESERVE BLEND</h5></strong>', '<p>\r\n$320 ／盒10入\r\n\r\n\r\n焙度：中深\r\n\r\n風味：花香、柑橘類水果甜味、奶油巧克力、黑糖甜味\r\n</p>'),
(5, 1, '5.jpg', '<strong><h5>路易莎經典綜合\r\nLOUISA CLASSIC BLEND</h5></strong>', '<p>\r\n$260 ／盒10入\r\n\r\n \r\n焙度：中深\r\n\r\n風味：深色莓果和烤堅果香氣、榛果巧克力、奶油甜韻\r\n</p>'),
(6, 2, NULL, NULL, '<p>\r\n莊園級美式 (冰)\r\nSpecialty Americano\r\n\r\nM $60\r\nL $80\r\n\r\n莊園濃縮系列\r\n</p>'),
(7, 2, NULL, NULL, '<p>\r\n莊園級美式 (熱)\r\nSpecialty Americano\r\n\r\nM $60\r\nL $80\r\n\r\n莊園濃縮系列\r\n</p>'),
(8, 2, NULL, NULL, '<p>\r\n莊園級拿鐵 (冰)\r\nSpecialty Coffee Latte\r\n\r\nM $80\r\nL $100\r\n\r\n莊園濃縮系列\r\n</p>'),
(9, 2, NULL, NULL, '<p>\r\n莊園級拿鐵 (熱)\r\nSpecialty Coffee Latte\r\n\r\nM $80\r\nL $100\r\n\r\n莊園濃縮系列\r\n</p>'),
(10, 2, NULL, NULL, '<p>\r\n特濃小卡布 (4oz)\r\nPiccolo (4oz)\r\n\r\nM $60\r\n\r\n莊園濃縮系列 / 僅供內用熱飲\r\n</p>'),
(11, 2, NULL, NULL, '<p>\r\n澳洲小拿鐵 (8oz)\r\nFlat White (8oz)\r\n\r\nM $65\r\n\r\n莊園濃縮系列 / 僅供熱飲\r\n</p>'),
(12, 2, NULL, NULL, '<p>\r\n義式濃縮\r\nEspresso\r\n\r\nM $60\r\n\r\n莊園濃縮系列 / 僅供內用熱飲\r\n</p>'),
(13, 2, NULL, NULL, '<p>\r\n完美日曬耶加雪菲 G1 (冰)\r\nYirgacheffe G1 Natural\r\n\r\nM $100\r\n\r\n典藏手沖咖啡\r\n</p>'),
(14, 2, NULL, NULL, '<p>\r\n完美日曬耶加雪菲 G1 (熱)\r\nYirgacheffe G1 Natural\r\n\r\nM $100\r\n\r\n典藏手沖咖啡\r\n</p>'),
(15, 2, NULL, NULL, '<p>\r\n黃金曼特寧 G1 (三次手選) (冰)\r\nGolden Mandheling G1(TP)\r\n\r\nM $100\r\n\r\n典藏手沖咖啡\r\n</p>'),
(16, 2, NULL, NULL, '<p>\r\n黃金曼特寧 G1 (三次手選) (熱)\r\nGolden Mandheling G1(TP)\r\n\r\nM $100\r\n\r\n典藏手沖咖啡\r\n</p>'),
(17, 2, NULL, NULL, '<p>\r\n水洗耶加雪菲 科契爾 G1 (冰)\r\nYirgacheffe Kochere G1\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(18, 2, NULL, NULL, '<p>\r\n水洗耶加雪菲 科契爾 G1 (熱)\r\nYirgacheffe Kochere G1\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(19, 2, NULL, NULL, '<p>\r\n肯亞 精選小農 (冰)\r\nKenya Small holders\r\n\r\nM $85\r\n\r\n典藏手沖精品\r\n</p>'),
(20, 2, NULL, NULL, '<p>\r\n肯亞 精選小農 (熱)\r\nKenya Small holders\r\n\r\nM $85\r\n\r\n典藏手沖精品\r\n</p>'),
(21, 2, NULL, NULL, '<p>\r\n曼特寧 迦佑山 G1 (冰)\r\nMandheling Gayo Mountain G1\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(22, 2, NULL, NULL, '<p>\r\n曼特寧 迦佑山 G1 (熱)\r\nMandheling Gayo Mountain G1\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(23, 2, NULL, NULL, '<p>\r\n哥倫比亞 薇拉 (冰)\r\nColombia Huila\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(24, 2, NULL, NULL, '<p>\r\n哥倫比亞 薇拉 (熱)\r\nColombia Huila\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(25, 2, NULL, NULL, '<p>\r\n曼巴 (冰)\r\nMandheling / Brazil blend\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(26, 2, NULL, NULL, '<p>\r\n曼巴 (熱)\r\nMandheling / Brazil blend\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(27, 2, NULL, NULL, '<p>\r\n莊園老饕深焙 (冰)\r\nChoice Blended(Dark)\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(28, 2, NULL, NULL, '<p>\r\n莊園老饕深焙 (熱)\r\nChoice Blended(Dark)\r\n\r\nM $85\r\n\r\n典藏手沖咖啡\r\n</p>'),
(29, 3, NULL, NULL, '燕麥拿鐵(冰)\r\nM $75\r\nL $95\r\n'),
(30, 3, NULL, NULL, '燕麥拿鐵(熱)\r\nM $75\r\nL $95\r\n'),
(31, 3, NULL, NULL, '抹茶風味拿鐵 (冰)\r\nM $80\r\nL $100\r\n'),
(32, 3, NULL, NULL, '抹茶風味拿鐵 (熱)\r\nM $80\r\nL $100'),
(33, 3, NULL, NULL, '咖啡拿鐵 (冰)\r\nCoffee Latte\r\n\r\nM $70\r\nL $90\r\n'),
(34, 3, NULL, NULL, '咖啡拿鐵 (熱)\r\nCoffee Latte\r\n\r\nM $70\r\nL $90\r\n'),
(35, 3, NULL, NULL, '卡布奇諾 (冰)\r\nCappuccino\r\n\r\nM $70\r\nL $90\r\n'),
(36, 3, NULL, NULL, '卡布奇諾 (熱)\r\nCappuccino\r\n\r\nM $70\r\nL $90\r\n\r\n '),
(37, 3, NULL, NULL, '焦糖風味拿鐵 (冰)\r\nFlavored Coffee / Caramel\r\n\r\nM $80\r\nL $100\r\n'),
(38, 3, NULL, NULL, '焦糖風味拿鐵 (熱)\r\nFlavored Coffee / Caramel\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(39, 3, NULL, NULL, '榛果風味拿鐵 (冰)\r\nFlavored Coffee / Hazelnut\r\n\r\nM $80\r\nL $100\r\n'),
(40, 3, NULL, NULL, '榛果風味拿鐵 (熱)\r\nFlavored Coffee / Hazelnut\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(41, 3, NULL, NULL, '香草風味拿鐵 (冰)\r\nFlavored Coffee / Vanilla\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(42, 3, NULL, NULL, '香草風味拿鐵 (熱)\r\nFlavored Coffee / Vanilla\r\n\r\nM $80\r\nL $100\r\n'),
(43, 3, NULL, NULL, '橘皮風味拿鐵 (冰)\r\nFlavored Coffee / Orange Peel\r\n\r\nM $80\r\nL $100'),
(44, 3, NULL, NULL, '橘皮風味拿鐵 (熱)\r\nFlavored Coffee / Orange Peel\r\n\r\nM $80\r\nL $100\r\n'),
(45, 3, NULL, NULL, '黑糖風味拿鐵 (冰)\r\nFlavored Coffee / Brown Sugar\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(46, 3, NULL, NULL, '黑糖風味拿鐵 (熱)\r\nFlavored Coffee / Brown Sugar\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(47, 3, NULL, NULL, '義式摩卡 (冰)\r\nMochacino\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(48, 3, NULL, NULL, '義式摩卡 (熱)\r\nMochacino\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(49, 3, NULL, NULL, '焦糖瑪奇朵 (冰)\r\nCaramel Macchiato\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(50, 3, NULL, NULL, '焦糖瑪奇朵 (熱)\r\nCaramel Macchiato\r\n\r\nM $80\r\nL $100\r\n\r\n '),
(51, 3, NULL, NULL, '路易莎特調咖啡 (冰)\r\nLouisa Special\r\n\r\nM $60\r\nL $75\r\n\r\n '),
(52, 3, NULL, NULL, '路易莎特調咖啡 (熱)\r\nLouisa Special\r\n\r\nM $60\r\nL $75\r\n\r\n '),
(53, 3, NULL, NULL, '鴛鴦咖啡 (冰)\r\nMilk Tea Coffee\r\n\r\nM $60\r\nL $75\r\n'),
(54, 4, NULL, NULL, '小農經典拿鐵 (冰)\r\nCoffee Latte\r\n\r\nM $80\r\nL $100'),
(55, 4, NULL, NULL, '小農經典拿鐵 (熱)\r\nCoffee Latte\r\n\r\nM $80\r\nL $100\r\n'),
(56, 4, NULL, NULL, '小農鮮奶咖啡 (冰)\r\nCoffee Milk\r\n\r\nM $65\r\nL $80\r\n'),
(57, 4, NULL, NULL, '小農鮮奶咖啡 (熱)\r\nCoffee Milk\r\n\r\nM $65\r\nL $80'),
(58, 4, NULL, NULL, '小農雪點鮮奶茶 (冰)\r\nTea Latte\r\n\r\nM $60\r\n\r\n(含黑糖)'),
(59, 4, NULL, NULL, '小農雪點鮮奶茶 (熱)\r\nTea Latte\r\n\r\nM $60\r\n\r\n(含黑糖)'),
(60, 4, NULL, NULL, '黑糖風味小農鮮奶 (冰)\r\nBrown Sugar Flavored Milk\r\n\r\nM $60\r\n\r\n '),
(61, 4, NULL, NULL, '黑糖風味小農鮮奶 (熱)\r\nBrown Sugar Flavored Milk\r\n\r\nM $60\r\n'),
(62, 4, NULL, NULL, '可可風味小農鮮奶 (冰)\r\nChocolate Flavored Milk\r\n\r\nM $60\r\n'),
(63, 4, NULL, NULL, '可可風味小農鮮奶 (熱)\r\nChocolate Flavored Milk\r\n\r\nM $60\r\n'),
(64, 5.1, NULL, NULL, '伯爵水果茶 New\r\nEarl Grey Fruit Tea\r\n\r\nL $65'),
(65, 5.1, NULL, NULL, '伯爵鮮奶茶 New\r\nEarl Grey Milk Tea\r\n\r\nM $65\r\nL $80\r\n'),
(66, 5.1, NULL, NULL, '伯爵紅茶 New\r\nEarl Grey Black Tea\r\n\r\nM $45'),
(67, 5.1, NULL, NULL, '精選英式紅茶(冰)\r\nBritish Tea\r\n\r\nM $40\r\n'),
(68, 5.1, NULL, NULL, '精選英式紅茶(熱)\r\nBritish Tea\r\n\r\nM $40\r\n'),
(69, 5.1, NULL, NULL, '精選英式奶茶(冰)\r\nBritish Milk Tea\r\n\r\nM $55\r\nL $65\r\n'),
(70, 5.1, NULL, NULL, '精選英式奶茶(冰)\r\nBritish Milk Tea\r\n\r\nM $55\r\nL $65\r\n'),
(71, 5.1, NULL, NULL, '精選英式奶茶(熱)\r\nBritish Milk Tea\r\n\r\nM $55\r\nL $65\r\n'),
(72, 5.1, NULL, NULL, '精選英式紅茶拿鐵(冰)\r\nBritish Tea Latte\r\n\r\nM $60\r\nL $75'),
(73, 5.1, NULL, NULL, '精選英式紅茶拿鐵(熱)\r\nBritish Tea Latte\r\n\r\nM $60\r\nL $75\r\n'),
(74, 5.1, NULL, NULL, '黑糖雪點奶茶(冰)\r\nBrown Sugar Milk Tea\r\n\r\nM $55\r\n'),
(75, 5.1, NULL, NULL, '黑糖雪點奶茶(熱)\r\nBrown Sugar Milk Tea\r\n\r\nM $55\r\n'),
(76, 5.2, NULL, NULL, '南非國寶青檸茶(冰)\r\nLime & Rooibos Tea\r\n\r\nM $40\r\n\r\n(無咖啡因)'),
(77, 5.2, NULL, NULL, '南非國寶青檸茶(熱)\r\nLime & Rooibos Tea\r\n\r\nM $40\r\n\r\n(無咖啡因)'),
(78, 5.2, NULL, NULL, '紅蜜鮮奶茶(冰)\r\nHoney & Rooibos Latte\r\n\r\nM $55\r\n\r\n(無咖啡因)'),
(79, 5.2, NULL, NULL, '紅蜜鮮奶茶(熱)\r\nHoney & Rooibos Latte\r\n\r\nM $55\r\n\r\n(無咖啡因)'),
(80, 5.2, NULL, NULL, '泰式鮮奶茶(冰)\r\nThai Tea Latte\r\n\r\nM $55\r\n'),
(81, 5.2, NULL, NULL, '泰式鮮奶茶(熱)\r\nThai Tea Latte\r\n\r\nM $55\r\n'),
(82, 5.2, NULL, NULL, '泰奶咖啡(冰)\r\nThai Tea Coffee\r\n\r\nM $70\r\n\r\n '),
(83, 5.2, NULL, NULL, '泰奶咖啡(熱)\r\nThai Tea Coffee\r\n\r\nM $70\r\n'),
(84, 5.2, NULL, NULL, '大臣賞 焙茶鮮奶茶 (冰)\r\nHojicha Latte\r\n\r\nM $65'),
(85, 5.2, NULL, NULL, '大臣賞 焙茶鮮奶茶 (熱)\r\nHojicha Latte\r\n\r\nM $65\r\n'),
(86, 5.2, NULL, NULL, '100%一番抹茶鮮奶茶 (冰)\r\nFirst Flush Matcha Latte\r\n\r\nM $65\r\n\r\n '),
(87, 5.2, NULL, NULL, '100%一番抹茶鮮奶茶 (熱)\r\nFirst Flush Matcha Latte\r\n\r\nM $65\r\n'),
(88, 5.3, NULL, NULL, '錫蘭紅茶(冰)\r\nCeylon Black Tea\r\n\r\nL $40\r\n\r\n '),
(89, 5.3, NULL, NULL, '錫蘭紅茶(熱)\r\nCeylon Black Tea\r\n\r\nL $40\r\n'),
(90, 5.3, NULL, NULL, '薰香綠茶(冰)\r\nGreen Tea\r\n\r\nL $40\r\n\r\n '),
(91, 5.3, NULL, NULL, '薰香綠茶(熱)\r\nGreen Tea\r\n\r\nL $40\r\n'),
(92, 5.3, NULL, NULL, '經典水果茶(冰)\r\nClassic Fruit Tea\r\n\r\nL $60\r\n\r\n '),
(93, 5.3, NULL, NULL, '經典水果茶(熱)\r\nClassic Fruit Tea\r\n\r\nL $60\r\n\r\n '),
(94, 5.3, NULL, NULL, '柳橙鮮果風味綠茶(冰)\r\nOrange Green Tea\r\n\r\nL $60\r\n\r\n '),
(95, 5.3, NULL, NULL, '檸檬鮮果風味綠茶(冰)\r\nLemon Green Tea\r\n\r\nL $60\r\n\r\n '),
(96, 5.3, NULL, NULL, '百香鮮果風味綠茶(冰)\r\nGranadilla Green Tea\r\n\r\nL $60\r\n\r\n '),
(97, 5.3, NULL, NULL, '芒果鮮果風味綠茶(冰)\r\nMango Green Tea\r\n\r\nL $60\r\n\r\n '),
(98, 5.3, NULL, NULL, '太妃糖風味紅茶(冰)\r\nToffee Black Tea\r\n\r\nL $45\r\n\r\n '),
(99, 5.3, NULL, NULL, '太妃糖風味紅茶(熱)\r\nToffee Black Tea\r\n\r\nL $45\r\n\r\n '),
(100, 5.3, NULL, NULL, '貴妃荔枝風味紅茶(冰)\r\nLitchi Black Tea\r\n\r\nL $45\r\n\r\n '),
(101, 5.3, NULL, NULL, '貴妃荔枝風味紅茶(熱)\r\nLitchi Black Tea\r\n\r\nL $45\r\n\r\n '),
(102, 5.3, NULL, NULL, '四季翠玉青茶(冰)\r\nTurquoise tea\r\n\r\nL $45\r\n\r\n '),
(103, 5.3, NULL, NULL, '四季翠玉青茶(熱)\r\nTurquoise tea\r\n\r\nL $45\r\n\r\n '),
(104, 5.3, NULL, NULL, '皇家伯爵茶(冰)\r\nEarl Grey Tea\r\n\r\nL $45\r\n\r\n '),
(105, 5.3, NULL, NULL, '皇家伯爵茶(熱)\r\nEarl Grey Tea\r\n\r\nL $45\r\n\r\n '),
(106, 5.4, NULL, NULL, '英國百年茶莊紅茶冰沙\r\nBritish Tea Frappe\r\n\r\nM $50'),
(107, 5.4, NULL, NULL, '義式巧克力冰沙\r\nChocolate Frappe\r\n\r\nM $60\r\n\r\n '),
(108, 5.4, NULL, NULL, '拿鐵咖啡冰沙\r\nCoffee Latte Frappe\r\n\r\nL $70\r\n\r\n '),
(109, 5.4, NULL, NULL, '摩卡咖啡冰沙\r\nMochaccino Frappe\r\n\r\nL $80\r\n\r\n '),
(110, 5.4, NULL, NULL, '大臣賞 焙茶鮮奶冰沙\r\nHojicha Latte Frappe\r\n\r\nM $65\r\n\r\n '),
(111, 5.4, NULL, NULL, '100%一番抹茶鮮奶冰沙\r\nFirst Flush Matcha Latte Frappe\r\n\r\nM $65\r\n\r\n '),
(112, 5.5, NULL, NULL, '愛丁堡女王紅茶 (冰)\r\nCeylon & Apple Tea\r\n\r\nL $55\r\n'),
(113, 5.5, NULL, NULL, '愛丁堡女王紅茶 (熱)\r\nCeylon & Apple Tea\r\n\r\nL $55\r\n'),
(114, 5.5, NULL, NULL, '義式巧克力(冰)\r\nChocolate\r\n\r\nM $55\r\nL $70\r\n'),
(115, 5.5, NULL, NULL, '義式巧克力(熱)\r\nChocolate\r\n\r\nM $55\r\nL $70\r\n'),
(116, 5.5, NULL, NULL, '水蜜桃蘋果風味茶 (冰)\r\nPeach & Apple Tea\r\n\r\nM $55\r\n\r\n(無咖啡因)'),
(117, 5.5, NULL, NULL, '水蜜桃蘋果風味茶 (熱)\r\nPeach & Apple Tea\r\n\r\nL $55\r\n\r\n(無咖啡因)'),
(118, 6.1, NULL, NULL, '火焰雞胸 花椰飯 New\r\nRoasted Chicken Breast & Cauliflower rice\r\n\r\n$ $150'),
(119, 6.1, NULL, NULL, '泰式打拋豬 花椰飯 New\r\nThai Stir-fry Minced Pork(Pad Krapow Moo) & Cauliflower rice\r\n\r\n$ $140'),
(120, 6.1, NULL, NULL, '澳洲和牛漢堡排 花椰飯\r\nAustralian Wagyu Beef Burger Patties & Cauliflower rice\r\n\r\n$ $140'),
(121, 6.1, NULL, NULL, '泰式碳烤雞腿排 花椰飯\r\nThai Roasted Chicken Thighs & Cauliflower rice\r\n\r\n$ $150'),
(122, 6.1, NULL, NULL, '薑汁燒肉 花椰飯\r\nGinger Pork & Cauliflower rice\r\n\r\n$ $130\r\n'),
(123, 6.1, NULL, NULL, '野菇青醬 花椰飯\r\nMushroom in Pesto Sauce & Cauliflower rice\r\n\r\n$ $130\r\n\r\n(蛋奶素)'),
(124, 6.2, NULL, NULL, '羅勒野菇拌花椰飯\r\nCauliflower Rice with Mushroom in Pesto Sauce\r\n\r\n$ $110\r\n\r\n(奶素)'),
(125, 6.2, NULL, NULL, '羅勒野菇筆管麵\r\nPenne Gratin with Mushroom in Pesto Sauce\r\n\r\n$ $120\r\n\r\n(奶素)'),
(126, 6.2, NULL, NULL, '波隆那野菇拌花椰飯 New\r\nCauliflower rice with Mushroom in Tamato Sauce\r\n\r\n$ $110\r\n\r\n(奶素)'),
(127, 6.2, NULL, NULL, '波隆那野菇筆管麵\r\nPenne Gratin with Mushroom in Tamato Sauce\r\n\r\n$ $120\r\n\r\n(奶素)'),
(128, 6.2, NULL, NULL, '波隆那未來肉拌花椰飯\r\nCauliflower rice with THE Meat in Tamato Sauce\r\n\r\n$ $130\r\n\r\n(奶素)'),
(129, 6.3, NULL, NULL, '泰式綠咖哩筆管麵 培根｜燻雞\r\nThai Green Curry with Penne\r\n\r\n$ $120( 升級腿排+$10)\r\n'),
(130, 6.3, NULL, NULL, '川味牛腩花椰飯\r\nBraised Beef Brisket with Cauliflower Rice\r\n\r\n$ $140'),
(131, 6.3, NULL, NULL, '菠菜奶油千層麵\r\nCreamy Spinach Lasagna\r\n\r\n$ $140\r\n\r\n(植物五辛素)'),
(132, 6.3, NULL, NULL, '義式肉醬千層麵\r\nLasagna Bolognese\r\n\r\n$ $140\r\n\r\n '),
(133, 6.3, NULL, NULL, '泰式紅咖哩花椰飯 培根｜燻雞 New\r\nThai Red Curry with Cauliflower Rice\r\n\r\n$ $110( 升級腿排+$10)\r\n'),
(134, 6.3, NULL, NULL, '泰式綠咖哩花椰飯 培根｜燻雞 New\r\nThai Green Curry with Cauliflower Rice\r\n\r\n$ $110( 升級腿排+$10)\r\n'),
(135, 6.3, NULL, NULL, '泰式紅咖哩筆管麵 培根｜燻雞(2選1) New\r\nThai Green Curry with Penne\r\n\r\n$ $120( 升級腿排+$10)\r\n'),
(136, 7.1, NULL, NULL, '青醬野菇磚壓 New\r\nMushroom With Pesto\r\n\r\n$55\r\n\r\n奶素'),
(137, 7.1, NULL, NULL, '火腿起司\r\nHam & Cheese\r\n\r\n$55\r\n\r\n '),
(138, 7.1, NULL, NULL, '鮪魚玉米\r\nTuna & Corn\r\n\r\n$60\r\n\r\n '),
(139, 7.1, NULL, NULL, '培根起司蛋\r\nBacon, Egg & Cheese\r\n\r\n$60\r\n'),
(140, 7.1, NULL, NULL, '薑汁燒肉\r\nGinger Roasted Pork\r\n\r\n$70'),
(141, 7.1, NULL, NULL, '墨西哥辣椒豬肉\r\nJalapeño Pork\r\n\r\n$70\r\n\r\n '),
(142, 7.1, NULL, NULL, '墨西哥辣椒牛肉\r\nJalapeño Beef\r\n\r\n$80\r\n\r\n '),
(143, 7.1, NULL, NULL, '法式紅酒牛肉\r\nBeef Bourguignon\r\n\r\n$80\r\n\r\n '),
(144, 7.2, NULL, NULL, '義式磚壓三明治 New\r\nwrapanini\r\n\r\n$65\r\n\r\n奶素'),
(145, 7.2, NULL, NULL, '麥香三明治 New\r\nWhole Wheat Sandwich\r\n\r\n$65\r\n\r\n植物五辛素'),
(146, 7.2, NULL, NULL, '瑪芬堡 New\r\nEnglish Muffin\r\n\r\n$70\r\n\r\n奶素'),
(147, 7.2, NULL, NULL, '炊米堡 New\r\nRice Burger\r\n\r\n$70\r\n\r\n奶素'),
(148, 7.2, NULL, NULL, '風味三明治 New\r\nFlavored Sandwich\r\n\r\n$70\r\n\r\n植物五辛素'),
(149, 7.2, NULL, NULL, '貝果 New\r\nBagel\r\n\r\n$70\r\n\r\n植物五辛素'),
(150, 7.3, NULL, NULL, '原味\r\nHoney\r\n\r\n$60\r\n'),
(151, 7.3, NULL, NULL, '火腿起司\r\nHam & Cheese\r\n\r\n$65'),
(152, 7.3, NULL, NULL, '鮪魚\r\nTuna\r\n\r\n$70\r\n'),
(153, 7.4, NULL, NULL, '豬肉起司瑪芬堡\r\nPork & Cheese\r\n\r\n$60\r\n\r\n '),
(154, 7.4, NULL, NULL, '豬肉瑪芬堡加蛋\r\nPork, Egg & Cheese\r\n\r\n$70\r\n\r\n '),
(155, 7.4, NULL, NULL, '雙層豬肉瑪芬堡\r\nDouble Pork & Cheese\r\n\r\n$80\r\n'),
(156, 7.4, NULL, NULL, '雙層豬肉瑪芬堡加蛋\r\nDouble Pork, Egg & Cheese\r\n\r\n$90\r\n'),
(157, 7.5, NULL, NULL, '起司蛋堡\r\nCheese with Peanut Butter\r\n\r\n$50\r\n\r\n(蛋奶素/含花生醬)'),
(158, 7.5, NULL, NULL, '火腿起司\r\nHam & Cheese with Peanut Butter\r\n\r\n$55\r\n\r\n(含花生醬)'),
(159, 7.5, NULL, NULL, '培根起司\r\nBacon & Cheese with Peanut Butter\r\n\r\n$60\r\n\r\n(含花生醬)'),
(160, 7.6, NULL, NULL, '草莓\r\nStrawberry\r\n\r\n$50\r\n\r\n(奶素)'),
(161, 7.6, NULL, NULL, '藍莓\r\nBlueberry\r\n\r\n$50\r\n\r\n(奶素)'),
(162, 7.6, NULL, '榛果可可\r\nHazelnut Cocoa\r\n\r\n$50\r\n\r\n(奶素)', NULL),
(163, 7.6, NULL, NULL, '脆粒花生\r\nPeanut Butter\r\n\r\n$50\r\n\r\n(奶素)'),
(164, 7.6, NULL, NULL, '芋泥\r\nTaro\r\n\r\n$50\r\n\r\n(奶素)'),
(165, 7.6, NULL, NULL, '芋泥芝心麻糬\r\nTaro with Mochi & Cheese\r\n\r\n$70\r\n\r\n(奶素)'),
(166, 7.7, NULL, NULL, '火腿\r\nHam\r\n\r\n$50\r\n'),
(167, 7.7, NULL, NULL, '蔬菜\r\nVegetables\r\n\r\n$50\r\n\r\n(植物五辛素)'),
(168, 7.7, NULL, NULL, '鮪魚\r\nTuna\r\n\r\n$50\r\n'),
(169, 7.7, NULL, NULL, '燻雞\r\nSmoked chicken\r\n\r\n$60\r\n'),
(170, 7.7, NULL, '烤腿排\r\nQuarter BBQ\r\n\r\n$65\r\n', NULL),
(171, 7.7, NULL, NULL, '義式里肌豬 New\r\nItalian Pork Loin\r\n\r\n$65\r\n'),
(172, 7.8, NULL, NULL, '火腿\r\nHam\r\n\r\n$55\r\n\r\n '),
(173, 7.8, NULL, NULL, '蔬菜\r\nVegetables\r\n\r\n$55\r\n\r\n(植物五辛素)'),
(174, 7.8, NULL, NULL, '鮪魚\r\nTuna\r\n\r\n$55\r\n'),
(175, 7.8, NULL, NULL, '燻雞\r\nSmoked Chicken\r\n\r\n$65\r\n\r\n '),
(176, 7.8, NULL, NULL, '烤腿排\r\nQuarter BBQ\r\n\r\n$70\r\n'),
(177, 7.8, NULL, NULL, '義式里肌豬 New\r\nItalian Pork Loin\r\n\r\n$70\r\n'),
(178, 7.9, NULL, NULL, '火腿\r\nHam\r\n\r\n$65\r\n'),
(179, 7.9, NULL, NULL, '蔬菜\r\nVegetables\r\n\r\n$65\r\n\r\n(植物五辛素)'),
(180, 7.9, NULL, NULL, '鮪魚\r\nTuna\r\n\r\n$65\r\n'),
(181, 7.9, NULL, NULL, '燻雞\r\nSmoked Chicken\r\n\r\n$75\r\n'),
(182, 7.9, NULL, NULL, '烤腿排\r\nQuarter BBQ\r\n\r\n$80\r\n'),
(183, 7.9, NULL, NULL, '義式里肌豬 New\r\nItalian Pork Loin\r\n\r\n$80\r\n\r\n '),
(184, 7.101, NULL, NULL, '火腿\r\nHam\r\n\r\n$65\r\n'),
(185, 7.101, NULL, NULL, '蔬菜\r\nVegetables\r\n\r\n$65\r\n\r\n(植物五辛素)'),
(186, 7.101, NULL, NULL, '鮪魚\r\nTuna\r\n\r\n$65\r\n'),
(187, 7.101, NULL, NULL, '燻雞\r\nSmoked Chicken\r\n\r\n$75'),
(188, 7.101, NULL, NULL, '烤腿排\r\nQuarter BBQ\r\n\r\n$80\r\n\r\n '),
(189, 7.101, NULL, NULL, '草莓\r\nStrawberry\r\n\r\n$50\r\n\r\n(全素)'),
(190, 7.101, NULL, NULL, '藍莓\r\nBlueberry\r\n\r\n$50\r\n\r\n(全素)'),
(191, 7.101, NULL, NULL, '榛果可可\r\nHazelnut Cocoa\r\n\r\n$50\r\n\r\n(奶素)'),
(192, 7.101, NULL, NULL, '脆粒花生\r\nPeanut Butter\r\n\r\n$50\r\n\r\n(全素)'),
(193, 7.101, NULL, NULL, '義式里肌豬 New\r\nItalian Pork Loin\r\n\r\n$80'),
(194, 7.11, NULL, NULL, '豬肉起司\r\nPork & Cheese\r\n\r\n$60\r\n'),
(195, 7.11, NULL, NULL, '墨西哥辣椒豬肉\r\nJalapeño Pork\r\n\r\n$75'),
(196, 7.11, NULL, NULL, '薑汁燒肉\r\nGinger Roasted Pork\r\n\r\n$80\r\n'),
(197, 7.11, NULL, NULL, '墨西哥辣椒牛肉\r\nJalapeño Beef\r\n\r\n$85\r\n'),
(198, 7.11, NULL, NULL, '法式紅酒牛肉\r\nBeef Bourguignon\r\n\r\n$85\r\n'),
(199, 7.12, NULL, NULL, '墨西哥辣椒豬肉堡\r\nJalapeño Pork\r\n\r\n$70\r\n'),
(200, 7.12, NULL, NULL, '日式燒肉堡\r\nJapanese Roasted Pork\r\n\r\n$75\r\n'),
(201, 7.12, NULL, NULL, '墨西哥辣椒牛肉堡\r\nJalapeño Beef\r\n\r\n$80\r\n'),
(202, 7.12, NULL, NULL, '法式紅酒牛肉堡\r\nBeef Bourguignon\r\n\r\n$80\r\n'),
(203, 7.12, NULL, NULL, '雙層起司雞腿堡\r\nDouble Cheese Chicken\r\n\r\n$80'),
(204, 7.13, NULL, NULL, '起司歐姆蛋\r\nCheese\r\n\r\n$55\r\n\r\n(蛋奶素)'),
(205, 7.13, NULL, NULL, '培根歐姆蛋\r\nBacon\r\n\r\n$65'),
(206, 7.13, NULL, NULL, '鮪魚歐姆蛋\r\nTuna\r\n\r\n$65\r\n'),
(207, 7.13, NULL, NULL, '蔬菜歐姆蛋\r\nVegetables\r\n\r\n$65\r\n\r\n(蛋奶素)'),
(208, 9, '1.jpg', '伯爵柚香波士頓派 <br>Earl Grapefruit Boston Pie', '$80/單片<br><br>蛋奶素'),
(209, 9, '2.jpg', '伯爵核桃軟餅乾<br>Earl Grey Walnut Fudge Cookies', '$30/單片<br><br>蛋奶素'),
(210, 9, '3.png', '金色山丘 地瓜蒙布朗<br>Sweet Potato Mont-Blanc', '$85/單片<br><br>葷(含酒)'),
(211, 9, '4.png', '生酮乳酪捲<br>Keto Cheese Rolls', '$70/單片<br><br>蛋奶素'),
(212, 9, '5.png', '生酮伯爵茶乳酪捲<br>Keto Earl Grey Cheese Rolls', '$70/單片<br><br>蛋奶素'),
(213, 9, '6.png', '輕乳酪焦糖布丁蛋糕', '$65/單片<br><br>蛋奶素'),
(214, 9, '7.png', '焦糖核桃咖啡派<br>Coffee Caramel Walnut Pie', '$90/單片<br><br>葷(含豬明膠)'),
(215, 9, '8.png', '岩燒黃金乳酪派<br>Cream Cheese Pie', '$65/單片<br><br>蛋奶素'),
(216, 9, '9.png', '檸檬脆皮泡芙<br>Lemon Puff with Custard Cream', '$45/單顆<br><br>蛋奶素'),
(217, 9, '10.png', '粉紅泡泡慕斯蛋糕<br>Strawberry Mousse Cake', '$65/單片<br><br>葷(含酒與豬明膠)'),
(218, 9, '11.png', '深黑巧克脆皮泡芙<br>Chocolate Puff with Chocolate Cream', '$45/單顆<br><br>蛋奶素'),
(219, 9, '12.png', '草莓脆皮泡芙<br>Strawberry Puff', '$45/單顆<br><br>蛋奶素');

-- --------------------------------------------------------

--
-- 資料表結構 `shopdownnav`
--
-- 建立時間： 2023-08-31 05:31:08
--

DROP TABLE IF EXISTS `shopdownnav`;
CREATE TABLE `shopdownnav` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 資料表新增資料前，先清除舊資料 `shopdownnav`
--

TRUNCATE TABLE `shopdownnav`;
--
-- 傾印資料表的資料 `shopdownnav`
--

INSERT INTO `shopdownnav` (`id`, `name`, `url`) VALUES
(1, '選擇單元', '#'),
(2, '濾掛咖啡系列', 'shop1.php'),
(3, '精品咖啡', 'shop2.php'),
(4, '經典義式咖啡', 'shop3.php'),
(5, '嚴選在地小農牧場系列', 'shop4.php'),
(6, '茶與其他飲品', 'shop5.php'),
(7, '享受低醣新食感', 'shop6.php'),
(8, '輕食', 'shop7.php'),
(9, '軟歐藏心貝果', 'shop8.php'),
(10, '糕點', 'shop9.php'),
(11, '會議型糕點', 'shop10.php'),
(12, 'LA MERENDA食光點心', 'shop11.php'),
(13, '商品', 'shop12.php'),
(14, '過敏原資訊', 'shop13.php'),
(15, '營養標示資訊', 'shop14.php');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `club_show1`
--
ALTER TABLE `club_show1`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `club_show2`
--
ALTER TABLE `club_show2`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `shopdownnav`
--
ALTER TABLE `shopdownnav`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `club_show1`
--
ALTER TABLE `club_show1`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `club_show2`
--
ALTER TABLE `club_show2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `img`
--
ALTER TABLE `img`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shopdownnav`
--
ALTER TABLE `shopdownnav`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
