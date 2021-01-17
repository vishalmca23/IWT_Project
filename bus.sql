-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2018 at 06:28 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `user_type`) VALUES
(2, 'admin', '49e654be128806a40728da361043a0fa', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `book_detail`
--

CREATE TABLE `book_detail` (
  `seat_no` int(30) NOT NULL,
  `route_id` int(30) NOT NULL,
  `journey_date` date NOT NULL,
  `booking_date` date NOT NULL,
  `rent` int(30) NOT NULL,
  `bus_type` varchar(50) NOT NULL,
  `choice` varchar(50) NOT NULL,
  `customer_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_detail`
--

INSERT INTO `book_detail` (`seat_no`, `route_id`, `journey_date`, `booking_date`, `rent`, `bus_type`, `choice`, `customer_id`) VALUES
(1, 39, '2018-08-31', '2018-08-29', 800, 'Deluxe', 'B1,B2', 10),
(2, 41, '2018-08-31', '2018-08-29', 1000, 'Deluxe', 'A1,A2,A3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus_detail`
--

CREATE TABLE `bus_detail` (
  `bus_no` varchar(25) NOT NULL,
  `bus_type` varchar(50) NOT NULL,
  `total_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_detail`
--

INSERT INTO `bus_detail` (`bus_no`, `bus_type`, `total_seat`) VALUES
('BA5KA1011', 'Deluxe', 32);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `password`, `address`, `city`, `gender`, `contact_no`, `email`) VALUES
(1, 'uttammahat', '36b8d1ef000113045261277d75b72897', 'suryabianyak', 'suryabinayak', 'male', '9813100180', 'uttammahat@gmail.com'),
(9, 'uttam', 'ccf8486cfd1f76323cb1c684b5d254fd', 'bkt', 'bkt', 'male', '9813100180', 'uttam@gmail.com'),
(10, 'ram', '4641999a7679fcaef2df0e26d11e3c72', 'bkt', 'bkt', 'male', '9843130130', 'ram@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `customer_id` int(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `total_rent` int(11) NOT NULL,
  `current_phone_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`customer_id`, `owner_name`, `bank`, `trans_type`, `total_rent`, `current_phone_no`) VALUES
(11, 'vishal', '', 'cash', 1600, 8962191644),
(1, 'MAyank', '', 'cash', 3000, 9009256325);

-- --------------------------------------------------------

--
-- Table structure for table `route_detail`
--

CREATE TABLE `route_detail` (
  `route_id` int(11) NOT NULL,
  `departure_station` varchar(50) NOT NULL,
  `arrival_station` varchar(50) NOT NULL,
  `via_station` varchar(50) NOT NULL,
  `rent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_detail`
--

INSERT INTO `route_detail` (`route_id`, `departure_station`, `arrival_station`, `via_station`, `rent`) VALUES
(1, 'Indore', 'Bhopal', 'Ujjain', 1000),
(2, 'Indore', 'Pune', 'Dewas', 800),
(3, 'Indore', 'Varanasi', 'Ujjain', 900),
(4, 'Indore', 'Delhi', 'Dewas', 1000),
(5, 'Indore', 'Khandawa', 'Ujjain', 900),
(6, 'Indore', 'Banglore', 'Indore', 900),
(7, 'Indore', 'Mumbai', 'Dewas', 800);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `route_id` int(11) NOT NULL,
  `departure_station` varchar(50) NOT NULL,
  `arrival_station` varchar(50) NOT NULL,
  `via_station` varchar(50) NOT NULL,
  `departure_time` varchar(50) NOT NULL,
  `arrival_time` varchar(50) NOT NULL,
  `rent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`route_id`, `departure_station`, `arrival_station`, `via_station`, `departure_time`, `arrival_time`, `rent`) VALUES
(1, 'Indore', 'Bhopal', 'Ujjain','07:00','13:00',1000),
(2, 'Indore', 'Pune', 'Dewas','10:00','18:00',800),
(3, 'Indore', 'Varanasi', 'Ujjain','09:00', '15:00', 900),
(4, 'Indore', 'Delhi', 'Dewas','07:00', '13:00', 1000),
(5, 'Indore', 'Khandawa', 'Ujjain','09:00', '15:00', 900),
(6, 'Indore', 'Banglore', 'Indore','08:00', '14:00', 900),
(7, 'Indore', 'Mumbai', 'Dewas','10:00', '15:00', 800);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `book_detail`
--
ALTER TABLE `book_detail`
  ADD PRIMARY KEY (`seat_no`);

--
-- Indexes for table `bus_detail`
--
ALTER TABLE `bus_detail`
  ADD PRIMARY KEY (`bus_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `route_detail`
--
ALTER TABLE `route_detail`
  ADD PRIMARY KEY (`route_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `book_detail`
--
ALTER TABLE `book_detail`
  MODIFY `seat_no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `route_detail`
--
ALTER TABLE `route_detail`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
