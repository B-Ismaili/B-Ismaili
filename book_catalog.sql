-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 11:31 AM
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
-- Database: `book_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `biography` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `biography`, `deleted_at`) VALUES
(2, 'Bunjaminn', 'Ismaili', 'Author', '2024-08-28 10:40:44'),
(3, 'F. Scott ', 'Fitzgerald', '', '2024-08-28 10:41:00'),
(4, 'AzrA', 'Bajrami-Ismaili', 'Azra Bajrami-Ismaili the best doctor in the world!', NULL),
(5, 'Test', 'Test', 'Test test test test test\r\n', '2024-08-25 16:05:22'),
(6, 'Bunjamin', 'Ismaili', 'Bunjamin Ismaili normal person!!!!!', '2024-09-06 08:06:17'),
(7, 'test', 'test', 'testfadfsdfsdfdsfzsfasfasf', '2024-08-28 10:46:53'),
(8, 'Test', 'test', 'test is test is test is test is test', '2024-09-06 08:06:36'),
(9, 'Test', 'test', 'test is test is test is test is test', '2024-08-31 12:18:22'),
(10, 'test1', 'test1', 'test1teste1edsfsdfaadfadg', '2024-09-06 08:06:40'),
(11, 'Java', 'Script', 'JavaScript is programming language!', NULL),
(12, 'Jon - HTML', 'html', 'HTML front-end markup language!\r\n', NULL),
(13, 'Jane - CSS', 'Design', 'Front-end designer!!!!', NULL),
(14, 'Tom - PHP', 'Back-end', 'PHP is a back-end language!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `year_of_publication` int(11) NOT NULL,
  `number_of_pages` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `category_id`, `year_of_publication`, `number_of_pages`, `image_url`, `deleted_at`) VALUES
(1, 'The Great Gatsby', 3, 4, 1925, 180, 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', '2024-08-25 21:03:00'),
(6, 'Doktor i Buzeqeshur!', 4, 9, 2024, 167, 'https://img.freepik.com/premium-photo/doctor-nurse-silhouette_952248-59.jpg', NULL),
(7, 'test123', 5, 2, 1923, 323, 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', '2024-08-25 21:05:50'),
(8, 'Programming Basics', 2, 8, 2024, 235, 'https://contentstatic.techgig.com/photo/89790289.cms', '2024-09-06 10:05:47'),
(9, 'HTML', 12, 13, 1993, 11111, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEc9A_S6BPxCDRp5WjMFEfXrpCu1ya2OO-Lw&s', NULL),
(10, 'CSS', 13, 14, 1996, 1111, 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg', NULL),
(11, 'JavaScript', 11, 12, 1995, 1111, 'https://iconape.com/wp-content/files/ez/353342/svg/javascript-seeklogo.com.svg', NULL),
(12, 'PHP', 14, 15, 1993, 1111, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXalRyF7J7QRLkJfMwCMqA47UUDCFdHJ-dFQ&s', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `deleted_at`) VALUES
(2, 'Bussines Analyse', '2024-08-25 18:43:56'),
(4, 'History', '2024-08-31 12:25:15'),
(8, 'IT - for beginner\'s', NULL),
(9, 'Medicine', NULL),
(10, 'History1', '2024-09-06 08:38:44'),
(11, 'Bussines Analyse', '2024-09-06 08:38:50'),
(12, 'JavaScript', NULL),
(13, 'HTML', NULL),
(14, 'CSS', NULL),
(15, 'PHP', NULL),
(16, '123', '2024-09-06 08:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `content`, `is_approved`, `created_at`) VALUES
(2, 7, 10, 'best business book', 1, '2024-08-26 11:15:02'),
(3, 1, 10, 'hello', 1, '2024-08-27 10:07:36'),
(4, 1, 12, 'hello', 1, '2024-08-27 10:24:33'),
(5, 1, 12, 'again\r\n', 1, '2024-08-27 10:24:43'),
(6, 1, 12, 'again again', 1, '2024-08-27 10:25:02'),
(7, 1, 3, 'one more', 1, '2024-08-27 11:36:39'),
(10, 7, 3, 'hello', 1, '2024-08-28 13:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `book_id`, `user_id`, `content`, `created_at`) VALUES
(6, 1, 12, 'again1', '2024-08-27 10:30:33'),
(7, 1, 3, 'nice book', '2024-08-27 11:20:28'),
(8, 1, 3, 'asd', '2024-08-27 11:27:04'),
(9, 1, 3, 'asd', '2024-08-27 11:28:03'),
(10, 1, 3, 'hello again', '2024-08-27 11:29:50'),
(19, 1, 3, 'sadf', '2024-08-27 11:38:47'),
(20, 1, 3, 'dsfkjna', '2024-08-27 11:38:55'),
(21, 8, 3, 'okeyy', '2024-08-28 12:44:30'),
(23, 7, 3, 'asd', '2024-08-28 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','client') DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(3, 'test', '$2y$10$j6bAjGThZoR/v9EWfE1sG.K9XSn1b3XBdH.PlZASwaALrc5MDQ0vG', 'client'),
(6, 'test1', '$2y$10$5RVS.4ChvCqvhFDZOPOzt.irPem2agfZZIaqOg9br68SmIJ4XaM4S', 'client'),
(7, 'test2', '$2y$10$RmHKzwVwiRavy.6UUrI/3eUEXv9QtzMzBZN1h8REymsbAfpMJBcse', 'client'),
(8, 'ismaili', 'ismaili', 'admin'),
(9, 'admin1', 'admin1', 'admin'),
(10, 'test3', '$2y$10$40zD45LlwJIP.FKXFN7eMuFhOI0ToCs.Sn47sZEnwliaCn59rVDwy', 'client'),
(11, 'Bunjamin', '$2y$10$U9/c07OpJ1ASfWGps/AtcOG.SerU8.nuUxfoJzDon03Uq7bdOnKQW', 'admin'),
(12, 'test10', '$2y$10$PUWmlLJ122vo3ZL621sYRuJklO5wIq5EYGbonyxf3XS.cBn6p.pry', 'client'),
(13, 'test11', '$2y$10$4TwO.0BRIkgMoAvC1q.ZU.0YSTVtZVlVFH.aqJd8ZY0gOS9Lqa8GC', 'client'),
(14, 'test14', '$2y$10$8qlG7dQvQjQCfQ2r.5y0PudOn8kci9tyOEAeAWlK2tmw0qsgeGaX.', 'client'),
(15, 'test15', '$2y$10$iXz8mPDN6OUDu2iMfBnVeeu3kk6h17923jfANDnq/mksGoG1ve6ca', 'client'),
(16, 'test16', '$2y$10$NIxQG2Wk.q3iuTlebbUM0u/Fkc/xrMju/HZAkFDipX4bHXrECPujO', 'client'),
(17, 'test17', '$2y$10$WtalCSInQ06vXQiJ6ojZmufxkAfOYA5p0lnI6jJ8wpHlPTuOqVdQe', 'client'),
(18, 'test18', '$2y$10$pjS0Pm4vNMjaOAsaMzY4jeOm3IQTPt6jXrqWw1.Z9hUdK7dqb1XzO', 'client'),
(19, 'semiha', '$2y$10$o9KF3zyhg84gl0vrjo9vlebWNTNz4Y9N1I2xkCPgaAUgato4rUIga', 'client'),
(20, 'test234', '$2y$10$fGsOeX/qDP6DJKDt43VUR.be7SZj43FGy55tuxLD4wIf2.rrK2Pyy', 'client'),
(21, 'tes', '$2y$10$IQ9PvQnMvJKj0rZJE5rEBO6Tyhvc0bAoXzMc1I1Zll1CziDU2JiUO', 'client'),
(22, 'te', '$2y$10$4SeDaNmePmf86JU8CIB6PeXCtk9/n1yGbj23nEyqNXAQLf8sf09nq', 'client'),
(23, 't', '$2y$10$ooT6UqH2g6.xJ8K2MOKwk.mfUw3omoV7qAEuXPb6e1nLw7gLtY3re', 'client'),
(24, 'n', '$2y$10$GB8cDaSKRr40/Uy/0aaDseC8bJjpIeiPxQTQ3axO4CjVNBg1xAq0W', 'client'),
(25, 'ne', '$2y$10$E.mkmRs4VheJEHTgzeTnkOhSxViTfPChSpitRw6BhHmK7wQ4jupq6', 'client'),
(26, 'nee', '$2y$10$KPJjKFV7B.FXjDFjlDbpyO/QwmrQMjuVgQRdwXaMOsIvdTHc8rRHq', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
