-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: mysqldb
-- Generation Time: Nov 17, 2020 at 02:10 PM
-- Server version: 5.7.32
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weatherapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `Météo`
--

CREATE TABLE `Météo` (
  `ville` varchar(9) NOT NULL,
  `haut` int(11) NOT NULL,
  `bas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Météo`
--

INSERT INTO `Météo` (`ville`, `haut`, `bas`) VALUES
('Bruxelles', 27, 13),
('Liège', 25, 15),
('Namur', 26, 15),
('Charleroi', 25, 12),
('Bruges', 28, 16);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
