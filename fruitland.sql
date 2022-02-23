-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 11:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruitland`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` float NOT NULL DEFAULT 0,
  `safetyStock` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `productId` int(11) NOT NULL DEFAULT 0,
  `createDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `type` varchar(24) NOT NULL,
  `status` varchar(24) NOT NULL,
  `note` varchar(24) DEFAULT 'none',
  `createDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `type`, `status`, `note`, `createDate`) VALUES
(141, 'IMPORT', 'ACCEPT', 'none', '2021-07-31 14:22:21'),
(142, 'IMPORT', 'ACCEPT', 'none', '2021-07-31 14:32:49'),
(143, 'IMPORT', 'ACCEPT', 'none', '2021-07-31 14:34:59'),
(144, 'IMPORT', 'ACCEPT', 'none', '2021-08-01 00:01:55'),
(145, 'IMPORT', 'ACCEPT', 'none', '2021-08-01 00:02:42'),
(146, 'EXPORT', 'ACCEPT', 'none', '2021-08-01 00:04:15'),
(147, 'IMPORT', 'ACCEPT', 'none', '2021-08-01 00:07:16'),
(148, 'EXPORT', 'ACCEPT', 'none', '2021-08-03 23:53:56'),
(149, 'IMPORT', 'ACCEPT', 'none', '2021-08-09 10:43:08'),
(150, 'EXPORT', 'REJECT', 'none', '2021-08-09 10:44:25'),
(151, 'IMPORT', 'ACCEPT', 'none', '2021-09-07 15:46:40'),
(152, 'IMPORT', 'ACCEPT', 'none', '2021-09-07 15:49:07'),
(153, 'EXPORT', 'ACCEPT', 'none', '2021-09-07 15:50:43'),
(154, 'IMPORT', 'ACCEPT', 'none', '2021-11-03 16:25:05'),
(155, 'EXPORT', 'ACCEPT', 'none', '2021-11-03 16:30:44'),
(156, 'EXPORT', 'PENDING', 'none', '2021-11-03 16:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `history_item`
--

CREATE TABLE `history_item` (
  `id` int(11) NOT NULL,
  `historyId` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `name` varchar(24) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `safetyStock` int(11) NOT NULL,
  `note` text NOT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_item`
--

INSERT INTO `history_item` (`id`, `historyId`, `productId`, `name`, `price`, `quantity`, `safetyStock`, `note`, `createDate`) VALUES
(165, 141, NULL, 'องุ่น', 10000, 10000, 100000, '', NULL),
(166, 142, NULL, 'มะละกอ', 100, 1000, 100, '', NULL),
(167, 143, NULL, 'มะม่วง', 1000, 100000, 50000, '', NULL),
(168, 144, NULL, 'ทุเรียน', 10000, 10000, 1000, '', NULL),
(169, 145, 69, 'องุ่น', 10000, 5000, 100000, '', NULL),
(170, 146, 69, 'องุ่น', 10000, 10000, 100000, '', '2021-08-01 00:03:40'),
(171, 147, NULL, 'ขนุน', 500.5, 20000, 10000, 'test', NULL),
(172, 148, 71, 'มะม่วง', 1000, 50000, 50000, '', '2021-08-03 23:53:44'),
(173, 149, NULL, 'ลองกอง', 500, 100000, 5000, 'ดก้เด้เด่เ้่เ่', NULL),
(174, 150, 69, 'องุ่น', 10000, 2000, 100000, '', '2021-08-09 10:44:05'),
(175, 151, NULL, 'ส้ม', 100, 10000, 6000, 'กกเดเดเ', NULL),
(176, 152, 69, 'องุ่น', 10000, 50000, 100000, '', NULL),
(177, 153, 71, 'มะม่วง', 1000, 10000, 50000, '', '2021-09-07 15:50:41'),
(178, 154, NULL, 'แตงโม', 1e23, 2147483647, 1, '', NULL),
(179, 155, 69, 'องุ่น', 10000, 20000, 100000, '', '2021-11-03 16:30:15'),
(180, 155, 70, 'มะละกอ', 100, 1000, 100, '', '2021-11-03 16:30:36'),
(181, 156, 69, 'องุ่น', 10000, 10000, 100000, '', '2021-11-03 16:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` float NOT NULL DEFAULT 0,
  `safetyStock` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT '-',
  `createDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `price`, `safetyStock`, `note`, `createDate`) VALUES
(69, 'องุ่น', 25000, 10000, 100000, '', '2021-07-31 14:23:03'),
(71, 'มะม่วง', 40000, 1000, 50000, '', '2021-07-31 14:34:59'),
(72, 'ทุเรียน', 10000, 10000, 1000, '', '2021-08-01 00:02:27'),
(73, 'ขนุน', 20000, 500.5, 10000, 'test', '2021-08-01 00:07:41'),
(74, 'ลองกอง', 100000, 500, 5000, 'ดก้เด้เด่เ้่เ่', '2021-08-09 10:45:58'),
(75, 'ส้ม', 10000, 100, 6000, 'กกเดเดเ', '2021-09-07 15:47:59'),
(76, 'แตงโม', 2147483647, 1e23, 1, '', '2021-11-03 16:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `role` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'admin', 'fruitland01', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_item`
--
ALTER TABLE `history_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historyId` (`historyId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `history_item`
--
ALTER TABLE `history_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history_item`
--
ALTER TABLE `history_item`
  ADD CONSTRAINT `history_item_ibfk_1` FOREIGN KEY (`historyId`) REFERENCES `history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
