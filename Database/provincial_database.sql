-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2018 at 07:35 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `provincial_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `disconnect_tb`
--

CREATE TABLE `disconnect_tb` (
  `disconnect_id` int(11) NOT NULL,
  `meter_id` varchar(10) NOT NULL,
  `time` datetime NOT NULL,
  `isRepaired` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meter_tb`
--

CREATE TABLE `meter_tb` (
  `meter_id` varchar(10) NOT NULL,
  `client_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meter_tb`
--

INSERT INTO `meter_tb` (`meter_id`, `client_id`, `password`, `last_update`) VALUES
('100', '1', '1234', '2018-03-01 00:00:00'),
('101', '2', '1234', '2018-03-02 00:00:00'),
('103', '3', '1234', '2018-03-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reading_tb`
--

CREATE TABLE `reading_tb` (
  `reading_id` int(11) NOT NULL,
  `meter_id` varchar(10) NOT NULL,
  `units` double NOT NULL,
  `time` datetime NOT NULL,
  `isUploaded` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reading_tb`
--

INSERT INTO `reading_tb` (`reading_id`, `meter_id`, `units`, `time`, `isUploaded`) VALUES
(1, '100', 10, '2018-03-01 00:00:00', NULL),
(2, '100', 12, '2018-03-02 00:00:00', NULL),
(3, '102', 1, '2018-03-02 07:14:24', NULL),
(6, '101', 22, '2018-03-02 00:00:00', NULL),
(13, '101', 20.2, '2018-03-03 20:50:23', NULL),
(14, '101', 202, '2018-03-03 20:50:46', NULL),
(15, '101', 202, '2018-03-03 20:52:02', NULL),
(17, '101', 22, '2018-03-03 21:02:56', NULL),
(18, '101', 22, '2018-03-03 21:03:33', NULL),
(19, '101', 22, '2018-03-03 21:05:40', NULL),
(21, '101', 244, '2018-03-03 21:54:41', 0),
(23, '101', 3, '2018-03-03 22:32:42', 0),
(24, '102', 5, '2018-03-03 23:20:48', 0),
(25, '102', 45, '2018-03-03 23:50:48', 0),
(26, '102', 4, '2018-03-03 23:53:42', 0),
(27, '102', 7, '2018-03-03 23:57:55', 0),
(28, '102', 8, '2018-03-03 23:58:16', 0),
(29, '100', 5, '2018-03-03 23:28:28', 0),
(30, '100', 4, '2018-03-03 23:58:28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disconnect_tb`
--
ALTER TABLE `disconnect_tb`
  ADD PRIMARY KEY (`disconnect_id`);

--
-- Indexes for table `meter_tb`
--
ALTER TABLE `meter_tb`
  ADD PRIMARY KEY (`meter_id`);

--
-- Indexes for table `reading_tb`
--
ALTER TABLE `reading_tb`
  ADD PRIMARY KEY (`reading_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disconnect_tb`
--
ALTER TABLE `disconnect_tb`
  MODIFY `disconnect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reading_tb`
--
ALTER TABLE `reading_tb`
  MODIFY `reading_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
