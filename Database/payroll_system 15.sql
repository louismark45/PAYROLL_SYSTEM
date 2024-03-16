-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Employee_No` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Employee_No`, `first_name`, `last_name`, `department`, `position`, `username`, `password`, `email`, `images`) VALUES
(1, 'Elexis', 'Falceso', 'ICTC', 'Admin', 'admin', 'admin123', '', 'img/elexis.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `Employee_No` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` varchar(255) NOT NULL,
  `log_type` varchar(255) NOT NULL,
  `tracking_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `Employee_No`, `date`, `time`, `log_type`, `tracking_number`) VALUES
(95, 'PLSATC598146', '2024-03-15', '04:19 PM', 'Time in', 2147483647),
(96, 'PLSATC598146', '2024-03-15', '04:20 PM', 'Time in', 2147483647),
(97, 'PLSATC598146', '2024-03-15', '04:20 PM', 'Time out', 2147483647),
(98, 'KHLJQW489659', '2024-03-15', '04:23 PM', 'Time in', 2147483647),
(99, 'KHLJQW489659', '2024-03-15', '04:24 PM', 'Time out', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `description`, `amount`) VALUES
(8, 'Philhealth', 1040),
(10, 'Pag-IBIG', 400),
(14, 'SSS', 1040);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `Employee_No` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `images`, `Employee_No`, `first_name`, `last_name`, `department`, `position`, `email`, `password`) VALUES
(28, 'img/louise.jpg', 'KHLJQW489659', 'Louise', 'Garcia', 'ICTC', 'Graphic Design', 'louise.garcia@cvsu.edu.ph', '123456789'),
(29, 'img/elexis.jpg', 'PLSATC598146', 'Elexis', 'Falceso', 'ICTC', '  Full Stack Developer ', 'elexis.falceso@cvsu.edu.ph', '5235061'),
(30, 'img/employee_ 30 .jpg', 'KOPNXW682241', 'Elexis', 'Fajiculay', 'ICTC', 'Graphic Design', 'elexis.falceso.dit.cvsu@gmail.com', '1231231010'),
(31, 'img/dp.jpg', 'ELWPKU807326', 'Elexis', 'Falceso', 'ICTC', 'Graphic Design', 'falcesoelexis21@gmail.com', '1231231010');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL,
  `Employee_No` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `Employee_No`, `first_name`, `last_name`, `email`, `leave_type`, `start_date`, `end_date`, `status`) VALUES
(19, 'KHLJQW489659', 'Louise', 'Garcia', 'louise.garcia@cvsu.edu.ph', 'Sick', '2024-03-14', '2024-03-16', 'Approve'),
(21, 'KHLJQW489659', 'Louise', 'Garcia', 'louise.garcia@cvsu.edu.ph', 'Sick', '2024-03-15', '2024-03-17', 'pending'),
(22, 'PLSATC598146', 'Elexis', 'Falceso', 'elexis.falceso@cvsu.edu.ph', 'Sick', '2024-03-14', '2024-03-30', 'Denied');

-- --------------------------------------------------------

--
-- Table structure for table `excess_time`
--

CREATE TABLE `excess_time` (
  `id` int(11) NOT NULL,
  `Employee_No` int(11) NOT NULL,
  `excess_times` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `excess_time`
--

INSERT INTO `excess_time` (`id`, `Employee_No`, `excess_times`, `created_at`) VALUES
(1, 0, 180, '2024-03-14 07:45:18'),
(2, 0, 180, '2024-03-14 07:45:18'),
(3, 0, 180, '2024-03-14 07:45:19'),
(4, 0, 180, '2024-03-14 07:45:46'),
(5, 0, 180, '2024-03-14 07:56:36'),
(6, 0, 180, '2024-03-14 07:56:36'),
(7, 0, 180, '2024-03-14 07:56:57'),
(8, 0, 180, '2024-03-14 07:57:13'),
(9, 0, 180, '2024-03-14 07:57:41'),
(10, 0, 180, '2024-03-14 07:57:41'),
(11, 0, 180, '2024-03-14 07:57:41'),
(12, 0, 180, '2024-03-14 07:57:41'),
(13, 0, 180, '2024-03-14 08:16:03'),
(14, 0, 25200, '2024-03-14 23:12:09'),
(15, 0, 25200, '2024-03-14 23:13:53'),
(16, 0, 25200, '2024-03-14 23:13:53'),
(17, 0, 25200, '2024-03-14 23:14:11'),
(18, 0, 25200, '2024-03-14 23:14:22'),
(19, 0, 25200, '2024-03-14 23:14:22'),
(20, 0, 25200, '2024-03-14 23:14:41'),
(21, 0, 25200, '2024-03-14 23:14:46'),
(22, 0, 25200, '2024-03-14 23:14:46'),
(23, 0, 25200, '2024-03-14 23:14:46'),
(24, 0, 25200, '2024-03-14 23:15:49'),
(25, 0, 25200, '2024-03-14 23:22:39'),
(26, 0, 25200, '2024-03-14 23:22:39'),
(27, 0, 25200, '2024-03-14 23:22:40'),
(28, 0, 25200, '2024-03-14 23:22:41'),
(29, 0, 25200, '2024-03-14 23:22:41'),
(30, 0, 25200, '2024-03-14 23:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `tittle`, `description`, `date`, `type`) VALUES
(1, '      Araw ng Kagitingan      ', '      This is National Heroes Day      ', '2024-03-15', 'Restricted'),
(5, 'New Years', 'All Employee Needs Vacation to enjoy your family', '2025-01-01', 'Complosory');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `leave_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `leave_type`) VALUES
(3, 'Sick'),
(4, 'Annual'),
(8, 'Sick');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `rate`) VALUES
(1, '  Full Stack Developer ', '  1000  '),
(7, 'Graphic Design', '300');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:00:00', '17:00:00'),
(6, '09:00:00', '18:00:00'),
(8, '10:00:00', '19:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Employee_No`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `excess_time`
--
ALTER TABLE `excess_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Employee_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `excess_time`
--
ALTER TABLE `excess_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
