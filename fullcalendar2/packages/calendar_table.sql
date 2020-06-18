-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 6 月 18 日 06:54
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `tutors`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `calendar_table`
--

CREATE TABLE `calendar_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `calendar_table`
--

INSERT INTO `calendar_table` (`id`, `title`, `description`, `color`, `textColor`, `day`, `time`, `start`, `end`) VALUES
(1, 'チューター研修', 'php選手権について打ち合わせ', '#FF0F0', '#FFFFFF', '', '', '2020-06-16 08:46:06', '2020-06-18 08:46:06'),
(2, 'テスト', 'テストです', '0', '#ff0000', '2020-06-23', '10:30', NULL, NULL),
(3, 'aa', 'aaa', '0', '#ff0000', '2020-06-30', '10:30', NULL, NULL),
(4, 'dd', 'dd', '0', '#1d581e', '2020-06-30', '10:30', NULL, NULL),
(5, 'hh', 'hh', '0', '#f0e5e5', '2020-06-15', '10:30', NULL, NULL),
(6, 'qq', 'qq', '#ff0000', '#ff0000', '2020-06-08', '10:30', NULL, NULL),
(7, 'q', 'q', '#ff0000', '#ff0000', '2020-06-15', '10:30', NULL, NULL),
(8, 'JS', 'JS練習', '#f0e0e0', '#171616', '2020-06-09', '10:30', NULL, NULL),
(9, 'aaaa', 'aaaaaa', '#f64141', '#150404', '2020-06-30', '10:30', NULL, NULL),
(10, 'aaa', 'aaa', '#cfbebe', '#751010', '2020-06-02', '10:30', NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `calendar_table`
--
ALTER TABLE `calendar_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `calendar_table`
--
ALTER TABLE `calendar_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
