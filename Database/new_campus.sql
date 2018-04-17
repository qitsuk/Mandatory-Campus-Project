-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2018 at 12:24 PM
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
-- Table structure for table `campusday`
--

DROP TABLE IF EXISTS `campusday`;
CREATE TABLE IF NOT EXISTS `campusday` (
  `WeekDay` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `RoomNumber` int(6) DEFAULT NULL,
  `Period` int(3) DEFAULT NULL,
  PRIMARY KEY (`WeekDay`),
  FOREIGN KEY (Period) REFERENCES campusschedule(Period)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campusday`
--

INSERT INTO `campusday` (`WeekDay`, `RoomNumber`, `Period`) VALUES
('Monday', 105, NULL),
('Tuesday', 106, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campusroom`
--

DROP TABLE IF EXISTS `campusroom`;
CREATE TABLE IF NOT EXISTS `campusroom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` int(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (Name) REFERENCES campusday(Room)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campusroom`
--

INSERT INTO `campusroom` (`ID`, `Name`) VALUES
(105, 105),
(106, 106),
(104, 104);

-- --------------------------------------------------------

--
-- Table structure for table `campusschedule`
--

DROP TABLE IF EXISTS `campusschedule`;
CREATE TABLE IF NOT EXISTS `campusschedule` (
  `WeekDay` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Period` int(3) DEFAULT NULL,
  `Subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`WeekDay`),
  FOREIGN KEY (Class) REFERENCES Period(Class)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campusschedule`
--

INSERT INTO `campusschedule` (`WeekDay`, `Period`, `Subject`, `Class`) VALUES
('Monday', NULL, 'Php', 'ro17wd2u2-2u'),
('Tuesday', NULL, 'VR/AR', 'ro17wd2u2-2u');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
CREATE TABLE IF NOT EXISTS `period` (
  `Class` int(11) NOT NULL,
  `Subject` int(11) NOT NULL,
  `Room` int(11) NOT NULL,
  PRIMARY KEY (`Class`),

  FOREIGN KEY (Room) REFERENCES campusroom(Name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `City`;
CREATE TABLE IF NOT EXISTS `City` (
   Zip int NOT NULL,
    City VARCHAR(255),
    PRIMARY KEY (Zip),
);


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

  FOREIGN KEY (Zip) REFERENCES City(Zip)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `FirstName`, `LastName`, `Username`, `Email`, `PhoneNumber`, `Address`, `Zip`, `City`, `Password`, `IsAdmin`) VALUES
(1, 'Cecilie', 'Karlsson', 'Theceka', 'cecilie.l.karlsson@gmail.com', 12345678, 'testvej 1', 4700, 'næstved', '1234', 1),
(2, 'Kasper', 'Andreasen', 'qitsuk', 'test@test.com', 12345678, 'testvej 2', 1234, 'Præstø', '1324', 1),
(3, 'Christoffer', 'Eriksen', 'McBruce', 'testing@test.com', 12345678, 'testvej 3', 1234, 'Nykøbing F', '1234', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
