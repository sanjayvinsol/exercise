-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2019 at 06:51 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercise1`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bcode` varchar(255) NOT NULL,
  `librarian` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bcode`, `librarian`, `address`) VALUES
('B1', 'John Smith', '2 Anglesea Rd'),
('B2', 'Mary Jones', '34 Pearse St'),
('B3', 'Francis Owens', 'Grange X');

-- --------------------------------------------------------

--
-- Table structure for table `holdings`
--

CREATE TABLE `holdings` (
  `branch` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `copies` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holdings`
--

INSERT INTO `holdings` (`branch`, `title`, `copies`) VALUES
('B1', 'Susannah', '3'),
('B1', 'How to', '2'),
('B1', 'A hist', '1'),
('B2', 'How to', '4'),
('B2', 'Computers', '2'),
('B2', 'The Wife', '3'),
('B3', 'A hist ..', '1'),
('B3', 'Computers', '4'),
('B3', 'Susannah', '3'),
('B3', 'The Wife', '1');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`lname`, `phone`, `address`) VALUES
('Lincoln', '683452', 'Lincoln Place'),
('O\'Neill\'s', '6742134', 'Pearse St'),
('Old Nag', '7678132', 'Dame St'),
('Buttery', '7023421', 'College St');

-- --------------------------------------------------------

--
-- Table structure for table `sandwiches`
--

CREATE TABLE `sandwiches` (
  `location` varchar(255) NOT NULL,
  `bread` varchar(255) NOT NULL,
  `filling` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sandwiches`
--

INSERT INTO `sandwiches` (`location`, `bread`, `filling`, `price`) VALUES
('Lincoln', 'Rye', 'Ham', '1'),
('O\'Neill\'s', 'White', 'Cheese', '1'),
('Lincoln', 'Rye', 'Ham', '1'),
('O\'Neill\'s', 'White', 'Cheese', '1'),
('O\'Neill\'s', 'Whole', 'Ham', '1'),
('OldNag', 'Rye', 'Beef', '1'),
('Buttery', 'White', 'Cheese', '1'),
('O\'Neill\'s', 'White', 'Turkey', '1'),
('Buttery', 'White', 'Ham', '1'),
('Lincoln', 'Rye', 'Beef', '1'),
('Lincoln', 'White', 'Ham', '1'),
('Old Nag', 'Rye', 'Ham', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tastes`
--

CREATE TABLE `tastes` (
  `name` varchar(255) NOT NULL,
  `filling` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tastes`
--

INSERT INTO `tastes` (`name`, `filling`) VALUES
('Brown', 'Turkey'),
('Brown', 'Beef'),
('Brown', 'Ham'),
('Jones', 'Cheese'),
('Green', 'Beef'),
('Green', 'Turkey'),
('Green', 'Cheese');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`title`, `author`, `publisher`) VALUES
('Susannah', 'Ann Brown', 'Macmillan'),
('How to Fish', 'Amy Fly', 'Stop Press'),
('A History of Dublin', 'David Little', 'Wiley'),
('Computers', 'Blaise Pascal', 'Applewoods'),
('The Wife', 'Ann Brown', 'Macmillan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
