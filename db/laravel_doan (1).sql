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
-- Database: `laravel_doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(2, 'GUCCI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'DG', '2017-04-16 15:29:54', '2017-04-16 15:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(54, 'Sơ mi nam', 'so-mi-nam', 1, 0, 'sơ mi nam', 'sơ mi nam', '2017-03-24 23:38:07', '2017-03-24 23:38:07'),
(55, 'Thời trang mùa đông', 'thoi-trang-mua-dong', 2, 0, 'Thời trang mùa đông', 'Thời trang mùa đông', '2017-03-24 23:38:43', '2017-03-24 23:38:43'),
(56, 'Áo gió', 'ao-gio', 3, 55, 'áo gió', 'áo gió', '2017-03-25 00:26:29', '2017-03-25 00:26:29'),
(57, 'Áo nỉ', 'ao-ni', 4, 55, 'Áo nỉ', 'Áo nỉ', '2017-03-25 00:26:56', '2017-03-25 00:26:56'),
(58, 'Áo len', 'ao-len', 5, 55, 'Áo len', 'Áo len', '2017-03-25 00:27:19', '2017-03-25 00:27:19'),
(59, 'Thời trang hè', 'thoi-trang-he', 7, 0, 'Thời trang mùa hè', '                                	Thời trang mùa hè\r\n                                ', '2017-03-25 00:27:52', '2017-03-25 00:32:21'),
(60, 'Đồ lót', 'do-lot', 8, 59, 'Đồ lót', 'Đồ lót', '2017-03-25 00:29:09', '2017-03-25 00:29:09'),
(61, 'Áo thun', 'ao-thun', 9, 59, 'Áo thun', 'Áo thun', '2017-03-25 00:29:34', '2017-03-25 00:29:34'),
(62, 'Quần ngố', 'quan-ngo', 11, 59, 'Quần ngố', 'Quần ngố', '2017-03-25 00:33:18', '2017-03-25 00:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `created_at`, `updated_at`) VALUES
(1, 'Nâu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Vàng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Xanh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tím', '0000-00-00 00:00:00', '2017-04-16 15:41:57'),
(8, 'Trang', '2017-05-14 00:00:00', '2017-05-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_pass` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_sex` varchar(25) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_pass`, `customer_email`, `customer_sex`, `customer_phone`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'Bùi Quang Duy', 'e10adc3949ba59abbe56e057f20f883e', 'bduy1789@gmail.com', 'male', '01652400676', 'Nam Định', '0000-00-00', '0000-00-00'),
(2, 'Bùi Quang Duy', 'e10adc3949ba59abbe56e057f20f883e', 'duyxinhtrai@gmail.com', 'male', '01652400676', 'Ngõ 20 Hồ Tùng Mậu', '2017-04-22', '2017-04-22'),
(3, 'Đỗ Văn Anh', '25f9e794323b453885f5181f1b624d0b', 'bduy179@gmail.com', 'female', '0967523643', 'Cầu Giấy', '2017-04-22', '2017-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `madeins`
--

CREATE TABLE `madeins` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `madeins`
--

INSERT INTO `madeins` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'japan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'chine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'korea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'VietNam', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `mate_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `mate_name`, `created_at`, `updated_at`) VALUES
(1, 'bò', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'thô', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Da', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'phông', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Lua', '2017-05-14 12:02:02', '2017-05-14 12:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_25_015848_create_cates_table', 1),
('2016_08_25_021124_create_products_table', 2),
('2016_08_25_022145_create_product_images_table', 3),
('2016_10_25_081421_create_transactions_table', 4),
('2016_10_25_082441_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_viewed` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`, `is_viewed`, `created_at`, `updated_at`) VALUES
(123, 108, 11, 1, 1250000, 0, 1, '2017-03-25 04:07:15', '2017-03-25 05:09:30'),
(124, 109, 10, 1, 270000, 0, 1, '2017-03-25 04:45:25', '2017-03-25 04:53:38'),
(125, 109, 9, 1, 450000, 0, 1, '2017-03-25 04:45:25', '2017-03-25 04:55:26'),
(126, 110, 8, 1, 810000, 0, 1, '2017-03-25 04:46:38', '2017-03-25 04:53:20'),
(127, 111, 9, 1, 450000, 0, 1, '2017-03-25 05:13:21', '2017-03-25 05:13:42'),
(128, 112, 11, 1, 1250000, 0, 1, '2017-03-27 22:56:21', '2017-03-27 22:56:42'),
(129, 113, 11, 1, 1250000, 0, 1, '2017-03-31 18:26:54', '2017-03-31 18:27:48'),
(130, 114, 11, 2, 2500000, 0, 0, '2017-03-31 18:29:13', '2017-03-31 18:29:13'),
(131, 115, 8, 3, 2430000, 0, 1, '2017-03-31 18:45:49', '2017-03-31 18:47:00'),
(132, 116, 8, 3, 2430000, 0, 1, '2017-03-31 18:48:55', '2017-04-18 08:40:15'),
(133, 116, 10, 1, 270000, 0, 1, '2017-03-31 18:48:55', '2017-04-22 02:39:43'),
(134, 117, 13, 1, 216000, 0, 1, '2017-04-23 05:56:25', '2017-04-23 07:25:38'),
(135, 118, 13, 1, 216000, 0, 1, '2017-05-03 23:03:00', '2017-05-13 05:27:15'),
(136, 119, 14, 1, 240000, 0, 1, '2017-05-14 06:53:37', '2017-05-14 06:55:39'),
(137, 120, 14, 1, 240000, 0, 1, '2017-05-14 06:55:22', '2017-05-14 06:55:35'),
(138, 121, 14, 1, 240000, 0, 1, '2017-05-14 06:57:38', '2017-05-14 06:57:58'),
(139, 122, 14, 1, 240000, 0, 1, '2017-05-14 07:00:51', '2017-05-14 07:03:30'),
(140, 123, 13, 1, 216000, 0, 0, '2017-05-14 07:27:07', '2017-05-14 07:27:07'),
(143, 125, 13, 1, 216000, 0, 0, '2017-05-14 07:37:58', '2017-05-14 07:37:58'),
(144, 125, 12, 1, 420000, 0, 0, '2017-05-14 07:37:58', '2017-05-14 07:37:58'),
(145, 126, 13, 1, 216000, 0, 0, '2017-05-14 07:38:25', '2017-05-14 07:38:25'),
(146, 126, 12, 1, 420000, 0, 1, '2017-05-14 07:38:25', '2017-09-12 18:59:46'),
(147, 127, 13, 1, 216000, 0, 1, '2017-05-14 07:38:44', '2017-09-12 18:59:41'),
(148, 127, 12, 1, 420000, 0, 1, '2017-05-14 07:38:44', '2017-09-12 18:59:49'),
(149, 128, 12, 1, 420000, 0, 1, '2017-05-14 07:39:58', '2017-09-12 18:59:43'),
(150, 129, 12, 1, 420000, 0, 1, '2017-05-14 07:43:27', '2017-09-12 18:59:39'),
(151, 130, 12, 1, 420000, 0, 1, '2017-05-14 07:44:35', '2017-05-15 05:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `made_id` int(11) NOT NULL,
  `mate_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `view`, `brand_id`, `color_id`, `made_id`, `mate_id`, `sale_id`, `size_id`, `type_id`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(8, 'Sơ mi cao cấp SM-4415', 'so-mi-cao-cap-sm-4415', 900000, '<h2><strong><a href="https://h2tshop.com/so-mi-dai-tay/c11.html" style="color: rgb(51, 51, 51); font-size: 12px;">Sơ mi nam</a>&nbsp;chấm bi họa tiết nhẹ nh&agrave;ng nhưng vẫn kh&ocirc;ng l&agrave;m mất đi vẻ mạnh mẽ, c&aacute; t&iacute;nh của c&aacute;c ch&agrave;ng trai đ&atilde; c&oacute; mặt tại hệ thống thời trang Gia Bảo shop</strong></h2>\r\n', '<p>C&oacute; thể n&oacute;i&nbsp;<strong>&aacute;o sơ mi nam chấm bi</strong>&nbsp;đang l&agrave; item thời trang hot nhất tr&ecirc;n thị trường thời trang &aacute;o sơ mi nam hiện nay. Sự kết hợp giữa họa tiết&nbsp;<strong>chấm bi xanh</strong>&nbsp;v&agrave; kiểu&nbsp;<strong>&aacute;o sơ mi body</strong>&nbsp;trong tổng thể&nbsp;<strong>m&agrave;u cam đất</strong>&nbsp;sẽ đem đến cho bạn một biến tấu mới trong xu hướng thời trang nam Xu&acirc;n - H&egrave; 2017.</p>\r\n\r\n<p><img alt="Sơ mi nam chấm bi" src="https://h2tshop.com/media/product/1446_44_2.jpg" style="border:none; display:block; height:800px; margin:auto; max-width:700px; width:600px" /></p>\r\n\r\n<p><strong>&Aacute;o sơ mi nam chấm bi cam đất</strong>&nbsp;gi&uacute;p c&aacute;c ch&agrave;ng vừa năng động c&aacute; t&iacute;nh nhưng vẫn giữ được sự lịch thiệp vốn c&oacute; khi diện n&oacute;.</p>\r\n\r\n<p><img alt="áo sơ mi nam chấm bi" src="https://h2tshop.com/media/product/1446_44_3.jpg" style="border:none; display:block; height:800px; margin:auto; max-width:700px; width:600px" /></p>\r\n\r\n<p>Với chiếc&nbsp;<strong>sơ mi chấm bi cao cấp</strong>&nbsp;n&agrave;y bạn c&oacute; thể kh&eacute;o l&eacute;o mix c&ugrave;ng&nbsp;<a href="https://h2tshop.com/quan-bo-nam/c5.html" style="color: rgb(51, 51, 51);"><strong>quần jean</strong>&nbsp;</a>hay<a href="https://h2tshop.com/quan-au-nam/c7.html" style="color: rgb(51, 51, 51);">&nbsp;<strong>quần &acirc;u nam</strong>&nbsp;</a>đều tạo cho m&igrave;nh một set đồ đi l&agrave;m hay dạo phố ho&agrave;n hảo.</p>\r\n\r\n<p><img alt="Sơ mi nam" src="https://h2tshop.com/media/product/1446_44_1.jpg" style="border:none; display:block; height:800px; margin:auto; max-width:700px; width:600px" /></p>\r\n\r\n<p>C&ograve;n khi m&ugrave;a đ&ocirc;ng đang đến gần th&igrave; một chiếc<strong>&nbsp;<a href="https://h2tshop.com/thoi-trang-mua-dong/c2.html" style="color: rgb(51, 51, 51);">&aacute;o kho&aacute;c nam</a></strong>&nbsp;mix c&ugrave;ng sơ mi sẽ l&agrave; lựa chọn tuyệt vời.</p>\r\n\r\n<p><img alt="so mi cao cap" src="https://h2tshop.com/media/product/1446_44_4.jpg" style="border:none; display:block; height:368px; margin:auto; max-width:700px; width:599px" /></p>\r\n\r\n<p>Với thiết kế chuẩn từ&nbsp;<strong>chất vải cao cấp, đường kim mũi chỉ</strong>&nbsp;đến chi tiết&nbsp;<strong>c&uacute;c x&agrave; cừ</strong>&nbsp;đ&atilde; l&agrave;m n&ecirc;n chiếc &aacute;o<strong>&nbsp;sơ mi cao cấp SM-4415&nbsp;</strong>bạn sẽ kh&ocirc;ng thất vọng khi lựa chọn chiếc<strong>&nbsp;&aacute;o sơ mi</strong>&nbsp;n&agrave;y bổ sung v&agrave;o bộ sưu tập&nbsp;<strong>thời trang xu&acirc;n h&egrave; 2017</strong>&nbsp;của m&igrave;nh.</p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1446_44_5.jpg" style="border:none; display:block; height:351px; margin:auto; max-width:700px; width:600px" /></p>\r\n\r\n<p><strong><span style="color:rgb(255, 102, 0); font-size:18pt">|</span></strong>&nbsp;Xem th&ecirc;m:<a href="https://h2tshop.com/dieu-lam-nen-nhung-chiec-ao-so-mi-nam-cao-cap/a87.html" style="color: rgb(51, 51, 51);">&nbsp;Điều l&agrave;m n&ecirc;n những chiếc &aacute;o sơ mi nam cao cấp</a></p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1446_44_6.jpg" style="border:none; display:block; height:357px; margin:auto; max-width:700px; width:600px" /></p>\r\n', '250_1446_44_2.jpg', 'Sơ mi cao cấp SM-4415', '                                                            		    Sơ mi cao cấp SM-4415\r\n                                \r\n                                ', 23, 2, 1, 1, 2, 5, 1, 0, 2, 54, '2017-03-24 23:44:04', '2017-05-03 23:17:05'),
(9, 'Sơ mi zanzi cao cấp SM-3148', 'so-mi-zanzi-cao-cap-sm-3148', 500000, '<h2 style="text-align:justify">Xu hướng thời trang Xu&acirc;n H&egrave; 2017 được đ&aacute;nh dấu bằng sự trở lại của những trang phục phong c&aacute;ch qu&acirc;n đội. Họa tiết camouflage hay c&ograve;n được gọi l&agrave; họa tiết rằn ri (zanzi) đ&atilde; rục rịch quay trở lại với nhiều n&eacute;t mới v&agrave; độc đ&aacute;o hơn. H&atilde;y c&ugrave;ng điểm qua chiếc&nbsp;<a href="https://h2tshop.com/so-mi-dai-tay/c11.html" style="color: rgb(51, 51, 51); font-size: 12px;">&aacute;o sơ mi&nbsp;</a>họa tiết rằn ri tại Gia Bảo Shop&nbsp;trong xu hướng thời trang sơ mi nam 2017 nh&eacute;!&nbsp;</h2>\r\n', '<p><img alt="" src="https://h2tshop.com/media/product/1400_1_1.jpg" style="border:none; display:block; height:855px; margin:auto; max-width:700px; width:650px" /></p>\r\n\r\n<p style="text-align:justify">Với chiếc&nbsp;<strong>&aacute;o sơ mi SM-3148</strong>&nbsp;họa tiết rằn ri cho&nbsp;<strong>thời trang nam 2017</strong>, bạn c&oacute; thể kết hợp với&nbsp;<strong>T-shirt</strong>&nbsp;m&agrave; kh&ocirc;ng cần lo lắng kh&ocirc;ng hợp m&ugrave;a hay thời tiết v&igrave; ch&uacute;ng ph&ugrave; hợp với bất cứ l&uacute;c n&agrave;o trong năm.&nbsp;</p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1400_1_2.jpg" style="border:none; display:block; height:976px; margin:auto; max-width:700px; width:650px" /></p>\r\n\r\n<p style="text-align:justify"><strong>&Aacute;o sơ mi rằn ri</strong>&nbsp;được mix đồ đơn giản khi kết hợp c&ugrave;ng với quần v&agrave; gi&agrave;y nam đơn giản, m&agrave;u trơn hay với những m&agrave;u sắc trung t&iacute;nh t&ocirc;n n&ecirc;n họa tiết nổi bật của chiếc &aacute;o. Bạn sẽ kh&ocirc;ng bao giờ lo lỗi mốt với chiếc &aacute;o<strong>&nbsp;sơ mi nam body</strong>&nbsp;mang hoạt tiết n&agrave;y bởi c&aacute;c họa tiết zanzi đa dạng in hoa, kẻ &ocirc;, b&egrave;o nh&uacute;n hay mảng m&agrave;u rằn ri c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1400_1_3.jpg" style="border:none; display:block; height:879px; margin:auto; max-width:700px; width:650px" /></p>\r\n\r\n<p><strong>Sơ mi nam rằn ri</strong>&nbsp;n&agrave;y sẽ mang đến cho người mặc d&aacute;ng vẻ khỏe khoắn, c&oacute; phần bụi bặm, phong trần v&agrave; thậm ch&iacute; rất &quot;chất chơi&quot;.</p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1400_1_4.jpg" style="border:none; display:block; height:944px; margin:auto; max-width:700px; width:650px" /><img alt="" src="https://h2tshop.com/media/product/1400_1_5.jpg" style="border:none; display:block; height:435px; margin:auto; max-width:700px; width:650px" /><img alt="" src="https://h2tshop.com/media/product/1400_1_6.jpg" style="border:none; display:block; height:919px; margin:auto; max-width:700px; width:650px" /></p>\r\n\r\n<p><a href="https://h2tshop.com/quan-jogger-kaki-tui-hop-q-2148/p1383.html" style="color: rgb(51, 51, 51);">Quần kaki</a>&nbsp;t&uacute;i hộp c&ugrave;ng với những đ&ocirc;i&nbsp;<strong><em>boots&nbsp;</em></strong>bụi bặm l&agrave; sự kết hợp v&ocirc; c&ugrave;ng tuyệt với cho mẫu &aacute;o sơ mi n&agrave;y!</p>\r\n\r\n<p><img alt="" src="https://h2tshop.com/media/product/1400_1_7.jpg" style="border:none; display:block; height:832px; margin:auto; max-width:700px; width:650px" /></p>\r\n', '1400_1_1.jpg', 'dvsdbrbesb', '                                                            	rbrbsbrsbr	    \r\n                                \r\n                                ', 27, 2, 1, 5, 2, 5, 4, 0, 2, 54, '2017-03-24 23:53:17', '2017-05-16 02:20:45'),
(10, 'Sơ mi bò lót lông SM-642', 'so-mi-bo-lot-long-sm-642', 300000, '<ul>\r\n	<li>&Aacute;o&nbsp;<a href="http://h2tshop.com/so-mi-dai-tay/c11.html" style="color: rgb(51, 51, 51);">sơ mi b&ograve; l&oacute;t l&ocirc;ng</a>&nbsp;l&agrave; mẫu&nbsp;<strong>&aacute;o sơ mi</strong>&nbsp;phổ th&ocirc;ng được c&aacute;c bạn ưa chuộng, ph&ugrave; hợp với bạn nam phong c&aacute;ch trẻ trung, năng động, ph&oacute;ng kho&aacute;ng</li>\r\n	<li>Thiết kế&nbsp;<em><strong>&aacute;o b&ograve;</strong>&nbsp;</em>với điểm nhấn &aacute;o l&oacute;t l&ocirc;ng, hai t&uacute;i trước ngực. &Aacute;o l&oacute;t l&ocirc;ng vừa giữ ấm cho cơ thể nhưng vẫn hợp thời trang, thể hiện phong c&aacute;ch của người mặc</li>\r\n	<li>&Aacute;o ph&ugrave; hợp với thời tiết chuyển giao m&ugrave;a</li>\r\n	<li>M&agrave;u sắc: m&agrave;u xanh</li>\r\n	<li>&nbsp;Chất liệu: vải b&ograve; cao cấp, lớp l&ocirc;ng l&oacute;t nỉ b&ecirc;n trong</li>\r\n</ul>\r\n', '<h2>Dưới đ&acirc;y l&agrave; th&ocirc;ng số tham khảo v&agrave; h&igrave;nh ảnh chi tiết của &aacute;o</h2>\r\n\r\n<ul>\r\n	<li>&nbsp;Để đặt h&agrave;ng v&agrave; tư vấn trực tiếp bạn chat trực tuyến hoặc inbox v&agrave;o fanpage H2TSHOP:&nbsp;<a href="https://www.facebook.com/shopH2T/" style="color: rgb(51, 51, 51);">https://www.facebook.com/shopH2T/#</a></li>\r\n	<li>&nbsp;Địa chỉ hệ thống<a href="http://h2tshop.com/lien-he" style="color: rgb(51, 51, 51);">&nbsp;cửa h&agrave;ng H2TSHOP</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>nẹ&nbsp;<img alt="" src="https://h2tshop.com/media/product/1271_6_1.jpg" style="border:none; display:block; margin:auto; max-width:700px" /><img alt="" src="https://h2tshop.com/media/product/1271_6_2.jpg" style="border:none; display:block; margin:auto; max-width:700px" /><img alt="" src="https://h2tshop.com/media/product/1271_6_3.jpg" style="border:none; display:block; margin:auto; max-width:700px" /><img alt="" src="https://h2tshop.com/media/product/1271_6_4.jpg" style="border:none; display:block; margin:auto; max-width:700px" /></p>\r\n', '250_1271_6_1.jpg', 'dfndmrr', '                                                            		mdmftmtfm    \r\n                                \r\n                                ', 34, 9, 3, 2, 1, 5, 3, 0, 2, 54, '2017-03-25 00:01:52', '2017-05-16 23:26:43'),
(12, 'Áo phông nam AP - 1439', 'ao-phong-nam-ap---1439', 420000, '<p>&Aacute;o ph&ocirc;ng nam AP - 1439</p>\r\n', '<p><img src="https://h2tshop.com/media/product/1208_1_8.jpg" /></p>\r\n', '1208_1_1.jpg', 'Áo phông nam AP - 1439', '                            		    Áo phông nam AP - 1439\r\n                                ', 28, 2, 1, 4, 4, 1, 1, 1, 2, 61, '2017-03-25 00:38:17', '2017-07-20 04:00:27'),
(13, 'Áo thun cổ tim AT-43313', 'ao-thun-co-tim-at-43313', 240000, '<p><span style="background-color:rgb(248, 248, 248); color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:12px">Xem th&ecirc;m c&aacute;c mẫu mới 2017 tại đ&acirc;y:</span></p>\r\n', '', '250_726_2_43_8.jpg', 'Áo thun cổ tim AT-43313', 'Áo thun cổ tim AT-43313    \r\n                                ', 16, 2, 3, 2, 4, 5, 1, 1, 2, 61, '2017-04-16 08:03:06', '2017-05-16 04:11:30'),
(14, 'Sơ mi lụa SM-4419', 'so-mi-lua-sm-4419', 240000, '<p>Sơ mi lụa sm-4419 m&aacute;t mẻ</p>\r\n', '<p>Sơ mi lụa sm-4419 m&aacute;t mẻ c&aacute; t&iacute;nh</p>\r\n', 'smlua1.jpg', 'smlua-4419', '                                Màu tím , chất liệu lụa , mát mẻ\r\n                                ', 62, 2, 4, 5, 5, 1, 2, 0, 2, 54, '2017-05-14 05:05:05', '2017-07-20 03:59:36'),
(15, 'Sơ mi lụa KB-322', 'so-mi-lua-kb-322', 300000, '<p>Sơ mi lụa KB-322<img alt="" src="http://localhost/laravel-doan-bqd/resources/upload/images/smlua4.jpg" style="height:1200px; width:580px" /></p>\r\n', '<p><img alt="" src="http://localhost/laravel-doan-bqd/resources/upload/images/smlua4.jpg" style="float:left; height:1200px; width:580px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sơ mi lụa KB-322</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'smlua3.jpg', 'KB-322', '                                                                                                                                                                Sơ mi lụa KB-322 mát mẻ thoáng đãng                            		    \r\n                        ', 77, 2, 8, 5, 5, 3, 1, 0, 2, 54, '2017-05-14 05:19:07', '2017-09-12 18:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(12, '1.PNG', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2.PNG', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '3.PNG', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '4.PNG', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '5.PNG', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '6.PNG', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '7.PNG', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '9.PNG', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '10.PNG', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '11.PNG', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '112.PNG', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '113.PNG', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '114.PNG', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'smlua2.jpg', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'smlua4.jpg', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sale_event` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_event`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'không giam', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Giam giá quôc khánh mùng 2 tháng 9', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Giam giá mùa hè', 15, '0000-00-00 00:00:00', '2017-04-16 16:33:03'),
(4, 'Giam giá noel', 20, '0000-00-00 00:00:00', '2017-04-16 16:33:17'),
(5, 'Giam giá mùng 8 tháng 3', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `created_at`, `updated_at`) VALUES
(1, 'M', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'XL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'XX', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `status`, `user_name`, `user_email`, `user_phone`, `message`, `amount`, `payment`, `created_at`, `updated_at`) VALUES
(108, 0, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', '                            \r\n               mang ve nam dinh cho tao         ', 1250000, '1', '2017-03-25 04:07:14', '2017-03-25 04:07:14'),
(109, 1, 'vu manh thieu', 'thieuvu@gmail.com', '01421525', 'dua di dau                            \r\n                        ', 720000, '1', '2017-03-25 04:45:25', '2017-03-25 04:45:25'),
(110, 1, 'dao quang toan', 'toandao@gmail.com', '01433535', 'ko cos igg                            \r\n                        ', 810000, '1', '2017-03-25 04:46:38', '2017-03-25 04:46:38'),
(111, 1, 'mai van thuyen', 'thuyen@gmail.com', '0124535', 'khong co gi                            \r\n                        ', 450000, '1', '2017-03-25 05:13:21', '2017-03-25 05:13:21'),
(112, 0, 'buiquangduy', 'bduy1789@gmail.com', '01652400676', 'khong co gi                            \r\n                        ', 1250000, '1', '2017-03-27 22:56:20', '2017-03-27 22:56:20'),
(113, 0, 'dothuytrang', 'trangdo@gmail.com', '01652400676', 'gui hang tai nha              ', 1250000, '1', '2017-03-31 18:26:54', '2017-03-31 18:26:54'),
(114, 0, 'vu anh dung', 'bduy1789@gmail.com', '01652400677', 'khong co gi                            \r\n                        ', 2500000, '1', '2017-03-31 18:29:13', '2017-03-31 18:29:13'),
(115, 1, 'bui quang duy', 'bduy1789@gmail.com', '01652400676', 'khong co gi                            \r\n                        ', 2430000, '1', '2017-03-31 18:45:49', '2017-03-31 18:45:49'),
(116, 1, 'bui quang anh', 'quanganh@gmail.com', '01652400677', '                            \r\n                        ssg', 2700000, '1', '2017-03-31 18:48:55', '2017-03-31 18:48:55'),
(117, 1, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'gui den 68 quan hoa nhe     \r\n                        ', 216000, '1', '2017-04-23 05:56:25', '2017-04-23 05:56:25'),
(118, 1, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', '                gui den ho tung mau            \r\n                        ', 216000, '1', '2017-05-03 23:03:00', '2017-05-03 23:03:00'),
(119, 0, 'Vũ Quang Cảnh', 'canh34@gmail.com', '0165246785', 'Đưa tới 512 tôn đức thắng                      \r\n                        ', 240000, '1', '2017-05-14 06:53:37', '2017-05-14 06:53:37'),
(120, 0, 'Vũ Quang Cảnh', 'canh34@gmail.com', '0165246785', 'Đưa tới 512 tôn đức thắng                      \r\n                        ', 240000, '1', '2017-05-14 06:55:22', '2017-05-14 06:55:22'),
(121, 0, 'Vũ Quang Cảnh', 'canh34@gmail.com', '0165246785', 'Đưa tới 512 tôn đức thắng                      \r\n                        ', 240000, '1', '2017-05-14 06:57:38', '2017-05-14 06:57:38'),
(122, 0, 'Đào Xuân Huy', 'daohuy@gmail.com', '01652400676', 'Gửi tới Tôn Đức Thắng                            \r\n                        ', 240000, '1', '2017-05-14 07:00:51', '2017-05-14 07:00:51'),
(123, 0, 'Trịnh Đình Quang', 'quangtrinh@gmail.com', '0967564363', 'Gửi tới Thanh Xuân                            \r\n                        ', 216000, '1', '2017-05-14 07:27:07', '2017-05-14 07:27:07'),
(125, 1, 'Vũ Thị Thắm', 'bduy1789@gmail.com', '01652400676', 'Gửi tới 68 quan hoa                            \r\n                        ', 636000, '1', '2017-05-14 07:37:58', '2017-05-14 07:37:58'),
(126, 0, 'Vũ Thị Thắm', 'bduy1789@gmail.com', '01652400676', 'Gửi tới 68 quan hoa                            \r\n                        ', 636000, '1', '2017-05-14 07:38:25', '2017-05-14 07:38:25'),
(127, 0, 'Vũ Thị Thắm', 'bduy1789@gmail.com', '01652400676', 'Gửi tới 68 quan hoa                            \r\n                        ', 636000, '1', '2017-05-14 07:38:44', '2017-05-14 07:38:44'),
(128, 0, 'Vũ Quang Thắng', 'bduy1789@gmail.com', '01652400676', 'Hồ Tùng Mậu                            \r\n                        ', 420000, '1', '2017-05-14 07:39:57', '2017-05-14 07:39:57'),
(129, 0, 'Vũ Quang Thắng', 'bduy1789@gmail.com', '01652400676', 'Hồ Tùng Mậu                            \r\n                        ', 420000, '1', '2017-05-14 07:43:26', '2017-05-14 07:43:26'),
(130, 0, 'Vũ Quang Thắng', 'bduy1789@gmail.com', '01652400676', 'Hồ Tùng Mậu                            \r\n                        ', 420000, '1', '2017-05-14 07:44:35', '2017-05-14 07:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'ngan tay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'dài tay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ông loe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'cào', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'dui', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$gfNYaW8x0WGqDGyixDXBMeaJDkz5Rx2LxMF5YQPcW7rB0G0KoXA2y', 'bduy1789@gmail.com', 1, 'L5TV1RcsoKTmP7NFkxjOlzTDJWXHcXUfT6P8Y0UZZMEyz3hslw1rVPMtY97T', '2016-09-21 07:59:56', '2016-11-04 03:02:00'),
(4, 'member', '$2y$10$5R0TYUzZxriERAYhCH9ba.DE/RGbGKVk1eZKECYJc/XDhhFEOzWwO', 'hihi@gmail.com', 1, 'D5VnVcU8OLoPUBryofe2P8AXLTeQGPLhVUfO6gLd', '2016-09-21 08:26:27', '2016-09-21 08:26:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `madeins`
--
ALTER TABLE `madeins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `madeins`
--
ALTER TABLE `madeins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
