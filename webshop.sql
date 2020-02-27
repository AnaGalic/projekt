-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 08:49 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kosara`
--

CREATE TABLE `kosara` (
  `ID` int(11) NOT NULL,
  `ID_User` int(100) NOT NULL,
  `Datum` varchar(100) NOT NULL,
  `KupnjaZavrsena` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kosara`
--

INSERT INTO `kosara` (`ID`, `ID_User`, `Datum`, `KupnjaZavrsena`) VALUES
(0, 3, '2020-01-31 18:55:53', 0),
(1, 3, '1.1.2018', 0),
(14906, 3, '2020-01-31 21:54:01', 0),
(479877, 3, '2020-02-04 16:56:21', 1),
(530153, 6, '2020-02-04 17:51:28', 0),
(802325, 3, '2020-01-31 21:51:36', 0),
(929355, 3, '2020-02-02 13:15:05', 1),
(1244477, 11, '2020-02-12 11:41:00', 0),
(1346988, 6, '2020-02-04 17:39:07', 1),
(2090013, 6, '2020-02-04 17:59:45', 0),
(2274892, 5, '2020-02-04 17:33:46', 1),
(2440330, 3, '2020-02-02 13:49:32', 0),
(2577897, 3, '2020-02-01 12:00:07', 0),
(2962216, 3, '2020-01-31 19:51:36', 1),
(3155445, 3, '2020-02-02 13:15:51', 0),
(4482781, 6, '2020-02-10 20:26:45', 0),
(6279708, 3, '2020-02-01 11:54:35', 1),
(6710522, 5, '2020-02-04 17:33:33', 0),
(7134893, 3, '2020-02-01 09:11:03', 1),
(7261178, 3, '2020-02-02 19:28:17', 1),
(8165821, 3, '2020-02-01 09:10:39', 0),
(8691273, 3, '2020-01-31 21:58:18', 0),
(306686780, 3, '2020-01-31 18:59:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kosaraproizvod`
--

CREATE TABLE `kosaraproizvod` (
  `Proizvod_ID` int(11) NOT NULL,
  `Kosara_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table webshop.kosaraproizvod: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `webshop`.`kosaraproizvod`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(100) NOT NULL,
  `Slika` varchar(100) NOT NULL,
  `Cijena` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`ID`, `Ime`, `Slika`, `Cijena`) VALUES
(23, 'iPhone 7 Plus 128GB', 'apple-iphone-7-256gb-rose.jpg', '910'),
(24, 'iPhone 6 Plus 16GB', 'apple-iphone-6-space-grey-650x650.jpg', '700'),
(26, 'iPhone 6s 32GB', 'iphone-6s---front.jpg', '650'),
(34, 'iPhone 8 Plus 64GB', '5555555555.jpg', '1200'),
(35, 'Samsung Galaxy S9', 'samsung-galaxy-s9-dual-sim-negro-g960-8801643195106.jpg', '985'),
(36, 'Samsung Galaxy S10', 'preuzmi.jpg', '1315'),
(48, 'Samsung Galaxy J3 (2016)', '77.jpg', '235'),
(49, 'Samsung Galaxy J7', '44.jpg', '590');

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `ID` int(11) NOT NULL,
  `Naziv` varchar(100) NOT NULL,
  `Opis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`ID`, `Naziv`, `Opis`) VALUES
(1, 'Admin', 'Admin'),
(2, 'User', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(100) NOT NULL,
  `Prezime` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pass` varchar(100) NOT NULL,
  `Broj_mob` varchar(100) NOT NULL,
  `Uloga_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Ime`, `Prezime`, `Email`, `Pass`, `Broj_mob`, `Uloga_ID`) VALUES
(11, '', '', 'admin', '12345', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kosara`
--
ALTER TABLE `kosara`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
