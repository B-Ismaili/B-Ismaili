-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 04:32 PM
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
-- Database: `registered_vehicles1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_types`
--

CREATE TABLE `fuel_types` (
  `id` int(11) NOT NULL,
  `fuel_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuel_types`
--

INSERT INTO `fuel_types` (`id`, `fuel_name`) VALUES
(1, 'Gasoline'),
(2, 'Diesel'),
(3, 'Electric');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `vehicle_model_id` int(11) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL,
  `vehicle_chassis_number` varchar(100) DEFAULT NULL,
  `vehicle_production_year` int(11) DEFAULT NULL,
  `registration_number` varchar(50) DEFAULT NULL,
  `fuel_type_id` int(11) DEFAULT NULL,
  `registration_to` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `vehicle_model_id`, `vehicle_type_id`, `vehicle_chassis_number`, `vehicle_production_year`, `registration_number`, `fuel_type_id`, `registration_to`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ABC123456789', 2022, 'SK123', 1, '2024-06-30', '2024-07-01 18:44:49', '2024-07-01 18:44:49'),
(2, 2, 2, 'XYZ987654321', 2021, 'OH456', 2, '2023-12-31', '2024-07-01 18:44:49', '2024-07-01 18:44:49'),
(3, 3, 3, 'DEF567891234', 2023, 'BT789', 3, '2025-03-15', '2024-07-01 18:44:49', '2024-07-01 18:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_model_id` int(11) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `chassis_number` varchar(50) DEFAULT NULL,
  `production_year` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `fuel_type_id` int(11) NOT NULL,
  `registration_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_model_id`, `vehicle_type_id`, `chassis_number`, `production_year`, `registration_number`, `fuel_type_id`, `registration_to`) VALUES
(1, 8, 1, '12344', 2023, 'sk4321oh', 3, '2024-07-30'),
(2, 7, 2, '123445', 2023, 'oh1234sk', 3, '2025-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` int(11) NOT NULL,
  `model_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `model_name`) VALUES
(1, 'Model A'),
(2, 'Model B'),
(3, 'Model C'),
(4, 'Model A'),
(5, 'Model B'),
(6, 'Model C'),
(7, 'Audi'),
(8, 'BMW'),
(9, 'Mercedes');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `type_name`) VALUES
(1, 'Sedan'),
(2, 'Coupe'),
(3, 'SUV'),
(4, 'Sedan'),
(5, 'Coupe'),
(6, 'SUV'),
(7, 'Sedan'),
(8, 'Coupe'),
(9, 'SUV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_model_id` (`vehicle_model_id`),
  ADD KEY `vehicle_type_id` (`vehicle_type_id`),
  ADD KEY `fuel_type_id` (`fuel_type_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chassis_number` (`chassis_number`),
  ADD KEY `fk_vehicle_model` (`vehicle_model_id`),
  ADD KEY `fk_vehicle_type` (`vehicle_type_id`),
  ADD KEY `fk_fuel_type` (`fuel_type_id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_types`
--
ALTER TABLE `fuel_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`),
  ADD CONSTRAINT `registrations_ibfk_3` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `fk_fuel_type` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `fk_vehicle_model` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`),
  ADD CONSTRAINT `fk_vehicle_type` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_3` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_4` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_5` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_6` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_7` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_8` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_9` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
