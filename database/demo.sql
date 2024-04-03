-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 02:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `sno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `id_no` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `exp_date` varchar(20) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`sno`, `name`, `dept`, `id_no`, `email`, `phone`, `address`, `dob`, `date`, `exp_date`, `image`) VALUES
(9, 'King', 'Computer Science & B', '4CB20CB001', 'raj@gmail.com', '6282711699', 'goa', '2021-05-26', '2024-03-26 22:17:45', '2025-03-26', 'assets/uploads/2.jpg'),
(8, 'Rithik K', 'Information Science', '4CB20IS042', 'rithikkumble@gmail.com', '6282711688', 'Kumble', '2020-04-07', '2024-03-26 22:11:12', '2024-06-14', 'assets/uploads/photo[rithik].jpg'),
(10, 'Rajath', 'Computer Science', '4CB20CS081', 'rajath@gmail.com', '6282711680', 'mangalore', '2021-03-09', '2024-03-26 22:52:04', '2024-03-14', 'assets/uploads/'),
(11, 'niki', 'Information Science', '4CB20IS036', 'niki@gmail.com', '6282711677', 'mangalore', '2021-01-01', '2024-03-26 22:56:02', '2024-03-21', 'assets/uploads/'),
(12, 'shwe', 'Information Science', '4CB20IS056', 'shwe@gmail.com', '6282711699', 'mangalore', '2022-01-26', '2024-03-26 22:58:00', '2024-03-12', 'assets/uploads/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'ravi', '$2y$10$zw2fv8NQkKCujSCOVkmKYOCLGGB.tDVROWZSNrqU2JYEs0JMFOxkW', '2024-03-23 20:50:11'),
(2, 'Rithik', '$2y$10$nJiTjCb31aqIgcGrVpFNdu3rq0/aDmY1i60mDGxo4pPv.vgsQXYdq', '2024-03-23 22:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
