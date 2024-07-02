-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 02:19 PM
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
-- Database: `website_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `cover_image_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` enum('services','products') NOT NULL,
  `service_product_1_url` varchar(255) NOT NULL,
  `service_product_1_description` text NOT NULL,
  `service_product_2_url` varchar(255) NOT NULL,
  `service_product_2_description` text NOT NULL,
  `service_product_3_url` varchar(255) NOT NULL,
  `service_product_3_description` text NOT NULL,
  `contact_form_description` text NOT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `cover_image_url`, `title`, `subtitle`, `description`, `telephone`, `location`, `type`, `service_product_1_url`, `service_product_1_description`, `service_product_2_url`, `service_product_2_description`, `service_product_3_url`, `service_product_3_description`, `contact_form_description`, `linkedin`, `facebook`, `twitter`, `instagram`) VALUES
(1, 'asd', 'asdf', 'asdf', 'http://www.example.com/index.html', 'asdf', 'asdf', 'products', 'asdf', 'http://www.example.com/index.html', 'asdf', 'http://www.example.com/index.html', 'asdf', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(2, 'https://t4.ftcdn.net/jpg/03/07/56/71/360_F_307567102_lcPJUW10EdNeMKBTyUFg41QDWSFg6f0h.jpg', 'IT', 'programming', 'IT company', '12434245445', 'Skopje, North Macedonia', 'services', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'Web Design', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'Web Design', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'Web Design', 'Available 24/7', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(3, 'https://t4.ftcdn.net/jpg/03/07/56/71/360_F_307567102_lcPJUW10EdNeMKBTyUFg41QDWSFg6f0h.jpg', 'IT-PROGRAMMING', 'WEB-DEVELOPMENT', 'The Best!', '12434245445', 'Skopje, North Macedonia', 'services', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'WEB-DEVELOPMENT', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'WEB-DEVELOPMENT', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'WEB-DEVELOPMENT', 'Available 24/7!!!', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsfUJ6YVa85ULxqez7qnVI7_kq3lovwP1fPjlfTIECXNtdOw_JuBc4f8Oi09LgYhmDksY&usqp=CAU', 'Spitali i Shpreses', '<3', 'Spital per femije!', '12434245445', 'Oher, North Macedonia', 'services', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'Aktiv 24/7!', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsfUJ6YVa85ULxqez7qnVI7_kq3lovwP1fPjlfTIECXNtdOw_JuBc4f8Oi09LgYhmDksY&usqp=CAU', 'Spitali i Shpreses', '<3', 'Spital per femije!', '12434245445', 'Oher, North Macedonia', 'services', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'https://buildingnetwork.dk/wp-content/uploads/2017/09/Interior_02_play-area-1024x614.jpg', '<3', 'Aktiv 24/7!', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(6, 'https://t4.ftcdn.net/jpg/03/07/56/71/360_F_307567102_lcPJUW10EdNeMKBTyUFg41QDWSFg6f0h.jpg', 'AB', '<3', '1233243qw', '1234324325314', 'Skopje, North Macedonia', 'products', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'fasdagsfafsg', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'asdgagafg', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'afbfdgfadgsfdg', 'afagaarasdfafgfdgaga', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html'),
(7, 'https://t4.ftcdn.net/jpg/03/07/56/71/360_F_307567102_lcPJUW10EdNeMKBTyUFg41QDWSFg6f0h.jpg', 'AB', '<3', 'agfasgfsag', '12434245445', 'Skopje, North Macedonia', 'products', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'dsfasdfa', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'sagfdssfdgsdf', 'https://t3.ftcdn.net/jpg/03/54/17/86/360_F_354178616_uSdqA6i1A1vkkskFPKOoxQOED0ZMIcn3.jpg', 'dfshagfasg', 'asfgfasdgsdag', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html', 'http://www.example.com/index.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
