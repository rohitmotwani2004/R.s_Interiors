-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 08:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `sr_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`sr_no`, `name`, `phone`, `email`, `desc`, `dt`) VALUES
(34, 'rohit motwani', 'hello', 'rohit44@gmail.com', 'hello', '2023-04-10 01:17:01'),
(35, 'rohit motwani', 'hello', 'rohit44@gmail.com', 'hello', '2023-04-10 01:23:29'),
(36, 'rohit motwani', 'hello', 'rohit44@gmail.com', 'hello', '2023-04-10 01:24:32'),
(37, 'rohit motwani', '', 'rohit44@gmail.com', 'hello', '2023-04-10 01:33:20'),
(38, 'rohan malik', '', 'rohit44@gmail.com', 'hekko', '2023-04-10 01:33:42'),
(39, 'mohit', '8999999999', 'mohit44@gmail.com', 'how are you i want to enquiry about your services', '2024-10-16 18:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sr_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `dob` date NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr_no`, `name`, `email`, `dob`, `pwd`, `username`) VALUES
(15, 'rohit motwani', 'rohitm@gmail.com', '2022-02-13', '12345678', 'rohit'),
(17, 'mohit advani', 'mohit@gmail.com', '2024-05-16', 'mohit123', 'mohit13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
