-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 01:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pathology`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 1234567890, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-04-19 18:30:00'),
(3, 'prathamesh', 'pratham', 2147483647, 'prathameshdandage24@gmail.com', '357f86a515dba855273cabeca7eb35b3', '2023-04-18 13:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(9, 'prathamesh dandage ', 7875363959, '2003-01-24', 'pancard', '76547546476', 'pune', 'maharastra', '2023-04-18 13:34:24'),
(11, 'aditya shahane', 6783739574, '2023-05-03', 'any other', '333w33efs', 'jalgaon', 'delhi', '2023-04-18 13:37:15'),
(12, 'pratik mohite', 9097981616, '2003-08-16', 'pancard', 'AHD56H', 'lonavala', 'maharastra', '2023-05-19 04:02:04'),
(13, 'karn ', 1234567890, '2003-01-24', 'panacrd', 'AHD56H4', 'lonavala', 'maharastra', '2023-05-19 06:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblphlebotomist`
--

CREATE TABLE `tblphlebotomist` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblphlebotomist`
--

INSERT INTO `tblphlebotomist` (`id`, `EmpID`, `FullName`, `MobileNumber`, `RegDate`) VALUES
(12, 'S190428513', 'prathamesh manohar dandage', 7875363959, '2023-04-18 13:38:31'),
(13, 'S190428522', 'anil balaji jadhav', 1234544890, '2023-04-18 13:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(2, 502176079, 'dsfn', 'Sample Collected', '2023-04-18 13:44:49', 3),
(3, 585131230, 'kk', 'Sent to Lab', '2023-04-18 13:46:11', 3),
(4, 997030806, 'ok', 'Delivered', '2023-05-09 09:51:49', 3),
(5, 332563715, 'on the way', 'On the Way for Collection', '2023-05-19 04:03:45', 3),
(6, 332563715, 'done', 'Delivered', '2023-05-19 04:05:35', 3),
(7, 961898566, 'on the way', 'On the Way for Collection', '2023-05-19 06:16:18', 3),
(8, 961898566, 'done', 'Sample Collected', '2023-05-19 06:16:41', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(1, 450040675, 1234567890, 'Antigen', '2021-05-01T04:05', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620331308.pdf', '07-05-2021 01:31:48 AM', '2021-04-27 17:31:23', '12587493', 'Amit Singh', '06-05-2021 10:05:22 AM'),
(2, 617325549, 6547893210, 'RT-PCR', '2021-05-01T05:10', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620363440.pdf', '07-05-2021 10:27:20 AM', '2021-04-27 18:04:58', '105202365', 'Rahul', '07-05-2021 10:13:41 AM'),
(4, 740138296, 1234567890, 'RT-PCR', '2021-05-05T14:40', 'Sample Collected', NULL, NULL, '2021-04-27 19:10:30', '105202365', 'Rahul', '07-05-2021 03:52:05 PM'),
(5, 716060226, 4598520125, 'CB-NAAT', '2021-05-15T14:22', 'Assigned', NULL, NULL, '2021-05-08 05:49:46', '12587493', 'Amit Singh', '16-06-2021 11:28:23 PM'),
(6, 599452326, 2536987410, 'CB-NAAT', '2021-05-20T19:00', 'Assigned', NULL, NULL, '2021-05-08 09:25:50', '1', 'abc', '16-06-2021 11:29:37 PM'),
(7, 250482553, 1234567899, 'Antigen', '2021-05-11T15:00', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620466371.pdf', '08-05-2021 03:02:51 PM', '2021-05-08 09:29:22', '12587493', 'Amit Singh', '08-05-2021 03:00:47 PM'),
(8, 705335555, 9878765565, 'Antigen', '2021-06-16T01:27', 'Assigned', NULL, NULL, '2021-06-16 17:56:08', '2', 'Ravi', '16-06-2021 11:31:26 PM'),
(9, 194672372, 9876543212, 'RT-PCR', '2021-06-16T02:13', 'On the Way for Collection', NULL, NULL, '2021-06-16 18:41:34', '4', 'Ganesh Pradip Patil', '17-06-2021 01:45:13 PM'),
(10, 997030806, 7875363959, 'Antigen', '2023-04-12T22:03', 'Delivered', '03856b43989145c1544185a165c251321683625909.pdf', '09-05-2023 03:21:49 PM', '2023-04-18 13:34:24', 'S190428513', 'prathamesh manohar dandage', '18-04-2023 07:13:48 PM'),
(11, 502176079, 1234544890, 'CB-NAAT', '2023-04-18T21:05', 'Sample Collected', NULL, NULL, '2023-04-18 13:35:55', 'S190428522', 'anil balaji jadhav', '18-04-2023 07:13:59 PM'),
(15, 688175488, 1111234568, 'CB-NAAT', '2023-05-31T14:57', 'Assigned', NULL, NULL, '2023-05-19 06:25:14', 'S190428513', 'prathamesh manohar dandage', '19-05-2023 12:02:36 PM'),
(16, 980432836, 1111234568, 'Antigen', '2023-05-19T12:01', 'Assigned', NULL, NULL, '2023-05-19 06:31:59', 'S190428522', 'anil balaji jadhav', '19-05-2023 12:02:45 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
