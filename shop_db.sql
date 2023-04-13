-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 08:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(1, 32, 26, 'Carrot', 55, 1, 'carrot.png'),
(2, 32, 28, 'Broccoli', 260, 1, 'broccoli.png');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 32, 'ABC', 'abc@gmail.com', '7512751275', 'Amazing services.');

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
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `delivery_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`, `delivery_status`) VALUES
(12, 32, 'ABC', '7512751275', 'abc@gmail.com', 'cash on delivery', 'flat no. CHS Heights Wall Street Mumbai Maharastra India - 123456', ', Banana ( 1 ), Orange ( 1 ), Wheat ( 1 )', 305, '14-Dec-2022', 'completed', 'completed'),
(13, 32, 'ABC', '7512751275', 'abc@gmail.com', 'online payment', 'flat no. CHS Heights Wall Street Mumbai Maharashtra India - 123456', ', Rice ( 1 ), Milk (500ml) ( 1 ), Yogurt (200gm) ( 1 ), Butter (200gm) ( 1 )', 372, '14-Dec-2022', 'completed', 'completed'),
(14, 36, 'Suraj', '7512751275', 'suraj@gmail.com', 'cash on delivery', 'flat no. 100 Wall Street Mumbai Maharashtra India - 123456', ', Carrot ( 1 ), Broccoli ( 1 )', 315, '15-Dec-2022', 'pending', 'pending'),
(15, 36, 'Suraj', '7512751275', 'suraj@gmail.com', 'online payment', 'flat no. 100 Wall Street Mumbai Maharashtra India - 400400', ', Apple ( 1 ), Orange ( 1 ), Wheat ( 1 )', 405, '15-Dec-2022', 'complete', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'Apple', 'fruits', 'Fresh Apples Sold per KG', 160, 'apple.png'),
(25, 'Banana', 'fruits', 'Fresh Bananas sold per Dozen', 60, 'banana.png'),
(26, 'Carrot', 'vegetables', 'Fresh Carrots sold per kg', 55, 'carrot.png'),
(27, 'Capsicum', 'vegetables', 'Fresh Capsicum sold per Kg', 250, 'capsicum.png'),
(28, 'Broccoli', 'vegetables', 'Fresh Brocolli sold per Kg', 260, 'broccoli.png'),
(29, 'Orange', 'fruits', 'Fresh orange sold per Kg', 190, 'orange.png'),
(30, 'Rice', 'grains', 'Rice Sold per Kg', 75, 'rice.jfif'),
(31, 'Wheat', 'grains', 'Wheat sold per Kg', 55, 'wheat.jpg'),
(32, 'Milk (500ml)', 'dairy', 'Milk bottles each of 500ml sold', 27, 'milk.jfif'),
(33, 'Butter (200gm)', 'dairy', 'Butter blocks each of 200gm sold', 120, 'butter.jfif'),
(34, 'Yogurt (200gm)', 'dairy', 'Cups of Yogurt each of 200gm Sold', 150, 'yogurt.jfif'),
(35, 'Mango', 'fruits', 'Fresh Mangoes sold per Kg', 170, 'mango.jfif'),
(36, 'Raw Mangoes', 'fruits', 'Fresh Raw Mangoes sold per Kg', 82, 'mango_raw.jfif'),
(37, 'Tomato', 'vegetables', 'Fresh tomatoes sold per Kg', 45, 'Tomato.jpg'),
(38, 'Cucumber', 'vegetables', 'Fresh Cucumber sold per Kg', 57, 'cucumber.jpg'),
(39, 'Potato', 'vegetables', 'Fresh potatoes sold per Kg', 48, 'potato.jfif'),
(40, 'Ghee', 'dairy', 'Pure Ghee sold per Kg', 750, 'Ghee.jpg'),
(41, 'Lychee', 'fruits', 'Fresh lychee sold per Kg', 140, 'lychee.jfif'),
(42, 'Lady&#39;s finger', 'vegetables', 'Fresh Lady&#39;s finger sold per kg', 125, 'lady-finger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
(32, 'ABC', 'abc@gmail.com', 'e99a18c428cb38d5f260853678922e03', 'abc_profilepic.jpg'),
(35, 'John', 'john@gmail.com', '6e0b7076126a29d5dfcbd54835387b7b', 'profile-pic.jfif'),
(36, 'Suraj', 'suraj@gmail.com', '8127a1ad276367223d9d0a2d264e4b2e', 'profile-pic.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(51, 36, 25, 'Banana', 60, 'banana.png'),
(52, 36, 26, 'Carrot', 55, 'carrot.png');

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
