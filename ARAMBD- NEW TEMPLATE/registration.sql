-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 07:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `des` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `des`) VALUES
(1, 'Restaurant', 'The restaurant serves breakfast, lunch, and dinner.'),
(2, 'Electrician', 'Electricians install, maintain, and repair electrical power, communications, lighting, and control systems in homes, businesses, and factories.'),
(3, 'Driver', 'Drives clients around in an efficient, safe and timely manner.'),
(4, 'Security Guard', 'Secures premises and personnel by patrolling property, monitoring surveillance equipment, and access points. Investigates security breaches, incidents, and other alarming behavior. '),
(5, 'Gardening', 'The laying out and care of a plot of ground devoted partially or wholly to the growing of plants such as flowers, herbs, or vegetables.'),
(6, 'Homeshifting', 'Home shifting, also known as house moving or relocation, is the process of moving from one home to another');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `reg_id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`reg_id`, `name`, `phone`, `password`) VALUES
(3, 'Hasib', 45687, '345687'),
(4, 'Abid', 3457357, 'ADFHRWTR'),
(5, 'Lalon', 17112, 'aabbcc'),
(6, 'Monon', 17113, 'aabbcc'),
(7, 'Rayhan', 17114, 'khubvalo'),
(8, 'Arman', 17116, 'professoijyf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `des` varchar(500) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `phone`, `des`, `nid`, `address`, `Category`) VALUES
(3, 'Hasib', 45687, 'A very enthusiastic person', '543432', 'Uattara-15', 'Management'),
(4, 'Abid', 3457357, 'Hard working', '3594765', 'Online', 'Electrician'),
(5, 'Lalon', 17112, '', '', '', 'Carpenter'),
(6, 'Monon', 17113, 'Alhamdulillah', '34875', 'Norway', 'Mason'),
(7, 'Rayhan', 17114, 'Nayok', '34854', 'Uttara', 'Singer'),
(8, 'Arman', 17116, 'jybtd', '7654543', 'jyrbdytr', 'Dancer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `reg_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
