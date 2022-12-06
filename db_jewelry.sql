-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2022 at 05:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jewelry`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Admin_email` varchar(250) NOT NULL,
  `Admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Admin_email`, `Admin_password`) VALUES
('Admin@gmail.com', 'Admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE `cartdetail` (
  `Id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `quentity` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`Id`, `name`, `price`, `quentity`, `image`) VALUES
(5, 'Ring1', 26, 2, 'upload/ring1.png');

-- --------------------------------------------------------

--
-- Table structure for table `contactusdetail`
--

CREATE TABLE `contactusdetail` (
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactusdetail`
--

INSERT INTO `contactusdetail` (`Name`, `Phone`, `Address`, `Email`, `Message`) VALUES
('Trường', '03129211293', 'Hà Nội', 'truong@gmail.com', 'hello'),
('Trường', '03129211293', 'Hà Nội', 'truong@vnu.edu.vn', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderId` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderId`, `email`, `Date`) VALUES
(1, 'truong@gmail.com', '2022-12-06 15:07:47'),
(2, 'truong2@gmail.com', '2022-12-06 15:09:06'),
(3, 'nhaphuong@gmail.com', '2022-12-06 15:09:06'),
(4, 'truong@gmail.com', '2022-12-06 15:09:06'),
(5, 'truong@gmail.com', '2022-12-06 15:09:06'),
(6, 'truong2@gmail.com', '2022-12-06 15:09:06'),
(7, 'truong2@gmail.com', '2022-12-06 15:09:06'),
(8, 'truong@gmail.com', '2022-12-06 15:09:06'),
(9, 'truong2@gmail.com', '2022-12-06 15:09:06'),
(10, 'truong@gmail.com', '2022-12-06 15:09:06'),
(11, 'truong@gmail.com', '2022-12-06 15:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdeatils`
--

CREATE TABLE `paymentdeatils` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paymentdeatils`
--

INSERT INTO `paymentdeatils` (`Id`, `OrderId`, `Email`, `Name`, `Total`) VALUES
(1, 1, 'truong@gmail.com', 'Trường Trần', 3913),
(2, 2, 'truong2@gmail.com', 'Trường Vũ', 475),
(3, 3, 'nhaphuong@gmail.com', 'Nhã Phương', 225),
(4, 4, 'truong@gmail.com', 'Trường Trần', 200),
(5, 5, 'truong@gmail.com', 'Trường Trần', 300),
(6, 6, 'truong2@gmail.com', 'Trường Vũ', 430),
(7, 7, 'truong2@gmail.com', 'Trường Vũ', 250),
(8, 8, 'truong@gmail.com', 'Trường Trần', 300),
(9, 9, 'truong2@gmail.com', 'Trường Vũ', 690),
(10, 10, 'truong@gmail.com', 'Trường Trần', 300),
(11, 11, 'truong@gmail.com', 'Trường Trần', 52);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
  `Id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`Id`, `name`, `image`, `Category`, `price`, `Rating`, `Description`) VALUES
(1, 'Chain1', 'upload/jewellerychain1.png', 'Chains', 50, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(3, 'chain3', 'upload/jewellerychain3.png', 'Chains', 45, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(4, 'chain4', 'upload/jewellerychain4.png', 'Chains', 34, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(5, 'Ring1', 'upload/ring1.png', 'Rings', 26, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(6, 'Ring2', 'upload/ring2.png', 'Rings', 45, 1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(7, 'Ring3', 'upload/ring3.png', 'Rings', 39, 1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(8, 'Ring4', 'upload/ring4.png', 'Rings', 250, 1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!'),
(10, 'chain2', 'upload/jewellerychain2.png', 'Chains', 50, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa natus sint nulla omnis nisi doloremque cumque nostrum quas iste. Animi accusantium odit maiores, voluptates sit laudantium reprehenderit voluptatibus. Sint, explicabo!');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitems`
--

CREATE TABLE `purchaseitems` (
  `Id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductQuentity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchaseitems`
--

INSERT INTO `purchaseitems` (`Id`, `orderId`, `ProductId`, `ProductName`, `ProductQuentity`) VALUES
(1, 1, 1, 'Chain1', '14'),
(2, 1, 3, 'chain3', '6'),
(3, 1, 4, 'chain4', '7'),
(4, 1, 5, 'Ring1', '6'),
(5, 1, 6, 'Ring2', '7'),
(6, 1, 7, 'Ring3', '6'),
(7, 1, 8, 'Ring4', '8'),
(8, 2, 1, 'Chain1', '5'),
(9, 2, 3, 'chain3', '5'),
(10, 3, 3, 'chain3', '5'),
(11, 4, 1, 'Chain1', '4'),
(12, 5, 1, 'Chain1', '6'),
(13, 6, 1, 'Chain1', '5'),
(14, 6, 3, 'chain3', '4'),
(15, 7, 1, 'Chain1', '5'),
(16, 8, 1, 'Chain1', '6'),
(17, 9, 1, 'Chain1', '5'),
(18, 9, 3, 'chain3', '6'),
(19, 9, 4, 'chain4', '5'),
(20, 10, 1, 'Chain1', '6'),
(21, 11, 5, 'Ring1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `sign_signout_history`
--

CREATE TABLE `sign_signout_history` (
  `AccountType` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sign_signout_history`
--

INSERT INTO `sign_signout_history` (`AccountType`, `Email`, `Status`, `Name`, `Time`) VALUES
('opel', 'truong@gmail.com', 'SIGN IN', 'Trường Trần', '07:56:00'),
('opel', 'truong@gmail.com', 'SIGN OUT', 'Trường Trần', '08:13:00'),
('type1', 'truong@gmail.com', 'SIGN IN', 'Trường Trần', '08:23:00'),
('type1', 'truong@gmail.com', 'SIGN OUT', 'Trường Trần', '08:23:00'),
('type1', 'truong@gmail.com', 'SIGN IN', 'Trường Trần', '22:31:00'),
('type1', 'truong@gmail.com', 'SIGN OUT', 'Trường Trần', '22:31:00'),
('type1', 'truong2@gmail.com', 'SIGN IN', 'Trường Vũ', '22:42:39'),
('type1', 'truong2@gmail.com', 'SIGN OUT', 'Trường Vũ', '22:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `AccountType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`AccountType`, `email`, `password`, `firstname`, `lastname`) VALUES
('type1', 'nhaphuong@gmail.com', 'Phuong123', 'Nhã', 'Phương'),
('type2', 'thien@gmail.com', 'Thien123', 'Thiên', 'Công'),
('type1', 'truong2@gmail.com', 'Truong123', 'Trường', 'Vũ'),
('type1', 'truong@gmail.com', 'Truong1234', 'Trường', 'Trần');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Admin_email`);

--
-- Indexes for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contactusdetail`
--
ALTER TABLE `contactusdetail`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `paymentdeatils`
--
ALTER TABLE `paymentdeatils`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `purcahseid` (`OrderId`);

--
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `purchaseitems`
--
ALTER TABLE `purchaseitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `orderid` (`orderId`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `paymentdeatils`
--
ALTER TABLE `paymentdeatils`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchaseitems`
--
ALTER TABLE `purchaseitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `id` FOREIGN KEY (`Id`) REFERENCES `productdetail` (`Id`);

--
-- Constraints for table `paymentdeatils`
--
ALTER TABLE `paymentdeatils`
  ADD CONSTRAINT `purcahseid` FOREIGN KEY (`OrderId`) REFERENCES `orderdetails` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchaseitems`
--
ALTER TABLE `purchaseitems`
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderId`) REFERENCES `orderdetails` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
