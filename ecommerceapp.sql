-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 06:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(10, 'Harry', 'harry@gmail.com', '$2y$10$JPpd8Ypyu/Gxmag/YbSMfOb5GIxWDu9kT8ysdI3to7VCZXsJamXVW', '0'),
(11, 'Sara', 'sara@gmail.com', '$2y$10$GBPvjuvDAtXTWBTnEjydGeZKPXI1w3jx2suZHXkxc/F4BEDEaZtXe', '0'),
(12, 'shama', 'shamaspark21@gmail.com', '$2y$10$1N0P.6v4vM8gRCIUNxvHlu2061LqlaNRRRbWV2Iq24rUtQ0p20lF6', '0');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` int(50) NOT NULL,
  `cardnum` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `name`, `phone`, `email`, `address`, `city`, `state`, `pincode`, `cardnum`, `cvv`, `edate`) VALUES
(11, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 0, '2022-05-27'),
(12, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 0, '2022-05-27'),
(13, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 0, '2022-05-27'),
(14, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 0, '2022-05-27'),
(15, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 5656, '2022-05-27'),
(16, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 5656, '2022-05-27'),
(17, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 5656, '2022-05-27'),
(18, 'shama', 2147483647, 'sampeen608@gmail.com', 'School in Moodabidri, Karnataka', 'udupi', 'karnataka', 574117, 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(12, 'Ilahi'),
(13, 'Masso'),
(14, 'dsfdf');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(10, 26, '::1', 7, 1),
(11, 25, '::1', 7, 1),
(15, 24, '::1', 9, 1),
(18, 24, '::1', 10, 1),
(21, 25, '::1', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(16, 'Fruits'),
(17, 'Vegetables'),
(18, 'SoftDrinks');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(25, 16, 12, 'Banana(2 Kg)', 200, 1, 'Rich in nutrition', '1653065277_istockphoto-1291262112-170667a.jpg', 'banana'),
(26, 17, 13, 'Carrot(200 gram)', 250, 1, 'Rich in nutrition', '1653065334_carrots-7-1200.jpg', 'carrot'),
(27, 17, 13, 'Tomatoe( 1 Kg)', 100, 1, 'Tomatoes', '1653065363_istockphoto-1258142863-612x612.jpg', 'tomatoes'),
(28, 17, 13, 'Onion(1 Kg)', 150, 1, 'onion', '1653065399_36700-0w470h470_Organic_Red_Onion_From_Italy.jpg', 'onion'),
(29, 18, 13, 'Sprite(50 ml)', 100, 1, 'sprite', '1653065429_sprite-600-ml-product-images-o490001800-p490001800-0-202203170616.jpg', 'sprite'),
(30, 18, 13, 'Fanta( 1Ltr)', 50, 1, 'fanta', '1653065462_fanta-can-cold-drink-500x500.jpg', 'fanta'),
(31, 18, 12, 'Coke(50 ml)', 50, 1, 'coke', '1653065499_000145352.jpeg', 'coke'),
(33, 16, 12, 'Apple(200 pound)', 200, 1, 'Good to health', '1653391394_1653065197_photo-1560806887-1e4cd0b6cbd6.jpg', 'apple'),
(35, 17, 13, 'Apple', 200, 1, 'dgfg', '1653471464_1653065277_istockphoto-1291262112-170667a.jpg', 'apple');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(8, 'Arvind', 'F', 'arvind@gmail.com', '9442f1aec22751aa79a1fc9933de2182', '9856458957', 'Udupi', 'Manipal'),
(9, 'Arvind', 'F', 'arvind1@gmail.com', '9442f1aec22751aa79a1fc9933de2182', '9856458957', 'Udupi', 'Manipal'),
(10, 'Shama', 'Parveen', 'sampeen608@gmail.com', '62c746fdc721dc5dfc7b767df3435ec1', '9945510608', 'School in Moodabidri, Karnataka', 'Udupi'),
(11, 'Hen', 'BEn', 'henben@gmail.com', '81bdc9667086d1fcae5071b0bae14877', '6985698563', 'kaup', 'manipal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
