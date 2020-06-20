-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 6 月 20 日 11:31
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `tutors_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `calendar_table`
--

CREATE TABLE `calendar_table` (
  `id` int(11) NOT NULL,
  `STUDENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TUTOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `calendar_table`
--

INSERT INTO `calendar_table` (`id`, `STUDENT`, `TUTOR`, `title`, `text`, `color`, `day`, `start`, `end`) VALUES
(19, '半田', '大河', 'aaaaa', 'php', '#ff0000', '2020-06-18', '18:00', '19:00'),
(20, '半田', '大河', 'Js', 'jsやるよ', '#ff0000', '2020-06-09', '18:00', '18:30'),
(21, '8', NULL, 'php', 'phpやるよ', '#ff0000', '2020-06-17', '18:00', '19:00'),
(22, '小林', '古謝', 'JS', 'JS勉強したい', '#ff0000', '2020-06-22', '22:22', '23:23'),
(26, '13', NULL, 'PHP', 'php', '#ff0000', '2020-06-01', '18:00', '19:00'),
(28, '15', NULL, 'JS', 'JS', '#ff0000', '2020-06-08', '18:00', '19:00'),
(29, '15', NULL, 'ruby', 'ruby', '#ff0000', '2020-06-25', '18:00', '22:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `tutors_user_table`
--

CREATE TABLE `tutors_user_table` (
  `user_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lid` varchar(64) NOT NULL,
  `lpw` varchar(255) NOT NULL,
  `user_type` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `tutors_user_table`
--

INSERT INTO `tutors_user_table` (`user_id`, `email`, `lid`, `lpw`, `user_type`, `life_flg`) VALUES
(1, 'test1@mail', 'perusona', '$2y$10$/rHfaDGgIuvJ1FE5.mkW7uikacQImWhTzNtFAfkLpq5t4Is.kmzky', 1, 0),
(2, 'test2@mail', 'taiga', '$2y$10$eAnhMYrKQp.XAC4ufVA3p.nHx3VmXd9nEeyYtuHRl9OdCuM80GzY.', 1, 0),
(3, 'test2@mail', 'taiga', '$2y$10$BDZOMT.ZZzWGWfsMM6icUucT32nFvnyGArBMdXSiZLz8mpeXu0YxO', 1, 0),
(4, 'test3@mail', 'handa', '$2y$10$vEtuQy0JMrEXT9Yn4mxkkO60JxxEstI05jD5pqA7ZAC6psjPEOkQW', 1, 0),
(5, 'test4@mail', 'yamamas', '$2y$10$bq0M2SdFb/WILGWReQ7Hn.PkfwmDUybsgSYwCGyzdeJEKiMUW1tC2', 1, 0),
(6, '12@12', '大河', '12', 0, 0),
(7, '1', 'kanri', '1', 0, 0),
(8, '12@12', '西田', '12', 1, 0),
(9, '12@12', '山枡', '12', 0, 0),
(10, '12', '西田', '12', 1, 0),
(11, '12@12', '小栗', '12', 1, 0),
(12, '12@12', '半田', '12', 0, 0),
(13, '12@12', '大井', '12', 1, 0),
(14, '12@12', '山枡さん', '12', 0, 0),
(15, '12@12', '古謝さん', '12', 1, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `calendar_table`
--
ALTER TABLE `calendar_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `tutors_user_table`
--
ALTER TABLE `tutors_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `calendar_table`
--
ALTER TABLE `calendar_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- テーブルのAUTO_INCREMENT `tutors_user_table`
--
ALTER TABLE `tutors_user_table`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
