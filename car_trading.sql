-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 10:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_trading`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `order_status` enum('0','1') NOT NULL DEFAULT '0',
  `order_no` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `buyer_id`, `product_id`, `quantity`, `price`, `order_status`, `order_no`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '100000', '1', '5f096788d3309', '2020-07-11 10:37:08', '2020-07-11 10:37:08'),
(2, 1, 5, 1, '100000', '1', '5f096788d3309', '2020-07-11 10:38:44', '2020-07-11 10:38:44'),
(3, 1, 8, 1, '6000000', '1', '5f0966922bd6e', '2020-07-11 10:39:46', '2020-07-11 10:39:46'),
(4, 1, 8, 1, '6000000', '1', '5f0966922bd6e', '2020-07-11 10:48:14', '2020-07-11 10:48:14'),
(5, 1, 8, 1, '6000000', '1', '5f0966922bd6e', '2020-07-11 10:49:50', '2020-07-11 10:49:50'),
(6, 1, 8, 1, '6000000', '1', '5f0966922bd6e', '2020-07-11 10:50:37', '2020-07-11 10:50:37'),
(7, 1, 8, 1, '6000000', '1', '5f0966922bd6e', '2020-07-11 10:57:15', '2020-07-11 10:57:15'),
(8, 1, 5, 1, '100000', '1', '5f096788d3309', '2020-07-11 12:47:08', '2020-07-11 12:47:08'),
(9, 1, 5, 1, '100000', '1', '5f0968c7c1941', '2020-07-11 12:52:12', '2020-07-11 12:52:12'),
(10, 1, 8, 1, '6000000', '1', '5f0968c7c1941', '2020-07-11 12:52:17', '2020-07-11 12:52:17'),
(11, 1, 8, 1, '6000000', '1', '5f0968c7c1941', '2020-07-11 12:52:22', '2020-07-11 12:52:22'),
(12, 1, 8, 1, '6000000', '1', '5f09709fc1937', '2020-07-11 13:08:59', '2020-07-11 13:08:59'),
(13, 1, 9, 1, '300000', '1', '5f09709fc1937', '2020-07-11 13:23:39', '2020-07-11 13:23:39'),
(14, 5, 9, 1, '300000', '1', '5f09709fc1937', '2020-07-11 13:25:49', '2020-07-11 13:25:49'),
(15, 5, 8, 1, '6000000', '1', '5f09709fc1937', '2020-07-11 13:25:56', '2020-07-11 13:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `order_address` varchar(255) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_no`, `order_address`, `payment_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '5f0966922bd6e', 'hhhh', 30200000, '1', '2020-07-11 12:43:22', '2020-07-11 12:43:22'),
(2, '5f096788d3309', 'hhhhhhhhhhhhhhhssssssssssssss', 100000, '1', '2020-07-11 12:47:28', '2020-07-11 12:47:28'),
(3, '5f0968a0ce294', 'hhhhhhhhhhhhhhhssssssssssssss', 100000, '1', '2020-07-11 12:52:08', '2020-07-11 12:52:08'),
(4, '5f0968c7c1941', 'kkkkkkkkkkkk', 12100000, '1', '2020-07-11 12:52:47', '2020-07-11 12:52:47'),
(5, '5f09709fc1937', 'fgfgfgfgf', 6300000, '1', '2020-07-11 13:26:15', '2020-07-11 13:26:15'),
(6, '5f097148248df', 'fgfgfgfgf', 6300000, '1', '2020-07-11 13:29:04', '2020-07-11 13:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_picture`
--

CREATE TABLE `product_picture` (
  `id` int(11) NOT NULL,
  `product_pic` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_picture`
--

INSERT INTO `product_picture` (`id`, `product_pic`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'upload/product/profile15943969261207870625f0890fe60086.jpg', 3, '2020-07-10 18:02:06', '2020-07-10 21:32:06'),
(2, 'upload/product/profile159439692615789076005f0890fe60e13.jpg', 3, '2020-07-10 18:02:06', '2020-07-10 21:32:06'),
(3, 'upload/product/profile159439692615225734965f0890fe61aee.jpg', 3, '2020-07-10 18:02:06', '2020-07-10 21:32:06'),
(4, 'upload/product/product15943971557578601405f0891e3b5ae6.jpg', 4, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(5, 'upload/product/product159439715518531629655f0891e3b6898.jpg', 4, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(6, 'upload/product/product15943971556789444295f0891e3b75a5.jpg', 4, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(7, 'upload/product/product15943971552744667425f0891e3b8061.jpg', 4, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(8, 'upload/product/product15943971559235246935f0891e3b8d5d.jpg', 4, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(9, 'upload/product/product159439728111438102475f0892618060a.jpg', 5, '2020-07-10 18:08:01', '2020-07-10 21:38:01'),
(10, 'upload/product/product15943975247868278775f089354b5b2a.jpg', 6, '2020-07-10 18:12:04', '2020-07-10 21:42:04'),
(11, 'upload/product/product1594397524423330165f089354b6fbd.jpg', 6, '2020-07-10 18:12:04', '2020-07-10 21:42:04'),
(12, 'upload/product/product159439752416974185335f089354b809f.jpg', 6, '2020-07-10 18:12:04', '2020-07-10 21:42:04'),
(13, 'upload/product/product159439752415815351255f089354b8fdf.jpg', 6, '2020-07-10 18:12:04', '2020-07-10 21:42:04'),
(14, 'upload/product/product159439912320668498385f0899939c728.jpg', 7, '2020-07-10 18:38:43', '2020-07-10 22:08:43'),
(15, 'upload/product/product159439912311014187335f0899939df5a.jpg', 7, '2020-07-10 18:38:43', '2020-07-10 22:08:43'),
(16, 'upload/product/product15943991231208151085f089993a0d93.jpg', 7, '2020-07-10 18:38:43', '2020-07-10 22:08:43'),
(17, 'upload/product/product159439912316065545205f089993a3e36.jpg', 7, '2020-07-10 18:38:43', '2020-07-10 22:08:43'),
(18, 'upload/product/product15944067851694159945f08b781ebce5.png', 8, '2020-07-10 20:46:25', '2020-07-11 00:16:25'),
(19, 'upload/product/product159445352012180276345f096e1084a29.png', 9, '2020-07-11 09:45:20', '2020-07-11 13:15:20'),
(20, 'upload/product/product159445352020401832205f096e10857a7.png', 9, '2020-07-11 09:45:20', '2020-07-11 13:15:20'),
(21, 'upload/product/product15944535201395930935f096e10862d4.png', 9, '2020-07-11 09:45:20', '2020-07-11 13:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `product_name`, `product_description`, `product_price`, `seller_id`, `buyer_id`, `available`, `created_at`, `updated_at`) VALUES
(1, 'hhhh', '', '230000', 2, 0, 1, '2020-07-10 17:57:40', '2020-07-10 21:27:40'),
(2, 'jkjkj', '', '300000', 2, 0, 1, '2020-07-10 17:59:18', '2020-07-10 21:29:18'),
(3, 'hhhh', '', '50000', 2, 0, 1, '2020-07-10 18:02:06', '2020-07-10 21:32:06'),
(4, 'suzuki', '', '200000', 2, 0, 1, '2020-07-10 18:05:55', '2020-07-10 21:35:55'),
(5, 'tatat nano', '', '100000', 2, 0, 1, '2020-07-10 18:08:01', '2020-07-10 21:38:01'),
(6, 'tatat nano', '', '230000', 2, 0, 1, '2020-07-10 18:12:04', '2020-07-10 21:42:04'),
(7, 'tatat nano', NULL, '230000', 2, 0, 1, '2020-07-10 18:38:43', '2020-07-10 22:08:43'),
(8, 'descire', 'new desire', '6000000', 2, 0, 1, '2020-07-10 20:46:25', '2020-07-11 00:16:25'),
(9, 'tiago', 'latest brand', '300000', 4, 0, 1, '2020-07-11 09:45:20', '2020-07-11 13:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `seller_table`
--

CREATE TABLE `seller_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `email`, `password`, `phone_no`, `profile_pic`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Raja', 'raja.d@gmail.com', '123456', '9051444669', 'upload/profile/profile1594388314925993065f086f5ad585e.jpg', 2, '2020-07-10 15:38:34', '2020-07-10 19:08:34'),
(2, 'rahul', 'rahul@gmail.com', '123456', '8765456789', 'upload/profile/profile159438854420655842715f0870401d3fa.jpg', 3, '2020-07-10 15:42:24', '2020-07-10 19:12:24'),
(3, 'Parikshit', 'parikshit.d@yahoo.com', '123456', '8777473022', 'upload/profile/profile159445336516778968325f096d756856e.jpg', 3, '2020-07-11 09:42:45', '2020-07-11 13:12:45'),
(4, 'sayan', 'sayan@gmail.com', '1234', '123456789', 'upload/profile/profile15944534603070134495f096dd452282.jpg', 3, '2020-07-11 09:44:20', '2020-07-11 13:14:20'),
(5, 'pritam', 'pritam@gmail.com', '123456', '9051444669', 'upload/profile/profile15944540846195585385f0970443c34c.jpg', 2, '2020-07-11 09:54:44', '2020-07-11 13:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `user_role`) VALUES
(1, 'admin'),
(2, 'buyer'),
(3, 'seller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_picture`
--
ALTER TABLE `product_picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_picture`
--
ALTER TABLE `product_picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
