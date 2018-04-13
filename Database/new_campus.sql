-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 13, 2018 at 11:30 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `IsAdmin` int(11) NOT NULL,
  `FirstName` int(11) NOT NULL,
  `LastName` int(11) NOT NULL,
  `Username` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Picture` int(11) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Address` int(11) NOT NULL,
  `Zip` int(11) NOT NULL,
  `City` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IsAdmin` (`IsAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNumber` int(8) NOT NULL,
  `Address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Zip` int(4) NOT NULL,
  `City` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IsAdmin` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IsAdmin` (`IsAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
