-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2017 at 07:55 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill no` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `chef id` varchar(50) NOT NULL,
  `chef name` varchar(50) NOT NULL,
  `chef salary` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` varchar(30) NOT NULL,
  `password` varchar(90) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `password`, `c_name`, `pin`, `address`, `phone no`) VALUES
('1', '12345', 'arpan', '700124', 'barasat', '8420314586'),
('2', '123456', 'pratik', '154684', 'salt lake', '8446464'),
('458', '+9844468', '65446464', '46464646', '4646846464', '46464646'),
('4646464', '9884646464', '8468468468464', '464544', '46465466', '64646464'),
('789', '98465465', 'A.roy', '700124', 'barasat', '7894563215'),
('984984', '65464', 'A.roy', '1235', 'xsaxcas', '44651561531'),
('arpan', '12345', 'arpan roy', '700103', 'garia', '1234851'),
('rijupalika2903@gmail.com', 'riju12345bistro', 'Rijupalika Das ', '700047', '3/100a,vidyasagar colony', '8981535303');

-- --------------------------------------------------------

--
-- Table structure for table `delivery boy`
--

CREATE TABLE `delivery boy` (
  `d_id` varchar(30) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `d_salary` int(10) NOT NULL,
  `area code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `i_no` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager id` varchar(50) NOT NULL,
  `phone number` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager id`, `phone number`, `name`) VALUES
('m01', '8420317896', 'a.roy');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order id` varchar(50) NOT NULL,
  `order amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paid to`
--

CREATE TABLE `paid to` (
  `bill no` varchar(50) NOT NULL,
  `payment method` varchar(50) NOT NULL,
  `transaction no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant name` varchar(50) NOT NULL,
  `phone number` varchar(20) NOT NULL,
  `gross sale` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `website` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant name`, `phone number`, `gross sale`, `address`, `website`) VALUES
('calcutta bistro', '8420317894', 45000, 'jadavpur 8b sulekha', 'calcuttabistro.com');

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `waiter id` varchar(50) NOT NULL,
  `waiter name` varchar(50) NOT NULL,
  `waiter salary` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill no`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`chef id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `delivery boy`
--
ALTER TABLE `delivery boy`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`i_no`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order id`);

--
-- Indexes for table `paid to`
--
ALTER TABLE `paid to`
  ADD PRIMARY KEY (`bill no`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant name`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`waiter id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
