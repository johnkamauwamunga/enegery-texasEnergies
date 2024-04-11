-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 03:41 PM
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
-- Database: `texas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(30) NOT NULL,
  `admin_last_name` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_phone` varchar(30) NOT NULL,
  `admin_national_id` varchar(30) NOT NULL,
  `admin_staff_id` varchar(30) NOT NULL,
  `admin_login_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_email`, `admin_phone`, `admin_national_id`, `admin_staff_id`, `admin_login_id`) VALUES
(1, 'David', 'Kefa', 'doe@gmail.com', '0700000', '53475574', '34865', 2),
(2, 'Mary', 'Wanjiku', 'mary@gmail.com', '0784539870', '634578', '864868235', 3),
(3, 'popo', 'david', 'popo@gmail.com', '073456789876', '3456789', '456', 8),
(4, 'April', 'Gacheru', 'ki@gmail.com', '098897986393', '23456', '788', 10),
(5, 'April', 'Wairimu', 'ki@gmail.com', '+254 794165133', '23456', '788', 11),
(6, 'April', 'Wairimu', 'ki@gmail.com', '+254 794165133', '23456', '788', 12),
(7, 'April', 'Wairimu', 'april@gmail.com', '+254 794165133', '23456', '', 13),
(8, 'April', 'Wairimu', 'ki@gmail.com', '+254 794165133', '23456', '788', 14),
(9, 'ryomi', 'sukuna', 'sukuna@gmail.com', '074364562', '4253654576', '345', 15);

-- --------------------------------------------------------

--
-- Table structure for table `allocation_point`
--

CREATE TABLE `allocation_point` (
  `allocation_point_id` int(11) NOT NULL,
  `allocation_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocation_point`
--

INSERT INTO `allocation_point` (`allocation_point_id`, `allocation_desc`) VALUES
(11, 'JSK001'),
(12, 'JSK002'),
(13, 'JSK003'),
(14, 'JSK004'),
(15, 'JSK005'),
(16, 'JSK006');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `account_id` int(11) NOT NULL,
  `account_bank_name` varchar(30) NOT NULL,
  `account_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`account_id`, `account_bank_name`, `account_number`) VALUES
(1, 'KCB  bank', 'T0001RT00986'),
(2, 'Cooperative bank', 'Cooop2380174f'),
(3, 'Equity', 'As676346gt'),
(4, 'Absa', '0976'),
(5, 'Diamond trust bank', '896986'),
(6, 'Diamond trust bank', '896986'),
(7, 'bank of Africa', '25354'),
(8, 'CBK', '235365'),
(9, '', ''),
(10, 'Crystal bank', '21876877'),
(11, 'KD bank', '209809');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `cashier_id` int(11) NOT NULL,
  `cashier_first_name` varchar(30) NOT NULL,
  `cashier_last_name` varchar(30) NOT NULL,
  `cashier_phone` varchar(30) NOT NULL,
  `cashier_email` varchar(30) DEFAULT NULL,
  `cashier_national_id` varchar(30) NOT NULL,
  `cashier_staff_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `cashier_first_name`, `cashier_last_name`, `cashier_phone`, `cashier_email`, `cashier_national_id`, `cashier_staff_id`) VALUES
(1, 'David', 'LAI', '07838905', 'davy@gmail.com', '72596', 473589679),
(2, 'Cynthia', 'ayat', '079837912464', 'ayat@gmail.com', '708567988', 7597779),
(3, 'faith', 'mutanu', '070098882', 'faith@gmail.com', '54767', 3),
(4, 'chris', 'james', '0909983', 'chris@gmail.com', '54767367', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cashier_station`
--

CREATE TABLE `cashier_station` (
  `cashier_station_id` int(11) NOT NULL,
  `cashier_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier_station`
--

INSERT INTO `cashier_station` (`cashier_station_id`, `cashier_id`, `station_id`) VALUES
(1, 4, 3),
(2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `credit_sale_details`
--

CREATE TABLE `credit_sale_details` (
  `details_id` int(11) NOT NULL,
  `vehicle_reg_no` varchar(30) NOT NULL,
  `receipt_no` int(30) NOT NULL,
  `card_no` int(30) NOT NULL,
  `card_holder` varchar(30) NOT NULL,
  `sales_desc_id` int(30) NOT NULL,
  `actual_sales_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_sale_details`
--

INSERT INTO `credit_sale_details` (`details_id`, `vehicle_reg_no`, `receipt_no`, `card_no`, `card_holder`, `sales_desc_id`, `actual_sales_id`) VALUES
(4, 'KGG  006G', 6, 576, 'ryomi sukuna', 1, 13),
(5, 'KGG 2442H', 1044, 123456, 'ryomi sukuna', 1, 14),
(6, 'KGG  006G', 234454, 2131441, 'satoru gojo', 1, 15),
(7, 'KGG 2442H', 1044, 123456, 'ryomi sukuna', 1, 20),
(8, 'KGG  006G', 234454, 2131441, 'ryomi sukuna', 1, 31),
(9, 'kcg 0012F', 2100, 1234, 'CARDH', 1, 32),
(10, '', 0, 0, '', 1, 33),
(11, '', 0, 0, '', 1, 35),
(12, '', 0, 0, '', 1, 36),
(13, 'KGG  006G', 234454, 1233, 'karim khan', 1, 39),
(15, 'KHG244', 1324, 324455, '1324', 1, 44),
(16, '', 0, 0, '', 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_account_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_account_no`) VALUES
(1, 'Lipa na Mpesa', '32191'),
(2, 'Meta company', '23414'),
(3, 'Microsoft', '55355'),
(4, 'Instacare company', '736465'),
(5, 'Amazon', '35755'),
(6, 'Equity', '209898'),
(7, 'micquity', '009868'),
(8, 'Amazoncare', '6'),
(9, 'metacare', '2');

-- --------------------------------------------------------

--
-- Table structure for table `dip`
--

CREATE TABLE `dip` (
  `dip_id` int(11) NOT NULL,
  `opening` int(30) NOT NULL,
  `additional` int(30) NOT NULL,
  `total` int(30) NOT NULL,
  `sales` varchar(30) NOT NULL,
  `closing` varchar(30) NOT NULL,
  `dips` int(30) NOT NULL,
  `variance` int(30) NOT NULL,
  `dip_tank_content_id` int(30) NOT NULL,
  `dip_shift_id` int(30) NOT NULL,
  `dip_tank_id` int(30) NOT NULL,
  `dip_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dip`
--

INSERT INTO `dip` (`dip_id`, `opening`, `additional`, `total`, `sales`, `closing`, `dips`, `variance`, `dip_tank_content_id`, `dip_shift_id`, `dip_tank_id`, `dip_station_id`) VALUES
(8, 0, 7892912, 7892912, '', '', 3455, 7889457, 8, 140, 15, 3),
(9, 7892912, 295240, 8188152, '', '', 1200, 8186952, 8, 141, 15, 3),
(10, 8188152, 72114, 8260266, '', '', 1200, 8259066, 8, 142, 15, 3),
(11, 8260266, -222776, 8037490, '', '', 35000, 8002490, 8, 143, 15, 3),
(12, 8037490, 20, 8037510, '', '', 35000, 8002510, 8, 145, 15, 3),
(13, 8037510, 40, 8037550, '', '', 35000, 8002550, 8, 145, 15, 3),
(15, 8037550, 59900, 8037550, '59900', '7977650', 20009, 7957641, 8, 145, 15, 3),
(16, 20000, 59900, 20000, '59900', '-39900', 20009, -59909, 8, 145, 15, 3),
(17, 20000, 0, 20000, '0', '20000', 5000, 15000, 8, 147, 15, 3),
(18, 20000, 0, 20000, '0', '20000', 5000, 15000, 8, 147, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `driver names` varchar(30) NOT NULL,
  `driver_phone` varchar(30) NOT NULL,
  `driver_national_id` varchar(30) NOT NULL,
  `driver_vendor_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_capacity_control`
--

CREATE TABLE `fuel_capacity_control` (
  `capacity_control_id` int(11) NOT NULL,
  `content_fuel_product_id` int(30) NOT NULL,
  `current_capacity` int(30) NOT NULL,
  `station_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuel_capacity_control`
--

INSERT INTO `fuel_capacity_control` (`capacity_control_id`, `content_fuel_product_id`, `current_capacity`, `station_id`) VALUES
(31, 6, 1000, 3),
(33, 8, 20000, 3),
(34, 7, 1000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_sales_details`
--

CREATE TABLE `invoice_sales_details` (
  `invoice_sales_details_id` int(11) NOT NULL,
  `vehicle_reg_no` varchar(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `invoice_no` int(30) NOT NULL,
  `sales_desc_id` int(30) NOT NULL,
  `actual_sales_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_sales_details`
--

INSERT INTO `invoice_sales_details` (`invoice_sales_details_id`, `vehicle_reg_no`, `customer_id`, `invoice_no`, `sales_desc_id`, `actual_sales_id`) VALUES
(9, '', 0, 0, 2, 22),
(10, '', 0, 0, 2, 23),
(11, '', 2, 0, 2, 24),
(12, '', 0, 0, 2, 25),
(13, '', 0, 0, 2, 26),
(14, '', 0, 0, 2, 27),
(15, '', 0, 0, 2, 28),
(16, '', 0, 0, 2, 29),
(18, '', 0, 0, 2, 34),
(19, '', 0, 0, 2, 37),
(22, 'KJF 007F', 1, 12323, 2, 42),
(23, 'KGH553', 1, 3546, 2, 43),
(24, '', 0, 0, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `island_allocation`
--

CREATE TABLE `island_allocation` (
  `allocation_id` int(11) NOT NULL,
  `allocation_island_id` int(30) NOT NULL,
  `allocation_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `island_allocation`
--

INSERT INTO `island_allocation` (`allocation_id`, `allocation_island_id`, `allocation_station_id`) VALUES
(12, 11, 3),
(13, 12, 3),
(14, 13, 3),
(15, 14, 2),
(16, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `island_none_fuel`
--

CREATE TABLE `island_none_fuel` (
  `island_nonefuel_id` int(11) NOT NULL,
  `island_id` int(30) NOT NULL,
  `nonefuel_product_type_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `island_none_fuel`
--

INSERT INTO `island_none_fuel` (`island_nonefuel_id`, `island_id`, `nonefuel_product_type_id`) VALUES
(18, 12, 2),
(20, 11, 1),
(21, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(30) NOT NULL,
  `login_email` varchar(30) NOT NULL,
  `login_password` varchar(30) NOT NULL,
  `login_rank` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_username`, `login_email`, `login_password`, `login_rank`) VALUES
(1, 'john', 'ki@gmail.com', '1234', 'supervisor'),
(5, 'April', 'april@gmail.com', '2345678', 'superadmin'),
(6, 'April', 'april@gmail.com', '2345678', 'admin'),
(8, 'popo', 'popo@gmail.com', '345', 'Admin'),
(10, 'jamie', 'jamie@gmail.com', '1234', 'supervisor'),
(11, 'April', 'ki@gmail.com', '2345678', 'Admin'),
(12, 'April', 'ki@gmail.com', '2345678', 'ADMIN'),
(13, 'April', 'april@gmail.com', '2345678', 'ADMIN'),
(14, 'April', 'ki@gmail.com', '2345678', 'admin'),
(15, 'ryomi', 'sukuna@gmail.com', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `non_fuel_routine_sales`
--

CREATE TABLE `non_fuel_routine_sales` (
  `sales_id` int(11) NOT NULL,
  `product_name_id` int(30) NOT NULL,
  `sales_island_routine_id` int(30) NOT NULL,
  `opening_stock` int(30) NOT NULL,
  `added_stock` int(30) NOT NULL,
  `Total_stock` int(30) NOT NULL,
  `closing_stock` int(30) NOT NULL,
  `shift_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_fuel_routine_sales`
--

INSERT INTO `non_fuel_routine_sales` (`sales_id`, `product_name_id`, `sales_island_routine_id`, `opening_stock`, `added_stock`, `Total_stock`, `closing_stock`, `shift_id`, `station_id`) VALUES
(13, 2, 14, 15, 20, 35, 15, 0, 0),
(14, 3, 19, 0, 300, 300, 15, 0, 0),
(15, 2, 18, 15, 23, 38, 15, 0, 0),
(16, 1, 19, 0, 20, 20, 15, 0, 0),
(17, 3, 19, 15, 34, 49, 15, 0, 0),
(18, 2, 19, 15, 12, 27, 15, 0, 0),
(19, 1, 76, 15, 20, 35, 15, 0, 0),
(20, 1, 143, 15, 20, 35, 15, 0, 0),
(21, 2, 143, 15, 20, 35, 15, 0, 0),
(22, 1, 143, 15, 20, 35, 15, 0, 0),
(23, 2, 143, 15, 54, 69, 15, 0, 0),
(24, 1, 149, 15, 24, 39, 15, 0, 0),
(25, 2, 149, 15, 30, 45, 15, 0, 0),
(26, 1, 177, 15, 23, 38, 15, 0, 0),
(27, 2, 177, 15, 21, 36, 15, 0, 0),
(28, 1, 181, 15, 21, 36, 15, 0, 0),
(29, 1, 181, 15, 21, 36, 15, 0, 0),
(30, 3, 183, 15, 30, 45, 15, 0, 0),
(31, 1, 186, 15, 23, 38, 15, 0, 0),
(32, 2, 185, 15, 21, 36, 15, 0, 0),
(33, 1, 189, 15, 21, 36, 15, 0, 0),
(34, 2, 189, 15, 32, 47, 15, 0, 0),
(35, 1, 189, 15, 3, 18, 15, 0, 0),
(36, 1, 189, 15, 27, 42, 15, 0, 0),
(37, 1, 189, 15, 3, 18, 15, 0, 0),
(38, 1, 193, 15, 22, 37, 15, 0, 0),
(39, 1, 192, 15, 35, 50, 15, 0, 0),
(40, 1, 192, 15, 3, 18, 15, 0, 0),
(41, 1, 192, 15, 3, 18, 15, 0, 0),
(42, 1, 7, 15, 22, 37, 15, 0, 0),
(43, 2, 7, 15, 23, 38, 15, 0, 0),
(44, 1, 7, 15, 23, 38, 15, 0, 0),
(45, 1, 2, 0, 43, 37, 15, 103, 0),
(46, 2, 2, 0, 22, 22, 15, 103, 0),
(47, 1, 4, 0, 22, 22, 15, 104, 0),
(48, 2, 4, 0, 34, 34, 15, 104, 0),
(49, 2, 9, 0, 23, 23, 15, 104, 0),
(50, 1, 7, 0, 22, 22, 15, 105, 0),
(51, 2, 8, 0, 23, 23, 15, 105, 0),
(52, 2, 10, 0, 21, 21, 15, 109, 0),
(53, 3, 8, 0, 45, 65, 15, 109, 0),
(54, 2, 8, 0, 21, 35, 15, 109, 0),
(55, 1, 2, 0, 20, 20, 15, 110, 0),
(56, 2, 3, 0, 23, 23, 15, 110, 0),
(57, 3, 8, 0, 2, 2, 15, 110, 0),
(58, 1, 2, 0, 21, 21, 15, 111, 0),
(59, 2, 2, 0, 20, 20, 15, 111, 0),
(60, 3, 3, 0, 30, 30, 15, 111, 0),
(61, 1, 2, 0, 20, 20, 15, 112, 0),
(62, 2, 8, 0, 30, 30, 15, 112, 0),
(63, 3, 9, 0, 5, 5, 15, 112, 0),
(64, 1, 7, 0, 12, 12, 15, 113, 0),
(65, 2, 6, 0, 21, 21, 15, 113, 0),
(66, 1, 5, 0, 23, 23, 15, 114, 0),
(67, 2, 7, 0, 22, 22, 15, 114, 0),
(68, 4, 3, 0, 0, 0, 15, 114, 0),
(69, 5, 3, 0, 0, 0, 15, 114, 0),
(70, 4, 3, 0, 0, 41, 15, 115, 3),
(71, 4, 3, 0, 0, 41, 15, 115, 3),
(73, 4, 3, 0, 0, 41, 15, 115, 3),
(75, 5, 3, 0, 0, 22, 15, 115, 3),
(76, 4, 8, 0, 0, 60, 15, 115, 3),
(79, 1, 8, 0, 0, 63, 15, 115, 3),
(84, 2, 8, 0, 19, 29, 15, 115, 3),
(85, 3, 8, 0, 11, 11, 15, 115, 3),
(86, 1, 5, 0, 20, 20, 15, 116, 3),
(87, 2, 9, 0, 21, 21, 15, 116, 3),
(88, 3, 6, 0, 10, 10, 15, 116, 3),
(89, 1, 2, 0, 21, 21, 15, 117, 3),
(90, 2, 4, 0, 12, 12, 15, 117, 3),
(91, 3, 5, 0, 12, 12, 15, 117, 3),
(92, 1, 2, 0, 21, 21, 15, 118, 3),
(93, 2, 6, 0, 21, 21, 15, 118, 3),
(94, 4, 12, 0, 12, 12, 15, 118, 3),
(95, 4, 12, 0, 12, 12, 15, 123, 3),
(96, 5, 12, 0, 23, 44, 15, 126, 3),
(97, 4, 12, 0, 21, 21, 15, 126, 3),
(98, 5, 12, 0, 21, 42, 15, 127, 3),
(100, 2, 11, 0, 21, 21, 15, 127, 3),
(101, 5, 13, 0, 21, 21, 15, 127, 3),
(102, 1, 13, 0, 22, 22, 15, 127, 3),
(103, 13, 12, 0, 21, 43, 15, 127, 3),
(104, 4, 12, 0, 211, 232, 15, 127, 3),
(105, 5, 12, 0, 3, 3, 15, 132, 3),
(106, 5, 11, 0, 3, 3, 15, 132, 3),
(107, 2, 11, 0, 5, 5, 15, 132, 3),
(108, 5, 12, 0, 12, 12, 15, 133, 3),
(109, 5, 11, 0, 12, 12, 15, 133, 3),
(110, 1, 11, 0, 13, 13, 15, 133, 3),
(111, 5, 12, 0, 20, 20, 15, 135, 3),
(112, 5, 11, 0, 20, 20, 15, 135, 3),
(113, 1, 11, 0, 500, 500, 15, 135, 3),
(114, 5, 13, 0, 20, 20, 15, 135, 3),
(115, 3, 13, 0, 21, 21, 15, 135, 3),
(116, 13, 12, 0, 21, 21, 15, 136, 3),
(117, 13, 11, 0, 21, 21, 15, 136, 3),
(118, 2, 11, 0, 25, 25, 15, 136, 3),
(119, 13, 13, 0, 21, 21, 15, 136, 3),
(120, 3, 13, 0, 13, 13, 15, 136, 3),
(121, 5, 12, 0, 21, 21, 15, 139, 3),
(122, 1, 11, 0, 21, 21, 15, 139, 3),
(123, 5, 12, 0, 21, 21, 15, 140, 3),
(124, 2, 11, 0, 21, 21, 15, 140, 3),
(125, 13, 12, 0, 22, 22, 15, 140, 3),
(126, 13, 12, 0, 21, 21, 15, 142, 3),
(127, 1, 11, 0, 23, 23, 15, 142, 3),
(128, 5, 12, 0, 21, 21, 15, 143, 3),
(129, 3, 11, 0, 20, 20, 15, 143, 3),
(130, 4, 12, 0, 15, 15, 7, 144, 3),
(131, 21, 11, 0, 20, 20, 0, 144, 3),
(132, 4, 12, 0, 12, 12, 0, 145, 3);

-- --------------------------------------------------------

--
-- Table structure for table `partial_sales`
--

CREATE TABLE `partial_sales` (
  `partial_sales_id` int(11) NOT NULL,
  `partial_sales_shift_id` int(30) NOT NULL,
  `partial_routine_cashier_island` int(30) NOT NULL,
  `partial_island_id` int(30) NOT NULL,
  `partial_sold_product_type` int(30) NOT NULL,
  `partial_sold_sales_price` int(30) NOT NULL,
  `partial_item_quantity` int(30) NOT NULL,
  `total_amount` int(30) NOT NULL,
  `sales_item_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partial_sales`
--

INSERT INTO `partial_sales` (`partial_sales_id`, `partial_sales_shift_id`, `partial_routine_cashier_island`, `partial_island_id`, `partial_sold_product_type`, `partial_sold_sales_price`, `partial_item_quantity`, `total_amount`, `sales_item_id`, `station_id`) VALUES
(79, 116, 165, 5, 1, 300, 15, 1500, 1, 3),
(80, 116, 166, 9, 1, 99, 17, 396, 2, 3),
(81, 116, 167, 6, 1, 400, 8, 800, 3, 3),
(82, 117, 168, 2, 1, 300, 20, 300, 1, 3),
(83, 117, 169, 4, 1, 99, 10, 198, 2, 3),
(84, 117, 170, 5, 1, 400, 9, 1200, 3, 3),
(85, 118, 171, 2, 1, 300, 20, 300, 1, 3),
(86, 118, 173, 6, 1, 99, 18, 297, 2, 3),
(88, 118, 174, 12, 2, 1200, 11, 1200, 4, 3),
(89, 118, 174, 12, 2, 1200, 10, 2400, 4, 3),
(90, 118, 174, 12, 2, 1200, 11, 1200, 4, 3),
(91, 118, 174, 12, 2, 1200, 1, 1200, 4, 3),
(92, 127, 204, 13, 1, 300, 1, 300, 1, 3),
(93, 127, 202, 11, 1, 99, 5, 495, 2, 3),
(94, 127, 203, 12, 2, 1300, 20, 26000, 13, 3),
(95, 132, 213, 11, 1, 100, 2, 200, 2, 3),
(96, 132, 212, 12, 2, 1300, 1, 1300, 5, 3),
(97, 132, 213, 11, 2, 1300, 0, 0, 5, 3),
(98, 133, 214, 11, 1, 123, 3, 369, 1, 3),
(99, 133, 215, 12, 2, 1300, 5, 6500, 5, 3),
(100, 133, 214, 11, 2, 1300, 2, 2600, 5, 3),
(101, 135, 216, 11, 1, 123, 41, 5043, 1, 3),
(102, 135, 218, 13, 1, 400, 1, 400, 3, 3),
(103, 135, 216, 11, 2, 1300, 10, 13000, 5, 3),
(104, 135, 218, 13, 2, 1300, 0, 0, 5, 3),
(105, 135, 217, 12, 2, 1300, 0, 0, 5, 3),
(106, 136, 219, 11, 1, 100, 3, 300, 2, 3),
(107, 136, 221, 13, 1, 400, 3, 1200, 3, 3),
(108, 136, 219, 11, 2, 1350, 6, 8100, 13, 3),
(109, 136, 221, 13, 2, 1350, 0, 0, 13, 3),
(110, 136, 220, 12, 2, 1350, 0, 0, 13, 3),
(111, 139, 226, 11, 1, 123, 6, 738, 1, 3),
(112, 139, 227, 12, 2, 1300, 17, 22100, 5, 3),
(113, 140, 230, 11, 1, 100, 0, 0, 2, 3),
(114, 140, 231, 11, 1, 100, 0, 0, 2, 3),
(115, 140, 228, 11, 1, 100, 0, 0, 2, 3),
(116, 140, 232, 12, 2, 1300, 0, 0, 5, 3),
(117, 140, 229, 12, 2, 1300, 0, 0, 5, 3),
(118, 140, 232, 12, 2, 1350, 0, 0, 13, 3),
(119, 140, 229, 12, 2, 1350, 0, 0, 13, 3),
(120, 140, 230, 11, 1, 100, 0, 0, 2, 3),
(121, 140, 231, 11, 1, 100, 0, 0, 2, 3),
(122, 140, 228, 11, 1, 100, 0, 0, 2, 3),
(123, 140, 229, 12, 2, 1300, 0, 0, 5, 3),
(124, 140, 232, 12, 2, 1300, 0, 0, 5, 3),
(125, 140, 232, 12, 2, 1350, 0, 0, 13, 3),
(126, 140, 229, 12, 2, 1350, 0, 0, 13, 3),
(139, 142, 236, 12, 2, 1350, 0, 0, 13, 3),
(140, 142, 236, 12, 2, 1350, 0, 0, 13, 3),
(141, 143, 237, 11, 1, 400, 10, 4000, 3, 3),
(142, 143, 238, 12, 2, 1300, 6, 7800, 5, 3),
(164, 144, 240, 12, 2, 2123, 2, 4246, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_mode_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `payment_method`, `payment_mode_id`) VALUES
(1, 'credit', 1),
(2, 'cheque', 1),
(3, 'FC Cash', 2),
(4, 'Bank debit', 1),
(5, 'card(Credit)', 1),
(6, 'M-Money', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `payment_mode_id` int(11) NOT NULL,
  `payment_mode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`payment_mode_id`, `payment_mode`) VALUES
(1, 'Credit control'),
(2, 'cash in hand');

-- --------------------------------------------------------

--
-- Table structure for table `performed_services`
--

CREATE TABLE `performed_services` (
  `performed_service_id` int(11) NOT NULL,
  `performed_service_service_id` int(30) NOT NULL,
  `performed_qty` int(30) NOT NULL,
  `performed_service_shift_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_classes`
--

CREATE TABLE `product_classes` (
  `product_class_id` int(11) NOT NULL,
  `product_class` varchar(30) NOT NULL,
  `product_class_code` varchar(11) NOT NULL,
  `product_type_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_classes`
--

INSERT INTO `product_classes` (`product_class_id`, `product_class`, `product_class_code`, `product_type_id`) VALUES
(1, 'engine oil', '00600', 1),
(2, 'Gear oil', '00700', 1),
(3, 'lpg', '00800', 2),
(4, 'Fuel', '00900', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_codes`
--

CREATE TABLE `product_codes` (
  `product_code_id` int(11) NOT NULL,
  `product_codes` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_codes`
--

INSERT INTO `product_codes` (`product_code_id`, `product_codes`) VALUES
(1, '00600'),
(2, '00700'),
(3, '00800'),
(4, '00900');

-- --------------------------------------------------------

--
-- Table structure for table `product_name`
--

CREATE TABLE `product_name` (
  `product_item_id` int(11) NOT NULL,
  `product_item` varchar(30) NOT NULL,
  `product_item_class_id` int(30) NOT NULL,
  `product_qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_name`
--

INSERT INTO `product_name` (`product_item_id`, `product_item`, `product_item_class_id`, `product_qty`) VALUES
(3, 'Total 200g', 2, 1),
(4, 'Afrigas 13kg', 3, 22),
(5, 'SeaGas', 3, 20),
(6, 'Vpower', 4, 1000),
(7, 'petrol', 4, 15),
(8, 'diesel', 4, 15),
(13, 'KGas', 3, 15),
(15, 'Mgas', 3, 15),
(17, 'yuyu', 2, 15),
(18, 'ollo', 1, 15),
(20, 'Oilibya', 2, 15),
(21, 'Hertz', 2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `price_id` int(11) NOT NULL,
  `product_price` int(30) NOT NULL,
  `price_product_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`price_id`, `product_price`, `price_product_id`) VALUES
(25, 400, 3),
(27, 1000, 6),
(37, 1350, 13),
(40, 1200, 8),
(41, 1350, 7),
(42, 1300, 5),
(43, 2123, 4),
(44, 1300, 15),
(46, 50, 17),
(47, 798, 18),
(49, 200, 20),
(50, 200, 21);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(11) NOT NULL,
  `product_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type`) VALUES
(1, 'lubes'),
(2, 'lpg'),
(3, 'white ');

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `pump_id` int(11) NOT NULL,
  `pump_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pump_id`, `pump_code`) VALUES
(1, 'pmp001'),
(2, 'pms 002'),
(3, 'pms003 '),
(4, 'pmp 004'),
(6, 'pmp 005'),
(7, 'pmp 006'),
(8, '00465'),
(9, 'pmp009'),
(10, 'pmp0011'),
(11, 'pmp009'),
(12, '00488'),
(13, '008888');

-- --------------------------------------------------------

--
-- Table structure for table `pump_allocation`
--

CREATE TABLE `pump_allocation` (
  `allocation_id` int(11) NOT NULL,
  `allocation_pump_id` int(30) NOT NULL,
  `allocation_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pump_allocation`
--

INSERT INTO `pump_allocation` (`allocation_id`, `allocation_pump_id`, `allocation_station_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 4, 3),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pump_island`
--

CREATE TABLE `pump_island` (
  `pump_island_id` int(11) NOT NULL,
  `pump_id` int(30) NOT NULL,
  `island_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pump_island`
--

INSERT INTO `pump_island` (`pump_island_id`, `pump_id`, `island_id`, `station_id`) VALUES
(1, 1, 7, 3),
(2, 2, 8, 3),
(3, 3, 9, 3),
(4, 4, 10, 3),
(5, 1, 2, 3),
(18, 6, 12, 3),
(19, 4, 12, 3),
(20, 1, 11, 3),
(21, 2, 11, 3),
(22, 1, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pump_meter_reading`
--

CREATE TABLE `pump_meter_reading` (
  `reading_id` int(11) NOT NULL,
  `cash_meter` varchar(30) NOT NULL,
  `electric_meter` varchar(30) NOT NULL,
  `manual_meter` varchar(3) NOT NULL,
  `pump_id` int(30) NOT NULL,
  `island` int(30) NOT NULL,
  `reading_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pump_meter_reading`
--

INSERT INTO `pump_meter_reading` (`reading_id`, `cash_meter`, `electric_meter`, `manual_meter`, `pump_id`, `island`, `reading_shift_id`) VALUES
(1, '5', '234454', '0', 3, 9, 48),
(2, '200', '2', '200', 3, 9, 48),
(3, '1', '1.16', '100', 1, 7, 48),
(4, '74364562', '100000', '10', 2, 8, 48),
(5, '2772', '8640', '12', 3, 9, 48),
(6, '12222', '6048', '594', 2, 8, 49),
(7, '223', '112', '213', 3, 9, 49),
(8, '12', '234454', '111', 3, 9, 48),
(9, '4', '2', '200', 3, 9, 48),
(10, '452', '39700', '100', 1, 7, 48),
(11, '74364562', '100000', '10', 2, 8, 48),
(12, '22', '8640', '854', 3, 9, 48),
(13, '23333', '6048', '594', 2, 8, 49),
(14, '234', '332', '223', 3, 9, 49),
(15, '101', '100', '103', 4, 10, 51),
(16, '210', '200', '212', 3, 9, 51),
(17, '74364562', '100000', '10', 4, 10, 51),
(18, '22', '8640', '854', 3, 9, 51),
(19, '74364562', '100000', '10', 4, 10, 85),
(20, '22', '8640', '854', 3, 9, 85),
(21, '74364562', '100000', '10', 4, 10, 51),
(22, '22', '8640', '854', 3, 9, 51),
(23, '74364562', '100000', '10', 4, 10, 51),
(24, '22', '8640', '854', 3, 9, 51),
(26, '201', '200', '199', 2, 8, 86),
(27, '2100', '21', '32', 1, 7, 103),
(28, '22', '31', '32', 2, 8, 103),
(29, '2100', '21', '32', 2, 8, 104),
(30, '2299', '22', '21', 3, 9, 104),
(31, '2300', '21', '23', 1, 7, 105),
(32, '3000', '32', '325', 2, 8, 105),
(33, '2300', '21', '23', 1, 7, 105),
(34, '3000', '32', '325', 2, 8, 105),
(35, '1200', '12', '12', 3, 9, 111),
(36, '3000', '300', '303', 2, 8, 112),
(37, '4000', '500', '401', 3, 9, 112),
(38, '1200', '12', '11', 1, 7, 113),
(39, '0', '1111', '234', 1, 7, 114),
(40, '0', '1111', '234', 1, 7, 114),
(41, '121212', '1111', '234', 1, 7, 114),
(42, '121212', '1111', '234', 1, 7, 114),
(43, '121212', '1111', '234', 1, 7, 114),
(44, '121212', '1111', '234', 1, 7, 114),
(45, '121212', '1111', '234', 1, 7, 114),
(46, '121212', '1111', '234', 1, 7, 114),
(47, '12', '21', '22', 1, 7, 114),
(48, '121212', '1111', '234', 1, 7, 114),
(49, '121212', '1111', '234', 1, 7, 114),
(50, '12', '21', '22', 1, 7, 114),
(51, '12', '21', '23', 1, 7, 114),
(52, '109028.4', '108564.4', '12', 1, 7, 114),
(53, '222', '1111', '112', 1, 7, 114),
(54, '222', '200', '100', 1, 7, 114),
(55, '121212', '200', '100', 1, 7, 114),
(56, '121212', '200', '100', 1, 7, 114),
(57, '121212', '1111', '234', 1, 7, 114),
(58, '220', '200', '100', 1, 7, 114),
(59, '121212', '1111', '234', 1, 7, 114),
(60, '121212', '1111', '234', 1, 7, 114),
(61, '121212', '1111', '234', 1, 7, 114),
(62, '121212', '1111', '234', 1, 7, 114),
(63, '121212', '1111', '0', 1, 7, 114),
(64, '121212', '1111', '234', 1, 7, 114),
(65, '121212', '1111', '234', 1, 7, 114),
(66, '121212', '1111', '234', 1, 7, 114),
(67, '121212', '1111', '234', 1, 7, 114),
(68, '121212', '1111', '234', 1, 7, 114),
(69, '0', '0', '0', 1, 7, 114),
(70, '121212', '1111', '234', 1, 7, 114),
(71, '121212', '1111', '234', 1, 7, 114),
(72, '12000', '120', '121', 2, 12, 120),
(73, '12000', '120', '121', 2, 12, 120),
(74, '12000', '120', '121', 2, 12, 120),
(75, '12000', '120', '121', 2, 12, 120),
(76, '12000', '120', '121', 2, 12, 120),
(77, '12000', '120', '121', 2, 12, 120),
(78, '12000', '120', '121', 2, 12, 120),
(79, '1200', '120', '121', 2, 12, 120),
(80, '1200', '120', '121', 2, 12, 120),
(81, '12000', '120', '121', 2, 12, 120),
(82, '12000', '120', '121', 2, 12, 120),
(83, '12000', '120', '121', 2, 12, 120),
(84, '12000', '120', '121', 2, 12, 120),
(85, '12000', '120', '121', 2, 12, 120),
(86, '12000', '120', '121', 2, 12, 120),
(87, '12000', '120', '121', 2, 12, 120),
(88, '12000', '120', '121', 2, 12, 120),
(89, '12000', '120', '121', 2, 12, 120),
(90, '12000', '120', '121', 2, 12, 120),
(91, '12000', '120', '121', 2, 12, 120),
(92, '12000', '120', '121', 2, 12, 120),
(93, '12000', '120', '121', 2, 12, 120),
(94, '12000', '120', '121', 2, 12, 120),
(95, '12000', '120', '121', 2, 12, 120),
(96, '1200', '120', '123', 2, 12, 120),
(97, '1200', '120', '123', 2, 12, 120),
(98, '2100', '211', '212', 1, 11, 126),
(99, '2100', '211', '212', 1, 11, 126),
(100, '2100', '211', '212', 1, 11, 126),
(101, '3200', '323', '222', 2, 11, 126),
(102, '5343', '432', '211', 3, 12, 126),
(103, '22133', '1243', '123', 4, 12, 126),
(104, '2100', '211', '212', 1, 11, 128),
(105, '3200', '323', '222', 2, 11, 128),
(106, '2100', '211', '212', 1, 11, 128),
(107, '3200', '323', '222', 2, 11, 128),
(108, '231', '23', '23.', 1, 11, 129),
(109, '500', '34', '34.', 2, 11, 129),
(110, '430', '34', '35', 3, 12, 129),
(111, '540', '54', '34', 4, 12, 129),
(112, '231', '23', '23.', 1, 11, 129),
(113, '500', '34', '34.', 2, 11, 129),
(114, '430', '34', '35', 3, 12, 129),
(115, '540', '54', '34', 4, 12, 129),
(116, '2100', '31', '212', 1, 11, 130),
(117, '4324', '234', '45', 2, 11, 130),
(118, '2122', '123', '212', 3, 12, 130),
(119, '1223', '123', '124', 4, 12, 130),
(120, '100', '10', '11', 1, 11, 131),
(121, '100', '10', '11', 2, 11, 131),
(122, '200', '12', '12', 3, 12, 131),
(123, '200', '12', '12', 4, 12, 131),
(124, '50', '21', '23', 3, 12, 132),
(125, '50', '21', '12', 4, 12, 132),
(126, '300', '212', '232', 1, 11, 132),
(127, '200', '12', '12', 2, 11, 132),
(128, '5000', '50', '50', 1, 11, 133),
(129, '10000', '100', '100', 2, 11, 133),
(130, '2000', '20', '20', 3, 12, 133),
(131, '20000', '200', '200', 4, 12, 133),
(132, '5000', '50', '50', 1, 11, 135),
(133, '50000', '500', '500', 2, 11, 135),
(134, '2000', '20', '20', 3, 12, 135),
(139, '1233', '12', '122', 1, 11, 136),
(140, '245', '32345', '342', 2, 11, 136),
(141, '2434', '23324', '234', 3, 12, 136),
(143, '246', '32347', '343', 2, 11, 136),
(144, '2437', '23328', '234', 3, 12, 136),
(145, '1235', '14', '124', 1, 11, 136),
(146, '248', '32347', '346', 2, 11, 136),
(147, '2437', '232448', '239', 3, 12, 136),
(148, '1235', '14', '124', 1, 11, 136),
(149, '248', '32347', '346', 2, 11, 136),
(150, '2437', '232448', '239', 3, 12, 136),
(151, '1235', '14', '124', 1, 11, 136),
(152, '248', '32347', '346', 2, 11, 136),
(153, '2437', '232448', '239', 3, 12, 136),
(154, '1235', '14', '124', 1, 11, 136),
(155, '248', '32347', '346', 2, 11, 136),
(156, '2437', '232448', '239', 3, 12, 136),
(157, '1235', '14', '124', 1, 11, 136),
(158, '248', '32347', '346', 2, 11, 136),
(159, '2437', '232448', '239', 3, 12, 136),
(160, '1235', '14', '124', 1, 11, 136),
(161, '1235', '14', '124', 1, 11, 136),
(162, '248', '32347', '346', 2, 11, 136),
(163, '2437', '232448', '239', 3, 12, 136),
(170, '5400', '8540', '500', 1, 11, 138),
(171, '65900', '54888', '433', 2, 11, 138),
(172, '35454', '45436', '645', 3, 12, 138),
(233, '10000', '1000', '100', 1, 11, 140),
(234, '35778', '1299', '667', 2, 11, 140),
(235, '34525', '54345', '346', 3, 12, 140),
(236, '10000', '1000', '100', 1, 11, 140),
(237, '35778', '1299', '667', 2, 11, 140),
(238, '34525', '54345', '346', 3, 12, 140),
(239, '0', '0', '0', 1, 11, 140),
(240, '0', '0', '0', 2, 11, 140),
(241, '0', '0', '0', 3, 12, 140),
(242, '10000', '1000', '100', 1, 11, 140),
(243, '35778', '1299', '667', 2, 11, 140),
(244, '34525', '54345', '346', 3, 12, 140),
(245, '10000', '1000', '100', 1, 11, 140),
(246, '35778', '1299', '667', 2, 11, 140),
(247, '34525', '54345', '346', 3, 12, 140),
(248, '10000', '1000', '100', 1, 11, 140),
(249, '35778', '1299', '667', 2, 11, 140),
(250, '34525', '54345', '346', 3, 12, 140),
(251, '0', '0', '0', 1, 11, 140),
(252, '0', '0', '0', 2, 11, 140),
(253, '0', '0', '0', 3, 12, 140),
(254, '10000', '1000', '100', 1, 11, 140),
(255, '35778', '1299', '667', 2, 11, 140),
(256, '34525', '54345', '346', 3, 12, 140),
(257, '10000', '1000', '100', 1, 11, 140),
(258, '35778', '1299', '667', 2, 11, 140),
(259, '34525', '54345', '346', 3, 12, 140),
(260, '10000', '1000', '100', 1, 11, 140),
(261, '35778', '1299', '667', 2, 11, 140),
(262, '34525', '54345', '346', 3, 12, 140),
(263, '10000', '1000', '100', 1, 11, 140),
(264, '35778', '1299', '667', 2, 11, 140),
(265, '34525', '54345', '346', 3, 12, 140),
(266, '10000', '1000', '100', 1, 11, 140),
(267, '35778', '1299', '667', 2, 11, 140),
(268, '34525', '54345', '346', 3, 12, 140),
(269, '10000', '1000', '100', 1, 11, 140),
(270, '35778', '1299', '667', 2, 11, 140),
(271, '34525', '54345', '346', 3, 12, 140),
(272, '10000', '1000', '100', 1, 11, 140),
(273, '35778', '1299', '667', 2, 11, 140),
(274, '34525', '54345', '346', 3, 12, 140),
(275, '10000', '1000', '100', 1, 11, 140),
(276, '35778', '1299', '667', 2, 11, 140),
(277, '34525', '54345', '346', 3, 12, 140),
(278, '10000', '1000', '100', 1, 11, 140),
(279, '35778', '1299', '667', 2, 11, 140),
(280, '34525', '54345', '346', 3, 12, 140),
(284, '10000', '1000', '100', 1, 11, 140),
(285, '35778', '1299', '667', 2, 11, 140),
(286, '34525', '54345', '346', 3, 12, 140),
(287, '10000', '1000', '100', 1, 11, 140),
(288, '35778', '1299', '667', 2, 11, 140),
(289, '34525', '54345', '346', 3, 12, 140),
(290, '10000', '1000', '100', 1, 11, 140),
(291, '35778', '1299', '667', 2, 11, 140),
(292, '34525', '54345', '346', 3, 12, 140),
(293, '10000', '1000', '100', 1, 11, 140),
(294, '35778', '1299', '667', 2, 11, 140),
(295, '34525', '54345', '346', 3, 12, 140),
(296, '10000', '1000', '100', 1, 11, 140),
(297, '35778', '1299', '667', 2, 11, 140),
(298, '34525', '54345', '346', 3, 12, 140),
(299, '10000', '1000', '100', 1, 11, 140),
(300, '35778', '1299', '667', 2, 11, 140),
(301, '34525', '54345', '346', 3, 12, 140),
(302, '10000', '1000', '100', 1, 11, 140),
(303, '35778', '1299', '667', 2, 11, 140),
(304, '34525', '54345', '346', 3, 12, 140),
(305, '10000', '1000', '100', 1, 11, 140),
(306, '35778', '1299', '667', 2, 11, 140),
(307, '34525', '54345', '346', 3, 12, 140),
(308, '10000', '1000', '100', 1, 11, 140),
(309, '35778', '1299', '667', 2, 11, 140),
(310, '34525', '54345', '346', 3, 12, 140),
(311, '10000', '1000', '100', 1, 11, 140),
(312, '35778', '1299', '667', 2, 11, 140),
(313, '34525', '54345', '346', 3, 12, 140),
(314, '10000', '1000', '100', 1, 11, 140),
(315, '35778', '1299', '667', 2, 11, 140),
(316, '34525', '54345', '346', 3, 12, 140),
(317, '10000', '1000', '100', 1, 11, 140),
(318, '35778', '1299', '667', 2, 11, 140),
(319, '34525', '54345', '346', 3, 12, 140),
(320, '10000', '1000', '100', 1, 11, 140),
(321, '35778', '1299', '667', 2, 11, 140),
(322, '34525', '54345', '346', 3, 12, 140),
(323, '10000', '1000', '100', 1, 11, 140),
(324, '35778', '1299', '667', 2, 11, 140),
(325, '34525', '54345', '346', 3, 12, 140),
(326, '10000', '1000', '100', 1, 11, 140),
(327, '35778', '1299', '667', 2, 11, 140),
(328, '34525', '54345', '346', 3, 12, 140),
(329, '10000', '1000', '100', 1, 11, 140),
(330, '35778', '1299', '667', 2, 11, 140),
(331, '34525', '54345', '346', 3, 12, 140),
(332, '10000', '1000', '100', 1, 11, 140),
(333, '35778', '1299', '667', 2, 11, 140),
(334, '34525', '54345', '346', 3, 12, 140),
(335, '10000', '1000', '100', 1, 11, 140),
(336, '35778', '1299', '667', 2, 11, 140),
(337, '34525', '54345', '346', 3, 12, 140),
(338, '10000', '1000', '100', 1, 11, 140),
(339, '35778', '1299', '667', 2, 11, 140),
(340, '34525', '54345', '346', 3, 12, 140),
(341, '10000', '1000', '100', 1, 11, 140),
(342, '35778', '1299', '667', 2, 11, 140),
(343, '34525', '54345', '346', 3, 12, 140),
(344, '10000', '1000', '100', 1, 11, 140),
(345, '35778', '1299', '667', 2, 11, 140),
(346, '34525', '54345', '346', 3, 12, 140),
(347, '10000', '1000', '100', 1, 11, 140),
(348, '35778', '1299', '667', 2, 11, 140),
(349, '34525', '54345', '346', 3, 12, 140),
(350, '10000', '1000', '100', 1, 11, 140),
(351, '35778', '1299', '667', 2, 11, 140),
(352, '34525', '54345', '346', 3, 12, 140),
(353, '0', '0', '0', 1, 11, 140),
(354, '0', '0', '0', 2, 11, 140),
(355, '0', '0', '0', 3, 12, 140),
(356, '0', '0', '0', 1, 11, 140),
(357, '0', '0', '0', 2, 11, 140),
(358, '0', '0', '0', 1, 11, 140),
(359, '0', '0', '0', 2, 11, 140),
(360, '0', '0', '0', 3, 12, 140),
(361, '0', '0', '0', 1, 11, 140),
(362, '0', '0', '0', 2, 11, 140),
(363, '0', '0', '0', 3, 12, 140),
(364, '0', '0', '0', 1, 11, 140),
(365, '0', '0', '0', 2, 11, 140),
(366, '0', '0', '0', 1, 11, 140),
(367, '0', '0', '0', 2, 11, 140),
(368, '0', '0', '0', 3, 12, 140),
(369, '0', '0', '0', 1, 11, 140),
(370, '0', '0', '0', 2, 11, 140),
(371, '0', '0', '0', 3, 12, 140),
(372, '0', '0', '0', 1, 11, 140),
(373, '0', '0', '0', 2, 11, 140),
(374, '0', '0', '0', 1, 11, 140),
(375, '0', '0', '0', 2, 11, 140),
(376, '0', '0', '0', 3, 12, 140),
(377, '0', '0', '0', 1, 11, 140),
(378, '0', '0', '0', 2, 11, 140),
(379, '0', '0', '0', 3, 12, 140),
(380, '0', '0', '0', 1, 11, 140),
(381, '0', '0', '0', 2, 11, 140),
(382, '0', '0', '0', 1, 11, 140),
(383, '0', '0', '0', 2, 11, 140),
(384, '0', '0', '0', 3, 12, 140),
(385, '0', '0', '0', 1, 11, 140),
(386, '0', '0', '0', 2, 11, 140),
(387, '0', '0', '0', 3, 12, 140),
(388, '0', '0', '0', 1, 11, 140),
(389, '0', '0', '0', 2, 11, 140),
(390, '0', '0', '0', 1, 11, 140),
(391, '0', '0', '0', 2, 11, 140),
(392, '0', '0', '0', 3, 12, 140),
(393, '0', '0', '0', 1, 11, 140),
(394, '0', '0', '0', 2, 11, 140),
(395, '0', '0', '0', 3, 12, 140),
(396, '0', '0', '0', 1, 11, 140),
(397, '0', '0', '0', 2, 11, 140),
(398, '0', '0', '0', 1, 11, 140),
(399, '0', '0', '0', 2, 11, 140),
(400, '0', '0', '0', 3, 12, 140),
(401, '0', '0', '0', 1, 11, 140),
(402, '0', '0', '0', 2, 11, 140),
(403, '0', '0', '0', 3, 12, 140),
(404, '0', '0', '0', 1, 11, 140),
(405, '0', '0', '0', 2, 11, 140),
(406, '0', '0', '0', 1, 11, 140),
(407, '0', '0', '0', 2, 11, 140),
(408, '0', '0', '0', 3, 12, 140),
(409, '0', '0', '0', 1, 11, 140),
(410, '0', '0', '0', 2, 11, 140),
(411, '0', '0', '0', 3, 12, 140),
(412, '0', '0', '0', 1, 11, 140),
(413, '0', '0', '0', 2, 11, 140),
(414, '0', '0', '0', 1, 11, 140),
(415, '0', '0', '0', 2, 11, 140),
(416, '0', '0', '0', 3, 12, 140),
(417, '0', '8540', '0', 1, 11, 140),
(418, '0', '0', '0', 2, 11, 140),
(419, '0', '0', '0', 3, 12, 140),
(420, '0', '0', '0', 1, 11, 140),
(421, '0', '0', '0', 2, 11, 140),
(422, '0', '0', '0', 1, 11, 140),
(423, '0', '0', '0', 2, 11, 140),
(424, '0', '0', '0', 3, 12, 140),
(425, '0', '0', '0', 1, 11, 140),
(426, '0', '0', '0', 2, 11, 140),
(427, '0', '0', '0', 3, 12, 140),
(428, '0', '0', '0', 1, 11, 140),
(429, '0', '0', '0', 2, 11, 140),
(430, '0', '0', '0', 1, 11, 140),
(431, '0', '0', '0', 2, 11, 140),
(432, '0', '0', '0', 3, 12, 140),
(433, '0', '0', '0', 1, 11, 140),
(434, '0', '0', '0', 2, 11, 140),
(435, '0', '0', '0', 3, 12, 140),
(436, '0', '0', '0', 1, 11, 140),
(437, '0', '0', '0', 2, 11, 140),
(438, '0', '0', '0', 1, 11, 140),
(439, '0', '0', '0', 2, 11, 140),
(440, '0', '0', '0', 3, 12, 140),
(441, '0', '0', '0', 1, 11, 140),
(442, '0', '0', '0', 2, 11, 140),
(443, '0', '0', '0', 3, 12, 140),
(444, '0', '0', '0', 1, 11, 140),
(445, '0', '0', '0', 2, 11, 140),
(446, '0', '0', '0', 1, 11, 140),
(447, '0', '0', '0', 2, 11, 140),
(448, '0', '0', '0', 3, 12, 140),
(449, '0', '0', '0', 1, 11, 140),
(450, '0', '0', '0', 2, 11, 140),
(451, '0', '0', '0', 3, 12, 140),
(452, '0', '0', '0', 1, 11, 140),
(453, '0', '0', '0', 2, 11, 140),
(454, '0', '0', '0', 1, 11, 140),
(455, '0', '0', '0', 2, 11, 140),
(456, '0', '0', '0', 3, 12, 140),
(457, '0', '0', '0', 1, 11, 140),
(458, '0', '0', '0', 2, 11, 140),
(459, '0', '0', '0', 3, 12, 140),
(460, '0', '0', '0', 1, 11, 140),
(461, '0', '0', '0', 2, 11, 140),
(462, '0', '0', '0', 1, 11, 140),
(463, '0', '0', '0', 2, 11, 140),
(464, '0', '0', '0', 3, 12, 140),
(465, '0', '0', '0', 1, 11, 140),
(466, '0', '0', '0', 2, 11, 140),
(467, '0', '0', '0', 3, 12, 140),
(468, '0', '0', '0', 1, 11, 140),
(469, '0', '0', '0', 2, 11, 140),
(470, '0', '0', '0', 1, 11, 140),
(471, '0', '0', '0', 2, 11, 140),
(472, '0', '0', '0', 3, 12, 140),
(473, '0', '0', '0', 1, 11, 140),
(474, '0', '0', '0', 2, 11, 140),
(475, '0', '0', '0', 3, 12, 140),
(476, '0', '0', '0', 1, 11, 140),
(477, '0', '0', '0', 2, 11, 140),
(478, '0', '0', '0', 1, 11, 140),
(479, '0', '0', '0', 2, 11, 140),
(480, '0', '0', '0', 3, 12, 140),
(481, '0', '0', '0', 1, 11, 140),
(482, '0', '0', '0', 2, 11, 140),
(483, '0', '0', '0', 3, 12, 140),
(484, '0', '0', '0', 1, 11, 140),
(485, '0', '0', '0', 2, 11, 140),
(486, '0', '0', '0', 1, 11, 140),
(487, '0', '0', '0', 2, 11, 140),
(488, '0', '0', '0', 3, 12, 140),
(489, '0', '0', '0', 1, 11, 140),
(490, '0', '0', '0', 2, 11, 140),
(491, '0', '0', '0', 3, 12, 140),
(492, '0', '0', '0', 1, 11, 140),
(493, '0', '0', '0', 2, 11, 140),
(494, '0', '0', '0', 1, 11, 140),
(495, '0', '0', '0', 2, 11, 140),
(496, '0', '0', '0', 3, 12, 140),
(497, '0', '0', '0', 1, 11, 140),
(498, '0', '0', '0', 2, 11, 140),
(499, '0', '0', '0', 3, 12, 140),
(500, '0', '0', '0', 1, 11, 140),
(501, '0', '0', '0', 2, 11, 140),
(502, '0', '0', '0', 1, 11, 140),
(503, '0', '0', '0', 2, 11, 140),
(504, '0', '0', '0', 3, 12, 140),
(505, '0', '0', '0', 1, 11, 140),
(506, '0', '0', '0', 2, 11, 140),
(507, '0', '0', '0', 3, 12, 140),
(508, '0', '0', '0', 1, 11, 140),
(509, '0', '0', '0', 2, 11, 140),
(510, '0', '0', '0', 1, 11, 140),
(511, '0', '0', '0', 2, 11, 140),
(512, '0', '0', '0', 3, 12, 140),
(513, '0', '0', '0', 1, 11, 140),
(514, '0', '0', '0', 2, 11, 140),
(515, '0', '0', '0', 3, 12, 140),
(516, '0', '0', '0', 1, 11, 140),
(517, '0', '0', '0', 2, 11, 140),
(518, '0', '0', '0', 1, 11, 140),
(519, '0', '0', '0', 2, 11, 140),
(520, '0', '0', '0', 3, 12, 140),
(521, '0', '0', '0', 1, 11, 140),
(522, '0', '0', '0', 2, 11, 140),
(523, '0', '0', '0', 3, 12, 140),
(524, '0', '0', '0', 1, 11, 140),
(525, '0', '0', '0', 2, 11, 140),
(526, '0', '0', '0', 1, 11, 140),
(527, '0', '0', '0', 2, 11, 140),
(528, '0', '0', '0', 3, 12, 140),
(529, '0', '0', '0', 1, 11, 140),
(530, '0', '0', '0', 2, 11, 140),
(531, '0', '0', '0', 3, 12, 140),
(532, '0', '0', '0', 1, 11, 140),
(533, '0', '0', '0', 2, 11, 140),
(534, '0', '0', '0', 1, 11, 140),
(535, '0', '0', '0', 2, 11, 140),
(536, '0', '0', '0', 3, 12, 140),
(537, '0', '0', '0', 1, 11, 140),
(538, '0', '0', '0', 2, 11, 140),
(539, '0', '0', '0', 3, 12, 140),
(540, '0', '0', '0', 1, 11, 140),
(541, '0', '0', '0', 2, 11, 140),
(542, '0', '0', '0', 1, 11, 140),
(543, '0', '0', '0', 2, 11, 140),
(544, '0', '0', '0', 3, 12, 140),
(545, '0', '0', '0', 1, 11, 140),
(546, '0', '0', '0', 2, 11, 140),
(547, '0', '0', '0', 3, 12, 140),
(548, '0', '0', '0', 1, 11, 140),
(549, '0', '0', '0', 2, 11, 140),
(550, '0', '0', '0', 1, 11, 140),
(551, '0', '0', '0', 2, 11, 140),
(552, '0', '0', '0', 3, 12, 140),
(553, '0', '0', '0', 1, 11, 140),
(554, '0', '0', '0', 2, 11, 140),
(555, '0', '0', '0', 3, 12, 140),
(556, '0', '0', '0', 1, 11, 140),
(557, '0', '0', '0', 2, 11, 140),
(558, '0', '0', '0', 1, 11, 140),
(559, '0', '0', '0', 2, 11, 140),
(560, '0', '0', '0', 3, 12, 140),
(561, '0', '0', '0', 1, 11, 140),
(562, '0', '0', '0', 2, 11, 140),
(563, '0', '0', '0', 3, 12, 140),
(564, '0', '0', '0', 1, 11, 140),
(565, '0', '0', '0', 2, 11, 140),
(566, '0', '0', '0', 1, 11, 140),
(567, '0', '0', '0', 2, 11, 140),
(568, '0', '0', '0', 3, 12, 140),
(569, '0', '0', '0', 1, 11, 140),
(570, '0', '0', '0', 2, 11, 140),
(571, '0', '0', '0', 3, 12, 140),
(572, '0', '0', '0', 1, 11, 140),
(573, '0', '0', '0', 2, 11, 140),
(574, '0', '0', '0', 1, 11, 140),
(575, '0', '0', '0', 2, 11, 140),
(576, '0', '0', '0', 3, 12, 140),
(577, '0', '0', '0', 1, 11, 140),
(578, '0', '0', '0', 2, 11, 140),
(579, '0', '0', '0', 3, 12, 140),
(580, '0', '0', '0', 1, 11, 140),
(581, '0', '0', '0', 2, 11, 140),
(582, '0', '0', '0', 1, 11, 140),
(583, '0', '0', '0', 2, 11, 140),
(584, '0', '0', '0', 3, 12, 140),
(585, '0', '0', '0', 1, 11, 140),
(586, '0', '0', '0', 2, 11, 140),
(587, '0', '0', '0', 3, 12, 140),
(588, '0', '0', '0', 1, 11, 140),
(589, '0', '0', '0', 2, 11, 140),
(590, '0', '0', '0', 1, 11, 140),
(591, '0', '0', '0', 2, 11, 140),
(592, '0', '0', '0', 3, 12, 140),
(593, '0', '0', '0', 1, 11, 140),
(594, '0', '0', '0', 2, 11, 140),
(595, '0', '0', '0', 3, 12, 140),
(596, '0', '0', '0', 1, 11, 140),
(597, '0', '0', '0', 2, 11, 140),
(598, '0', '0', '0', 1, 11, 140),
(599, '0', '0', '0', 2, 11, 140),
(600, '0', '0', '0', 3, 12, 140),
(601, '0', '0', '0', 1, 11, 140),
(602, '0', '0', '0', 2, 11, 140),
(603, '0', '0', '0', 3, 12, 140),
(604, '0', '0', '0', 1, 11, 140),
(605, '0', '0', '0', 2, 11, 140),
(606, '0', '0', '0', 1, 11, 140),
(607, '0', '0', '0', 2, 11, 140),
(608, '0', '0', '0', 3, 12, 140),
(609, '0', '0', '0', 1, 11, 140),
(610, '0', '0', '0', 2, 11, 140),
(611, '0', '0', '0', 3, 12, 140),
(612, '0', '0', '0', 1, 11, 140),
(613, '0', '0', '0', 2, 11, 140),
(614, '0', '0', '0', 1, 11, 140),
(615, '0', '0', '0', 2, 11, 140),
(616, '0', '0', '0', 3, 12, 140),
(617, '0', '0', '0', 1, 11, 140),
(618, '0', '0', '0', 2, 11, 140),
(619, '0', '0', '0', 3, 12, 140),
(620, '0', '0', '0', 1, 11, 140),
(621, '0', '0', '0', 2, 11, 140),
(622, '0', '0', '0', 1, 11, 140),
(623, '0', '0', '0', 2, 11, 140),
(624, '0', '0', '0', 3, 12, 140),
(625, '0', '0', '0', 1, 11, 140),
(626, '0', '0', '0', 2, 11, 140),
(627, '0', '0', '0', 3, 12, 140),
(628, '0', '0', '0', 1, 11, 140),
(629, '0', '0', '0', 2, 11, 140),
(630, '0', '0', '0', 1, 11, 140),
(631, '0', '0', '0', 2, 11, 140),
(632, '0', '0', '0', 3, 12, 140),
(633, '0', '0', '0', 1, 11, 140),
(634, '0', '0', '0', 2, 11, 140),
(635, '0', '0', '0', 3, 12, 140),
(636, '0', '0', '0', 1, 11, 140),
(637, '0', '0', '0', 2, 11, 140),
(638, '0', '0', '0', 1, 11, 140),
(639, '0', '0', '0', 2, 11, 140),
(640, '0', '0', '0', 3, 12, 140),
(641, '0', '0', '0', 1, 11, 140),
(642, '0', '0', '0', 2, 11, 140),
(643, '0', '0', '0', 3, 12, 140),
(644, '0', '0', '0', 1, 11, 140),
(645, '0', '0', '0', 2, 11, 140),
(646, '0', '0', '0', 1, 11, 140),
(647, '0', '0', '0', 2, 11, 140),
(648, '0', '0', '0', 3, 12, 140),
(649, '0', '0', '0', 1, 11, 140),
(650, '0', '0', '0', 2, 11, 140),
(651, '0', '0', '0', 3, 12, 140),
(652, '0', '0', '0', 1, 11, 140),
(653, '0', '0', '0', 2, 11, 140),
(654, '0', '0', '0', 1, 11, 140),
(655, '0', '0', '0', 2, 11, 140),
(656, '0', '0', '0', 3, 12, 140),
(657, '0', '0', '0', 1, 11, 140),
(658, '0', '0', '0', 2, 11, 140),
(659, '0', '0', '0', 3, 12, 140),
(660, '0', '0', '0', 1, 11, 140),
(661, '0', '0', '0', 2, 11, 140),
(662, '0', '0', '0', 1, 11, 140),
(663, '0', '0', '0', 2, 11, 140),
(664, '0', '0', '0', 3, 12, 140),
(665, '0', '0', '0', 1, 11, 140),
(666, '0', '0', '0', 2, 11, 140),
(667, '0', '0', '0', 3, 12, 140),
(668, '0', '0', '0', 1, 11, 140),
(669, '0', '0', '0', 2, 11, 140),
(670, '0', '0', '0', 1, 11, 140),
(671, '0', '0', '0', 2, 11, 140),
(672, '0', '0', '0', 3, 12, 140),
(673, '108564.4', '1000', '109', 1, 11, 141),
(674, '32443', '123454', '232', 2, 11, 141),
(675, '32133', '321333', '124', 3, 12, 141),
(739, '10000', '50', '10', 1, 11, 143),
(740, '10000', '100', '100', 2, 11, 143),
(741, '20000', '200', '200', 3, 12, 143),
(745, '5000', '50', '50', 1, 11, 145),
(746, '10000', '100', '100', 2, 11, 145),
(747, '20000', '200', '200', 3, 12, 145),
(748, '60000', '60000', '500', 2, 11, 145),
(749, '160000', '5000', '100', 3, 12, 145),
(750, '60000', '60000', '500', 2, 11, 145),
(751, '160000', '5000', '100', 3, 12, 145),
(752, '60000', '60000', '500', 2, 11, 145),
(753, '160000', '5000', '100', 3, 12, 145),
(754, '60000', '60000', '500', 2, 11, 145),
(755, '160000', '5000', '100', 3, 12, 145),
(756, '60000', '60000', '500', 2, 11, 145),
(757, '160000', '5000', '100', 3, 12, 145),
(758, '60000', '60000', '500', 2, 11, 145),
(759, '160000', '5000', '100', 3, 12, 145),
(760, '60000', '60000', '500', 2, 11, 145),
(761, '160000', '5000', '100', 3, 12, 145),
(762, '60000', '60000', '500', 6, 12, 146);

-- --------------------------------------------------------

--
-- Table structure for table `pump_routine`
--

CREATE TABLE `pump_routine` (
  `pump_routine_id` int(11) NOT NULL,
  `routine_pump_id` int(30) NOT NULL,
  `shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pump_routine`
--

INSERT INTO `pump_routine` (`pump_routine_id`, `routine_pump_id`, `shift_id`) VALUES
(1, 7, 34),
(2, 8, 34),
(3, 7, 35),
(4, 8, 35),
(5, 10, 37),
(6, 9, 37),
(7, 7, 38),
(8, 9, 39),
(9, 10, 40),
(10, 9, 40),
(11, 8, 40),
(12, 9, 42),
(13, 8, 42),
(14, 10, 42),
(15, 2, 43),
(16, 3, 43),
(17, 4, 44),
(18, 3, 44),
(19, 2, 44),
(20, 1, 44),
(21, 1, 45),
(22, 2, 45),
(23, 4, 45),
(24, 1, 46),
(25, 10, 89),
(26, 1, 47),
(27, 2, 47),
(28, 2, 48),
(29, 1, 48),
(30, 3, 48),
(31, 2, 49),
(32, 3, 49),
(33, 1, 50),
(34, 2, 50),
(35, 3, 50),
(36, 4, 50),
(37, 4, 51),
(38, 3, 51),
(39, 3, 52),
(40, 2, 52),
(41, 3, 53),
(42, 2, 53),
(43, 1, 53),
(44, 2, 57),
(45, 1, 57),
(46, 3, 57),
(47, 2, 58),
(48, 1, 58),
(49, 3, 58),
(50, 1, 59),
(51, 2, 59),
(52, 4, 60),
(53, 3, 60),
(54, 2, 60),
(55, 1, 61),
(56, 2, 61),
(57, 2, 62),
(58, 3, 62),
(59, 1, 63),
(60, 2, 63),
(61, 2, 71),
(62, 3, 71),
(63, 2, 73),
(64, 3, 73),
(65, 1, 74),
(66, 1, 75),
(67, 4, 80),
(68, 3, 80),
(69, 2, 83),
(70, 3, 83),
(71, 4, 83),
(72, 2, 85),
(73, 3, 85),
(74, 2, 86),
(75, 4, 87),
(76, 4, 88),
(77, 4, 89),
(78, 1, 90),
(79, 1, 91),
(80, 3, 91),
(81, 2, 91),
(82, 1, 92),
(83, 2, 92),
(84, 2, 93),
(85, 1, 93),
(86, 1, 94),
(87, 2, 94),
(88, 1, 95),
(89, 4, 96),
(90, 3, 96),
(91, 2, 96),
(92, 1, 96),
(93, 1, 97),
(94, 2, 97),
(95, 3, 97),
(96, 4, 97),
(97, 1, 97),
(98, 2, 97),
(99, 3, 97),
(100, 1, 97),
(101, 1, 98),
(102, 2, 98),
(103, 4, 98),
(104, 3, 98),
(105, 1, 98),
(106, 2, 98),
(107, 1, 98),
(108, 4, 98),
(109, 4, 99),
(110, 2, 99),
(111, 1, 100),
(112, 2, 100),
(113, 3, 100),
(114, 4, 100),
(115, 1, 101),
(116, 2, 101),
(117, 2, 102),
(118, 1, 102),
(119, 1, 103),
(120, 2, 103),
(121, 2, 104),
(122, 3, 104),
(123, 1, 105),
(124, 2, 105),
(125, 3, 105),
(126, 2, 106),
(127, 1, 106),
(128, 4, 109),
(129, 2, 109),
(130, 2, 110),
(131, 3, 110),
(132, 3, 111),
(133, 2, 112),
(134, 3, 112),
(135, 2, 113),
(136, 1, 113),
(137, 2, 113),
(138, 1, 113),
(139, 1, 114),
(140, 2, 115),
(141, 3, 115),
(142, 4, 116),
(143, 3, 116),
(144, 1, 117),
(145, 1, 118),
(146, 1, 118),
(147, 2, 118),
(148, 1, 120),
(149, 1, 121),
(150, 1, 121),
(151, 1, 121),
(152, 2, 121),
(153, 1, 123),
(154, 2, 123),
(155, 3, 124),
(156, 4, 124),
(157, 3, 124),
(158, 4, 124),
(159, 1, 124),
(160, 2, 124),
(161, 1, 125),
(162, 2, 125),
(163, 3, 125),
(164, 4, 125),
(165, 3, 125),
(166, 4, 125),
(167, 1, 125),
(168, 2, 125),
(169, 1, 126),
(170, 2, 126),
(171, 3, 126),
(172, 4, 126),
(173, 1, 126),
(174, 2, 126),
(175, 3, 126),
(176, 4, 126),
(177, 3, 127),
(178, 4, 127),
(179, 1, 127),
(180, 2, 127),
(181, 1, 128),
(182, 2, 128),
(183, 3, 128),
(184, 4, 128),
(185, 1, 129),
(186, 2, 129),
(187, 3, 129),
(188, 4, 129),
(189, 1, 130),
(190, 2, 130),
(191, 3, 130),
(192, 4, 130),
(193, 1, 130),
(194, 2, 130),
(195, 3, 130),
(196, 4, 130),
(197, 1, 131),
(198, 2, 131),
(199, 3, 131),
(200, 4, 131),
(201, 3, 132),
(202, 4, 132),
(203, 1, 132),
(204, 2, 132),
(205, 1, 133),
(206, 2, 133),
(207, 3, 133),
(208, 4, 133),
(209, 1, 135),
(210, 2, 135),
(211, 3, 135),
(212, 4, 135),
(213, 1, 136),
(214, 2, 136),
(215, 3, 136),
(216, 4, 136),
(217, 3, 136),
(218, 4, 136),
(219, 1, 136),
(220, 2, 136),
(221, 3, 138),
(222, 4, 138),
(223, 1, 138),
(224, 2, 138),
(225, 1, 138),
(226, 2, 138),
(227, 3, 138),
(228, 4, 138),
(229, 3, 139),
(230, 4, 139),
(231, 1, 139),
(232, 2, 139),
(233, 1, 140),
(234, 2, 140),
(235, 3, 140),
(236, 4, 140),
(237, 1, 141),
(238, 2, 141),
(239, 3, 141),
(240, 4, 141),
(241, 1, 142),
(242, 2, 142),
(243, 3, 142),
(244, 4, 142),
(245, 1, 143),
(246, 2, 143),
(247, 3, 143),
(248, 4, 143),
(249, 3, 144),
(250, 4, 144),
(251, 1, 144),
(252, 2, 144),
(253, 1, 144),
(254, 2, 144),
(255, 3, 144),
(256, 4, 144),
(257, 1, 145),
(258, 2, 145),
(259, 3, 145),
(260, 4, 145),
(261, 1, 146),
(262, 2, 146),
(263, 6, 146),
(264, 4, 146),
(265, 6, 147),
(266, 4, 147),
(267, 1, 147),
(268, 2, 147);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchases_id` int(11) NOT NULL,
  `purchases_del_no` varchar(30) NOT NULL,
  `purchase_qty` int(30) NOT NULL,
  `purchase_price` int(30) NOT NULL,
  `purchase_total_amount` int(30) NOT NULL,
  `purchase_gross_amt` int(30) NOT NULL,
  `purchase_net_total` int(30) NOT NULL,
  `purchase_details_id` int(30) NOT NULL,
  `purchase_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchases_id`, `purchases_del_no`, `purchase_qty`, `purchase_price`, `purchase_total_amount`, `purchase_gross_amt`, `purchase_net_total`, `purchase_details_id`, `purchase_station_id`) VALUES
(27, '1111', 0, 0, 0, 0, 0, 29, 3),
(28, '1111', 74364562, 74364562, 40000, 1, 40000, 30, 3),
(32, '123', 12, 1234, 12323, 1222, 12323, 34, 3),
(45, '', 0, 0, 0, 0, 0, 47, 3),
(46, '', 0, 0, 0, 0, 0, 48, 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `purchase_id` int(11) NOT NULL,
  `purchase_date` datetime(6) NOT NULL,
  `purchase_invoice_id` int(30) NOT NULL,
  `payment_mode_id` int(30) NOT NULL,
  `payment_method_id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `cashier_id` int(30) NOT NULL,
  `product_name_product_id` int(30) NOT NULL,
  `tax_id` int(30) NOT NULL,
  `purchase_veh_id` int(11) NOT NULL,
  `purchase_station_id` int(30) NOT NULL,
  `purchase_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`purchase_id`, `purchase_date`, `purchase_invoice_id`, `payment_mode_id`, `payment_method_id`, `vendor_id`, `cashier_id`, `product_name_product_id`, `tax_id`, `purchase_veh_id`, `purchase_station_id`, `purchase_shift_id`) VALUES
(1, '2023-07-12 21:00:00.000000', 3, 2, 2, 2, 2, 1, 15, 2, 0, 0),
(2, '2023-07-12 21:00:00.000000', 4, 2, 2, 2, 2, 1, 15, 3, 0, 0),
(3, '2023-08-09 00:00:00.000000', 5, 1, 2, 1, 1, 1, 15, 4, 0, 0),
(4, '2023-08-09 00:00:00.000000', 6, 1, 2, 1, 1, 1, 15, 5, 0, 0),
(5, '2023-07-15 07:00:00.000000', 7, 1, 1, 3, 1, 1, 15, 6, 0, 0),
(6, '2023-07-15 07:00:00.000000', 8, 1, 1, 3, 1, 1, 15, 7, 0, 0),
(9, '2023-10-16 21:00:00.000000', 11, 1, 3, 3, 2, 1, 15, 10, 0, 0),
(10, '2023-10-16 21:00:00.000000', 12, 1, 3, 3, 2, 1, 15, 11, 0, 0),
(11, '2023-10-17 09:00:00.000000', 13, 1, 3, 2, 1, 1, 15, 12, 0, 0),
(12, '2023-10-17 09:00:00.000000', 14, 1, 3, 2, 1, 1, 15, 13, 0, 0),
(13, '2023-10-16 21:00:00.000000', 15, 1, 3, 1, 1, 2, 15, 14, 0, 0),
(14, '2023-10-16 21:00:00.000000', 16, 1, 3, 1, 1, 2, 15, 15, 0, 0),
(15, '2023-10-03 23:00:00.000000', 17, 2, 3, 2, 2, 1, 15, 16, 0, 0),
(16, '2023-10-03 23:00:00.000000', 18, 2, 3, 2, 2, 1, 15, 17, 0, 0),
(17, '2023-10-09 21:00:00.000000', 19, 2, 3, 2, 2, 2, 15, 18, 0, 0),
(18, '2023-10-09 21:00:00.000000', 20, 2, 3, 2, 2, 2, 15, 19, 0, 0),
(19, '2023-10-10 21:00:00.000000', 21, 1, 6, 2, 2, 2, 15, 20, 0, 0),
(20, '2023-10-10 21:00:00.000000', 22, 1, 6, 2, 2, 2, 15, 21, 0, 0),
(21, '2023-10-05 21:00:00.000000', 23, 1, 2, 1, 1, 1, 15, 22, 0, 0),
(22, '2023-10-02 21:00:00.000000', 24, 1, 2, 2, 1, 2, 15, 23, 0, 0),
(23, '2023-10-03 21:00:00.000000', 25, 2, 2, 4, 2, 3, 15, 24, 0, 0),
(24, '2023-10-09 21:00:00.000000', 26, 2, 2, 2, 1, 3, 15, 25, 0, 0),
(25, '2023-10-15 21:00:00.000000', 27, 2, 3, 2, 1, 1, 15, 26, 0, 0),
(26, '2023-10-30 21:00:00.000000', 28, 1, 3, 3, 1, 1, 15, 27, 0, 0),
(27, '2023-10-30 21:00:00.000000', 29, 1, 3, 2, 1, 1, 15, 28, 0, 0),
(28, '2023-10-25 21:00:00.000000', 30, 1, 3, 2, 1, 1, 15, 29, 0, 0),
(29, '2023-10-31 21:00:00.000000', 31, 0, 0, 2, 2, 0, 15, 30, 0, 0),
(30, '2023-10-31 21:00:00.000000', 32, 1, 3, 1, 0, 2, 15, 31, 0, 0),
(31, '2023-10-31 21:00:00.000000', 33, 1, 3, 2, 1, 1, 15, 32, 0, 0),
(32, '2023-10-31 21:00:00.000000', 34, 1, 3, 1, 1, 2, 15, 33, 0, 0),
(33, '2023-10-31 21:00:00.000000', 35, 1, 3, 1, 1, 1, 15, 34, 0, 0),
(34, '2023-11-07 21:00:00.000000', 36, 1, 3, 1, 0, 1, 15, 35, 0, 0),
(35, '2023-10-31 21:00:00.000000', 37, 1, 3, 2, 1, 1, 15, 36, 0, 0),
(36, '2023-11-01 21:00:00.000000', 38, 1, 3, 1, 1, 1, 15, 37, 0, 0),
(37, '2023-11-10 21:00:00.000000', 39, 1, 3, 2, 1, 1, 15, 38, 0, 0),
(38, '2023-11-10 21:00:00.000000', 40, 1, 3, 1, 1, 1, 15, 39, 0, 0),
(39, '2023-10-31 21:00:00.000000', 41, 1, 3, 2, 2, 1, 15, 40, 0, 0),
(40, '2023-11-01 21:00:00.000000', 42, 0, 3, 1, 2, 1, 15, 41, 0, 0),
(41, '2023-11-01 21:00:00.000000', 43, 0, 3, 1, 2, 1, 15, 42, 0, 0),
(42, '2023-11-01 21:00:00.000000', 44, 1, 3, 1, 2, 2, 15, 43, 0, 0),
(43, '2023-11-02 21:00:00.000000', 45, 1, 5, 1, 1, 3, 15, 44, 0, 0),
(44, '2023-11-02 21:00:00.000000', 46, 1, 3, 1, 1, 3, 15, 45, 0, 0),
(45, '2023-11-02 21:00:00.000000', 47, 1, 3, 2, 1, 3, 15, 46, 0, 0),
(46, '2023-11-02 21:00:00.000000', 48, 1, 3, 1, 1, 3, 15, 47, 0, 0),
(47, '1970-01-01 00:00:00.000000', 49, 0, 0, 0, 0, 0, 15, 48, 0, 0),
(48, '1970-01-01 00:00:00.000000', 50, 0, 0, 0, 0, 0, 15, 49, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice`
--

CREATE TABLE `purchase_invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `invoice_date` varchar(30) NOT NULL,
  `invoice_amount` varchar(30) NOT NULL,
  `invoice_station_id` int(30) NOT NULL,
  `invoice_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_invoice`
--

INSERT INTO `purchase_invoice` (`invoice_id`, `invoice_no`, `invoice_date`, `invoice_amount`, `invoice_station_id`, `invoice_shift_id`) VALUES
(1, '768', 'april', '5767658', 0, 0),
(3, '768', 'april', '5767658', 0, 0),
(4, '768', 'april', '5767658', 0, 0),
(5, '23345', '2023-08-09 00:00:00', '1111', 0, 0),
(6, '23345', '2023-08-09 00:00:00', '1111', 0, 0),
(7, '1234', '2023-07-15 07:00:00', '3000', 0, 0),
(8, '1234', '2023-07-15 07:00:00', '3000', 0, 0),
(11, '', '2023-10-16 21:00:00', '1111', 0, 0),
(12, '', '2023-10-16 21:00:00', '1111', 0, 0),
(13, '234454', '2023-10-17 09:00:00', '1111', 0, 0),
(14, '234454', '2023-10-17 09:00:00', '1111', 0, 0),
(15, '46', '2023-10-16 21:00:00', '39', 0, 0),
(16, '46', '2023-10-16 21:00:00', '39', 0, 0),
(17, '363', '2023-10-03 23:00:00', '65656', 0, 0),
(18, '363', '2023-10-03 23:00:00', '65656', 0, 0),
(19, '46', '2023-10-09 21:00:00', '39', 0, 0),
(20, '46', '2023-10-09 21:00:00', '39', 0, 0),
(21, '46', '2023-10-10 21:00:00', '39', 0, 0),
(22, '46', '2023-10-10 21:00:00', '39', 0, 0),
(23, '234454', '2023-10-05 21:00:00', '300', 0, 0),
(24, '21', '2023-10-02 21:00:00', '5353', 0, 0),
(25, '7689', '2023-10-03 21:00:00', '8798', 0, 0),
(26, '15', '2023-10-09 21:00:00', '2399', 0, 0),
(27, '12434', '2023-10-15 21:00:00', '12000', 0, 0),
(28, '15', '2023-10-30 21:00:00', '2399', 0, 0),
(29, '15', '2023-10-30 21:00:00', '2399', 0, 0),
(30, '234454', '2023-10-25 21:00:00', '1111', 0, 0),
(31, '1122', '2023-10-31 21:00:00', '123', 0, 0),
(32, '234454', '2023-10-31 21:00:00', '1111', 0, 0),
(33, '234454', '2023-10-31 21:00:00', '1111', 0, 0),
(34, '234454', '2023-10-31 21:00:00', '1111', 0, 0),
(35, '234454', '2023-10-31 21:00:00', '1111', 0, 0),
(36, '1345', '2023-11-07 21:00:00', '123', 0, 0),
(37, '22334', '2023-10-31 21:00:00', '123', 0, 0),
(38, '234454', '2023-11-01 21:00:00', '1111', 0, 0),
(39, '234454', '2023-11-10 21:00:00', '1111', 0, 0),
(40, '234454', '2023-11-10 21:00:00', '1111', 0, 0),
(41, '3435436t4', '2023-10-31 21:00:00', '12344', 0, 0),
(42, '3435436t4', '2023-11-01 21:00:00', '12332', 0, 0),
(43, '3435436t4', '2023-11-01 21:00:00', '12344', 0, 0),
(44, '1111', '2023-11-01 21:00:00', '1223', 0, 0),
(45, '234454', '2023-11-02 21:00:00', '1111', 0, 0),
(46, '234454', '2023-11-02 21:00:00', '1111', 0, 0),
(47, '234454', '2023-11-02 21:00:00', '1111', 0, 0),
(48, '234454', '2023-11-02 21:00:00', '1111', 0, 0),
(49, '', '1970-01-01 00:00:00', '', 0, 0),
(50, '', '1970-01-01 00:00:00', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `rank_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reconcilliation`
--

CREATE TABLE `reconcilliation` (
  `reconcilliation_id` int(11) NOT NULL,
  `island_id` int(30) NOT NULL,
  `total_sales` varchar(50) NOT NULL,
  `invoice_sales` varchar(50) NOT NULL,
  `credit_sales` varchar(50) NOT NULL,
  `dropped` varchar(50) NOT NULL,
  `expected` varchar(30) NOT NULL,
  `variance` varchar(50) NOT NULL,
  `station_id` int(30) NOT NULL,
  `supervisor` int(30) NOT NULL,
  `shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reconcilliation`
--

INSERT INTO `reconcilliation` (`reconcilliation_id`, `island_id`, `total_sales`, `invoice_sales`, `credit_sales`, `dropped`, `expected`, `variance`, `station_id`, `supervisor`, `shift_id`) VALUES
(1, 5, '3900', '925.68', '0', '925.68', '2974.32', '-2048.6400000000003', 0, 0, 0),
(2, 7, '198', '0', '0', '8640', '198', '8442', 0, 0, 0),
(3, 3, '0', '0', '0', '0', '0', '0', 0, 0, 0),
(4, 5, '3900', '925.68', '0', '925.68', '2974.32', '-2048.6400000000003', 0, 0, 0),
(5, 7, '198', '0', '0', '8640', '198', '8442', 0, 0, 0),
(6, 5, '1500', '0', '0', '1400', '1500', '-100', 3, 0, 0),
(7, 6, '800', '0', '0', '900', '800', '100', 3, 0, 0),
(8, 9, '396', '0', '0', '220', '396', '-176', 3, 0, 0),
(9, 5, '1500', '0', '0', '1200', '1500', '-300', 3, 0, 0),
(10, 6, '800', '0', '0', '500', '800', '-300', 3, 0, 0),
(11, 9, '396', '0', '0', '400', '396', '4', 3, 0, 0),
(12, 5, '1500', '0', '0', '1300', '1500', '-200', 3, 0, 0),
(13, 6, '800', '0', '0', '1399', '800', '599', 3, 0, 0),
(14, 9, '396', '0', '0', '2211', '396', '1815', 3, 0, 0),
(15, 5, '1500', '0', '0', '1300', '1500', '-200', 3, 0, 0),
(16, 6, '800', '0', '0', '1277', '800', '477', 3, 0, 0),
(17, 9, '396', '0', '0', '213', '396', '-183', 3, 0, 0),
(18, 5, '1500', '0', '0', '1299', '1500', '-201', 3, 0, 0),
(19, 6, '800', '0', '0', '123', '800', '-677', 3, 0, 0),
(20, 9, '396', '0', '0', '222', '396', '-174', 3, 0, 0),
(21, 5, '1500', '0', '0', '200', '1500', '-1300', 3, 0, 0),
(22, 6, '800', '0', '0', '1148.4', '800', '348.4000000000001', 3, 0, 0),
(23, 9, '396', '0', '0', '8540', '396', '8144', 3, 0, 0),
(24, 5, '1500', '0', '0', '200', '1500', '-1300', 3, 0, 0),
(25, 6, '800', '0', '0', '1148.4', '800', '348.4000000000001', 3, 0, 0),
(26, 9, '396', '0', '0', '8540', '396', '8144', 3, 0, 0),
(27, 5, '1500', '0', '0', '235', '1500', '-1265', 3, 0, 0),
(28, 6, '800', '0', '0', '925.68', '800', '125.67999999999995', 3, 0, 0),
(29, 9, '396', '0', '0', '8640', '396', '8244', 3, 0, 0),
(30, 5, '1500', '0', '0', '1235', '1500', '-265', 3, 2, 0),
(31, 6, '800', '0', '0', '321', '800', '-479', 3, 2, 0),
(32, 9, '396', '0', '0', '124', '396', '-272', 3, 2, 0),
(33, 2, '300', '0', '346.84', '300', '-46.839999999999975', '346.84', 3, 2, 0),
(34, 6, '297', '88.16', '0', '200', '208.84', '-8.840000000000003', 3, 2, 0),
(35, 12, '6000', '0', '0', '0', '0', '0', 3, 2, 0),
(36, 12, '6000', '0', '0', '0', '0', '0', 3, 2, 118),
(37, 12, '6000', '0', '0', '200', '6000', '-5800', 3, 2, 118),
(38, 12, '6000', '0', '0', '200', '6000', '-5800', 3, 2, 118),
(39, 12, '6000', '0', '0', '211', '6000', '-5789', 3, 2, 118),
(40, 12, '6000', '0', '0', '211', '6000', '-5789', 3, 2, 118),
(41, 11, '5300', '0', '0', '0', '0', '0', 3, 2, 128),
(42, 11, '1940', '0', '0', '0', '0', '0', 3, 2, 129),
(43, 12, '1940', '0', '0', '0', '0', '0', 3, 2, 129),
(44, 11, '12969', '0', '0', '120000', '12969', '107031', 3, 2, 133),
(45, 12, '10500', '0', '0', '18000', '10500', '7500', 3, 2, 133),
(46, 11, '73043', '0', '0', '74000', '73043', '957', 3, 2, 135),
(47, 12, '2000', '0', '0', '2000', '2000', '0', 3, 2, 135),
(48, 13, '400', '0', '0', '357', '400', '-43', 3, 2, 135),
(52, 11, '15400', '0', '0', '15000', '15400', '-400', 3, 2, 136),
(53, 12, '20000', '0', '0', '19500', '20000', '-500', 3, 2, 136),
(54, 13, '1200', '0', '0', '1300', '1200', '100', 3, 2, 136),
(55, 11, '143338', '0', '0', '140000', '143338', '-3338', 3, 2, 139),
(56, 12, '93008', '0', '0', '94000', '93008', '992', 3, 2, 139),
(61, 11, '-76566', '0', '0', '100', '-76566', '76666', 3, 2, 140),
(62, 12, '-1858', '0', '0', '50', '-1858', '1908', 3, 2, 140),
(63, 11, '-76566', '0', '0', '30', '-76566', '76596', 3, 2, 140),
(64, 12, '-1858', '0', '0', '90', '-1858', '1948', 3, 2, 140),
(65, 11, '-76566', '0', '0', '100', '0', '0', 3, 2, 140),
(66, 12, '-1858', '0', '0', '50', '0', '0', 3, 2, 140),
(67, 11, '-76566', '0', '0', '0', '0', '0', 3, 2, 140),
(68, 12, '-1858', '0', '0', '0', '0', '0', 3, 2, 140),
(74, 11, '-141007', '0', '0', '0', '0', '0', 3, 2, 142),
(75, 12, '310145217', '0', '0', '0', '0', '0', 3, 2, 142),
(76, 11, '-122007', '0', '0', '122007', '-122007', '244014', 3, 2, 143),
(77, 12, '-4333', '0', '0', '4333', '-4333', '8666', 3, 2, 143),
(78, 12, '4246', '0', '0', '4000', '4246', '-246', 3, 2, 144);

-- --------------------------------------------------------

--
-- Table structure for table `routine_cashier`
--

CREATE TABLE `routine_cashier` (
  `routine_id` int(11) NOT NULL,
  `routine_cashier_id` int(30) NOT NULL,
  `routine_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_cashier`
--

INSERT INTO `routine_cashier` (`routine_id`, `routine_cashier_id`, `routine_shift_id`) VALUES
(10, 1, 15),
(11, 2, 15),
(12, 1, 16),
(13, 1, 17),
(14, 2, 17),
(15, 1, 18),
(16, 2, 18),
(17, 3, 19),
(18, 4, 19),
(19, 1, 20),
(20, 2, 27),
(21, 4, 28),
(22, 1, 29),
(23, 2, 29),
(24, 2, 30),
(25, 3, 30),
(26, 1, 32),
(27, 2, 32),
(28, 4, 41),
(29, 3, 41),
(30, 2, 42),
(31, 3, 42),
(32, 4, 42),
(33, 2, 43),
(34, 3, 43),
(35, 2, 44),
(36, 1, 44),
(37, 3, 45),
(38, 2, 45),
(39, 2, 46),
(40, 3, 46),
(41, 1, 48),
(42, 1, 49),
(43, 2, 49),
(44, 3, 49),
(45, 1, 50),
(46, 2, 50),
(47, 3, 50),
(48, 1, 51),
(49, 2, 51),
(50, 3, 51),
(51, 4, 51),
(52, 1, 52),
(53, 3, 52),
(54, 2, 52),
(55, 4, 52),
(56, 1, 53),
(57, 2, 53),
(58, 3, 53),
(59, 2, 54),
(60, 3, 54),
(61, 2, 55),
(62, 3, 55),
(63, 2, 56),
(64, 3, 56),
(65, 2, 59),
(66, 3, 59),
(67, 4, 59),
(68, 2, 60),
(69, 3, 60),
(70, 2, 61),
(71, 3, 61),
(72, 4, 63),
(73, 3, 63),
(74, 3, 65),
(75, 4, 65),
(76, 3, 68),
(77, 4, 68),
(78, 3, 69),
(79, 4, 69),
(80, 3, 70),
(81, 4, 70),
(82, 3, 71),
(83, 4, 71),
(84, 1, 72),
(85, 2, 72),
(86, 3, 72),
(87, 4, 72),
(88, 1, 73),
(89, 2, 73),
(90, 3, 73),
(91, 4, 73),
(92, 1, 74),
(93, 1, 75),
(94, 1, 76),
(95, 1, 77),
(96, 1, 78),
(97, 1, 80),
(98, 2, 80),
(99, 1, 83),
(100, 2, 83),
(101, 4, 83),
(102, 3, 83),
(103, 2, 83),
(104, 3, 83),
(105, 4, 83),
(106, 1, 83),
(107, 4, 83),
(108, 1, 84),
(109, 2, 84),
(110, 3, 84),
(111, 4, 84),
(112, 2, 85),
(113, 4, 85),
(114, 3, 85),
(115, 2, 86),
(116, 3, 86),
(117, 4, 86),
(118, 1, 87),
(119, 2, 87),
(120, 3, 87),
(121, 2, 88),
(122, 3, 88),
(123, 4, 89),
(124, 3, 89),
(125, 2, 89),
(126, 1, 89),
(127, 1, 90),
(128, 2, 90),
(129, 3, 90),
(130, 4, 90),
(131, 1, 91),
(132, 2, 91),
(133, 3, 91),
(134, 4, 92),
(135, 3, 92),
(136, 2, 92),
(137, 1, 92),
(138, 1, 93),
(139, 2, 93),
(140, 2, 94),
(141, 4, 94),
(142, 1, 95),
(143, 2, 95),
(144, 3, 95),
(145, 4, 96),
(146, 3, 96),
(147, 2, 96),
(148, 1, 96),
(149, 1, 97),
(150, 2, 97),
(151, 4, 97),
(152, 2, 98),
(153, 3, 98),
(154, 1, 98),
(155, 2, 98),
(156, 1, 98),
(157, 2, 98),
(158, 2, 99),
(159, 3, 99),
(160, 4, 99),
(161, 1, 100),
(162, 2, 100),
(163, 3, 100),
(164, 4, 101),
(165, 3, 101),
(166, 2, 101),
(167, 1, 101),
(168, 1, 102),
(169, 2, 102),
(170, 3, 102),
(171, 4, 103),
(172, 3, 103),
(173, 2, 103),
(174, 1, 103),
(175, 2, 104),
(176, 3, 104),
(177, 4, 104),
(178, 2, 105),
(179, 3, 105),
(180, 4, 105),
(181, 3, 106),
(182, 2, 106),
(183, 4, 106),
(184, 1, 106),
(185, 3, 109),
(186, 2, 109),
(187, 1, 109),
(188, 1, 110),
(189, 2, 110),
(190, 3, 110),
(191, 4, 110),
(192, 4, 111),
(193, 3, 111),
(194, 2, 111),
(195, 4, 112),
(196, 3, 112),
(197, 2, 112),
(198, 1, 112),
(199, 1, 113),
(200, 2, 113),
(201, 3, 113),
(202, 4, 113),
(203, 1, 113),
(204, 2, 113),
(205, 3, 113),
(206, 4, 113),
(207, 1, 114),
(208, 2, 114),
(209, 3, 114),
(210, 3, 115),
(211, 4, 115),
(212, 1, 116),
(213, 2, 116),
(214, 3, 116),
(215, 4, 116),
(216, 4, 117),
(217, 3, 117),
(218, 2, 117),
(219, 4, 118),
(220, 3, 118),
(221, 2, 118),
(222, 3, 118),
(223, 2, 118),
(224, 4, 120),
(225, 3, 120),
(226, 2, 120),
(227, 1, 120),
(228, 2, 121),
(229, 3, 121),
(230, 4, 123),
(231, 3, 123),
(232, 2, 123),
(233, 2, 124),
(234, 3, 124),
(235, 4, 124),
(236, 1, 125),
(237, 2, 125),
(238, 3, 125),
(239, 1, 126),
(240, 2, 126),
(241, 3, 126),
(242, 4, 127),
(243, 3, 127),
(244, 2, 127),
(245, 2, 128),
(246, 1, 128),
(247, 3, 128),
(250, 3, 129),
(251, 2, 129),
(252, 3, 130),
(253, 1, 130),
(254, 3, 130),
(255, 2, 130),
(256, 3, 131),
(257, 2, 131),
(258, 1, 132),
(259, 4, 132),
(260, 3, 133),
(261, 2, 133),
(263, 4, 135),
(264, 3, 135),
(265, 2, 135),
(266, 3, 136),
(267, 2, 136),
(268, 4, 136),
(269, 3, 138),
(270, 2, 138),
(271, 3, 138),
(272, 2, 138),
(273, 2, 139),
(274, 3, 139),
(275, 3, 140),
(276, 2, 140),
(277, 1, 140),
(278, 4, 140),
(279, 4, 140),
(280, 3, 141),
(281, 2, 141),
(282, 3, 142),
(283, 2, 142),
(284, 2, 143),
(285, 3, 143),
(286, 3, 144),
(287, 1, 144),
(288, 3, 145),
(289, 2, 145),
(290, 3, 146),
(291, 2, 146),
(292, 3, 147),
(293, 2, 147);

-- --------------------------------------------------------

--
-- Table structure for table `routine_cashier_island`
--

CREATE TABLE `routine_cashier_island` (
  `cashier_island_id` int(11) NOT NULL,
  `routine_allocation_id` int(30) NOT NULL,
  `routine_cashier_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_cashier_island`
--

INSERT INTO `routine_cashier_island` (`cashier_island_id`, `routine_allocation_id`, `routine_cashier_id`) VALUES
(5, 13, 10),
(6, 14, 11),
(7, 13, 10),
(8, 14, 10),
(9, 14, 11),
(10, 15, 11),
(11, 13, 10),
(12, 13, 11),
(13, 14, 12),
(14, 13, 10),
(15, 16, 11),
(16, 19, 17),
(17, 18, 18),
(18, 16, 11),
(19, 16, 11),
(20, 38, 24),
(21, 38, 24),
(22, 38, 24),
(23, 38, 24),
(24, 38, 24),
(25, 38, 24),
(26, 38, 24),
(27, 38, 24),
(28, 38, 24),
(29, 38, 24),
(30, 38, 24),
(31, 38, 25),
(32, 38, 24),
(33, 38, 24),
(34, 38, 24),
(35, 51, 29),
(36, 54, 30),
(37, 54, 30),
(38, 73, 45),
(39, 74, 46),
(40, 76, 48),
(41, 77, 49),
(42, 142, 82),
(43, 143, 83),
(44, 145, 84),
(45, 146, 85),
(46, 148, 88),
(47, 147, 89),
(48, 149, 90),
(49, 150, 91),
(50, 174, 106),
(51, 173, 105),
(52, 172, 104),
(53, 170, 101),
(54, 170, 102),
(55, 177, 112),
(56, 178, 113),
(57, 181, 115),
(58, 182, 116),
(59, 183, 117),
(60, 186, 120),
(61, 185, 118),
(62, 188, 121),
(63, 189, 122),
(64, 193, 125),
(65, 192, 124),
(66, 191, 123),
(67, 193, 126),
(68, 196, 127),
(69, 195, 128),
(70, 198, 132),
(71, 198, 132),
(72, 197, 132),
(73, 197, 131),
(74, 199, 131),
(75, 200, 133),
(76, 199, 132),
(77, 199, 132),
(78, 199, 132),
(79, 198, 132),
(80, 197, 131),
(81, 198, 131),
(82, 197, 132),
(83, 199, 132),
(84, 7, 132),
(86, 7, 132),
(87, 1, 161),
(88, 1, 162),
(89, 7, 162),
(90, 3, 163),
(91, 3, 163),
(92, 0, 161),
(93, 2, 162),
(94, 3, 162),
(95, 7, 162),
(96, 1, 161),
(97, 7, 162),
(98, 3, 162),
(99, 7, 162),
(100, 7, 162),
(101, 0, 162),
(102, 0, 162),
(103, 7, 161),
(104, 7, 161),
(105, 7, 161),
(106, 9, 162),
(107, 3, 162),
(108, 7, 162),
(109, 7, 162),
(110, 7, 162),
(111, 7, 162),
(112, 2, 164),
(113, 3, 165),
(114, 7, 166),
(115, 8, 167),
(116, 1, 169),
(117, 7, 169),
(118, 1, 168),
(119, 2, 169),
(120, 7, 170),
(121, 7, 169),
(122, 8, 170),
(123, 1, 169),
(124, 8, 169),
(125, 1, 170),
(126, 7, 170),
(127, 7, 171),
(128, 2, 172),
(129, 8, 173),
(130, 4, 175),
(131, 8, 176),
(132, 9, 177),
(133, 1, 178),
(134, 1, 178),
(135, 7, 179),
(136, 8, 180),
(137, 4, 181),
(138, 4, 181),
(139, 8, 182),
(140, 8, 182),
(141, 3, 183),
(142, 3, 183),
(143, 7, 184),
(144, 7, 184),
(145, 2, 185),
(146, 10, 186),
(147, 8, 187),
(148, 2, 188),
(149, 3, 189),
(150, 8, 190),
(151, 9, 191),
(152, 2, 192),
(153, 3, 193),
(154, 9, 194),
(155, 2, 195),
(156, 8, 196),
(157, 9, 197),
(158, 7, 199),
(159, 6, 202),
(160, 5, 207),
(161, 7, 208),
(162, 3, 209),
(163, 3, 210),
(164, 8, 211),
(165, 5, 214),
(166, 9, 215),
(167, 6, 213),
(168, 2, 216),
(169, 4, 217),
(170, 5, 218),
(171, 2, 219),
(172, 5, 220),
(173, 6, 221),
(174, 12, 219),
(175, 13, 220),
(176, 11, 224),
(177, 13, 225),
(178, 14, 226),
(179, 12, 227),
(180, 12, 231),
(181, 11, 230),
(182, 11, 230),
(183, 11, 230),
(184, 11, 0),
(185, 11, 0),
(186, 11, 0),
(187, 11, 0),
(188, 11, 0),
(189, 11, 0),
(190, 11, 0),
(191, 11, 0),
(192, 11, 0),
(193, 11, 0),
(194, 11, 230),
(195, 11, 233),
(196, 12, 234),
(197, 13, 235),
(198, 11, 236),
(199, 11, 239),
(200, 12, 241),
(201, 13, 240),
(202, 11, 242),
(203, 12, 243),
(204, 13, 244),
(205, 11, 245),
(206, 11, 250),
(207, 12, 251),
(208, 11, 252),
(209, 12, 253),
(210, 11, 256),
(211, 12, 257),
(212, 12, 258),
(213, 11, 259),
(214, 11, 260),
(215, 12, 261),
(216, 11, 263),
(217, 12, 264),
(218, 13, 265),
(219, 11, 266),
(220, 12, 267),
(221, 13, 268),
(222, 11, 269),
(223, 12, 270),
(224, 11, 269),
(225, 12, 270),
(226, 11, 273),
(227, 12, 274),
(228, 11, 275),
(229, 12, 276),
(230, 11, 275),
(231, 11, 278),
(232, 12, 278),
(233, 11, 280),
(234, 12, 281),
(235, 11, 282),
(236, 12, 283),
(237, 11, 284),
(238, 12, 285),
(239, 11, 286),
(240, 12, 287),
(241, 11, 288),
(242, 12, 289),
(243, 11, 290),
(244, 12, 291),
(245, 11, 292),
(246, 12, 293);

-- --------------------------------------------------------

--
-- Table structure for table `routine_cashier_type`
--

CREATE TABLE `routine_cashier_type` (
  `type_id` int(11) NOT NULL,
  `type_routine_cashier_id` int(30) NOT NULL,
  `product_type_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_cashier_type`
--

INSERT INTO `routine_cashier_type` (`type_id`, `type_routine_cashier_id`, `product_type_id`) VALUES
(11, 11, 1),
(12, 11, 2),
(15, 12, 2),
(16, 10, 2),
(17, 11, 1),
(18, 10, 1),
(19, 12, 1),
(20, 12, 2),
(21, 14, 1),
(22, 13, 2),
(23, 10, 1),
(24, 11, 2),
(25, 17, 1),
(26, 18, 1),
(27, 48, 1),
(28, 49, 2),
(29, 49, 2),
(30, 82, 2),
(31, 82, 2),
(32, 83, 1),
(33, 90, 1),
(34, 106, 1),
(35, 106, 3),
(36, 104, 2),
(38, 102, 1),
(39, 104, 2),
(40, 112, 1),
(41, 112, 1),
(42, 115, 1),
(43, 117, 1),
(44, 118, 1),
(45, 120, 1),
(46, 121, 1),
(47, 123, 1),
(48, 124, 1),
(49, 126, 1),
(50, 127, 1),
(51, 128, 1),
(52, 127, 1),
(53, 127, 1);

-- --------------------------------------------------------

--
-- Table structure for table `routine_island`
--

CREATE TABLE `routine_island` (
  `routine_id` int(11) NOT NULL,
  `routine_island_id` int(30) NOT NULL,
  `routine_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_island`
--

INSERT INTO `routine_island` (`routine_id`, `routine_island_id`, `routine_shift_id`) VALUES
(318, 12, 121),
(319, 0, 121),
(320, 0, 121),
(321, 0, 121),
(322, 0, 121),
(323, 0, 121),
(324, 0, 121),
(325, 0, 121),
(326, 0, 121),
(327, 11, 121),
(328, 13, 121),
(329, 14, 121),
(330, 11, 121),
(331, 13, 121),
(332, 12, 121),
(333, 12, 121),
(334, 11, 121),
(335, 12, 121),
(336, 12, 121),
(337, 11, 121),
(338, 12, 121),
(339, 11, 121),
(340, 12, 123),
(341, 13, 123),
(342, 11, 123),
(343, 13, 123),
(344, 13, 124),
(345, 12, 124),
(346, 13, 124),
(347, 12, 124),
(348, 11, 124),
(349, 13, 125),
(350, 11, 125),
(351, 12, 125),
(352, 13, 125),
(353, 12, 125),
(354, 11, 125),
(355, 11, 126),
(356, 12, 126),
(357, 13, 126),
(358, 11, 126),
(359, 12, 126),
(360, 13, 126),
(361, 13, 127),
(362, 13, 127),
(363, 13, 127),
(364, 12, 127),
(365, 11, 127),
(366, 13, 127),
(367, 13, 128),
(368, 11, 128),
(369, 12, 128),
(370, 13, 128),
(371, 11, 129),
(372, 12, 129),
(373, 11, 130),
(374, 12, 130),
(375, 11, 130),
(376, 12, 130),
(377, 11, 131),
(378, 12, 131),
(379, 12, 132),
(380, 11, 132),
(381, 11, 133),
(382, 12, 133),
(383, 13, 135),
(384, 11, 135),
(385, 12, 135),
(386, 13, 135),
(387, 13, 136),
(388, 13, 136),
(389, 11, 136),
(390, 12, 136),
(391, 13, 136),
(392, 12, 136),
(393, 11, 136),
(394, 12, 138),
(395, 11, 138),
(396, 11, 138),
(397, 12, 138),
(398, 12, 139),
(399, 11, 139),
(400, 11, 140),
(401, 12, 140),
(402, 11, 141),
(403, 12, 141),
(404, 11, 142),
(405, 12, 142),
(406, 11, 143),
(407, 12, 143),
(408, 12, 144),
(409, 11, 144),
(410, 11, 144),
(411, 12, 144),
(412, 11, 145),
(413, 12, 145),
(414, 11, 146),
(415, 12, 146),
(416, 12, 147),
(417, 11, 147);

-- --------------------------------------------------------

--
-- Table structure for table `routine_islandpump_cashier`
--

CREATE TABLE `routine_islandpump_cashier` (
  `pump_routine` int(11) NOT NULL,
  `cashier_routine_id` int(30) NOT NULL,
  `pump_routine_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_islandpump_cashier`
--

INSERT INTO `routine_islandpump_cashier` (`pump_routine`, `cashier_routine_id`, `pump_routine_id`) VALUES
(1, 12, 30),
(2, 14, 30),
(3, 31, 13),
(4, 31, 12),
(5, 41, 29),
(6, 41, 28),
(7, 41, 30),
(8, 42, 31),
(9, 43, 32),
(10, 47, 34),
(11, 50, 37),
(12, 51, 38),
(13, 114, 72),
(14, 117, 74),
(15, 126, 89),
(16, 131, 79),
(17, 133, 80),
(18, 132, 1),
(19, 162, 114),
(20, 162, 114),
(21, 162, 114),
(22, 162, 1),
(23, 162, 113),
(24, 162, 114),
(25, 166, 1),
(26, 167, 2),
(27, 169, 1),
(28, 170, 1),
(29, 169, 1),
(30, 170, 2),
(31, 169, 2),
(32, 170, 1),
(33, 171, 1),
(34, 173, 2),
(35, 176, 2),
(36, 177, 3),
(37, 179, 1),
(38, 180, 2),
(39, 182, 2),
(40, 182, 2),
(41, 184, 1),
(42, 184, 1),
(43, 186, 4),
(44, 187, 2),
(45, 190, 2),
(46, 191, 3),
(47, 194, 3),
(48, 196, 2),
(49, 197, 3),
(50, 199, 1),
(51, 208, 1),
(52, 211, 2),
(53, 215, 3),
(54, 216, 1),
(55, 219, 1),
(67, 230, 1),
(68, 230, 2),
(69, 233, 1),
(70, 233, 2),
(71, 234, 3),
(72, 234, 4),
(73, 234, 3),
(74, 234, 4),
(75, 236, 1),
(76, 236, 2),
(77, 236, 1),
(78, 236, 2),
(79, 239, 1),
(80, 239, 2),
(81, 241, 3),
(82, 241, 4),
(83, 242, 1),
(84, 242, 2),
(85, 243, 3),
(86, 243, 4),
(87, 245, 1),
(88, 245, 2),
(89, 250, 1),
(90, 250, 2),
(91, 251, 3),
(92, 251, 4),
(93, 252, 1),
(94, 252, 2),
(95, 253, 3),
(96, 253, 4),
(97, 256, 1),
(98, 256, 2),
(99, 257, 3),
(100, 257, 4),
(101, 258, 3),
(102, 258, 4),
(103, 259, 1),
(104, 259, 2),
(105, 260, 1),
(106, 260, 2),
(107, 261, 3),
(108, 261, 4),
(109, 263, 1),
(110, 263, 2),
(111, 264, 3),
(112, 264, 4),
(113, 266, 1),
(114, 266, 2),
(115, 267, 3),
(116, 267, 4),
(117, 269, 1),
(118, 269, 2),
(119, 270, 3),
(120, 270, 4),
(121, 269, 1),
(122, 269, 2),
(123, 269, 1),
(124, 269, 2),
(125, 270, 3),
(126, 270, 4),
(127, 270, 3),
(128, 270, 4),
(129, 273, 1),
(130, 273, 2),
(131, 274, 3),
(132, 274, 4),
(133, 275, 1),
(134, 275, 2),
(135, 276, 3),
(136, 276, 4),
(137, 275, 1),
(138, 275, 2),
(139, 278, 1),
(140, 278, 2),
(141, 278, 3),
(142, 278, 4),
(143, 280, 1),
(144, 280, 2),
(145, 281, 3),
(146, 281, 4),
(147, 282, 1),
(148, 282, 2),
(149, 283, 3),
(150, 283, 4),
(151, 284, 1),
(152, 284, 2),
(153, 285, 3),
(154, 285, 4),
(155, 286, 1),
(156, 286, 2),
(157, 286, 1),
(158, 286, 2),
(159, 287, 3),
(160, 287, 4),
(161, 287, 3),
(162, 287, 4),
(163, 288, 1),
(164, 288, 2),
(165, 289, 3),
(166, 289, 4),
(167, 290, 1),
(168, 290, 2),
(169, 291, 6),
(170, 291, 4),
(171, 292, 1),
(172, 292, 2),
(173, 293, 6),
(174, 293, 4);

-- --------------------------------------------------------

--
-- Table structure for table `routine_supervisor`
--

CREATE TABLE `routine_supervisor` (
  `routine_id` int(11) NOT NULL,
  `routine_supervisor_id` int(30) NOT NULL,
  `routine_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine_supervisor`
--

INSERT INTO `routine_supervisor` (`routine_id`, `routine_supervisor_id`, `routine_shift_id`) VALUES
(2, 1, 6),
(3, 1, 7),
(4, 2, 7),
(5, 3, 7),
(6, 1, 18),
(7, 2, 18),
(8, 1, 30),
(9, 2, 30),
(10, 1, 74),
(11, 1, 75),
(12, 1, 76),
(13, 1, 77),
(14, 1, 78),
(15, 1, 79),
(16, 2, 113),
(17, 3, 113),
(18, 2, 114),
(19, 3, 114),
(20, 2, 116),
(21, 2, 117),
(22, 2, 118),
(23, 2, 118);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `sales_date` datetime(6) NOT NULL,
  `sales_product_id` int(30) NOT NULL,
  `VAT` varchar(30) NOT NULL,
  `sales_quantity` varchar(30) NOT NULL,
  `sales_price` varchar(30) NOT NULL,
  `sales_desc_id` int(30) NOT NULL,
  `sales_shift_id` int(30) NOT NULL,
  `routine_cashier` int(30) NOT NULL,
  `served_by` int(20) NOT NULL,
  `island_id` int(30) NOT NULL,
  `total_amount` varchar(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `sales_date`, `sales_product_id`, `VAT`, `sales_quantity`, `sales_price`, `sales_desc_id`, `sales_shift_id`, `routine_cashier`, `served_by`, `island_id`, `total_amount`, `station_id`) VALUES
(1, '2023-08-09 21:00:00.000000', 1, '1.16', '64768588', '4675', 1, 3, 1, 0, 3, '', 0),
(2, '2023-08-17 07:00:00.000000', 1, '1.16', '23', '200', 2, 9, 1, 0, 3, '', 0),
(3, '2023-08-16 23:20:20.000000', 1, '1.16', '4', '200', 2, 0, 0, 0, 3, '', 0),
(4, '2023-08-15 07:00:00.000000', 1, '1.16', '4', '200', 2, 9, 1, 0, 3, '', 0),
(5, '2023-08-18 23:20:20.000000', 1, '200', '234', '8789', 1, 15, 1, 1, 3, '', 0),
(8, '2023-08-15 23:25:25.000000', 2, '1.16', '4', '432', 2, 15, 2, 1, 3, '', 0),
(9, '2023-08-23 07:00:00.000000', 1, '200', '234', '8789', 1, 15, 1, 1, 3, '235', 0),
(10, '2023-08-08 22:15:10.000000', 1, '1.16', '200', '200', 2, 15, 1, 1, 3, '40000.00', 0),
(11, '2023-08-09 22:15:30.000000', 1, '1.16', '200', '200', 2, 15, 1, 1, 3, '46168.00', 0),
(12, '2023-08-15 07:00:00.000000', 1, '1.16', '7', '200', 1, 15, 1, 1, 3, '1577.60', 0),
(13, '2023-08-08 00:25:35.000000', 1, '1.16', '7', '200', 1, 15, 2, 1, 3, '1619.36', 0),
(14, '2023-09-06 09:00:00.000000', 3, '1.16', '6', '400', 1, 19, 3, 3, 5, '2772.40', 0),
(15, '2023-09-11 21:00:00.000000', 3, '1.16', '234', '400', 1, 19, 4, 4, 6, '108564.40', 0),
(16, '2023-09-06 12:15:15.000000', 2, '1.16', '14', '432', 2, 19, 4, 4, 5, '7004.08', 0),
(17, '2023-09-06 13:15:15.000000', 2, '1.16', '200', '432', 2, 19, 3, 3, 5, '100108.00', 0),
(18, '2023-09-05 12:00:00.000000', 3, '1.16', '235', '400', 2, 19, 3, 0, 6, '109028.40', 0),
(19, '2023-09-26 09:00:00.000000', 6, '1.16', '5', '1000', 2, 19, 4, 4, 5, '5788.40', 0),
(20, '2023-09-26 09:00:00.000000', 1, '1.16', '6', '200', 1, 15, 2, 2, 1, '1380.40', 0),
(21, '2023-09-26 21:00:00.000000', 1, '1.16', '10', '200', 2, 87, 3, 3, 5, '2308.40', 0),
(22, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 19, 3, 0, 5, '', 0),
(23, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 15, 1, 0, 1, '', 0),
(24, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 15, 1, 0, 1, '', 0),
(25, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 15, 1, 0, 1, '', 0),
(26, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 15, 2, 0, 1, '', 0),
(27, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 15, 1, 0, 1, '', 0),
(28, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 19, 3, 0, 5, '', 0),
(29, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 19, 4, 0, 5, '', 0),
(30, '2023-10-06 21:00:00.000000', 2, '1.16', '2', '99', 2, 112, 2, 2, 9, '228.52', 0),
(31, '2023-10-07 09:00:00.000000', 3, '1.16', '5', '400', 1, 112, 3, 3, 8, '2318.84', 0),
(32, '2023-10-15 21:00:00.000000', 1, '1.16', '2', '300', 1, 113, 1, 1, 7, '684.40', 0),
(33, '1970-01-01 00:00:00.000000', 0, '', '', '', 1, 0, 0, 0, 0, '', 0),
(34, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 0, 0, 0, 0, '', 0),
(35, '1970-01-01 00:00:00.000000', 0, '', '', '', 1, 0, 0, 0, 0, '', 0),
(36, '1970-01-01 00:00:00.000000', 0, '', '', '', 1, 0, 0, 0, 0, '', 0),
(37, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 0, 0, 0, 0, '', 0),
(38, '2023-10-04 21:00:00.000000', 3, '1.16', '2', '400', 2, 114, 1, 2, 5, '925.68', 0),
(39, '2023-10-30 21:00:00.000000', 1, '1.16', '3', '300', 1, 116, 2, 2, 6, '1028.92', 3),
(40, '2023-10-30 21:00:00.000000', 2, '1.16', '2', '99', 2, 116, 4, 4, 9, '228.52', 3),
(41, '2023-10-13 00:00:00.000000', 1, '1.16', '1', '300', 1, 118, 4, 4, 2, '346.84', 3),
(42, '2023-10-30 21:00:00.000000', 2, '1.16', '2', '99', 2, 118, 2, 2, 6, '88.16', 3),
(43, '2023-11-10 21:00:00.000000', 6, '1.16', '2', '1000', 2, 132, 1, 1, 12, '928.00', 3),
(44, '2023-11-10 21:00:00.000000', 8, '1.16', '2', '1200', 1, 132, 4, 4, 11, '464.00', 3),
(45, '1970-01-01 00:00:00.000000', 0, '', '', '', 1, 0, 0, 0, 0, '', 3),
(46, '1970-01-01 00:00:00.000000', 0, '', '', '', 2, 0, 0, 0, 0, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales_desc`
--

CREATE TABLE `sales_desc` (
  `sales_desc_id` int(11) NOT NULL,
  `sales_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_desc`
--

INSERT INTO `sales_desc` (`sales_desc_id`, `sales_desc`) VALUES
(1, 'Credit Sales'),
(2, 'Invoice sales');

-- --------------------------------------------------------

--
-- Table structure for table `sales_reconciliation`
--

CREATE TABLE `sales_reconciliation` (
  `sales_id` int(30) NOT NULL,
  `cashier_id` int(30) NOT NULL,
  `total_sales` int(30) NOT NULL,
  `expected_drop` int(30) NOT NULL,
  `actual_drop` int(30) NOT NULL,
  `variance` int(30) NOT NULL,
  `reconcilliation_station_id` int(30) NOT NULL,
  `reconcilliation_shift_id` int(30) NOT NULL,
  `none_cash_payments` int(30) NOT NULL,
  `expense` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_type` varchar(30) NOT NULL,
  `service_transaction_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `shift_date` datetime(6) NOT NULL,
  `shift_time_fom` time(6) NOT NULL,
  `shift_time_to` time(6) NOT NULL,
  `shift_status` int(11) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_date`, `shift_time_fom`, `shift_time_to`, `shift_status`, `station_id`) VALUES
(109, '2023-10-06 13:07:07.000000', '13:07:07.000000', '21:00:00.000000', 1, 0),
(110, '2023-10-06 14:23:45.000000', '14:23:45.000000', '09:05:10.000000', 1, 0),
(111, '2023-10-06 14:27:28.000000', '14:27:28.000000', '21:00:00.000000', 1, 0),
(112, '2023-10-07 09:52:48.000000', '09:52:48.000000', '09:00:00.000000', 1, 0),
(113, '2023-10-16 15:50:32.000000', '15:50:32.000000', '21:00:00.000000', 1, 0),
(114, '2023-10-17 09:12:22.000000', '09:12:22.000000', '09:00:00.000000', 1, 0),
(115, '2023-10-27 13:23:02.000000', '13:23:02.000000', '21:00:00.000000', 1, 3),
(116, '2023-10-31 10:25:45.000000', '10:25:45.000000', '09:00:00.000000', 1, 3),
(117, '2023-10-31 17:12:03.000000', '17:12:03.000000', '09:00:00.000000', 1, 3),
(118, '2023-10-31 17:59:59.000000', '17:59:59.000000', '21:00:00.000000', 1, 3),
(119, '2023-11-02 16:22:20.000000', '16:22:20.000000', '12:15:15.000000', 1, 3),
(120, '2023-11-02 16:22:20.000000', '16:22:20.000000', '12:15:15.000000', 1, 3),
(121, '2023-11-03 14:01:05.000000', '14:01:05.000000', '21:00:00.000000', 1, 3),
(122, '2023-11-06 11:46:44.000000', '11:46:44.000000', '09:20:20.000000', 1, 0),
(123, '2023-11-07 20:53:34.000000', '20:53:34.000000', '21:00:00.000000', 1, 3),
(124, '2023-11-08 03:19:22.000000', '03:19:22.000000', '09:00:00.000000', 1, 3),
(125, '2023-11-08 03:21:52.000000', '03:21:52.000000', '09:00:00.000000', 1, 3),
(126, '2023-11-08 03:23:14.000000', '03:23:14.000000', '21:00:00.000000', 1, 3),
(127, '2023-11-08 03:57:38.000000', '03:57:38.000000', '23:00:00.000000', 1, 3),
(128, '2023-11-08 04:27:35.000000', '04:27:35.000000', '09:00:00.000000', 1, 3),
(129, '2023-11-10 15:11:11.000000', '15:11:11.000000', '21:00:00.000000', 1, 3),
(130, '2023-11-10 15:22:45.000000', '15:22:45.000000', '09:00:00.000000', 1, 3),
(131, '2023-11-11 12:48:17.000000', '12:48:17.000000', '21:00:00.000000', 1, 3),
(132, '2023-11-11 16:19:07.000000', '16:19:07.000000', '21:00:00.000000', 1, 3),
(133, '2023-11-12 14:27:30.000000', '14:27:30.000000', '15:00:10.000000', 1, 3),
(134, '2023-11-13 13:33:25.000000', '13:33:25.000000', '09:00:00.000000', 1, 3),
(135, '2023-11-14 11:28:01.000000', '11:28:01.000000', '21:00:00.000000', 1, 3),
(136, '2023-11-14 11:57:38.000000', '11:57:38.000000', '09:00:05.000000', 1, 3),
(137, '2023-11-14 15:29:39.000000', '15:29:39.000000', '09:00:00.000000', 1, 3),
(138, '2023-11-14 20:21:15.000000', '20:21:15.000000', '21:00:00.000000', 1, 3),
(139, '2023-11-14 21:02:24.000000', '21:02:24.000000', '21:00:00.000000', 1, 3),
(140, '2023-11-15 00:35:37.000000', '00:35:37.000000', '21:00:00.000000', 1, 3),
(141, '2023-11-18 14:31:46.000000', '14:31:46.000000', '21:00:00.000000', 1, 3),
(142, '2023-11-20 11:47:36.000000', '11:47:36.000000', '21:00:00.000000', 1, 3),
(143, '2023-11-21 12:02:31.000000', '12:02:31.000000', '09:05:00.000000', 1, 3),
(144, '2023-11-23 11:29:25.000000', '11:29:25.000000', '21:00:00.000000', 1, 3),
(145, '2023-11-24 14:11:46.000000', '14:11:46.000000', '09:00:00.000000', 1, 3),
(146, '2023-11-25 16:18:35.000000', '16:18:35.000000', '23:00:00.000000', 1, 3),
(147, '2023-11-25 17:00:09.000000', '17:00:09.000000', '21:00:00.000000', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift_pump_sales`
--

CREATE TABLE `shift_pump_sales` (
  `pump_sales_id` int(11) NOT NULL,
  `cash_meter` int(30) NOT NULL,
  `electric_meter` int(30) NOT NULL,
  `manual_meter` int(30) NOT NULL,
  `pump_id` int(30) NOT NULL,
  `island` int(40) NOT NULL,
  `reading_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift_pump_sales`
--

INSERT INTO `shift_pump_sales` (`pump_sales_id`, `cash_meter`, `electric_meter`, `manual_meter`, `pump_id`, `island`, `reading_shift_id`) VALUES
(119, 4600, 1460, 9500, 1, 11, 139),
(120, 1233, 5589, 6245, 2, 11, 139),
(121, 929, 8909, 3460, 3, 11, 139),
(122, 0, 0, 9900, 1, 11, 139),
(123, 0, 0, 6011, 2, 11, 139),
(124, 0, 0, 346331, 3, 11, 139),
(140, 4600, -7540, 9500, 1, 11, 140),
(141, -30122, -53589, 6245, 2, 11, 140),
(142, -929, 8909, 346032, 3, 12, 140),
(143, 0, 0, 9900, 1, 11, 140),
(144, 0, 0, 6011, 2, 11, 140),
(145, 0, 0, 346331, 3, 12, 140),
(146, -10000, -1000, -100, 1, 11, 140),
(147, -35778, -1299, -667, 2, 11, 140),
(148, -34525, -54345, -346, 3, 12, 140),
(149, 10000, 1000, 10000, 1, 11, 140),
(150, 35778, 1299, 6678, 2, 11, 140),
(151, 34525, 54345, 346677, 3, 12, 140),
(152, 0, 0, 9900, 1, 11, 140),
(153, 0, 0, 6011, 2, 11, 140),
(154, 0, 0, 346331, 3, 12, 140),
(155, 0, 0, 9900, 1, 11, 140),
(156, 0, 0, 6011, 2, 11, 140),
(157, 0, 0, 346331, 3, 12, 140),
(158, -10000, -1000, -100, 1, 11, 140),
(159, -35778, -1299, -667, 2, 11, 140),
(160, -34525, -54345, -346, 3, 12, 140),
(161, 10000, 1000, 10000, 1, 11, 140),
(162, 35778, 1299, 6678, 2, 11, 140),
(163, 34525, 54345, 346677, 3, 12, 140),
(164, 0, 0, 9900, 1, 11, 140),
(165, 0, 0, 6011, 2, 11, 140),
(166, 0, 0, 346331, 3, 12, 140),
(167, 0, 0, 9900, 1, 11, 140),
(168, 0, 0, 6011, 2, 11, 140),
(169, 0, 0, 346331, 3, 12, 140),
(170, 0, 0, 9900, 1, 11, 140),
(171, 0, 0, 6011, 2, 11, 140),
(172, 0, 0, 346331, 3, 12, 140),
(173, 0, 0, 9900, 1, 11, 140),
(174, 0, 0, 6011, 2, 11, 140),
(175, 0, 0, 346331, 3, 12, 140),
(176, 0, 0, 9900, 1, 11, 140),
(177, 0, 0, 6011, 2, 11, 140),
(178, 0, 0, 346331, 3, 12, 140),
(179, 0, 0, 9900, 1, 11, 140),
(180, 0, 0, 6011, 2, 11, 140),
(181, 0, 0, 346331, 3, 12, 140),
(182, 0, 0, 9900, 1, 11, 140),
(183, 0, 0, 6011, 2, 11, 140),
(184, 0, 0, 346331, 3, 12, 140),
(185, 0, 0, 9900, 1, 11, 140),
(186, 0, 0, 6011, 2, 11, 140),
(187, 0, 0, 346331, 3, 12, 140),
(191, 0, 0, 9900, 1, 11, 140),
(192, 0, 0, 6011, 2, 11, 140),
(193, 0, 0, 346331, 3, 12, 140),
(194, 0, 0, 9900, 1, 11, 140),
(195, 0, 0, 6011, 2, 11, 140),
(196, 0, 0, 346331, 3, 12, 140),
(197, 0, 0, 9900, 1, 11, 140),
(198, 0, 0, 9900, 1, 11, 140),
(199, 0, 0, 6011, 2, 11, 140),
(200, 0, 0, 346331, 3, 12, 140),
(201, 0, 0, 9900, 1, 11, 140),
(202, 0, 0, 6011, 2, 11, 140),
(203, 0, 0, 346331, 3, 12, 140),
(204, 0, 0, 9900, 1, 11, 140),
(205, 0, 0, 6011, 2, 11, 140),
(206, 0, 0, 346331, 3, 12, 140),
(207, 0, 0, 9900, 1, 11, 140),
(208, 0, 0, 6011, 2, 11, 140),
(209, 0, 0, 346331, 3, 12, 140),
(210, 0, 0, 9900, 1, 11, 140),
(211, 0, 0, 6011, 2, 11, 140),
(212, 0, 0, 346331, 3, 12, 140),
(213, 0, 0, 9900, 1, 11, 140),
(214, 0, 0, 6011, 2, 11, 140),
(215, 0, 0, 346331, 3, 12, 140),
(216, 0, 0, 9900, 1, 11, 140),
(217, 0, 0, 6011, 2, 11, 140),
(218, 0, 0, 346331, 3, 12, 140),
(219, 0, 0, 9900, 1, 11, 140),
(220, 0, 0, 6011, 2, 11, 140),
(221, 0, 0, 346331, 3, 12, 140),
(222, 0, 0, 9900, 1, 11, 140),
(223, 0, 0, 6011, 2, 11, 140),
(224, 0, 0, 346331, 3, 12, 140),
(225, 0, 0, 9900, 1, 11, 140),
(226, 0, 0, 6011, 2, 11, 140),
(227, 0, 0, 346331, 3, 12, 140),
(228, 0, 0, 9900, 1, 11, 140),
(229, 0, 0, 6011, 2, 11, 140),
(230, 0, 0, 346331, 3, 12, 140),
(231, 0, 0, 9900, 1, 11, 140),
(232, 0, 0, 6011, 2, 11, 140),
(233, 0, 0, 346331, 3, 12, 140),
(234, 0, 0, 9900, 1, 11, 140),
(235, 0, 0, 6011, 2, 11, 140),
(236, 0, 0, 346331, 3, 12, 140),
(237, 0, 0, 9900, 1, 11, 140),
(238, 0, 0, 6011, 2, 11, 140),
(239, 0, 0, 346331, 3, 12, 140),
(240, 0, 0, 9900, 1, 11, 140),
(241, 0, 0, 6011, 2, 11, 140),
(242, 0, 0, 346331, 3, 12, 140),
(243, 0, 0, 9900, 1, 11, 140),
(244, 0, 0, 6011, 2, 11, 140),
(245, 0, 0, 346331, 3, 12, 140),
(246, 0, 0, 9900, 1, 11, 140),
(247, 0, 0, 6011, 2, 11, 140),
(248, 0, 0, 346331, 3, 12, 140),
(249, 0, 0, 9900, 1, 11, 140),
(250, 0, 0, 6011, 2, 11, 140),
(251, 0, 0, 346331, 3, 12, 140),
(252, 0, 0, 9900, 1, 11, 140),
(253, 0, 0, 6011, 2, 11, 140),
(254, 0, 0, 346331, 3, 12, 140),
(255, 0, 0, 9900, 1, 11, 140),
(256, 0, 0, 6011, 2, 11, 140),
(257, 0, 0, 346331, 3, 12, 140),
(258, 0, 0, 9900, 1, 11, 140),
(259, 0, 0, 6011, 2, 11, 140),
(260, 0, 0, 346331, 3, 12, 140),
(261, 0, 0, 9900, 1, 11, 140),
(262, 0, 0, 6011, 2, 11, 140),
(263, 0, 0, 346331, 3, 12, 140),
(264, 0, 0, 9900, 1, 11, 140),
(265, 0, 0, 6011, 2, 11, 140),
(266, 0, 0, 346331, 3, 12, 140),
(267, 0, 0, 9900, 1, 11, 140),
(268, 0, 0, 6011, 2, 11, 140),
(269, 0, 0, 346331, 3, 12, 140),
(270, 0, 0, 9900, 1, 11, 140),
(271, 0, 0, 6011, 2, 11, 140),
(272, 0, 0, 346331, 3, 12, 140),
(273, 0, 0, 9900, 1, 11, 140),
(274, 0, 0, 6011, 2, 11, 140),
(275, 0, 0, 346331, 3, 12, 140),
(276, 0, 0, 9900, 1, 11, 140),
(277, 0, 0, 6011, 2, 11, 140),
(278, 0, 0, 346331, 3, 12, 140),
(279, 0, 0, 9900, 1, 11, 140),
(280, 0, 0, 6011, 2, 11, 140),
(281, 0, 0, 346331, 3, 12, 140),
(282, -10000, -1000, -100, 1, 11, 140),
(283, -35778, -1299, -667, 2, 11, 140),
(284, -34525, -54345, -346, 3, 12, 140),
(285, -10000, -1000, -100, 1, 11, 140),
(286, -35778, -1299, -667, 2, 11, 140),
(287, -10000, -1000, -100, 1, 11, 140),
(288, -35778, -1299, -667, 2, 11, 140),
(289, -34525, -54345, -346, 3, 12, 140),
(290, 0, 0, 0, 1, 11, 140),
(291, 0, 0, 0, 2, 11, 140),
(292, 0, 0, 0, 3, 12, 140),
(293, 0, 0, 0, 1, 11, 140),
(294, 0, 0, 0, 2, 11, 140),
(295, 0, 0, 0, 1, 11, 140),
(296, 0, 0, 0, 2, 11, 140),
(297, 0, 0, 0, 3, 12, 140),
(298, 0, 0, 0, 1, 11, 140),
(299, 0, 0, 0, 2, 11, 140),
(300, 0, 0, 0, 3, 12, 140),
(301, 0, 0, 0, 1, 11, 140),
(302, 0, 0, 0, 2, 11, 140),
(303, 0, 0, 0, 1, 11, 140),
(304, 0, 0, 0, 2, 11, 140),
(305, 0, 0, 0, 3, 12, 140),
(306, 0, 0, 0, 1, 11, 140),
(307, 0, 0, 0, 2, 11, 140),
(308, 0, 0, 0, 3, 12, 140),
(309, 0, 0, 0, 1, 11, 140),
(310, 0, 0, 0, 2, 11, 140),
(311, 0, 0, 0, 1, 11, 140),
(312, 0, 0, 0, 2, 11, 140),
(313, 0, 0, 0, 3, 12, 140),
(314, 0, 0, 0, 1, 11, 140),
(315, 0, 0, 0, 1, 11, 140),
(316, 0, 0, 0, 1, 11, 140),
(317, 0, 0, 0, 1, 11, 140),
(318, 0, 0, 0, 2, 11, 140),
(319, 0, 0, 0, 3, 12, 140),
(320, 0, 0, 0, 1, 11, 140),
(321, 0, 0, 0, 2, 11, 140),
(322, 0, 0, 0, 1, 11, 140),
(323, 0, 0, 0, 2, 11, 140),
(324, 0, 0, 0, 3, 12, 140),
(325, 0, 8540, 0, 1, 11, 140),
(326, 0, 0, 0, 2, 11, 140),
(327, 0, 0, 0, 3, 12, 140),
(328, 0, 0, 0, 1, 11, 140),
(329, 0, 0, 0, 2, 11, 140),
(330, 0, 0, 0, 1, 11, 140),
(331, 0, 0, 0, 2, 11, 140),
(332, 0, 0, 0, 3, 12, 140),
(333, 0, 0, 0, 1, 11, 140),
(334, 0, 0, 0, 2, 11, 140),
(335, 0, 0, 0, 3, 12, 140),
(336, 0, 0, 0, 1, 11, 140),
(349, 0, 0, 0, 1, 11, 140),
(350, 0, 0, 0, 2, 11, 140),
(351, 0, 0, 0, 3, 12, 140),
(352, 0, 0, 0, 1, 11, 140),
(353, 0, 0, 0, 2, 11, 140),
(354, 0, 0, 0, 1, 11, 140),
(355, 0, 0, 0, 2, 11, 140),
(356, 0, 0, 0, 3, 12, 140),
(357, 0, 0, 0, 1, 11, 140),
(358, 0, 0, 0, 2, 11, 140),
(359, 0, 0, 0, 3, 12, 140),
(360, 0, 0, 0, 1, 11, 140),
(361, 0, 0, 0, 2, 11, 140),
(362, 0, 0, 0, 1, 11, 140),
(363, 0, 0, 0, 2, 11, 140),
(364, 0, 0, 0, 3, 12, 140),
(365, 0, 0, 0, 1, 11, 140),
(366, 0, 0, 0, 2, 11, 140),
(367, 0, 0, 0, 3, 12, 140),
(368, 0, 0, 0, 1, 11, 140),
(369, 0, 0, 0, 2, 11, 140),
(370, 0, 0, 0, 1, 11, 140),
(371, 0, 0, 0, 2, 11, 140),
(372, 0, 0, 0, 3, 12, 140),
(373, 0, 0, 0, 1, 11, 140),
(374, 0, 0, 0, 2, 11, 140),
(375, 0, 0, 0, 3, 12, 140),
(376, 0, 0, 0, 1, 11, 140),
(377, 0, 0, 0, 2, 11, 140),
(378, 0, 0, 0, 1, 11, 140),
(379, 0, 0, 0, 2, 11, 140),
(380, 0, 0, 0, 3, 12, 140),
(381, 0, 0, 0, 1, 11, 140),
(382, 0, 0, 0, 2, 11, 140),
(383, 0, 0, 0, 3, 12, 140),
(384, 0, 0, 0, 1, 11, 140),
(385, 0, 0, 0, 2, 11, 140),
(386, 0, 0, 0, 1, 11, 140),
(387, 0, 0, 0, 2, 11, 140),
(388, 0, 0, 0, 3, 12, 140),
(389, 0, 0, 0, 1, 11, 140),
(390, 0, 0, 0, 2, 11, 140),
(391, 0, 0, 0, 3, 12, 140),
(392, 0, 0, 0, 1, 11, 140),
(393, 0, 0, 0, 2, 11, 140),
(394, 0, 0, 0, 1, 11, 140),
(395, 0, 0, 0, 2, 11, 140),
(396, 0, 0, 0, 3, 12, 140),
(397, 0, 0, 0, 1, 11, 140),
(398, 0, 0, 0, 2, 11, 140),
(399, 0, 0, 0, 3, 12, 140),
(400, 0, 0, 0, 1, 11, 140),
(401, 0, 0, 0, 2, 11, 140),
(402, 0, 0, 0, 1, 11, 140),
(403, 0, 0, 0, 2, 11, 140),
(404, 0, 0, 0, 3, 12, 140),
(405, 0, 0, 0, 1, 11, 140),
(406, 0, 0, 0, 2, 11, 140),
(407, 0, 0, 0, 3, 12, 140),
(408, 0, 0, 0, 1, 11, 140),
(409, 0, 0, 0, 2, 11, 140),
(410, 0, 0, 0, 1, 11, 140),
(411, 0, 0, 0, 2, 11, 140),
(412, 0, 0, 0, 3, 12, 140),
(413, 0, 0, 0, 1, 11, 140),
(414, 0, 0, 0, 2, 11, 140),
(415, 0, 0, 0, 3, 12, 140),
(416, 0, 0, 0, 1, 11, 140),
(417, 0, 0, 0, 2, 11, 140),
(418, 0, 0, 0, 1, 11, 140),
(419, 0, 0, 0, 2, 11, 140),
(420, 0, 0, 0, 3, 12, 140),
(421, 0, 0, 0, 1, 11, 140),
(422, 0, 0, 0, 1, 11, 140),
(423, 0, 0, 0, 1, 11, 140),
(424, 0, 0, 0, 2, 11, 140),
(425, 0, 0, 0, 3, 12, 140),
(426, 0, 0, 0, 1, 11, 140),
(427, 0, 0, 0, 2, 11, 140),
(428, 0, 0, 0, 1, 11, 140),
(429, 0, 0, 0, 2, 11, 140),
(430, 0, 0, 0, 3, 12, 140),
(431, 0, 0, 0, 1, 11, 140),
(432, 0, 0, 0, 2, 11, 140),
(433, 0, 0, 0, 3, 12, 140),
(434, 0, 0, 0, 1, 11, 140),
(435, 0, 0, 0, 2, 11, 140),
(436, 0, 0, 0, 1, 11, 140),
(437, 0, 0, 0, 2, 11, 140),
(438, 0, 0, 0, 3, 12, 140),
(439, 0, 0, 0, 1, 11, 140),
(440, 0, 0, 0, 2, 11, 140),
(441, 0, 0, 0, 3, 12, 140),
(442, 0, 0, 0, 1, 11, 140),
(443, 0, 0, 0, 2, 11, 140),
(444, 0, 0, 0, 1, 11, 140),
(445, 0, 0, 0, 2, 11, 140),
(446, 0, 0, 0, 3, 12, 140),
(447, 0, 0, 0, 1, 11, 140),
(448, 0, 0, 0, 2, 11, 140),
(449, 0, 0, 0, 3, 12, 140),
(450, 0, 0, 0, 1, 11, 140),
(451, 0, 0, 0, 2, 11, 140),
(452, 0, 0, 0, 1, 11, 140),
(453, 0, 0, 0, 2, 11, 140),
(454, 0, 0, 0, 3, 12, 140),
(455, 0, 0, 0, 1, 11, 140),
(456, 0, 0, 0, 2, 11, 140),
(457, 0, 0, 0, 3, 12, 140),
(458, 0, 0, 0, 1, 11, 140),
(459, 0, 0, 0, 2, 11, 140),
(460, 0, 0, 0, 1, 11, 140),
(461, 0, 0, 0, 2, 11, 140),
(462, 0, 0, 0, 3, 12, 140),
(463, 0, 0, 0, 1, 11, 140),
(464, 0, 0, 0, 2, 11, 140),
(465, 0, 0, 0, 3, 12, 140),
(466, 0, 0, 0, 1, 11, 140),
(467, 0, 0, 0, 2, 11, 140),
(468, 0, 0, 0, 1, 11, 140),
(469, 0, 0, 0, 2, 11, 140),
(470, 0, 0, 0, 3, 12, 140),
(471, 0, 0, 0, 1, 11, 140),
(472, 0, 0, 0, 2, 11, 140),
(473, 0, 0, 0, 3, 12, 140),
(474, 0, 0, 0, 1, 11, 140),
(475, 0, 0, 0, 2, 11, 140),
(476, 0, 0, 0, 1, 11, 140),
(477, 0, 0, 0, 2, 11, 140),
(478, 0, 0, 0, 3, 12, 140),
(479, 0, 0, 0, 1, 11, 140),
(480, 0, 0, 0, 2, 11, 140),
(481, 0, 0, 0, 3, 12, 140),
(482, 0, 0, 0, 1, 11, 140),
(483, 0, 0, 0, 2, 11, 140),
(484, 0, 0, 0, 1, 11, 140),
(485, 0, 0, 0, 2, 11, 140),
(486, 0, 0, 0, 3, 12, 140),
(487, 0, 0, 0, 1, 11, 140),
(488, 0, 0, 0, 2, 11, 140),
(489, 0, 0, 0, 3, 12, 140),
(490, 0, 0, 0, 1, 11, 140),
(491, 0, 0, 0, 2, 11, 140),
(492, 0, 0, 0, 1, 11, 140),
(493, 0, 0, 0, 2, 11, 140),
(494, 0, 0, 0, 3, 12, 140),
(495, 0, 0, 0, 1, 11, 140),
(496, 0, 0, 0, 2, 11, 140),
(497, 0, 0, 0, 3, 12, 140),
(498, 0, 0, 0, 1, 11, 140),
(499, 0, 0, 0, 2, 11, 140),
(500, 0, 0, 0, 1, 11, 140),
(501, 0, 0, 0, 2, 11, 140),
(502, 0, 0, 0, 3, 12, 140),
(503, 0, 0, 0, 1, 11, 140),
(504, 0, 0, 0, 2, 11, 140),
(505, 0, 0, 0, 3, 12, 140),
(506, 0, 0, 0, 1, 11, 140),
(507, 0, 0, 0, 2, 11, 140),
(508, 0, 0, 0, 1, 11, 140),
(509, 0, 0, 0, 2, 11, 140),
(510, 0, 0, 0, 3, 12, 140),
(511, 0, 0, 0, 1, 11, 140),
(512, 0, 0, 0, 2, 11, 140),
(513, 0, 0, 0, 3, 12, 140),
(514, 0, 0, 0, 1, 11, 140),
(515, 0, 0, 0, 2, 11, 140),
(516, 0, 0, 0, 1, 11, 140),
(517, 0, 0, 0, 2, 11, 140),
(518, 0, 0, 0, 3, 12, 140),
(519, 0, 0, 0, 1, 11, 140),
(520, 0, 0, 0, 2, 11, 140),
(521, 0, 0, 0, 3, 12, 140),
(522, 0, 0, 0, 1, 11, 140),
(523, 0, 0, 0, 2, 11, 140),
(524, 0, 0, 0, 1, 11, 140),
(525, 0, 0, 0, 2, 11, 140),
(526, 0, 0, 0, 3, 12, 140),
(527, 0, 0, 0, 1, 11, 140),
(528, 0, 0, 0, 2, 11, 140),
(529, 0, 0, 0, 3, 12, 140),
(530, 0, 0, 0, 1, 11, 140),
(531, 0, 0, 0, 2, 11, 140),
(532, 0, 0, 0, 1, 11, 140),
(533, 0, 0, 0, 2, 11, 140),
(534, 0, 0, 0, 3, 12, 140),
(535, 0, 0, 0, 1, 11, 140),
(536, 0, 0, 0, 2, 11, 140),
(537, 0, 0, 0, 3, 12, 140),
(538, 0, 0, 0, 1, 11, 140),
(539, 0, 0, 0, 2, 11, 140),
(540, 0, 0, 0, 1, 11, 140),
(541, 0, 0, 0, 2, 11, 140),
(542, 0, 0, 0, 3, 12, 140),
(543, 0, 0, 0, 1, 11, 140),
(544, 0, 0, 0, 2, 11, 140),
(545, 0, 0, 0, 3, 12, 140),
(546, 0, 0, 0, 1, 11, 140),
(547, 0, 0, 0, 2, 11, 140),
(548, 0, 0, 0, 1, 11, 140),
(549, 0, 0, 0, 2, 11, 140),
(550, 0, 0, 0, 3, 12, 140),
(551, 0, 0, 0, 1, 11, 140),
(552, 0, 0, 0, 2, 11, 140),
(553, 0, 0, 0, 3, 12, 140),
(554, 0, 0, 0, 1, 11, 140),
(555, 0, 0, 0, 2, 11, 140),
(556, 0, 0, 0, 1, 11, 140),
(557, 0, 0, 0, 2, 11, 140),
(558, 0, 0, 0, 3, 12, 140),
(559, 0, 0, 0, 1, 11, 140),
(560, 0, 0, 0, 2, 11, 140),
(561, 0, 0, 0, 3, 12, 140),
(562, 0, 0, 0, 1, 11, 140),
(563, 0, 0, 0, 2, 11, 140),
(564, 0, 0, 0, 1, 11, 140),
(565, 0, 0, 0, 2, 11, 140),
(566, 0, 0, 0, 3, 12, 140),
(567, 108564, 1000, 109028, 1, 11, 141),
(568, 32443, 123454, 23231, 2, 11, 141),
(569, 32133, 321333, 12434, 3, 12, 141),
(570, 0, 0, 108919, 1, 11, 142),
(571, 0, 0, 22999, 2, 11, 142),
(572, 0, 0, 12310, 3, 12, 142),
(573, -108564, -1000, -109, 1, 11, 142),
(574, -32443, -123454, -232, 2, 11, 142),
(575, -32133, -321300, -124, 3, 12, 142),
(576, -108564, -1000, -109, 1, 11, 142),
(577, -32443, -123454, -232, 2, 11, 142),
(578, -32133, -321333, -124, 3, 12, 142),
(579, -108550, -1000, 9902, 1, 11, 142),
(580, -32443, -123454, -232, 2, 11, 142),
(581, -32133, -321333, -124, 3, 12, 142),
(582, -14, 0, -100, 1, 11, 142),
(583, 0, 0, 0, 2, 11, 142),
(584, 0, 0, 0, 3, 12, 142),
(585, -14, 0, -100, 1, 11, 142),
(586, 0, 0, 0, 2, 11, 142),
(587, -32133, -321333, -124, 3, 12, 142),
(588, -108564, -1000, 9902, 1, 11, 142),
(589, -32443, -123454, -232, 2, 11, 142),
(590, -32133, -321333, -124, 3, 12, 142),
(591, -108564, -1000, 9902, 1, 11, 142),
(592, 0, 0, 0, 2, 11, 142),
(593, -32133, -321333, -124, 3, 12, 142),
(594, 0, 0, -100, 1, 11, 142),
(595, 0, 0, 0, 2, 11, 142),
(596, 0, 0, 0, 3, 12, 142),
(597, 0, 0, 0, 1, 11, 142),
(598, 0, 0, 0, 2, 11, 142),
(599, 0, 0, 0, 3, 12, 142),
(600, 1, 0, 10011, 1, 11, 142),
(601, 22, 0, 7004, 2, 11, 142),
(602, 39, 0, 1, 3, 12, 142),
(603, 0, 0, 9911, 1, 11, 142),
(604, 0, 0, 6304, 2, 11, 142),
(605, 0, 0, 0, 3, 12, 142),
(606, 0, 0, 9911, 1, 11, 142),
(607, 0, 0, 6304, 2, 11, 142),
(608, 0, 0, 0, 3, 12, 142),
(609, 0, 0, 9911, 1, 11, 142),
(610, 0, 0, 6304, 2, 11, 142),
(611, 0, 0, 0, 3, 12, 142),
(612, 0, 0, 9911, 1, 11, 142),
(613, 0, 0, 6304, 2, 11, 142),
(614, 0, 0, 0, 3, 12, 142),
(615, 0, 0, 9911, 1, 11, 142),
(616, 0, 0, 6304, 2, 11, 142),
(617, 0, 0, 0, 3, 12, 142),
(618, 0, 0, 9911, 1, 11, 142),
(619, 0, 0, 6304, 2, 11, 142),
(620, 0, 0, 0, 3, 12, 142),
(621, 0, 0, 9911, 1, 11, 142),
(622, 0, 0, 6304, 2, 11, 142),
(623, 0, 0, 0, 3, 12, 142),
(624, 0, 0, 9911, 1, 11, 142),
(625, 0, 0, 6304, 2, 11, 142),
(626, 0, 0, 0, 3, 12, 142),
(627, 0, 0, 9911, 1, 11, 142),
(628, 0, 0, 6304, 2, 11, 142),
(629, 0, 0, 0, 3, 12, 142),
(630, -108563, 7540, 9902, 1, 11, 142),
(631, -32421, -117506, 6772, 2, 11, 142),
(632, -32094, -214221, -123, 3, 12, 142),
(633, -103564, -950, -59, 1, 11, 143),
(634, -22443, -123354, -132, 2, 11, 143),
(635, -12133, -321133, 76, 3, 12, 143),
(636, -5000, 0, 40, 1, 11, 145),
(637, 0, 0, 0, 2, 11, 145),
(638, 0, 0, 0, 3, 12, 145),
(639, -5000, 0, 40, 1, 11, 145),
(640, 0, 0, 0, 2, 11, 145),
(641, 0, 0, 0, 3, 12, 145),
(642, 50000, 59900, 400, 2, 8, 145),
(643, 0, 0, 0, 2, 8, 145),
(644, 0, 0, 900, 3, 8, 145),
(645, 0, 0, 0, 2, 8, 145),
(646, 0, 0, 900, 3, 8, 145),
(647, 0, 0, 0, 2, 8, 145),
(648, 0, 0, 900, 3, 8, 145),
(649, 0, 0, 0, 2, 8, 145),
(650, 0, 0, 900, 3, 8, 145),
(651, 0, 0, 0, 2, 8, 145),
(652, 0, 0, 900, 3, 8, 145),
(653, 0, 0, 0, 2, 8, 145),
(654, 0, 0, 900, 3, 8, 145),
(655, 0, 0, 0, 6, 8, 147),
(656, 0, 0, 0, 6, 8, 147);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `station_id` int(11) NOT NULL,
  `station_name` varchar(30) NOT NULL,
  `station_location` varchar(30) NOT NULL,
  `station_phone` varchar(30) NOT NULL,
  `station_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`station_id`, `station_name`, `station_location`, `station_phone`, `station_email`) VALUES
(1, 'Joska', 'joska', '07000000', 'info@texas.com'),
(2, 'Nairobi', 'Nairobi', '07000000', 'info@texas.com'),
(3, 'kamulu', 'kamulu', '07000000', 'info@texas.com'),
(4, 'ruai service station', 'Ruai', '07000000', 'info@texas.com'),
(5, 'Bypass service station', 'Bypass', '070005252', 'info@texas.com'),
(6, 'choka 001', 'chokaa', '+254 794165133', 'ki@gmail.com'),
(7, 'njiru', 'njiru', '079947576484', 'njiru@gmail.com'),
(8, 'kayole', 'kayole', '098786576', 'kayole@gmail.com'),
(9, 'Umoja one service station', 'umoja', '74364562', 'umoja1@gmail.com'),
(10, 'Donholm', 'Donholm', '0986544', 'donholm@gmail.com'),
(11, 'Ruiru ', 'Ruiru', '08743567', 'ruiru@gmail.com'),
(12, 'embu', 'embu', '74364562', 'embu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `station_stock`
--

CREATE TABLE `station_stock` (
  `station_stock_id` int(11) NOT NULL,
  `station_stock_stock_id` int(30) NOT NULL,
  `station_stock_station_id` int(30) NOT NULL,
  `station_stock_capacity` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_product_id` int(30) NOT NULL,
  `stock_capacity` int(30) NOT NULL,
  `station_id` int(30) NOT NULL,
  `updated_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_product_id`, `stock_capacity`, `station_id`, `updated_date`) VALUES
(3, 3, 0, 0, NULL),
(4, 6, 0, 0, NULL),
(6, 5, 211, 3, '2023-11-10 00:00:00.000000'),
(7, 13, 23, 3, NULL),
(10, 4, 34, 3, '2023-11-10 00:00:00.000000'),
(12, 8, 1, 3, '2023-11-10 00:00:00.000000'),
(13, 7, 211, 3, '2023-11-10 00:00:00.000000'),
(14, 15, 21, 3, '2023-11-10 00:00:00.000000'),
(17, 21, 90, 3, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `stock_remaining`
--

CREATE TABLE `stock_remaining` (
  `remaining_id` int(11) NOT NULL,
  `remaining_stock` int(30) NOT NULL,
  `stock_product_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL,
  `updated_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_remaining`
--

INSERT INTO `stock_remaining` (`remaining_id`, `remaining_stock`, `stock_product_id`, `station_id`, `updated_date`) VALUES
(1, 247, 1, 3, '2023-11-01 21:00:00.000000'),
(3, -39, 4, 3, '2023-11-02 11:56:56.000000'),
(4, 50, 20, 3, '0000-00-00 00:00:00.000000'),
(5, 64, 21, 3, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer`
--

CREATE TABLE `stock_transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_capacity` int(30) NOT NULL,
  `transfer_stock_id` int(30) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `transfer_to` int(14) NOT NULL,
  `transfer_station_id` int(30) NOT NULL,
  `transfer_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_transfer`
--

INSERT INTO `stock_transfer` (`transfer_id`, `transfer_capacity`, `transfer_stock_id`, `transfer_date`, `transfer_to`, `transfer_station_id`, `transfer_shift_id`) VALUES
(1, 12, 1, '2023-07-11 00:00:00', 1, 0, 0),
(2, 12, 2, '2023-07-11 00:00:00', 1, 0, 0),
(3, 34, 1, '2023-07-11 19:08:47', 0, 0, 0),
(4, 34, 2, '2023-07-11 19:08:47', 0, 0, 0),
(5, 43, 1, '2023-07-12 12:35:46', 1, 0, 0),
(6, 43, 2, '2023-07-12 12:35:46', 1, 0, 0),
(7, 43, 3, '2023-07-12 12:35:46', 1, 0, 0),
(8, 2, 1, '2023-07-21 12:36:28', 1, 0, 0),
(9, 2, 2, '2023-07-21 12:36:28', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_phone` varchar(30) NOT NULL,
  `admin_staff_id` varchar(30) NOT NULL,
  `admin_login_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor_first_name` varchar(30) NOT NULL,
  `supervisor_last_name` varchar(30) NOT NULL,
  `supervisor_email` varchar(30) NOT NULL,
  `supervisor_phone` varchar(30) NOT NULL,
  `supervisor_national_id` varchar(30) NOT NULL,
  `supervisor_staff_id` varchar(30) NOT NULL,
  `supervisor_login_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisor_id`, `supervisor_first_name`, `supervisor_last_name`, `supervisor_email`, `supervisor_phone`, `supervisor_national_id`, `supervisor_staff_id`, `supervisor_login_id`) VALUES
(1, 'April', 'Wairimu', 'april@gmail.com', '+254 794165133', '23456', '788', 6),
(2, 'John', 'mwas', 'jmwas@gmail.com', '07927379846', '4359325', '65426', 1),
(3, 'June', 'Nduta', 'Nduta@gmail.com', '0789183747', '72346356', '238756', 5);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_allocation`
--

CREATE TABLE `supervisor_allocation` (
  `allocation_id` int(11) NOT NULL,
  `allocation_supervisor_id` int(30) NOT NULL,
  `allocation_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor_allocation`
--

INSERT INTO `supervisor_allocation` (`allocation_id`, `allocation_supervisor_id`, `allocation_station_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 1, 4),
(5, 1, 1),
(6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `tank_id` int(11) NOT NULL,
  `tank_code` varchar(30) NOT NULL,
  `tank_capacity` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`tank_id`, `tank_code`, `tank_capacity`) VALUES
(14, 'tk007', 123),
(15, 'TK002', 123),
(16, 'tk005', 123),
(17, 'tk008', 7578);

-- --------------------------------------------------------

--
-- Table structure for table `tank_allocation`
--

CREATE TABLE `tank_allocation` (
  `allocation_id` int(11) NOT NULL,
  `allocation_tank_id` int(30) NOT NULL,
  `allocation_station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tank_allocation`
--

INSERT INTO `tank_allocation` (`allocation_id`, `allocation_tank_id`, `allocation_station_id`) VALUES
(4, 15, 3),
(5, 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tank_content`
--

CREATE TABLE `tank_content` (
  `tank_content_id` int(11) NOT NULL,
  `tank_content_product_id` int(30) NOT NULL,
  `content_product_class_id` int(30) NOT NULL,
  `tank_content_product_type_id` int(30) NOT NULL,
  `tank_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tank_content`
--

INSERT INTO `tank_content` (`tank_content_id`, `tank_content_product_id`, `content_product_class_id`, `tank_content_product_type_id`, `tank_id`) VALUES
(3, 6, 4, 3, 14),
(4, 8, 4, 3, 15),
(5, 7, 4, 3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tank_pump`
--

CREATE TABLE `tank_pump` (
  `tank_pump_id` int(11) NOT NULL,
  `tank_id` int(30) NOT NULL,
  `pump_id` int(30) NOT NULL,
  `station_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tank_pump`
--

INSERT INTO `tank_pump` (`tank_pump_id`, `tank_id`, `pump_id`, `station_id`) VALUES
(59, 14, 3, 3),
(60, 16, 2, 2),
(61, 16, 1, 2),
(64, 15, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL,
  `tax` int(30) NOT NULL,
  `tax_product_code_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `transaction_payment_method_id` varchar(30) NOT NULL,
  `transaction_amount` int(30) NOT NULL,
  `transaction_date` datetime(6) NOT NULL,
  `transaction_vendor_id` int(30) NOT NULL,
  `transaction_cashier_id` int(30) NOT NULL,
  `transaction_station_id` int(30) NOT NULL,
  `transaction_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_type`, `transaction_payment_method_id`, `transaction_amount`, `transaction_date`, `transaction_vendor_id`, `transaction_cashier_id`, `transaction_station_id`, `transaction_shift_id`) VALUES
(1, '2', '2', 768, '2023-07-20 21:00:00.000000', 1, 1, 0, 0),
(2, '2', '2', 768, '2023-07-12 21:00:00.000000', 1, 1, 0, 0),
(3, '2', '2', 10000, '2023-07-17 21:00:00.000000', 1, 1, 0, 0),
(4, '2', '2', 10000, '2023-07-12 03:20:15.000000', 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trial`
--

CREATE TABLE `trial` (
  `trial_id` int(11) NOT NULL,
  `sales` int(30) NOT NULL,
  `profit` int(30) NOT NULL,
  `total` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trial`
--

INSERT INTO `trial` (`trial_id`, `sales`, `profit`, `total`) VALUES
(1, 2, 0, 2),
(2, 110, 890, 1000),
(3, 40, 70, 110),
(4, 2, 5, 7),
(5, 10, 6, 16),
(6, 5, 7, 12),
(7, 5, 10, 15),
(8, 0, 6, 6),
(9, 6, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_reg_no` varchar(30) NOT NULL,
  `vehicle_vendor_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_reg_no`, `vehicle_vendor_id`) VALUES
(1, 'KCG76456', 1),
(2, 'KCG76456', 2),
(3, 'KCG76456', 2),
(4, 'kbh 998k', 1),
(5, 'kbh 998k', 1),
(6, 'KBS ', 3),
(7, 'KBS ', 3),
(10, 'KDG2356', 3),
(11, 'KDG2356', 3),
(12, 'KDG2356', 2),
(13, 'KDG2356', 2),
(14, 'faith', 1),
(15, 'faith', 1),
(16, 'jg567h', 2),
(17, 'jg567h', 2),
(18, 'fs344', 2),
(19, 'fs344', 2),
(20, 'fs344', 2),
(21, 'fs344', 2),
(22, 'KDG2356', 1),
(23, 'kjh980', 2),
(24, 'kjh87', 4),
(25, 'knjk879', 2),
(26, 'KGF 552h', 2),
(27, '109028.4', 3),
(28, 'knjk879', 2),
(29, 'KDG2356', 2),
(30, '1', 2),
(31, 'KCG 006G', 1),
(32, '2131441', 2),
(33, 'KDG2356', 1),
(34, 'KDG2356', 1),
(35, '12233', 1),
(36, '221234', 2),
(37, 'KDG2356', 1),
(38, 'KDG2356', 2),
(39, 'KDG2356', 1),
(40, 'kjh 665r', 2),
(41, 'kjh 665r', 1),
(42, 'kjh 665r', 1),
(43, 'KlH 0098', 1),
(44, 'KDG2356', 1),
(45, 'KDG2356', 1),
(46, 'KDG2356', 2),
(47, 'KDG2356', 1),
(48, '', 0),
(49, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(30) NOT NULL,
  `vendor_mobile` varchar(30) NOT NULL,
  `vendor_email` varchar(30) NOT NULL,
  `vendor_address` varchar(30) NOT NULL,
  `vendor_pin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `vendor_mobile`, `vendor_email`, `vendor_address`, `vendor_pin`) VALUES
(1, 'Vivo', '949846945890', 'ki@gmail.com', '00122nqai', 'p48357t'),
(2, 'Shell', ' 070000000', 'ww@gmail.com', '00122nqai', 'p48357t'),
(3, 'Rubis', '078655445', 'rubis@gmail.com', '098776', '768789'),
(4, 'Total', '98786576', 'total@gmail.com', '455654', '54675'),
(5, 'lakeoil', '0766544355', 'lakeoil@gmail.com', '78976', '243565'),
(6, 'olla', '08766655544', 'olla@gmail.com', '32432', '32567'),
(7, 'hashi energy', '075655444', 'hashi@gmail.com', '44675', '5343'),
(8, 'ollashell', '98786576', 'ollashell@gmail.com', '32432', '243565'),
(9, 'ollaviva', '743645626768', 'ollaviva@gmail.com', '3243256', '5343'),
(10, 'hufoi energy', '08766655544', 'hufoi@gmail.com', '32432', '5343');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_account`
--

CREATE TABLE `vendor_account` (
  `vendor_account_id` int(11) NOT NULL,
  `vendor_acc_vendor_id` int(30) NOT NULL,
  `vendor_acc_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_account`
--

INSERT INTO `vendor_account` (`vendor_account_id`, `vendor_acc_vendor_id`, `vendor_acc_no`) VALUES
(1, 1, ' 437689'),
(2, 2, ' 437689'),
(3, 3, '76545476'),
(4, 4, '5378'),
(5, 5, '65789'),
(6, 6, '7864764'),
(7, 7, '243253'),
(8, 8, '65789'),
(9, 9, '65789678'),
(10, 10, '65789');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment`
--

CREATE TABLE `vendor_payment` (
  `vendor_payment_id` int(11) NOT NULL,
  `vendor_payment_vendor_acc_id` int(30) NOT NULL,
  `vendor_transaction_id` int(30) NOT NULL,
  `vendor_payment_station_id` int(30) NOT NULL,
  `vendor_payment_shift_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_payment`
--

INSERT INTO `vendor_payment` (`vendor_payment_id`, `vendor_payment_vendor_acc_id`, `vendor_transaction_id`, `vendor_payment_station_id`, `vendor_payment_shift_id`) VALUES
(1, 1, 5, 0, 0),
(2, 1, 6, 0, 0),
(3, 2, 7, 0, 0),
(4, 1, 8, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `allocation_point`
--
ALTER TABLE `allocation_point`
  ADD PRIMARY KEY (`allocation_point_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `cashier_station`
--
ALTER TABLE `cashier_station`
  ADD PRIMARY KEY (`cashier_station_id`),
  ADD KEY `station_id` (`station_id`),
  ADD KEY `cashier_station_ibfk_1` (`cashier_id`);

--
-- Indexes for table `credit_sale_details`
--
ALTER TABLE `credit_sale_details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `dip`
--
ALTER TABLE `dip`
  ADD PRIMARY KEY (`dip_id`),
  ADD KEY `dip_tank_content_id` (`dip_tank_content_id`),
  ADD KEY `dip_shift_id` (`dip_shift_id`),
  ADD KEY `dip_tank_id` (`dip_tank_id`),
  ADD KEY `dip_station_id` (`dip_station_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `fuel_capacity_control`
--
ALTER TABLE `fuel_capacity_control`
  ADD PRIMARY KEY (`capacity_control_id`),
  ADD KEY `content_fuel_product_id` (`content_fuel_product_id`);

--
-- Indexes for table `invoice_sales_details`
--
ALTER TABLE `invoice_sales_details`
  ADD PRIMARY KEY (`invoice_sales_details_id`);

--
-- Indexes for table `island_allocation`
--
ALTER TABLE `island_allocation`
  ADD PRIMARY KEY (`allocation_id`),
  ADD KEY `allocation_island_id` (`allocation_island_id`),
  ADD KEY `allocation_station_id` (`allocation_station_id`);

--
-- Indexes for table `island_none_fuel`
--
ALTER TABLE `island_none_fuel`
  ADD PRIMARY KEY (`island_nonefuel_id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `nonefuel_product_type_id` (`nonefuel_product_type_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `non_fuel_routine_sales`
--
ALTER TABLE `non_fuel_routine_sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `partial_sales`
--
ALTER TABLE `partial_sales`
  ADD PRIMARY KEY (`partial_sales_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`payment_mode_id`);

--
-- Indexes for table `performed_services`
--
ALTER TABLE `performed_services`
  ADD PRIMARY KEY (`performed_service_id`);

--
-- Indexes for table `product_classes`
--
ALTER TABLE `product_classes`
  ADD PRIMARY KEY (`product_class_id`);

--
-- Indexes for table `product_codes`
--
ALTER TABLE `product_codes`
  ADD PRIMARY KEY (`product_code_id`);

--
-- Indexes for table `product_name`
--
ALTER TABLE `product_name`
  ADD PRIMARY KEY (`product_item_id`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `price_product_id` (`price_product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`pump_id`);

--
-- Indexes for table `pump_allocation`
--
ALTER TABLE `pump_allocation`
  ADD PRIMARY KEY (`allocation_id`);

--
-- Indexes for table `pump_island`
--
ALTER TABLE `pump_island`
  ADD PRIMARY KEY (`pump_island_id`);

--
-- Indexes for table `pump_meter_reading`
--
ALTER TABLE `pump_meter_reading`
  ADD PRIMARY KEY (`reading_id`);

--
-- Indexes for table `pump_routine`
--
ALTER TABLE `pump_routine`
  ADD PRIMARY KEY (`pump_routine_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchases_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `reconcilliation`
--
ALTER TABLE `reconcilliation`
  ADD PRIMARY KEY (`reconcilliation_id`);

--
-- Indexes for table `routine_cashier`
--
ALTER TABLE `routine_cashier`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `routine_cashier_island`
--
ALTER TABLE `routine_cashier_island`
  ADD PRIMARY KEY (`cashier_island_id`);

--
-- Indexes for table `routine_cashier_type`
--
ALTER TABLE `routine_cashier_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `routine_island`
--
ALTER TABLE `routine_island`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `routine_islandpump_cashier`
--
ALTER TABLE `routine_islandpump_cashier`
  ADD PRIMARY KEY (`pump_routine`);

--
-- Indexes for table `routine_supervisor`
--
ALTER TABLE `routine_supervisor`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_desc`
--
ALTER TABLE `sales_desc`
  ADD PRIMARY KEY (`sales_desc_id`);

--
-- Indexes for table `sales_reconciliation`
--
ALTER TABLE `sales_reconciliation`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `shift_pump_sales`
--
ALTER TABLE `shift_pump_sales`
  ADD PRIMARY KEY (`pump_sales_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `station_stock`
--
ALTER TABLE `station_stock`
  ADD PRIMARY KEY (`station_stock_id`),
  ADD KEY `station_stock_stock_id` (`station_stock_stock_id`),
  ADD KEY `station_stock_station_id` (`station_stock_station_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `stock_product_id` (`stock_product_id`);

--
-- Indexes for table `stock_remaining`
--
ALTER TABLE `stock_remaining`
  ADD PRIMARY KEY (`remaining_id`);

--
-- Indexes for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- Indexes for table `supervisor_allocation`
--
ALTER TABLE `supervisor_allocation`
  ADD PRIMARY KEY (`allocation_id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`tank_id`);

--
-- Indexes for table `tank_allocation`
--
ALTER TABLE `tank_allocation`
  ADD PRIMARY KEY (`allocation_id`),
  ADD KEY `allocation_tank_id` (`allocation_tank_id`),
  ADD KEY `allocation_station_id` (`allocation_station_id`);

--
-- Indexes for table `tank_content`
--
ALTER TABLE `tank_content`
  ADD PRIMARY KEY (`tank_content_id`),
  ADD KEY `tank_content_product_id` (`tank_content_product_id`),
  ADD KEY `tank_content_product_type_id` (`tank_content_product_type_id`),
  ADD KEY `tank_id` (`tank_id`),
  ADD KEY `content_product_class_id` (`content_product_class_id`);

--
-- Indexes for table `tank_pump`
--
ALTER TABLE `tank_pump`
  ADD PRIMARY KEY (`tank_pump_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `trial`
--
ALTER TABLE `trial`
  ADD PRIMARY KEY (`trial_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_account`
--
ALTER TABLE `vendor_account`
  ADD PRIMARY KEY (`vendor_account_id`);

--
-- Indexes for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  ADD PRIMARY KEY (`vendor_payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `allocation_point`
--
ALTER TABLE `allocation_point`
  MODIFY `allocation_point_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cashier_station`
--
ALTER TABLE `cashier_station`
  MODIFY `cashier_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_sale_details`
--
ALTER TABLE `credit_sale_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dip`
--
ALTER TABLE `dip`
  MODIFY `dip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_capacity_control`
--
ALTER TABLE `fuel_capacity_control`
  MODIFY `capacity_control_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `invoice_sales_details`
--
ALTER TABLE `invoice_sales_details`
  MODIFY `invoice_sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `island_allocation`
--
ALTER TABLE `island_allocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `island_none_fuel`
--
ALTER TABLE `island_none_fuel`
  MODIFY `island_nonefuel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `non_fuel_routine_sales`
--
ALTER TABLE `non_fuel_routine_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `partial_sales`
--
ALTER TABLE `partial_sales`
  MODIFY `partial_sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `payment_mode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `performed_services`
--
ALTER TABLE `performed_services`
  MODIFY `performed_service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_classes`
--
ALTER TABLE `product_classes`
  MODIFY `product_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_codes`
--
ALTER TABLE `product_codes`
  MODIFY `product_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_name`
--
ALTER TABLE `product_name`
  MODIFY `product_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_price`
--
ALTER TABLE `product_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `pump_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pump_allocation`
--
ALTER TABLE `pump_allocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pump_island`
--
ALTER TABLE `pump_island`
  MODIFY `pump_island_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pump_meter_reading`
--
ALTER TABLE `pump_meter_reading`
  MODIFY `reading_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT for table `pump_routine`
--
ALTER TABLE `pump_routine`
  MODIFY `pump_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchases_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reconcilliation`
--
ALTER TABLE `reconcilliation`
  MODIFY `reconcilliation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `routine_cashier`
--
ALTER TABLE `routine_cashier`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `routine_cashier_island`
--
ALTER TABLE `routine_cashier_island`
  MODIFY `cashier_island_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `routine_cashier_type`
--
ALTER TABLE `routine_cashier_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `routine_island`
--
ALTER TABLE `routine_island`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `routine_islandpump_cashier`
--
ALTER TABLE `routine_islandpump_cashier`
  MODIFY `pump_routine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `routine_supervisor`
--
ALTER TABLE `routine_supervisor`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sales_desc`
--
ALTER TABLE `sales_desc`
  MODIFY `sales_desc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_reconciliation`
--
ALTER TABLE `sales_reconciliation`
  MODIFY `sales_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `shift_pump_sales`
--
ALTER TABLE `shift_pump_sales`
  MODIFY `pump_sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `station_stock`
--
ALTER TABLE `station_stock`
  MODIFY `station_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stock_remaining`
--
ALTER TABLE `stock_remaining`
  MODIFY `remaining_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supervisor_allocation`
--
ALTER TABLE `supervisor_allocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `tank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tank_allocation`
--
ALTER TABLE `tank_allocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tank_content`
--
ALTER TABLE `tank_content`
  MODIFY `tank_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tank_pump`
--
ALTER TABLE `tank_pump`
  MODIFY `tank_pump_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trial`
--
ALTER TABLE `trial`
  MODIFY `trial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_account`
--
ALTER TABLE `vendor_account`
  MODIFY `vendor_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  MODIFY `vendor_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cashier_station`
--
ALTER TABLE `cashier_station`
  ADD CONSTRAINT `cashier_station_ibfk_1` FOREIGN KEY (`cashier_id`) REFERENCES `cashier` (`cashier_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cashier_station_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dip`
--
ALTER TABLE `dip`
  ADD CONSTRAINT `dip_ibfk_1` FOREIGN KEY (`dip_tank_content_id`) REFERENCES `product_name` (`product_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dip_ibfk_2` FOREIGN KEY (`dip_shift_id`) REFERENCES `shift` (`shift_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dip_ibfk_3` FOREIGN KEY (`dip_tank_id`) REFERENCES `tank` (`tank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dip_ibfk_4` FOREIGN KEY (`dip_station_id`) REFERENCES `station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fuel_capacity_control`
--
ALTER TABLE `fuel_capacity_control`
  ADD CONSTRAINT `fuel_capacity_control_ibfk_1` FOREIGN KEY (`content_fuel_product_id`) REFERENCES `product_name` (`product_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `island_allocation`
--
ALTER TABLE `island_allocation`
  ADD CONSTRAINT `island_allocation_ibfk_1` FOREIGN KEY (`allocation_island_id`) REFERENCES `allocation_point` (`allocation_point_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `island_allocation_ibfk_2` FOREIGN KEY (`allocation_station_id`) REFERENCES `station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `island_none_fuel`
--
ALTER TABLE `island_none_fuel`
  ADD CONSTRAINT `island_none_fuel_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `allocation_point` (`allocation_point_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `island_none_fuel_ibfk_2` FOREIGN KEY (`nonefuel_product_type_id`) REFERENCES `product_type` (`product_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_price`
--
ALTER TABLE `product_price`
  ADD CONSTRAINT `product_price_ibfk_1` FOREIGN KEY (`price_product_id`) REFERENCES `product_name` (`product_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `station_stock`
--
ALTER TABLE `station_stock`
  ADD CONSTRAINT `station_stock_ibfk_1` FOREIGN KEY (`station_stock_stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `station_stock_ibfk_2` FOREIGN KEY (`station_stock_station_id`) REFERENCES `station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`stock_product_id`) REFERENCES `product_name` (`product_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tank_allocation`
--
ALTER TABLE `tank_allocation`
  ADD CONSTRAINT `tank_allocation_ibfk_1` FOREIGN KEY (`allocation_tank_id`) REFERENCES `tank` (`tank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tank_allocation_ibfk_2` FOREIGN KEY (`allocation_station_id`) REFERENCES `station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tank_content`
--
ALTER TABLE `tank_content`
  ADD CONSTRAINT `tank_content_ibfk_1` FOREIGN KEY (`tank_content_product_id`) REFERENCES `product_name` (`product_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tank_content_ibfk_2` FOREIGN KEY (`tank_content_product_type_id`) REFERENCES `product_type` (`product_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tank_content_ibfk_3` FOREIGN KEY (`tank_id`) REFERENCES `tank` (`tank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tank_content_ibfk_4` FOREIGN KEY (`content_product_class_id`) REFERENCES `product_classes` (`product_class_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
