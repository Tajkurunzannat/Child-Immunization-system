-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 06:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `childimmunization`
--

-- --------------------------------------------------------

--
-- Table structure for table `childinfo`
--

CREATE TABLE `childinfo` (
  `ChildId` varchar(15) NOT NULL,
  `ChildName` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Weight` double NOT NULL,
  `parentId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childinfo`
--

INSERT INTO `childinfo` (`ChildId`, `ChildName`, `DOB`, `Age`, `Weight`, `parentId`) VALUES
('12', 'Das', '2018-04-09', 1, 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `doctorinfo`
--

CREATE TABLE `doctorinfo` (
  `DoctorId` varchar(15) NOT NULL,
  `DoctorName` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `PhoneNumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorinfo`
--

INSERT INTO `doctorinfo` (`DoctorId`, `DoctorName`, `location`, `email`, `PhoneNumber`) VALUES
('2', 'Mr. Joy', 'Basundhora', 'joy@gmail.com', '01875224');

-- --------------------------------------------------------

--
-- Table structure for table `immunizationhistory`
--

CREATE TABLE `immunizationhistory` (
  `childId` varchar(15) NOT NULL,
  `ChildName` varchar(20) NOT NULL,
  `vaccineName` varchar(20) NOT NULL,
  `vaccinationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immunizationhistory`
--

INSERT INTO `immunizationhistory` (`childId`, `ChildName`, `vaccineName`, `vaccinationDate`) VALUES
('', 'das', 'polio', '2019-04-09'),
('12', 'das', 'sadw', '2019-04-25'),
('12', 'das', 'asdwaz', '2019-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `reciptionist`
--

CREATE TABLE `reciptionist` (
  `id` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciptionist`
--

INSERT INTO `reciptionist` (`id`, `name`, `email`, `phone`) VALUES
('Mimu', '3', '0195522', 'mimu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `password`, `Type`) VALUES
('1', '1', 0),
('2', '2', 1),
('3', '3', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorinfo`
--
ALTER TABLE `doctorinfo`
  ADD PRIMARY KEY (`DoctorId`);

--
-- Indexes for table `reciptionist`
--
ALTER TABLE `reciptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
