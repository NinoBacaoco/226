-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 12:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdogcareservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CustomerID` int(5) NOT NULL,
  `OwnerName` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `ContactNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE `tblitem` (
  `id` int(11) NOT NULL,
  `category` varchar(120) NOT NULL,
  `item` varchar(120) NOT NULL,
  `customer` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalrecord`
--

CREATE TABLE `tblmedicalrecord` (
  `dog_ID` int(5) NOT NULL,
  `ownername` varchar(25) NOT NULL,
  `customer_ID` int(5) NOT NULL,
  `veterinarian_ID` int(5) NOT NULL,
  `date_of_treatment` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmedicalrecord`
--

INSERT INTO `tblmedicalrecord` (`dog_ID`, `ownername`, `customer_ID`, `veterinarian_ID`, `date_of_treatment`) VALUES
(1, 'Rodlyn', 1, 1, '0000-00-00 00:00:00.000000'),
(2, 'Emman', 2, 2, '0000-00-00 00:00:00.000000'),
(3, 'Ryan', 3, 3, '0000-00-00 00:00:00.000000'),
(4, 'Angelo', 4, 4, '0000-00-00 00:00:00.000000'),
(5, 'Mimi', 5, 5, '0000-00-00 00:00:00.000000'),
(6, 'Gabriel', 6, 6, '0000-00-00 00:00:00.000000'),
(7, 'Earl', 7, 7, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tblservicerecord`
--

CREATE TABLE `tblservicerecord` (
  `serviceid` int(11) NOT NULL,
  `servicename` text NOT NULL,
  `servicedescription` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblservicerecord`
--

INSERT INTO `tblservicerecord` (`serviceid`, `servicename`, `servicedescription`, `price`) VALUES
(8, 'help', 'helpme', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`userid`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'q', 1, 'ryan', 'marfa'),
(2, 'qwe', 0, 'qwe', 'qwe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservicerecord`
--
ALTER TABLE `tblservicerecord`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblservicerecord`
--
ALTER TABLE `tblservicerecord`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
