-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: bsu-gimm260-fall-2021.cwtgn0g8zxfm.us-west-2.rds.amazonaws.com
-- Generation Time: Dec 07, 2022 at 03:11 AM
-- Server version: 8.0.23
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CARSONMCMAHAN`
--

-- --------------------------------------------------------

--
-- Table structure for table `Player_Awards`
--

CREATE TABLE `Player_Awards` (
  `id` int NOT NULL,
  `year` int NOT NULL,
  `wins` char(20) NOT NULL,
  `loses` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Player_Awards`
--

INSERT INTO `Player_Awards` (`id`, `year`, `wins`, `loses`) VALUES
(1, 2021, 'W. Buehler', 'no'),
(2, 2020, 'M. Betts', 'no'),
(3, 2019, 'C. Bellinger', 'MVP'),
(4, 2018, 'J. Turner', 'no'),
(5, 2017, 'J. Turner', 'no'),
(6, 2016, 'C. Kershaw', 'no'),
(7, 2015, 'Z. Greinke', 'no'),
(8, 2014, 'C. Kershaw', 'Cy Young, MVP'),
(9, 2013, 'C. Kershaw', 'Cy Young'),
(10, 2012, 'C. Kershaw', 'no'),
(11, 2011, 'M. Kemp', 'no'),
(12, 2010, 'C. Kershaw', 'no'),
(13, 2009, 'M. Kemp', 'no'),
(14, 2008, 'C. Bellingsley', 'no'),
(15, 2007, 'B. Penny', 'no'),
(16, 2006, 'D. Lowe', 'no'),
(17, 2005, 'J. Kent', 'no'),
(18, 2004, 'A. Beltre', 'no'),
(19, 2003, 'K. Brown', 'no'),
(20, 2002, 'S. Green', 'no'),
(21, 2001, 'S. Green', 'no'),
(22, 2000, 'K. Brown', 'no'),
(23, 1999, 'K. Brown', 'no'),
(24, 1998, 'G. Sheffield', 'no'),
(25, 1997, 'M. Piazza', 'no'),
(26, 1996, 'M. Piazza', 'no'),
(27, 1995, 'M. Piazza', 'no'),
(28, 1994, 'K. Gross', 'no'),
(29, 1993, 'M. Piazza', 'Rookie of The Year'),
(30, 1992, 'B. Butler', 'no'),
(31, 1991, 'B. Butler', 'no'),
(32, 1990, 'E. Murray', 'no'),
(33, 1989, 'O. Hershiser', 'no'),
(34, 1988, 'O. Hershiser', 'Cy. Young'),
(35, 1987, 'B. Welch', 'no'),
(36, 1986, 'F. Valenzuela', 'no'),
(37, 1985, 'P. Guerrero', 'no'),
(38, 1984, 'A. Pena', 'no'),
(39, 1983, 'P. Guerrero', 'no'),
(40, 1982, 'P. Guerrero', 'no'),
(41, 1981, 'F. Valenzuela', 'Cy Young and Rookie'),
(42, 1980, 'D. Sutton', 'no'),
(43, 1979, 'R. Cey', 'no'),
(44, 1978, 'R. Cey', 'no'),
(45, 1977, 'R. Smith', 'no'),
(46, 1976, 'R. Cey', 'no'),
(47, 1975, 'A. Messersmith', 'no'),
(48, 1974, 'J. Wynn', 'no'),
(49, 1973, 'W. Crawford', 'no'),
(50, 1972, 'D. Sutton', 'no'),
(51, 1971, 'D. Allen', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Player_Awards`
--
ALTER TABLE `Player_Awards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Player_Awards`
--
ALTER TABLE `Player_Awards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
