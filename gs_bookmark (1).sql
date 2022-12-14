-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-12-14 02:03:23
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_bookmark`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `countryname` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `latitude` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `longitude` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `countryname`, `name`, `latitude`, `longitude`, `content`, `date`) VALUES
(1, '日本', '日光東照宮', '36.7581114', '139.5987496', '有名だけど、行きずらい場所です。', '2022-12-13 15:25:25'),
(2, '日本', '日光東照宮', '36.7581114', '139.5987496', '有名だけど、行きずらい場所です。', '2022-12-13 15:29:21'),
(3, 'ペルー', 'マチュピチュ', '-13.16306', '-72.54556', 'インカ帝国の天空都市', '2022-12-13 18:45:00'),
(6, 'ペルー', 'マチュピチュ', '-13.16306', '-72.54556', 'インカ帝国の天空都市', '2022-12-13 18:45:27'),
(7, 'ニュージーランド', 'スペルバウンド鍾乳洞', '-38.260719', '175.109924', '地中に広がる星空体験', '2022-12-13 22:21:47'),
(8, '日本', '沢田マンション', '33.579456', '133.553055', '日本の九龍城と呼ばれる違法建築', '2022-12-13 22:55:13'),
(9, '日本', '沢田マンション', '33.579456', '133.553055', '家族と住人が今でも増築している建物', '2022-12-14 00:32:12');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
