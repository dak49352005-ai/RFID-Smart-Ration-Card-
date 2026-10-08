-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 07:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ration_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `mobile`, `status`) VALUES
(1, 'admin user', 'shdinde@gmail.com', '74f3c58bc81aefde81b1850ffc941d95', '8888777765', 1),
(2, 'Amit Patil', 'punekaramit4@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '8888763560', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cardtype`
--

CREATE TABLE `cardtype` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rice` float NOT NULL,
  `sugar` float NOT NULL,
  `wheat` float NOT NULL,
  `ricerate` float NOT NULL,
  `sugarrate` float NOT NULL,
  `wheatrate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardtype`
--

INSERT INTO `cardtype` (`id`, `name`, `rice`, `sugar`, `wheat`, `ricerate`, `sugarrate`, `wheatrate`) VALUES
(1, 'White', 2, 3, 1, 14, 10, 11),
(2, 'Orange', 3, 3, 3, 13, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `state`, `status`) VALUES
(1, 'Kolhapur', 'Maharashtra', 1),
(2, 'Sangli', 'Maharashtra', 1),
(3, 'Satara', 'Maharashtra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `familymember`
--

CREATE TABLE `familymember` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` date NOT NULL,
  `gender` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `addharid` varchar(12) NOT NULL,
  `addedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `familymember`
--

INSERT INTO `familymember` (`id`, `cardnumber`, `name`, `age`, `gender`, `status`, `relation`, `addharid`, `addedby`) VALUES
(1, '123456AM', 'Amit Patil', '2024-11-02', 'Male', 1, 'Brother', '2147483647', 2),
(2, '123456AM', 'Java Programming', '2024-10-30', 'Male', 1, 'Father', '123456789013', 2),
(3, '2123456AM', 'Shailesh', '2024-10-28', 'Male', 1, 'Female', '123456789014', 2),
(4, '123456AM', 'Computer Engineering', '2021-01-05', 'Female', 1, 'Daughter', '123456789011', 2);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `id` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`id`, `districtid`, `name`, `email`, `mobile`, `password`, `status`) VALUES
(1, 2, 'Amit Patil', 'punekaramit4@gmail.com', '8888763563', '284fe09cf0e976a57072604e950ba198', 1),
(2, 3, 'Shailesh Dinde', 'shdinde@gmail.com', '8888763564', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `rice` int(11) NOT NULL,
  `wheat` int(11) NOT NULL,
  `sugar` int(11) NOT NULL,
  `takendate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `id` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `owner` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`id`, `districtid`, `name`, `address`, `owner`, `mobile`, `email`, `password`, `status`) VALUES
(3, 3, 'Java Programming', 'Sane guruji', 'Shailesh Dinde', '8888763563', 'shdinde@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `rice` int(11) NOT NULL,
  `wheat` int(11) NOT NULL,
  `sugar` int(11) NOT NULL,
  `delivered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `rfid` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `addedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `cardnumber`, `address`, `password`, `status`, `rfid`, `email`, `type`, `addedby`) VALUES
(1, '123456AM', 'Kolhapur', '0c4209db2b9e063c0cecf518f70b9680', 1, '1234567890', 'shdinde@gmail.com', 1, 2),
(2, '2123456AM', 'Kolhapur', 'b11c3a8cda2a80df3e848a232573f613', 1, '1234567890A', 'punekaramit4@gmail.com', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cardtype`
--
ALTER TABLE `cardtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `familymember`
--
ALTER TABLE `familymember`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addharid` (`addharid`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cardnumber` (`cardnumber`),
  ADD UNIQUE KEY `rfid` (`rfid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cardtype`
--
ALTER TABLE `cardtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `familymember`
--
ALTER TABLE `familymember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
