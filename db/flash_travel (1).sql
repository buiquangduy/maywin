-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 06:34 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flash_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_10_20_171456_entrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('quangphatc3@gmail.com', '2a514f23cb2cb2727d60e1b407121dab06e0a2af45926e1db1df55eb801a33b6', '2016-11-05 09:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage-user', 'Manage User', 'Manage Users', '2016-10-14 17:29:23', '2016-10-14 17:29:26'),
(2, 'post-data', 'Post data', 'Post, Update, Delete data', '2016-10-14 17:29:29', '2016-10-14 17:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'All permission', '2016-10-14 17:18:56', '2016-10-14 17:19:12'),
(2, 'owner', 'Project Owner', 'All permission', '2016-10-14 17:19:05', '2016-10-14 17:19:16'),
(3, 'member', 'Member', 'Add, Edit, Delete events', '2016-10-14 17:20:17', '2016-10-14 17:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car_suppliers`
--

CREATE TABLE `tbl_car_suppliers` (
  `id` int(11) NOT NULL,
  `supplier_car_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `adddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_car_suppliers`
--

INSERT INTO `tbl_car_suppliers` (`id`, `supplier_car_name`, `phone_number`, `adddress`) VALUES
(1, 'Nguyễn Sơn', '09141231245', 'Thanh Hóa'),
(2, 'Tiến Phát', '345353636363', 'Nam Định'),
(3, 'Công Doanh', '3535363', 'Thanh Hóa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'Hot Tour and New Tour'),
(2, 'Normal Tour'),
(3, 'Tour Free and Easy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE `tbl_contacts` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text CHARACTER SET utf8,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`id`, `full_name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'Vũ Hồng Thía', 'thai@gmail.com', '09785754', 'Đi đồ sơn', '2016-10-26 10:07:03'),
(2, 'test add again', 'thaisuver195@gmail.com', '000-000-0001', 'sergstdhgtfr', '2016-10-26 10:25:15'),
(3, 'test add again', 'thaisuver195@gmail.com', '000-000-0001', 'sergstdhgtfr', '2016-10-26 10:31:19'),
(4, '12', 'thsuver195@gmail.comjj', '675675', 'SDFGHFH', '2016-10-26 10:36:07'),
(5, '12', 'thsuver195@gmail.comjj', '675675', 'SDFGHFH', '2016-10-26 10:37:45'),
(6, 'test add again 243', 'testaddagain@testaddagain.testaddagain', '675675', 'DDDDDD', '2016-10-26 10:37:58'),
(7, 'test add again 243', 'testaddagain@testaddagain.testaddagain', '675675', 'DDDDDD', '2016-10-26 10:40:36'),
(8, '123', '123@gmail.com', '123', '123', '2016-10-26 10:41:06'),
(9, '123', '123@gmail.com', '123', '123', '2016-10-26 10:41:25'),
(10, '123', '123@gmail.com', '123', '123', '2016-10-26 10:42:40'),
(11, 'THái Nogos', 'quangph@gmail.com', '000-000-0001', 'ádfas', '2016-10-26 10:43:04'),
(12, 'test add again', 'abcttt@fnm.com', '000-000-000', 'zkSgklzdfNG', '2016-10-28 16:03:35'),
(13, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'khong co gi', '2017-02-23 20:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` text,
  `birth_date` date DEFAULT NULL,
  `gender` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `full_name`, `email`, `phone_number`, `address`, `birth_date`, `gender`) VALUES
(1, 'Ngô Tiến Phát', 'phat@gmail.com', '012345676', 'Nam Đinh', '1992-09-22', 1),
(16, 'doanh', 'doanhver195@gmail.com', '012423536', 'Xuan thuy', NULL, 1),
(17, 'doah', 'abcttt@fnm.com', '09345t3t6', 'Cau Giay - Ha Noi', NULL, 1),
(18, 'thai', 'abcttt@fnm.com', '093453thf6', 'Cau Giay - Ha Noi', NULL, 1),
(19, 'thai', 'abcttt@fnm.com', '01234455675', 'skfghkfg', NULL, 1),
(20, 'thai', 'abcttt@fnm.com', '01234455675', 'skfghkfg', NULL, 1),
(21, 'thai', 'abcttt@fnm.com', '093253645765', 'Cau Giay - Ha Noi', NULL, 1),
(22, 'ágdgh', 'testaddagain@testaddagain.testaddagain', '09345465346', 'Cau Giay - Ha Noi', NULL, 1),
(23, 'thai', 'abcttt@fnm.com', '03434587238', 'zKSjfgak', NULL, 1),
(24, 'thai', 'abcttt@fnm.com', '01234455675', 'Cau Giay - Ha Noi', NULL, 1),
(25, 'thai', 'abcttt@fnm.com', '01234455675', 'Cau Giay - Ha Noi', NULL, 1),
(26, 'duy bq', 'duyver195@gmail.com', '0123444455675', 'Cau Giay - Ha Noi', NULL, 1),
(27, 'duy bq', 'duyver195@gmail.com', '0123444455675', 'Cau Giay - Ha Noi', NULL, 1),
(28, 'ágdgh', 'abcttt@fnm.com', '09876543185', 'sfdsgh', NULL, 1),
(29, 'thai', 'abcttt@fnm.com', '01234455675', 'Cau Giay - Ha Noi', NULL, 1),
(30, 'thai', 'abcttt@fnm.com', '01234455675', 'Cau Giay - Ha Noi', NULL, 1),
(31, 'doanh abc', 'abcttt@fnm.com', '034', 'Cau Giay - Ha Noi', NULL, 1),
(32, 'doanh duy', 'ther195@gmail.comii', '01234755675', 'bsfyjdfj', NULL, 1),
(33, 'doanh duy', 'ther195@gmail.comii', '01234755675', 'bsfyjdfj', NULL, 1),
(34, 'doanh duy', 'ther195@gmail.comii', '01234755675', 'bsfyjdfj', NULL, 1),
(35, 'doanh duy', 'ther195@gmail.comii', '01234755675', 'bsfyjdfj', NULL, 1),
(36, 'doanh', 'abcttt@fnm.com', '01234455675', 'Cau Giay - Ha Noi', NULL, 1),
(37, 'Ngô Tiến Phát', 'phattv@gmail.com', '09457756745', 'Nam Định', NULL, 1),
(38, 'Tiến Phát', 'phat@gmail.com', '094564367', 'Nam Định', NULL, 1),
(39, 'Tiến Phát', 'phat@gmail.com', '094564367', 'Nam Định', NULL, 1),
(40, 'vu van tai', 'tai@gmail.com', '01652400676', 'nam dinh', NULL, 1),
(41, 'Ngo Phat', 'quangphat@gmail.com', '0967085852', 'Ha Noi', NULL, 1),
(42, 'Ngo Phat', 'quangphat@gmail.com', '01652400676', 'Ha Noi', NULL, 1),
(43, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'nam định', NULL, 1),
(44, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'nam định', NULL, 1),
(45, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'nam dinh', NULL, 1),
(46, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'nam dinh', NULL, 1),
(47, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'nam dinh', NULL, 1),
(48, 'quang duy bui', 'bduy1212@gmail.com', '01652400676', 'Thanh Hóa', NULL, 1),
(49, 'quang duy bui', 'bduy1212@gmail.com', '01652400676', 'Thanh Hóa', NULL, 1),
(50, 'buiquangduy', 'bduy1789@gmail.com', '01652400676', 'nam dinh', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel_suppliers`
--

CREATE TABLE `tbl_hotel_suppliers` (
  `id` int(11) NOT NULL,
  `supplier_hotel_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hotel_suppliers`
--

INSERT INTO `tbl_hotel_suppliers` (`id`, `supplier_hotel_name`, `phone_number`, `address`) VALUES
(1, 'Duy Bùi', '01423543', 'Nam Định'),
(2, 'Trần Thức', '242525', 'Lào Cai'),
(3, 'Quốc Thái', '42525', 'Cao Bằng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `payment_name`) VALUES
(1, 'Chuyển khoản ngân hàng'),
(2, 'Đến văn phòng flash travle'),
(3, 'Thanh toán qua ngân lượng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE `tbl_province` (
  `province_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_province`
--

INSERT INTO `tbl_province` (`province_id`, `name`, `type`) VALUES
(1, 'Hà Nội', 'Thành Phố'),
(2, 'Hà Giang', 'Tỉnh'),
(4, 'Cao Bằng', 'Tỉnh'),
(6, 'Bắc Kạn', 'Tỉnh'),
(8, 'Tuyên Quang', 'Tỉnh'),
(10, 'Lào Cai', 'Tỉnh'),
(11, 'Điện Biên', 'Tỉnh'),
(12, 'Lai Châu', 'Tỉnh'),
(14, 'Sơn La', 'Tỉnh'),
(15, 'Yên Bái', 'Tỉnh'),
(17, 'Hòa Bình', 'Tỉnh'),
(19, 'Thái Nguyên', 'Tỉnh'),
(20, 'Lạng Sơn', 'Tỉnh'),
(22, 'Quảng Ninh', 'Tỉnh'),
(24, 'Bắc Giang', 'Tỉnh'),
(25, 'Phú Thọ', 'Tỉnh'),
(26, 'Vĩnh Phúc', 'Tỉnh'),
(27, 'Bắc Ninh', 'Tỉnh'),
(30, 'Hải Dương', 'Tỉnh'),
(31, 'Hải Phòng', 'Thành Phố'),
(33, 'Hưng Yên', 'Tỉnh'),
(34, 'Thái Bình', 'Tỉnh'),
(35, 'Hà Nam', 'Tỉnh'),
(36, 'Nam Định', 'Tỉnh'),
(37, 'Ninh Bình', 'Tỉnh'),
(38, 'Thanh Hóa', 'Tỉnh'),
(40, 'Nghệ An', 'Tỉnh'),
(42, 'Hà Tĩnh', 'Tỉnh'),
(44, 'Quảng Bình', 'Tỉnh'),
(45, 'Quảng Trị', 'Tỉnh'),
(46, 'Thừa Thiên Huế', 'Tỉnh'),
(48, 'Đà Nẵng', 'Thành Phố'),
(49, 'Quảng Nam', 'Tỉnh'),
(51, 'Quảng Ngãi', 'Tỉnh'),
(52, 'Bình Định', 'Tỉnh'),
(54, 'Phú Yên', 'Tỉnh'),
(56, 'Khánh Hòa', 'Tỉnh'),
(58, 'Ninh Thuận', 'Tỉnh'),
(60, 'Bình Thuận', 'Tỉnh'),
(62, 'Kon Tum', 'Tỉnh'),
(64, 'Gia Lai', 'Tỉnh'),
(66, 'Đắk Lắk', 'Tỉnh'),
(67, 'Đắk Nông', 'Tỉnh'),
(68, 'Lâm Đồng', 'Tỉnh'),
(70, 'Bình Phước', 'Tỉnh'),
(72, 'Tây Ninh', 'Tỉnh'),
(74, 'Bình Dương', 'Tỉnh'),
(75, 'Đồng Nai', 'Tỉnh'),
(77, 'Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Hồ Chí Minh', 'Thành Phố'),
(80, 'Long An', 'Tỉnh'),
(82, 'Tiền Giang', 'Tỉnh'),
(83, 'Bến Tre', 'Tỉnh'),
(84, 'Trà Vinh', 'Tỉnh'),
(86, 'Vĩnh Long', 'Tỉnh'),
(87, 'Đồng Tháp', 'Tỉnh'),
(89, 'An Giang', 'Tỉnh'),
(91, 'Kiên Giang', 'Tỉnh'),
(92, 'Cần Thơ', 'Thành Phố'),
(93, 'Hậu Giang', 'Tỉnh'),
(94, 'Sóc Trăng', 'Tỉnh'),
(95, 'Bạc Liêu', 'Tỉnh'),
(96, 'Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_receive_news`
--

CREATE TABLE `tbl_receive_news` (
  `id_receive_new` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_receive_news`
--

INSERT INTO `tbl_receive_news` (`id_receive_new`, `fullname`, `email`, `created_at`, `updated_at`) VALUES
(1, 'bui quangduy', 'duyxinhtrai@gmail.com', '2016-11-24', '2016-11-24'),
(2, 'bui quangduy', 'duyxinhtrai@gmail.com', '2016-11-24', '2016-11-24'),
(3, 'nguyen tien phat ', 'phatbv@gmail.com', '2016-11-24', '2016-11-24'),
(4, 'hbhbh', 'vvgvgv@gmail.com', '2016-11-26', '2016-11-26'),
(5, 'duy1995', 'duy18@gmail.com', '2016-11-26', '2016-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(11) NOT NULL,
  `sale_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(11) NOT NULL,
  `discount` int(100) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `sale_name`, `code`, `discount`, `start_date`, `end_date`) VALUES
(1, 'Giảm giá cực sốc', '1', 3, '2016-07-23', '2016-11-30'),
(2, 'Giảm giá mùa hè', '2345', 10, '2016-10-13', '2016-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tours`
--

CREATE TABLE `tbl_tours` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tour_name` text NOT NULL,
  `slug` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `days` varchar(255) NOT NULL,
  `car_supplier_id` int(11) NOT NULL,
  `hotel_supplier_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tours`
--

INSERT INTO `tbl_tours` (`id`, `category_id`, `tour_name`, `slug`, `thumbnail`, `intro`, `content`, `price`, `sale_id`, `from`, `to`, `days`, `car_supplier_id`, `hotel_supplier_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'Tour Hà Giang mùa hoa tam giác mạch', 'Tour-Ha-Giang-mua-hoa-tam-giac-mac', 'Ma-pi-leng.jpg', '<p>Tour H&agrave; Giang m&ugrave;a hoa tam gi&aacute;c mạch khởi h&agrave;nh thứ 2 v&agrave; thứ 6 h&agrave;ng tuần. Tặng dịch vụ Photo Tour, đi tour với nhiếp ảnh gia chuy&ecirc;n nghiệp, tặng &aacute;o cờ đỏ sao v&agrave;ng v&agrave; gối hơi tựa cổ. Đừng bỏ lỡ tour H&agrave; Giang m&ugrave;a đẹp nhất trong năm.</p>\r\n', '<p style="text-align:justify">Mỗi dịp m&ugrave;a thu về, cao nguy&ecirc;n H&agrave; Giang lại rực hồng bởi sắc hoa tam gi&aacute;c mạch đơn sơ m&agrave; quyến rũ du kh&aacute;ch. Đừng bỏ lỡ cơ hội hiếm c&oacute; n&agrave;y để tới v&agrave; chi&ecirc;n ngưỡng mảnh đất địa đầu tổ quốc h&ugrave;ng vĩ n&agrave;y c&ugrave;ng PYS Travel</p>\r\n\r\n<p style="text-align:justify"><strong>Với nhiều năm kinh nghiệm v&agrave; uy t&iacute;n, chất lượng đ&atilde; được h&agrave;ng ng&agrave;n kh&aacute;ch h&agrave;ng khẳng định, h&atilde;y lựa chọn PYS Travel l&agrave;m bạn đồng h&agrave;nh để c&oacute; một chuyến đi an to&agrave;n, vui vẻ v&agrave; đ&aacute;ng nhớ.</strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="font-size:14pt">Ảnh kh&aacute;ch h&agrave;ng trong c&aacute;c tour H&agrave; Giang của PYS Travel</span></strong></p>\r\n\r\n<div class="fb-post fb_iframe_widget">&nbsp;</div>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600; font-size:18pt"><strong>H&agrave;ng ng&agrave;n khoảnh khắc vui vẻ ch&iacute;nh l&agrave; lời khẳng định cho chất lượng dịch vụ của PYS Travel. H&atilde;y đồng h&agrave;nh c&ugrave;ng&nbsp;PYS Travel để c&oacute; một chuyến đi an to&agrave;n, vui vẻ v&agrave; đ&aacute;ng nhớ.</strong></span></p>\r\n\r\n<p style="text-align:justify">Tham gia <strong>Tour H&agrave; Giang m&ugrave;a hoa tam gi&aacute;c mạch</strong> của PYS Travel, du kh&aacute;ch sẽ được phi&ecirc;u du qua khắp rẻo cao ph&iacute;a Bắc, nơi những c&aacute;nh đồng hoa mỏng manh, phớt hồng đung đưa giữa miền gi&oacute; cổng trời.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/TGM_3.jpg"><img alt="tgm_3" class="aligncenter size-full wp-image-22083" src="http://pystravel.vn/wp-content/uploads/2015/09/TGM_3.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a><em>Ảnh kh&aacute;ch h&agrave;ng trong tour H&agrave; Giang m&ugrave;a tam gi&aacute;c mạch 2015 &ndash; PYS Travel</em></p>\r\n\r\n<p style="text-align:justify">Những đồng hoa, h&uacute;t mắt l&ecirc;n đến đồi cao, phủ hồng một trời x&aacute;m đ&aacute;. Một khoảng trời rất ri&ecirc;ng, rất lạ, khoảng trời bồng bềnh, &ecirc;m tr&ocirc;i v&agrave; đầy l&atilde;ng mạn.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/09/TGM-2.jpg"><img alt="tgm-2" class="aligncenter size-full wp-image-22082" src="http://pystravel.vn/wp-content/uploads/2015/09/TGM-2.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a></p>\r\n\r\n<p style="text-align:justify">Ngo&agrave;i việc chi&ecirc;m ngưỡng vẻ đẹp của lo&agrave;i <strong>hoa tam gi&aacute;c mạch</strong>, tham gia tour H&agrave; Giang m&ugrave;a hoa tam gi&aacute;c mạch, du kh&aacute;ch c&ograve;n được tới thăm những địa điểm nổi tiếng kh&aacute;c nơi địa đầu tổ quốc như: <strong>cột cờ Lũng C&uacute;, n&uacute;i đ&ocirc;i C&ocirc; Ti&ecirc;n, cao nguy&ecirc;n đ&aacute; v&agrave; phố cổ đồng văn Đồng Văn</strong>&hellip; tất cả hứa hẹn một chuyến đi v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n\r\n<p style="text-align:center"><img alt="lũng cú hà giang" class="aligncenter size-full wp-image-11178" src="http://pystravel.vn/wp-content/uploads/2015/09/ha-giang-fam1-500.png" style="display:block; height:592px; margin:0px auto; width:500px" /><em>Đo&agrave;n 100 kh&aacute;ch của PYS Travel với cờ đỏ sao v&agrave;ng tr&ecirc;n cột cờ Lũng C&uacute;</em></p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Cot-co-lung-cu.jpg"><img alt="cot-co-lung-cu" class="aligncenter size-full wp-image-22081" src="http://pystravel.vn/wp-content/uploads/2015/09/Cot-co-lung-cu.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a></p>\r\n\r\n<p style="text-align:justify">Bạn sẽ được trải nghiệm cuộc sống của cộng đồng người d&acirc;n tộc thiểu số tại H&agrave; Giang khi tới thăm l&agrave;ng văn h&oacute;a Lũng Cẩm, bối cảnh của bộ phim Chuyện của Pao nổi tiếng.</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Lung-Cam.jpg"><img alt="lung-cam" class="aligncenter size-full wp-image-22079" src="http://pystravel.vn/wp-content/uploads/2015/09/Lung-Cam.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a><em>L&agrave;ng văn h&oacute;a Lũng Cẩm</em></p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Nha-pao.jpg"><img alt="nha-pao" class="aligncenter size-full wp-image-22080" src="http://pystravel.vn/wp-content/uploads/2015/09/Nha-pao.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a> <em>Chụp ảnh tại ng&ocirc;i nh&agrave; trong bối cảnh phim &ldquo;Chuyện của Pao&rdquo;&nbsp;</em></p>\r\n\r\n<p style="text-align:justify">Những tuyệt t&aacute;c của cao nguy&ecirc;n đ&aacute; sẽ mang tới rất nhiều trải nghiệm th&uacute; vị, cuốn h&uacute;t v&agrave; say m&ecirc;.<strong> Du lịch H&agrave; Giang</strong> kh&aacute;m ph&aacute; n&uacute;i đ&ocirc;i C&ocirc; Ti&ecirc;n kiệt t&aacute;c kỳ th&uacute; của thi&ecirc;n nhi&ecirc;n nơi lưng chưng m&acirc;y cao nguy&ecirc;n đ&aacute;.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Nha-vua-meo.jpg"><img alt="nha-vua-meo" class="aligncenter size-full wp-image-22084" src="http://pystravel.vn/wp-content/uploads/2015/09/Nha-vua-meo.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a></p>\r\n\r\n<p style="text-align:center"><img alt="dinh họ vương hà giang" class="aligncenter size-full wp-image-11188" src="http://pystravel.vn/wp-content/uploads/2015/09/dinh-nha-vuong-650-1.png" style="display:block; height:400px; margin:0px auto; width:650px" /><em>Dinh họ Vương &ndash; C&ocirc;ng tr&igrave;nh kiến tr&uacute;c độc đ&aacute;o nơi cao nguy&ecirc;n đ&aacute;. Ảnh tour 2014</em></p>\r\n\r\n<p style="text-align:justify">Hay gh&eacute; thăm l&acirc;u đ&agrave;i vua M&egrave;o, hay c&ograve;n gọi l&agrave; <strong>Dinh thự Họ Vương&nbsp;</strong>từng l&agrave; dinh thự của bậc đế vương xưa, l&agrave; một c&ocirc;ng tr&igrave;nh c&oacute; kiến tr&uacute;c đẹp, hiếm c&oacute; v&agrave; rất độc đ&aacute;o của v&ugrave;ng cao nguy&ecirc;n n&agrave;y.</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Ma-pi-leng.jpg"><img alt="ma-pi-leng" class="aligncenter size-full wp-image-22085" src="http://pystravel.vn/wp-content/uploads/2015/09/Ma-pi-leng.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a><br />\r\n<img alt="ma-pi-leng-650" class="aligncenter size-full wp-image-11189" src="http://pystravel.vn/wp-content/uploads/2015/09/ma-pi-leng-650.png" style="display:block; height:379px; margin:0px auto; width:650px" /><em>Đ&egrave;o M&atilde; P&igrave; L&egrave;ng, nơi ghi lại những bức ảnh tuyệt đẹp &ndash; Ảnh tour PYS Travel</em></p>\r\n\r\n<p style="text-align:justify">C&aacute;ch thị trấn Đồng Văn 15km về hướng M&egrave;o Vạc l&agrave; con <strong>đ&egrave;o M&atilde; P&iacute; L&egrave;ng</strong>, dịch ra l&agrave; &ldquo;sống mũi ngựa&rdquo;, dịch &yacute; l&agrave; con đ&egrave;o hiểm trở đến nỗi ngựa đi qua cũng phải bạt v&iacute;a, lạc hơi. Được mệnh danh l&agrave; <strong>&ldquo;Thi&ecirc;n hạ đệ nhất đ&egrave;o&rdquo;</strong>, <strong>M&atilde; P&iacute; L&egrave;ng l&agrave; con đ&egrave;o đẹp v&agrave; h&ugrave;ng vĩ nhất miền n&uacute;i ph&iacute;a Bắc Việt Nam</strong> với một b&ecirc;n l&agrave; v&aacute;ch n&uacute;i cao dựng đứng, một b&ecirc;n l&agrave; vực đ&aacute; s&acirc;u v&agrave; k&igrave; vĩ nhất Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<h2 style="text-align:justify"><span style="color:#0000ff">PYS Travel &nbsp;&ndash; Nh&agrave; tổ chức tour H&agrave; Giang uy t&iacute;n, chất lượng số 1</span></h2>\r\n\r\n<p><strong><span style="color:#ff6600; font-size:14pt">1. Kinh nghiệm l&acirc;u năm trong việc tổ chức tour H&agrave; Giang</span></strong><br />\r\nH&agrave;ng ng&agrave;n khoảnh khắc vui vẻ của kh&aacute;ch h&agrave;ng được ghi lại trong c&aacute;c chuyến đi</p>\r\n\r\n<p><img alt="khách hàng đi tour hà giang" class="aligncenter size-full wp-image-11341" src="http://pystravel.vn/wp-content/uploads/2015/09/khach-hg4.png" style="display:block; height:223px; margin:0px auto; width:650px" /></p>\r\n\r\n<p><span style="color:#ff6600; font-size:14pt"><strong>2. Khẳng định chất lượng dịch vụ h&agrave;ng đầu</strong></span><br />\r\nPYS Travel hợp t&aacute;c với c&aacute;c nh&agrave; nghỉ, kh&aacute;ch sạn c&oacute; ti&ecirc;u chuẩn chất lượng tốt nhất</p>\r\n\r\n<p>&ndash; <strong>Tại Đồng Văn</strong>: Kh&aacute;ch sạn Hoa Cương (3 sao, mới nhất), Kh&aacute;ch sạn L&acirc;m T&ugrave;ng, Khải Ho&agrave;n, Nh&agrave; nghỉ Th&aacute;i Thịnh, Như Quỳnh<br />\r\n&ndash; <strong>Tại M&egrave;o Vạc</strong>: Nh&agrave; nghỉ Linh Anh, Hoa Cương<br />\r\n&ndash; <strong>Tại Y&ecirc;n Minh:</strong> Kh&aacute;ch sạn Thảo Nguy&ecirc;n<br />\r\n&ndash; <strong>Tại Quản Bạ:</strong> Nh&agrave; nghỉ Cao Nguy&ecirc;n Đ&aacute;, Anh Hoạt, N&uacute;i Đ&ocirc;i</p>\r\n\r\n<p style="text-align:center"><img alt="khách sạn Hoa cương đồng văn hà giang" class="aligncenter size-full wp-image-11343" src="http://pystravel.vn/wp-content/uploads/2015/09/hoa-cuong.jpg" style="display:block; height:450px; margin:0px auto; width:600px" /><br />\r\n<em>Ảnh ph&ograve;ng kh&aacute;ch sạn Hoa Cương 3 sao tại Đồng Văn (Ưu ti&ecirc;n sắp xếp cho kh&aacute;ch đặt tour sớm)</em></p>\r\n\r\n<p><span style="color:#ff6600; font-size:14pt"><strong>3. Đội ngũ l&aacute;i xe &amp; Hướng dẫn vi&ecirc;n nhiệt t&igrave;nh, kinh nghiệm</strong></span><br />\r\nĐội ngũ l&aacute;i xe c&oacute; kinh nghiệm đi cung đường đ&egrave;o dốc Đ&ocirc;ng &amp; T&acirc;y &nbsp;Bắc<br />\r\n<img alt="ha-giang-pys-travel010" class="aligncenter size-full wp-image-11342" src="http://pystravel.vn/wp-content/uploads/2015/09/ha-giang-pys-travel0101.jpg" style="display:block; height:400px; margin:0px auto; width:600px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:14pt"><strong><span style="color:#ff6600">4.&nbsp;Chương tr&igrave;nh tour phong ph&uacute;, lu&ocirc;n c&oacute; dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng</span></strong></span></p>\r\n\r\n<ul>\r\n	<li><strong>Tặng &aacute;o cờ đỏ sao v&agrave;ng.</strong></li>\r\n	<li><strong>Tặng gối hơi tựa cổ tr&ecirc;n xe.</strong></li>\r\n	<li><strong>Dịch vụ Photo Tour &ndash;&nbsp;Đi tour c&ugrave;ng photographer chuy&ecirc;n nghiệp v&agrave; mang ảnh đẹp về nh&agrave;.</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2015/09/Ao-sao-vang.jpg"><img alt="ao-sao-vang" class="aligncenter size-full wp-image-22091" src="http://pystravel.vn/wp-content/uploads/2015/09/Ao-sao-vang.jpg" style="display:block; height:400px; margin:0px auto; width:650px" /></a><em>Kh&aacute;ch h&agrave;ng của PYS Travel với &aacute;o cờ đỏ sao v&agrave;ng tại&nbsp;cột cờ Lũng C&uacute;</em></p>\r\n\r\n<p style="text-align:center"><span style="color:#3366ff; font-size:16pt"><strong>GI&Aacute; TOUR: VNĐ/KH&Aacute;CH</strong></span><br />\r\n<span style="color:#000000; font-size:12pt">Khởi h&agrave;nh thứ 6 h&agrave;ng tuần: <span style="color:#3366ff"><strong>2.380.000 VNĐ</strong></span></span><br />\r\n<span style="color:#000000; font-size:12pt">Khởi h&agrave;nh thứ 2 h&agrave;ng tuần: <span style="color:#3366ff"><strong>2.680.000 VNĐ</strong></span> (<em>chỉ &aacute;p dụng trong th&aacute;ng 10, 11</em>)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="su-box su-box-style-default" style="border-color:#7aa1cb;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;">\r\n<div class="su-box-title" style="background-color:#98c9fe;color:#FFFFFF;-webkit-border-top-left-radius:1px;-webkit-border-top-right-radius:1px;-moz-border-radius-topleft:1px;-moz-border-radius-topright:1px;border-top-left-radius:1px;border-top-right-radius:1px;"><strong>Khởi h&agrave;nh từ TP. Hồ Ch&iacute; Minh</strong></div>\r\n\r\n<div class="su-box-content su-clearfix">\r\n<p><strong><span style="font-size:14pt">Tour TP. HCM &ndash; H&agrave; Nội &ndash; H&agrave; Giang </span></strong></p>\r\n\r\n<p><strong><span style="font-size:14pt">Gi&aacute;: 5.980.000 đồng &ndash; 4 ng&agrave;y 4&nbsp;đ&ecirc;m </span></strong></p>\r\n\r\n<p><strong><span style="font-size:14pt">Đ&atilde; bao gồm v&eacute; m&aacute;y bay khứ hồi v&agrave; 2 đ&ecirc;m kh&aacute;ch sạn tại H&agrave; Nội </span></strong></p>\r\n\r\n<p><strong><span style="font-size:14pt"><a href="http://pystravel.vn/tour/10185-tour-tphcm-ha-noi-ha-giang-mua-hoa-tam-giac-mach.html" target="_blank">Xem chi tiết &gt;&gt;</a></span></strong></p>\r\n</div>\r\n</div>\r\n\r\n<table cellpadding="5" cellspacing="5" class="aligncenter" style="background-color:#fff9ab; width:600px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center"><span style="font-size:18pt"><strong>ĐẶT TOUR H&Agrave; GIANG CỦA PYS TRAVEL</strong></span><br />\r\n			<span style="font-size:14pt">nhận ngay qu&agrave; tặng đặc biệt </span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="ha giang" class="aligncenter" id="__wp-temp-img-id" src="http://pystravel.vn/wp-content/uploads/2016/05/ha-giang-pys-travel001.jpg" style="display:block; height:330px; margin:0px auto; width:600px" title="" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GI&Aacute; BAO GỒM</strong></p>\r\n\r\n<p style="text-align:justify">&ndash; Xe &Ocirc; t&ocirc; đời mới đưa đ&oacute;n suốt h&agrave;nh tr&igrave;nh.<br />\r\n&ndash; HDV kinh nghiệm, nhiệt t&igrave;nh suốt h&agrave;nh tr&igrave;nh.<br />\r\n&ndash; Ở kh&aacute;ch sạn/nh&agrave; nghỉ/home-stay ti&ecirc;u chuẩn đầy đủ tiện nghi, trung b&igrave;nh 02- 03 kh&aacute;ch/ph&ograve;ng.<br />\r\n&ndash; Ăn uống theo chương tr&igrave;nh (Bữa ch&iacute;nh 100.000đ/ kh&aacute;ch/ bữa; Ăn s&aacute;ng 30.000đ/ kh&aacute;ch/ bữa)<br />\r\n&ndash; V&eacute; thắng cảnh v&agrave;o cửa một lần tại c&aacute;c điểm tham quan.<br />\r\n&ndash; Bảo hiểm du lịch suốt tuyến, mức cao nhất 20.000.000đ/ người/ vụ<br />\r\n&ndash; Nước uống 01 chai/người/ng&agrave;y.</p>\r\n\r\n<h3 style="text-align:justify">KH&Ocirc;NG BAO GỒM</h3>\r\n\r\n<p style="text-align:justify">&ndash; Thuế VAT 10%<br />\r\n&ndash; Đồ uống, điện thoại, chi ph&iacute; giặt l&agrave; hoặc chi ph&iacute; c&aacute; nh&acirc;n kh&aacute;c<br />\r\n&ndash; Ăn uống ngo&agrave;i chương tr&igrave;nh.<br />\r\n&ndash; Phụ thu người nước ngo&agrave;i 10 USD/ 1 người/ 1 ng&agrave;y</p>\r\n\r\n<h3 style="text-align:justify">QUY ĐỊNH PHỤ THU</h3>\r\n\r\n<p style="text-align:justify">&ndash; Phụ thu ph&ograve;ng đơn 450.000đ/ kh&aacute;ch/ 2 đ&ecirc;m (&Aacute;p dụng trong trường hợp kh&aacute;ch muốn ở 01 m&igrave;nh 01 ph&ograve;ng trong suốt h&agrave;nh tr&igrave;nh)<br />\r\n&ndash; Phụ thu 250.000đ/ kh&aacute;ch/tour (khi đo&agrave;n khởi h&agrave;nh v&agrave;o c&aacute;c dịp nghỉ lễ&hellip;)<br />\r\n&ndash; Trẻ em từ 11 tuổi trở l&ecirc;n: t&iacute;nh 100% gi&aacute; tour.<br />\r\n&ndash; Trẻ em từ 05 &ndash; 11 tuổi: t&iacute;nh 75 % gi&aacute; trị tour &ndash; Ngủ chung với bố mẹ.<br />\r\n&ndash; Trẻ em dưới 05 tuổi: miễn ph&iacute; (Ăn ngủ c&ugrave;ng bố mẹ, ngồi l&ograve;ng bố hoặc mẹ)</p>\r\n\r\n<h3 style="text-align:justify">QUY ĐỊNH CHỖ NGỒI</h3>\r\n\r\n<ul>\r\n	<li>PYS Travel kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch giữ chỗ ngồi theo số thứ tự tr&ecirc;n xe</li>\r\n	<li>Qu&yacute; kh&aacute;ch vui l&ograve;ng tu&acirc;n thủ sắp xếp của hướng dẫn vi&ecirc;n khi khởi h&agrave;nh</li>\r\n</ul>\r\n\r\n<h3 style="text-align:justify">LƯU &Yacute;:</h3>\r\n\r\n<p style="text-align:justify">Do m&ugrave;a lễ hội hoa tam gi&aacute;c mạch, số lượng kh&aacute;ch h&agrave;ng gh&eacute; thăm H&agrave; Giang tăng cao n&ecirc;n số lượng ph&ograve;ng tại Y&ecirc;n Minh v&agrave; Đồng Văn kh&ocirc;ng đủ để phục vụ Qu&yacute; kh&aacute;ch, PYS Travel sẽ sắp xếp th&ecirc;m ph&ograve;ng nghỉ tại Quản Bạ v&agrave; M&egrave;o Vạc đảm bảo dịch vụ chu đ&aacute;o v&agrave; đầy đủ lịch tr&igrave;nh c&aacute;c điểm thăm quan cho Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14pt"><strong>Tham khảo</strong>: <a href="http://pystravel.vn/tour/10185-tour-tphcm-ha-noi-ha-giang-mua-hoa-tam-giac-mach.html" target="_blank">Tour H&agrave; Giang m&ugrave;a hoa Tam gi&aacute;c mạch khởi h&agrave;nh từ TP.HCM</a></span></p>\r\n\r\n<div id="richSnippets">\r\n<div style="border: 1px solid #CCC; padding: 10px; color: #aaa; margin: 10px 0 0;">\r\n<h4>T&oacute;m tắt th&ocirc;ng tin</h4>\r\n\r\n<div><strong>T&ecirc;n tour:</strong> Tour H&agrave; Giang m&ugrave;a hoa tam gi&aacute;c mạch<br />\r\n<strong>M&ocirc; tả:</strong> Tour H&agrave; Giang m&ugrave;a hoa tam gi&aacute;c mạch khởi h&agrave;nh thứ 2 v&agrave; thứ 6 h&agrave;ng tuần. Tặng dịch vụ Photo Tour, đi tour với nhiếp ảnh gia chuy&ecirc;n nghiệp, tặng &aacute;o cờ đỏ sao v&agrave;ng v&agrave; gối hơi tựa cổ. Đừng bỏ lỡ tour H&agrave; Giang m&ugrave;a đẹp nhất trong năm.<br />\r\n<strong>Điểm đến:</strong> <a href="http://pystravel.vn/tour/tour-ha-giang" rel="category tag">H&agrave; Giang</a><br />\r\n<strong>M&atilde; tour:</strong> 9235<br />\r\n<strong>Đ&aacute;nh gi&aacute;:</strong>\r\n\r\n<div class="post-ratings" id="post-ratings-9235"><img alt="1 sao" id="rating_9235_1" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/stars_crystal/rating_on.gif" style="border:0px; cursor:pointer" title="1 sao" /><img alt="2 sao" id="rating_9235_2" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/stars_crystal/rating_on.gif" style="border:0px; cursor:pointer" title="2 sao" /><img alt="3 sao" id="rating_9235_3" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/stars_crystal/rating_on.gif" style="border:0px; cursor:pointer" title="3 sao" /><img alt="4 sao" id="rating_9235_4" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/stars_crystal/rating_on.gif" style="border:0px; cursor:pointer" title="4 sao" /><img alt="5 sao" id="rating_9235_5" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/stars_crystal/rating_off.gif" style="border:0px; cursor:pointer" title="5 sao" /> (<strong>5</strong> b&igrave;nh chọn, trung b&igrave;nh: <strong>4.20</strong> / 5)\r\n\r\n<div style="display: none;">&nbsp;</div>\r\n</div>\r\n\r\n<div class="post-ratings-loading" id="post-ratings-9235-loading"><img alt="Loading..." class="post-ratings-image" src="http://pystravel.vn/wp-content/plugins/wp-postratings/images/loading.gif" style="height:16px; width:16px" title="Loading..." />Loading...</div>\r\n<br />\r\n<strong>Gi&aacute;:</strong> 2.380.000 VNĐ<br />\r\n<strong>Đang b&aacute;n tại:</strong> PYSTravel.vn<br />\r\n<strong>T&igrave;nh trạng sản phẩm:</strong> Mới - C&ograve;n h&agrave;ng!</div>\r\n</div>\r\n</div>\r\n\r\n<h4>Dịch vụ đi k&egrave;m</h4>\r\n\r\n<div class="line">&nbsp;</div>\r\n\r\n<div class="row" id="dichvudikem">\r\n<div class="col-xs-3">Bảo hiểm</div>\r\n\r\n<div class="col-xs-3">Hướng dẫn vi&ecirc;n</div>\r\n\r\n<div class="col-xs-3">Xe đưa đ&oacute;n</div>\r\n\r\n<div class="col-xs-3">V&eacute; tham quan</div>\r\n</div>\r\n\r\n<div class="line">&nbsp;</div>\r\n\r\n<div class="row">\r\n<div class="col-xs-6 btn-blue">Y&ecirc;u cầu gọi điện tư vấn</div>\r\n\r\n<div class="col-xs-6 btn-green"><a href="http://pystravel.vn/dat-tour-moi?id=9235">Đặt tour ngay </a></div>\r\n</div>\r\n', '4000000.00', 1, 2, 2, '4 ngày 1 đêm', 1, 2, 1, '2016-11-25 22:42:35', '2016-10-27 03:15:28'),
(2, 3, 'Free & Easy Đà Lạt Best Western Plaza 3 ngày 2 đêm', 'Free-&-Easy-Da-Lat-Best-Western-Plaza-3-ngay-2-de', 'quy-nhon-pys-travel002.jpg', '<p>Du lịch Đ&agrave; Lạt dễ d&agrave;ng v&agrave; linh hoạt với g&oacute;i dịch vụ Free &amp; Easy tại Best Western Plaza ti&ecirc;u chuẩn 3,5*, đ&atilde; bao gồm v&eacute; m&aacute;y bay, city tour, 1 bữa tối, hoa quả v&agrave; rượu vang tại ph&ograve;ng.</p>\r\n', '<p>Du lịch Đ&agrave; Lạt dễ d&agrave;ng v&agrave; linh hoạt với g&oacute;i dịch vụ Free &amp; Easy tại Best Western Plaza ti&ecirc;u chuẩn 3,5*, đ&atilde; bao gồm v&eacute; m&aacute;y bay, city tour, 1 bữa tối, hoa quả v&agrave; rượu vang tại ph&ograve;ng.</p>\r\n', '3000000.00', 2, 68, 68, '3 ngày 4 đêm', 1, 1, 1, '2016-11-24 22:51:18', '0000-00-00 00:00:00'),
(5, 3, 'Free & Easy Hà Nội – Quy Nhơn 3 ngày 2 đêm', 'nua-thay-sau', 'Best-western.jpg', '<p>vịnh h&agrave; long long lanh l&oacute;ng l&aacute;nh như những vi&ecirc;n ngọc qu&yacute;Chỉ với 1 tiếng 30 ph&uacute;t bay từ H&agrave; Nội bạn đ&atilde; c&oacute; một kỳ nghỉ v&ocirc; c&ugrave;ng sảng kho&aacute;i tại th&agrave;nh phố biển Quy Nhơn xinh đẹp. Với dịch vụ nghỉ dưỡng ti&ecirc;u chuẩn 4 sao tại kh&aacute;ch sạn S&agrave;i G&ograve;n Quy Nhơn c&ugrave;ng c&aacute;c m&oacute;n hải sản v&agrave; đặc sản địa phương &ldquo;ngon-bổ-rẻ&rdquo;</p>\r\n', '<p>vịnh h&agrave; long long lanh l&oacute;ng l&aacute;nh như những vi&ecirc;n ngọc qu&yacute;Chỉ với 1 tiếng 30 ph&uacute;t bay từ H&agrave; Nội bạn đ&atilde; c&oacute; một kỳ nghỉ v&ocirc; c&ugrave;ng sảng kho&aacute;i tại th&agrave;nh phố biển Quy Nhơn xinh đẹp. Với dịch vụ nghỉ dưỡng ti&ecirc;u chuẩn 4 sao tại kh&aacute;ch sạn S&agrave;i G&ograve;n Quy Nhơn c&ugrave;ng c&aacute;c m&oacute;n hải sản v&agrave; đặc sản địa phương &ldquo;ngon-bổ-rẻ&rdquo;</p>\r\n', '70000000.00', 0, 52, 52, '1 tuần', 1, 1, 1, '2016-11-24 21:47:39', '0000-00-00 00:00:00'),
(8, 1, 'Hà Nội – Mộc Châu thiên đường tuyết trắng 1 ngày', 'nua-thay-sau', 'moc-chau-pys-travel0058-600x400.jpg', 'Tuyết đ&atilde; rơi tr&ecirc;n cao nguy&ecirc;n Mộc Ch&acirc;u! Đ&oacute; l&agrave; một hiện tượng thi&ecirc;n nhi&ecirc;n kỳ th&uacute; được nhiều người mong đợi nhất trong những ng&agrave;y qua.\r\n', '<p style="text-align:justify">Tuyết đ&atilde; rơi tr&ecirc;n cao nguy&ecirc;n Mộc Ch&acirc;u! Đ&oacute; l&agrave; một hiện tượng thi&ecirc;n nhi&ecirc;n kỳ th&uacute; được nhiều người mong đợi nhất trong những ng&agrave;y qua.</p>\r\n\r\n<p style="text-align:center"><img alt="moc-chau-pys-travel001" class="aligncenter size-full wp-image-16044" src="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0015.jpg" style="display:block; height:578px; margin:0px auto; width:600px" /><span style="font-size:10pt"><em><strong>Những lối v&agrave;o vườn mận phủ trắng hoa v&agrave; tuyết ngỡ như ở đ&acirc;u đ&oacute; của xứ lạnh &Acirc;u ch&acirc;u</strong></em></span></p>\r\n\r\n<p style="text-align:justify">Tới Mộc Ch&acirc;u v&agrave;o những ng&agrave;y n&agrave;y ngỡ như một trời T&acirc;y phủ bao của tuyết trắng, người người n&ocirc; nức l&ecirc;n đường với h&agrave;nh tr&igrave;nh xuy&ecirc;n băng gi&aacute; để thực hiện giấc mơ tuyết trắng.</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0038.jpg"><img alt="moc-chau-pys-travel003" class="aligncenter size-full wp-image-16042" src="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0038.jpg" style="display:block; height:337px; margin:0px auto; width:600px" /></a><span style="font-size:10pt"><em><strong>C&aacute;nh đồng tuyết trắng với rất nhiều b&ocirc;ng tuyết li ti neo đậu tr&ecirc;n những nh&aacute;nh c&acirc;y nhỏ x&iacute;u</strong></em></span></p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0026.jpg"><img alt="moc-chau-pys-travel002" class="aligncenter size-full wp-image-16043" src="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0026.jpg" style="display:block; height:337px; margin:0px auto; width:600px" /></a><span style="font-size:10pt"><em><strong>Hoa mận cũng đang bung rộ rực rỡ khoe sắc cũng với băng tuyết</strong></em></span></p>\r\n\r\n<p style="text-align:justify">Tham gia ng&agrave;y kẻo lỡ với h&agrave;nh tr&igrave;nh <strong>H&agrave; Nội &ndash; Mộc Ch&acirc;u thi&ecirc;n đường tuyết trắng 1 ng&agrave;y của PYS Travel</strong>, ngắm những ngọn n&uacute;i được phủ tuyết trắng x&oacute;a lung linh dưới &aacute;nh nắng mặt trời, huyền ảo, lộng lẫy như cổ t&iacute;ch ch&acirc;u &Acirc;u.</p>\r\n\r\n<p style="text-align:justify"><img alt="moc-chau-pys-travel005" class="aligncenter size-full wp-image-16041" src="http://pystravel.vn/wp-content/uploads/2016/01/moc-chau-pys-travel0058.jpg" style="display:block; height:450px; margin:0px auto; width:600px" /></p>\r\n\r\n<p style="text-align:justify">Chuẩn bị h&agrave;nh trang v&agrave; chụp những bức h&igrave;nh ấn tượng ghi dấu kỷ niệm được trải nghiệm c&aacute;i lạnh v&agrave; vẻ đẹp đặc biệt n&agrave;y tr&ecirc;n <strong>cao nguy&ecirc;n Mộc Ch&acirc;u.</strong></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/01/12576297_969922249745397_1720952100_n.jpg"><img alt="12576297_969922249745397_1720952100_n" class="aligncenter wp-image-16047" src="http://pystravel.vn/wp-content/uploads/2016/01/12576297_969922249745397_1720952100_n.jpg" style="display:block; height:449px; margin:0px auto; width:598px" /></a></p>\r\n\r\n<p style="text-align:center"><span style="color:#0000ff"><strong><span style="font-size:18pt">GI&Aacute; TOUR: 1.500.000VND/2 kh&aacute;ch người lớn</span></strong></span><br />\r\n<span style="color:#ff0000"><em><strong><span style="font-size:18pt">Ho&agrave;n tiền&nbsp;500.000VND nếu kh&ocirc;ng săn được tuyết</span></strong></em></span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14pt"><em><strong>(Đi 1 kh&aacute;ch lẻ đ&oacute;ng 1000.000VNĐ, ho&agrave;n tiền 300.000VNĐ nếu kh&ocirc;ng săn được&nbsp;tuyết)</strong></em></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#008080"><strong><span style="font-size:18pt">&Aacute;p dụng duy nhất cho ng&agrave;y 26, 27/1</span></strong></span></p>\r\n\r\n<h3>GI&Aacute; TOUR BAO GỒM:</h3>\r\n\r\n<p>&ndash; Xe du lịch đời mới, m&aacute;y lạnh đưa đ&oacute;n theo lịch tr&igrave;nh.<br />\r\n&ndash; C&aacute;c bữa ăn theo chương tr&igrave;nh (1 bữa ch&iacute;nh)<br />\r\n&ndash; Hướng dẫn vi&ecirc;n vui vẻ nhiệt t&igrave;nh.<br />\r\n&ndash; Nước uống 1 chai/ kh&aacute;ch/ ng&agrave;y<br />\r\n&ndash; Bảo hiểm du lịch 20.000.000VNĐ/ người/ vụ<br />\r\n&ndash; Thợ ảnh của PYS Travel</p>\r\n\r\n<h3>KH&Ocirc;NG BAO GỒM:</h3>\r\n\r\n<p>&ndash; Thuế VAT.<br />\r\n&ndash; C&aacute;c chi ph&iacute; c&aacute; nh&acirc;n ngo&agrave;i chương tr&igrave;nh: điện thoại, đồ uống, giặt l&agrave;&hellip;</p>\r\n\r\n<h3>PHỤ THU:</h3>\r\n\r\n<p>&ndash; Trẻ em dưới 5 tuổi<br />\r\n&ndash; Trẻ em từ 5-10 tuổi, t&iacute;nh 75% chi ph&iacute; người lớn.<br />\r\n&ndash; Trẻ từ 11 tuổi trở l&ecirc;n, t&iacute;nh bằng chi ph&iacute; người lớn.</p>\r\n', '800000.00', 0, 15, 15, '1 ngay', 1, 3, 1, '2016-10-27 07:24:19', '2016-10-24 06:31:55'),
(9, 1, 'Voucher giảm giá Vinpearl Phú Quốc Resort & Villas 3 ngày 2 đêm', 'nua-thay-sau', 'vinpearl-phu-quoc-pys-travel002.jpg', '<p>Trải d&agrave;i tr&ecirc;n đường bờ biển tuyệt đẹp, Vinpearl Ph&uacute; Quốc Resort Villas, tọa lạc tại B&atilde;i D&agrave;i, l&agrave; một trong mười b&atilde;i biển đẹp v&agrave; hoang sơ nhất thế giới, nằm ở ph&iacute;a T&acirc;y Bắc của đảo ngọc Ph&uacute; Quốc. Nơi đ&acirc;y la trung t&acirc;m Du lịch nghỉ dưỡng đẳng cấp nhất thế giới, s&aacute;nh ngang với c&aacute;c khu du lịch nổi tiếng tr&ecirc;n thế giới như Bali- Indonesia, Phu Ket &ndash; Th&aacute;i Lan.</p>\r\n', '<p>Quần thể biệt thự được thiết kế theo phong c&aacute;ch kiến tr&uacute;c đương đại, b&agrave;i tr&iacute; nội thất tinh tế, đem đến cho du kh&aacute;ch trải nghiệm nghỉ dưỡng sang trọng v&agrave; gần gũi với thi&ecirc;n nhi&ecirc;n. B&ecirc;n cạnh cơ sở lưu tr&uacute; tiện nghi, Vinpearl Resort Ph&uacute; Quốc cũng sở hữu cơ sở vật chất hiện đại, spa đẳng cấp v&agrave; bể bơi 5.000 m2.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel002.jpg"><img alt="vinpearl-phu-quoc-pys-travel002" class="aligncenter size-full wp-image-22657" src="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel002.jpg" style="display:block; height:396px; margin:0px auto; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">B&ecirc;n cạnh dịch vụ nghỉ dưỡng đẳng cấp, Vinpearl Ph&uacute; Quốc c&ograve;n kiến tạo một khu vui chơi hiện đại với đầy đủ c&aacute;c hạng mục giải tr&iacute; d&agrave;nh cho mọi lứa tuổi -Vinpearl Land, bao gồm: Thế giới games; Khu vui chơi ngo&agrave;i trời với nhiều tr&ograve; chơi cảm gi&aacute;c mạnh; Thủy cung với h&agrave;ng chục ng&agrave;n sinh vật biển v&agrave; chim c&aacute;nh cụt kỳ th&uacute;; S&acirc;n khấu nhạc nước quy m&ocirc; gần 3000 kh&aacute;n giả với c&aacute;c chương tr&igrave;nh biểu diễn đặc sắc. Vinpearl Land kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu vui chơi của du kh&aacute;ch m&agrave; c&ograve;n trở th&agrave;nh c&ocirc;ng vi&ecirc;n vui chơi giải tr&iacute; quy m&ocirc; lớn v&agrave; hiện đại, bổ sung ho&agrave;n hảo cho bức tranh dịch vụ &ndash; du lịch Ph&uacute; Quốc.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel005.png"><img alt="vinpearl-phu-quoc-pys-travel005" class="aligncenter size-full wp-image-22658" src="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel005.png" style="display:block; height:338px; margin:0px auto; width:600px" /></a><br />\r\nNối tiếp Vinpearl Nha Trang, Vinpearl Ph&uacute; Quốc l&agrave; quần thể du lịch nghỉ dưỡng thứ hai tr&ecirc;n đảo tại Việt Nam c&oacute; s&acirc;n golf. Được thiết kế bởi IMG (Mỹ) &ndash; đơn vị tư vấn h&agrave;ng đầu thế giới về s&acirc;n golf &ndash; Vinpearl Golf c&oacute; quy m&ocirc; 27 lỗ, trải rộng tr&ecirc;n diện t&iacute;ch 100ha v&agrave; tận dụng tối đa vẻ đẹp địa h&igrave;nh, tạo n&ecirc;n một s&acirc;n golf đẳng cấp quốc tế v&agrave; l&agrave; điểm nhấn tuyệt vời về kh&ocirc;ng gian xanh.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel004.jpg"><img alt="vinpearl-phu-quoc-pys-travel004" class="aligncenter size-full wp-image-22660" src="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel004.jpg" style="display:block; height:337px; margin:0px auto; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel001.jpg"><img alt="vinpearl-phu-quoc-pys-travel001" class="aligncenter size-full wp-image-22659" src="http://pystravel.vn/wp-content/uploads/2016/10/vinpearl-phu-quoc-pys-travel001.jpg" style="display:block; height:379px; margin:0px auto; width:600px" /></a><br />\r\nTừ Vinpearl Ph&uacute; Quốc, du kh&aacute;ch c&oacute; thể di chuyển thuận tiện để kh&aacute;m ph&aacute; c&aacute;c danh thắng nổi tiếng như: G&agrave;nh Dầu, Cửa Cạn, B&atilde;i Thơm, B&atilde;i V&ograve;ng, B&atilde;i Khem, B&atilde;i Sao, B&atilde;i Trường, suối Tranh, suối Đ&aacute; B&agrave;n, Dinh Cậu, Ch&ugrave;a Hộ Quốc, Vườn Quốc gia Ph&uacute; Quốc&hellip;v&agrave; đặc biệt l&agrave; di t&iacute;ch lịch sử nh&agrave; t&ugrave; Ph&uacute; Quốc.</p>\r\n\r\n<p style="text-align:center"><span style="color:#0000ff; font-size:18pt"><strong>GI&Aacute; KHUYẾN MẠI</strong></span><br />\r\n<span style="color:#ff0000"><strong>Thời gian mở b&aacute;n: 20/10- 30/11/2016</strong></span><br />\r\n<span style="color:#ff0000"><strong>Thời gian &aacute;p dụng 20/10-30/11/2018</strong></span></p>\r\n\r\n<p style="text-align:center"><span style="color:#3366ff; font-size:14pt"><strong>Biệt thự 2 ph&ograve;ng ngủ, bể bơi ri&ecirc;ng: <span style="font-size:18pt">16.000.000đ</span>/ 2 đ&ecirc;m/ 4 người lớn </strong></span><br />\r\n<span style="color:#3366ff; font-size:14pt"><strong>Biệt thự 3 ph&ograve;ng ngủ, bể bơi ri&ecirc;ng: <span style="font-size:18pt">22.000.000đ</span>/ 2 đ&ecirc;m/ 6 người lớn </strong></span><br />\r\n<span style="color:#3366ff; font-size:14pt"><strong>Biệt thự 4 ph&ograve;ng ngủ, bể bơi ri&ecirc;ng: <span style="font-size:18pt">28.000.000đ</span>/ 2 đ&ecirc;m/ 8 người lớn</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600"><strong>DỊCH VỤ BAO GỒM:</strong></span><br />\r\n&bull; 02 đ&ecirc;m nghỉ biệt thự nghỉ dưỡng Vinpearl Ph&uacute; Quốc Resort &amp; Villas<br />\r\n&bull; 02 bữa s&aacute;ng, 02 bữa trưa v&agrave; 02 bữa tối tự chọn tại kh&aacute;ch sạn<br />\r\n&bull; Xe đ&oacute;n tiễn s&acirc;n bay Ph&uacute; Quốc theo lịch bay của kh&aacute;ch<br />\r\n&bull; Miễn ph&iacute; vui chơi c&ocirc;ng vi&ecirc;n Vinpearl Land hoặc vườn th&uacute; Vinpearl Safari<br />\r\n&bull; Miễn ph&iacute; 1 v&ograve;ng chơi golf 18 lỗ cho 2 người/voucher tại Vinpearl Golf Club<br />\r\n&bull; Nước uống ch&agrave;o mừng khi nhận ph&ograve;ng<br />\r\n&bull; Tr&agrave;, caf&eacute;, 2 chai nước mỗi ph&ograve;ng ngủ<br />\r\n&bull; Miễn ph&iacute; sử dụng c&aacute;c tiện &iacute;ch chung của kh&aacute;ch sạn: Hồ bơi, ph&ograve;ng tập thể dục, x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, c&acirc;u lạc bộ trẻ em<br />\r\n&bull; Miễn ph&iacute; sử dụng internet kh&ocirc;ng d&acirc;y tốc độ cao<br />\r\n&bull; Thuế v&agrave; ph&iacute; dịch vụ</p>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600"><strong>DỊCH VỤ KH&Ocirc;NG BAO GỒM:</strong></span><br />\r\n&bull; V&eacute; m&aacute;y bay<br />\r\n&bull; C&aacute;c bữa ăn ch&iacute;nh v&agrave; v&eacute; thăm quan tại c&aacute;c điểm<br />\r\n&bull; C&aacute;c dịch vụ ph&aacute;t sinh ngo&agrave;i g&oacute;i khuyến mại</p>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600"><strong>PHỤ THU:</strong></span></p>\r\n\r\n<p style="text-align:justify">&bull; Trẻ dưới 4 tuổi: Miễn ph&iacute;<br />\r\n&bull; Trẻ từ 4 &ndash; dưới 12 tuổi: 1.400.000đ/ 1 đ&ecirc;m/ b&eacute;<br />\r\n&bull; Trẻ tr&ecirc;n 12 tuổi: T&iacute;nh như người lớn</p>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600"><strong>LƯU &Yacute;:</strong> </span><br />\r\n&bull; Số lượng kh&aacute;ch nghỉ tối đa mỗi biệt thự:<br />\r\nBiệt thự 2 ph&ograve;ng ngủ: 4 người lớn + 2 trẻ em dưới 12 tuổi<br />\r\nBiệt thự 3 ph&ograve;ng ngủ: 6 người lớn + 3 trẻ em dưới 12 tuổi<br />\r\nBiệt thự 4 ph&ograve;ng ngủ: 8 người lớn + 4 trẻ em dưới 12 tuổi<br />\r\n&bull; Voucher kh&ocirc;ng ho&agrave;n huỷ. Thanh to&aacute;n 100% tại thời điểm mua.<br />\r\n&bull; C&oacute; &aacute;p dụng phụ thu dịp Lễ/Tết theo qui định của kh&aacute;ch sạn.</p>\r\n\r\n<p style="text-align:justify"><span style="color:#ff6600"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N HỦY &amp; THAY ĐỔI:</strong></span><br />\r\nKh&ocirc;ng ho&agrave;n, kh&ocirc;ng hủy v&agrave; thay đổi</p>\r\n', '1200000.00', 2, 93, 93, '2 ngay 1 dem', 3, 2, 1, '2016-11-24 21:26:01', '2016-10-24 06:42:54'),
(20, 1, 'Nhanh chân đến “hoang đảo” Cù Lao Xanh trước khi ai ai cũng đổ về đây', 'nua-thay-sau', 'cu-lao-xanh-pys-travel010.jpg', '<p>C&ugrave; Lao Xanh chưa phải l&agrave; c&aacute;i t&ecirc;n nổi bật tr&ecirc;n bản đồ du lịch của Quy Nhơn thế n&ecirc;n &iacute;t người biết đến h&ograve;n ngọc xanh ẩn chứa nhiều trải nghiệm v&ocirc; c&ugrave;ng th&uacute; vị n&agrave;y.</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">C&ugrave; Lao Xanh hay c&ograve;n được gọi l&agrave; Đảo V&acirc;n Phi hay x&atilde; đảo Nhơn Ch&acirc;u. Đảo nằm gần vịnh Xu&acirc;n Đ&agrave;i (x&atilde; Nhơn Ch&acirc;u), c&aacute;ch th&agrave;nh phố Quy Nhơn khoảng 20km.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel010.jpg"><img alt="cu-lao-xanh-pys-travel010" class="aligncenter size-full wp-image-24889" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel010.jpg" style="display:block; height:399px; margin:0px auto; width:600px" /></a><em>Một g&oacute;c đảo C&ugrave; Lao Ch&agrave;m</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Nh&igrave;n từ xa, C&ugrave; Lao Xanh hiện l&ecirc;n như một bức tranh n&ecirc;n thơ với những rặng dừa ung dung trước gi&oacute;, những c&acirc;y b&agrave;ng non lặng lẽ tỏa b&oacute;ng được trồng dọc bờ biển. Ph&iacute;a trước l&agrave; b&atilde;i c&aacute;t trắng d&agrave;i, ph&iacute;a sau l&agrave; &ldquo;th&agrave;nh qu&aacute;ch&rdquo; n&uacute;i đ&aacute;, xếp chồng l&ecirc;n nhau, quanh năm gồng m&igrave;nh chống chọi với gi&oacute; biển v&agrave; s&oacute;ng ngầm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel011.jpg"><img alt="cu-lao-xanh-pys-travel011" class="aligncenter size-full wp-image-24895" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel011.jpg" style="display:block; height:434px; margin:0px auto; width:600px" /></a><em>Những b&atilde;i san h&ocirc; sống nằm rất gần mặt nước</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Bước ch&acirc;n l&ecirc;n đảo, bạn sẽ thực sự h&ograve;a nhập với nhịp sống của người d&acirc;n nơi đ&acirc;y. Những tiện &iacute;ch du lịch gần như chưa xuất hiện ở C&ugrave; Lao Xanh. Những b&atilde;i tắm trải rộng, xanh ngắt v&agrave; v&ocirc; c&ugrave;ng y&ecirc;n b&igrave;nh. Kh&ocirc;ng chỉ đắm m&igrave;nh trong l&agrave;n nước biển, du kh&aacute;ch c&ograve;n c&oacute; thể trải nghiệm ngắm nh&igrave;n san h&ocirc; dưới mặt nước biển m&agrave; kh&ocirc;ng cần c&oacute; kỹ thuật bơi si&ecirc;u đẳng. Taị b&atilde;i Bổn hay b&atilde;i Gala, san h&ocirc; nằm c&aacute;ch mặt nước kh&ocirc;ng s&acirc;u, ngay cả khi đi bộ tr&ecirc;n bờ đ&atilde; c&oacute; thể thấy h&igrave;nh d&aacute;ng, sắc m&agrave;u của san h&ocirc; ẩn hiện.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel001_001.jpg"><img alt="cu-lao-xanh-pys-travel001_001" class="aligncenter size-full wp-image-24891" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel001_001.jpg" style="display:block; height:900px; margin:0px auto; width:600px" /></a><em>Ngọn hải đăng cổ C&ugrave; Lao Xanh được sơn 3 khoang m&agrave;u nổi bật</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Đến C&ugrave; Lao Xanh, bạn n&ecirc;n d&agrave;nh ch&uacute;t thời gian để gh&eacute; thăm ngọn hải đăng cổ ở đ&acirc;y. Ngọn Hải đăng tr&ecirc;n đảo được người Ph&aacute;p x&acirc;y dừng v&agrave;o năm 1899, cao đến 119m. Thời đ&oacute;, đ&acirc;y l&agrave; ngọn hải đăng cao nhất khu vực Đ&ocirc;ng Dương v&agrave; c&oacute; thể chiến đến xe khoảng 25 hải l&yacute; (khoảng 50km). Từ l&acirc;u, người d&acirc;n ở đ&acirc;y đ&atilde; coi ngọn hải đăng như một biểu tượng gắn liền với đảo. Hải đăng C&ugrave; Lao Xanh được xếp v&agrave;o top 5 ngọn hải đăng tr&ecirc;n 100 tuổi l&agrave; điểm đến hấp dẫn của Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel004.jpg"><img alt="cu-lao-xanh-pys-travel004" class="aligncenter size-full wp-image-24883" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel004.jpg" style="display:block; height:218px; margin:0px auto; width:600px" /></a><em>Một số du kh&aacute;ch dựng lều ngủ đ&ecirc;m ở đảo (Facebook:&nbsp;Đảo C&ugrave; Lao Xanh Quy Nhơn)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Cuộc sống l&agrave;ng ch&agrave;i giản dị, y&ecirc;n b&igrave;nh. Nếu kh&ocirc;ng lựa chọn nghỉ ch&acirc;n tại kh&aacute;ch sạn, bạn c&oacute; thể trải nghiệm dịch vụ homestay hay nghỉ đ&ecirc;m cắm trại tr&ecirc;n bờ biển. Đồ ăn ở đ&acirc;y cũng kh&ocirc;ng xuất hiện trong qu&aacute;n x&aacute; trang ho&agrave;ng, những hải sản tươi mới được phục vụ ngay tr&ecirc;n b&atilde;i biển hoặc c&aacute;c bạn mua về tự chế biến, hay nhờ chủ nh&agrave; l&agrave;m đều v&ocirc; c&ugrave;ng k&iacute;ch th&iacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel008.jpg"><img alt="cu-lao-xanh-pys-travel008" class="aligncenter size-full wp-image-24887" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel008.jpg" style="display:block; height:450px; margin:0px auto; width:600px" /></a><em>Cuộc sống b&igrave;nh y&ecirc;n nơi đảo vắng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">Bạn c&oacute; thể đến thăm C&ugrave; Lao Xanh bất cứ thời gian n&agrave;o của năm, trừ khoảng 2 th&aacute;ng b&atilde;o v&agrave;o th&aacute;ng 7 v&agrave; th&aacute;ng 8. V&ugrave;ng đất n&agrave;y c&ograve;n ẩn chứa nhiều điều th&uacute; vị kh&aacute;c. Khi leo n&uacute;i, bạn rất dễ bắt gặp v&agrave; tự thưởng cho m&igrave;nh nhiều lại c&acirc;y rừng như d&uacute; dẻ, ch&agrave; l&agrave;&hellip; v&agrave; tận hưởng hương vị ngọt b&ugrave;i, tươi ngon. Bạn cũng c&oacute; thể hỏi người d&acirc;n chỉ đường đến giếng &ocirc;ng ti&ecirc;n để nếm thử d&ograve;ng nước qu&yacute; của người d&acirc;n nơi n&agrave;y&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel003.jpg"><img alt="cu-lao-xanh-pys-travel003" class="aligncenter size-full wp-image-24882" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel003.jpg" style="display:block; height:400px; margin:0px auto; width:600px" /></a><br />\r\n<br />\r\n<a href="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel001_002.jpg"><img alt="cu-lao-xanh-pys-travel001_002" class="aligncenter size-full wp-image-24894" src="http://pystravel.vn/wp-content/uploads/2016/11/cu-lao-xanh-pys-travel001_002.jpg" style="display:block; height:567px; margin:0px auto; width:600px" /></a><em>Tận hưởng v&ugrave;ng biển xanh trong, nguy&ecirc;n sở của C&ugrave; Lao Xanh (Ảnh: @kimkim.37)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">C&ugrave; Lao Xanh c&ograve;n ấn chứa nhiều trải nghiệm th&uacute; vị cho những ai muốn đến kh&aacute;m ph&aacute; v&ugrave;ng đất mới c&ograve;n nguy&ecirc;n sơ, x&ocirc; bồ&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#ff6600"><strong><a href="http://pystravel.vn/tour/17647-free-easy-ha-noi-quy-nhon-3-ngay-2-dem.html" style="color: #ff6600;">&gt;&gt; Thu xếp đến Quy Nhơn để gh&eacute; đến những b&atilde;i biển thơ mộng của th&agrave;nh phố với g&oacute;i tour linh hoạt đầy hấp dẫn của PYS Travel</a></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:right"><em><strong>Th&ugrave;y Anh</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1790000.00', 0, 52, 52, '3 ngày 2 đêm', 1, 2, 1, '2016-11-24 21:26:31', '2016-11-24 21:24:14');
INSERT INTO `tbl_tours` (`id`, `category_id`, `tour_name`, `slug`, `thumbnail`, `intro`, `content`, `price`, `sale_id`, `from`, `to`, `days`, `car_supplier_id`, `hotel_supplier_id`, `status`, `updated_at`, `created_at`) VALUES
(21, 3, 'Free & Easy tận hưởng kỳ nghỉ Nha Trang tại Majestic Star Hotel 3 ngày 2 đêm', 'Free-&-Easy-tan-huong-ky-nghi-Nha-Trang-tai-Majestic-Star-Hotel-3-ngay-2-de', 'bai-tam-hon-noi-nha-trang-708x400.jpg', '<p><strong>Vẻ đẹp của Nha Trang khiến nhiều vịnh biển kh&aacute;c phải ghen tị bởi thi&ecirc;n nhi&ecirc;n ban tặng cho nơi đ&acirc;y những g&igrave; m&agrave; một v&ugrave;ng duy&ecirc;n hải c&oacute; thể c&oacute;: những b&atilde;i tắm với dải c&aacute;t trắng mịn trải d&agrave;i, những h&ograve;n đảo ngo&agrave;i khơi đẹp ngỡ ng&agrave;ng, những rặng san h&ocirc; k&igrave; ảo dưới l&ograve;ng đại dương tới những ng&ocirc;i đền Chăm r&ecirc;u phong cổ k&iacute;nh tr&ecirc;n n&uacute;i..</strong></p>\r\n', '<p><span style="color:rgb(255, 102, 0)"><strong>G&oacute;i du lịch linh hoạt Free &amp; Easy Nha Trang tại Majestic Star Hotel bao gồm:</strong></span><br />\r\n<em>&ndash; V&eacute; Vietjet air khứ hồi H&agrave; Nội &ndash; Nha Trang+ 7kg h&agrave;nh l&yacute; x&aacute;ch tay&nbsp;</em><br />\r\n<em>&ndash; 2 đ&ecirc;m ph&ograve;ng Superior City view Majettic Star Nha Trang ti&ecirc;u chuẩn Quốc tế 3 sao&nbsp;</em><br />\r\n<em>&ndash; 2 đ&ecirc;m ăn s&aacute;ng buffet tại kh&aacute;ch sạn&nbsp;</em><br />\r\n<em>&ndash; Miễn ph&iacute; xe đ&oacute;n tiễn s&acirc;n bay Nha Trang 2 chiều&nbsp;</em><br />\r\n<em>&ndash; Tặng tour thăm quan Vịnh Đảo Nha Trang 1 ng&agrave;y (bao gồm xe, HDV, ăn trưa)&nbsp;</em><br />\r\n<em>&ndash; Miễn ph&iacute; wifi v&agrave; nước uống tại kh&aacute;ch sạn</em></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(255, 0, 0)"><strong><em>Thời gian mở b&aacute;n: 15/11- 22/11/2016</em></strong><br />\r\n<strong><em>Thời gian &aacute;p dụng: 15/11-31/12/2016</em></strong></span></p>\r\n\r\n<p style="text-align:justify"><strong>GIỚI THIỆU VỀ NHA TRANG V&Agrave; KH&Aacute;CH SẠN MAJESTIC STAR</strong><br />\r\nNha Trang l&agrave; một trong 29 vịnh đẹp nhất thế giới với nhiều cảnh đẹp nổi tiếng, l&agrave; điểm đến l&yacute; tưởng cho những ai th&iacute;ch kh&aacute;m ph&aacute; vẻ đẹp tiềm ẩn của thi&ecirc;n nhi&ecirc;n. Biển xanh m&aacute;t, c&aacute;t trắng phẳng l&igrave;, những h&agrave;ng dừa tăm tắp trải dọc bờ biển như vẫy gọi, ch&agrave;o mời du kh&aacute;ch. Một lần đến với Nha Trang để tận hưởng cảm gi&aacute;c b&igrave;nh y&ecirc;n của biển, để lắng nghe tiếng vỗ r&igrave; r&agrave;o ng&agrave;y đ&ecirc;m của những con s&oacute;ng bạc đầu sẽ khiến bạn nhớ m&atilde;i kh&ocirc;ng qu&ecirc;n.</p>\r\n\r\n<p><br />\r\nNha Trang l&agrave; th&agrave;nh phố sầm uất, năng động v&agrave; tr&agrave;n đầy sức sống l&agrave; trung t&acirc;m văn h&oacute;a, kinh tế quan trọng. Nha Trang lu&ocirc;n lưu luyến những du kh&aacute;ch đ&atilde; từng đặt ch&acirc;n tới n&oacute; bởi vẻ đẹp thi&ecirc;n nhi&ecirc;n n&uacute;i rừng v&agrave; vẻ đẹp của b&atilde;i biển nổi tiếng.</p>\r\n\r\n<p style="text-align:justify">Majestic Star l&agrave; kh&aacute;ch sạn đạt ti&ecirc;u chuẩn quốc tế 3 sao thuộc chuỗi kh&aacute;ch sạn Majestic nằm dọc bờ biển đường Trần Ph&uacute; &ndash; Một trong những con đường ven biển đẹp nhất th&agrave;nh phố Nha Trang. Majestic Star l&agrave; kh&aacute;ch sạn mới x&acirc;y với kiến tr&uacute;c theo phong c&aacute;ch Ch&acirc;u &Acirc;u, pha lẫn &acirc;m hưởng tinh tế của lối kiến tr&uacute;c &Aacute; Đ&ocirc;ng, với cơ sở vật chất v&agrave; trang thiết bị hiện đại. Kh&aacute;ch sạn gồm 19 tầng &ndash; 102 ph&ograve;ng với tr&ecirc;n 70% ph&ograve;ng hướng biển, 2 thang m&aacute;y, nh&agrave; h&agrave;ng tiệc cưới, ph&ograve;ng hội nghị c&oacute; sức chứa tối đa 200 kh&aacute;ch , hồ bơi, bar ngo&agrave;i trời, quầy tour desk&hellip;</p>\r\n\r\n<p><img alt="" src="http://localhost/flash_travel/public/img/tour_detail/abc123.jpg" style="height:328px; width:600px" /></p>\r\n\r\n<div style="box-sizing: border-box; font-family: ">&nbsp;</div>\r\n\r\n<p><img alt="" src="http://localhost/flash_travel/public/img/tour_detail/abc13223.jpg" style="height:328px; width:600px" /></p>\r\n\r\n<p style="text-align:justify">Đến với Majestic Star để c&oacute; những trải nghiệm đặc biệt, tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh, tho&aacute;ng đ&atilde;ng v&agrave; được ngắm nh&igrave;n phong cảnh tuyệt đẹp của b&atilde;i biển v&agrave; Vịnh Nha Trang từ trong ph&ograve;ng ngủ, từ nh&agrave; h&agrave;ng, từ hồ bơi, bar &amp; c&agrave; ph&ecirc;&hellip; tận hưởng kh&ocirc;ng kh&iacute; ấm &aacute;p gần gũi như ở nh&agrave;.</p>\r\n\r\n<div style="box-sizing: border-box; font-family: "><span style="font-size:18pt"><strong><span style="color:rgb(255, 0, 0)">GI&Aacute; CHỈ TỪ 2,980,000VND/1 NGƯỜI</span></strong></span></div>\r\n\r\n<div style="box-sizing: border-box; font-family: "><span style="color:rgb(51, 102, 255); font-size:12pt"><strong>Thời gian mở b&aacute;n 15/11- 22/11/2016<br />\r\nThời gian &aacute;p dụng: 15/11-31/12/2016</strong></span></div>\r\n\r\n<p><strong>DỊCH VỤ &nbsp;BAO GỒM:</strong><br />\r\n&ndash; V&eacute; Vietjet air khứ hồi H&agrave; Nội &ndash; Nha Trang+ 7kg h&agrave;nh l&yacute; x&aacute;ch tay<br />\r\n&ndash; 2 đ&ecirc;m ph&ograve;ng Superior vity view Majettic Star Nha Trang ti&ecirc;u chuẩn Quốc tế 3 sao<br />\r\n&ndash; 2 đ&ecirc;m ăn s&aacute;ng buffet tại kh&aacute;ch sạn<br />\r\n&ndash; Miễn ph&iacute; xe đ&oacute;n tiễn s&acirc;n bay Nha Trang 2 chiều<br />\r\n&ndash; Tặng tour thăm quan Vịnh Đảo Nha Trang 1 ng&agrave;y (bao gồm xe, HDV, ăn trưa)<br />\r\n&ndash; Miễn ph&iacute; wifi v&agrave; nước uống tại kh&aacute;ch sạn</p>\r\n\r\n<p><strong>DỊCH VỤ KH&Ocirc;NG BAO GỒM:</strong><br />\r\n&ndash; VAT, Ph&iacute; dịch vụ<br />\r\n&ndash; Ăn c&aacute;c bữa ch&iacute;nh v&agrave; v&eacute; thăm quan ngo&agrave;i g&oacute;i khuyến mại</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong><br />\r\n&ndash; Check in 14h00- Check out: 12h00<br />\r\n&ndash; Chương tr&igrave;nh khuyến mại &aacute;p dụng cho kh&aacute;ch lẻ dưới 9 kh&aacute;ch, nh&oacute;m từ 10 người trở l&ecirc;n vui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i để được hỗ trợ tốt nhất<br />\r\n&ndash; Mỗi ph&ograve;ng tối đa 1 b&eacute; dưới 6 v&agrave; 1 b&eacute; dưới 12 tuổi. B&eacute; thứ 2 bắt buộc phải k&ecirc; th&ecirc;m extra bed</p>\r\n\r\n<p><strong>CH&Iacute;NH S&Aacute;CH PHỤ THU:</strong><br />\r\n&ndash; Trẻ em dưới 2 tuổi phụ thu 220,000vnd/1 người<br />\r\n&ndash; Trẻ em từ 2- dưới 6 tuổi từ 1,650,000vnd/1 b&eacute;, hỗ trợ xe đ&oacute;n tiễn s&acirc;n bay<br />\r\n&ndash; Trẻ em từ 6- dưới 12 tuổi phụ thu từ 1,890,000vnd/1 b&eacute;, hỗ trợ xe đ&oacute;n tiễn s&acirc;n bay v&agrave; bao gồm ăn s&aacute;ng<br />\r\n&ndash; Trẻ em từ 12 tuổi trở l&ecirc;n t&iacute;nh như người lớn<br />\r\n&ndash; Phụ thu k&ecirc; th&ecirc;m giường 250,000vnd/1 đ&ecirc;m<br />\r\n&ndash; Phụ thu kh&aacute;ch đi 1 m&igrave;nh: &nbsp;1,150,000vnd/ 2 đ&ecirc;m<br />\r\n&ndash; Phụ thu ph&ograve;ng đơn = phụ thu ph&aacute;t sinh th&ecirc;m đ&ecirc;m 950,000vnd<br />\r\n<strong><span style="color:rgb(255, 156, 0)"><em>&ndash; Gi&aacute; Tết Dương Lịch 29-2/1/2017: 4,480,000vnd/1 người lớn. Trẻ em từ 6 &ndash; dưới 12: 2,650,000vnd/1 b&eacute;. Trẻ em từ 6 &ndash; dưới 12: 2,980,000vnd/1 b&eacute;</em></span></strong></p>\r\n\r\n<p><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N HỦY V&Agrave; THAY ĐỔI:</strong><br />\r\n&ndash; V&eacute; kh&ocirc;ng ho&agrave;n, kh&ocirc;ng hủy<br />\r\n&ndash; Một số v&eacute; được ph&eacute;p thay đổi t&ecirc;n , ph&iacute; đổi t&ecirc;n 352,000vnd/ chặng v&agrave; phải b&aacute;o thay đổi trước 1 ng&agrave;y so với ng&agrave;y bay<br />\r\n&ndash; Hủy dịch vụ ph&ograve;ng b&aacute;o trước 10 ng&agrave;y kh&ocirc;ng t&iacute;nh ph&iacute;<br />\r\n&ndash; Hủy từ 6-9 ng&agrave;y phạt 1 đ&ecirc;m kh&aacute;ch sạn<br />\r\n&ndash; Hủy từ 3-5 ng&agrave;y phạt 50%<br />\r\n&ndash; Hủy trong v&ograve;ng 3 ng&agrave;y so với ng&agrave;y khởi h&agrave;nh phạt 100%<br />\r\n&ndash; Dịch vụ ng&agrave;y lễ kh&ocirc;ng ho&agrave;n, hủy v&agrave; thay đổi</p>\r\n', '2980000.00', 0, 56, 56, '3 ngày 2 đêm', 1, 2, 1, '2016-11-25 22:36:34', '2016-11-24 21:44:59'),
(22, 1, 'Free & Easy Silver Sea Hotel Đà Nẵng 3 ngày 2 đêm', 'Free-&-Easy-Silver-Sea-Hotel-Da-Nang-3-ngay-2-de', 'da-nang-pys-travel0021-600x400.jpg', '<p><strong>Dịp nghỉ lễ m&ugrave;ng 2/9, tranh thủ một kỳ nghỉ lễ kết hợp với thời điểm m&ugrave;a thu, thời tiết m&aacute;t mẻ, dễ chịu cho một chuyến đi nghỉ dưỡng s&ocirc;i động, đặc biệt với g&oacute;i Free &amp; Easy Silver Sea Hotel Đ&agrave; Nẵng 3 ng&agrave;y 2 đ&ecirc;m của PYS Travel, cho bạn v&agrave; gia đ&igrave;nh chuyến nghỉ ngơi vui vẻ, tiết kiệm.</strong></p>\r\n', '<h3 style="text-align:justify">Chương tr&igrave;nh tour Linh hoạt, với 2.950.000 đồng bạn sẽ nhận được:</h3>\r\n\r\n<p><em>&ndash; Vietjet air khứ hồi H&agrave; Nội &ndash; Đ&agrave; Nẵng, 7 kg h&agrave;nh l&yacute; x&aacute;ch tay<br />\r\n&ndash; 2 đ&ecirc;m tại ph&ograve;ng Superior&nbsp; double/twin kh&aacute;ch sạn 3 sao<br />\r\n&ndash; 2 bữa ăn s&aacute;ng Buffet hoặc&nbsp; alcarte tại kh&aacute;ch sạn<br />\r\n&ndash; Đ&oacute;n v&agrave; tiễn s&acirc;n bay Đ&agrave; Nẵng &ndash; Kh&aacute;ch Sạn<br />\r\n&ndash; 1 bữa ăn trưa hoặc tối tại nh&agrave; h&agrave;ng của kh&aacute;ch sạn<br />\r\n&ndash; Tour thăm quan B&agrave; N&agrave; 1 ng&agrave;y ( ăn tr&ecirc;n đỉnh B&agrave; N&agrave;)<br />\r\n&ndash; Sử dụng xe m&aacute;y 1 ng&agrave;y (24 tiếng)<br />\r\n&ndash; Miễn ph&iacute; 02 chai nước suối tại ph&ograve;ng mỗi ng&agrave;y.<br />\r\n&ndash; Miễn ph&iacute; sử dụng m&aacute;y internet tại tiền sảnh kh&aacute;ch sạn, Wifi tại ph&ograve;ng hoặc tiền sảnh.<br />\r\n&ndash; Tặng phiếu giảm gi&aacute; 10% dịch vụ nh&agrave; h&agrave;ng<br />\r\n&ndash; Tour tắm b&ugrave;n kho&aacute;ng Phước Nhơn: từ 700.000 vnđ giảmc&ograve;n 510.000đ/kh&aacute;ch<br />\r\n&ndash; Tour C&ugrave; Lao Ch&agrave;m : từ 600,000đ giảm c&ograve;n 450,000đ/kh&aacute;ch</em></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(255, 0, 0); font-size:14pt"><strong>Gi&aacute; khởi h&agrave;nh dịp Tết Dương lịch 2017</strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:18pt"><strong>3,930,000 VNĐ/người</strong></span><br />\r\n<span style="color:rgb(51, 204, 204)"><strong>&Aacute;p dụng từ ng&agrave;y: 29/12 &ndash; 3/1</strong></span><br />\r\n<span style="color:rgb(51, 204, 204)">&mdash;&ndash;</span></p>\r\n\r\n<h3>GIỚI THIỆU VỀ Đ&Agrave; NẴNG V&Agrave; SILVER SEA HOTEL Đ&Agrave; NẴNG</h3>\r\n\r\n<p style="text-align:justify">Đ&agrave; Nẵng l&agrave; một th&agrave;nh phố xinh đẹp, hấp dẫn của v&ugrave;ng duy&ecirc;n hải Miền Trung nước ta. Với nhiều địa điểm du lịch hấp dẫn, nhiều c&ocirc;ng tr&igrave;nh kiến tr&uacute;c độc đ&aacute;o c&oacute; từ l&acirc;u đời c&ugrave;ng những lễ hội văn h&oacute;a truyền thống đặc sắc.</p>\r\n\r\n<p style="text-align:center"><img alt="" class="aligncenter" id="__wp-temp-img-id" src="http://i.imgur.com/KudGB4N.png" style="border:0px; box-sizing:border-box; display:block; height:372px; margin:0px auto; vertical-align:middle; width:600px" title="" /><br />\r\nĐ&agrave; Nẵng lung linh m&ugrave;a năm mới 2016</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/denX3Xok.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="denX3Xok" class="aligncenter size-full wp-image-14505" src="http://pystravel.vn/wp-content/uploads/2015/12/denX3Xok.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:400px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Đến với Đ&agrave; Nẵng trong những ng&agrave;y xu&acirc;n ấm &aacute;p n&agrave;y, bạn kh&ocirc;ng chỉ được tận hưởng hương xu&acirc;n ngọt ng&agrave;o, thưởng thức những đặc sản độc đ&aacute;o, kh&aacute;m ph&aacute; những điểm đến nổi tiếng gắn liền với địa danh đ&aacute;ng sống nhất nơi đ&acirc;y như: B&atilde;i biển Mỹ Kh&ecirc;, khu du lịch B&agrave; N&agrave; hay khu giải tr&iacute; trong nh&agrave; Fantasy Part &ndash; một khu vui chơi giải tr&iacute; lớn nhất ch&acirc;u &Aacute;, c&ugrave;ng với c&aacute;c chương tr&igrave;nh nghệ thuật hấp dẫn.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/ba-na-pys-travel002.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="ba-na-pys-travel002" class="aligncenter size-full wp-image-14506" src="http://pystravel.vn/wp-content/uploads/2015/12/ba-na-pys-travel002.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:388px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/ba-na-pys-travel001.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="ba-na-pys-travel001" class="aligncenter size-full wp-image-14507" src="http://pystravel.vn/wp-content/uploads/2015/12/ba-na-pys-travel001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:325px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng v&agrave; s&acirc;n bay khoảng 10 ph&uacute;t đi taxi, kh&aacute;ch sạn Silver Sea với thiết kế sang trọng, hiện đại, c&aacute;ch b&agrave;y tr&iacute; nhẹ nh&agrave;ng, tinh tế, l&agrave; điểm dừng ch&acirc;n l&yacute; tưởng khi du kh&aacute;ch đến nghỉ dưỡng tại th&agrave;nh phố Đ&agrave; Nẵng xinh đẹp.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel001.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel001" class="aligncenter size-full wp-image-14508" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:450px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Kh&aacute;ch sạn Silver Sea đạt ti&ecirc;u chuẩn tương đương 3 sao với 41 ph&ograve;ng nghỉ cao cấp v&agrave; đầy đủ tiện nghi. C&aacute;c ph&ograve;ng đều được trang bị b&agrave;n l&agrave;m việc, điều h&ograve;a nhiệt độ, m&aacute;y sấy t&oacute;c, wifi, tivi LCD, mini bar, b&igrave;nh nước n&oacute;ng Ferroli, nệm Kymdan cao cấp&hellip; sẽ mang đến cho qu&yacute; kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i, dễ chịu như đang ở trong ch&iacute;nh ng&ocirc;i nh&agrave; của m&igrave;nh.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel002.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel002" class="aligncenter size-full wp-image-14509" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel002.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:420px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel005.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel005" class="aligncenter size-full wp-image-14510" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel005.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:397px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel006.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel006" class="aligncenter size-full wp-image-14512" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel006.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:397px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel003.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel003" class="aligncenter size-full wp-image-14513" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel003.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:398px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Khi lưu tr&uacute; tại đ&acirc;y, du kh&aacute;ch sẽ cảm nhận được sự thoải m&aacute;i, dể chịu bởi kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; phong c&aacute;ch phục vụ tận t&igrave;nh chu đ&aacute;o của đội ngũ nh&acirc;n vi&ecirc;n được đ&agrave;o tạo chuy&ecirc;n nghiệp v&agrave; c&aacute;ch b&agrave;i tr&iacute; ri&ecirc;ng, độc đ&aacute;o từng ph&ograve;ng, từ ph&ograve;ng m&igrave;nh du kh&aacute;ch c&oacute; thể nh&igrave;n ra biển để ngắm vẻ đẹp rực rỡ của b&igrave;nh minh. Th&ecirc;m v&agrave;o đ&oacute; Qu&yacute; kh&aacute;ch c&oacute; thể tản bộ h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh của biển khi chiều xuống v&agrave; thưởng ngoạn những cảnh đẹp n&uacute;i non của th&agrave;nh phố Đ&agrave; Nẵng xinh đẹp n&agrave;y.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel004.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="da-nang-pys-travel004" class="aligncenter size-full wp-image-14514" src="http://pystravel.vn/wp-content/uploads/2015/12/da-nang-pys-travel004.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:450px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2015/12/khach-san-silversea-a3.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="khach-san-silversea-a3" class="aligncenter wp-image-14515" src="http://pystravel.vn/wp-content/uploads/2015/12/khach-san-silversea-a3.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:450px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Nh&agrave; h&agrave;ng Silver Sea l&agrave; nơi hội tụ c&aacute;c m&oacute;n đặc sản 3 miền Bắc &ndash; Trung &ndash; Nam, đ&aacute;p ứng đầy đủ nhu cầu ẩm thực đa dạng của mọi thực kh&aacute;ch. Nh&agrave; h&agrave;ng c&ograve;n phục vụ những bữa tiệc như: buffet, cưới hỏi, gặp mặt, sinh nhật với những m&oacute;n hải sản, &Aacute; &ndash; &Acirc;u đặc sắc.</p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(0, 0, 255)"><strong><span style="font-size:18pt">GI&Aacute; KHUYẾN MẠI: 2,950,000VND/1 NGƯỜI</span></strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:14pt"><em><strong>Thời gian mở b&aacute;n: 20/10/2016- 31/12/2016<br />\r\nThời gian &aacute;p dụng: 20/10/2016- 31/12/2016</strong></em></span></p>\r\n\r\n<h3>DỊCH VỤ BAO GỒM:</h3>\r\n\r\n<p>&ndash; Vietjet air khứ hồi H&agrave; Nội &ndash; Đ&agrave; Nẵng, 7 kg h&agrave;nh l&yacute; x&aacute;ch tay<br />\r\n&ndash; 2 đ&ecirc;m tại ph&ograve;ng Superior&nbsp; double/twin kh&aacute;ch sạn 3 sao<br />\r\n&ndash; 2 bữa ăn s&aacute;ng Buffet hoặc&nbsp; alcarte tại kh&aacute;ch sạn<br />\r\n&ndash; Đ&oacute;n v&agrave; tiễn s&acirc;n bay Đ&agrave; Nẵng &ndash; Kh&aacute;ch Sạn<br />\r\n&ndash; 1 bữa ăn trưa hoặc tối tại nh&agrave; h&agrave;ng của kh&aacute;ch sạn<br />\r\n&ndash; Tour thăm quan B&agrave; N&agrave; 1 ng&agrave;y ( ăn tr&ecirc;n đỉnh B&agrave; N&agrave;)<br />\r\n&ndash; Sử dụng xe m&aacute;y 1 ng&agrave;y (24 tiếng)<br />\r\n&ndash; Miễn ph&iacute; 02 chai nước suối tại ph&ograve;ng mỗi ng&agrave;y.<br />\r\n&ndash; Miễn ph&iacute; sử dụng m&aacute;y internet tại tiền sảnh kh&aacute;ch sạn, Wifi tại ph&ograve;ng hoặc tiền sảnh.<br />\r\n&ndash; Tặng phiếu giảm gi&aacute; 10% dịch vụ nh&agrave; h&agrave;ng<br />\r\n&ndash; Tour tắm b&ugrave;n kho&aacute;ng Phước Nhơn: từ 700.000 vnđ giảmc&ograve;n 510.000đ/kh&aacute;ch<br />\r\n&ndash; Tour C&ugrave; Lao Ch&agrave;m : từ 600,000đ giảm c&ograve;n 450,000đ/kh&aacute;ch</p>\r\n\r\n<h3>DỊCH VỤ KH&Ocirc;NG BAO GỒM:</h3>\r\n\r\n<p>&ndash; H&agrave;nh l&yacute; k&yacute; gửi<br />\r\n&ndash; Phương tiện vận chuyển ngo&agrave;i g&oacute;i khuyến mại<br />\r\n&ndash; Ăn c&aacute;c bữa ch&iacute;nh ngo&agrave;i g&oacute;i khuyến mại<br />\r\n&ndash; V&eacute; thăm quan c&aacute;c điểm ngo&aacute;i v&eacute; B&agrave; N&agrave;<br />\r\n&ndash; VAT, ph&iacute; dịch vụ</p>\r\n\r\n<h3>LƯU &Yacute;:</h3>\r\n\r\n<p>&ndash; Check in 14h00 &ndash; Check out: 12h00<br />\r\n&ndash; Chương tr&igrave;nh khuyến mại &aacute;p dụng cho nh&oacute;m kh&aacute;ch lẻ dưới 9 kh&aacute;ch, từ 10 kh&aacute;ch trở l&ecirc;n vui long li&ecirc;n hệ tổng đ&agrave;i 0444 50 60 80 để được hỗ trợ tốt nhất<br />\r\n&ndash; Mỗi ph&ograve;ng chỉ được tối đa 2 b&eacute; dưới 12 tuổi, b&eacute; thứ 3 t&iacute;nh như người lớn.</p>\r\n\r\n<p><span style="color:rgb(255, 102, 0); font-size:14pt"><strong>CH&Iacute;NH S&Aacute;CH PHỤ THU:</strong></span><br />\r\n&ndash; Trẻ em dưới 2 tuổi phụ thu 220,000 vnd/1 b&eacute;<br />\r\n&ndash; Trẻ em từ 2 &ndash; dưới 6 phụ thu 950,000vnd/1 b&eacute;, chưa bao gồm v&eacute; c&aacute;p treo B&agrave; N&agrave;<br />\r\n&ndash; Trẻ em từ 6 &ndash; dưới 12 phụ thu 1,150,000vnd/1 b&eacute;, chưa bao gồm v&eacute; c&aacute;p treo B&agrave; N&agrave;<br />\r\n&ndash; Trẻ em từ 12 tuổi trở l&ecirc;n t&iacute;nh như người lớn<br />\r\n&ndash; Phụ thu ph&ograve;ng đơn 500,000vnd/1 người/ 2 đ&ecirc;m<br />\r\n&ndash; Phụ thu n&acirc;ng cấp ph&ograve;ng Deluxe: 150,000vnd/1 người/ 2 đ&ecirc;m<br />\r\n&ndash; Phụ thu cuối tuần thứ 6- Chủ Nhật: 530,000vnd/1 người, t&iacute;nh từ b&eacute; 2 tuổi trở l&ecirc;n</p>\r\n\r\n<h3>CH&Iacute;NH S&Aacute;CH HO&Agrave;N, HỦY:</h3>\r\n\r\n<p>&ndash; V&eacute; m&aacute;y bay kh&ocirc;ng ho&agrave;n, kh&ocirc;ng hủy<br />\r\n&ndash; Được ph&eacute;p thay đổi t&ecirc;n v&agrave; b&aacute;o trước 1 ng&agrave;y so với ng&agrave;y khởi h&agrave;nh . V&eacute; đổi t&ecirc;n t&iacute;nh ph&iacute; 352,000vnd/ chặng</p>\r\n', '2950000.00', 0, 48, 48, '3 ngày 2 đêm', 2, 3, 1, '2016-11-25 22:38:39', '2016-11-24 21:58:20'),
(23, 3, 'Free & Easy Khách sạn Mường Thanh Luxury Mộc Châu 2 ngày 1 đêm', 'Free-&-Easy-Khach-san-Muong-Thanh-Luxury-Moc-Chau-2-ngay-1-de', 'dsc_4864-708x400.png', '<p><strong>&ldquo;Chạy trốn&rdquo; bộn bề cuộc sống với chương tr&igrave;nh nghỉ dưỡng Free &amp; Easy Mường Thanh Luxury Mộc Ch&acirc;u 2 ng&agrave;y 1 đ&ecirc;m của PYS Travel.</strong></p>\r\n', '<p style="text-align:justify"><span style="color:rgb(255, 102, 0)"><strong>GIỚI THIỆU VỀ CAO NGUY&Ecirc;N MỘC CH&Acirc;U</strong></span></p>\r\n\r\n<p style="text-align:justify">C&aacute;ch H&agrave; Nội 200 km về ph&iacute;a T&acirc;y, Mộc Ch&acirc;u l&agrave; huyện rộng lớn nhất v&ugrave;ng n&uacute;i tỉnh Sơn La. Đến đ&acirc;y v&agrave;o thời điểm n&agrave;y, bạn sẽ ngỡ ng&agrave;ng trước vẻ đẹp dưới m&agrave;n sương m&acirc;y bao phủ c&ugrave;ng sắc hoa cải l&ocirc;i cuốn v&agrave; đầy sức sống.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel001_001.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="muong-thanh-luxury-moc-chau-pys-travel001_001" class="aligncenter size-full wp-image-23387" src="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel001_001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:400px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><em>Mộc Ch&acirc;u nổi tiếng với những s&oacute;ng ch&egrave; xanh ng&uacute;t ng&agrave;n. (Ảnh Cao Anh Tuấn)</em></p>\r\n\r\n<p style="text-align:justify">Những ng&agrave;y mưa th&aacute;ng 11 cũng l&agrave; l&uacute;c hoa cải trắng nở rộ khắp nẻo đường cao nguy&ecirc;n Mộc Ch&acirc;u. Du kh&aacute;ch c&oacute; thể bắt gặp những c&aacute;nh đồng hay thung lũng cải trắng bạt ng&agrave;n, tựa như bức họa của thảo nguy&ecirc;n xanh m&aacute;t.</p>\r\n\r\n<p><a href="http://pystravel.vn/wp-content/uploads/2016/10/mocchau-pystravel002.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="Ảnh: NAG Cao Anh Tuan" class="size-full wp-image-23281" src="http://pystravel.vn/wp-content/uploads/2016/10/mocchau-pystravel002.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; height:400px; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p><em>Hoa cải trắng nở rộ từ th&aacute;ng 10 &ndash; th&aacute;ng 12 dương lịch ở Mộc Ch&acirc;u. (Ảnh Cao Anh Tuấn)</em></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel002_001.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="muong-thanh-luxury-moc-chau-pys-travel002_001" class="aligncenter size-full wp-image-23388" src="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel002_001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:400px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:center"><em>Sớm mai Mộc Ch&acirc;u. (Ảnh Cao Anh Tuấn)</em></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(255, 102, 0)"><strong>GIỚI THIỆU VỀ KH&Aacute;CH SẠN MƯỜNG THANH LUXURY MỘC CH&Acirc;U</strong></span></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel003.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="muong-thanh-luxury-moc-chau-pys-travel003" class="aligncenter size-full wp-image-23389" src="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel003.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:337px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify">Tọa lạc tại trung t&acirc;m du lịch của huyện Mộc Ch&acirc;u, gần s&aacute;t với đường quốc lộ 6, Kh&aacute;ch sạn Mường Thanh Luxury Mộc Ch&acirc;u c&oacute; 169 ph&ograve;ng nghỉ tiện nghi theo ti&ecirc;u chuẩn 4 sao bạn sẽ c&oacute; 1 kỳ nghỉ h&egrave; tuyệt vời b&ecirc;n gia đ&igrave;nh,bạn b&egrave; , những người y&ecirc;u thương nhất</p>\r\n\r\n<p style="text-align:justify"><img alt="muong-thanh-luxury-moc-chau-pys-travel002" class="aligncenter size-full wp-image-23393" src="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel002.jpg" style="border:0px; box-sizing:border-box; display:block; height:400px; margin:0px auto; vertical-align:middle; width:600px" /></p>\r\n\r\n<p style="text-align:center"><a href="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel001.jpg" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none;"><img alt="muong-thanh-luxury-moc-chau-pys-travel001" class="aligncenter size-full wp-image-23390" src="http://pystravel.vn/wp-content/uploads/2016/10/muong-thanh-luxury-moc-chau-pys-travel001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:400px; margin:0px auto; vertical-align:middle; width:600px" /></a><br />\r\n<span style="color:rgb(51, 102, 255); font-size:18pt"><strong>GI&Aacute; KHUYẾN MẠI 1,180,000VND/1 NGƯỜI</strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:14pt"><strong>Thời gian mở b&aacute;n: 1/11- 30/12/2016</strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:14pt"><strong>Thời gian &aacute;p dụng: 1/11- 31/12/2016</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(255, 0, 0)"><strong>DỊCH VỤ BAO GỒM:</strong></span><br />\r\n&ndash; Xe gh&eacute;p DCar/ Limousine đưa đ&oacute;n H&agrave; Nội &ndash; Mộc Ch&acirc;u<br />\r\n&ndash; 1 đ&ecirc;m ph&ograve;ng Deluxe King/ Twin Kh&aacute;ch sạn Mường Thanh Luxury Mộc Ch&acirc;u 4 sao<br />\r\n&ndash; 1 bữa ăn s&aacute;ng buffet tại Kh&aacute;ch sạn<br />\r\n&ndash; Miễn ph&iacute; 2 chai nước suối, tr&agrave; v&agrave; caf&eacute; miễn ph&iacute; trong ph&ograve;ng<br />\r\n&ndash; Miễn ph&iacute; hồ bơi v&agrave; ph&ograve;ng tập thể dục.<br />\r\n<span style="color:rgb(255, 0, 0)"><strong>DỊCH VỤ KH&Ocirc;NG BAO GỒM:</strong></span><br />\r\n&ndash; 10% VAT v&agrave; ph&iacute; dịch vụ<br />\r\n&ndash; Phương tiện di chuyển trong qu&aacute; tr&igrave;nh thăm quan<br />\r\n&ndash; Ăn c&aacute;c bữa ch&iacute;nh v&agrave; v&eacute; thăm quan c&aacute;c điểm v&agrave; chi ph&iacute; ngo&agrave;i g&oacute;i khuyến mại<br />\r\n<strong><span style="color:rgb(255, 0, 0)">LƯU &Yacute;:</span></strong><br />\r\n&ndash; Check in sau 14h00- check out trước 12h00<br />\r\n&ndash; Mỗi 1 ph&ograve;ng chỉ được tối đa 1 b&eacute; dưới 6 v&agrave; 1 b&eacute; dưới 12. B&eacute; thứ 3 t&iacute;nh như người lớn . 2 b&eacute; dưới 12 tuổi bắt buộc phải k&ecirc; giường phụ</p>\r\n\r\n<p><span style="color:rgb(255, 0, 0)"><strong>CH&Iacute;NH S&Aacute;CH PHỤ THU:</strong></span><br />\r\n&ndash; Miễn ph&iacute; trẻ em dưới 6 tuổi kh&ocirc;ng chiếm ghế tr&ecirc;n xe phụ v&agrave; chỉ được miễn ph&iacute; 1 b&eacute;, b&eacute; thứ 2 t&iacute;nh phụ thu 500,000vnd/ b&eacute;<br />\r\n&ndash; Trẻ em từ 6- dưới 12 tuổi phụ thu 850,000vnd/ b&eacute; đ&atilde; bao gồm xe v&agrave; ăn s&aacute;ng<br />\r\n&ndash; B&eacute; k&ecirc; giường phụ: 900,000vnd/1 b&eacute; ( đ&atilde; bao gồm ăn s&aacute;ng, ghế tr&ecirc;n xe)<br />\r\n&ndash; Trẻ em từ 12 tuổi trở l&ecirc;n t&iacute;nh như người lớn<br />\r\n&ndash; Phụ thu ph&ograve;ng đơn: 600,000vnd/ 1 người/ 1 đ&ecirc;m/ Phụ thu th&ecirc;m đ&ecirc;m 1,200,000vnd/1 ph&ograve;ng/ 2 người lớn , trẻ em phụ thu ăn s&aacute;ng 100,000vnd/1 b&eacute;<br />\r\n<span style="color:rgb(255, 0, 0)"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N, HỦY:</strong></span><br />\r\n&ndash; Hủy dịch vụ trước 07 ng&agrave;y kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ: Kh&ocirc;ng t&iacute;nh ph&iacute;<br />\r\n&ndash; Hủy dịch vụ từ 3-7 ng&agrave;y so với ng&agrave;y khởi h&agrave;nh kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ: Phạt 50% tổng gi&aacute; trị<br />\r\n&ndash; Hủy dịch vụ trong v&ograve;ng 3 ng&agrave;y so với ng&agrave;y khởi h&agrave;nh kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ: Phạt 100% tổng gi&aacute; trị</p>\r\n', '1180000.00', 0, 14, 14, '2 ngày 1 đêm', 3, 3, 1, '2016-11-25 22:40:20', '2016-11-24 22:01:00'),
(24, 2, 'Du thuyền Hạ Long – Papaya Cruise 2 ngày 1 đêm', 'Du-thuyen-Ha-Long-–-Papaya-Cruise-2-ngay-1-de', 'ha-long-pys-travel0031-600x400.jpg', '<p><strong>Với chương tr&igrave;nh 2 ng&agrave;y 1 đ&ecirc;m tr&ecirc;n du thuyền Halong Papaya Cruise, ngo&agrave;i việc thưởng ngoạn những thắng cảnh nổi tiếng như: thăm Vịnh Hạ Long, hang Sửng Sốt, đảo TiTop, l&agrave;ng Ch&agrave;i Ngọc Trai&hellip;du kh&aacute;ch c&ograve;n được tham gia nhiều hoạt động vui chơi giải tr&iacute; v&ocirc; c&ugrave;ng hấp dẫn như: học nấu ăn, ch&egrave;o kayak, c&acirc;u c&aacute;, karaoke, tiệc rượu hoa quả,..đ&oacute; sẽ l&agrave; 1 trải nghiệm cực kỳ th&uacute; vụ khi đến với Hạ Long.</strong></p>\r\n', '<p style="text-align:justify">Papaya Cruise được thiết kế gồm 9 cabin (11m2 &ndash; 13 m2) &ndash; trang tr&iacute; bằng gỗ sang trọng &ndash; cửa sổ nh&igrave;n ra biển &ndash; trong ph&ograve;ng c&oacute; tr&agrave; v&agrave; c&agrave; ph&ecirc; miễn ph&iacute; &ndash; ph&ograve;ng tắm ri&ecirc;ng. điều h&ograve;a kh&ocirc;ng kh&iacute;. v&ograve;i hoa sen. Sang trọng tiện nghi vệ sinh v&agrave; Khăn mặt, khăn tắm. M&aacute;y sấy t&oacute;c, giường ngủ. Hoa quả tươi. Nước uống miễn ph&iacute;. c&oacute; ban c&ocirc;ng, ph&ograve;ng ăn v&agrave; quầy bar, ph&ograve;ng kh&aacute;ch, chương tr&igrave;nh giải tr&iacute;.</p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/ha-long-pys-travel0021.jpg" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration: none; background-color: transparent;"><img alt="ha-long-pys-travel002" class="aligncenter size-full wp-image-23409" src="http://pystravel.vn/wp-content/uploads/2016/10/ha-long-pys-travel0021.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:600px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><a href="http://pystravel.vn/wp-content/uploads/2016/10/ha-long-pys-travel001.jpg" style="box-sizing: border-box; color: rgb(51, 122, 183); text-decoration: none; background-color: transparent;"><img alt="ha-long-pys-travel001" class="aligncenter size-full wp-image-23408" src="http://pystravel.vn/wp-content/uploads/2016/10/ha-long-pys-travel001.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:281px; margin:0px auto; vertical-align:middle; width:600px" /></a></p>\r\n\r\n<p style="text-align:justify"><strong>Hệ thống nh&agrave; h&agrave;ng gồm c&oacute;:</strong><br />\r\n<em>Bạn c&oacute; thể thưởng thức đồ biển tươi</em><br />\r\n<em>C&oacute; 8 b&agrave;n, mỗi b&agrave;n 4 người</em><br />\r\n<em>9 &ndash; 11 m&oacute;n ăn bao gồm m&oacute;n ăn truyền thống Việt Nam v&agrave; phương T&acirc;y</em><br />\r\n<em>Nhạc d&acirc;n tộc tuần một buổi</em><br />\r\n<em>Đầu bếp việt</em><br />\r\n<em>Lớp học nấu ăn từ 19h00</em><br />\r\n<em>Người pha chế rượu</em><br />\r\n<em>Cocktail</em><br />\r\n<em>Tất cả c&aacute;c loại rượu mạnh, rượu whisky, rượu m&ugrave;i</em><br />\r\n<em>Nước &eacute;p tr&aacute;i c&acirc;y tươi, tr&agrave; v&agrave; c&agrave; ph&ecirc;</em></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(51, 102, 255); font-size:18pt"><strong>GI&Aacute; B&Aacute;N: 1.850.000 VNĐ/ kh&aacute;ch</strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:14pt"><strong>Thời gian mở b&aacute;n: 27/10-23/12/2016</strong></span><br />\r\n<span style="color:rgb(255, 0, 0); font-size:14pt"><strong>Thời gian &aacute;p dụng: 27/10-23/12/2016</strong></span></p>\r\n\r\n<p><span style="color:rgb(255, 102, 0)"><strong>DỊCH VỤ BAO GỒM:</strong>&nbsp;</span><br />\r\n Xe du lịch 16 &ndash; 29 chỗ, đưa đ&oacute;n thăm quan theo chương tr&igrave;nh<br />\r\n Ph&ograve;ng Superior tr&ecirc;n du thuyền (ngủ 02 kh&aacute;ch/ph&ograve;ng)<br />\r\n V&eacute; thắng cảnh c&aacute;c tuyến điểm thăm quan theo chương tr&igrave;nh<br />\r\n Ăn ch&iacute;nh 03 bữa, 01 bữa ăn s&aacute;ng theo chương tr&igrave;nh<br />\r\n Ch&egrave;o kayaking thăm quan kh&aacute;m ph&aacute; tr&ecirc;n Vịnh Hạ Long<br />\r\n Hoạt động sunset party, cooking class, bi lắc, karaoke..<br />\r\n Hướng dẫn vi&ecirc;n thuyết minh tiếng Anh v&agrave; tiếng Việt<br />\r\n Qu&agrave; tặng: Nước uống, khăn lạnh, đồ y tế cơ bản,..</p>\r\n\r\n<p><span style="color:rgb(255, 102, 0)"><strong>DỊCH VỤ KH&Ocirc;NG BAO GỒM:</strong>&nbsp;</span><br />\r\n Thuế VAT<br />\r\n Tips cho hướng dẫn vi&ecirc;n, l&aacute;i xe, nh&acirc;n vi&ecirc;n phục vụ<br />\r\n Đồ ăn, uống, ph&ograve;ng đơn, chi ph&iacute; chi ti&ecirc;u c&aacute; nh&acirc;n ngo&agrave;i</p>\r\n\r\n<p><span style="color:rgb(255, 102, 0)"><strong>CH&Iacute;NH S&Aacute;CH PHỤ THU</strong></span><br />\r\n Em b&eacute; từ 0 &ndash; 5 tuổi miễn ph&iacute; ( ăn ngủ, chi ph&iacute; v&eacute; ph&aacute;t sinh bố mẹ tự t&uacute;c )<br />\r\n Hai người lớn được k&egrave;m 01 trẻ em, từ trẻ em thứ 2 trở l&ecirc;n t&iacute;nh 50% ph&iacute; dịch vụ<br />\r\n Trẻ em từ 6 tuổi t&iacute;nh 100% gi&aacute; tour như người lớn ( dịch vụ đặt như người lớn )<br />\r\n Nếu trẻ từ 6 &ndash; 9 tuổi bố mẹ chỉ thanh to&aacute;n 50% th&igrave; bố mẹ tự t&uacute;c v&eacute; thắng cảnh cho b&eacute;<br />\r\n Phụ thu ph&ograve;ng đơn: 500.000 VNĐ</p>\r\n', '1850000.00', 0, 22, 22, '2 ngày 1 đêm', 2, 3, 1, '2016-11-24 22:23:49', '2016-11-24 22:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_sale` int(11) DEFAULT NULL,
  `id_payment` int(11) DEFAULT NULL,
  `special_required` text CHARACTER SET utf8,
  `count_adult` int(11) DEFAULT '0',
  `count_child` int(11) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `is_viewed` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `id_tours`, `id_customer`, `id_sale`, `id_payment`, `special_required`, `count_adult`, `count_child`, `start_date`, `is_viewed`, `created_at`) VALUES
(1, 1, 1, 1, 1, '', 2, 2, '2016-09-07', 1, '0000-00-00 00:00:00'),
(2, 4, 15, 123, 1, 'sdryyjhty', 3, 2, '2016-09-15', 1, '0000-00-00 00:00:00'),
(3, 9, 21, NULL, 1, '', 1, 0, '2016-09-21', 1, '0000-00-00 00:00:00'),
(4, 9, 22, NULL, 1, '', 1, 0, '2016-10-14', 1, '0000-00-00 00:00:00'),
(5, 1, 23, NULL, 1, '', 1, 0, '2016-10-08', 1, '0000-00-00 00:00:00'),
(6, 1, 24, NULL, 1, '', 1, 0, '2016-08-10', 1, '0000-00-00 00:00:00'),
(7, 1, 25, NULL, 1, '', 1, 0, '2016-10-13', 1, '0000-00-00 00:00:00'),
(8, 1, 26, NULL, 1, 'deo co', 1, 0, '2016-08-03', 1, '0000-00-00 00:00:00'),
(9, 1, 27, 1, 1, '', 1, 0, '2016-11-03', 1, '0000-00-00 00:00:00'),
(11, 9, 29, NULL, 2, '', 3, 0, '2016-10-08', 1, '2016-11-24 15:09:00'),
(12, 9, 30, NULL, 2, '', 3, 0, '2016-10-08', 1, '2016-11-24 15:00:00'),
(13, 3, 31, NULL, 1, '', 7, 0, '2016-09-13', 1, '2016-11-24 15:06:13'),
(14, 4, 32, 6421, 2, '', 4, 0, '2016-09-23', 1, '2016-11-24 15:07:24'),
(15, 4, 33, 6421, 2, '', 4, 0, '2016-07-13', 1, '2016-11-24 15:06:20'),
(16, 4, 34, 6421, 2, '', 4, 0, '2016-07-14', 1, '2016-11-24 15:07:07'),
(17, 4, 35, 6421, 2, '', 4, 0, '2016-09-23', 1, '2016-11-24 15:07:45'),
(18, 4, 36, 2, 1, '', 3, 0, '2016-10-09', 1, '2016-11-24 14:57:49'),
(19, 1, 2, 1, 1, '<p>Khong co</p>\r\n', 3, 0, '2016-11-02', 1, '2016-11-24 15:53:36'),
(20, 1, 2, 1, 1, '<p>Khong co</p>\r\n', 3, 0, '2016-09-06', 1, '2016-11-24 15:06:24'),
(21, 20, 41, NULL, 1, 'khong co', 1, 0, '2016-11-27', 1, '2016-11-26 11:51:05'),
(22, 1, 42, NULL, 1, '', 2, 0, '2016-11-27', 1, '2016-11-26 11:56:34'),
(23, 24, 45, 8824782, 2, 'khong co gi', 3, 2, '2017-03-02', 1, '2017-03-09 13:30:17'),
(24, 24, 46, 8824782, 2, 'khong co gi', 3, 2, '2017-03-02', 1, '2017-03-09 13:30:29'),
(25, 22, 49, NULL, 2, 'không có gì', 3, 1, '2017-02-03', 1, '2017-03-09 13:39:11'),
(26, 2, 50, NULL, 2, 'khong co hi', 2, 0, '2017-02-01', 1, '2017-03-13 08:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user.png',
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `image`, `phone_number`, `address`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', 'admin.jpg', '09670858582', 'Ngõ 68 Cầu Giấy, Hà Nội', '$2y$10$76jy0f0yJwMM1NowUhgZkutBNQVZW7buFnBgluE.YgcajTBqihk4i', 1, 'YES', '2016-10-20 17:20:05', '2016-10-20 17:20:08'),
(2, 'buiquangduy', 'duybuiquang', 'admin2@gmail.com', '2.PNG', '01652400676', 'Thanh Hóa', '$2y$10$e2p1yKvThvHfBVxZmOAkDu900S3OajvREZIES7womjtKcWXLbDLxK', 1, NULL, '2017-03-09 09:51:44', '2017-03-09 09:51:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tbl_car_suppliers`
--
ALTER TABLE `tbl_car_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hotel_suppliers`
--
ALTER TABLE `tbl_hotel_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `tbl_receive_news`
--
ALTER TABLE `tbl_receive_news`
  ADD PRIMARY KEY (`id_receive_new`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_car_suppliers`
--
ALTER TABLE `tbl_car_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_hotel_suppliers`
--
ALTER TABLE `tbl_hotel_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_receive_news`
--
ALTER TABLE `tbl_receive_news`
  MODIFY `id_receive_new` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
