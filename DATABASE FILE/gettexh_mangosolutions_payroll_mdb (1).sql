-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2023 at 11:09 PM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gettexh_mangosolutions_payroll_mdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wy_admin`
--

CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_admin`
--

INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(2, 'AD01', 'Anas Ahmed', 'ahmedanas37@gmail.com', '6ee628ad0a76ec133fbdf5ad262b4c80979efc44', '2023-07-19 02:47:27'),
(3, 'AD02', 'Abdul Manan', 'manan8588@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '2023-07-19 02:48:06'),
(4, 'AD03', 'Hanbal Masood', 'dev.hambal@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '2023-07-19 02:48:27'),
(5, 'AD04', 'Ahmer Ali', 'ahmer.ali@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '2023-07-19 02:49:14'),
(6, 'AD05', 'Nabeel', 'info@mangosolution@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '2023-07-19 02:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `wy_attendance`
--

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `action_name` enum('punchin','punchout') NOT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_attendance`
--

INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(24, 'WY01', '2023-07-25', 'punchin', '20:01:10', ''),
(25, 'WY01', '2023-07-26', 'punchin', '02:24:43', ''),
(26, 'WY01', '2023-07-26', 'punchout', '02:26:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wy_employees`
--

CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pf_account` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_employees`
--

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `state`, `country`, `email`, `mobile`, `telephone`, `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `blood_group`, `photo`, `designation`, `department`, `pan_no`, `bank_name`, `account_no`, `ifsc_code`, `pf_account`, `created`) VALUES
(40, 'WY01', '68c9fc4c03dff5d734aab9787b5ea01d7d88aa85', 'John ', 'Smith', '07/06/1998', 'male', 'Single', 'Pakistani', 'ABC city', 'Karachi', 'Sindh', 'Pakistan', 'ahmedanas37@gmail.com', '+1 (555) 123-4567', '+1 (555) 987-6543', 'National ID Card', 'XYZ987654', 'Permanent position', '02/15/2023', 'A+', 'WY01.jpg', '', '', '', '', '', '', '', '2023-07-25 21:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `wy_holidays`
--

CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('compulsory','restricted') NOT NULL DEFAULT 'compulsory'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_holidays`
--

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(22, '14th August', '14th August', '08/14/2023', 'compulsory'),
(23, '23rd March', 'Pakistan Day', '03/23/2024', 'compulsory');

-- --------------------------------------------------------

--
-- Table structure for table `wy_leaves`
--

CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(255) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_status` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_leaves`
--

INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_dates`, `leave_message`, `leave_type`, `leave_status`, `apply_date`) VALUES
(138, 'WY01', 'Visit to AGA Khan', '07/31/2023', 'I need leave, I have to visit Aga Khan Hospital.', 'Sick Leave', 'approve', '2023-07-25 20:03:37'),
(139, 'WY01', 'Tour leaved Approval', '09/01/2023,09/02/2023,09/03/2023', 'Goin on Tour', 'Casual Leave', 'approve', '2023-07-25 20:08:05'),
(140, 'WY01', 'Fever', '07/26/2023', 'Fever', 'Sick Leave', 'approve', '2023-07-26 02:25:25'),
(141, 'WY01', '1', '09/13/2023', 'dfhdhdh', 'Casual Leave', 'approve', '2023-07-26 18:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `wy_payheads`
--

CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL,
  `payhead_type` enum('earnings','deductions') NOT NULL DEFAULT 'earnings'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_payheads`
--

INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`, `payhead_type`) VALUES
(1, 'Basic Salary', 'Basic Salary', 'earnings'),
(2, 'Dearness Allowance', 'Dearness Allowance', 'deductions'),
(3, 'House Rent Allowance', 'House Rent Allowance', 'deductions'),
(4, 'Conveyance Allowance', 'Conveyance Allowance', 'deductions'),
(5, 'Medical Allowance', 'Medical Allowance', 'deductions'),
(7, 'Overtime', 'Overtime', 'earnings'),
(8, 'Traveling Expenses', 'Traveling Expenses', 'earnings'),
(9, 'Loans & Advance', 'Loans & Advance', 'earnings'),
(10, 'Other Allowance', 'Other Allowance', 'earnings'),
(11, 'Professional Tax', 'Professional Tax', 'deductions'),
(12, 'Income Tax', 'Income Tax', 'deductions'),
(13, 'Employee Provident Fund', 'Employee Provident Fund', 'deductions'),
(14, 'Loans & Advance', 'Loans & Advance', 'deductions'),
(15, 'Other Deductions', 'Other Deductions', 'deductions');

-- --------------------------------------------------------

--
-- Table structure for table `wy_pay_structure`
--

CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_pay_structure`
--

INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(191, 'WY01', 1, 50000.00),
(192, 'WY01', 11, 3500.00),
(193, 'WY02', 1, 90000.00),
(194, 'WY02', 2, 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `wy_salaries`
--

CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wy_salaries`
--

INSERT INTO `wy_salaries` (`salary_id`, `emp_code`, `payhead_name`, `pay_amount`, `earning_total`, `deduction_total`, `net_salary`, `pay_type`, `pay_month`, `generate_date`) VALUES
(330, 'WY01', 'Basic Salary', 50000.00, 50000.00, 3500.00, 46500.00, 'earnings', 'July, 2023', '2023-07-26 01:39:30'),
(331, 'WY01', 'Professional Tax', 3500.00, 50000.00, 3500.00, 46500.00, 'deductions', 'July, 2023', '2023-07-26 01:39:30'),
(332, 'WY01', 'Basic Salary', 50000.00, 50000.00, 3500.00, 46500.00, 'earnings', 'August, 2024', '2023-07-26 02:18:34'),
(333, 'WY01', 'Professional Tax', 3500.00, 50000.00, 3500.00, 46500.00, 'deductions', 'August, 2024', '2023-07-26 02:18:34'),
(334, 'WY01', 'Basic Salary', 50000.00, 50000.00, 3500.00, 46500.00, 'earnings', 'July, 2024', '2023-07-26 02:18:55'),
(335, 'WY01', 'Professional Tax', 3500.00, 50000.00, 3500.00, 46500.00, 'deductions', 'July, 2024', '2023-07-26 02:18:55'),
(336, 'WY01', 'Basic Salary', 50000.00, 50000.00, 3500.00, 46500.00, 'earnings', 'June, 2024', '2023-07-26 02:21:53'),
(337, 'WY01', 'Professional Tax', 3500.00, 50000.00, 3500.00, 46500.00, 'deductions', 'June, 2024', '2023-07-26 02:21:53'),
(338, 'WY01', 'Basic Salary', 50000.00, 50000.00, 8000.00, 42000.00, 'earnings', 'January, 2024', '2023-07-26 02:27:16'),
(339, 'WY01', 'Professional Tax', 8000.00, 50000.00, 8000.00, 42000.00, 'deductions', 'January, 2024', '2023-07-26 02:27:16'),
(340, 'WY01', 'Basic Salary', 30000.00, 30000.00, 3500.00, 26500.00, 'earnings', 'December, 2023', '2023-07-26 18:42:11'),
(341, 'WY01', 'Professional Tax', 3500.00, 30000.00, 3500.00, 26500.00, 'deductions', 'December, 2023', '2023-07-26 18:42:11'),
(342, 'WY01', 'Basic Salary', 50000.00, 50000.00, 3500.00, 46500.00, 'earnings', 'February, 2024', '2023-07-26 19:04:45'),
(343, 'WY01', 'Professional Tax', 3500.00, 50000.00, 3500.00, 46500.00, 'deductions', 'February, 2024', '2023-07-26 19:04:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wy_admin`
--
ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

--
-- Indexes for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_employees`
--
ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);

--
-- Indexes for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);

--
-- Indexes for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wy_admin`
--
ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wy_attendance`
--
ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wy_employees`
--
ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wy_holidays`
--
ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wy_leaves`
--
ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `wy_payheads`
--
ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wy_pay_structure`
--
ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `wy_salaries`
--
ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
