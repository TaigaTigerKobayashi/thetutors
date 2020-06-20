-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 20, 2020 at 09:34 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tutors_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar_table`
--

CREATE TABLE `calendar_table` (
  `id` int(11) NOT NULL,
  `student_id` int(255) DEFAULT NULL,
  `tutor_id` int(255) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_table`
--

INSERT INTO `calendar_table` (`id`, `student_id`, `tutor_id`, `title`, `text`, `color`, `day`, `start`, `end`) VALUES
(11, 2, 4, 'aaaaa', 'aaaaaaaa', '#ff0000', '2020-06-09', '18:00', '19:00'),
(12, 1, 5, 'aaaaa', 'aaaaaa', '#ff0000', '2020-06-09', '20:00', '21:00'),
(13, 2, 4, 'aaaaa', 'aaaaaaaa', '#ff0000', '2020-06-15', '18:00', '19:00'),
(14, 1, 5, 'aaaaa', 'ああああああ', '#0033ff', '2020-06-12', '12:00', '13:00'),
(15, 2, 5, 'aaaa', 'ddddddd', '#ff0000', '2020-06-25', '18:00', '19:00'),
(16, 1, 4, 'aaaaa', 'aaaaaaaaaaa', '#ff0000', '2020-06-19', '9:00', '10:00'),
(17, 2, 5, 'bbbbbbbbb', 'bbbbbbbbbb', '#00ff66', '2020-06-11', '17:00', '18:00'),
(18, 2, 4, 'ccccccc', 'cccccccc', '#5100ff', '2020-06-30', '12:00', '13:00'),
(19, 5, NULL, 'aaaaa', 'php', '#ff0000', '2020-06-18', '18:00', '19:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_table`
--
ALTER TABLE `calendar_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_table`
--
ALTER TABLE `calendar_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;