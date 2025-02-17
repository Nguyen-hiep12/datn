-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2024 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `Brand_ID` int(11) NOT NULL,
  `Brand_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`Brand_ID`, `Brand_Name`) VALUES
(1, 'Sunhouse'),
(2, 'Kangaroo'),
(3, 'SATO'),
(4, 'Philips'),
(5, 'Bluestone'),
(6, 'Goldsuni');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(255) DEFAULT NULL,
  `Category_Image` varchar(255) NOT NULL,
  `Show_Hidden` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Category_ID`, `Category_Name`, `Category_Image`, `Show_Hidden`) VALUES
(1, 'Bếp điện', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSwYx4UQC79mfs1VKJAfNtx31lxRKuXxoP7biKtnLfgEi3qFvRaKHwcqgprauZdKOrRJhesNaqA64MMPVHRW-PLbS8eoIPluehKD1ovAY3mEC4gffgRQuOc&usqp=CAE', 1),
(2, 'Máy xay sinh tố', 'https://bizweb.dktcdn.net/thumb/small/100/489/006/collections/ble3888dg-01-1-removebg-preview.png?v=1714036125620', 1),
(3, 'Nồi các loại', 'https://bizweb.dktcdn.net/thumb/small/100/489/006/collections/el8267-01-4.jpg?v=1721032201707', 1),
(4, 'Dao', 'https://bizweb.dktcdn.net/thumb/small/100/489/006/collections/el-8404aw-01-removebg-preview.png?v=1714613768520', 1),
(5, 'Lò vi sóng\r\n', 'https://images.samsung.com/is/image/samsung/vn-microwaves-oven-grill-mg23t5018ck-mg23t5018ck-sv-frontblack-224905868?$2052_1641_PNG$', 1),
(6, 'Máy hút bụi', 'https://product.hstatic.net/200000661969/product/may_hut_bui_philips_fc935001_powerpro_compact__11__8bb9f18c44d641c98cf890624ed22038_grande.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Voucher_ID` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `payment_method` enum('COD','Online') DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_quantity` int(11) DEFAULT 0,
  `Note` varchar(255) DEFAULT NULL,
  `canceled_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Order_ID`, `User_ID`, `Voucher_ID`, `Status`, `Email`, `Phone`, `User_Name`, `Address`, `payment_method`, `total_amount`, `created_at`, `total_quantity`, `Note`, `canceled_reason`) VALUES
(1, 3, 1, 5, 'sangnmps34186@fpt.edu.vn', '123', 'MinhSang123', '123-Phần mềm Quang Trung\r\n', NULL, 100000, '2024-10-08 15:36:02', 3, NULL, NULL),
(2, 29, 1, 5, 'nguyenhiep12062004@gmail.com', '123', 'Hiep12345', '123-Phần mềm Quang Trung\r\n', NULL, 100000, '2024-10-01 15:36:02', 6, NULL, NULL),
(3, 2, NULL, 5, 'sangnmps34186@fpt.edu.vn', '1323', NULL, '123abc', 'COD', 17567500, '2024-11-10 05:26:00', 10, NULL, NULL),
(4, 2, NULL, 1, 'sangnmps34186@fpy.edu.vn', '1323', NULL, '123abc', 'COD', 17567500, '2024-11-15 05:30:11', 10, 'ádfdsfd', NULL),
(5, 2, NULL, 1, 'sangnmps34186@fpy.edu.vn', '1323', NULL, '123abc', 'COD', NULL, '2024-11-15 06:01:42', 5, NULL, NULL),
(6, 2, NULL, 1, 'sangnmps34186@fpy.edu.vn', '1323', NULL, '123abc', 'COD', NULL, '2024-11-15 06:05:32', 5, 'sfdshdfuhgoierhgior', NULL),
(7, 2, NULL, 1, 'sangnmm1', '1323', NULL, '123abc', 'COD', 102920000, '2024-11-15 06:28:25', 5, 'sdjskdkjf', NULL),
(8, 2, NULL, 1, 'sangnmm1', '1323', NULL, '123abc', 'COD', 20588000, '2024-11-15 09:39:00', 0, NULL, NULL),
(9, 2, 1, 1, 'sangnmm1', '1323', NULL, '123abc', 'COD', 20588000, '2024-11-15 09:41:30', 0, NULL, NULL),
(10, 2, 1, 1, 'sangnmm1', '1323', NULL, '123abc', 'COD', 20588000, '2024-11-15 09:44:54', NULL, 'sdgdfgdfgdfgfd', NULL),
(11, 2, 1, 1, 'sangnmps34186@fpt.edu.vn', '0332122375', NULL, '123abc', 'COD', 32475000, '2024-11-15 09:52:11', 3, 'àghyrtyht', NULL),
(12, 2, 1, 1, 'sangnmps34186@fpt.edu.vnn', '123abc1', '132323423', 'Nguyễn MInh Sang', 'COD', 92450000, '2024-11-15 09:56:36', 10, 'ádasdasdasdas', NULL),
(13, 2, NULL, 1, 'sangnmps34186@fpt.edu.vnn', '123abc1', '132323423', 'Nguyễn MInh Sang', 'COD', 92450000, '2024-11-15 09:57:33', 10, NULL, NULL),
(14, 2, 1, 1, 'sangnmps34186@fpy.edu.vn', '123abc', '1323', 'Nguyễn MInh Sang', 'COD', 6375000, '2024-11-15 10:17:06', 5, 'sdfgdfghdfg', NULL),
(15, 2, NULL, 1, 'sangnmps34186@fpy.edu.vn', '123abc', '1323', 'Nguyễn MInh Sang', 'COD', 12750000, '2024-11-15 10:17:26', 5, NULL, NULL),
(20, 37, 10, 5, 'sangnmps34186@fpt.edu.vnn', '123abc1', '1111111111111111', 'Nguyễn MInh Sang', 'COD', 492150, '2024-11-24 04:50:25', 1, NULL, NULL),
(21, 39, NULL, 1, 'sangnmps34186@fpy.edu.vn', '1111111111111', 'Nguyễn MInh Sang', '123abc', 'COD', 1380000, '2024-11-26 12:49:29', 2, 'giao vào giờ nghĩ trưa', NULL),
(22, 39, 15, 1, 'sangnmps34186@fpy.edu.vn', '1111111111111', 'Nguyễn MInh Sang', '123abc', 'COD', 1173000, '2024-11-26 12:50:09', 2, 'giao vào giờ nghĩ trưa', NULL),
(23, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'COD', 1590000, '2024-12-05 05:51:57', 1, NULL, NULL),
(24, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'COD', 125000, '2024-12-05 08:03:25', 1, NULL, NULL),
(25, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 125000, '2024-12-05 08:03:33', 1, NULL, NULL),
(26, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 125000, '2024-12-05 08:04:23', 1, NULL, NULL),
(27, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 125000, '2024-12-05 08:04:54', 1, NULL, NULL),
(28, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 125000, '2024-12-05 08:06:15', 1, NULL, NULL),
(29, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc1', 'Online', 1990000, '2024-12-05 09:07:15', 1, NULL, NULL),
(30, 39, NULL, 1, 'minhsangg0311@gmail.com', '0123456789', 'Nguyễn MInh Sang', '123abc1', 'Online', 1990000, '2024-12-05 09:14:22', 1, NULL, NULL),
(31, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 08:53:11', 1, NULL, NULL),
(32, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 08:54:11', 1, NULL, NULL),
(33, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 08:57:34', 1, NULL, NULL),
(34, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:04:01', 1, NULL, NULL),
(35, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:07:06', 1, NULL, NULL),
(36, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:11:15', 1, NULL, NULL),
(37, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:14:10', 1, NULL, NULL),
(38, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:15:24', 1, NULL, NULL),
(39, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:17:35', 1, NULL, NULL),
(40, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '124124234', 'nậksfkjask', 'ádas12', 'Online', 1500000, '2024-12-06 09:20:01', 1, NULL, NULL),
(41, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:29:18', 1, NULL, NULL),
(42, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:35:02', 1, NULL, NULL),
(43, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:35:57', 1, NULL, NULL),
(44, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:37:18', 1, NULL, NULL),
(45, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:38:52', 1, NULL, NULL),
(46, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:38:56', 1, NULL, NULL),
(47, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:39:42', 1, NULL, NULL),
(48, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:41:18', 1, NULL, NULL),
(49, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:43:06', 1, NULL, NULL),
(50, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:44:06', 1, NULL, NULL),
(51, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:44:35', 1, NULL, NULL),
(52, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 05:50:07', 1, NULL, NULL),
(53, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 06:09:39', 1, NULL, NULL),
(54, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 06:12:20', 1, NULL, NULL),
(55, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 06:19:44', 1, NULL, NULL),
(56, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1500000, '2024-12-07 06:27:10', 1, NULL, NULL),
(57, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 579000, '2024-12-07 06:35:34', 1, NULL, NULL),
(58, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'COD', 579000, '2024-12-07 06:36:29', 1, NULL, NULL),
(59, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'COD', 1590000, '2024-12-07 06:38:48', 1, NULL, NULL),
(60, 39, NULL, 1, 'sangnmps34186@fpt.edu.vn', '0123456789', 'ádfsdf', 'qwesd', 'Online', 1590000, '2024-12-07 06:39:06', 1, NULL, NULL),
(61, 39, NULL, 1, 'sangnmps34186@fpt.edu.vnn', '0332122375', 'Nguyễn MInh Sang', '123abc', 'COD', 125000, '2024-12-09 12:02:47', 1, NULL, NULL),
(62, 39, NULL, 1, 'sangnmps34186@fpt.edu.vnn', '0332122375', 'Nguyễn MInh Sang', '123abc', 'COD', 125000, '2024-12-09 12:04:26', 1, NULL, NULL),
(63, 39, NULL, 1, 'sangnmps34186@fpy.edu.vn', '0332122375', 'Nguyễn MInh Sang', '123abc', 'Online', 125000, '2024-12-09 12:05:55', 1, NULL, NULL),
(64, 39, NULL, 1, 'sangnmps34186@fpt.edu.vnn', '0123456789', 'Nguyễn MInh Sang1', '123abc1', 'COD', 3905000, '2024-12-09 12:33:52', 3, NULL, NULL),
(65, 39, NULL, 1, 'sangnmps34186@fpt.edu.vnn', '0123456789', 'Nguyễn MInh Sang1', '123abc1', 'COD', 3905000, '2024-12-09 12:41:55', 3, NULL, NULL),
(66, 39, NULL, 1, 'sangnmps34186@fpy.edu.vn', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 3905000, '2024-12-10 04:46:54', 3, NULL, NULL),
(67, 39, NULL, 1, 'sangnmps34186@fpy.edu.vn', '0123456789', 'Nguyễn MInh Sang', '123abc', 'Online', 8, '2024-12-10 04:49:03', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `Order_Detail_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`Order_Detail_ID`, `Order_ID`, `Product_ID`, `Product_Name`, `Price`, `Quantity`) VALUES
(1, 1, 1, 'sang', 9999.00, 5),
(2, 3, 17, NULL, 3237000.00, 5),
(3, 3, 47, NULL, 276500.00, 5),
(4, 4, 17, NULL, 3237000.00, 5),
(5, 4, 47, NULL, 276500.00, 5),
(6, 5, 11, NULL, 37450000.00, 1),
(7, 5, 12, NULL, 13750000.00, 1),
(8, 5, 13, NULL, 17240000.00, 3),
(9, 6, 11, NULL, 37450000.00, 1),
(10, 6, 12, NULL, 13750000.00, 1),
(11, 6, 13, NULL, 17240000.00, 3),
(12, 7, 11, NULL, 37450000.00, 1),
(13, 7, 12, NULL, 13750000.00, 1),
(14, 7, 13, NULL, 17240000.00, 3),
(15, 8, 76, NULL, 852000.00, 1),
(16, 8, 11, NULL, 37450000.00, 1),
(17, 8, 1, NULL, 1500000.00, 1),
(18, 8, 49, NULL, 474000.00, 1),
(19, 8, 77, NULL, 900000.00, 1),
(20, 20, 76, NULL, 852000.00, 1),
(21, 9, 11, NULL, 37450000.00, 1),
(22, 9, 1, NULL, 1500000.00, 1),
(23, 9, 49, NULL, 474000.00, 1),
(24, 9, 77, NULL, 900000.00, 1),
(27, 10, 1, NULL, 1500000.00, 1),
(28, 10, 49, NULL, 474000.00, 1),
(29, 10, 77, NULL, 900000.00, 1),
(30, 11, 11, NULL, 37450000.00, 1),
(31, 11, 12, NULL, 13750000.00, 2),
(32, 12, 11, NULL, 37450000.00, 2),
(33, 12, 12, NULL, 13750000.00, 8),
(34, 13, 11, NULL, 37450000.00, 2),
(35, 13, 12, NULL, 13750000.00, 8),
(36, 14, 1, NULL, 1500000.00, 2),
(37, 14, 3, NULL, 3250000.00, 3),
(38, 15, 1, NULL, 1500000.00, 2),
(39, 15, 3, NULL, 3250000.00, 3),
(46, 20, 21, NULL, 579000.00, 1),
(47, 21, 50, NULL, 690000.00, 2),
(48, 22, 50, NULL, 690000.00, 2),
(49, 23, 32, NULL, 1590000.00, 1),
(50, 24, 26, NULL, 125000.00, 1),
(51, 25, 26, NULL, 125000.00, 1),
(52, 26, 26, NULL, 125000.00, 1),
(53, 27, 26, NULL, 125000.00, 1),
(54, 28, 26, NULL, 125000.00, 1),
(55, 29, 31, NULL, 1990000.00, 1),
(56, 30, 31, NULL, 1990000.00, 1),
(57, 31, 1, NULL, 1500000.00, 1),
(58, 32, 1, NULL, 1500000.00, 1),
(59, 33, 1, NULL, 1500000.00, 1),
(60, 34, 1, NULL, 1500000.00, 1),
(61, 35, 1, NULL, 1500000.00, 1),
(62, 36, 1, NULL, 1500000.00, 1),
(63, 37, 1, NULL, 1500000.00, 1),
(64, 38, 1, NULL, 1500000.00, 1),
(65, 39, 1, NULL, 1500000.00, 1),
(66, 40, 1, NULL, 1500000.00, 1),
(67, 41, 1, NULL, 1500000.00, 1),
(68, 42, 1, NULL, 1500000.00, 1),
(69, 43, 1, NULL, 1500000.00, 1),
(70, 44, 1, NULL, 1500000.00, 1),
(71, 45, 1, NULL, 1500000.00, 1),
(72, 46, 1, NULL, 1500000.00, 1),
(73, 47, 1, NULL, 1500000.00, 1),
(74, 48, 1, NULL, 1500000.00, 1),
(75, 50, 1, NULL, 1500000.00, 1),
(76, 51, 1, NULL, 1500000.00, 1),
(77, 52, 1, NULL, 1500000.00, 1),
(78, 53, 1, NULL, 1500000.00, 1),
(79, 54, 1, NULL, 1500000.00, 1),
(80, 55, 1, NULL, 1500000.00, 1),
(81, 56, 1, NULL, 1500000.00, 1),
(82, 57, 21, NULL, 579000.00, 1),
(83, 58, 21, NULL, 579000.00, 1),
(84, 59, 32, NULL, 1590000.00, 1),
(85, 60, 32, NULL, 1590000.00, 1),
(86, 61, 26, NULL, 125000.00, 1),
(87, 62, 26, NULL, 125000.00, 1),
(88, 63, 26, NULL, 125000.00, 1),
(89, 64, 26, NULL, 125000.00, 1),
(90, 64, 32, NULL, 1590000.00, 1),
(91, 64, 33, NULL, 2190000.00, 1),
(92, 65, 26, NULL, 125000.00, 1),
(93, 65, 32, NULL, 1590000.00, 1),
(94, 65, 33, NULL, 2190000.00, 1),
(95, 66, 26, NULL, 125000.00, 1),
(96, 66, 32, NULL, 1590000.00, 1),
(97, 66, 33, NULL, 2190000.00, 1),
(98, 67, 91, NULL, 8.19, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `Status_ID` int(11) NOT NULL,
  `Status_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`Status_ID`, `Status_Name`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Đã xác nhận'),
(3, 'Đang chuẩn bị hàng'),
(4, 'Đang vận chuyển'),
(5, 'Đã giao hàng'),
(6, 'Đã hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Promotion` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Views` int(11) DEFAULT NULL,
  `Show_Hidden` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`Product_ID`, `Category_ID`, `Brand_ID`, `Product_Name`, `Description`, `Promotion`, `Price`, `Image`, `Views`, `Show_Hidden`) VALUES
(1, 2, 1, 'Máy làm sữa hạt RANBEM RB-769S đa tính năng update', '– Mã sp: RB-769S 12 tính năng\r\n– Vật liệu Cối: Thủy tinh chịu lực, chịu nhiệt cao\r\n– Dung tích Cối: 1,75 lít\r\n– Tổng công suất: 1500W; công suất nấu 800W; công suất xay 700W\r\n– Điện áp 220V-50Hz\r\n– Tốc độ vòng quay: 48.000 vòng/phút\r\n– Kích thước: 232x200', 0, 1500000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-s%E1%BB%AFa-h%E1%BA%A1t-Ranbem-769S-790x790.jpg', 12, 1),
(3, 2, 1, 'MÁY XAY CÔNG NGHIỆP GERTECH GT-2268', '–Tên sp: Máy Xay Công Nghiệp Gertech – Mã sp: GT-2268 – Công dụng: Xay hạt khô, cà phê, các loại đậu; xay thịt, cá, xương; xay hoa quả, sinh tố, sữa lắc…– Vật liệu Cối: Nhựa cứng chịu lực, chịu nhiệt cao– Dung tích Cối: 2,2 lít– Bộ dao: 4 lưỡi– ', 0, 3250000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-1.jpg', 56, 1),
(4, 2, 1, 'Máy Xay Nấu Cách Âm Chống Ồn Đa Năng GERTECH GT-686 Chính Hãng', '– Tên SP: Máy Xay Nấu Cách Âm Chống Ồn Đa Năng GERTECH\r\n– Mã SP: GT-686\r\n– Trọng lượng: 3,5 kg\r\n– Thể tích: 1,75 lít\r\n– Công suất: 800W (Xay) – 800W (Làm nóng)\r\n– 09 tốc độ xay; 08 chương trình chế biến thực phẩm; Cùng chức năng tùy chỉnh tốc độ, thời gia', 0, 4950000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2022/07/M%C3%A1y-xay-n%E1%BA%A5u-%C4%91%E1%BB%99-%E1%BB%93n-th%E1%BA%A5p-GT-008.png', 23, 1),
(5, 2, 4, 'Máy xay nấu sữa hạt RANBEM RB-775\r\n', '– Mã sp: RB-775\r\n– Vật liệu Cối: Thủy tinh chịu lực, chịu nhiệt cao\r\n– Dung tích Cối: 1,2 lít\r\n– Tổng công suất: 1600W; công suất nấu 800W; công suất xay 800W\r\n– Điện áp 220V-50Hz\r\n– Tốc độ vòng quay: 58.000 vòng/phút\r\n– Kích thước: 180x180x465mm\r\n– Công ', 0, 1300000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-s%E1%BB%AFa-h%E1%BA%A1t-Ranbem-775-v%C3%A0ng-n%C3%A2u-790x790.jpg', 15, 1),
(6, 2, 1, 'MÁY XAY NẤU THỰC PHẨM HAIPAI HAP-522', '– Mã sp: HAP-522\r\n– Dung tích cối: 1,75 lít\r\n– Công suất nấu 800W; Công suất xay: tối đa 1100W\r\n– Tốc độ: 35.000 vòng/phút\r\n– Bộ dao 3 lớp với 8 lưỡi\r\n– Trọng lượng: 5,5kg\r\n– Công dụng: Xay, nấu thực phẩm đa năng (súp, thịt, xương…); làm sữa hạt; làm sinh', 0, 1600000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-th%E1%BB%B1c-ph%E1%BA%A9m-Haipai-HAP-522-1.jpg', 25, 1),
(7, 2, 1, 'Máy xay sinh tố Sunhouse SHD5112', 'Model:	SHD5112\r\nMàu sắc:	Xanh Lá\r\nNhà sản xuất:	Sunhouse\r\nXuất xứ:	Trung Quốc\r\nNăm ra mắt :	Đang cập nhật\r\nThời gian bảo hành:	12 Tháng\r\nĐịa điểm bảo hành:	Nguyễn Kim\r\nLoại máy xay sinh tố:	Máy xay sinh tố\r\nCông suất :	350W\r\nDung tích cối:	Cối lớn: 1 lít,', 0, 490000, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_25744/may-xay-sinh-to_main_252_1020.png.webp', 65, 1),
(8, 2, 4, 'Máy xay sinh tố Philips HR2221/00', 'Model:	HR2221/00\r\nMàu sắc:	Trắng Tím\r\nNhà sản xuất:	Philips\r\nXuất xứ:	Trung Quốc\r\nNăm ra mắt :	2020\r\nThời gian bảo hành:	24 Tháng\r\nĐịa điểm bảo hành:	Nguyễn Kim\r\nLoại máy xay sinh tố:	Máy xay sinh tố\r\nCông suất :	700W\r\nDung tích cối:	Cối lớn 1.5 lít - Cố', 0, 1250000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/666/10046695-may-xay-sinh-to-philips-hr2221-1.jpg', 45, 1),
(9, 2, 1, 'Máy xay sinh tố Happy Cook HCB-150C', 'Model:	HCB-150C\r\nMàu sắc:	Đen\r\nNhà sản xuất:	Happy Cook\r\nXuất xứ:	Indonesia\r\nNăm ra mắt :	2019\r\nThời gian bảo hành:	6 Tháng\r\nĐịa điểm bảo hành:	Nguyễn Kim\r\nLoại máy xay sinh tố:	Máy xay sinh tố\r\nCông suất :	300W\r\nDung tích cối:	1.5 lít', 0, 590000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/72/10010991-may-xay-sinh-to-happy-cook-hcb-150c-1.jpg', 99, 1),
(10, 2, 4, 'Máy xay sinh tố Panasonic MX-EX1001WRA', 'Model:	MX-EX1001WRA\r\nMàu sắc:	Trắng\r\nNhà sản xuất:	Panasonic\r\nXuất xứ:	Trung Quốc\r\nNăm ra mắt :	2022\r\nThời gian bảo hành:	12 Tháng\r\nĐịa điểm bảo hành:	Nguyễn Kim\r\nLoại máy xay sinh tố:	Máy xay sinh tố\r\nCông suất :	450W\r\nDung tích cối:	1 lít', 0, 690000, 'https://cdn.nguyenkimmall.com/images/thumbnails/696/522/detailed/805/10052379-may-xay-sinh-to-panasonic-mx-ex1001wra-1.jpg', 54, 1),
(11, 1, 5, 'Bếp từ Teka VR TC 95 4L\r\n', 'Mã sản phẩm: VR TC 95\r\nXuất xứ:\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 36 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 4 Lò\r\nMặt kính: Euro Kara của Pháp\r\nĐiều khiển: Cảm ứng riêng biệt\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ tắt bếp\r\n', 0, 37450000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp01.jpg', 78, 1),
(12, 1, 6, 'Bếp Từ Teka IZ 7210', 'Xuất xứ: Châu Âu\r\nLoại sản phẩm: Bếp từ\r\nHãng sản xuất: Teka\r\nBếp điện từ, lắp âm\r\nĐiều khiển bằng cảm ứng, dạng trượt\r\nMặt bếp bằng kính ceramic, chịu nhiệt\r\nCài đặt chương trình riêng biệt cho từng bếp nấu\r\nChức năng Power\r\nHệ thống nhận diện đáy nồi\r\nC', 0, 13750000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp97-1.jpg', 59, 1),
(13, 1, 5, 'Bếp Từ Teka IRS 641', 'Mã sản phẩm: IRS 641\r\nXuất xứ: Tây Ban Nha\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 36 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 4 Lò\r\nMặt kính: Ceramic\r\nĐiều khiển: cảm ứng dạng trượt slider\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ tắ', 0, 17240000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/bep-tu-teka-irs-641-p49.png', 58, 1),
(14, 1, 5, 'Bếp Từ Teka IRF 641', 'Mã sản phẩm: IRF 641\r\nXuất xứ: Tây Ban Nha\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 36 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 4 Lò\r\nMặt kính: Ceramic\r\nĐiều khiển: cảm ứng dạng trượt slider\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ tắ', 0, 18450000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/bep-tu-teka-irf-641-p50.png', 458, 1),
(15, 1, 5, 'Bếp từ Teka IR 90 HS\r\n', 'Mã sản phẩm: IR 90 HS\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 36 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 3 Lò\r\nMặt kính: Euro Kara của Pháp\r\nĐiều khiển: Cảm ứng riêng biệt\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ tắt bếp\r\nTổng công ', 0, 31639000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp02.jpg', 99, 1),
(16, 1, 6, 'Bếp Từ Teka IR 721', 'Mã sản phẩm: IR 721\r\nXuất xứ: Tây Ban Nha\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 24 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 2 Lò\r\nMặt kính: Euro Kara của Pháp\r\nĐiều khiển: Cảm ứng riêng biệt\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ', 0, 13600000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/bep-tu-teka-ir-721-p45.jpg', 45, 1),
(17, 1, 6, 'Bếp từ Rommelsbacher CT3410', 'Mã sản phẩm	CT3410\r\nHãng	Rommelsbacher\r\nLoại sản phẩm	Bếp 2 từ\r\nSố bếp nấu	2 bếp\r\nBảng điều khiển	Cảm ứng\r\nChế độ hẹn giờ nấu	Có\r\nKhóa bếp	Có\r\nCông suất tổng	3400W\r\nCông suất nấu	10 mức công suất nấu\r\nTự động tắt bếp khi không có nồi	Có\r\nĐiện áp	220V / 50', 35, 4980000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp99-1.png', 87, 1),
(18, 1, 1, 'Bếp từ Sunhouse SHB9105', 'Mã sản phẩm	Sunhouse SHB9105\r\nHãng	SHB9105\r\nLoại sản phẩm	Bếp từ\r\nSố bếp nấu	2 bếp\r\nMặt kính	Mặt kính chịu nhiệt\r\nBảng điều khiển	Cảm ứng\r\nChế độ hẹn giờ độc lập cho từng bếp, báo động bằng âm thanh	Có\r\nKhóa an toàn trẻ em Child lock	Có\r\nCông suất tổng	43', 0, 6500000, 'https://bephoaphat.com/uploads/stores/5/2023/02/9015.jpg', 98, 1),
(19, 1, 6, 'Bếp Từ Teka IR 321', 'Mã sản phẩm: IR 321\r\nXuất xứ:\r\nThương hiệu: Teka\r\nLoại sản phẩm: Bếp Từ Teka\r\nBảo hành: 24 tháng\r\nTình trạng: còn hàng\r\nSố bếp nấu: 2 Lò\r\nMặt kính: Ceramic\r\nĐiều khiển: Cảm ứng riêng biệt\r\nChức năng: khóa bàn phím và hẹn giờ bật giờ tắt bếp\r\nTổng công suấ', 15, 11234000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/bep-tu-teka-ir-321-p47.jpg', 56, 1),
(20, 1, 5, 'Bếp từ Faro FR1 Vitro Cearmic 20V', 'Mã sản phẩm	FR1 Vitro Cearmic 20V\r\nHãng	Faro\r\nLoại sản phẩm	Bếp từ\r\nSố bếp nấu	2 bếp\r\nMặt kính	Vitro Ceramic\r\nBảng điều khiển	Cảm ứng\r\nChế độ hẹn giờ độc lập cho từng bếp, báo động bằng âm thanh	Có\r\nKhóa an toàn trẻ em Child lock	Có\r\nCông suất tổng	2400 W', 0, 9200000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp23-1.jpg', 452, 1),
(21, 3, 3, 'Nồi phủ sứ an toàn Elmich Olive EL-5523OV', '-Size:18cm\r\n-Màu sắc: Xanh\r\n-Trọng lượng: 1287g\r\n-Xuất xứ : Việt Nam', 0, 579000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/el-5523ov20-01.jpg?v=1726022053883', 65, 1),
(22, 3, 1, 'Bộ nồi inox nguyên khối Elmich Trimax classic EL-2136OL01', '\r\nSize (cm):Nồi Size 18, 20, 22\r\nChất liệu:Inox 3 lớp\r\nĐộ dày thành (mm): 1.8mm\r\nSize 20:  200 x 105 x 1.8 mm\r\nSize 22: 220 x 120 x 1.8mm\r\nTrọng lượng (sản phẩm rời) (kg)	Cả bộ: 4,296 kg\r\nNơi sản xuất:Elmich\r\nThương hiệu – Quốc gia:Việt nam', 20, 1856000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/2136ol01-scaled.jpg?v=1728621248460', 32, 1),
(23, 3, 4, 'Bộ nồi chảo chống dính Elmich baby EL-1170OL', '– Bộ nồi chảo chống dính Elmich baby EL-1170OL gồm 1 quánh đường kính 16cm và 1 chảo đường kính 16 cm\r\n– Thiết kế hiện đại, màu sắc trẻ trung, thời thượng\r\n– Kích thước nhỏ gọn, thuận tiện khi nấu nướng\r\n– Làm bằng hợp kim nhôm, bên trong phủ chống dính 2', 0, 435000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/1170-baby-hoongfartboard-1.jpg?v=1724135459557', 87, 1),
(24, 3, 4, 'Nồi men sứ Elmich Hera II EL-5203GY ', 'Màu sắc: Xanh\r\nChống dính: Trán sứ\r\nChất liệu:Nhôm\r\nTrọng lượng:1,1Kg\r\nXuất xứ : Việt Nam', 0, 679000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/el-5203gy-03.jpg?v=1702528540897', 32, 1),
(25, 3, 1, 'Bộ nồi Inox liền khối Elmich Hera EL-8197', 'Cate hàng:Nồi, bộ nồi inox\r\nTHƯƠNG HIỆU:ELMICH\r\nXuất xứ:Việt Nam\r\nThời gian bảo hành:24 tháng\r\nChất liệu:Inox\r\nMàu sắc:Màu tím\r\nKiểu dáng, thiết kế:Thẳng thành', 0, 2490000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/el819701-1688110873041.png?v=1688957017450', 88, 1),
(26, 4, 6, 'Dao gọt hoa quả Elmich Diamond EL8405', 'Xuất xứ sản phẩm : Trung Quốc\r\nBảo hành : 12 tháng\r\nSố lượng : 1\r\nKích thước : 20.3×0.25cm\r\nChất liệu : Lưỡi dao 5CR15\r\nCán dao : PP+TPR , Không chứa BPA\r\nCông dụng : Dùng để chế biến các món ăn như: gọt, tỉa rau củ quả', 0, 125000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/vn-11134207-7r98o-loavv1tryltjdc-1700720610916.jpg?v=1718269245953', 44, 1),
(28, 4, 3, 'Dao thái đa năng Elmich Diamond EL8406', 'Xuất xứ sản phẩm : Trung Quốc\r\nBảo hành : 12 tháng\r\nSố lượng : 1\r\nKích thước : 20.3×0.25cm\r\nChất liệu : Lưỡi dao 5CR15\r\nCán dao: PP+TPR, Không chứa BPA\r\nCông dụng: Dùng để chế biến các món ăn như: thái thịt, rau củ, quả', 0, 154000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/vn-11134207-7r98o-loalgzkecxdjc6-1700720592640.jpg?v=1700720596647', 22, 1),
(29, 4, 2, 'Dao thái Elmich Ultra Sharp EL8423', '– Màu sắc:  Đỏ-trắng\r\n– Kích thước sản phẩm:  329x44x20mm\r\n– Khối lượng:  140g\r\n– Công dụng:  Gọt, thái thực phẩm\r\n– Chất liệu:  Lưỡi dao Thép 5Cr15', 50, 215000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/el8422-01-3-66199e79-aca5-4e89-99a5-ee9bbde5251f.jpg?v=1709887560190', 55, 1),
(30, 4, 1, 'Dao đa năng Elmich Ultra Sharp EL8424', '– Màu sắc:  Đỏ-trắng\r\n– Kích thước sản phẩm:  305x85x18mm\r\n– Khối lượng:  310g\r\n– Công dụng:  Gọt, thái thực phẩm\r\n– Chất liệu:  Lưỡi dao Thép 5Cr15', 0, 299000, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/8424-01-3.jpg?v=1709887627673', 66, 1),
(31, 5, 1, 'Lò vi sóng Sharp 20 lít R-G222VN', 'Model:	R-G222VN\r\nMàu sắc:	Xám\r\nNhà sản xuất:	Sharp\r\nXuất xứ : Trung Quốc\r\nNăm ra mắt : 2012\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại Lò vi sóng : Có nướng\r\nDung tích : 20 Lít\r\nCông suất vi sóng : 800 W', 0, 1990000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/625/10008131-lo-vi-song-sharp-20l-r-g222vn-01.jpg', 33, 1),
(32, 5, 5, 'Lò vi sóng Sharp 20 lít R-203VN-M', 'Model:	R-203VN-M\r\nMàu sắc:	Bạc mặt gương\r\nNhà sản xuất:	Sharp\r\nXuất xứ : Trung Quốc\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại Lò vi sóng : Không nướng\r\nDung tích : 20 Lít\r\nCông suất vi sóng : 800 W\r\nChức năng chính : Rã đông, hâ', 0, 1590000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/642/10039045-lo-vi-song-sharp-20l-r-203vn-m-01.jpg', 65, 1),
(33, 5, 1, 'Lò vi sóng Samsung 23 lít MS23K3513AS', 'Model : MS23K3513AS/SV\r\nMàu sắc : Đen\r\nNhà sản xuất : Samsung\r\nXuất xứ : Malaysia\r\nNăm ra mắt : 2021\r\nThời gian bảo hành : 24 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại Lò vi sóng : Không nướng\r\nDung tích : 23 Lít\r\nCông suất vi sóng : 800 W', 0, 2190000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/614/10042746-lo-vi-song-samsung-ms23k3513as-sv-1.jpg', 55, 1),
(34, 5, 4, 'Lò vi sóng Sharp 23 lít R31A2VN-S', 'Model : R31A2VN-S\r\nMàu sắc : Đen\r\nNhà sản xuất : Sharp\r\nXuất xứ : Trung Quốc\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại Lò vi sóng : Không nướng\r\nDung tích : 23 Lít\r\nCông suất vi sóng : 900 W\r\nCông suất nướng : Không nướng\r\n', 0, 1890000, 'https://cdn.nguyenkimmall.com/images/detailed/616/10042970-lo-vi-song-sharp-23l-r-31a2vn-s-01.jpg', 77, 1),
(35, 5, 5, 'Lò vi sóng Sharp 20 lít R-209VN-SK', 'Model:	R-209VN-SK\r\nMàu sắc:	Xám\r\nNhà sản xuất:	Sharp\r\nXuất xứ : Trung Quốc\r\nNăm ra mắt : 2019\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại Lò vi sóng : Không nướng\r\nDung tích : 20 Lít\r\nCông suất vi sóng : 700 W', 37, 1390000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/620/10044306-lo-vi-song-sharp-20l-r-209vn-sk-01.jpg', 37, 1),
(36, 6, 4, 'Máy hút bụi Philips FC6721', 'Model:	FC6721\r\nMàu sắc:	Đỏ\r\nNhà sản xuất:	Philips\r\nXuất xứ : Trung Quốc\r\nNăm ra mắt : 2019\r\nThời gian bảo hành : 24 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nKhối lượng sản phẩm (kg) : 2.4 kg\r\nKích thước sản phẩm : Ngang 263 - Cao 1173 - Sâu 162 mm', 0, 2230000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/1073/10046693-may-hut-bui-philips-fc6721-1.jpg', 64, 1),
(37, 6, 6, 'Máy hút bụi không dây Dyson SV49 V12 Origin', 'Model:	DY 492619-01\r\nMàu sắc:	Xám/Tím\r\nNhà sản xuất:	Dyson\r\nXuất xứ :  Malaysia\r\nNăm ra mắt : 2024\r\nThời gian bảo hành : 24 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại máy : Máy hút bụi không dây\r\nCông suất hoạt động : 500W\r\nCông suất hút : 130 AW', 25, 13990000, 'https://cdn.nguyenkimmall.com/images/detailed/1019/M%C3%A1y_h%C3%BAt_b%E1%BB%A5i_kh%C3%B4ng_d%C3%A2y_Dyson_SV49_V12_Origin_1.jpg', 37, 1),
(38, 6, 3, 'Máy hút bụi khô và ướt Karcher WD 3 S Premium', 'Model : WD3SV\r\nMàu sắc : Vàng Đen\r\nNhà sản xuất : Karcher\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại máy : Khô và ướt\r\nCông suất hoạt động : 1000 W\r\nDung tích chứa bụi : Dung tích thùng chứa: 17 lít\r\nChiều dài dây điện : 4 mét\r\nT', 0, 2990000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/904/10056863-may-hut-bui-cam-tay-karcher-wd3-ysy-1.jpg', 65, 1),
(39, 6, 2, 'Máy hút bụi LG VC5420GHAQ.AVWPLVN', 'Model:	VC5420GHAQ.AVWPLVN\r\nMàu sắc:	Rượu cổ điển\r\nNhà sản xuất:	LG\r\nXuất xứ:	Việt Nam\r\nThời gian bảo hành : 12 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại máy : Máy hút bụi cắm dây\r\nCông suất hoạt động : Công suất tổng 1700W, Công suất 330W\r\nĐộ ồn : 82dB\r', 0, 2490000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/789/10051308-may-hut-bui-lg-vc5420ghaq-avwplvn-1.jpg', 91, 1),
(40, 6, 2, 'Máy hút bụi Electrolux ZB6214IGM', 'Model:	ZB6214IGM\r\nMàu sắc:	Đen\r\nNhà sản xuất:	Electrolux\r\nXuất xứ : Trung Quốc\r\nThời gian bảo hành : 24 Tháng\r\nĐịa điểm bảo hành : Nguyễn Kim\r\nLoại máy : Cầm tay\r\nCông suất hoạt động : 54 W\r\nDung tích chứa bụi : 0.5 lít\r\nDung lượng pin : 1500 mAh', 10, 1890000, 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/782/10050727-may-hut-bui-electrolux-zb6214igm-1.jpg', 91, 1),
(41, 1, 1, 'Bếp gas âm hồng ngoại Fujishi FJ-806 - Đánh lửa Magneto tự động - Bảo hành chính hãng 02 Năm', 'MUA NGAY Bếp gas âm hồng ngoại Fujshi FJ-806, Dòng đánh lửa Magneto tự động không phải thay Pin bất tiện, Đầu đốt Ceramic hồng ngoại tiết kiệm gas thuộc dòng bếp gas Được sản xuất và lắp ráp tại nhà máy Việt Nam,  Bếp gây ấn tượng với người dùng ở bề mặt ', 0, 925000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwj39eeq1e@resize_w450_nl.jpg', 10, 1),
(42, 1, 1, 'Bếp gas âm Fujishi FJ-805 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành ch', ' MUA NGAY Bếp gas âm Fujshi FJ-805 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành chính hãng 02 Năm ( Bảo hành chính hãng trong 2 năm, Mặt kính cường lực, đánh lửa Magneto tự động kho lo thay pin bất tiện đầu đốt đồng thau nguyên ', 0, 955000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm2xupufg1f0f@resize_w450_nl.jpg', 10, 1),
(43, 1, 2, 'Bếp gas âm Fujishi FJ-805X - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành c', 'MUA NGAY Bếp gas âm Fujshi FJ-805 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành chính hãng 02 Năm ( Bảo hành chính hãng trong 2 năm, Mặt kính cường lực, đánh lửa Magneto tự động kho lo thay pin bất tiện đầu đốt đồng thau nguyên k', 10, 775000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80znwh5rb9.jpg', 11, 1),
(44, 1, 2, 'Bếp gas âm Fujishi FJ-803X - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành c', 'MUA NGAY Bếp gas âm Fujshi FJ-803 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành chính hãng 02 Năm ( Bảo hành chính hãng trong 2 năm, Mặt kính cường lực, đánh lửa Magneto tự động kho lo thay pin bất tiện đầu đốt đồng thau nguyên k', 10, 745000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvpq9z3aq5beb.jpg', 11, 1),
(45, 1, 3, 'Bếp gas âm Fujishi FJ-804 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành ch', 'MUA NGAY Bếp gas âm Fujshi FJ-804 - Đánh lửa Magneto tự động, Chén đồng lửa xanh tiết kiệm gas - Bảo hành chính hãng 02 Năm ( Bảo hành chính hãng trong 2 năm, Mặt kính cường lực, đánh lửa Magneto tự động kho lo thay pin bất tiện đầu đốt đồng thau nguyên k', 20, 915000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwitb7qr52.jpg', 12, 1),
(46, 1, 3, 'Bếp gas âm FUJISHI FJ-808IC - CHÉN ĐỒNG - Đánh lửa IC cực nhạy - Lửa xanh tiết kiệm gas - Bảo hành c', 'MUA NGAY Bếp gas âm Fujshi FJ-808IC - Đánh lửa IC CỰC NHẠY, Chén đồng lửa xanh tiết kiệm gas - Bảo hành chính hãng 02 Năm ( Bảo hành chính hãng trong 2 năm, Mặt kính cường lực, Đánh lửa IC CỰC NHẠY đầu đốt đồng thau nguyên khối bền bỉ theo thời gian, an t', 20, 875000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lootu9roq1vvbe.jpg', 20, 1),
(47, 1, 4, 'Bếp gas đôi hồng ngoại mặt kính FUJISHI FJ-H15-HN - Tiết kiệm gas - Bảo hành chính hãng 1 năm', 'Bếp gas đôi hồng ngoại mặt kính FUJISHI FJ-H15-HN - Tiết kiệm gas - Bảo hành chính hãng 1 năm\r\nMẫu bếp gas cụm đầu đốt hồng ngoại thế hệ mới - Công nghệ Nhật Bản đang tạo nên cơn sốt tại Việt nam. Thuộc mẫu bếp gas công nghệ mới tiết kiệm gas dòng đầu đốt', 30, 395000, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-vunc2g79ipovb7.jpg', 13, 1),
(48, 1, 4, 'Bếp gas khung inox FUJISHI KI-202T - MÂM CHIA LỬA ĐỒNG NGUYÊN KHỐI LỚN - Tiết kiệm gas - Bảo hành ch', 'Bếp gas khung inox FUJISHI KI-202T - MÂM CHIA LỬA ĐỒNG NGUYÊN KHỐI LỚN - Tiết kiệm gas - Bảo hành chính hãng 1 năm\r\nMẫu bếp gas cụm đầu đốt đồng thau thế hệ mới - Công nghệ Nhật Bản đang tạo nên cơn sốt tại Việt nam. Thuộc mẫu bếp gas công nghệ mới tiết k', 30, 895000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj6ic62agyc2a9.jpg', 30, 1),
(49, 1, 5, 'Bếp gas đôi chén đồng mặt inox FUJISHI FU-210-iN - Tiết kiệm gas - Bảo hành chính hãng 1 năm', 'Bếp gas đôi chén đồng mặt inox FUJISHI FU-210-iN - Tiết kiệm gas - Bảo hành chính hãng 1 năm\r\nMẫu bếp gas cụm đầu đốt đồng thau thế hệ mới - Công nghệ Nhật Bản đang tạo nên cơn sốt tại Việt nam. Thuộc mẫu bếp gas công nghệ mới tiết kiệm gas dòng đầu đốt c', 40, 790000, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-99du6b4p1gova2.jpg', 14, 1),
(50, 1, 5, 'Bếp gas đôi mặt kính FUJISHI FJ-086D (Kính Đỏ) - Khung bếp cao 10 phân - Tiết kiệm gas - Bảo hành ch', 'Bếp gas Fujishi FJ-086 - KHUNG BẾP CAO 10 PHÂN - MÂM CHIA LỬA ĐỒNG NGUYÊN KHỐI LỚN - Tiết kiệm gas - Bảo hành chính hãng 01 Năm\r\n\r\n Mẫu bếp gas cụm đầu đốt đồng thau thế hệ mới - Công nghệ Nhật Bản đang tạo nên cơn sốt tại Việt nam. Thuộc mẫu bếp gas công', 40, 690000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lm8nm7sc51b315.jpg', 14, 1),
(51, 2, 1, 'Máy Xay Sinh Tố Sunhouse SHD5112 - Công Suất 350W - Dung Tích 1 Lít - 2 Cối Xay Hoa Quả, Thực Phẩm K', 'Máy xay sinh tố Sunhouse SHD5112\r\nMáy xay sinh tố SUNHOUSE SHD5112 có thiết kế gọn nhẹ, dễ sử dụng. Sản phẩm gồm một cối xay hoa quả, rau củ mềm và một cối xay thực phẩm khô – có thể sử dụng để xay nhiều loại thực phẩm hàng ngày rất tiện lợi, giúp tiết ki', 10, 345000, 'https://down-vn.img.susercontent.com/file/b2425d968c8f0a6a9281ee0f08c951ff@resize_w450_nl.jpg', 10, 1),
(52, 2, 1, 'Máy Xay Sinh Tố Công Nghiệp HAKAIO 4500W Cối Xay 2L Bảo Hành 24 Tháng', 'SHOP cam kết chỉ bán hàng CHÍNH HÃNG và y hình ảnh, nội dung đăng tải.\r\nSHOP cam kết HOÀN TIỀN 100% giá trị các sản phẩm bị gẫy, vỡ hoặc thiếu trong quá trình vận chuyển nên Khách Hàng hoàn toàn yên tâm khi mua hàng.', 10, 1599000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ly22z7rj7tujbd@resize_w450_nl.jpg', 10, 1),
(53, 2, 2, 'Máy xay sinh tố công nghiệp Promix PM-919B - 1500W - Dung tích 2 lít - Dùng cho quán kinh doanh [Pro', 'Máy xay sinh tố Promix PM-919B là dòng máy xay công nghiệp mới Model 2021 từ Pro Mixing với công suất 1500W, dung tích 2 lít, phù hợp sử dụng cho các quán cà phê, kinh doanh với khả năng xay liên tục.', 20, 2943000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lvmkrx9wvc41c4@resize_w450_nl.jpg', 20, 1),
(54, 2, 2, 'Máy Xay Sinh Tố Sunhouse 2 Cối SHD-5114 - Công Suất 450W Dung Tích 1.5L Xay Đá, Rau Củ, Đồ Khô. Hàng', 'Máy Xay Sinh Tố Sunhouse SHD-5114 - Công Suất 450W Dung Tích 1.5L Xay Đá, Rau Củ, Đồ Khô. Hàng Chính Hãng Bảo Hành 12 Tháng\r\n\r\n- Máy xay sinh tố Sunhouse SHD-5114 gồm 2 cối xay, 1 cối to dùng xay đá, xay đồ ướt. 1 cối nhỏ dùng xay đồ khô như hạt, gạo,....', 20, 425000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj7yrf5cvp58ba@resize_w450_nl.jpg', 20, 1),
(55, 2, 3, 'Máy xay sinh tố công nghiệp Promix PM-9003 - 1800W - 2 lít - Phù hợp cho quán - bao gồm hộp chống ồn', 'Máy xay sinh tố Promix PM-9003 là dòng công nghiệp mới của Promix với công suất 1800W; động cơ hoạt động 3.5hp dung tích 2 lít dễ dàng xay nhiều ly 1 lúc; phù hợp cho quán pha chế, nhà hàng, khách sạn,…', 30, 4361000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lzhf5a5pcxfx50@resize_w450_nl.jpg', 30, 1),
(56, 2, 3, 'Máy Xay Sinh Tố Philips HR2223 - Hàng Chính Hãng (Bảo Hành 24 Tháng)', 'Máy xay sinh tố PHILIPS HR2223 sở hữu thiết kế tinh tế với màu sắc trang nhã, không chỉ mang đến cho bạn những ly nước trái cây thơm ngon mà còn góp phần tô điểm cho không gian bếp thêm lịch sự, hiện đại. Máy có cối xay lớn với dung tích 1.5L được làm bằn', 40, 11449000, 'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-ll0jxg323mcdf1@resize_w450_nl.jpg', 40, 1),
(57, 2, 4, '[Có hỏa tốc TPHCM ] Máy xay sinh tố 3 cối 450W COMET - CM9979', '-  Máy xay sinh tố Comet CM9979 có kiểu dáng hiện đại, màu sắc sang trọng trẻ trung, phù hợp với mọi gian bếp. \r\n\r\n-  Hoạt động với công suất 450 W cực mạnh, động cơ máy vận hành êm ái, dễ dàng xay nhuyễn các loại thực phẩm và ngay cả đá một cách nhanh ch', 25, 739000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyn7u3iemg5p1a.jpg', 25, 1),
(58, 2, 4, 'Máy xay sinh tố 3 Cối nhựa KIM CƯƠNG KC-T02', '- Máy xay sinh tố KIM CƯƠNG 3 cối,rất chất lượng và uy tín trên thị trường để phục vụ tốt nhu cầu của người sử dụng. Với thiết kế dung tích 1 lít,chúng ta dễ dàng tạo ra 4 ly sinh tố phục vụ cho nhu cầu giải khát,xay cháo cho em bé,xay thực phẩm khô v.v..', 25, 379000, 'https://down-vn.img.susercontent.com/file/2e1ca01a4006b26b3b237ce3f0fc3399.jpg', 25, 1),
(59, 2, 5, 'Máy Xay Sinh Tố Đa Năng SILVER CREST, Máy Xay Công Nghiệp 2 Cối Xay Công Suất 4500W Xay Rau Củ Thịt ', '- Sản phẩm máy xay sinh tố công suất lớn 4500W chính hãng KAW là một thiết bị mạnh mẽ và hiệu quả để bạn tận hưởng các món sinh tố, nước ép và đồ uống lành mạnh ngay tại nhà.\r\n\r\nVới công suất 4500W, máy xay sinh tố KAW có khả năng xay nhuyễn và nghiền hoà', 40, 450000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lx6d8z1jjzkr02.jpg', 40, 1),
(60, 2, 5, 'Máy Xay Sinh Tố Đa Năng SILVER CREST SC-1589 Máy Xay Công Nghiệp 2 Cối Xay Công Suất 4500W NH 12TH.', '- Sản phẩm máy xay sinh tố công suất lớn 4500W chính hãng KAW là một thiết bị mạnh mẽ và hiệu quả để bạn tận hưởng các món sinh tố, nước ép và đồ uống lành mạnh ngay tại nhà.\r\n\r\nVới công suất 4500W, máy xay sinh tố KAW có khả năng xay nhuyễn và nghiền hoà', 50, 399000, 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m0u07bln2bv346.jpg', 50, 1),
(61, 3, 1, 'Bộ nồi 4 món Fissler Luno Black', '– Mã sản phẩm: Luno 4\r\n– Hãng: FISSLER\r\n– Chất liệu nồi: Nhôm Đúc Quang Học', NULL, 12500000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160.png', 9, 1),
(62, 3, 2, 'Bộ nồi Arber 4 chiếc', '– Hãng sản xuất: Arber– Xuất xứ: Đức– Loại sản phẩm: Nồi từ 4 chiếc', NULL, 2500000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp159.jpg', 9, 1),
(63, 3, 3, 'Bộ nồi Arber 5 chiếc', '– Hãng sản xuất: Arber\r\n– Xuất xứ: Đức\r\n– Loại sản phẩm: Nồi từ 5 chiếc', NULL, 3000000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp158.jpg', 9, 1),
(64, 3, 4, 'Bộ nồi Berndes Millesima 7 món', '– Mã sản phẩm: Berlin 4 ( vung inox)\r\n– Hãng: BERNDE S- Germany Küche GmbH\r\n– Chất liệu nồi: Inox cao cấp 18/10', NULL, 5980000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp157.jpg', 9, 1),
(65, 3, 5, 'Bộ nồi chống dính Elmich Royal Classic EL-3700', '– Mã sản phẩm: EL-3700\r\n– Hãng: Elmich, Dòng sản phẩm : Royal Classic\r\n– Chất liệu nồi: inox cao cấp\r\n– Xuất xứ: Nhật khẩu nguyên chiếc từ Châu Âu – CH Séc', NULL, 1835000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp156.png', 9, 1),
(66, 3, 6, 'Bộ nồi chống dính Elmich Royal Premium', '– Hãng sản xuất: Elmich\r\n– Xuất xứ: CH Séc\r\n– Loại sản phẩm: Bộ nồi dùng cho bếp từ', NULL, 2890000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp155.jpg', 9, 1),
(67, 3, 6, 'Bộ nồi từ Fissler 1845 (5 chiếc)', '– Mã sản phẩm: Bộ nồi từ Fissler 1845 (5 chiếc)\r\n– Hãng: FISSLER\r\n– Chất liệu nồi: Inox', NULL, 12000000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp144.jpg', 9, 1),
(68, 3, 5, 'Nồi quánh cán dài chống dính Tefal Expertise có nắp 16 cm', '– Hãng sản xuất: Tefal\r\n– Xuất xứ: Pháp', NULL, 1490000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp134.jpg', 9, 1),
(69, 3, 3, 'NỒI ÁP SUẤT ĐA NĂNG KYUSHU MODEL LJ 336', '– Kích thước (D x R x C): 325 x 325 x 410 mm.\r\n– Khối lượng hàng: 4.6 Kg.\r\n– Dung tích: 6 L.\r\n– Công suất: 1000W.\r\n– Điện áp: 220V – 50Hz.\r\n– Phụ kiện đi kèm: Sách hướng dẫn sử dụng, cốc đong, dây điện, muỗng, thìa, giá hấp đồ.\r\n– Bảo hành 24 tháng, 1 đổi', NULL, 2500000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/11/noi-ap-suat-da-nang-kyushu-anh-2-768x680.jpg', 9, 1),
(70, 3, 1, 'Bộ nồi từ Berndes Roma 059021', '– Hãng sản xuất: Berndes Roma\r\n– Xuất xứ: Trung Quốc\r\n– Loại sản phẩm: Dùng cho bếp gas, bếp điện, bếp từ, bếp hồng ngoại, mặt kính gốm', NULL, 3900000, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146.jpg', 9, 1),
(71, 5, 1, 'Lò vi sóng Bosch TGB.BFL634GB1B - Serie 8', '-Nhập khẩu từ Anh Quốc\r\n-Mức công suất 5\r\n-Loại điều khiển điện tử\r\n-Thiết kế tinh tế và sang trọng\r\n-7 Công thức nấu ăn tự động\r\n-Màn hình hiển thị TFT\r\n-Hệ thống bảng điều khiển cảm ứng', 13, 12990000, 'https://kinghome.vn/data/products/lo-vi-song-bosch-tgbbfl634gb1b-serie-8-31679363758.jpg', 500, 1),
(72, 5, 2, 'Lò vi sóng kết hợp nướng Teka MS 620 BIS 40584010', '	\r\n-Lò vi sóng kết hợp nướng.\r\n-Bảng điều khiển cảm ứng hiển thị trên màn hình TFT trắng.\r\n-05 mức công suất, 700W\r\n-03 công thức cài đặt sẵn.\r\n-03 chức năng nấu.\r\n-Chức năng khởi động nhanh 30’’.\r\n-Chức năng hẹn giờ từ 0-90 phút.\r\n-Chức năng tự động rã đ', 35, 11700000, 'https://kinghome.vn/data/products/1687310364lo-vi-song-ket-hop-nuong-teka-MS-620-BIS-40584010-king-home.jpg', 29, 1),
(73, 5, 3, 'Lò vi sóng kết hợp nướng Electrolux EMSB30XCF', '	\r\n-Rã đông tiện lợi\r\n-Dễ dàng vệ sinh\r\n-Chiên không dầu\r\n-Nướng với quạt đối lưu\r\n-Kết hợp nướng và vi sóng thành 1 chương trình', 25, 9750500, 'https://kinghome.vn/data/products/lo-vi-song-ket-hop-nuong-electrolux-emsb30xcf-king-home.jpg1666201975', 112, 1),
(74, 5, 4, 'Lò vi sóng Malloca MW-927I', '-5 mức công suất tùy chỉnh\r\n-Màn hình LCD\r\n-Chức năng vi sóng\r\n-Chức năng rã đông bằng trọng lượng\r\n-Chức năng rã đông bằng thời gian\r\n-Chức năng hẹn giờ\r\n-Đèn halogen bên trong lò\r\n-Khóa an toàn trẻ em', 20, 9100000, 'https://kinghome.vn/data/products/lo-vi-song-malloca-mw-927i-21652410992.jpg', 132, 1),
(75, 5, 5, 'Lò vi sóng Bluestone TGB.BFL523MS0B - Serie 4', '-5 mức công suất tùy chỉnh\r\n-Màn hình LCD\r\n-Chức năng vi sóng\r\n-Chức năng rã đông bằng trọng lượng\r\n-Chức năng rã đông bằng thời gian\r\n-Chức năng hẹn giờ\r\n-Đèn halogen bên trong lò\r\n-Khóa an toàn trẻ em', 15, 9000000, 'https://kinghome.vn/data/products/lo-vi-song-bosch-bfl523ms0b.jpg', 42, 1),
(76, 5, 6, 'Lò vi sóng Goldsuni R-207VN-SL 20 lít', '-5 mức công suất tùy chỉnh\r\n-Màn hình LCD\r\n-Chức năng vi sóng\r\n-Chức năng rã đông bằng trọng lượng\r\n-Chức năng rã đông bằng thời gian\r\n-Chức năng hẹn giờ\r\n-Đèn halogen bên trong lò\r\n-Khóa an toàn trẻ em', 29, 1200000, 'https://kinghome.vn/data/products/1695260690lo-vi-song-sharp-R-207VN-SL-king-home.jpg', 87, 1),
(77, 5, 1, 'LÒ VI SÓNG BOSCH BEL554MS0B', '-Chức năng rã đông\r\n-Tính năng khoá trẻ em\r\n-Chức năng hẹn giờ\r\n-Chương trình yêu thích', 25, 1200000, 'https://boschs.com.vn/wp-content/uploads/2023/08/anh-lo-vi-song-bel554ms0b_2000x2000.jpg', 56, 1),
(107, 4, 1, 'Dao bếp cao cấp Miura E - Dao thái đa năng Santoku (19cm)', 'Ưu điểm nổi bật của dao bếp cao cấp Miura E - Dao thái đa năng Santoku (19cm)\r\nThái, cắt hiệu quả\r\nDao Santoku Miura E thiết kế lưỡi dao rất sắc bén, độ cứng cao, giúp cắt, thái các loại thịt, cá và rau củ mà không tốn sức. \r\nVề chất liệu \r\nLưỡi dao được ', 10, 1620000, 'https://st.meta.vn/Data/image/2023/09/21/dao-bep-miura-e-dao-thai-da-nang-santoku-19cm-g.jpg', 11, 1),
(108, 4, 1, 'Dao chặt chuôi gỗ Pakka Sunhouse KS-KN180CS', 'Chất liệu bền bỉ\r\nDao chặt chuôi gỗ Sunhouse KS-KN180CS có phần lưỡi dao được làm từ chất liệu thép SUS420J2 không gỉ cao cấp, có độ cứng vượt trội 53±1.5HRC, hạn chế sứt mẻ và ăn mòn.\r\n\r\nSản phẩm có phần lưỡi sắc bén, cho được cắt chính xác và đều đẹp, c', 20, 550000, 'https://st.meta.vn/Data/image/2020/09/30/dao-chat-chuoi-go-pakka-sunhouse-ks-kn180cs-sl1.jpg', 11, 1),
(109, 4, 1, 'Bộ dao 4 món cao cấp Gume GMK23', 'Đánh giá chi tiết về bộ dao 4 món cao cấp Gume GMK23\r\nGồm 4 món\r\nGume GMK23 gồm các loại dao sau: \r\n\r\n1 dao tỉa: 175.8mm x 79.5mm\r\n1 dao thái : 298.1mm x 204mm\r\n1 dao thái: 45.6mm x 236.5mm\r\n1 dao chặt: 140.6mm x 34.2mm\r\nSử dụng vật liệu thép không gỉ 5C', 30, 740000, 'https://st.meta.vn/Data/image/2024/10/05/bo-dao-4-mon-cao-cap-gume-gmk23-g.jpg', 11, 1),
(110, 4, 1, 'Bộ dao Tefal Comfort K221S244 15cm và 12cm', 'Ưu điểm nổi bật của bộ dao Tefal Comfort  K221S244 \r\nTefal K221S244 dùng để cắt, thái, gọt rau, củ, quả, thịt,... Bộ dao Tefal Comfort K221S244 gồm 2 dao\r\n\r\n1 dao Chef Comfort 15cm + vỏ dao, lý tưởng để băm, cắt lát và xắt nhỏ tất cả các loại thực phẩm. \r', 50, 470000, 'https://st.meta.vn/Data/image/2023/05/19/bo-dao-tefal-comfort-k221s244-g.jpg', 11, 1),
(111, 4, 2, 'Bộ dao inox Elmich 7 món EL3800', 'Thông tin bộ dao inox Elmich 7 món EL3800\r\nBộ dao inox Elmich 7 món EL3800 gồm 7 món. Trong đó có 4 dao, 1 thanh mài dao, 1 kéo cắt gà và 1 giá để dao. \r\nBộ sản phẩm được sản xuất theo tiêu chuẩn châu Âu bởi thương hiệu nổi tiếng Elmich. Các sản phẩm đều ', 20, 2420000, 'https://st.meta.vn/Data/image/2021/11/25/bo-dao-inox-elmich-7-mon-1.jpg', 13, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `Image_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Image_URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`Image_ID`, `Product_ID`, `Image_URL`) VALUES
(1, 1, 'https://sonhung.vn/media/product/6219_may_lam_sua_hat_da_nang_ranbem_769s_chinh_hang_gia_re_nhat.jpg'),
(2, 1, 'https://sonhung.vn/media/product/6219_may_lam_sua_hat_ranbem__3_.jpg'),
(3, 1, 'https://sonhung.vn/media/product/6219_may_lam_sua_hat_da_nang_ranbem_769s_chinh_hang_gia_tot_nhat.jpg'),
(4, 1, 'https://sonhung.vn/media/product/6219_may_lam_sua_hat_da_nang_ranbem_769s_chinh_hang_gia_tot.jpg'),
(9, 3, 'https://gertech.vn/wp-content/uploads/2018/12/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-6.jpg'),
(10, 3, 'https://gertech.vn/wp-content/uploads/2018/12/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-2.jpg'),
(11, 3, 'https://gertech.vn/wp-content/uploads/2018/12/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-9.jpg'),
(12, 3, 'https://gertech.vn/wp-content/uploads/2018/12/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-8.jpg'),
(13, 4, 'https://vietthienphu.vn/wp-content/uploads/2023/01/68ae64f198f04c320395c966f5675596.png'),
(14, 4, 'https://vietthienphu.vn/wp-content/uploads/2023/01/49d2ba18d7c52e031af4b67b443599f2.png'),
(15, 4, 'https://vietthienphu.vn/wp-content/uploads/2023/01/2ad5640ebdec72fc79531d1778c6c2dc-768x512.png'),
(16, 4, 'https://vietthienphu.vn/wp-content/uploads/2023/01/387795c86765346eca0c041bac00348b.png'),
(17, 5, 'https://down-vn.img.susercontent.com/file/b60919285747c42b8b64d156ff2ba478.webp'),
(18, 5, 'https://down-vn.img.susercontent.com/file/4e5ab004403ee3ff7eff8e0ffba3d76f.webp'),
(19, 5, 'https://down-vn.img.susercontent.com/file/e8f62989d7122f7e95fd1863ad78de53.webp'),
(20, 5, 'https://down-vn.img.susercontent.com/file/dbb92d2bda8aa89f309e237fbcf173a0.webp'),
(21, 41, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgez3hykw2ne4d.jpg'),
(22, 41, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgez3hyknn8q6d.jpg'),
(23, 41, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgez3hykp1t607.jpg'),
(24, 41, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgez3hykt9iib2.jpg'),
(25, 42, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80znwhcv6c.jpg'),
(26, 42, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvpq9z3c4pr03.jpg'),
(27, 42, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80znv2lbd9.jpg'),
(28, 42, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvpq9z3dja727.jpg'),
(29, 43, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwite0vn83.jpg'),
(30, 43, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwitffg38d.jpg'),
(31, 43, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwitcmb7fb.jpg'),
(32, 43, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwj33s4y85.jpg'),
(33, 44, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80zodc6789.jpg'),
(34, 44, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80zo949re0.jpg'),
(35, 44, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80zohjvj2d.jpg'),
(36, 44, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llvq80zog5b352.jpg'),
(37, 45, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwite0vn83.jpg'),
(38, 45, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwitffg38d.jpg'),
(39, 45, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwitcmb7fb.jpg'),
(40, 45, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgm3lwj33s4y85.jpg'),
(41, 46, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lootu9roj11n34.jpg'),
(42, 46, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lootu9roetcb35.jpg'),
(43, 46, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lootu9rog7wr34.jpg'),
(44, 46, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lootu9roonbfa6.jpg'),
(45, 47, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-zx1b2la0ipovde.jpg'),
(46, 47, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-vmt8afd0ipov13.jpg'),
(47, 47, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-91jta2e0ipove4.jpg'),
(48, 47, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-1i57dyk0ipov87.jpg'),
(49, 48, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj6ic62aicwi5c.jpg'),
(50, 48, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj6ic62ajrgy9c.jpg'),
(51, 48, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj6ic62anz6ab0.jpg'),
(52, 48, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj6ic62apdqq8e.jpg'),
(53, 49, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-wjirm4ki2gov5c.jpg'),
(54, 49, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-1aich9ei2gov7a.jpg'),
(55, 49, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-kilf72ni2govcc.jpg'),
(56, 49, 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-sozstupi2govee.jpg'),
(57, 50, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lm8nm7sc990f82.jpg'),
(58, 50, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lm8nm7sc7ufzff.jpg'),
(59, 50, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lm8nm7svos0vc4.jpg'),
(60, 50, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lm8nm7sc6fvj50.jpg'),
(61, 51, 'https://down-vn.img.susercontent.com/file/ad42bec5295a56593e7fe553dd94e150.jpg'),
(62, 51, 'https://down-vn.img.susercontent.com/file/4086d7bf067a2107ee347076c7c64f44.jpg'),
(63, 51, 'https://down-vn.img.susercontent.com/file/cdd3778b6a0feb09844592861bc48fda.jpg'),
(64, 51, 'https://down-vn.img.susercontent.com/file/fc1d9330df6673db44f549a61988514d.jpg'),
(65, 52, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ly22z7rt4mahca.jpg'),
(66, 52, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxasrrvj12hn3a.jpg'),
(67, 52, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxasrrvj83bvc1.jpg'),
(68, 52, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lu6h8m8p5b812d.jpg'),
(69, 53, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyndyn8zuszx79.jpg'),
(70, 53, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyndyn8zp6q5f9.jpg'),
(71, 53, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyndyn8zteoxc5.jpg'),
(72, 53, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyne0528y8ul10.jpg'),
(73, 54, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj7yrf5db5e47f.jpg'),
(74, 54, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj7yrf5cvpoyce.jpg'),
(75, 54, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lj7yrf5db5xu1d.jpg'),
(76, 54, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lngvm2ir88ze08.jpg'),
(77, 55, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxkk8b4cbjdlfa.jpg'),
(78, 55, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxkk8b4c8q8p6d.jpg'),
(79, 55, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxkk8b4ccxy1bf.jpg'),
(80, 55, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lxkk8b4ccxqz93.jpg'),
(81, 56, 'https://down-vn.img.susercontent.com/file/9aeb462a2adab54311466b169f272a15.jpg'),
(82, 56, 'https://down-vn.img.susercontent.com/file/55df932ed7a41d324e07f733d184e7dd.jpg'),
(83, 56, 'https://down-vn.img.susercontent.com/file/92a7eea9b0b1f4bc7f2a4ed68e0f58c9.jpg'),
(84, 56, 'https://down-vn.img.susercontent.com/file/ec6a4b2e048ae7fabeea13117e184ecb.jpg'),
(85, 57, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyn7u3iel1upbb.jpg'),
(86, 57, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyn7u3iejna9b4.jpg'),
(87, 57, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyn7u3iemgf5e8.jpg'),
(88, 57, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lyn7u3iel1l932.jpg'),
(89, 58, 'https://down-vn.img.susercontent.com/file/sg-11134201-22090-m8n5ih905nhv45.jpg'),
(90, 58, 'https://down-vn.img.susercontent.com/file/8017b11e8d11f16a7317f489327a68ec.jpg'),
(91, 58, 'https://down-vn.img.susercontent.com/file/b67215edf5da0c692dd5f9498a8b7e29.jpg'),
(92, 58, 'https://down-vn.img.susercontent.com/file/795304434161141c62061156d96408d7.jpg'),
(93, 59, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lx6d8z1j1q6zac.jpg'),
(94, 59, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lx6d8z1j7cgrde.jpg'),
(95, 59, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lx6d8z1jbk6305.jpg'),
(96, 59, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lx6d8z1jh6fv33.jpg'),
(97, 60, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lystfget4a4td6.jpg'),
(98, 60, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lystfget02fh07.jpg'),
(99, 60, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lystfget1gzxbb.jpg'),
(100, 60, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lystfget02oxc5.jpg'),
(101, 61, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160-1.png'),
(102, 61, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160-1.jpg'),
(103, 61, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160-2.jpg'),
(104, 61, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160-3.jpg'),
(105, 62, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp159.jpg'),
(106, 62, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp152-300x192.jpg'),
(107, 62, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146-300x300.jpg'),
(108, 62, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp160-1.png'),
(109, 63, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp158-1-1.jpg'),
(110, 63, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp158-2.jpg'),
(111, 63, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp158-3.jpg'),
(112, 63, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp158.jpg'),
(113, 64, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp157-1-1.jpg'),
(114, 64, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp157-2.jpg'),
(115, 64, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp157-3.jpg'),
(116, 64, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp157-4.jpg'),
(117, 65, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp156-1.jpg'),
(118, 65, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp156-1.png'),
(119, 65, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp148-300x201.jpg'),
(120, 65, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp147-1-300x300.jpg'),
(121, 66, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp155-1.png'),
(122, 66, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp155-2.png'),
(123, 66, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp155.jpg'),
(124, 66, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp153-300x300.jpg'),
(125, 67, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp144-1.jpg'),
(126, 67, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp144-2.jpg'),
(127, 67, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp144-3.jpg'),
(128, 67, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp144-4.jpg'),
(129, 68, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp134-4.jpg'),
(130, 68, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp134-3.jpg'),
(131, 68, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp134-2-1.jpg'),
(132, 68, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp134-1-1.jpg'),
(133, 69, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/11/noi-ap-suat-da-nang-kyushu-anh-6-768x538.png'),
(134, 69, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/11/noi-ap-suat-da-nang-kyushu-anh-5.png'),
(135, 69, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/11/noi-ap-suat-da-nang-kyushu-anh-4.png'),
(136, 69, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/11/noi-ap-suat-da-nang-kyushu-anh-2-768x680.jpg'),
(137, 70, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146-1.jpg'),
(138, 70, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146-2.jpg'),
(139, 70, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146-3.jpg'),
(140, 70, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/sp146.jpg'),
(223, 71, 'https://kinghome.vn/data/products/1690256813lo-vi-song-bosch-tgbbfl634gb1b-serie-8-kinghome.jpg'),
(224, 71, 'https://kinghome.vn/data/products/lo-vi-song-bosch-tgbbfl634gb1b-serie-8-41679363760.jpg'),
(225, 71, 'https://kinghome.vn/data/products/1690256813lo-vi-song-bosch-tgbbfl634gb1b-serie-8-kinghome.jpg'),
(226, 71, 'https://kinghome.vn/data/products/lo-vi-song-bosch-bfl634gb1b-11591595283.jpg'),
(227, 72, 'https://st.meta.vn/Data/image/2019/09/11/lo-vi-song-am-teka-ms-620-bis-20-lit-t1.jpg'),
(228, 72, 'https://st.meta.vn/Data/image/2019/09/11/lo-vi-song-am-teka-ms-620-bis-20-lit-t.jpg'),
(229, 72, 'https://teka.b-cdn.net/CMP1219/2/PR1805BI41044_40584010_MS_620_BIS_SS_SZ1.png'),
(230, 72, 'https://teka.b-cdn.net/CMP1219/PR1805BI41068_40584010_MS_620_BIS_SS_SZ1.png'),
(231, 73, 'https://kinghome.vn/data/products/lo-vi-song-ket-hop-nuong-electrolux-emsb30xcf-11666201942.jpg'),
(232, 73, 'https://kinghome.vn/data/products/lo-vi-song-ket-hop-nuong-electrolux-emsb30xcf-king-home.jpg1666201975'),
(233, 73, 'https://kinghome.vn/data/products/lo-vi-song-ket-hop-nuong-electrolux-emsb30xcf-31666201947.jpg'),
(234, 73, 'https://kinghome.vn/data/products/lo-vi-song-ket-hop-nuong-electrolux-emsb30xcf-21666201944.jpg'),
(235, 74, 'https://kinghome.vn/data/products/lo-vi-song-am-tu-malloca-mw-927I-king-home.jpg'),
(236, 74, 'https://kinghome.vn/data/products/lo-vi-song-malloca-mw-927i-31652410996.jpg'),
(237, 74, 'https://kinghome.vn/data/products/lo-vi-song-malloca-mw-927i-41652410998.jpg'),
(238, 74, 'https://kinghome.vn/data/products/lo-vi-song-malloca-mw-927i-51652411001.jpg'),
(239, 75, 'https://boschs.com.vn/wp-content/uploads/2023/08/mcsa02490512-bfl523ms0-microwave-bosch-pga3-def_1661416300387.jpg'),
(240, 75, 'https://boschs.com.vn/wp-content/uploads/2023/08/g4465-1926.jpg'),
(241, 75, 'https://bepdonghoa.com/upload/images/mcsa02490500-bfl523ms0-microwave-bosch-pga2-def_1661416300332.jpg'),
(242, 75, 'https://bepdonghoa.com/upload/images/mcsa02490512-bfl523ms0-microwave-bosch-pga3-def_1661416300387%20-%20Copy.jpg'),
(243, 76, 'https://www.ketnoitieudung.vn/data/ck/images/L%C3%B2%20Vi%20S%C3%B3ng%20R-209VN-3.jpg'),
(244, 76, 'https://www.ketnoitieudung.vn/data/ck/images/L%C3%B2%20Vi%20S%C3%B3ng%20R-209VN-2.jpg'),
(245, 76, 'https://www.ketnoitieudung.vn/data/ck/images/L%C3%B2%20Vi%20S%C3%B3ng%20R-209VN-4.jpg'),
(246, 76, 'https://www.ketnoitieudung.vn/data/ck/images/L%C3%B2%20Vi%20S%C3%B3ng%20R-209VN-4.jpg'),
(247, 77, 'https://boschs.com.vn/wp-content/uploads/2023/08/untitled-971.png'),
(248, 77, 'https://boschs.com.vn/wp-content/uploads/2023/08/untitled1-3215.png'),
(249, 77, 'https://bepdonghoa.com/upload/images/lo-vi-song-bosch-BEL554MS0B-3-1024x576.jpeg\r\n'),
(250, 77, 'https://bepdonghoa.com/upload/images/lo-vi-song-bosch-BEL554MS0B-4-1024x1024.jpeg'),
(251, 6, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-th%E1%BB%B1c-ph%E1%BA%A9m-Haipai-HAP-522-4.jpg'),
(252, 6, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-th%E1%BB%B1c-ph%E1%BA%A9m-Haipai-HAP-522-2.jpg'),
(253, 6, 'http://thegioigiadungonline.com.vn/wp-content/uploads/2018/10/M%C3%A1y-xay-n%E1%BA%A5u-th%E1%BB%B1c-ph%E1%BA%A9m-Haipai-HAP-522-3.jpg'),
(254, 6, 'https://gertech.vn/wp-content/uploads/2018/12/M%C3%A1y-xay-c%C3%B4ng-nghi%E1%BB%87p-gertech-gt-2268-1.jpg'),
(255, 7, 'https://product.hstatic.net/200000095895/product/5112_1e3e3f4df9344ee68fb50667d4200c53_a01415ddf9ec487ea19368f774a59092_7bb6113054be4c0faf3472ad6a0112ea_1024x1024.jpg'),
(256, 7, 'https://sunhouse.com.vn/pic/product/images/image-20191106103408-1.jpeg'),
(257, 7, 'https://cdn.viettelstore.vn/Images/Product/ProductImage/1648037395.jpeg'),
(258, 7, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgq1pg9rjo6qda'),
(259, 8, 'https://cdn.tgdd.vn/Products/Images/1985/225092/Kit/philips-hr2221-00-note-1.jpg'),
(260, 8, 'https://cdn.tgdd.vn/Products/Images/1985/225092/Slider/philips-hr2221-00-230821-0755220.jpg'),
(261, 8, 'https://cdn.tgdd.vn/Products/Images/1985/225102/philips-hr2222-00-1-700x467.jpg'),
(262, 8, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lmr442apqcbj8b'),
(263, 9, 'https://cdn.tgdd.vn/Products/Images/1985/66746/Kit/happycook-hcb-150c-note-f.jpg'),
(264, 9, 'https://cdn.tgdd.vn/Products/Images/1985/66746/happycook-hcb-150c-070921-023944-300x300.jpg'),
(265, 9, 'https://product.hstatic.net/200000740847/product/frame_13_7d781090d6fb4e47b6aba0dd507997ff_1024x1024.jpg'),
(266, 9, 'https://cdn.tgdd.vn/Products/Images/1985/66746/Slider/happycook-hcb-150c637684365588364903-1020x570.jpg'),
(267, 10, 'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/1985/278363/panasonic-mx-ex1001wra-050522-044734-638635519372711405-300x300.jpg'),
(268, 10, 'https://sanhangre.net/image/cache/catalog/san-pham-2020/panasonic/may-xay-sinh-to-panasonic-mxex1001wra/may-xay-sinh-to-panasonic-mx-ex1031wra-1000x1000.jpg'),
(269, 10, 'https://product.hstatic.net/200000574527/product/may-xay-sinh-to-panasonic-mx-ex1001wra-7_f909870cbe8843dd81735e13167ad68c_1024x1024.jpg'),
(270, 10, 'https://cdn.tgdd.vn/Products/Images/1985/278363/Kit/panasonic-mx-ex1001wra-note.jpg'),
(271, 11, 'https://beptot.vn/Data/upload/images/0b032b001419514192.png'),
(272, 11, 'https://beptot.vn/Data/ResizeImage/images/product/beptot/bep-dien-tu-teka-irf-641x245x245x4.webp'),
(273, 11, 'https://sieuthibepquangvinh.vn/img/p/bep-tu-teka-irf-9480-tft-2920.jpg'),
(274, 11, 'https://beptot.vn/Data/ResizeImage/images/product/large_bep-tu-teka-ir-721x245x245x4.webp'),
(275, 12, 'https://bepthanhvinh.vn/assets/uploads/3939_fvcdddvvvc.png'),
(276, 12, 'https://product.hstatic.net/200000759111/product/_iz_7210__1__ce3ae71adf104bc39d12280ec3485f4b.jpg'),
(277, 12, 'https://thuanphathome.vn/uploads/teka/bep-tu/IZ%207210/IZ-7210-nau.jpg'),
(278, 12, 'https://thuanphathome.vn/uploads/teka/bep-tu/IZ%207210/IZ-7210-nghieng.jpg'),
(279, 13, 'https://bepteka.vn/images/stories/virtuemart/product/bep-tu-teka-irf-641.jpg'),
(280, 13, 'https://bephoangcuong.com/public/filemanager/userfiles/images/product/kich-thuoc-bep-tu-teka-600-510-50.png'),
(281, 13, 'https://beptot.vn/Data/upload/images/kich-thuoc-bep-tu-teka-irs-641.png'),
(282, 13, 'https://beptot.vn/Data/ResizeImage/images/product/large_bep-tu-teka-ir-721x245x245x4.webp'),
(283, 14, 'https://beptot.vn/Data/ResizeImage/images/IRF-641x500x500x4.webp'),
(284, 14, 'https://kinghome.vn/data/products/bep-dien-tu-teka-irf-641-18480000d-11690336208.jpg'),
(285, 14, 'http://bepteka.com.vn/wp-content/uploads/kich-thuoc-lap-dat-bep-tu-teka-IRF-641.jpg'),
(286, 14, 'https://tongkhoducthanh.vn/wp-content/uploads/2018/07/Teka-641.jpg'),
(287, 15, 'https://bepvuson.vn/Data/upload/images/Product/large_bep-tu-teka-ir-90-hs.png'),
(288, 15, 'https://bepvuson.vn/Data/upload/images/bep-tu-teka-ir-90-hs_1500627701.jpg'),
(289, 15, 'https://bepnamhai.vn/assets/images/galleries/1668146441B%E1%BA%BFp-t%E1%BB%AB-Teka-IR-90-HS-1.jpg.webp'),
(290, 15, 'https://bepnamhai.vn/assets/images/galleries/1668146441B%E1%BA%BFp-t%E1%BB%AB-Teka-IR-90-HS-3.jpg.webp'),
(291, 16, 'https://bephoangcuong.com/public/filemanager/userfiles/phamnga/Teka-IR-721-hinh-anh.jpg'),
(292, 16, 'https://kinghome.vn/data/products/bep-tu-teka-ir-721-10210116-11686537399.jpg'),
(293, 16, 'https://bepteka.com.vn/wp-content/uploads/2019/11/bep-tu-Teka-IR-721-chinh-hang.jpg'),
(294, 16, 'https://www.teka-vietnam.com/images/pro/1_2.jpg'),
(295, 17, 'https://cdn.mediamart.vn/images/product/-JtuL8r.jpg'),
(296, 17, 'https://cdn.mediamart.vn/images/product/bp-t-doi-nhp-khu-rommelsbacher-ct3410-3400w_a8bc0bb0.jpg'),
(297, 17, 'https://bizweb.dktcdn.net/thumb/grande/100/272/550/products/bepturommelsbacher-ct3410-02.jpg?v=1525769553420'),
(298, 17, 'https://ctluxhome.vn/Upload/san-pham/bep-tu-1/2022/03/anh-noi-bat-bep-tu-rommelsbacher-ct3410.jpg'),
(299, 18, 'https://cdn.mediamart.vn/images/product/bp-t-doi-sunhouse-shb9101-4000w_9625f460.jpg'),
(300, 18, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/438/373/products/shb9101.jpg?v=1719993122810'),
(301, 18, 'https://dienmaygiakhang.vn/wp-content/uploads/2024/02/SHB9101_0000s_0000_Layer-7.jpg'),
(302, 18, 'https://cdn.tgdd.vn/Products/Images/1982/88017/bep-tu-doi-sunhouse-shb9108-s-3-700x467.jpg'),
(303, 19, 'https://product.hstatic.net/200000017384/product/bep-tu-teka-ir-321_8081216f4fb443b19e76000b791df97e_master.jpg'),
(304, 19, 'https://beptot.vn/Data/upload/images/teka-ir-321-1.jpg'),
(305, 19, 'https://bepphuongnam.vn/wp-content/uploads/2021/07/Teka-IR-321-1.jpg'),
(306, 19, 'https://bephoanggia.com/images/products/bep-domino-teka-IR-321(8).jpg'),
(307, 20, 'https://bepthinhphat.com/uploads/source/faro/p-878-bep-tu-faro-fr1-vitro-ceramic-20v-(1).jpg'),
(308, 20, 'https://bep68.vn/Data/upload/images/Product//bep-tu/bep-dien-tu-faro-fr1vitro-ceramic-21v-0.jpg'),
(309, 20, 'https://bep24h.vn/wp-content/uploads/2019/05/kich-thuoc-Faro-FR1-VitroCeramic-20V.jpg'),
(310, 20, 'https://bephungphu.com/wp-content/uploads/2023/08/bep-tu-chefs-eh-dih320.png'),
(311, 21, 'https://elmich.vn/wp-content/uploads/2024/09/EL-5523OV18_Profile_16.jpg'),
(312, 21, 'https://elmich.vn/wp-content/uploads/2024/09/EL-5523OV_Profile_08.jpg'),
(313, 21, 'https://elmich.vn/wp-content/uploads/2024/09/EL-5523OV_Profile_07-2.jpg'),
(314, 21, 'https://elmich.vn/wp-content/uploads/2024/09/EL-5523OV_Profile_15.jpg'),
(315, 22, 'https://bizweb.dktcdn.net/thumb/grande/100/489/006/products/2136ol01-18-3.jpg?v=1728621252523'),
(316, 22, 'https://product.hstatic.net/200000574527/product/bo-noi-inox-dap-nguyen-khoi-elmich-trimax-classic-el-2108ol-g1_6f4a94545bde469ba781fb16860d4662_1024x1024.jpg'),
(317, 22, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/6ff117818fff0e2f635e526c45329b87-1687146380542.jpg?v=1718271346217'),
(318, 22, 'https://elmich.vn/FileUpload/Images/el3981_profile_09.jpg'),
(319, 23, 'https://bizweb.dktcdn.net/thumb/grande/100/489/006/products/1170.jpg?v=1724135459557'),
(320, 23, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lwx8jl0j2swr1f'),
(321, 23, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lry15wwepww492_tn'),
(322, 23, 'https://cdnv2.tgdd.vn/mwg-static/dmx/Products/Images/2402/326883/bo-noi-chao-nhom-chong-dinh-nap-kinh-elmich-baby-el-1169ap-0-638654502043509776-700x467.jpg'),
(323, 24, 'https://bizweb.dktcdn.net/thumb/large/100/489/006/products/el-5203gy18-profile-01.jpg?v=1712218143580'),
(324, 24, 'https://elmich.vn/wp-content/uploads/2023/10/el5203gy18_profile_07-2.jpg'),
(325, 24, 'https://elmich.vn/wp-content/uploads/2023/10/el5203gy18_profile_03-2.jpg'),
(326, 24, 'https://elmich.vn/wp-content/uploads/2023/10/el5203gy18_profile_04-2.jpg'),
(327, 25, 'https://elmich.vn/FileUpload/Images/el_8197_profile_05.png'),
(328, 25, 'https://elmich.vn/FileUpload/Images/el_8197_profile_08.png'),
(329, 25, 'https://product.hstatic.net/200000868155/product/bo-noi-inox-lien-khoi-elmich-hera-el-8197-ltozp_bca48375b36a4346992c0455b553576e.jpg'),
(330, 25, 'https://elmich.vn/wp-content/uploads/2023/10/el_8196_profile_12.png'),
(331, 26, 'https://elmich.vn/wp-content/uploads/2023/11/EL-8405_Profile_01-2.jpg'),
(332, 26, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls2wpromqhfoac'),
(333, 26, 'https://bizweb.dktcdn.net/thumb/grande/100/489/006/products/vn-11134207-7r98o-loavv1trx793bc-1700720610916.jpg?v=1718269245953'),
(334, 26, 'https://elmich.vn/wp-content/uploads/2023/11/EL-8405_03-1.jpg'),
(335, 28, 'https://bizweb.dktcdn.net/thumb/grande/100/489/006/products/vn-11134207-7r98o-loalgzkeebxzc8-1700720592640.jpg?v=1700720597567'),
(336, 28, 'https://elmich.vn/wp-content/uploads/2023/11/EL-8406_03-1.jpg'),
(337, 28, 'https://bizweb.dktcdn.net/thumb/grande/100/489/006/products/vn-11134207-7r98o-loalgzkefqif6b-1700720592640.jpg?v=1700720599357'),
(338, 28, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls2wpromnoasff'),
(339, 29, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lwlbrqm8q02h6b'),
(340, 29, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lve2jsty97c433'),
(341, 29, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lthv59sr4lqlc2'),
(342, 29, 'https://i.ytimg.com/vi/eeOL808o9DM/maxresdefault.jpg'),
(343, 30, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lve2zxp28bd983'),
(344, 30, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lve2zxp2b4i5df'),
(345, 30, 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lve2zxp2dxn145'),
(346, 30, 'https://elmich.vn/wp-content/uploads/2023/10/8424_05-1.jpg'),
(347, 31, 'https://cdn.tgdd.vn/Products/Images/1987/65864/65864-600x600.jpg'),
(348, 31, 'https://cdn.tgdd.vn/Products/Images/1987/65864/Slider/251021-1112320.jpg'),
(349, 31, 'https://cdn.tgdd.vn/Products/Images/1987/65864/Kit/lo-vi-song-sharp-r-g222vn-s-20lit-1.jpg'),
(350, 31, 'https://cdn.dienmaygiakhanh.com/Products/Images/1987/67534/sharp-r-g272vn-s-20-lit-thumb.jpg'),
(351, 32, 'https://bizweb.dktcdn.net/thumb/grande/100/407/866/products/203vn-2.png?v=1650451755700'),
(352, 32, 'https://dienmaysaigon.com/wp-content/uploads/2023/09/lo-vi-song-sharp-20-lit-r-203vn-m-38091-2.jpg'),
(353, 32, 'https://cdn.tgdd.vn/Products/Images/1987/71051/lo-vi-song-sharp-r-203vn-m-1-1.jpg'),
(354, 32, 'https://bephungphu.com/wp-content/uploads/2024/06/lo-vi-song-sharp-r-203vn-m-2.jpg'),
(355, 33, 'https://cdn.tgdd.vn/Products/Images/1987/203059/Slider/1.jpg'),
(356, 33, 'https://cdn.tgdd.vn/Products/Images/1987/203059/lo-vi-song-samsung-ms23k3513as-sv-n-23-lit-15.jpg'),
(357, 33, 'https://product.hstatic.net/200000227393/product/10042746-lo-vi-song-samsung-ms23k3513as-sv-5_14d1c8ec8f9f4a5eb70606b1b19c3cf3_master.jpg'),
(358, 33, 'https://cdn.tgdd.vn/Products/Images/1987/203059/Kit/lo-vi-song-samsung-ms23k3513as-sv-n-23-lit.jpg'),
(359, 34, 'https://bizweb.dktcdn.net/100/386/618/products/ckeditor-3158899.jpg?v=1681372913120'),
(360, 34, 'https://bizweb.dktcdn.net/100/408/204/products/r-g302vn-s-v2.jpg?v=1730043212540'),
(361, 34, 'https://product.hstatic.net/200000777041/product/r-31a2vn-s-23-lit72_c025252e3ab749a09c12b0dda0aafe40.jpg'),
(362, 34, 'https://bizweb.dktcdn.net/thumb/grande/100/425/687/files/d4-562faadb-c7b7-4305-be93-071e2efb5472.jpg?v=1720233366297'),
(363, 35, 'https://cdn.tgdd.vn/Products/Images/1987/235256/235256%20(1)-600x600.jpg'),
(364, 35, 'https://cdn.tgdd.vn/Products/Images/1987/235256/r-209vn-sk-20-lit-1-1-700x467.jpg'),
(365, 35, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_25342/lo-vi-song-shar_main_766_1020.png.webp'),
(366, 35, 'https://cdn.mediamart.vn/images/product/lo-vi-song-co-20l-sharp-r-209vn-sk_95c49340.jpg'),
(367, 36, 'https://cdn.tgdd.vn/Products/Images/1990/235845/Kit/philips-fc6721-note.jpg'),
(368, 36, 'https://cdn.tgdd.vn/Products/Images/1990/235845/philips-fc6721-1-600x600.jpg'),
(369, 36, 'https://hc.com.vn/i/ecommerce/media/ck2834520-1458407914_02.jpg'),
(370, 36, 'https://bizweb.dktcdn.net/thumb/grande/100/240/954/products/4b7c7f66757b7712f3fba84e096b5c02.jpg?v=1641819608920'),
(371, 37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/m/a/may-hut-bui-cam-tay-dyson-v12-origin_6_.png'),
(372, 37, 'https://cdn.nguyenkimmall.com/images/detailed/1019/M%C3%A1y_h%C3%BAt_b%E1%BB%A5i_kh%C3%B4ng_d%C3%A2y_Dyson_SV49_V12_Origin_5.jpg'),
(373, 37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Smarthome/may-hut-bui/dyson/May-hut-bui-cam-tay-dyson-v12-origin-1.jpg'),
(374, 37, 'https://donoidia.com/wp-content/uploads/2022/11/May-hut-bui-khong-day-Dyson-SV30-ABL2-19.jpg'),
(375, 38, 'https://bizweb.dktcdn.net/100/460/752/products/2335ecea-8362-4e90-ad1b-04e36b64d723-1663314157807.jpg?v=1663314164830'),
(376, 38, 'https://kingshop.vn/data/products/1000/may-hut-bui-kho-uot-karcher-wd3-premium-1.jpg'),
(377, 38, 'https://bizweb.dktcdn.net/thumb/grande/100/350/598/products/may-hut-bui-kho-va-uot-karcher-wd3-premium-17-lit.jpg?v=1640361348927'),
(378, 38, 'https://i.ytimg.com/vi/1CRBS1_FTBc/maxresdefault.jpg'),
(379, 39, 'https://hc.com.vn/i/ecommerce/media/ck3554693-DZ-7-(1).jpg'),
(380, 39, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051308-may-hut-bui-lg-vc5420ghaq-avwplvn-4.jpg'),
(381, 39, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051308-may-hut-bui-lg-vc5420ghaq-avwplvn-7.jpg'),
(382, 39, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051308-may-hut-bui-lg-vc5420ghaq-avwplvn-2.jpg'),
(383, 40, 'https://cdn.tgdd.vn/Products/Images/1990/252131/Kit/cam-tay-electrolux-zb6214igm-notecopy.jpg'),
(384, 40, 'https://cdn.tgdd.vn/Products/Images/1990/252131/Slider/cam-tay-electrolux-zb6214igm638241730490343706.jpg'),
(385, 40, 'https://bizweb.dktcdn.net/100/350/598/products/may-hut-bui-cam-tay-rapido-electrolux-zb6214igm-2.jpg?v=1698115034113'),
(386, 40, 'https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m2ke1kfvith09a'),
(387, 107, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShSwb_zXZBtGGbKQKRg8oyiDMXG6Re3VTPDA&s'),
(388, 107, 'https://miura.com.vn/wp-content/uploads/2022/11/sant1.jpg'),
(389, 107, 'https://miura.com.vn/wp-content/uploads/2022/11/s1-1.jpg'),
(390, 107, 'https://miura.com.vn/wp-content/uploads/2022/11/sa1.jpg'),
(391, 108, 'https://sunhouse.com.vn/pic/product/images/image-20200921083932-4.png'),
(392, 108, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/349/954/products/ks-kn180cs-dao-sunhouse-hangbep-1681959683135.png?v=1681959690643'),
(393, 108, 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lkilusfqf6aw7e'),
(394, 108, 'https://vn-live-01.slatic.net/p/8fe20768ad0102c2a9d976a33ab5226c.png'),
(395, 109, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFvXOSVt_2Q-0yLC_vq_MPAmvoVeYhRzzs5w&s'),
(396, 109, 'https://bizweb.dktcdn.net/100/371/900/products/bo-4-dao-gume-gmk23-shr-1.jpg?v=1727092728957'),
(397, 109, 'https://product.hstatic.net/200000740507/product/51729e85e61d5c43050c__1__53fba3b6688445e38749c020789e0a3b_master.jpg'),
(398, 109, 'https://bizweb.dktcdn.net/thumb/grande/100/240/954/products/z5601110109421-5bdd902fa6f642e1af0a3dc890fb4268.jpg?v=1720078747107'),
(399, 110, 'https://down-vn.img.susercontent.com/file/5094e8c5e07d91cdca0ad79757ba5151'),
(400, 110, 'https://down-vn.img.susercontent.com/file/6903830a8575e9f26d333bfcbcae0818'),
(401, 110, 'https://down-vn.img.susercontent.com/file/bb996a12aa53b521a1e73d6cb23c68ec'),
(402, 110, 'https://mych.vn/thumb/480x480x2x100/upload/product/3ffdf75c6fbdd53064bab77e98c4842616832758552224-64281683275861.jpg'),
(403, 111, 'https://kingshop.vn/data/images/Bo-dao-inox-Elmich-7-mon-El3800-6.jpg'),
(404, 111, 'https://cdn.nguyenkimmall.com/images/companies/_1/Content/gia-dung/bo-dao/elmich/bo-dao-inox-elmich-7-mon-el-3800-1.jpg'),
(405, 111, 'https://bizweb.dktcdn.net/thumb/large/100/444/826/products/bo-dao-elmich-7mon-el3800-1.png?v=1671803338717'),
(406, 111, 'https://kaffvietnam.com.vn/Uploads/big_2AA830A940E2F848F7410E8B5609B60B.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `Review_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Ratting` int(11) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `Show_Hidden` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`Review_ID`, `User_ID`, `Product_ID`, `Ratting`, `Comment`, `User_Name`, `Show_Hidden`) VALUES
(14, 1, 40, 4, '1265', 'hhh', 0),
(15, 3, 35, NULL, 'haha', 'MinhSang12345', 1),
(16, 3, 35, 5, 'haha', 'MinhSang12345', 1),
(17, 3, 1, 4, 'sp tốt', 'MinhSang12345', 1),
(18, 29, 1, 4, 'sp ok', 'Hiep12345', 1),
(19, 29, 1, 1, 'aa', 'Hiep12345', 1),
(20, 37, 76, 5, 'zzz', 'Nguyễn Minh Sang', 1),
(21, 37, 76, 5, 'sp tot', 'Nguyễn Minh Sang', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetTokenExpiry` bigint(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Role` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`User_ID`, `User_Name`, `Email`, `Password`, `resetToken`, `resetTokenExpiry`, `Phone`, `Role`) VALUES
(1, 'sang', NULL, '123', '', NULL, NULL, 1),
(2, 'MinhSang123', 'sangnmps34186@fpt.edu.vn', '$2b$10$Vtn15cbFG/9QKOv51dLuFuIhyPnBjFs/9jL9okr98E7tek39eczsC', 'NULL', NULL, '123456789', 1),
(3, 'MinhSang12345', 'minhsangg0311@gmail.com1\r\n', '$2b$10$PmKIMYfWwVDMm6V7ohhzy.vP2Lj6zG1gIRp74ObRbCZkznKZCHxBy', 'NULL', NULL, '1234567890', 0),
(26, 'MinhSang1234567', 'sangnmps34186@fpt.edu.vn34567', '$2b$10$5ujdRnGPzqPM2uygpf1SWuxCnMwpGtsWk8d1LMSY7dwgb3GMpxQli', '', NULL, '234245', 0),
(27, 'fkshothw', 'sufhifis@gmail.com', '$2b$10$fcHejNLNlhGdTB/5nLRjROWPhrAWWy.DdxBNDb3Vyp8joeb.h67Uy', '', NULL, '345678', 0),
(28, 'hiep', 'nguyenhiep12@123', '$2b$10$zVfbtam7t2q9pevPksJIteHjthmdY5uSECgdoVjvblen2gMt2tzIG', '', NULL, '1111', 0),
(29, 'Hiep12345', 'nguyenhiep12062004@gmail.com', '$2b$10$vhZVqJ.WRUp40ISPw9wqbeT0xHbUvnjiuCl6q6uYfKH7ui7SGWCRK', '', NULL, '0376136846', 0),
(30, 'dattran', 'quocdat100322@gmail.com', '$2b$10$wvnqXA4lWh.gk1guWtDsVuiFhOssgS9Z8G.Jx8t.P3MSocqRCmZlG', '', NULL, '0676455634535', 1),
(31, 'MinhSang1234', 'sangnmps34186@fFpt.edu.vn', '$2b$10$KCBbtKQx8aQ0Hyp8ExB4qePdW0anw9/y/1wCl/DhyW/4j1NK7z5TG', '885e7aadbdaf45fa4164b7fc20f1c5f9f829454a', 1732265776779, '0123456789', 0),
(33, 'Nguyễn Minh Sang123', 'sufhifis@gmail.xn--coms2343-f40d', '$2b$10$YYl2MkPieefUiI0wQYLulO/TDvkzvMIZi8mRjppirTY3HhEOLgEBC', NULL, NULL, '01223333333', 0),
(34, 'Nguyễn Minh Sang1', 'minhsangg0311@gmail.comqưeqwe', '$2b$10$LmS5C1/a4GPqojbjKI3pCeuunay05NQXrnHgHfPSipAuoeDNjakw2', 'd9847be72561b8b3b5abdac6f013f1314cacfeda', 1732380088283, '0123456789', 0),
(35, 'MinhSang12344444', 'sangnmps34186@fpt.edu.vn1111', '$2b$10$Zzl/X93m5Mcr880QlkKNg.yq5q7pXnSfa8HeczSGqBITnFUJ4OFXi', NULL, NULL, '0123456789', 0),
(36, 'MinhSang123444445679698', 'sangnmps34186@fpt.edu.vn111134534534', '$2b$10$cg29kg2ZIql4WDutMqu4me.sv9zquFcoCla6D9XP3IpBqEWG7iwPu', NULL, NULL, '0123456789', 0),
(37, 'Nguyễn Minh Sang1', 'minhsangg0311@gmail.com1', '$2b$10$o5Mfj9uq/1ETXtdREIDBQOTHesyIdzQvOz/E6/qZd1ovg6yTihmdy', NULL, NULL, '0123456789', 0),
(38, 'MinhSang123457576567', 'sangnmps34186@fpt.edu.vn4364365465', '$2b$10$RNUEBKa7EWsgAnsdojsiFeB3iKFLJ1dMVusV1SsOu2K/Ai64/ZiqC', NULL, NULL, '0123456789', 0),
(39, 'Nguyễn Minh Sang', 'minhsangg0311@gmail.com', '$2b$10$pjlM2K9NXL8/VDYow3xfcuVEuabYHiOVDElRwI8fJpdVycPUMzXa.', NULL, NULL, '0123456789', 0),
(40, 'MinhSangg', 'sangnmps3418sdfsd6@fpt.edu.xn--vnerwe-4zb', '$2b$10$veWAfTNpMw1GPx4h793HBeaEWY1kfMhM0Z2Ojgxo0kRP8waMmIIBi', NULL, NULL, '0123456789', 0),
(41, 'MinhSang123g', 'sufhifis@gmail.xn--coms23433-jg7d', '$2b$10$m.KXcyovRpX0J6hhKmvjbOr2XNdJOMKPbeV3M0EXT1SsbsbsThcxa', NULL, NULL, '0123456789', 0),
(42, 'MinhSang123gg', 'sufhifis@gmail.comdf', '$2b$10$.q856/tnB7vAMks7RooLq.keoL8Ycyn.gzri48IYFK4j/DSdVP50e', NULL, NULL, '0123456789', 0),
(43, 'MinhSang123qư', 'sangnmps34186@fpt.edu.vnsd1', '$2b$10$AJ/Zd2seuvMell9L.q43dOjfFXauXxzQveOfkAS1xFFbHJCVd.n9G', NULL, NULL, '0123456789', 0),
(44, 'MinhSang12334d', 'sangnmps34186@fpt.edu.vnss', '$2b$10$/zOgoZ7hG9LEma6.STJ9XerE7G9jh0cEZhEyKLE9PBVPvupxbH6a.', NULL, NULL, '0123456789', 0),
(45, 'MinhSang123234534', 'sangnmps34186@fpt.edu.vn11', '$2b$10$SKtWmBTktBgLSDpubVZv4OsgpJTc0IK3rUG.XHW5TkfVveKDqltWG', NULL, NULL, '0123456789', 0),
(46, 'MinhSang1233', 'sangnmps34186@fpt.edu.vn22', '$2b$10$d17D/ORDpRL65jP/yA9n1OkGqKWNiZ50rTgfOqtses4GscE/tY8oa', NULL, NULL, '0123456789', 0),
(47, 'MinhSang1232', 'sangnmps34186@fpt.edu.vn12', '$2b$10$uNc1mi6/CtuoA.VhJP1.0OYAqa8YRsgPDf9tfcmgNBF3F9BRzfYb2', NULL, NULL, '0123456789', 0),
(48, 'MinhSang12323', 'sangnmps34186@fpt.edu.vn111', '$2b$10$Ic0psLbJatTr4BnOou5causSCzlYBGpJv2S3N5xZP8Ni8BYGXDq32', NULL, NULL, '0123456789', 0),
(49, 'MinhSang1231', 'sangnmps34186@fpt.edu.vn1', '$2b$10$gf/SwqqYyz5CYF0sPIsNPuo7AHFxadRIWKNm8EL7kjE2kVQhCnnf.', NULL, NULL, '0123456789', 0),
(50, 'MinhSang12312', 'sangnmps34186@fpt.edu.vn123', '$2b$10$OeWFUUiK2eWSOZOtJ1/FWefhHyHX33onjqi44ZH2ZdpZWU.W06C42', NULL, NULL, '0123456789', 0),
(51, 'MinhSang12311', 'sangnmps34186@fpt.edu.vn0', '$2b$10$NJrE3349GAzzPoBR7.PxGu6pE..mZL6tGbrBcX/X/PcZmRFZWKcqy', NULL, NULL, '0123456789', 0),
(52, 'MinhSang123df', 'sangnmps34186@fpt.edu.vn345', '$2b$10$pMoz71f7byhLbpRGzl3xbOLXCg8u.U9u7ZH4UWHWxZyuyJwy3Z..W', NULL, NULL, '0123456789', 0),
(53, 'cuội', 'sangnmps34186@fpt.edu.vnn', '$2b$10$HYsk7h/l.XY/r6TysfHRmuf7lYML0xuUn1zs7EYOHdhO3FzP.q2sy', NULL, NULL, '0123456789', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `Voucher_ID` int(11) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Expiration_Date` date DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`Voucher_ID`, `Code`, `Discount`, `Expiration_Date`, `User_ID`, `Locked`) VALUES
(1, 'sang', 50, '2024-12-09', 1, 0),
(2, 'Updated Voucher Name', 20, '2024-11-03', 1, 0),
(3, 'E8FE41CD', 15, '2024-12-22', 1, 0),
(4, 'FED9AB48', 15, '2024-12-22', 1, 0),
(5, 'E7D7504F', 15, '2024-12-22', 1, 0),
(6, '897EC71A', 15, '2024-12-22', 1, 0),
(7, '07E9F605', 15, '2024-12-22', 1, 0),
(8, 'D53FD332', 15, '2024-12-22', 1, 0),
(9, '57ECD3CA', 15, '2024-12-24', NULL, 0),
(10, 'EB150B92', 15, '2024-12-24', 37, 0),
(11, NULL, NULL, NULL, NULL, 0),
(12, 'MinhSang1', 14, '2024-11-06', NULL, 1),
(13, 'MinhSang', 12, '2024-11-28', NULL, 0),
(14, 'E41D0B82', 15, '2024-12-25', 38, 0),
(15, 'A09E4733', 15, '2024-12-26', 39, 0),
(16, '5F70E0E5', 15, '2024-12-30', 40, 0),
(17, 'E8178613', 15, '2024-12-30', 41, 0),
(18, '5F2BA1C6', 15, '2024-12-30', 42, 0),
(19, '17683DF9', 15, '2024-12-30', 43, 0),
(20, 'F127AF66', 15, '2024-12-30', 44, 0),
(21, '46517DB5', 15, '2025-01-02', 45, 0),
(22, 'C344A81D', 15, '2025-01-02', 46, 0),
(23, '23E1C3D7', 15, '2025-01-02', 47, 0),
(24, '0FBB63F7', 15, '2025-01-02', 48, 0),
(25, '77E62000', 15, '2025-01-02', 49, 0),
(26, '6DCD71AB', 15, '2025-01-02', 50, 0),
(27, '57703741', 15, '2025-01-02', 51, 0),
(28, 'E0C6BD12', 15, '2025-01-08', 52, 0),
(29, 'D5D6C9C1', 15, '2025-01-09', 53, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `Wishlist_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Brand_ID`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Voucher_ID` (`Voucher_ID`),
  ADD KEY `order_ibfk_3` (`Status`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Order_Detail_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `order_details_ibfk_2` (`Product_ID`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Category_ID` (`Category_ID`),
  ADD KEY `Brand_ID` (`Brand_ID`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`Image_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `reviews_ibfk_2` (`Product_ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`Voucher_ID`),
  ADD KEY `fk_users_vouchers` (`User_ID`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`Wishlist_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `Brand_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `Order_Detail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `Voucher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `Wishlist_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
