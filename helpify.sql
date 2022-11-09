-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 05:21 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpify`
--

-- --------------------------------------------------------

--
-- Table structure for table `merchant_data`
--

CREATE TABLE `merchant_data` (
  `NAME` varchar(25) NOT NULL,
  `STORE_NAME` varchar(20) NOT NULL,
  `STORE_ADDRESS` text NOT NULL,
  `PINCODE` mediumint(9) NOT NULL,
  `PHONE_NO` bigint(10) NOT NULL,
  `EMAIL_ID` mediumtext NOT NULL,
  `WEBSITE` longtext NOT NULL,
  `PASSWORD` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant_data`
--

INSERT INTO `merchant_data` (`NAME`, `STORE_NAME`, `STORE_ADDRESS`, `PINCODE`, `PHONE_NO`, `EMAIL_ID`, `WEBSITE`, `PASSWORD`) VALUES
('PALAKOLLU RAMU', 'shop2', 'rajeev nagar', 507303, 9618629532, 'ramu@gmail.com', 'NA', 'ramu9949'),
('SAI', 'dsgv', 'sadgv', 507303, 9618629533, 'RVsdg@wvr', '', 'sai9949'),
('PULLAMMA', 'PULL', 'CHOWDAVARAM', 507310, 9676369089, 'pullamma@gmail.com', '', 'pullamma9949');

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

CREATE TABLE `permit` (
  `MERCH_ID` bigint(10) NOT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `CODE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products_data`
--

CREATE TABLE `products_data` (
  `MERCH_ID` bigint(10) NOT NULL,
  `USER_ID` bigint(10) NOT NULL,
  `P_NAME` varchar(20) NOT NULL,
  `PRICE` mediumint(5) NOT NULL,
  `QUANTITY` int(3) NOT NULL,
  `TOTAL` bigint(15) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `C_NAME` bigint(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_data`
--

INSERT INTO `products_data` (`MERCH_ID`, `USER_ID`, `P_NAME`, `PRICE`, `QUANTITY`, `TOTAL`, `STATUS`, `C_NAME`, `DATE`, `TIME`) VALUES
(9618629532, 8187028623, 'qef', 11, 234, 2574, 'P', 0, '2021-05-14', '16:09:28'),
(9618629532, 9618629532, '43', 4, 4, 16, 'P', 0, '2021-05-15', '07:58:53'),
(9618629532, 9618629532, '565', 55, 2, 110, 'P', 0, '2021-05-14', '14:05:24'),
(9618629532, 9618629532, '645', 54, 54, 2916, 'P', 0, '2021-05-13', '08:16:44'),
(9618629532, 9618629532, '67hjgf', 765, 654, 500310, 'P', 0, '2021-05-14', '08:16:41'),
(9618629532, 9618629532, 'a', 1111, 1111, 1234321, 'P', 0, '2021-05-15', '05:27:16'),
(9618629532, 9618629532, 'bat', 2, 2, 4, 'P', 0, '2021-05-14', '13:35:52'),
(9618629532, 9618629532, 'bye', 3, 4, 12, 'U', 0, '2021-05-15', '12:43:12'),
(9618629532, 9618629532, 'ddd', 1, 1, 1, 'P', 0, '2021-05-14', '12:21:46'),
(9618629532, 9618629532, 'defv', 32, 32, 1024, 'U', 0, '2021-05-15', '13:02:10'),
(9618629532, 9618629532, 'den', 2, 50, 100, 'P', 0, '2021-05-14', '14:16:39'),
(9618629532, 9618629532, 'derf', 2, 3, 6, 'P', 0, '2021-05-14', '15:49:14'),
(9618629532, 9618629532, 'dfty', 23, 65, 1495, 'P', 0, '2022-01-26', '07:29:22'),
(9618629532, 9618629532, 'ds', 1, 1, 1, 'P', 0, '2021-05-14', '12:33:09'),
(9618629532, 9618629532, 'efewbkj', 3, 3, 9, 'P', 0, '2021-05-15', '12:38:34'),
(9618629532, 9618629532, 'ewf', 8, 8, 64, 'P', 0, '2021-05-12', '08:16:36'),
(9618629532, 9618629532, 'fin', 5, 5, 25, 'P', 0, '2021-05-15', '12:39:21'),
(9618629532, 9618629532, 'first', 532, 3, 1596, 'P', 0, '2021-05-14', '15:48:56'),
(9618629532, 9618629532, 'fr', 45, 43, 1935, 'U', 0, '2021-05-15', '10:47:45'),
(9618629532, 9618629532, 'fun', 54, 34, 1836, 'U', 0, '2021-05-15', '10:47:36'),
(9618629532, 9618629532, 'gggggggggggggggggggg', 2, 2, 4, 'P', 0, '2021-05-14', '12:31:15'),
(9618629532, 9618629532, 'gggggggggggggggggggg', 2, 2, 4, 'P', 0, '2021-05-14', '12:32:13'),
(9618629532, 9618629532, 'gggggggggggggggggggg', 2, 2, 4, 'P', 0, '2021-05-14', '12:32:25'),
(9618629532, 9618629532, 'hbjfvj', 234, 332, 77688, 'P', 0, '2021-05-14', '15:42:19'),
(9618629532, 9618629532, 'hi', 2, 3, 6, 'U', 0, '2021-05-15', '12:43:05'),
(9618629532, 9618629532, 'man', 23, 2, 46, 'P', 0, '2021-05-14', '14:31:58'),
(9618629532, 9618629532, 'manhuriya', 50, 3, 150, 'P', 0, '2021-05-14', '14:38:23'),
(9618629532, 9618629532, 'name', 334, 11, 3674, 'P', 0, '2021-05-14', '13:35:32'),
(9618629532, 9618629532, 'neeww', 11, 11, 121, 'P', 0, '2021-05-14', '12:24:29'),
(9618629532, 9618629532, 'neww', 78, 33, 2574, 'P', 0, '2021-05-15', '07:58:49'),
(9618629532, 9618629532, 'pen', 69, 2000, 138000, 'P', 0, '2021-05-15', '04:25:00'),
(9618629532, 9618629532, 'pen', 2, 3, 6, 'P', 0, '2021-05-14', '14:06:23'),
(9618629532, 9618629532, 'pen', 6, 7, 42, 'P', 0, '2021-05-14', '15:42:01'),
(9618629532, 9618629532, 'player', 2, 3, 6, 'P', 0, '2021-05-14', '13:35:46'),
(9618629532, 9618629532, 'sa', 21, 32, 672, 'P', 0, '2021-05-14', '14:39:48'),
(9618629532, 9618629532, 'sdvkjv', 23, 443, 10189, 'P', 0, '2021-05-15', '08:16:30'),
(9618629532, 9618629532, 'sketch', 3, 3, 9, 'P', 0, '2021-05-14', '13:36:16'),
(9618629532, 9618629532, 'sketch', 2, 2, 4, 'P', 0, '2021-05-14', '14:15:34'),
(9618629532, 9618629532, 'soap', 56, 23, 1288, 'P', 0, '2021-05-15', '04:23:52'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:08:12'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:11:15'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:15:36'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:15:56'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:16:11'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:16:32'),
(9618629532, 9618629532, 'soap', 2, 12, 24, 'P', 0, '2021-05-14', '12:16:40'),
(9618629532, 9618629532, 'soap', 2, 2, 4, 'P', 0, '2021-05-14', '12:24:35'),
(9618629532, 9618629532, 'soap', 2, 28, 56, 'P', 0, '2021-05-14', '13:58:44'),
(9618629532, 9618629532, 'soap', 34, 3, 102, 'P', 0, '2021-05-14', '14:32:06'),
(9618629532, 9618629532, 'soap', 30, 2, 60, 'P', 0, '2021-05-14', '15:41:45'),
(9618629532, 9618629532, 'spoon', 12, 6, 72, 'P', 0, '2021-05-14', '13:58:56'),
(9618629532, 9618629532, 'tent', 245, 789, 193305, 'P', 0, '2021-05-14', '14:16:26'),
(9618629532, 9618629532, 'today', 20, 50, 1000, 'P', 0, '2021-05-14', '04:28:13'),
(9618629532, 9618629532, 'TODAY 2', 21, 51, 1071, 'P', 0, '2021-05-13', '04:29:07'),
(9618629532, 9618629532, 'two', 3, 3, 9, 'P', 0, '2021-05-15', '12:39:11'),
(9618629532, 9618629532, 'war', 2365, 36, 85140, 'P', 0, '2021-05-14', '16:02:47'),
(9618629532, 9618629532, 'wefdv', 324, 23, 7452, 'P', 0, '2015-05-21', '05:02:16'),
(9618629532, 9618629532, 'wkufgro', 546, 7, 3822, 'P', 0, '2021-05-14', '14:00:06'),
(9676369089, 9618629532, '12', 23, 122, 2806, 'U', 0, '2021-05-15', '13:08:26'),
(9676369089, 9618629532, 'defv', 32, 32, 1024, 'U', 0, '2021-05-15', '13:03:19'),
(9676369089, 9618629532, 'soap', 2, 1, 2, 'U', 0, '2021-05-15', '13:03:27'),
(9676369089, 9618629532, 'soap', 23, 2, 46, 'U', 0, '2021-05-15', '13:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `NAME` varchar(25) NOT NULL,
  `ADDRESS` text NOT NULL,
  `PINCODE` mediumint(6) NOT NULL,
  `PHONE_NO` bigint(10) NOT NULL,
  `EMAIL_ID` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`NAME`, `ADDRESS`, `PINCODE`, `PHONE_NO`, `EMAIL_ID`, `PASSWORD`) VALUES
('BUBU DUDU BEST MEMBERS', 'vem', 503305, 7894561326, 'bubu@gmail.com', 'bubu9949'),
('VARSHINI', 'H-No-383,Rajeev Nagar,Sathupally', 507303, 8187028623, 'v123@gmail.com', '34t3462'),
('PALAKOLLU SAI KRISHNA', 'sathupally', 507303, 9618629532, 'saikrishpalakollu145@gmai', 'sai9949'),
('hello', 'Plot no -383, Rajeev Nagar', 507303, 9618629533, 'saiu@gmail.com', 'sai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merchant_data`
--
ALTER TABLE `merchant_data`
  ADD PRIMARY KEY (`PHONE_NO`);

--
-- Indexes for table `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`MERCH_ID`,`USER_ID`);

--
-- Indexes for table `products_data`
--
ALTER TABLE `products_data`
  ADD PRIMARY KEY (`MERCH_ID`,`USER_ID`,`P_NAME`,`TIME`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`PHONE_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
