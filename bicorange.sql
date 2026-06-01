-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 08:54 AM
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
-- Database: `bicorange`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(11, 13, 'Dear Devil', 'pranto8146@gmail.com', '01715613513', 'joy bangla, joy bongoboltu'),
(12, 11, 'Pranto', 'pranto123@gmail.com', '01874108321', 'hi \r\nim satisfied with the service\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(18, 11, 'Raphi', '01847415879', 'admin@cafenoor.com', 'bkash', 'flat no. 23, 232, asfasfas, Tegagafasd - 232323', ', Hello Cat Brown (2) , BE WELL BEE (4) ', 1620, '28-Sep-2025', 'completed'),
(19, 13, 'Dear Devil', '01715613513', 'pranto8146@gmail.com', 'cash on delivery', 'flat no. 123, New market, dhaka, Bangladesh - 1000', ', Hello Cat Brown (5) ', 3250, '29-Sep-2025', 'completed'),
(20, 11, 'Pranto', '01874108321', 'pranto123@gmail.com', 'Nagad', 'flat no. 14, 78, Dhgaka, Tejgaon IA - 1208', ', Mirror Case 2.0 (1) , Love Case (Paste) (1) , Venom Case (1) , Love Case (Brown) (1) , Leather SpiderMan (3) , SpiderMan (white) (4) ', 5089, '29-Sep-2025', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(23, 'Hello Cat Brown', 650, 'hellocat.jpg'),
(24, 'Mirror Case 2.0', 599, 'IMG_7258.PNG'),
(25, 'SpiderMan', 349, 'IMG_7250.PNG'),
(26, 'Tom & Jerry', 599, 'IMG_7254.PNG'),
(27, 'Miles SpiderMan', 449, 'IMG_7257.PNG'),
(28, 'Love Case (Paste)', 349, 'IMG_7252.PNG'),
(30, 'Cat', 349, 'IMG_5016.jpg'),
(32, 'Teddy Case  (Maroon)', 449, 'IMG_4958.jpg'),
(35, 'Xmas', 449, 'IMG-20250314-WA0027.jpg'),
(36, 'Love Case (Brown)', 599, 'IMG-20250314-WA0014.jpg'),
(38, 'Teddy Case  (White)', 349, 'IMG-20250314-WA0019.jpg'),
(39, 'Tom & Jerry (Gray)', 599, 'IMG-20250314-WA0023.jpg'),
(40, 'Venom Case', 349, 'IMG-20250314-WA0025.jpg'),
(41, 'Leather SpiderMan', 599, 'IMG-20250314-WA0017.jpg'),
(43, 'Travel Bag', 1450, 'travelbag.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Mehrab Pranto', 'p@gmail.com', 'PRANTO', 'admin'),
(10, 'Pranto', 'prantoprime505@gmail.com', '123', 'user'),
(11, 'sami', 'sami@gmail.com', 'sami123', 'user'),
(12, 'Juwel', 'juwel@gmail.com', 'juwel123', 'user'),
(13, 'ami juwel', 'pranto8146@gmail.com', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
