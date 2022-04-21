-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 06:04 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'abid', 'fbc2097d2d2310090e007162a34ff628', '2021-03-19 15:36:04'),
(2, 'rad', '5d41402abc4b2a76b9719d911017c592', '2021-12-04 06:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(8, 'Abid Hasan Tuhin', '01666671148', 'abid@gmail.com', 'Male', 21, 'A+', 'Tangail Sadar, Tangail', ' ', '2021-04-02 21:11:11', 1),
(9, 'nahid', '01655522555', 'touhid0atik@gmail.com', 'Male', 26, 'B+', 'savar', ' knock me', '2021-10-01 16:20:22', 1),
(10, 'tuhin', '01682996972', 'abidxasan@gmail.com', 'Male', 23, 'A+', 'Dhaka, Tangail', ' Text me ', '2021-12-04 04:24:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(8, 'A-', '2021-04-02 20:45:48'),
(9, 'B+', '2021-04-02 20:45:50'),
(10, 'B-', '2021-04-02 20:45:52'),
(11, 'O+', '2021-04-02 20:45:56'),
(12, 'O-', '2021-04-02 20:45:58'),
(13, 'AB+', '2021-04-02 20:46:03'),
(14, 'AB-', '2021-04-02 20:46:05'),
(15, 'A-', '2021-12-04 06:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Dhaka, Bangladesh													', 'abid15-2603@diu.edu.bd', '01682996972');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'gfdfg', 'abidxasan@gmail.com', '01682996972', 'dffsf', '2021-10-01 16:24:19', NULL),
(6, 'Abid', 'diu@gmail.com', '01531738570', 'i need a- blood emergency in Dhaka hospital', '2021-12-04 05:15:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<div style=\"text-align: center;\"><span style=\"font-family: georgia;\"><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">Blood donation</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">&nbsp;helps in lowering the risk of cancer. By&nbsp;</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">donating blood</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">&nbsp;regularly the iron level in the&nbsp;</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">blood</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">&nbsp;is balanced and the risk of cancer-related to the liver, lungs, and intestine gets lower. Once we&nbsp;</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">donate blood</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">, the body tries to restore the&nbsp;</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">blood</span><span style=\"font-weight: bold; color: rgb(32, 33, 36); font-size: 16px;\">&nbsp;loss.</span></span></div>'),
(3, 'About Us ', 'aboutus', '																				<div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: x-large; font-family: impact;\">191-15-2603</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: x-large; font-family: impact;\">191-15-2372</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: x-large; font-family: impact;\">191-15-2393</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: x-large; font-family: impact;\">191-15-2407</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: x-large; font-family: impact;\">191-15-2673</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div>\r\n										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
