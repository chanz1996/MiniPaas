-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2017 at 07:16 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `ncopies` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`name`, `description`, `price`, `ncopies`, `category`) VALUES
('Adavnced Programming in Unix Environment', 'AUTHOR:Stevens W R', 600, 5, 'CSE'),
('Compilers', 'AUTHOR:Aho,Lam,Sethi,ullman', 250, 4, 'CSE'),
('Computer Network Security', 'AUTHOR:Stallings Brown', 400, 3, 'CSE'),
('Da Vinci Code', 'AUTHOR:Dan Brown', 305, 5, 'Fiction'),
('Digital Fortress', 'AUTHOR:Dan Brown', 300, 5, 'Fiction'),
('Electronic device and Circuits', 'AUTHOR:Boylested', 600, 5, 'ECE'),
('Harrypotter', 'AUTHOR:J.K.ROWLING', 600, 6, 'Novels'),
('MOVING TO CLOUD', 'AUTHOR:DINKAR.SITARAM', 300, 2, 'CSE'),
('Professional Ajax', 'AUTHOR:Zakas,McPeak,Fawcett', 350, 6, 'CSE'),
('Two States', 'AUTHOR:Chethan Bhagath', 150, 7, 'Novels');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category`) VALUES
('Comics'),
('CSE'),
('ECE'),
('Fiction'),
('Novels');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category`), ADD UNIQUE KEY `category` (`category`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
