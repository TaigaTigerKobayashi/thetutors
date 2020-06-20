-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 20, 2020 at 09:38 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tutors_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tutors_user_table`
--

CREATE TABLE `tutors_user_table` (
  `user_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lid` varchar(64) NOT NULL,
  `lpw` varchar(255) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutors_user_table`
--

INSERT INTO `tutors_user_table` (`user_id`, `email`, `lid`, `lpw`, `user_type`) VALUES
(1, 'test1@mail', 'perusona', '$2y$10$/rHfaDGgIuvJ1FE5.mkW7uikacQImWhTzNtFAfkLpq5t4Is.kmzky', 1),
(2, 'test2@mail', 'taiga', '$2y$10$eAnhMYrKQp.XAC4ufVA3p.nHx3VmXd9nEeyYtuHRl9OdCuM80GzY.', 1),
(3, 'test2@mail', 'taiga', '$2y$10$BDZOMT.ZZzWGWfsMM6icUucT32nFvnyGArBMdXSiZLz8mpeXu0YxO', 1),
(4, 'test3@mail', 'handa', '$2y$10$vEtuQy0JMrEXT9Yn4mxkkO60JxxEstI05jD5pqA7ZAC6psjPEOkQW', 1),
(5, 'test4@mail', 'yamamas', '$2y$10$bq0M2SdFb/WILGWReQ7Hn.PkfwmDUybsgSYwCGyzdeJEKiMUW1tC2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutors_user_table`
--
ALTER TABLE `tutors_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tutors_user_table`
--
ALTER TABLE `tutors_user_table`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;