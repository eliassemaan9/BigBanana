-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 07:51 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `not-online`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `OrderNumber` varchar(200) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `Quantity` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `OrderNumber`, `CreationDate`, `ModificationDate`, `Quantity`, `productId`, `statusId`) VALUES
(1, 'O-001', '2022-04-13 21:11:27', '2022-04-13 21:11:27', 1, 0, 0),
(2, 'O-002', '2022-04-14 21:11:27', '2022-04-14 21:11:27', 3, 0, 0),
(3, 'O-003', '2022-04-13 21:11:27', '2022-04-13 21:11:27', 2, 2, 0),
(4, 'O-004', '2022-04-13 21:11:27', '2022-04-13 21:11:27', 2, 2, 0),
(5, 'O-005', '2022-04-14 01:28:02', '2022-04-14 21:11:27', 7, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `ProductTypeId` int(11) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `ProductTypeId`, `CreationDate`, `ModificationDate`, `Name`) VALUES
(1, 1, '2022-04-14 08:48:27', '2022-04-14 08:48:27', 'strawberry'),
(2, 2, '2022-04-14 08:48:54', '2022-04-14 08:48:54', 'mozzarella');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `ModificationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`Id`, `Name`, `CreationDate`, `ModificationDate`) VALUES
(1, 'exotic', '2022-04-14 08:45:13', '2022-04-14 08:45:13'),
(2, 'cheese', '2022-04-14 08:45:13', '2022-04-14 08:45:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
