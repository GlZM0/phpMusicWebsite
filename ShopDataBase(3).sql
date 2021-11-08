-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2021 at 02:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ShopDataBase`
--

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `product_price` float NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `OrderDetails`
--

INSERT INTO `OrderDetails` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `price`) VALUES
(1, 3, 1, 'One Direction Four', 17.99, 12.49),
(2, 3, 2, 'One Direction Take Me Home', 14.79, 19.99),
(3, 3, 3, 'One Direction All Night', 18.49, 14.99);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) COLLATE utf8_bin NOT NULL,
  `surName` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `postCode` varchar(255) COLLATE utf8_bin NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `firstName`, `surName`, `email`, `address`, `country`, `postCode`, `orderStatus`, `createdAt`, `updatedAt`, `price`) VALUES
(1, 'Klemens', 'Rutkowski', 'kRutek@gmail.com', 'ul. Józefów 4 Łódź', 'Poland', '12863', 'confirmed', '2021-02-15 11:16:10', '2021-02-15 11:16:10', 56),
(2, 'Izaak', 'Gorski', 'iGorski@gmail.com', 'ul. Gerwela Czesława 130 Poznań', 'Poland', '53971', 'confirmed', '2021-03-19 14:11:57', '2021-03-21 17:13:43', 71),
(3, 'Salomea', 'Chmielewska', 'sChmielew@gmail.com', 'ul. Kolońska 105 Katowice', 'Poland', '12534', 'confirmed', '2021-06-12 04:13:52', '2021-06-13 16:12:53', 42);

-- --------------------------------------------------------

--
-- Table structure for table `ProductImages`
--

CREATE TABLE `ProductImages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `is_featured` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ProductImages`
--

INSERT INTO `ProductImages` (`id`, `product_id`, `img`, `display_order`, `is_featured`) VALUES
(1, 1, 'four-w-iext73628681.jpg', 1, 1),
(2, 2, 'One-Direction-Take-Me-Home-Standard-HQ-2012.jpg', 2, 1),
(3, 3, 'up-all-night-b-iext36377737.jpg', 3, 1),
(4, 4, 'midnight-memories-deluxe-b-iext70182676.jpg', 4, 1),
(5, 5, '61+ICOC5ZaL._SY580_.jpg', 5, 1),
(6, 6, 'slipknot-w-iext73187467.jpg', 6, 1),
(7, 7, '216775.jpg', 7, 1),
(8, 8, 'vol-3-the-subliminal-verses-b-iext47781351.jpg', 8, 1),
(9, 9, 'slipknot-all-hope-i4710.jpg', 9, 1),
(10, 10, 'D_NQ_NP_863050-MLA30832635739_052019-O.jpg', 10, 1),
(11, 11, '792bf80e.jpg', 11, 1),
(12, 12, '61LdKbic+wL.jpg', 12, 1),
(13, 13, 'plotno-the-beatles-with-the-beatles-i110854.jpg', 13, 1),
(14, 14, '3. A Hard Day\'s Night.jpg', 14, 1),
(15, 15, 'beatles_for-sale_f-1.jpg', 15, 1),
(16, 16, '41G-d8PedsL._SY780_.jpg', 16, 1),
(17, 17, 'Beatles_Rubber_Soul.jpg', 17, 1),
(18, 18, '56ba5bdecc2e7.jpg', 18, 1),
(19, 19, 'beatles_sgt.jpg', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `short_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `full_description` text COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `product_name`, `short_description`, `full_description`, `price`, `is_active`, `created_at`, `updated_at`, `type`) VALUES
(1, 'One Direction Four', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 17.99, 1, '2021-02-11 22:02:17', '2021-02-11 22:02:21', 'pop'),
(2, 'One Direction Take Me Home', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 14.79, 1, '2021-02-11 22:13:13', '2021-02-11 22:14:21', 'pop'),
(3, 'One Direction All Night', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 18.49, 1, '2021-02-11 22:14:18', '2021-02-11 22:15:57', 'pop'),
(4, 'One Direction Midnight Memories', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 16.39, 1, '2021-02-11 13:53:19', '2021-02-11 14:02:21', 'pop'),
(5, 'One Direction Made In The A.M', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 18.79, 1, '2021-02-12 16:19:21', '2021-02-12 17:22:37', 'pop'),
(6, 'Slipknot', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 19.49, 1, '2021-10-28 19:58:06', '2021-10-28 19:58:09', 'heavy metal'),
(7, 'Slipknot Iowa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 24.99, 1, '2021-02-11 10:22:17', '2021-02-11 10:23:21', 'heavy metal'),
(8, 'Slipknot Vol. 3: (The Subliminal Verses)', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 23.49, 1, '2021-02-11 10:24:25', '2021-02-11 10:24:56', 'heavy metal'),
(9, 'Slipknot All Hope Is Gone', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 29.99, 1, '2021-02-11 10:25:12', '2021-02-11 10:25:36', 'heavy metal'),
(10, 'Slipknot .5 The Gray Chapter', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 26.39, 1, '2021-02-11 10:26:09', '2021-02-11 10:26:12', 'heavy metal'),
(11, 'Slipknot We Are Not Your Kind', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 21.99, 1, '2021-02-11 10:28:16', '2021-02-11 10:28:31', 'heavy metal'),
(12, 'Please Please Me', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 23.49, 1, '2021-11-02 13:15:56', '2021-11-02 13:15:56', 'rock and roll'),
(13, 'With the Beatles', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 21.29, 1, '2021-11-02 13:18:09', '2021-11-02 13:18:09', 'rock and roll'),
(14, 'A Hard Day\'s Night', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 28.49, 1, '2021-11-02 13:19:21', '2021-11-02 13:19:21', 'rock and roll'),
(15, 'Beatles for Sale', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 23.39, 1, '2021-11-02 13:20:27', '2021-11-02 13:20:27', 'rock and roll'),
(16, 'Help!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 19.99, 1, '2021-11-02 13:23:12', '2021-11-02 13:23:12', 'rock and roll'),
(17, 'Rubber Soul', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 18.99, 1, '2021-11-02 13:26:31', '2021-11-02 13:26:31', 'rock and roll'),
(18, 'Revolver', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 22.79, 1, '2021-11-02 13:27:28', '2021-11-02 13:27:28', 'rock and roll'),
(19, 'Sgt. Pepper\'s Lonely Hearts Club Band', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 24.99, 1, '2021-11-02 13:28:38', '2021-11-02 13:28:38', 'rock and roll');

-- --------------------------------------------------------

--
-- Table structure for table `UserContact`
--

CREATE TABLE `UserContact` (
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `attachement` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstName` text COLLATE utf8_bin NOT NULL,
  `surName` text COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `postCode` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstName`, `surName`, `email`, `phone`, `address`, `postCode`) VALUES
(1, 'Klemens', 'Rutkowski', 'kRutek@gmail.com', 123456789, 'ul. Józefów 4 Łódź', '12 863'),
(2, 'Izaak', 'Gorski', 'iGorski@gmail.com', 653815942, 'ul. Gerwela Czesława 130 Poznań', '53 971'),
(3, 'Salomea', 'Chmielewska', 'sChmielew@gmail.com', 127395825, 'ul. Kolońska 105 Katowice', '12 534');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ProductImages`
--
ALTER TABLE `ProductImages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ProductImages`
--
ALTER TABLE `ProductImages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
