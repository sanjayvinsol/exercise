-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2019 at 12:24 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `orderNumber` int(11) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `requiredDate` datetime NOT NULL,
  `priceEach` int(11) NOT NULL,
  `orderLineNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OrderDetails`
--

INSERT INTO `OrderDetails` (`orderNumber`, `quantityOrdered`, `requiredDate`, `priceEach`, `orderLineNumber`) VALUES
(1, 2, '2019-07-02 00:00:00', 10, '1'),
(2, 6, '2019-07-19 00:00:00', 24, '5');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `requiredDate` datetime DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `customerNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comment`, `customerNumber`) VALUES
(1, '2019-07-01 00:00:00', '2019-07-01 00:00:00', '2019-07-02 00:00:00', 'completed', 'test comment', ''),
(2, '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-03 00:00:00', 'closed', 'test comment', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD KEY `order` (`orderNumber`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`orderNumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD CONSTRAINT `order` FOREIGN KEY (`orderNumber`) REFERENCES `Orders` (`orderNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
