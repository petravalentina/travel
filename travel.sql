-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 04:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Yuki Kurniawan', 'yukikurniawan@gmail.com', '$2y$10$.J.kESDW9OrlNgDMpseEoORyAb/5hS6sO3w7i8TFeqAaDPwYljPUu', 'admin.jpg', '', NULL, '2022-12-06 18:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Makan Prasmanan', '2022-07-01 05:32:35', '2022-07-01 05:32:35'),
(2, 'Fotografi', '2022-07-01 05:32:55', '2022-07-01 05:32:55'),
(3, 'Kendaraan', '2022-07-01 05:33:07', '2022-07-01 05:33:07'),
(4, 'Tempat Tidur', '2022-07-01 05:33:29', '2022-07-01 05:33:29'),
(5, 'Pemandu Pribadi', '2022-07-01 05:33:41', '2022-07-01 05:33:41'),
(6, 'Peralatan Kesehatan', '2022-07-01 05:33:52', '2022-07-01 05:33:52'),
(7, 'Pelayanan VIP', '2022-07-01 05:34:00', '2022-07-01 05:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` text NOT NULL,
  `order_no` text NOT NULL,
  `room_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booking_date`, `order_no`, `room_id`, `created_at`, `updated_at`) VALUES
(1, '08/08/2022', '1659579248', 1, NULL, NULL),
(2, '15/08/2022', '1659579248', 6, NULL, NULL),
(3, '16/08/2022', '1659579248', 6, NULL, NULL),
(4, '08/08/2022', '1659808495', 4, NULL, NULL),
(5, '09/08/2022', '1659808495', 4, NULL, NULL),
(6, '10/08/2022', '1659808495', 4, NULL, NULL),
(7, '04/09/2022', '1659923618', 4, '2022-08-07 19:53:38', '2022-08-07 19:53:38'),
(8, '12/09/2022', '1659923618', 5, '2022-08-07 19:53:38', '2022-08-07 19:53:38'),
(9, '13/09/2022', '1659923618', 5, '2022-08-07 19:53:38', '2022-08-07 19:53:38'),
(10, '14/09/2022', '1659923618', 5, '2022-08-07 19:53:39', '2022-08-07 19:53:39'),
(11, '15/09/2022', '1659923618', 5, '2022-08-07 19:53:39', '2022-08-07 19:53:39'),
(12, '10/09/2022', '1659954645', 5, '2022-08-08 04:30:45', '2022-08-08 04:30:45'),
(13, '11/09/2022', '1659954645', 5, '2022-08-08 04:30:45', '2022-08-08 04:30:45'),
(14, '12/09/2022', '1659954645', 5, '2022-08-08 04:30:45', '2022-08-08 04:30:45'),
(15, '18/10/2022', '1665914211', 6, '2022-10-16 02:56:52', '2022-10-16 02:56:52'),
(16, '18/10/2022', '1665914373', 6, '2022-10-16 02:59:34', '2022-10-16 02:59:34'),
(17, '18/10/2022', '1665914835', 6, '2022-10-16 03:07:17', '2022-10-16 03:07:17'),
(18, '18/10/2022', '1665916149', 1, '2022-10-16 03:29:09', '2022-10-16 03:29:09'),
(19, '24/10/2022', '1665916149', 4, '2022-10-16 03:29:09', '2022-10-16 03:29:09'),
(20, '18/10/2022', '1665916185', 1, '2022-10-16 03:29:46', '2022-10-16 03:29:46'),
(21, '24/10/2022', '1665916185', 4, '2022-10-16 03:29:46', '2022-10-16 03:29:46'),
(22, '17/10/2022', '1665919987', 6, '2022-10-16 04:33:08', '2022-10-16 04:33:08'),
(23, '16/10/2022', '1665923514', 6, '2022-10-16 05:31:54', '2022-10-16 05:31:54'),
(24, '16/10/2022', '1665925374', 6, '2022-10-16 06:02:54', '2022-10-16 06:02:54'),
(25, '16/10/2022', '1665925507', 6, '2022-10-16 06:05:07', '2022-10-16 06:05:07'),
(26, '16/10/2022', '1665925592', 6, '2022-10-16 06:06:32', '2022-10-16 06:06:32'),
(27, '16/10/2022', '1665926277', 6, '2022-10-16 06:17:58', '2022-10-16 06:17:58'),
(28, '16/10/2022', '1665926297', 6, '2022-10-16 06:18:17', '2022-10-16 06:18:17'),
(29, '16/10/2022', '1665926637', 6, '2022-10-16 06:23:57', '2022-10-16 06:23:57'),
(30, '17/10/2022', '1665936022', 6, '2022-10-16 09:00:23', '2022-10-16 09:00:23'),
(31, '17/10/2022', '1665936129', 6, '2022-10-16 09:02:10', '2022-10-16 09:02:10'),
(32, '17/10/2022', '1665936129', 4, '2022-10-16 09:02:10', '2022-10-16 09:02:10'),
(33, '05/12/2022', '1670157941', 1, '2022-12-04 05:45:41', '2022-12-04 05:45:41'),
(34, '05/12/2022', '1670174420', 1, '2022-12-04 10:20:20', '2022-12-04 10:20:20'),
(35, '06/12/2022', '1670296622', 1, '2022-12-05 20:17:03', '2022-12-05 20:17:03'),
(36, '06/12/2022', '1670296716', 6, '2022-12-05 20:18:37', '2022-12-05 20:18:37'),
(37, '06/12/2022', '1670336110', 1, '2022-12-06 07:15:11', '2022-12-06 07:15:11'),
(38, '07/12/2022', '1670376258', 5, '2022-12-06 18:24:18', '2022-12-06 18:24:18'),
(39, '07/12/2022', '1670377248', 1, '2022-12-06 18:40:49', '2022-12-06 18:40:49'),
(40, '07/12/2022', '1670379909', 1, '2022-12-06 19:25:10', '2022-12-06 19:25:10'),
(41, '07/12/2022', '1670379947', 6, '2022-12-06 19:25:48', '2022-12-06 19:25:48'),
(42, '08/12/2022', '1670379947', 6, '2022-12-06 19:25:48', '2022-12-06 19:25:48'),
(43, '09/12/2022', '1670379947', 6, '2022-12-06 19:25:48', '2022-12-06 19:25:48'),
(44, '07/12/2022', '1670380218', 1, '2022-12-06 19:30:19', '2022-12-06 19:30:19'),
(45, '07/12/2022', '1670383596', 4, '2022-12-06 20:26:37', '2022-12-06 20:26:37'),
(46, '08/12/2022', '1670383596', 4, '2022-12-06 20:26:37', '2022-12-06 20:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `photo`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yuki Kurniawan', 'yuki@gmail.com', '$2y$10$FYILCqkZhwlU4bt7GzFnQ.XSb/1hcA4I3CWcBLnMqWiq5g3z/ZJhe', '082228412275', 'INDONESIA', 'JL. CUNGKUP', 'JAWA TENGAH', 'SALATIGA', '57218', '1670375023.jpg', '', 1, '2022-07-04 20:42:25', '2022-12-06 18:03:43'),
(2, 'Jonathan Mario', 'mario@gmail.com', '$2y$10$FYILCqkZhwlU4bt7GzFnQ.XSb/1hcA4I3CWcBLnMqWiq5g3z/ZJhe', '082228412275', 'INDONESIA', 'JL. KEMIRI 3', 'JAWA TENGAH', 'SALATIGA', '57218', '1665930575.jpg', '', 1, '2022-07-04 20:42:25', '2022-12-04 01:08:09'),
(3, 'Petra Valentina', 'petra@gmail.com', '$2y$10$FYILCqkZhwlU4bt7GzFnQ.XSb/1hcA4I3CWcBLnMqWiq5g3z/ZJhe', '082228412275', 'INDONESIA', 'JL. CEMARA RAYA', 'JAWA TENGAH', 'SALATIGA', '57218', '1665930575.jpg', '', 1, '2022-07-04 20:42:25', '2022-12-04 01:08:09'),
(4, 'Sarah Larasati', 'sarah@gmail.com', '$2y$10$FYILCqkZhwlU4bt7GzFnQ.XSb/1hcA4I3CWcBLnMqWiq5g3z/ZJhe', '08123456789', 'INDONESIA', 'JL. KEMIRI 1', 'JAWA TENGAH', 'SALATIGA', '57218', '1665930575.jpg', '', 1, '2022-07-04 20:42:25', '2022-12-04 01:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Apakah pesan paket tour di GallenTravel Aman?', '<p>Kurang dari 24 jam, pembatalan dikenakan Cancellation Fee 25% dari harga paket. No Show dikenakan fee 25% dari harga tiket. Lebih dari 48 jam sebelum keberangkatan, pembatalan tidak dikenakan Refund Fee. Kurang dari 48 jam sebelum keberangkatan, pembatalan dikenakan Refund Fee 25% dari harga paket<br></p>', '2022-06-26 23:48:59', '2022-12-06 07:25:04'),
(2, 'Apakah paket Tour GallenTravel bisa dibatalkan?', '<p>Bagaimana cara saya mengajukan pembatalan pesanan dan pengembalian dana / refund di GallenTravel? Jika kamu membeli tiket Pesawat ataupun Hotel, kamu bisa mengajukan pembatalan dan pengembalian dana melalui aplikasi GallenTravel.<br></p>', '2022-06-26 23:50:18', '2022-12-06 07:26:53'),
(3, 'Berapa biaya pembatalan paket Tour?', '<p>Kurang dari 24 jam, pembatalan dikenakan Cancellation Fee 25% dari harga paket. No Show dikenakan fee 25% dari harga tiket. Lebih dari 48 jam sebelum keberangkatan, pembatalan tidak dikenakan Refund Fee. Kurang dari 48 jam sebelum keberangkatan, pembatalan dikenakan Refund Fee 25% dari harga paket<br></p>', '2022-06-26 23:50:33', '2022-12-06 07:28:28'),
(4, 'Pesan paket Tour online bayar pakai apa?', '<p>1. BRI<br>2. BNI<br>3. BCA<br>4. MANDIRI</p>', '2022-06-26 23:50:48', '2022-12-06 07:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `heading` text NOT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fa fa-clock-o', '24 hour Travel service', 'Selama 24 jam perjalanan, anda akan merasakan kenyaman yang luar biasa', '2022-06-25 20:46:45', '2022-12-04 06:41:06'),
(2, 'fa fa-wifi', 'Free Wifi', 'Jangan khawatir terhadap sinyal yang buruk karna kami memiliki wifi yang sangat cepat.', '2022-06-25 20:48:09', '2022-12-04 06:41:55'),
(3, 'fa fa-car', 'Enjoy Your Travel', 'Nikmati perjalananmu dalam berkeliling Indonesia', '2022-06-25 20:48:35', '2022-12-04 06:43:47'),
(4, 'fa fa-shield', 'Security', 'Jangan khawatir akan perjalanan anda, kami menjamin keamanan, keselamatan dan kenyamanan anda.', '2022-06-25 20:49:00', '2022-12-04 06:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(6, '2022_06_24_093653_create_slides_table', 2),
(7, '2022_06_26_021258_create_features_table', 3),
(8, '2022_06_26_033305_create_testimonials_table', 4),
(9, '2022_06_26_051426_create_posts_table', 5),
(10, '2022_06_26_135533_create_photos_table', 6),
(11, '2022_06_27_021908_create_videos_table', 7),
(12, '2022_06_27_050408_create_faqs_table', 8),
(13, '2022_06_27_104626_create_pages_table', 9),
(14, '2022_06_29_115954_create_subscribers_table', 10),
(15, '2022_07_01_104958_create_amenities_table', 11),
(16, '2022_07_02_005301_create_rooms_table', 12),
(17, '2022_07_02_010035_create_room_photos_table', 13),
(18, '2022_07_04_065843_create_customers_table', 14),
(19, '2022_07_13_034131_create_orders_table', 15),
(20, '2022_07_13_034641_create_order_details_table', 16),
(21, '2022_08_07_135954_create_booked_rooms_table', 17),
(22, '2022_08_08_120610_create_settings_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_no` text NOT NULL,
  `transaction_id` text NOT NULL,
  `payment_method` text NOT NULL,
  `snap_token` text DEFAULT NULL,
  `bukti_pembayaran` text DEFAULT NULL,
  `card_last_digit` text DEFAULT NULL,
  `paid_amount` text NOT NULL,
  `booking_date` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `transaction_id`, `payment_method`, `snap_token`, `bukti_pembayaran`, `card_last_digit`, `paid_amount`, `booking_date`, `status`, `created_at`, `updated_at`) VALUES
(44, 1, '1665926637', '1665926637', 'Bank Transfer', '', 'bukti_pembayaran/UDQBy5Fns0gBskaaCRXqZlPd8Qcs5YoL6cw0jgQC.jpg', '', '1100000', '16/10/2022', 'Completed', '2022-10-16 06:23:57', '2022-10-16 20:07:53'),
(47, 1, '1670157941', '1670157941', 'Bank Transfer', '', 'bukti_pembayaran/Qf3ZNGA01Kvwb5OLAXQoHaOp7F62A1q8chSdboWJ.jpg', '', '500000', '04/12/2022', 'Completed', '2022-12-04 05:45:41', '2022-12-04 10:22:44'),
(48, 1, '1670174420', '1670174420', 'Bank Transfer', '', 'bukti_pembayaran/b5gEzIAbcxb1tcV5leGOywslNFvjHnK1U4urqB8o.jpg', '', '1500000', '04/12/2022', 'Completed', '2022-12-04 10:20:20', '2022-12-04 10:22:53'),
(50, 1, '1670296716', '1670296716', 'Bank Transfer', '', 'bukti_pembayaran/zbc2AJ6IxJoAx8herPCzMwn4KBjD5KUHrwdeEH6K.jpg', '', '2000000', '06/12/2022', 'Completed', '2022-12-05 20:18:36', '2022-12-05 20:19:37'),
(51, 1, '1670336110', '1670336110', 'Bank Transfer', '', NULL, '', '2000000', '06/12/2022', 'Cancel', '2022-12-06 07:15:10', '2022-12-06 18:10:35'),
(52, 1, '1670376258', '1670376258', 'Bank Transfer', '', 'bukti_pembayaran/YjdoarwtHWslwXVxso3tm37AhMCKQF5ARizCKwRO.jpg', '', '3000000', '07/12/2022', 'Completed', '2022-12-06 18:24:18', '2022-12-06 18:42:21'),
(53, 1, '1670377248', '1670377248', 'Bank Transfer', '', NULL, '', '2000000', '07/12/2022', 'Cancel', '2022-12-06 18:40:48', '2022-12-06 18:42:26'),
(54, 1, '1670379909', '1670379909', 'Bank Transfer', '', NULL, '', '2000000', '07/12/2022', 'Cancel', '2022-12-06 19:25:09', '2022-12-06 19:26:16'),
(55, 1, '1670379947', '1670379947', 'Bank Transfer', '', 'bukti_pembayaran/SW0Qvub70RiAPfuVlKhVghOQHNBIRvNch62rfaH9.jpg', '', '6000000', '07/12/2022', 'Completed', '2022-12-06 19:25:47', '2022-12-06 19:26:23'),
(56, 1, '1670380218', '1670380218', 'Bank Transfer', '', 'bukti_pembayaran/aveTQH5E9L3DkPo5aEB1oCqLSI5eQ6t6Gjy4Px6v.png', '', '2000000', '07/12/2022', 'Completed', '2022-12-06 19:30:18', '2022-12-06 19:32:47'),
(57, 1, '1670383596', '1670383596', 'Bank Transfer', '', 'bukti_pembayaran/LS0ufCtPoCcixXUBfA4jBYqhMKxGjesua0uTL0FX.png', '', '5000000', '07/12/2022', 'Completed', '2022-12-06 20:26:36', '2022-12-06 20:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `order_no` text NOT NULL,
  `checkin_date` text NOT NULL,
  `checkout_date` text NOT NULL,
  `adult` text NOT NULL,
  `children` text NOT NULL,
  `subtotal` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `order_no`, `checkin_date`, `checkout_date`, `adult`, `children`, `subtotal`, `created_at`, `updated_at`) VALUES
(23, 44, 6, '1665926637', '16/10/2022', '17/10/2022', '1', '1', '11', '2022-10-16 06:23:57', '2022-10-16 06:23:57'),
(27, 47, 1, '1670157941', '05/12/2022', '06/12/2022', '2', '1', '500000', '2022-12-04 05:45:41', '2022-12-04 05:45:41'),
(28, 48, 1, '1670174420', '05/12/2022', '06/12/2022', '1', '0', '1500000', '2022-12-04 10:20:20', '2022-12-04 10:20:20'),
(30, 50, 6, '1670296716', '06/12/2022', '07/12/2022', '4', '0', '2000000', '2022-12-05 20:18:37', '2022-12-05 20:18:37'),
(31, 51, 1, '1670336110', '06/12/2022', '07/12/2022', '3', '0', '2000000', '2022-12-06 07:15:10', '2022-12-06 07:15:10'),
(32, 52, 5, '1670376258', '07/12/2022', '08/12/2022', '2', '1', '3000000', '2022-12-06 18:24:18', '2022-12-06 18:24:18'),
(33, 53, 1, '1670377248', '07/12/2022', '08/12/2022', '3', '1', '2000000', '2022-12-06 18:40:48', '2022-12-06 18:40:48'),
(34, 54, 1, '1670379909', '07/12/2022', '08/12/2022', '5', '1', '2000000', '2022-12-06 19:25:09', '2022-12-06 19:25:09'),
(35, 55, 6, '1670379947', '07/12/2022', '10/12/2022', '5', '0', '6000000', '2022-12-06 19:25:48', '2022-12-06 19:25:48'),
(36, 56, 1, '1670380218', '07/12/2022', '08/12/2022', '2', '0', '2000000', '2022-12-06 19:30:19', '2022-12-06 19:30:19'),
(37, 57, 4, '1670383596', '07/12/2022', '09/12/2022', '4', '0', '5000000', '2022-12-06 20:26:36', '2022-12-06 20:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_heading` text NOT NULL,
  `about_content` text NOT NULL,
  `about_status` int(11) NOT NULL,
  `terms_heading` text NOT NULL,
  `terms_content` text NOT NULL,
  `terms_status` int(11) NOT NULL,
  `privacy_heading` text NOT NULL,
  `privacy_content` text NOT NULL,
  `privacy_status` int(11) NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_map` text DEFAULT NULL,
  `contact_status` int(11) NOT NULL,
  `photo_gallery_heading` text NOT NULL,
  `photo_gallery_status` int(11) NOT NULL,
  `video_gallery_heading` text NOT NULL,
  `video_gallery_status` int(11) NOT NULL,
  `faq_heading` text NOT NULL,
  `faq_status` int(11) NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_status` int(11) NOT NULL,
  `room_heading` text NOT NULL,
  `cart_heading` text NOT NULL,
  `cart_status` int(11) NOT NULL,
  `checkout_heading` text NOT NULL,
  `checkout_status` int(11) NOT NULL,
  `payment_heading` text NOT NULL,
  `signup_heading` text NOT NULL,
  `signup_status` int(11) NOT NULL,
  `signin_heading` text NOT NULL,
  `signin_status` int(11) NOT NULL,
  `forget_password_heading` text NOT NULL,
  `reset_password_heading` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_heading`, `about_content`, `about_status`, `terms_heading`, `terms_content`, `terms_status`, `privacy_heading`, `privacy_content`, `privacy_status`, `contact_heading`, `contact_map`, `contact_status`, `photo_gallery_heading`, `photo_gallery_status`, `video_gallery_heading`, `video_gallery_status`, `faq_heading`, `faq_status`, `blog_heading`, `blog_status`, `room_heading`, `cart_heading`, `cart_status`, `checkout_heading`, `checkout_status`, `payment_heading`, `signup_heading`, `signup_status`, `signin_heading`, `signin_status`, `forget_password_heading`, `reset_password_heading`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p><font face=\"Verdana\"><span style=\"font-size: 12px;\">Salam kenal dari kami, Gallen Travel Website.</span></font></p><p><span style=\"font-family: Verdana; font-size: 12px;\">Sarah Larasati_</span><span style=\"font-family: Verdana; font-size: 12px; text-align: var(--bs-body-text-align);\">672020174<br></span><span style=\"font-family: Verdana; font-size: 12px;\">Front End Developer</span></p><p><span style=\"font-family: Verdana; font-size: 12px;\">Jonathan Mario Dwi Priyadi_</span><span style=\"font-family: Verdana; font-size: 12px;\">672020162<br>Back End Developer</span></p><p><span style=\"font-family: Verdana; font-size: 12px;\">Yuki Kurniawan_672020262<br>Back End Developer</span></p><p><span style=\"font-family: Verdana; font-size: 12px;\">Petra Valentina Pawestri Pribadi_672020280<br>Front End Developer</span></p><p><font face=\"Verdana\"><span style=\"font-size: 12px;\">Semoga kalian menikmati websitenya, terima kasih.</span></font></p>', 1, 'Terms and Conditions', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div>', 1, 'Privacy Policy', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</div>', 1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26361688.302253906!2d-113.76378198869888!3d36.23999124494682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1656378870953!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 'Photo Gallery', 1, 'Video Gallery', 1, 'FAQ', 1, 'Blog', 1, 'Travel', 'Cart', 1, 'Checkout', 1, 'Payment', 'Sign Up', 0, 'Sign In', 1, 'Forget Password', 'Reset Password', NULL, '2022-12-06 19:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(1, '1670289172.jpg', 'Candi Prambanan', '2022-06-26 08:17:41', '2022-12-05 18:12:52'),
(2, '1670289200.jpg', 'Candi Borobudur', '2022-06-26 08:18:11', '2022-12-05 18:13:20'),
(3, '1670289224.jpg', 'Bali', '2022-06-26 08:18:43', '2022-12-05 18:13:44'),
(4, '1670289249.jpg', 'Pulau Gili Kedis', '2022-06-26 08:18:53', '2022-12-05 18:14:09'),
(6, '1670289288.jpg', 'Danau Toba', '2022-12-05 18:14:48', '2022-12-05 18:14:48'),
(7, '1670289327.jpg', 'Pulau Gusung', '2022-12-05 18:15:27', '2022-12-05 18:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `heading` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `total_view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `photo`, `heading`, `short_content`, `content`, `total_view`, `created_at`, `updated_at`) VALUES
(1, '1670203480.jpg', 'Bali', 'Bali adalah sebuah wilayah provinsi yang terletak di Indonesia. Ibu kotanya adalah Denpasar. Provinsi Bali terletak di bagian barat Kepulauan Nusa Tenggara. Di awal kemerdekaan Indonesia, pulau ini termasuk dalam Provinsi Sunda Kecil yang beribu kota di Singaraja.', '<p style=\"margin: 6pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Pulau Bali adalah bagian dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kepulauan_Sunda_Kecil\" title=\"Kepulauan Sunda Kecil\"><span style=\"color: black; text-decoration-line: none;\">Kepulauan Sunda Kecil</span></a>&nbsp;sepanjang\r\n153&nbsp;km dan selebar 112&nbsp;km sekitar 3,2&nbsp;km dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pulau_Jawa\" title=\"Pulau Jawa\"><span style=\"color: black; text-decoration-line: none;\">Pulau Jawa</span></a>. Secara geografis, Bali terletak di 8°25′23″\r\nLintang Selatan dan 115°14′55″ Bujur Timur yang membuatnya beriklim tropis\r\nseperti bagian Indonesia yang lain.</span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p><p style=\"margin: 6pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><a href=\"https://id.wikipedia.org/wiki/Gunung_Agung\" title=\"Gunung Agung\"><span style=\"color: black; text-decoration-line: none;\">Gunung Agung</span></a>&nbsp;adalah titik tertinggi di Bali setinggi\r\n3.148 m.&nbsp;<a href=\"https://id.wikipedia.org/wiki/Gunung_berapi\" title=\"Gunung berapi\"><span style=\"color: black; text-decoration-line: none;\">Gunung berapi</span></a>&nbsp;ini\r\nterakhir meletus pada&nbsp;<a href=\"https://id.wikipedia.org/wiki/Maret\" title=\"Maret\"><span style=\"color: black; text-decoration-line: none;\">Maret</span></a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/1963\" title=\"1963\"><span style=\"color: black; text-decoration-line: none;\">1963</span></a>.&nbsp;<a href=\"https://id.wikipedia.org/wiki/Gunung_Batur\" title=\"Gunung Batur\"><span style=\"color: black; text-decoration-line: none;\">Gunung Batur</span></a>&nbsp;juga salah satu gunung yang ada di Bali.\r\nSekitar 30.000 tahun yang lalu, Gunung Batur meletus dan menghasilkan bencana\r\nyang dahsyat di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bumi\" title=\"Bumi\"><span style=\"color: black; text-decoration-line: none;\">bumi</span></a>. Berbeda dengan di bagian utara, bagian selatan Bali\r\nadalah dataran rendah yang dialiri sungai-sungai.</span><span style=\"font-size:\r\n10.5pt;font-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p><p style=\"margin: 6pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Berdasarkan relief dan topografi, di\r\ntengah-tengah Pulau Bali terbentang pegunungan yang memanjang dari barat ke\r\ntimur dan di antara pegunungan tersebut terdapat gugusan gunung berapi yaitu\r\nGunung Batur dan Gunung Agung serta gunung yang tidak berapi, yaitu Gunung\r\nMerbuk, Gunung Patas dan Gunung Seraya. Adanya pegunungan tersebut menyebabkan\r\nDaerah Bali secara Geografis terbagi menjadi 2 (dua) bagian yang tidak sama\r\nyaitu Bali Utara dengan dataran rendah yang sempit dan kurang landai dan Bali\r\nSelatan dengan dataran rendah yang luas dan landai. Kemiringan lahan Pulau Bali\r\nterdiri dari lahan datar (0-2%) seluas 122.652 ha, lahan bergelombang (2-15%)\r\nseluas 118.339 ha, lahan curam (15-40%) seluas 190.486 ha dan lahan sangat\r\ncuram (&gt;40%) seluas 132.189 ha. Provinsi Bali memiliki 4 (empat) buah danau\r\nyang berlokasi di daerah pegunungan, yaitu&nbsp;<a href=\"https://id.wikipedia.org/wiki/Danau_Beratan\" title=\"Danau Beratan\"><span style=\"color: black; text-decoration-line: none;\">Danau Beratan</span></a>&nbsp;atau Bedugul,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Danau_Buyan\" title=\"Danau Buyan\"><span style=\"color: black; text-decoration-line: none;\">Buyan</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Danau_Tamblingan\" title=\"Danau Tamblingan\"><span style=\"color: black; text-decoration-line: none;\">Tamblingan</span></a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Danau_Batur\" title=\"Danau Batur\"><span style=\"color: black; text-decoration-line: none;\">Batur</span></a>. Alam Bali yang indah menjadikan pulau Bali terkenal\r\nsebagai daerah wisata.</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p><p style=\"margin: 6pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><a href=\"https://id.wikipedia.org/wiki/Ibu_kota\" title=\"Ibu kota\"><span style=\"color: black; text-decoration-line: none;\">Ibu kota</span></a>&nbsp;Bali adalah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Denpasar\" title=\"Denpasar\"><span style=\"color: black; text-decoration-line: none;\">Denpasar</span></a>. Tempat-tempat penting lainnya adalah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ubud\" title=\"Ubud\"><span style=\"color: black; text-decoration-line: none;\">Ubud</span></a>&nbsp;sebagai\r\npusat&nbsp;<a href=\"https://id.wikipedia.org/wiki/Seni\" title=\"Seni\"><span style=\"color: black; text-decoration-line: none;\">kesenian</span></a>&nbsp;dan peristirahatan, terletak di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kabupaten_Gianyar\" title=\"Kabupaten Gianyar\"><span style=\"color: black; text-decoration-line: none;\">Kabupaten Gianyar</span></a>.&nbsp;<a href=\"https://id.wikipedia.org/wiki/Nusa_Lembongan\" title=\"Nusa Lembongan\"><span style=\"color: black; text-decoration-line: none;\">Nusa Lembongan</span></a>&nbsp;adalah sebagai salah satu tempat menyelam\r\n(diving), terletak di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kabupaten_Klungkung\" title=\"Kabupaten Klungkung\"><span style=\"color: black; text-decoration-line: none;\">Kabupaten Klungkung</span></a>.\r\nSedangkan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kuta\" title=\"Kuta\"><span style=\"color: black; text-decoration-line: none;\">Kuta</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Seminyak\" title=\"Seminyak\"><span style=\"color: black; text-decoration-line: none;\">Seminyak</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Jimbaran\" title=\"Jimbaran\"><span style=\"color: black; text-decoration-line: none;\">Jimbaran</span></a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Nusa_Dua\" title=\"Nusa Dua\"><span style=\"color: black; text-decoration-line: none;\">Nusa Dua</span></a>&nbsp;adalah beberapa tempat yang menjadi tujuan\r\nutama&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pariwisata\" title=\"Pariwisata\"><span style=\"color: black; text-decoration-line: none;\">pariwisata</span></a>, baik wisata pantai maupun tempat peristirahatan,\r\nspa, dan lain-lain, terletak di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kabupaten_Badung\" title=\"Kabupaten Badung\"><span style=\"color: black; text-decoration-line: none;\">Kabupaten Badung</span></a>.</span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 6pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Luas wilayah Provinsi Bali adalah\r\n5.636,66&nbsp;km</span><sup><span style=\"font-size: 8.5pt; font-family: Arial, sans-serif;\">2</span></sup><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;atau\r\n0,29% luas wilayah&nbsp;<a href=\"https://id.wikipedia.org/wiki/NKRI\" title=\"NKRI\"><span style=\"color: black; text-decoration-line: none;\">Negara Kesatuan Republik Indonesia</span></a>. Secara\r\nadministratif Provinsi Bali terbagi atas 8 kabupaten, 1 kotamadya, 55\r\nkecamatan, dan 701 desa/kelurahan.</span><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Arial&quot;,sans-serif\"><o:p></o:p></span></p>', 2, '2022-06-26 01:27:07', '2022-12-05 19:43:55'),
(2, '1670203293.jpg', 'Labuan Bajo', 'Labuan Bajo merupakan sebuah surga tersembunyi yang ada di Indonesia bagian timur. Desa ini terletak di Kecamatan Komodo, Kabupaten Manggarai Barat, Provinsi Nusa Tenggara Timur yang berbatasan langsung dengan Nusa Tenggara Barat dan dipisahkan oleh Selat Sape.', '<p>Labuan Bajo adalah salah satu dari lima Destinasi Super Prioritas yang sedang dikembangkan di Indonesia.&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">Destinasi ini merupakan gerbang menuju Taman Nasional Komodo yang menyimpan keindahan alam yang menakjubkan dan hewan purba yang mendunia. Mulai dari hewan endemik komodo di Pulau Rinca dan Pulau Komodo, deretan pulau eksotis, keragaman hayati bawah laut, hingga pantai aduhai, semua bisa Sobat Pesona temukan dengan memulai perjalanan di Labuan Bajo.</span><br></p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Menikmati pemandangan langit senja juga bisa menjadi cara lain menikmati Labuan Bajo. Spot strategis untuk menikmati keindahan senja ini berada tak jauh dari Bandar Udara Internasional Komodo. Sobat Pesona dapat memilih destinasi Bukit Cinta, Puncak Amelia, dan Puncak Silvia, untuk mengabadikan langit senja yang menentramkan jiwa. Ada juga Gua Rangko yang memiliki pesona bak oasis dengan kolam air asinnya yang begitu menyejukkan.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Kalau Sobat Pesona ingin berpetualang di Labuan Bajo, trekking singkat ke Air Terjun Cunca Wulang bisa jadi pilihan. Jangan lewatkan juga pengalaman seru menjajal live-on-board, yaitu mencoba tinggal di kapal pinisi selama beberapa hari sambil berlayar mengunjungi pulau-pulau yang indah, dan bisa juga menyelam untuk melihat keindahan bawah laut Labuan Bajo yang istimewa.</p>', 24, '2022-06-26 05:32:58', '2022-12-05 19:57:39'),
(4, '1670203163.jpg', 'Candi Borobudur', 'Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.', '<p style=\"margin-top:6.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:\r\n0cm;line-height:21.0pt\"><span style=\"font-size: 10.5pt;\">Candi\r\nBorobudur&nbsp;adalah sebuah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Candi\" title=\"Candi\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">candi</span></a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/Buddha\" title=\"Buddha\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Buddha</span></a>&nbsp;yang terletak di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Borobudur,_Magelang\" title=\"Borobudur, Magelang\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Borobudur</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kabupaten_Magelang\" title=\"Kabupaten Magelang\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Magelang</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Jawa_Tengah\" title=\"Jawa Tengah\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Jawa Tengah</span></a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Indonesia</span></a>.\r\nCandi ini terletak kurang lebih 100 km di sebelah barat daya&nbsp;<a href=\"https://id.wikipedia.org/wiki/Semarang\" title=\"Semarang\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Semarang</span></a>, 86&nbsp;km di sebelah barat&nbsp;<a href=\"https://id.wikipedia.org/wiki/Surakarta\" title=\"Surakarta\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Surakarta</span></a>,\r\ndan 40&nbsp;km di sebelah barat laut&nbsp;<a href=\"https://id.wikipedia.org/wiki/Yogyakarta\" title=\"Yogyakarta\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Yogyakarta</span></a>.\r\nCandi dengan banyak&nbsp;<a href=\"https://id.wikipedia.org/wiki/Stupa\" title=\"Stupa\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">stupa</span></a>&nbsp;ini\r\ndidirikan oleh para penganut&nbsp;<a href=\"https://id.wikipedia.org/wiki/Agama\" title=\"Agama\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">agama</span></a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/Buddha_Mahayana\" title=\"Buddha Mahayana\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Buddha\r\nMahayana</span></a>&nbsp;sekitar tahun 800-an Masehi pada masa pemerintahan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Wangsa\" title=\"Wangsa\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">wangsa</span></a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/Syailendra\" title=\"Syailendra\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Syailendra</span></a>.\r\nBorobudur adalah candi atau kuil Buddha terbesar di dunia,&nbsp;sekaligus salah\r\nsatu monumen Buddha terbesar di dunia. <o:p></o:p></span></p><p style=\"margin: 6pt 0cm; line-height: 21pt;\"><span style=\"font-size: 10.5pt;\">Monumen\r\nini terdiri atas enam teras berbentuk bujur sangkar yang di atasnya terdapat tiga\r\npelataran melingkar, pada dindingnya dihiasi dengan 2.672 panel&nbsp;<a href=\"https://id.wikipedia.org/wiki/Relief\" title=\"Relief\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">relief</span></a>&nbsp;dan aslinya terdapat 504&nbsp;<a href=\"https://id.wikipedia.org/wiki/Buddharupa\" title=\"Buddharupa\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">arca Buddha</span></a>.&nbsp;</span>Borobudur\r\nmemiliki koleksi relief Buddha terlengkap dan terbanyak di dunia.&nbsp;Stupa\r\nutama terbesar teletak di tengah sekaligus memahkotai bangunan ini, dikelilingi\r\noleh tiga barisan melingkar 72 stupa berlubang yang di dalamnya terdapat arca\r\nBuddha tengah duduk bersila dalam posisi teratai sempurna dengan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Mudra\" title=\"Mudra\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">mudra</span></a>&nbsp;(sikap tangan)&nbsp;Dharmachakra\r\nmudra&nbsp;(memutar roda dharma).<o:p></o:p></p><p style=\"margin: 6pt 0cm; line-height: 21pt;\"><span style=\"font-size: 10.5pt;\">Monumen\r\nini merupakan model alam semesta dan dibangun sebagai tempat suci untuk\r\nmemuliakan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Siddhartha_Gautama\" title=\"Siddhartha Gautama\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Buddha</span></a>&nbsp;sekaligus\r\nberfungsi sebagai tempat&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ziarah\" title=\"Ziarah\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">ziarah</span></a>&nbsp;untuk\r\nmenuntun umat manusia beralih dari alam nafsu duniawi menuju pencerahan dan\r\nkebijaksanaan sesuai ajaran Buddha.&nbsp;</span>Para peziarah masuk melalui\r\nsisi timur dan memulai ritual di dasar candi dengan berjalan melingkari\r\nbangunan suci ini searah jarum jam, sambil terus naik ke undakan berikutnya\r\nmelalui tiga tingkatan ranah dalam kosmologi Buddha. Ketiga tingkatan itu\r\nadalah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kamadhatu\" title=\"Kamadhatu\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Kāmadhātu</span></a>&nbsp;(ranah\r\nhawa nafsu),&nbsp;<a href=\"https://id.wikipedia.org/wiki/Rupadhatu\" title=\"Rupadhatu\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Rupadhatu</span></a>&nbsp;(ranah\r\nberwujud), dan&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=Arupadhatu&amp;action=edit&amp;redlink=1\" title=\"Arupadhatu (halaman belum tersedia)\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Arupadhatu</span></a>&nbsp;(ranah tak berwujud). Dalam\r\nperjalanannya para peziarah berjalan melalui serangkaian lorong dan tangga\r\ndengan menyaksikan tak kurang dari 1.460 panel relief indah yang terukir pada\r\ndinding dan pagar langkan.<o:p></o:p></p><p style=\"margin: 6pt 0cm; line-height: 21pt;\"><span style=\"font-size: 10.5pt;\">Menurut\r\nbukti-bukti sejarah, Borobudur ditinggalkan pada abad ke-10 seiring dipindahnya\r\npusat Kerajaan Mataram Kuno ke Jawa Timur oleh Pu Sindok.&nbsp;</span>Dunia\r\nmulai menyadari keberadaan bangunan ini sejak ditemukan 1814 oleh&nbsp;<a href=\"https://id.wikipedia.org/wiki/Sir_Thomas_Stamford_Raffles\" title=\"Sir Thomas Stamford Raffles\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Sir Thomas\r\nStamford Raffles</span></a>, yang saat itu menjabat sebagai Gubernur Jenderal\r\nInggris atas Jawa. Sejak saat itu Borobudur telah mengalami serangkaian upaya\r\npenyelamatan dan pemugaran (perbaikan kembali). Proyek pemugaran terbesar\r\ndigelar pada kurun waktu 1975 hingga 1982 atas upaya&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pemerintah_Republik_Indonesia\" title=\"Pemerintah Republik Indonesia\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Pemerintah\r\nRepublik Indonesia</span></a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/UNESCO\" title=\"UNESCO\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">UNESCO</span></a>, kemudian situs bersejarah ini masuk\r\ndalam daftar&nbsp;<a href=\"https://id.wikipedia.org/wiki/Situs_Warisan_Dunia\" title=\"Situs Warisan Dunia\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Situs Warisan\r\nDunia</span></a>. <o:p></o:p></p><p style=\"margin: 6pt 0cm; line-height: 21pt;\"><span style=\"font-size: 10.5pt;\">Borobudur\r\nkini masih digunakan sebagai tempat ziarah keagamaan; tiap tahun&nbsp;<a href=\"https://id.wikipedia.org/wiki/Agama_Buddha_di_Indonesia\" title=\"Agama Buddha di Indonesia\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">umat Buddha</span></a>&nbsp;yang\r\ndatang dari seluruh Indonesia dan mancanegara berkumpul di Borobudur untuk\r\nmemperingati Trisuci&nbsp;<a href=\"https://id.wikipedia.org/wiki/Waisak\" title=\"Waisak\" style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: windowtext; text-decoration-line: none;\">Waisak</span></a>.\r\nTerkait kepariwisataan, Borobudur adalah objek wisata tunggal di Indonesia yang\r\npaling banyak dikunjungi wisatawan. <o:p></o:p></span></p><p style=\"margin: 0.5em 0px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 6pt 0cm; line-height: 21pt;\"><span style=\"font-size: 10.5pt;\">Pada\r\n11 Februari 2022, pemerintah meresmikan status Candi Borobudur kembali sebagai\r\ntempat peribadatan umat Buddhis di Indonesia dan dunia.&nbsp;<o:p></o:p></span></p><div><br></div>', 7, '2022-06-26 05:46:54', '2022-12-06 20:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'GALLEN TRAVEL', '36214579', NULL, '2022-06-09 02:29:48'),
(3, 'MANDIRI', 'GALLEN TRAVEL', '321546578', '2020-03-22 08:35:31', '2022-06-09 02:29:43'),
(4, 'BCA', 'GALLEN TRAVEL', '1234567899', '2020-03-24 17:22:37', '2022-06-09 02:29:57'),
(5, 'BNI', 'GALLEN TRAVEL', '12345679', '2020-03-24 17:23:12', '2022-06-09 02:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL,
  `total_rooms` text NOT NULL,
  `amenities` text DEFAULT NULL,
  `size` text DEFAULT NULL,
  `total_beds` text DEFAULT NULL,
  `total_bathrooms` text DEFAULT NULL,
  `total_balconies` text DEFAULT NULL,
  `total_guests` text DEFAULT NULL,
  `featured_photo` text NOT NULL,
  `video_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `total_rooms`, `amenities`, `size`, `total_beds`, `total_bathrooms`, `total_balconies`, `total_guests`, `featured_photo`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'Labuan Bajo', '<span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Labuan Bajo adalah salah satu dari lima Destinasi Super Prioritas yang sedang dikembangkan di Indonesia.&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px; text-align: var(--bs-body-text-align);\">Destinasi ini merupakan gerbang menuju Taman Nasional Komodo yang menyimpan keindahan alam yang menakjubkan dan hewan purba yang mendunia. Mulai dari hewan endemik komodo di Pulau Rinca dan Pulau Komodo, deretan pulau eksotis, keragaman hayati bawah laut, hingga pantai aduhai, semua bisa Sobat Pesona temukan dengan memulai perjalanan di Labuan Bajo.</span><br>', '2000000', '5', '1,2,3,4,5', '100 sqm2', '1', '1', '1', '2', '1670162206.jpg', 'C2O9vqvMy6U', '2022-07-01 21:12:23', '2022-12-05 19:57:49'),
(4, 'Candi Borobudur', '<span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">Candi Borobudur&nbsp;adalah sebuah&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Candi\" title=\"Candi\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">candi</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Buddha\" title=\"Buddha\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Buddha</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;yang terletak di&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Borobudur,_Magelang\" title=\"Borobudur, Magelang\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Borobudur</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Kabupaten_Magelang\" title=\"Kabupaten Magelang\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Magelang</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Jawa_Tengah\" title=\"Jawa Tengah\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Jawa Tengah</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Indonesia</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">. Candi ini terletak kurang lebih 100 km di sebelah barat daya&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Semarang\" title=\"Semarang\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Semarang</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">, 86&nbsp;km di sebelah barat&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Surakarta\" title=\"Surakarta\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Surakarta</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">, dan 40&nbsp;km di sebelah barat laut&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Yogyakarta\" title=\"Yogyakarta\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Yogyakarta</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">. Candi dengan banyak&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Stupa\" title=\"Stupa\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">stupa</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;ini didirikan oleh para penganut&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Agama\" title=\"Agama\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">agama</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Buddha_Mahayana\" title=\"Buddha Mahayana\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Buddha Mahayana</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;sekitar tahun 800-an Masehi pada masa pemerintahan&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Wangsa\" title=\"Wangsa\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">wangsa</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Syailendra\" title=\"Syailendra\" style=\"color: rgb(13, 110, 253); text-decoration-line: none; font-family: Karla, sans-serif; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition-duration: 0.4s !important;\"><span style=\"color: windowtext;\">Syailendra</span></a><span style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif;\">. Borobudur adalah candi atau kuil Buddha terbesar di dunia,&nbsp;sekaligus salah satu monumen Buddha terbesar di dunia.</span><br>', '2500000', '5', '2,4,5,6,7', '150 sqm2', '1', '1', '2', '2', '1670163839.jpg', 'Lv_GojoT1v4', '2022-07-03 08:02:42', '2022-12-05 19:59:17'),
(5, 'Raja Ampat', '<span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Raja Ampat, sebuah Kabupaten dan merupakan bagian dari Provinsi Papua Barat. Suguhan alam yang ditawarkan begitu mengagumkan, hingga bisa membuat wisatawan enggan pulang.&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\">Kepulauan Raja Ampat berada di bagian paling barat Papua dan membentang di area seluas kurang lebih 4,6 juta hektar. Kabupaten Raja Ampat terdiri dari 4 pulau besar yaitu Pulau Waigeo, Batanta, Salawati dan Misool, dan 1.847 pulau-pulau kecil lainnya.</span><br>', '3000000', '5', '1,2,3,4,5', '200 sqm2', '2', '2', '2', '4', '1670163930.jpg', 'FNK4TyQ4Wug', '2022-07-03 08:06:01', '2022-12-05 20:11:34'),
(6, 'Beach Club Bali', '<span style=\"text-align: justify;\">Finns Beach Club Bali adalah tempat Hangout yang menawarkan pesona Pantai Berawa dari komplek Semara Luxury Villa Resort. Tempat ini didominasi dengan bangunan dari bambu, sehingga memberikan nuansa tradisional namun dengan konsep yang lebih modern.&nbsp;</span><br>', '2000000', '4', '3,4', '300 sqm2', '3', '2', '2', '6', '1670163993.jpg', '1O9n3Knx-IE', '2022-07-03 08:07:43', '2022-12-05 20:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `room_photos`
--

CREATE TABLE `room_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_photos`
--

INSERT INTO `room_photos` (`id`, `room_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, '1656809278.jpg', '2022-07-02 18:47:58', '2022-07-02 18:47:58'),
(2, 1, '1656809295.jpg', '2022-07-02 18:48:15', '2022-07-02 18:48:15'),
(6, 4, '1670163861.jpg', '2022-12-04 07:24:21', '2022-12-04 07:24:21'),
(7, 4, '1670163877.jpg', '2022-12-04 07:24:37', '2022-12-04 07:24:37'),
(8, 5, '1670163950.jpg', '2022-12-04 07:25:50', '2022-12-04 07:25:50'),
(9, 5, '1670163963.jpg', '2022-12-04 07:26:03', '2022-12-04 07:26:03'),
(11, 6, '1670164074.jpg', '2022-12-04 07:27:54', '2022-12-04 07:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `top_bar_phone` text DEFAULT NULL,
  `top_bar_email` text DEFAULT NULL,
  `home_feature_status` text NOT NULL,
  `home_room_total` text NOT NULL,
  `home_room_status` text NOT NULL,
  `home_testimonial_status` text NOT NULL,
  `home_latest_post_total` text NOT NULL,
  `home_latest_post_status` text NOT NULL,
  `footer_address` text DEFAULT NULL,
  `footer_phone` text DEFAULT NULL,
  `footer_email` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `theme_color_1` text NOT NULL,
  `theme_color_2` text NOT NULL,
  `analytic_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `home_feature_status`, `home_room_total`, `home_room_status`, `home_testimonial_status`, `home_latest_post_total`, `home_latest_post_status`, `footer_address`, `footer_phone`, `footer_email`, `copyright`, `facebook`, `twitter`, `linkedin`, `pinterest`, `theme_color_1`, `theme_color_2`, `analytic_id`, `created_at`, `updated_at`) VALUES
(1, 'logotravel.png', 'favicon.png', '08123456789', 'GallenTravel@gmail.com', 'Show', '4', 'Show', 'Show', '3', 'Show', 'Blotongan, Salatiga, Jawa Tengah', '08123456789', 'GallenTravel@gmail.com', 'Copyright 2022, Gallen Travel. All Rights Reserved.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', '#00215B', '#ffd3ce', 'UA-84213520-6', NULL, '2022-12-06 07:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `heading` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `button_text` text DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `photo`, `heading`, `text`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(1, '1665933473.png', 'BEST TRAVEL IN THE CITY', 'Nikmati perjalanan hidupmu.', 'Read More', '#', '2022-06-25 02:04:35', '2022-10-16 08:17:53'),
(2, '1656153485.jpg', 'QUALITY TRAVEL FOR YOU', 'Habiskan masa mudamu dengan traveling.', 'Read More', '#', '2022-06-25 02:06:09', '2022-06-25 04:38:05'),
(4, '1665933609.jpg', 'BEST DESTINATION IN INDONESIA', 'Nikmati keberagaman Indonesia', 'Read More', '#', '2022-10-16 08:20:09', '2022-10-16 08:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aa@gmail.com', '', 1, '2022-06-29 06:12:46', '2022-06-29 08:14:51'),
(2, 'bb@gmail.com', '', 1, '2022-06-29 08:16:18', '2022-06-29 08:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(1, '1656215578.jpg', 'Gallen', 'CEO, PBP Class', 'Tampilan website yang sangat menarik dan bagus, saya akan kasih nilai yang bagus.', '2022-06-25 21:52:58', '2022-12-04 18:09:52'),
(2, '1670202528.jpg', 'Siri', 'Ibu Rumah Tangga', 'Saya sangat senang menggunakan jasa travel yang ada di Indonesia Travel Guide, selain harganya yang sangat terjangkau saya merasa aman dan nyaman.', '2022-06-25 21:54:48', '2022-12-04 18:08:48'),
(4, '1670203590.jpg', 'Mario', 'Ketua Perhimpunan Travel Indonesia', 'Website yang menarik dan mudah di mengerti, saya sangat suka.', '2022-12-04 18:26:30', '2022-12-04 18:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yuki Kurniawan', 'yuki@gmail.com', '2022-10-10 06:50:33', '$2y$10$4PribkSBygvCFsEu6nyZcex2XVsZYP6qlI/l3qzqaghvhqH.UNqJi', NULL, '2022-09-09 13:22:47', '2022-09-09 13:22:47'),
(2, 'Jonathan Mario', 'mario@gmail.com', '2022-10-10 06:50:33', '$2y$10$4PribkSBygvCFsEu6nyZcex2XVsZYP6qlI/l3qzqaghvhqH.UNqJi', NULL, '2022-09-09 13:22:47', '2022-09-09 13:22:47'),
(3, 'Petra Valentina', 'petra@gmail.com', '2022-10-10 06:50:33', '$2y$10$4PribkSBygvCFsEu6nyZcex2XVsZYP6qlI/l3qzqaghvhqH.UNqJi', NULL, '2022-09-09 13:22:47', '2022-09-09 13:22:47'),
(4, 'Sarah Larasati', 'Sarah@gmail.com', '2022-10-10 06:50:33', '$2y$10$4PribkSBygvCFsEu6nyZcex2XVsZYP6qlI/l3qzqaghvhqH.UNqJi', NULL, '2022-09-09 13:22:47', '2022-09-09 13:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` text NOT NULL,
  `caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'zYGNtrgsOhQ', 'Candi Prambanan', '2022-06-26 20:53:46', '2022-12-05 19:37:02'),
(2, 'Lv_GojoT1v4', 'Candi Borobudur', '2022-06-26 20:56:19', '2022-12-05 19:43:27'),
(3, 'nLeiVZ9BDKA', 'Bali', '2022-06-26 20:56:47', '2022-12-05 19:42:36'),
(4, 'rGEkMJwVnZU', 'Raja Ampat', '2022-06-26 20:57:23', '2022-12-05 19:41:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_photos`
--
ALTER TABLE `room_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_photos`
--
ALTER TABLE `room_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
