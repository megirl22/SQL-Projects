-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 07, 2025 at 11:33 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MyFavMusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE `Album` (
  `album_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`album_id`, `title`, `artist_id`) VALUES
(1, 'Mission 3:16', 1),
(2, 'The Standard', 1),
(3, 'Restart', 2),
(4, 'Stand', 2),
(5, 'This Is Not a Test', 3),
(6, 'Eye On It', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artist_id`, `name`) VALUES
(1, 'Carman'),
(2, 'Newsboys'),
(3, 'TobyMac');

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`genre_id`, `name`) VALUES
(1, 'Contemporary'),
(3, 'Hip-hop'),
(2, 'Rock');

-- --------------------------------------------------------

--
-- Table structure for table `Track`
--

CREATE TABLE `Track` (
  `track_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Track`
--

INSERT INTO `Track` (`track_id`, `title`, `len`, `rating`, `count`, `album_id`, `genre_id`) VALUES
(1, 'Mission 3:16', 300, 5, 6, 1, 1),
(2, 'Legendary Mission', 200, 5, 8, 1, 1),
(3, 'the Courtroom', 180, 5, 4, 1, 1),
(4, 'Who is in the House', 482, 5, 0, 2, 1),
(5, 'Great God', 482, 5, 0, 2, 1),
(6, 'Restart', 313, 5, 0, 3, 2),
(7, 'Thats How You Change the World', 280, 5, 0, 3, 2),
(8, 'Fishers Of Men', 200, 5, 0, 3, 2),
(9, 'Clean', 150, 5, 0, 4, 2),
(10, 'Stand', 180, 5, 0, 4, 2),
(11, 'Come Through', 140, 5, 0, 4, 2),
(12, 'This is Not A Test', 107, 5, 0, 5, 3),
(13, 'Move (Keep Walking)', 227, 5, 0, 5, 3),
(14, 'Feel It', 200, 5, 0, 5, 3),
(15, 'Backseat Driver', 145, 5, 0, 5, 3),
(16, 'Speak Life', 160, 5, 0, 5, 3),
(17, 'Steal My Show', 205, 5, 0, 5, 3),
(18, 'Me Without You', 207, 5, 0, 6, 3),
(19, 'Mission 3:16', 300, 5, 6, 1, 1),
(20, 'Legendary Mission', 200, 5, 8, 1, 1),
(21, 'the Courtroom', 180, 5, 4, 1, 1),
(22, 'Who is in the House', 482, 5, 0, 2, 1),
(23, 'Great God', 482, 5, 0, 2, 1),
(24, 'Restart', 313, 5, 0, 3, 2),
(25, 'Thats How You Change the World', 280, 5, 0, 3, 2),
(26, 'Fishers Of Men', 200, 5, 0, 3, 2),
(27, 'Clean', 150, 5, 0, 4, 2),
(28, 'Stand', 180, 5, 0, 4, 2),
(29, 'Come Through', 140, 5, 0, 4, 2),
(30, 'This is Not A Test', 107, 5, 0, 5, 3),
(31, 'Move (Keep Walking)', 227, 5, 0, 5, 3),
(32, 'Feel It', 200, 5, 0, 5, 3),
(33, 'Backseat Driver', 145, 5, 0, 5, 3),
(34, 'Speak Life', 160, 5, 0, 5, 3),
(35, 'Steal My Show', 205, 5, 0, 5, 3),
(36, 'Me Without You', 207, 5, 0, 6, 3),
(37, 'Eye On It', 237, 5, 0, 6, 3),
(38, 'Mission 3:16', 300, 5, 6, 1, 1),
(39, 'Legendary Mission', 200, 5, 8, 1, 1),
(40, 'the Courtroom', 180, 5, 4, 1, 1),
(41, 'Who is in the House', 482, 5, 0, 2, 1),
(42, 'Great God', 482, 5, 0, 2, 1),
(43, 'Restart', 313, 5, 0, 3, 2),
(44, 'Thats How You Change the World', 280, 5, 0, 3, 2),
(45, 'Fishers Of Men', 200, 5, 0, 3, 2),
(46, 'Clean', 150, 5, 0, 4, 2),
(47, 'Stand', 180, 5, 0, 4, 2),
(48, 'Come Through', 140, 5, 0, 4, 2),
(49, 'This is Not A Test', 107, 5, 0, 5, 3),
(50, 'Move (Keep Walking)', 227, 5, 0, 5, 3),
(51, 'Feel It', 200, 5, 0, 5, 3),
(52, 'Backseat Driver', 145, 5, 0, 5, 3),
(53, 'Speak Life', 160, 5, 0, 5, 3),
(54, 'Steal My Show', 205, 5, 0, 5, 3),
(55, 'Me Without You', 207, 5, 0, 6, 3),
(56, 'Eye On It', 237, 5, 0, 6, 3),
(57, 'Lose Myself', 407, 5, 0, 6, 3),
(58, 'Forgiveness', 500, 5, 0, 6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `Track`
--
ALTER TABLE `Track`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Album`
--
ALTER TABLE `Album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Track`
--
ALTER TABLE `Track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Track`
--
ALTER TABLE `Track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `track_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
