-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 11:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apidb`
--
CREATE DATABASE `apidb`;
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `last_name` varchar(125) NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `batch` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `MAD100` double NOT NULL,
  `MAD105` double NOT NULL,
  `MAD110` double NOT NULL,
  `MAD120` double NOT NULL,
  `MAD125` double NOT NULL,
  `MAD200` double NOT NULL,
  `MAD225` double NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`, `height`, `weight`, `batch`, `description`, `address`, `city`, `province`, `country`, `phone`, `email`, `website`, `MAD100`, `MAD105`, `MAD110`, `MAD120`, `MAD125`, `MAD200`, `MAD225`, `status`) VALUES
('A00012345', 'Rajesh', 'Bandi', 1.75, 80, 'MAD Sep 2016', 'Rajesh is a professor', '1234 King St W', 'Toronto', 'ON', 'CA', 647777777, 'rk@professorrk.com', '', 90, 77, 88, 87, 95, 80, 78, 1),
('A00107425', 'Manbir ', 'kaur', 160, 56, 'MAD Sep 2020', 'Manbir is a student', '34 Brampton', 'Toronto', 'ON', 'CN', 416123654, 'manbir@gmail.com', 'www.manbir.com', 86, 83, 79, 92, 88, 86, 84, 1),
('A00116550', 'Dharsika', 'Niraj', 168, 54, 'MAD Sep 2020', 'Dharsika is a student', '64 NorthYork ', 'Toronto', 'ON', 'CA', 77712345, 'dharsi.p@gmail.com', '', 86, 85, 90, 85, 82, 80, 87, 1),
('A00122319', 'Priyank ', 'Jaiswal', 169, 75, 'MAD Sep 2020', 'Priyank is a student in Canadore college', '123 Scarbrough ', 'Toronto', 'ON', 'CN', 416123458, 'priyank@gmail.com', 'www.priyank.com', 82, 80, 92, 78, 85, 84, 87, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
