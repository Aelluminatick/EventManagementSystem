-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 03:45 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'Admin', 'admin', '123', 'active'),
(2, 'Eddie Geronimo', 'eddieg', 'eddieg', 'active'),
(3, 'Rene', 'renedom30', 'renedom30', 'active'),
(5, 'Test', 'test', 'test', 'active'),
(954, 'Chris', 'chris', 'chris', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`) VALUES
(9, 'Birthday Package 1', '750.00'),
(10, 'Birthday Package 2', '1100.00'),
(11, 'Baptism Package 1', '1000.00'),
(12, 'Wedding Package 1', '950.00');

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

CREATE TABLE `combo_details` (
  `combo_details_id` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `package_id`) VALUES
(3, 2, 1),
(6, 3, 4),
(8, 2, 4),
(29, 4, 6),
(30, 5, 3),
(31, 6, 5),
(32, 7, 2),
(33, 8, 28),
(34, 1, 7),
(35, 9, 31),
(36, 10, 32),
(37, 11, 30),
(39, 12, 35);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`) VALUES
(1, 'Baptism'),
(2, 'Debut'),
(3, 'Birthday'),
(10, 'Wedding');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_status`, `member_contact`, `member_address`) VALUES
(1, 'Doe', 'John', 'active', '09775364326', 'Golden St. Las Pinas City'),
(2, 'Doe', 'Jane', 'active', '09885436753', 'Las Pinas City');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `fullname`, `email`, `subject`, `message`, `date`) VALUES
(2, 'Rene', 'dominic.valencia77@gmail.com', 'Test', 'test', '2021-11-10 00:14:16'),
(3, 'Floyd', 'grellusionist@gmail.com', 'Test', 'testt', '2021-11-10 00:15:17'),
(4, 'Customer', 'css@gmail.com', 'Test', 'Testtt', '2021-11-19 00:43:00'),
(5, 'Joe', 'joee@gmail.com', 'Test', 'Test', '2021-11-19 01:42:50'),
(23, 'Rene', 'rdv@test.com', 'Test', 'Test', '2021-12-02 00:55:34'),
(24, 'Customer', 'cust@gmail.com', 'Test', 'Test', '2021-12-14 19:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `packageno`
--

CREATE TABLE `packageno` (
  `packageno_id` int(11) NOT NULL,
  `packageno_name` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packageno`
--

INSERT INTO `packageno` (`packageno_id`, `packageno_name`) VALUES
(6, '4'),
(7, '2'),
(9, '3'),
(10, '1'),
(11, '5');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `packageno_id` int(30) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `package_desc` varchar(100) NOT NULL,
  `package_price` decimal(10,2) NOT NULL,
  `package_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `packageno_id`, `event_name`, `package_desc`, `package_price`, `package_pic`) VALUES
(30, 'Scarlet', 10, 'Baptism', 'Amenites on the image provided.', '50000.00', 'scarlet.jpg'),
(31, 'Sylvia', 10, 'Birthday', 'Amenities on the image provided.', '75000.00', 'sylvia.jpg'),
(32, 'Venus', 7, 'Birthday', 'Amenities on the image provided.', '55000.00', 'venus.jpg'),
(35, 'Salvia', 10, 'Wedding', 'Amenities on the image provided.', '95000.00', 'salvia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28'),
(2, 100000, 42, '2021-11-08'),
(3, 100000, 42, '2021-11-08'),
(4, 100000, 42, '2021-11-08'),
(5, 100000, 42, '2021-11-08'),
(6, 100000, 42, '2021-11-08'),
(7, 22500, 48, '2021-11-08'),
(8, 1000, 42, '2021-11-08'),
(9, 1500, 45, '2021-11-08'),
(10, -500500, 42, '2021-11-08'),
(11, 1500, 46, '2021-11-08'),
(12, 2500, 50, '2021-11-10'),
(13, 12500, 53, '2021-11-10'),
(14, 12500, 59, '2021-11-12'),
(15, 2500, 57, '2021-11-12'),
(16, 11250, 60, '2021-11-12'),
(17, 30000, 71, '2021-11-19'),
(18, 23500, 72, '2021-11-26'),
(19, 25000, 71, '2021-12-03'),
(20, 25000, 77, '2021-12-03'),
(21, 25000, 77, '2021-12-14'),
(22, 90000, 78, '2021-12-14'),
(23, 37500, 85, '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `r_first` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `r_contact` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `r_email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `r_address` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `r_type` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `r_ocassion` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `r_motif` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `team_id` int(11) NOT NULL,
  `r_venue` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(42, '2017-05-04', '14:00:00', 'Pipez', 'Lee ', '09001914000', 'e@gmail.com', 'Bago City', 'buffet', 'Baptism', 'White', 0, 'Bago City', '2500.00', '0.00', '', '2017-04-28', '5xkKxwWasn', 50, 3, '50.00', 'Bank to Bank'),
(47, '0000-00-00', '00:00:00', 'Doe', 'John', '09286311538', 'jdc@yahoo.com', 'Golden Ave. Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-08', 'BvoGlcIH6b', 0, 0, '0.00', ''),
(48, '2021-11-29', '12:00:00', 'Doe', 'John', '09772325321', 'jdc@yahoo.com', 'Golden Ave. ', 'buffet', 'Birthday', 'Simple', 1, 'Golden House Acres, Brgy. Talon Uno, Las Pinas City', '22500.00', '0.00', 'Finished', '2021-11-08', 'dhVQym46X5', 90, 2, '250.00', 'Cash'),
(49, '1970-01-01', '00:00:00', 'Doering', 'Joe', '09775364323', 'jdoe@gmail.com', 'Amethyst St. Dasmarinas, Cavite', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-08', 'Q20HQfSrS1', 0, 0, '0.00', ''),
(50, '2021-11-30', '10:00:00', 'Doering', 'Joe', '09775364323', 'jdoe@gmail.com', 'Amethyst St. Dasmarinas, Cavite', 'plated', 'Birthday', 'Black', 0, 'Amagi Park, Bacoor, Cavite', '2500.00', '0.00', 'Finished', '2021-11-08', 'KL6hyhOIS8', 50, 3, '50.00', 'Pera Padala'),
(51, '0000-00-00', '00:00:00', 'Doe', 'John', '09225484295', 'jadsc@yahoo.com', 'Golden Ave.', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-09', 'jwajfCFRyg', 0, 0, '0.00', ''),
(52, '1970-01-01', '00:00:00', 'Dela Cruz', 'Juan', '09775364323', 'jdc@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-10', 'N5FlIESVuB', 0, 0, '0.00', ''),
(53, '2021-12-12', '13:30:00', 'Sanchez', 'John Floyd', '09772363195', 'sanchezjohnfloyd@gmail.com', 'BF Resort Village, Las Pinas City', 'buffet', 'Christmas Party', 'N/A', 0, 'BF Resort Village, Las Pinas City', '12500.00', '0.00', '', '2021-11-10', 'oVIbAmEDom', 50, 2, '250.00', 'Cash'),
(54, '0000-00-00', '00:00:00', 'Sanchez', 'Juan', '09775364326', 'jss@gmail.com', 'Test St. Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-10', 'hT4vxWkEB1', 0, 0, '0.00', ''),
(55, '0000-00-00', '00:00:00', 'Valencia', 'Dominic', '09286311538', 'rdv@test.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', '6XRRtQAGPo', 0, 0, '0.00', ''),
(56, '1970-01-01', '00:00:00', 'Valencia', 'Dominic', '09118269352', 'dname@gmail.com', '123 Golden St. Las Pinas City\r\n', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'hVyH2ZHUa4', 0, 0, '0.00', ''),
(57, '2021-11-18', '12:00:00', 'Valencia', 'Dominic', '09118269352', 'valencia@gmail.com', 'Golden St. Las Pinas City', 'buffet', 'Baptism', 'Simple', 0, 'Cecils Restaurant', '2500.00', '0.00', 'Finished', '2021-11-12', 'lOXUQbhOk5', 50, 3, '50.00', 'Cash'),
(58, '0000-00-00', '00:00:00', 'Reyes', 'Don Juan', '+63 966 256 5501', 'djr@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', '1hUifHEi5k', 0, 0, '0.00', ''),
(59, '2021-11-18', '15:00:00', 'Valencia', 'Dominic', '09286311538', 'rdv@test.com', 'Las Pinas City', '', 'Wedding', '\0\0\0S\0\0\0i\0\0\0m\0\0\0p\0\0\0l\0\0\0e', 0, 'Cecile Restaurant', '12500.00', '0.00', '', '2021-11-12', 'ondn5hOmtT', 50, 2, '250.00', 'Bank to Bank'),
(60, '2021-12-04', '14:30:00', 'Walker', 'Allen', '0928534713', 'awalker@gmail.com', 'Cavite City', 'buffet', 'Baptism', '\0\0\0B\0\0\0l\0\0\0a\0\0\0c\0\0\0k', 0, 'Dasmarinas, Cavite', '11250.00', '0.00', 'Finished', '2021-11-12', 'WniyJ0wBhK', 75, 1, '150.00', 'Pera Padala'),
(61, '0000-00-00', '00:00:00', 'Reyes', 'John', '09729538153', 'jrr@yahoo.com', 'Muntinlupa City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'MY7StG9odO', 0, 0, '0.00', ''),
(62, '2021-11-27', '14:30:00', 'Reyes', 'John', '09729538153', 'jrr@yahoo.com', 'Muntinlupa City', 'plated', 'Birthday', 'Simple', 0, 'Muntinlupa City', '15000.00', '15000.00', '', '2021-11-12', 'gDQgifD5Ih', 60, 2, '250.00', 'Bank to Bank'),
(63, '0000-00-00', '00:00:00', 'Gonzales', 'Grace', '09775364326', 'graceg@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'IVXpnPOwiD', 0, 0, '0.00', ''),
(64, '0000-00-00', '00:00:00', 'Gonzales', 'Grace', '09775364326', 'graceg@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'poM8URMyYr', 0, 0, '0.00', ''),
(65, '0000-00-00', '00:00:00', 'Gonzales', 'Grace', '09863526923', 'graceg@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'lTRSrLw5pP', 0, 0, '0.00', ''),
(66, '0000-00-00', '00:00:00', 'Reyes', 'Dominic', '09457695184', 'drr@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'CQXHVmOnF5', 0, 0, '0.00', ''),
(67, '2021-12-01', '14:00:00', 'Sanchez', 'Dominic', '09993853921', 'dss@gmail.com', 'Las Pinas City', 'buffet', 'Debut', 'N/A', 0, 'Las Pinas City', '60000.00', '60000.00', 'Cancelled', '2021-11-12', '7ALV5n43AF', 50, 1, '1200.00', 'Cash'),
(68, '0000-00-00', '00:00:00', 'Doe', 'Joe', '09286311538', 'jdoe@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-12', 'bFdDLgKSEO', 0, 0, '0.00', ''),
(69, '0000-00-00', '00:00:00', 'Reyes', 'Juan', '09775364323', 'jrr@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-19', 'XgM6sz2Vg2', 0, 0, '0.00', ''),
(70, '2021-11-30', '15:30:00', 'Reyes', 'Juan', '09775364321', 'jrr@yahoo.com', 'Las Pinas City', 'buffet', 'Birthday', 'Simple', 0, 'Las Pinas City', '27500.00', '27500.00', '', '2021-11-19', 'L6PrY2YdcO', 50, 5, '550.00', ''),
(71, '2021-11-30', '15:30:00', 'Reyes', 'Juan', '09775364323', 'jrr@yahoo.com', 'Las Pinas City', 'buffet', 'Birthday', 'Simple', 0, 'Las Pinas City', '55000.00', '0.00', 'Finished', '2021-11-19', '6UqVFdAGp7', 50, 5, '1100.00', 'Cash'),
(72, '2021-12-14', '10:30:00', 'Gonzales', 'John', '09775364321', 'jgg@gmail.com', 'Las Pinas City', 'plated', 'Birthday', 'Simple', 0, 'Las Pinas City', '55000.00', '31500.00', 'Finished', '2021-11-26', 'wEr3FTvCki', 50, 5, '1100.00', 'Cash'),
(74, '0000-00-00', '00:00:00', 'Dela Cruz', 'Johnny', '09118269352', 'jdc@ymailcom', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-27', 'PaZ5YWpiK0', 0, 0, '0.00', ''),
(75, '0000-00-00', '00:00:00', 'Dela Cruz', 'Johnny', '09118269352', 'jdc@ymail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-27', 'lhZgbEjLNq', 0, 0, '0.00', ''),
(76, '0000-00-00', '00:00:00', 'Sanchez', 'Johnny', '09775364321', 'jss@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-11-27', 'bRr5IUlxEk', 0, 0, '0.00', ''),
(77, '2021-12-05', '15:30:00', 'Bravo', 'Johnny', '09223344556', 'jbrv@gmail.com', 'Las Pinas City', 'buffet', 'Baptism', 'N/A', 0, 'Las Pinas City', '50000.00', '0.00', 'Finished', '2021-12-03', 'ABjY9r5TyW', 50, 6, '1000.00', 'Cash'),
(78, '2021-12-19', '10:45:00', 'Reyes', 'DJ', '09118269352', 'djr@yahoo.com', 'Las Pinas City', 'buffet', 'Wedding', 'Pink', 0, 'Las Pinas City', '90000.00', '0.00', 'Pending', '2021-12-03', 'S21VJF7EzH', 75, 1, '1200.00', 'Pera Padala'),
(79, '0000-00-00', '00:00:00', 'West', 'Adam', '09885436753', 'adw@test.com', 'Dasmarinas, Cavite', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-09', 'eKq9Bu46I9', 0, 0, '0.00', ''),
(80, '2022-01-09', '14:30:00', 'Doe', 'Joe', '09286311538', 'jdoe@gmail.com', 'Las Pinas City', 'buffet', 'Wedding', 'Angelic', 0, 'Cavite City', '4750000.00', '4750000.00', '', '2021-12-14', 'uNodZ3Tw4J', 50, 12, '95000.00', ''),
(81, '0000-00-00', '00:00:00', 'Dela Cruz', 'Johnny', '09775536489', 'jdc@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-14', 'pSz6lI19Vi', 0, 0, '0.00', ''),
(82, '0000-00-00', '00:00:00', 'Reyes', 'John', '09772325321', 'jrr@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-14', 'LW3qXz3WAu', 0, 0, '0.00', ''),
(83, '2022-01-09', '10:30:00', 'Reyes', 'John', '09286311538', 'jrr@yahoo.com', 'Las Pinas City', 'buffet', 'Birthday', 'Simple', 0, 'Las Pinas City', '2750000.00', '2750000.00', '', '2021-12-14', 'gImUiABmzt', 50, 10, '55000.00', ''),
(84, '2022-01-09', '10:30:00', 'Doe', 'John', '09775364323', 'jdoe@gmail.com', 'Las Pinas City', 'plated', 'Birthday', 'Simple', 0, 'Las Pinas City', '0.00', '0.00', '', '2021-12-14', '4yZhCQLyh4', 0, 9, '750.00', ''),
(85, '2022-01-09', '10:30:00', 'Doe', 'John', '09118269352', 'jdoe@gmail.com', 'Las Pinas City', 'buffet', 'Birthday', 'Simple', 0, 'Las Pinas City', '37500.00', '0.00', 'Approved', '2021-12-14', 'gahkoWtozd', 50, 9, '750.00', 'Bank to Bank'),
(86, '2022-01-10', '10:30:00', 'Reyes', 'Dominic', '09775364326', 'drr@gmail.com', 'Cavite City', 'buffet', 'Wedding', 'N/A', 0, 'Las Pinas City', '71250.00', '71250.00', 'pending', '2021-12-14', 'mk2euvCwyd', 75, 12, '950.00', 'Cash'),
(87, '1970-01-01', '00:00:00', 'Dela Cruz', 'Juan', '09863526923', 'jdc@yahoo.com', 'Cavite City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-14', '0hRtKvoyEy', 0, 0, '0.00', ''),
(88, '0000-00-00', '00:00:00', 'Reyes', 'John', '09286311538', 'jrr@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-14', '4TmhGl5vTH', 0, 0, '0.00', ''),
(89, '0000-00-00', '00:00:00', 'Doe', 'John', '09772325321', 'jdc@yahoo.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-14', 'hmj7RjmwwG', 0, 0, '0.00', ''),
(90, '0000-00-00', '00:00:00', 'Gonzales', 'Grace', '09775364321', 'graceg@gmail.com', 'Las Pinas City', '', '', '', 0, '', '0.00', '0.00', '', '2021-12-15', 'ZfnLVVCnkW', 0, 0, '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

CREATE TABLE `r_combo` (
  `r_combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

CREATE TABLE `r_noncombo` (
  `r_non_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_event`
--

CREATE TABLE `staff_event` (
  `staffevent_id` int(11) NOT NULL,
  `staffevent_what` varchar(500) NOT NULL,
  `staffevent_date` date NOT NULL,
  `staffevent_time` time NOT NULL,
  `staffevent_where` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_event`
--

INSERT INTO `staff_event` (`staffevent_id`, `staffevent_what`, `staffevent_date`, `staffevent_time`, `staffevent_where`) VALUES
(2, 'Christmas Party', '2021-12-20', '08:00:00', 'Espacio Lavorozo'),
(3, 'Test', '2022-01-01', '12:00:00', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`) VALUES
(1, 'Cleaners'),
(2, 'Team 1');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`team_member_id`, `team_id`, `member_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `combo_details`
--
ALTER TABLE `combo_details`
  ADD PRIMARY KEY (`combo_details_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `packageno`
--
ALTER TABLE `packageno`
  ADD PRIMARY KEY (`packageno_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `r_combo`
--
ALTER TABLE `r_combo`
  ADD PRIMARY KEY (`r_combo_id`);

--
-- Indexes for table `r_details`
--
ALTER TABLE `r_details`
  ADD PRIMARY KEY (`r_details_id`);

--
-- Indexes for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  ADD PRIMARY KEY (`r_non_id`);

--
-- Indexes for table `staff_event`
--
ALTER TABLE `staff_event`
  ADD PRIMARY KEY (`staffevent_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`team_member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=955;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `combo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `combo_details`
--
ALTER TABLE `combo_details`
  MODIFY `combo_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `packageno`
--
ALTER TABLE `packageno`
  MODIFY `packageno_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `r_combo`
--
ALTER TABLE `r_combo`
  MODIFY `r_combo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_details`
--
ALTER TABLE `r_details`
  MODIFY `r_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  MODIFY `r_non_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `staff_event`
--
ALTER TABLE `staff_event`
  MODIFY `staffevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `team_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
