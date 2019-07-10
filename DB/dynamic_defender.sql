-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 10, 2019 at 01:08 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_defender`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerlogin`
--

DROP TABLE IF EXISTS `customerlogin`;
CREATE TABLE IF NOT EXISTS `customerlogin` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerlogin`
--

INSERT INTO `customerlogin` (`userID`, `username`, `password`) VALUES
(1, 'roshli@gmail.com', '$2y$10$FcjdjTVagcp7yBgGRrEK5u9ZE2qXy0I1U96Jbyi.Snn6UTLa776lG'),
(2, 'manula@gmail.com', '$2y$10$MBUxaOkPkEJLJnf4PX70huZLkrMh5.AyMk1xbKSLISruSKSwBYom.');

-- --------------------------------------------------------

--
-- Table structure for table `idslog`
--

DROP TABLE IF EXISTS `idslog`;
CREATE TABLE IF NOT EXISTS `idslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `action` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idslog`
--

INSERT INTO `idslog` (`id`, `category`, `time`, `action`) VALUES
(1, 'DoS(Denial of Service)', '2019-07-10', 'Temporary Network Disconect'),
(2, 'Mail Bomb', '2019-07-18', 'Temporary Network Disconnect ');

-- --------------------------------------------------------

--
-- Table structure for table `quota`
--

DROP TABLE IF EXISTS `quota`;
CREATE TABLE IF NOT EXISTS `quota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `allocatedquota` float NOT NULL,
  `remainingquota` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quota`
--

INSERT INTO `quota` (`id`, `user`, `allocatedquota`, `remainingquota`) VALUES
(1, 'roshli@gmail.com', 1024, 500),
(2, 'manula@gmail.com', 1024, 200);

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE IF NOT EXISTS `userreg` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`userID`, `username`, `password`) VALUES
(3, 'Roshli', '$2y$10$O0MRg75rUC8UyyM/4wxaOOmYrRjh2/xpFANbCqGSw7DkIZgGdkcVu');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
