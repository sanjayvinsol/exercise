-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2019 at 01:52 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `asset_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `warranty_start` datetime DEFAULT NULL,
  `warranty_end` datetime DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `unused` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `asset_category`, `name`, `year`, `model`, `make`, `price`, `warranty`, `warranty_start`, `warranty_end`, `location`, `unused`) VALUES
(1, 1, 'Laptop A', '2011', '123456', 'sony', 10000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', ''),
(2, 1, 'Laptop B', '2011', '7777744', 'hp', 59000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', '1'),
(3, 1, 'Laptop N1', '2019', 'ABC1233', 'sony', 10000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', '1'),
(4, 1, 'Laptop N2', '2019', 'XYZ4565', 'lenovo', 59000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', '1'),
(5, 2, 'iPhone A', '2011', 'iphon123', 'apple', 60000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', ''),
(6, 2, 'iPhone B', '2011', 'ihpne7777', 'apple', 60000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', ''),
(7, 3, 'Projector A', '2011', 'project123', 'hp', 200000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', 'meeting room', ''),
(8, 4, 'Printer A', '2011', 'printer123', 'hp', 5000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', 'meeting room', ''),
(9, 4, 'Printer B', '2011', 'priterb123', 'intex', 6000, '1', '2011-01-01 00:00:00', '2011-12-31 00:00:00', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `asset_category`
--

CREATE TABLE `asset_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_category`
--

INSERT INTO `asset_category` (`id`, `name`) VALUES
(1, 'laptop'),
(2, 'iphone'),
(3, 'projector'),
(4, 'printer');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `emp_id`, `asset_id`, `startdate`, `enddate`) VALUES
(1, 1, 1, '2011-01-01 00:00:00', '2011-12-31 00:00:00'),
(2, 2, 1, '2012-01-01 00:00:00', NULL),
(3, 2, 2, '2011-01-01 00:00:00', '2011-12-31 00:00:00'),
(4, 1, 5, '2011-04-01 00:00:00', NULL),
(5, 2, 6, '2011-01-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Chris'),
(4, 'Duke'),
(5, 'Emily');

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `cost` int(11) NOT NULL,
  `defecttype` varchar(255) NOT NULL,
  `asset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_category`
--
ALTER TABLE `asset_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee` (`emp_id`),
  ADD KEY `assset` (`asset_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD KEY `asset` (`asset_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `asset_category`
--
ALTER TABLE `asset_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assset` FOREIGN KEY (`asset_id`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repair`
--
ALTER TABLE `repair`
  ADD CONSTRAINT `asset` FOREIGN KEY (`asset_id`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
