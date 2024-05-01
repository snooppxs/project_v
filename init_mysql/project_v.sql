-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
USE project_v;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_v`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_item_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_main`
--

CREATE TABLE `categories_main` (
  `category_main_id` int(11) NOT NULL,
  `main_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_main`
--

INSERT INTO `categories_main` (`category_main_id`, `main_category_name`) VALUES
(1, 'ภายในบ้าน'),
(2, 'ภายนอกบ้าน');

-- --------------------------------------------------------

--
-- Table structure for table `categories_sub`
--

CREATE TABLE `categories_sub` (
  `category_sub_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_main_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_sub`
--

INSERT INTO `categories_sub` (`category_sub_id`, `sub_category_name`, `category_main_id`) VALUES
(10001, 'ต้นไม้มงคล', 1),
(10002, 'ต้นไม้ที่ดูแลง่าย', 1),
(10003, 'ต้นไม้ฟอกอากาศ', 1),
(10004, 'ต้นไม้ทรงพุ่ม', 2),
(10005, 'ต้นไม้ทรงดอก', 2),
(10006, 'ต้นไม้พลัดใบ', 2),
(10007, 'ต้นไม้ยืนต้น', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `custname` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `custname`, `gender`, `email`, `phone`, `address`, `username`) VALUES
(1, 'แมนผู้กล้าหาญ', 'Male', 'Snoop.pxs@gmail.com', '0969149492', '194 นาคราช ซอย2-2-3 ต.ตลาด อ.เมือง จ.กรุงเทพ \n', 'manman_001'),
(2, 'แมนผู้อ่อนแอร์', 'Male', 'Mamam@gmail.com', '0969149492', '110 นาคราช ซอย2-2-3 ต.ตลาด อ.เมือง จ.กรุงเทพ 44152', 'manman_002'),
(3, 'มามุยหน้าบึ้ง', 'Female', 'mama@gmail.com', '0969149492', '87 ซอย2-2-3 ต.ตลาด อ.เมือง จ.กรุงเทพ 44152\n', 'manman_003'),
(4, 'แอดมินหน้ามนต์', 'Other', 'Admin@gmail.com', '0969149492', '...........................................', 'Admin001'),
(5, 'เจ้านาย ของพวกคุณ', 'Other', 'SupAdmin@gmail.com', '0969149492', 'แถววัดนา แดนใต้ และแดนนา', 'Supadmin001'),
(7, 'อัปดุล เอ้ย', 'Male', 'Audun@gmail.com', '0819769547', '199 นานา ถนนรุ้งงง ต.ตลาด อ.เมือง จ.รำราง 44888', 'Uesr123'),
(30, 'แมนผู้กล้าหาญ', 'Male', 'SumSes@gmail.com', '0969149492', 'asd', 'Admin009'),
(31, 'อัปดุล เอ้ย', 'Male', 'SumSes@gmail.com', '095', 'ฟหก', 'manman_9999'),
(32, 'a s', 'Male', 'oibuanpoibgusopnsbusapabsdbf@gmail.com', '0969149492', 'yuyu', 'Ro123456789'),
(38, '263_NEUNGREUTHAI PANPHUME', 'Male', '64050263@kmitl.ac.th', '064050263', 'yuyu', '263_NEUNGREUTHAI PANPHUME'),
(39, 'fdfdfd', 'Male', 'Audurrn@gmail.com', '0812447895', 'fbdndnd', 'Uesr999'),
(40, 'Chayangkul Buasaeng', 'Male', '64050383@kmitl.ac.th', '+66969149492', 'gdgh', 'Chayangkul Buasaeng'),
(41, 'อัปดุล เอ้เำพยเยำ้าพ', 'Male', 'Aurfyjdswdun@gmail.com', '0969149492', 'd;,sv,ps[ fhp[ehk gphkr[hjh[rk 44000', 'Admin_00001'),
(43, 'อัปดุกดหกล เอ้ยกหหเ', 'Female', 'Audurrsssn@gmail.com', '0634878254', 'กนเ่หเ่หยเห่ เนยห้่ยห ้ยำะ้่ย เำพ่้ยำ้่ยำ 44000', 'Admin0001'),
(44, 'dfoadpfo dogspg', 'Female', 'SumSesss@gmail.com', '0819769548', 'หรด่นฟรด ้รดน้ไน ้รดเนร้ไ ่รไ้ิำไเ่ไย ำ่รเยไ้ไย 44000', 'Admin004'),
(46, 'dfoadpfo dogspg', 'Female', 'SumSesss@gmail.com', '0819769548', 'หรด่นฟรด ้รดน้ไน ้รดเนร้ไ ่รไ้ิำไเ่ไย ำ่รเยไ้ไย 44000', 'Admin005');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `Name_shipping` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_recipient_phone` varchar(20) DEFAULT NULL,
  `Name_Bill` varchar(255) DEFAULT NULL,
  `Bill_address` varchar(255) DEFAULT NULL,
  `Bill_recipient_phone` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `Name_shipping`, `shipping_address`, `shipping_recipient_phone`, `Name_Bill`, `Bill_address`, `Bill_recipient_phone`, `payment_method`, `order_status`) VALUES
(24, 1, '2024-04-05 11:53:36', 'กดอเิ้ื่ทั', 'เ้ื่ทามส', 'เ ้ื่ทา', 'เิ้ะื่ัท', 'เิ้ื่ทมท่ื้เ', 'ดอเิ้ื่ท่ื้ิ', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(25, 1, '2024-04-05 11:56:17', 'หกดเื', 'หผกดเื้ท', 'หกปดเ้ท', 'หผกดแเ', 'หผกปดแเ', 'หอกดเื', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(26, 1, '2024-04-05 12:02:18', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(27, 1, '2024-04-05 12:07:08', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(28, 1, '2024-04-05 13:02:43', '', '', '', '', '', '', 'ธ.กรุงไทย', 'ยกเลิก'),
(29, 1, '2024-04-05 13:24:07', 'dfgnhmj', 'ดิเืท้่มาา่้เด', 'หแดกอเดเื้ททเ', 'หกเด้ืเท้ทเด', 'กเด้เท้เ', 'เดเืท้เดอดิเื', 'ธ.กรุงไทย', 'ยกเลิก'),
(30, 1, '2024-04-05 13:28:55', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(31, 1, '2024-04-05 13:32:25', '', '', '', '', '', '', 'ธ.กรุงไทย', 'ยกเลิก'),
(32, 1, '2024-04-05 14:39:10', 'ชิชา', 'hnjmk,likj', '0634278908', 'มะมดดด', 'fvgbbhnjmku,lmjnh', '0969149492', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(33, 1, '2024-04-06 10:20:32', 'มะนาว เปี๊ยวๆ', '36/1-3 ซ.ลาดกระบัง52 แยก 2-2-3 แขวงลาดกระบัง เขตลาดกระบัง กรุงเทพมหานคร 10520', '0634278908', 'มะมดดด', '36/1-3 ซ.ลาดกระบัง52 แยก 2-2-3 แขวงลาดกระบัง เขตลาดกระบัง กรุงเทพมหานคร 10520', '0969149492', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(34, 1, '2024-04-06 10:45:48', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(35, 1, '2024-04-06 11:24:47', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(36, 1, '2024-04-06 11:30:53', 'ชิชา', 'กำพดอเะ้ั่ีะ', '0634278908', 'มะมดดด', 'พเะ้ัี่ั่ทืพัืืทพกทื', '0969149492', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(37, 1, '2024-04-06 11:34:08', 'NEUNGREUTHAI', 'กแดอเิ้ื่ทาท่้เ', '+66969149492', 'ดิพเิเิพเิ', 'ดเิ้ื่ทามท่้ืเิดอเิ้ื่ทา่ื', '+66952629153', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(38, 1, '2024-04-07 15:26:38', '', '', '', '', '', '', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(39, 1, '2024-04-07 15:47:50', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(40, 1, '2024-04-07 21:28:56', 'NEUNGREUTHAI', 'sdfsafd 44000', '+66969149492', 'NEUNGREUTHAI', 'sdfsafd 44000', '+66969149492', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(41, 1, '2024-04-07 21:36:25', 'NEUNGREUTHAI', 'fdssdgs', '+66969149492', 'NEUNGREUTHAI', 'dgsdgsd', '+66969149492', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(42, 1, '2024-04-07 21:48:44', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จ่ายแล้ว'),
(43, 1, '2024-04-07 22:42:49', '', '', '', '', '', '', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(44, 1, '2024-04-08 00:42:49', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จ่ายแล้ว'),
(45, 1, '2024-04-08 00:54:14', 'ั่sfsf', 'dfsdf', '0634278908', 'dsfsdf', 'dfsdfs', '0634278908', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(46, 1, '2024-04-08 03:21:40', 'ชยางกูร บัวแสง', 'เเมื่องทองธานี T10 86/42 ถนน ป๊อปปูล่า จังหวัดนนทบุรี 11120', '0952629153', 'หนึ่งฤทั้ย ป้านภูมิ ', '194 นาควิชัย ต.ตลาด อ.เมือง จ.มหาสารคาม 44000', '0969149492', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(47, 1, '2024-04-08 13:08:42', 'gssdg', 'dsgsdgsg', '0634278908', 'sdgsdg', 'gdsgsgdg', '0969149492', 'ธ.กรุงไทย', 'ยกเลิก'),
(48, 1, '2024-04-08 13:31:31', 'ชิชา ชาาาา', 'dfadf sfcafa safasf 44000', '0634278908', 'มะมดดด', 'ghsfhsg tjtdkjtk 44000', '0969149492', 'ธ.กรุงไทย', 'จ่ายแล้ว'),
(49, 1, '2024-04-08 17:20:46', 'NEUNGREUTHAI', 'fsgsdfsd fdgsdgs dfsdgs dsfasg 44000', '+66969149492', 'NEUNGREUTHAI', 'erfqef fhbsrh gwhg fbs vsf 44000', '+66969149492', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(50, 2, '2024-04-09 13:23:12', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(51, 1, '2024-04-09 23:55:49', 'นูป', 'sjhouse', '0634278908', 'หนึ่งฤทัย ป้านๆๆ', 'asd', '0634278908', 'ธ.กรุงไทย', 'จัดส่งแล้ว'),
(52, 1, '2024-04-10 00:48:08', 'ชิชา', 'asd', '0634278908', 'มะมดดด', 'asd', 'asd', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(53, 1, '2024-04-10 10:48:55', 'ชิชา ชิชาภา', '144 2-1-2 หมู่ 2 ถนน วานนา ต.ตลาด อ.เมือง จ.กรุงเทพ', '0634278908', 'หนึ่งฤทั้ย ป้านภูมิ ', '199 ถนน นาควิชัย ต.ตลาด อ.เมือง จ.ร้อยเอ็ด', '0969149492', 'ธ.กรุงไทย', 'เสร็จสิ้น'),
(56, 1, '2024-04-18 04:37:11', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จ่ายแล้ว'),
(57, 1, '2024-04-18 04:59:21', '', '', '', '', '', '', 'ธ.กรุงไทย', 'จ่ายแล้ว'),
(58, 1, '2024-04-18 06:00:05', '', '', '', '', '', '', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(59, 1, '2024-04-18 06:03:46', 'ชิชา ชาาาา', 'asd', '0634278908', 'ผหปกอแดเ', 'asd', '0634278908', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(60, 1, '2024-04-18 06:13:58', 'ชิชา ชาาาา', '&lt;script&gt;alert(&quot;asd&quot;)&lt;/script&gt;', '0634278908', 'มะมดดด', 'asd', '0634278908', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(61, 1, '2024-04-18 12:19:42', 'ggjfm', 'gndcm', '53', '', '', '', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(62, 1, '2024-04-18 12:20:17', 'jfhhh', 'gggg', '5588666788', 'gnfmf', 'hdh', 'jfy', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(63, 1, '2024-04-19 06:06:49', 'ชิชา', '่รร', '0634278908', 'มะมดดด', 'มม', '0969149492', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(64, 1, '2024-04-19 06:22:41', 'ชิชา ชาาาา', 'asd', '0634278908', 'หนึ่งฤทั้ย ป้านภูมิ ', 'ccc', '0969149492', 'ธ.กรุงไทย', 'ยังไม่จ่าย'),
(65, 1, '2024-04-19 17:57:25', 'dvsdvds', 'vdvdsvdsv', '6456345', 'thdthxtdh', 'hbdhnxtdg', 'bzfdbhzbfdbhfd', 'ธ.กรุงไทย', 'รอตรวจสอบการชำระเงิน');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `vat_rate` decimal(5,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `total_price_with_vat` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `quantity`, `price`, `vat_rate`, `total_price`, `total_price_with_vat`) VALUES
(35, 25, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(36, 26, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(37, 27, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(38, 28, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(39, 29, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(40, 29, 20005, 1, 550.00, 38.50, 550.00, 588.50),
(41, 30, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(42, 31, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(43, 32, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(44, 32, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(45, 32, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(46, 32, 20005, 1, 550.00, 38.50, 550.00, 588.50),
(48, 33, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(49, 34, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(50, 35, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(51, 35, 20005, 1, 550.00, 38.50, 550.00, 588.50),
(52, 36, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(53, 37, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(55, 38, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(56, 39, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(58, 40, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(59, 40, 20002, 3, 986.00, 207.06, 2958.00, 3165.06),
(60, 40, 20004, 13, 450.00, 409.50, 5850.00, 6259.50),
(61, 40, 20007, 10, 689.00, 482.30, 6890.00, 7372.30),
(62, 40, 20008, 12, 4500.00, 999.99, 54000.00, 57780.00),
(63, 40, 20006, 3, 749.00, 157.29, 2247.00, 2404.29),
(64, 41, 20022, 15, 350.00, 367.50, 5250.00, 5617.50),
(65, 42, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(66, 43, 20001, 10, 465.00, 325.50, 4650.00, 4975.50),
(67, 44, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(68, 45, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(69, 46, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(70, 46, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(71, 47, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(72, 47, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(73, 47, 20005, 1, 550.00, 38.50, 550.00, 588.50),
(74, 47, 20001, 1, 465.00, 32.55, 465.00, 497.55),
(75, 47, 20006, 1, 749.00, 52.43, 749.00, 801.43),
(76, 48, 20003, 16, 889.00, 995.68, 14224.00, 15219.68),
(77, 48, 20004, 14, 450.00, 441.00, 6300.00, 6741.00),
(78, 49, 20003, 8, 889.00, 497.84, 7112.00, 7609.84),
(79, 49, 20022, 9, 350.00, 220.50, 3150.00, 3370.50),
(80, 49, 20001, 1, 465.00, 32.55, 465.00, 497.55),
(81, 49, 20006, 6, 749.00, 314.58, 4494.00, 4808.58),
(82, 50, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(83, 51, 20002, 2, 986.00, 69.02, 986.00, 1055.02),
(84, 52, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(88, 56, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(89, 56, 20001, 1, 465.00, 32.55, 465.00, 497.55),
(90, 56, 20002, 2, 986.00, 69.02, 986.00, 1055.02),
(91, 57, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(92, 59, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(93, 60, 20005, 1, 550.00, 38.50, 550.00, 588.50),
(94, 61, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(95, 61, 20004, 1, 450.00, 31.50, 450.00, 481.50),
(96, 61, 20001, 1, 465.00, 32.55, 465.00, 497.55),
(97, 62, 20003, 1, 889.00, 62.23, 889.00, 951.23),
(98, 63, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(99, 64, 20003, 15, 889.00, 933.45, 13335.00, 14268.45),
(100, 65, 20002, 1, 986.00, 69.02, 986.00, 1055.02),
(101, 65, 20003, 1, 889.00, 62.23, 889.00, 951.23);

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transfer_time` time DEFAULT NULL,
  `proof_of_transfer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_records`
--

INSERT INTO `payment_records` (`payment_id`, `order_id`, `payment_date`, `amount`, `transfer_time`, `proof_of_transfer`) VALUES
(6, 24, '2024-04-04', 5555.00, '11:57:00', 'proofs/ต้นงิ้ว.jpg'),
(7, 25, '2024-04-05', 20000.00, '11:56:00', 'proofs/ต้นงิ้ว.jpg'),
(8, 26, '2024-04-11', 53543.00, '17:02:00', 'proofs/ต้นงิ้ว.jpg'),
(9, 27, '2024-04-05', 5.00, '12:07:00', 'proofs/ต้นงิ้ว.jpg'),
(10, 28, '2024-04-05', 53434.00, '13:02:00', 'proofs/ต้นงิ้ว.jpg'),
(11, 29, '2024-04-05', 500.00, '13:36:00', 'proofs/ต้นงิ้ว.jpg'),
(12, 29, '2024-04-05', 500.00, '13:36:00', 'proofs/ต้นงิ้ว.jpg'),
(13, 30, '2024-04-05', 481.50, '13:46:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(14, 32, '2024-04-05', 3076.25, '14:39:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(15, 33, '2024-04-06', 1552.57, '10:25:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(16, 34, '2024-04-06', 555.00, '10:46:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(17, 35, '2024-04-06', 1643.00, '11:25:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(18, 36, '2024-04-06', 8888.00, '11:31:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(19, 37, '2024-04-06', 2006.25, '11:34:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(20, 38, '2024-04-07', 951.23, '15:26:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(21, 39, '2024-04-07', 1278.00, '15:47:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(22, 40, '2024-04-07', 78429.93, '21:29:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(23, 41, '2024-04-07', 5617.50, '21:36:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(24, 43, '2024-04-07', 4975.50, '22:42:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(25, 48, '2024-04-08', 21960.68, '17:07:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(26, 49, '2024-04-08', 16286.47, '17:21:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(27, 46, '2024-04-09', 1432.73, '11:54:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg'),
(28, 42, '2024-04-11', 500.00, '04:55:00', 'proofs/217323-qgfn7g-1.n.jpg'),
(29, 44, '2024-04-05', 200.00, '00:53:00', 'proofs/dpgwig-07 500.jpg'),
(30, 50, '2024-04-10', 951.23, '05:35:00', 'proofs/Menswear-Dog-สุนัขตัวนี้หาเลี้ยงตัวเองด้วยการเป็นนายแบบ-teen.mthai_.comหมา-Menswear-Dog-เสื้อสูทม่วง.jpg'),
(31, 53, '2024-04-10', 15825.30, '10:59:00', 'proofs/kbank_logo.jpg'),
(32, 56, '2024-04-18', 235.00, '05:37:00', ''),
(33, 57, '2024-04-09', 435645.00, '07:05:00', ''),
(34, 51, '2024-04-18', 55.00, '10:14:00', ''),
(35, 65, '2024-04-19', 53453.00, '17:57:00', 'proofs/ou20kw2efXvlUQ24J4f-o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_sub_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `quantity_available` int(11) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_sub_id`, `product_name`, `product_image`, `product_size`, `quantity_available`, `product_description`, `price`, `cost_price`) VALUES
(20001, 10001, 'ต้นวาสนา', 'ต้นวาสนา.jpg', 'ลำต้นสูงประมาณ 4-10 เมตร', 980, 'ต้นวาสนาเป็นไม้ยืนต้นขนาดกลาง ลำต้นสูงประมาณ 4-10 เมตร ลำต้นกลมตรง ไม่มีกิ่งก้าน มีข้อถี่ ผิวเปลือกลำต้นสีน้ำตาล ใบเป็นใบเดี่ยวแตกออกจากลำต้นตรงส่วนยอดเรียงซ้อนกันเวียนรอบลำต้นเป็นรูปวงกลม ลักษณะใบเรียวยาว โค้งงอ ปลายใบแหลม ขอบใบเรียบ ผิวใบเกลี้ยงเป็นมัน มีสีเขียวถึงสีเขียวอ่อน ขนาดใบกว้างประมาณ 3-6 ซม. ยาวประมาณ 20-40 ซม. ออกดอกเป็นช่อยาวตรงส่วนยอดของลำต้น ดอกมีขนาดเล็กอยู่รวมกันเป็นกลุ่มตามความยาวของช่อดอก ดอกมีสีขาวถึงเหลืองอ่อน กลิ่นหอมฉุน\r\n\r\nเชื่อว่า บ้านใดที่ปลูกต้นวาสนาเป็นต้นไม้ประจำบ้าน จะบันดาลให้เกิดความสุข สมหวังในชีวิต และยิ่งไปกว่านั้นถ้าหากผู้ใดดูแลรักษารดน้ำพรวนดิน ใส่ปุ๋ยอย่างดี จนต้นวาสนาออกดอก ซึ่งปกติจะออกดอกยากมากๆ เพราะต้องรอจนกว่าต้นวาสนาจะมีอายุมากๆ แล้วจึงจะเริ่มออกดอก จะช่วยให้คนในครอบครัวที่พักอาศัยอยู่ในบ้านนั้นได้รับโชคลาภสมความปรารถ', 465.00, 420.00),
(20002, 10001, 'ต้นลิ้นมังกร (Golden Frame)', 'ต้นลิ้นมังกร.jpg', 'ลำต้นสูงประมาณ 6-8 เมตร', 980, 'ลิ้นมังกร เป็นพืชสกุล Sansevieria อยู่ในวงศ์ Asparagaceae (เดิมจัดอยู่ในวงศ์ Agavaceae) มีชื่อสามัญหลายชื่อคือ Bowstring Hemp, Devil Tongue, Mother-in-law’s Tongue, Snake Plant\r\nคนไทยในสมัยโบราณมีความเชื่อว่า หากบ้านใดปลูกต้นลิ้นมังกรไว้ประจำบ้านจะช่วยป้องกันภัยอันตรายต่างๆ จากสิ่งแวดล้อมที่อยู่ภายนอกได้ ซึ่งในบางครั้งต้นลิ้นมังกรถูกเรียกว่า “หอกพระอินทร์” ทำให้หลายคนเชื่อว่าต้นลิ้นมังกรเป็นต้นไม้ที่มีความศักดิ์สิทธิ์\r\n\r\n\r\n การดูแล/ลักษณะนิสัย\r\n\r\n:การรดน้ำ\r\n\r\nแม้จะเป็นพืชที่ทนความแห้งแล้งได้แต่ก็ควรรดน้ำเป็นประจำ วันเว้นวัน หรือ 3 วันครั้ง ให้ดินชุ่มชื้นเสมอ แต่ไม่ควรรดน้ำจนดินแฉะเกินไปจะทำให้เน่าได้\r\n\r\n:แสงแดด\r\n\r\nหากปลูกในห้องนอนควรตั้งกระถางไว้ในที่ที่มีอากาศถ่ายเทและมีแสงแดดรำไร อย่างริมหน้าต่าง ถ้าห้องนอนไม่มีแดดส่องถึงเลยก็ควรนำออกไปตากแดดข้างนอกสัปดาห์ละครั้ง เพื่อที่ใบจะได้มีสีสันและลวดลายสวยงามขึ้น\r\n\r\nหากปลูกกลางแจ้งที่สามารถรับแสงได้ตลอดทั้งวัน ใบจะหยาบกร้าน แต่ยังเติบโตได้หากหมั่นรดน้ำเสมอ', 986.00, 915.00),
(20003, 10001, 'ต้นลิ้นมังกร (โลตัส)', 'ลิ้นมังกร2.jpg', 'ลำต้นสูงประมาณ 6-8 เมตร', 988, 'ลิ้นมังกร เป็นพืชสกุล Sansevieria อยู่ในวงศ์ Asparagaceae (เดิมจัดอยู่ในวงศ์ Agavaceae) มีชื่อสามัญหลายชื่อคือ Bowstring Hemp, Devil Tongue, Mother-in-law’s Tongue, Snake Plant\r\n\r\nคนไทยในสมัยโบราณมีความเชื่อว่า หากบ้านใดปลูกต้นลิ้นมังกรไว้ประจำบ้านจะช่วยป้องกันภัยอันตรายต่างๆ จากสิ่งแวดล้อมที่อยู่ภายนอกได้ ซึ่งในบางครั้งต้นลิ้นมังกรถูกเรียกว่า “หอกพระอินทร์” ทำให้หลายคนเชื่อว่าต้นลิ้นมังกรเป็นต้นไม้ที่มีความศักดิ์สิทธิ์', 889.00, 810.00),
(20004, 10003, 'ต้นมอนสเตอร่า', 'ต้นมอนสเตอร่า.jpg', 'ลำต้นสูงประมาณ10 เมตร', 986, 'มอนสเตอร่าเป็นไม้ใบที่มีใบขนาดใหญ่และมีรอยฉีกขาดเป็นลวดลายสวยงามตามธรรมชาติ เมื่อนำกระถางต้นมอนสเตอร่ามาวางไว้ในห้องจะให้บรรยากาศเขตร้อน\r\n\r\nเป็นไม้ใบที่ความสวยงามมาก่อนความเชื่อ คนนิยมใช้มอนสเตอร่าประดับบ้านก่อนที่เราจะรู้ว่าชาวญี่ปุ่นมีความเชื่อเกี่ยวกับพันธุ์ไม้นี้ด้วย คือถ้าปลูกไว้บริเวณทางเข้าบ้านก็จะช่วยเรื่องการป้องกันภัยร้ายที่จะเข้ามา ไม่ว่าจะมาในรูปแบบของผู้คนหรือภูติผีก็ตาม ขณะเดียวกันถ้าเลือกปลูกไว้ในทิศตะวันตกของห้องทำงานหรือห้องรับแขก จะช่วยเสริมโชคลาภและการเงินให้กับคนในบ้าน', 450.00, 395.00),
(20005, 10003, 'ต้นปาล์มพัดจีบ', 'ต้นปาล์มพัดจีบ.jpg', 'ลำต้นสูงประมาณ10 เมตร', 1000, 'ต้นปาล์มจีบ (Vanuatu Fan) มีชื่อทางวิทยาศาสตร์ว่า Licuala grandis H.Wendl. ex Linden พบว่ามีถิ่นกำเนิดมาจากแถบหมู่เกาะโซโลมอนและวานูอาตู มีลักษณะเป็นต้นเดี่ยวตั้งตรง ใบเป็นจีบเรียงสวยงาม มักนำปาล์มพัดปลูกในบ้านและตามสถานที่ต่าง ๆ อย่างแพร่หลาย ซึ่งในประเทศไทยก็มีผู้นิยมอยู่ไม่น้อยเช่นกัน\r\n\r\n\r\nต้นปาล์มทุกสายพันธุ์จะช่วยเสริมโชคลาภให้แก่ผู้เพาะปลูก โดยเน้นไปที่โชคทางด้านการเงินและลาภลอยเป็นหลัก ทั้งยังทำให้คนในครอบครัวมีความเจริญรุ่งเรือง แต่จะต้องไม่ปลูกในทิศทางบังแดดและบังลม ตลอดจนไม่ควรปลูกหน้าบ้านซึ่งจะบดบังพลังงานดีที่จะเข้ามาด้วย', 550.00, 450.00),
(20006, 10002, 'ต้นออมชมพู', 'ต้นออมชมพู.jpg', 'ลำต้นสูงประมาณ 6-8 เมตร', 991, 'เป็นเถาซึ่งมีรากยึดเกาะกับวัสดุอื่นๆเช่นไม้หลักไม้ยืนต้นลำต้นมีข้อและแตกรากออกมาจากข้อ ไม้คลุมดิน มีเหง้าใต้ดิน\r\n หากบ้านใดปลูกต้นออมชมพูไว้ในบริเวณบ้านแล้วจะช่วยส่งเสริมดวงชะตาให้กับเจ้าของบ้านและผู้พักอาศัยได้สะสมเงินได้มากสมดั่งชื่อ', 749.00, 612.00),
(20007, 10002, 'ต้นหมากเหลือง', 'ต้นหมากเหลือง.jpg', 'ลำต้นสูงประมาณ10 เมตร', 990, 'หมากเหลืองเป็นปาล์มที่มีหน่อเป็นกอขึ้นรวมกัน กอหนึ่งจะมีประมาณ 6 – 12 ต้น สูงประมาณ 25 – 30 ฟุตลำต้นมีข้อปล้องโค้งออกจากโคนกอ แลดูสวยงามยิ่ง ใบเป็นใบรูปขนนก ทางใบยาว 6 – 8 ฟุต กาบใบจะ ห่อหุ้มลำต้นไว้ หมากเหลืองเป็นปาล์มที่ได้รับความนิยม นำมาตกแต่งประดับประดาตามสถานที่เป็นอย่าง มาก เพราะความสวยงามและมีรูปร่างที่ไม่เล็กและก็ไม่ใหญ่จนเกินไป\r\n\r\n\r\nคนไทยในยุคก่อนมีความเชื่อว่าหากได้ปลูกต้นหมากไว้ประจำบ้านก็จะทำให้มีความอ่อนน้อมความมีน้ำใจ', 689.00, 598.00),
(20008, 10001, 'ต้น โมจิโต้ (Holland)', 'ต้น โมจิโต้ (Holland).jpg', '4-8 เมตร', 988, 'เป็นเถาซึ่งมีรากยึดเกาะกับวัสดุอื่นๆเช่นไม้หลักไม้ยืนต้นลำต้นมีข้อและแตกรากออกมาจากข้อ ไม้คลุมดิน มีเหง้าใต้ดิน\r\n หากบ้านใดปลูกต้นออมชมพูไว้ในบริเวณบ้านแล้วจะช่วยส่งเสริมดวงชะตาให้กับเจ้าของบ้านและผู้พักอาศัยได้สะสมเงินได้มากสมดั่งชื่อ', 4500.00, 4000.00),
(20022, 10007, 'ต้นล่ำซำ', 'ต้นล่ำซำ.jpg', 'ลำต้นสูงประมาณ 4-10 เมตร', 976, 'ต้นล่ำซำเป็นไม้ยืนต้นชนิดหนึ่ง ที่มีทรงพุ่มและกว้าง\r\n\r\nเชื่อกันว่าเป็นต้นไม้ที่มีศิริมงคลเพราะชื่อที่เป็นสิริมงคลแล้วยังเป็นต้นไม้ที่จะช่วยทำให้คนในบ้านมีความเจริญรุ่งเรืองหรือประสบความสำเร็จเจริญก้าวหน้า', 350.00, 245.00);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `shipping_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `order_id`, `tracking_number`, `shipping_date`) VALUES
(1, 27, 'TH2479905873901', '2024-04-04 17:00:00'),
(2, 32, '830284563065', '2024-04-04 17:00:00'),
(3, 37, '252828128128', '2024-04-05 17:00:00'),
(4, 38, 'TH15161651JJ', '2024-04-06 17:00:00'),
(5, 39, '52783273', '2024-04-06 17:00:00'),
(6, 39, '52783273', '2024-04-06 17:00:00'),
(7, 40, 'CT2572753TH', '2024-04-06 17:00:00'),
(8, 41, 'CT2575353TH', '2024-04-06 17:00:00'),
(9, 43, 'CT2752753TH', '2024-04-06 17:00:00'),
(10, 49, 'CT527532\\\\832E', '2024-04-07 17:00:00'),
(11, 46, 'CT238732TH', '2024-04-08 17:00:00'),
(12, 50, 'hfgjhkjlkjk.;j;', '2024-04-09 17:00:00'),
(13, 53, 'CT242142TH', '2024-04-09 17:00:00'),
(14, 51, '4654646', '2024-04-24 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('User','Admin','SupAdmin') NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `customer_id`) VALUES
(1, 'manman_001', '$2y$10$t1oQE4VM.TpU65e7SSxTAuh1kTSMGA25fijzz8GyqtRqRVgVJUW8K', 'User', 1),
(2, 'manman_002', '$2y$10$KcaHqYTI/9k2..6cE6t8DOcOwM6bK9UjwhPhpCI2AUXq4f5rWUh/S', 'User', 2),
(3, 'manman_003', '$2y$10$2lT6pVNI7iPwzyf5clJGL.rddWtZBZBRYwkq62ZBtKIvWb4HOeEOa', 'User', 3),
(6, 'Admin001', '$2y$10$FcXtBhqM5YlfSjqNbsfQZOXQanW8EZG7seYfdGrhludyUnmukzVpi', 'Admin', 4),
(7, 'Supadmin001', '$2y$10$8pDw4pMY/80oFtYgGwiAv.nUbUuU0sCZ9O6ysWccjPblb6SHH1qTK', 'SupAdmin', 5),
(8, 'Uesr123', '$2y$10$9QD3hUb/zXQnJvWFK4Jbwujj2hce18TKdz8hSg8dPvUO0vaxUhitS', 'User', 7),
(21, 'Admin009', '$2y$10$O1Mxge55uW/5qOwOqdayW.m4X3qWwTWnlCsABXWe.qZOXMh9uqy82', 'Admin', 30),
(22, 'manman_9999', '$2y$10$4.DNaSWjFC6a4kGIdyCvTex5BeGP9acmct.2uA8U61Zc9ncd9Octi', 'User', 31),
(23, 'Ro123456789', '$2y$10$vuF4.nPsmE1xKKLjf2Ri.ueU/nulVainkcCy.gWLTNymntDUYtQK2', 'User', 32),
(28, '263_NEUNGREUTHAI PANPHUME', '', 'User', 38),
(29, 'Uesr999', '$2y$10$VbZK1ptXG5bI/qnAkqXdoOb1q7H2EZKX1sMYlxMpBIfYmZpjWfLzu', 'User', 39),
(30, 'Chayangkul Buasaeng', '', 'User', 40),
(31, 'Admin_00001', '$2y$10$VY8IK9FRP3K5QxQNOXQAf.HE1Bh3tXfA9kgC4NBIuqtKKLDadtd8S', 'Admin', 41),
(32, 'Admin0001', '$2y$10$dY6jnz/oEXXQS6uDANxxdeuYrqwDbswGGe4Fy5ixjZRXIbS2j7ukm', 'Admin', 43),
(33, 'Admin004', '$2y$10$S19ROrUpebPnqpjfGsmzlOvqBAvoOCN4.oVIuCbUvWteHOBt/3iO2', 'Admin', 44),
(34, 'Admin005', '$2y$10$qRJVwm5KvrCOeBKH76t2IOmAlpihAM/S82lAvRZenF/TP8fdPd.tu', 'Admin', 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories_main`
--
ALTER TABLE `categories_main`
  ADD PRIMARY KEY (`category_main_id`);

--
-- Indexes for table `categories_sub`
--
ALTER TABLE `categories_sub`
  ADD PRIMARY KEY (`category_sub_id`),
  ADD KEY `category_main_id` (`category_main_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`) USING BTREE,
  ADD KEY `category_sub_id` (`category_sub_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `categories_main`
--
ALTER TABLE `categories_main`
  MODIFY `category_main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories_sub`
--
ALTER TABLE `categories_sub`
  MODIFY `category_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20045;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `categories_sub`
--
ALTER TABLE `categories_sub`
  ADD CONSTRAINT `categories_sub_ibfk_1` FOREIGN KEY (`category_main_id`) REFERENCES `categories_main` (`category_main_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `payment_records_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_sub_id`) REFERENCES `categories_sub` (`category_sub_id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
