-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2018 at 01:51 PM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Count`
--

CREATE TABLE `Count` (
  `id` int(11) NOT NULL DEFAULT '1',
  `rfid_count` bigint(20) NOT NULL DEFAULT '0',
  `motion_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Count`
--

INSERT INTO `Count` (`id`, `rfid_count`, `motion_count`) VALUES
(1, 37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rfid_entry`
--

CREATE TABLE `rfid_entry` (
  `ent_id` int(11) NOT NULL,
  `ent_rfid` char(255) NOT NULL,
  `ent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfid_entry`
--

INSERT INTO `rfid_entry` (`ent_id`, `ent_rfid`, `ent_date`) VALUES
(1, '0001198212', '2018-04-12 00:00:00'),
(2, '0001198212', '2018-04-12 00:00:00'),
(3, '0001198213', '2018-04-12 00:00:00'),
(4, '0001198213', '2018-04-12 00:00:00'),
(6, '0001198213', '2018-04-12 00:00:00'),
(7, '0001198256', '2018-04-12 00:00:00'),
(8, '0001204361', '2018-04-12 00:00:00'),
(9, '0001204359', '2018-04-12 00:00:00'),
(10, '0001204361', '2018-04-12 00:00:00'),
(11, '0001204363', '2018-04-12 00:00:00'),
(12, '0001204363', '2018-04-12 00:00:00'),
(13, '0001204363', '2018-04-12 00:00:00'),
(14, '0001204363', '2018-04-12 00:00:00'),
(15, '0001204363', '2018-04-12 00:00:00'),
(16, '0001204363', '2018-04-12 00:00:00'),
(19, '0001198214', '2018-04-12 00:00:00'),
(20, '0001204363', '2018-04-12 00:00:00'),
(21, '0001204363', '2018-04-12 00:00:00'),
(22, '0001204364', '2018-04-12 00:00:00'),
(23, '0001198214', '2018-04-12 00:00:00'),
(24, '0001198214', '2018-04-12 00:00:00'),
(25, '0001198210', '2018-04-12 00:00:00'),
(26, '0001198210', '2018-04-12 00:00:00'),
(27, '0001198210', '2018-04-12 00:00:00'),
(29, '0001198214', '2018-04-12 00:00:00'),
(30, '0001198214', '2018-04-12 00:00:00'),
(31, '0001198214', '2018-04-12 00:00:00'),
(32, '0001198214', '2018-04-12 00:00:00'),
(33, '0001198210', '2018-04-12 00:00:00'),
(35, '0001198212', '2018-04-12 00:00:00'),
(36, '0001198212', '2018-04-12 00:00:00'),
(37, '', '2018-04-12 00:00:00'),
(38, ' 0001198210', '2018-04-12 00:00:00'),
(39, '0001198212', '2018-04-12 00:00:00'),
(40, '0001198212', '2018-04-12 00:00:00'),
(41, '0001204359', '2018-04-12 00:00:00'),
(42, '0001198211', '2018-04-12 00:00:00'),
(45, '0001198213', '2018-04-12 00:00:00'),
(46, '0001204363', '2018-04-15 00:00:00'),
(47, '0001204359', '2018-04-15 00:00:00'),
(48, '0001204359', '2018-04-15 00:00:00'),
(49, '0001198213', '2018-04-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rfid_master`
--

CREATE TABLE `rfid_master` (
  `rfid_id` int(11) NOT NULL,
  `rfid_code` varchar(255) NOT NULL,
  `rfid_name` varchar(255) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `Days_present` int(11) NOT NULL DEFAULT '0',
  `st_mobile` decimal(10,0) NOT NULL,
  `Father__no` decimal(10,0) NOT NULL,
  `Teacher_no` decimal(10,0) NOT NULL,
  `rfid-status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfid_master`
--

INSERT INTO `rfid_master` (`rfid_id`, `rfid_code`, `rfid_name`, `rollno`, `Days_present`, `st_mobile`, `Father__no`, `Teacher_no`, `rfid-status`) VALUES
(1, '0001198212', 'Anurag Soni', '0225cs151001', 6, '9165654028', '7697238024', '7089106915', 1),
(2, '0001198211', 'Adarsh Mehta', '0225cs151002', 1, '9165654028', '7697238024', '7089106915', 1),
(3, '0001204363', 'Aditya Dixit', '0225cs151003', 9, '9165654028', '7697238024', '7089106915', 1),
(4, '0001198213', 'Shubham', '0225cs151004', 5, '9165654028', '7697238024', '7089106915', 1),
(5, '0001198214', 'Mikky', '0225cs151005', 7, '9165654028', '7697238024', '7089106915', 1),
(6, '0001204359', 'Shivam', '0225cs151006', 4, '9165654028', '7697238024', '7089106915', 1),
(7, '0001198210', 'Rupendra', '0225cs151007', 4, '9165654028', '7697238024', '7089106915', 1),
(8, '0001204361', 'Richa', '0225cs151008', 2, '9165654028', '7697238024', '7089106915', 1),
(9, '0001198256', 'Simran', '0225cs151009', 1, '9165654028', '7697238024', '7089106915', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Count`
--
ALTER TABLE `Count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfid_entry`
--
ALTER TABLE `rfid_entry`
  ADD PRIMARY KEY (`ent_id`);

--
-- Indexes for table `rfid_master`
--
ALTER TABLE `rfid_master`
  ADD PRIMARY KEY (`rfid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rfid_entry`
--
ALTER TABLE `rfid_entry`
  MODIFY `ent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `rfid_master`
--
ALTER TABLE `rfid_master`
  MODIFY `rfid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
