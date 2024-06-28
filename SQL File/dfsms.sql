-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 07:09 PM
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
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567899, 'admin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-07 18:30:00', '2024-01-29 18:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'Milk', 'MK01', '2024-01-10 16:27:43'),
(2, 'Butter', 'BT01', '2024-01-10 16:27:43'),
(3, 'Bread', 'BD01', '2024-01-10 16:27:43'),
(4, 'Paneer', 'PN01', '2024-01-10 16:27:43'),
(5, 'Soya', 'SY01', '2024-01-10 16:27:43'),
(7, 'Ghee', 'GH01', '2024-01-10 16:27:43'),
(8, 'Panner', 'PN01', '2024-01-10 16:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Amul', '2024-01-10 03:30:51'),
(2, 'Mother Diary', '2024-01-10 03:30:51'),
(3, 'Patanjali', '2024-01-10 03:30:51'),
(4, 'Namaste India', '2024-01-10 03:30:51'),
(10, 'Paras', '2024-01-10 03:30:51'),
(11, 'Ananda', '2024-01-10 03:30:51'),
(12, 'Gharwal', '2024-01-10 03:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 1, 1, 270491112, 'Anuj Kumar', 1425362541, 'cash', '2024-01-13 15:47:14'),
(2, 5, 1, 270491112, 'Anuj Kumar', 1425362541, 'cash', '2024-01-15 15:47:14'),
(3, 7, 1, 464760346, 'Rahul Kumar', 12345632145, 'cash', '2024-01-15 15:49:47'),
(4, 8, 1, 464760346, 'Rahul Kumar', 12345632145, 'cash', '2024-01-20 15:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,2) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', 22.00, '2024-01-10 15:46:13', '2024-01-29 18:06:28'),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', 42.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', 26.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', 50.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(5, 'Butter', 'Amul', 'Butter 100mg', 46.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', 30.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(7, 'Ghee', 'Paras', 'Ghee 500mg', 350.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36'),
(8, 'Panner', 'Ananda', 'Paneer 250gm', 80.00, '2024-01-10 15:46:13', '2024-01-29 18:06:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CompanyName` (`CompanyName`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`ProductId`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compname` (`CompanyName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD CONSTRAINT `pid` FOREIGN KEY (`ProductId`) REFERENCES `tblproducts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD CONSTRAINT `catnamr` FOREIGN KEY (`CompanyName`) REFERENCES `tblcompany` (`CompanyName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compname` FOREIGN KEY (`CompanyName`) REFERENCES `tblcategory` (`CategoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
