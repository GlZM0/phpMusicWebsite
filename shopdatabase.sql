-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Paź 2021, 20:43
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shopdatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `product_price` float NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `price`) VALUES
(1, 3, 1, 'One Direction Four', 17.99, 12.49),
(2, 3, 2, 'One Direction Take Me Home', 14.79, 19.99),
(3, 3, 3, 'One Direction All Night', 18.49, 14.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
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
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `firstName`, `surName`, `email`, `address`, `country`, `postCode`, `orderStatus`, `createdAt`, `updatedAt`, `price`) VALUES
(1, 'Klemens', 'Rutkowski', 'kRutek@gmail.com', 'ul. Józefów 4 Łódź', 'Poland', '12863', 'confirmed', '2021-02-15 11:16:10', '2021-02-15 11:16:10', 56),
(2, 'Izaak', 'Gorski', 'iGorski@gmail.com', 'ul. Gerwela Czesława 130 Poznań', 'Poland', '53971', 'confirmed', '2021-03-19 14:11:57', '2021-03-21 17:13:43', 71),
(3, 'Salomea', 'Chmielewska', 'sChmielew@gmail.com', 'ul. Kolońska 105 Katowice', 'Poland', '12534', 'confirmed', '2021-06-12 04:13:52', '2021-06-13 16:12:53', 42);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `is_featured` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `productimages`
--

INSERT INTO `productimages` (`id`, `product_id`, `img`, `display_order`, `is_featured`) VALUES
(1, 1, 'four-w-iext73628681.jpg', 1, 1),
(2, 2, 'One-Direction-Take-Me-Home-Standard-HQ-2012.jpg', 2, 1),
(3, 3, 'up-all-night-b-iext36377737.jpg', 3, 1),
(4, 4, 'midnight-memories-deluxe-b-iext70182676.jpg', 4, 1),
(5, 5, '61+ICOC5ZaL._SY580_.jpg', 5, 1),
(6, 6, 'Wait_and_Bleed.jpg', 6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `short_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `full_description` text COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `product_name`, `short_description`, `full_description`, `price`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'One Direction Four', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 17.99, 1, '2021-02-11 22:02:17', '2021-02-11 22:02:21'),
(2, 'One Direction Take Me Home', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 14.79, 1, '2021-02-11 22:13:13', '2021-02-11 22:14:21'),
(3, 'One Direction All Night', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 18.49, 1, '2021-02-11 22:14:18', '2021-02-11 22:15:57'),
(4, 'One Direction Midnight Memories', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 16.39, 1, '2021-02-11 13:53:19', '2021-02-11 14:02:21'),
(5, 'One Direction Made In The A.M', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 18.79, 1, '2021-02-12 16:19:21', '2021-02-12 17:22:37'),
(6, 'Slipknot Wait And Bleed', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis omnis suscipit esse ipsam officia. Quis sint nihil magnam explicabo veniam hic. Vitae nam iusto reiciendis ratione sed suscipit, aspernatur repudiandae.', 19.49, 1, '2021-10-28 19:58:06', '2021-10-28 19:58:09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` text COLLATE utf8_bin NOT NULL,
  `surName` text COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `postCode` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `firstName`, `surName`, `email`, `phone`, `address`, `postCode`) VALUES
(1, 'Klemens', 'Rutkowski', 'kRutek@gmail.com', 123456789, 'ul. Józefów 4 Łódź', '12 863'),
(2, 'Izaak', 'Gorski', 'iGorski@gmail.com', 653815942, 'ul. Gerwela Czesława 130 Poznań', '53 971'),
(3, 'Salomea', 'Chmielewska', 'sChmielew@gmail.com', 127395825, 'ul. Kolońska 105 Katowice', '12 534');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
