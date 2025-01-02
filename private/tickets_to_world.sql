-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 31, 2024 at 10:55 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets_to_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'haseeb', '$2y$10$bX531Y86n1CmgXigcUpBPOyvIZ3vQTnBfrTBwMPhQsZwv91XqBLPC', '2024-12-27 18:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `airline_flights`
--

DROP TABLE IF EXISTS `airline_flights`;
CREATE TABLE IF NOT EXISTS `airline_flights` (
  `airline_flight_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `airline_name` varchar(100) NOT NULL,
  `total_journey_time` varchar(50) NOT NULL,
  `time_departure` varchar(50) NOT NULL,
  `arrival_time` varchar(50) NOT NULL,
  `stops` varchar(50) NOT NULL,
  `available_seats` int NOT NULL,
  `pay_in_one_go` decimal(10,2) NOT NULL,
  `pay_in_installments` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`airline_flight_id`),
  KEY `flight_id` (`flight_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airline_flights`
--

INSERT INTO `airline_flights` (`airline_flight_id`, `flight_id`, `airline_name`, `total_journey_time`, `time_departure`, `arrival_time`, `stops`, `available_seats`, `pay_in_one_go`, `pay_in_installments`) VALUES
(1, 1, 'British Airways', '20h 33m', '10:15', '9h', 'Non Stop', 4, 456.00, 567.00),
(2, 2, 'Kenya Airways', '42', '4211', '5', '5', 43, 34.00, 54.00),
(3, 2, 'Royal Air Maroc', '3r', 'f3r3f', '3f', 'f3', 34, 34.00, 37.00),
(4, 2, 'Custom', 'ew', 'ew', 'ew', '4', 43, 43.00, 48.00),
(5, 3, 'British Airways', '06h 30m', 'DEP 13:25-H', 'ARR 19:55 -H', 'Non Stop', 4, 581.00, 728.00),
(6, 3, 'Kenya Airways', '20h 45m', 'DEP 17:25-K', 'ARR 14:10 -K', '2', 5, 707.00, 841.00),
(7, 3, 'Royal Air Maroc', '09h 40m', 'DEP 17:10-O', 'ARR 02:50 -O', '1', 7, 316.00, 398.00),
(8, 3, 'KLM', '10h 00m', 'DEP 10:00-K', 'ARR 21:00 -K', '1', 3, 349.00, 412.00),
(9, 3, 'Air France', '11h 35m', 'DEP 09:00-L', 'ARR 21:35 -Q', '1', 4, 418.00, 497.00),
(10, 3, 'Turkish Airlines', '13h 00m', 'DEP 06:35-Q', 'ARR 20:35', '2', 2, 478.00, 552.00),
(11, 3, 'Emirates', '23h 20m', 'DEP 15:50-L', 'ARR 16:10 -L', '2', 3, 564.00, 635.00),
(12, 3, 'Qatar Airways', '17h 35m', 'DEP 21:30-L', 'ARR 16:05 -L', '2', 6, 530.00, 609.00),
(13, 3, 'Lufthansa', '09h 15m', 'DEP 07:30-Q', 'ARR 17:45 -Q', '1', 4, 569.00, 639.00),
(14, 4, 'Royal Air Maroc', '54', '543', '35t', 't534', 34, 34.00, 54.00),
(15, 4, 'Air France', '54', 't534', 't534', 't4', 3543, 54.00, 534.00),
(16, 4, 'Turkish Airlines', '354', '534', 't5tt3', '3ttt', 3554, 54543.00, 545.00),
(17, 5, 'British Airways', '06h 30m', 'DEP 13:25-H', 'ARR 19:55 -H', 'Non Stop', 2, 581.00, 728.00),
(18, 5, 'Kenya Airways', '20h 45m', 'DEP 17:25-K', 'ARR 14:10 -K', '2', 5, 707.00, 841.00),
(19, 5, 'Royal Air Maroc', '09h 40m', 'DEP 17:10-O', 'ARR 02:50 -O', '1', 7, 316.00, 398.00),
(20, 5, 'KLM', '10h 00m', 'DEP 10:00-K', 'ARR 21:00 -K', '1', 3, 349.00, 412.00),
(21, 5, 'Air France', '11h 35m', 'DEP 09:00-L', 'ARR 21:35 -Q', '1', 4, 418.00, 497.00),
(22, 5, 'Turkish Airlines', '13h 00m', 'DEP 06:35-Q', 'ARR 20:35', '2', 3, 478.00, 552.00),
(23, 5, 'Emirates', '23h 20m', 'DEP 15:50-L', 'ARR 16:10 -L', '2', 3, 564.00, 635.00),
(24, 5, 'Qatar Airways', '17h 35m', 'DEP 21:30-L', 'ARR 16:05 -L', '2', 6, 530.00, 609.00),
(25, 5, 'Lufthansa', '09h 15m', 'DEP 07:30-Q', 'ARR 17:45 -Q', '1', 4, 569.00, 639.00),
(26, 6, 'British Airways', 'ds', 'ds', 'sd', 'sd', 3, 0.00, 0.00),
(27, 7, 'British Airways', '20h 33m', '10:15', '9h', 'Non Stop', 4, 506.00, 670.00),
(28, 8, 'Royal Air Maroc', '09h 40m', 'f3r3f', 'ARR 02:50 -O', '3', 5, 679.00, 0.00),
(29, 9, 'British Airways', '20h 33m', '10:15', 'ARR 19:55 -H', 'Non Stop', 2, 506.00, 670.00),
(30, 10, 'British Airways', '20h 33m', 'DEP 13:25-H', 'ARR 19:55 -H', 'Non Stop', 4, 677.00, 870.00),
(31, 11, 'British Airways', '06h 30m', 'DEP 13:25-H', 'ARR 19:55 -H', 'Non Stop', 4, 506.00, 870.00),
(32, 11, 'Kenya Airways', '20h 45m', 'DEP 17:25-K', 'ARR 14:10 -K', '2', 5, 377.00, 550.00),
(33, 11, 'Royal Air Maroc', '09h 40m', '543', '3f', '3', 5, 679.00, 0.00),
(34, 11, 'KLM', '10h 00m', 'DEP 10:00-K', 'ARR 21:00 -K', '1', 3, 490.00, 589.00),
(35, 11, 'Air France', '54', 'DEP 09:00-L', 'ARR 21:35 -Q', '1', 5, 455.00, 560.00),
(36, 12, 'British Airways', '06h 30m', '10:15', 'ARR 19:55 -H', 'Non Stop', 4, 506.00, 870.00),
(37, 12, 'Kenya Airways', '20h 45m', 'DEP 17:25-K', 'ARR 14:10 -K', '2', 2, 377.00, 550.00),
(38, 12, 'Royal Air Maroc', '09h 40m', 'f3r3f', 'ARR 02:50 -O', '1', 2, 679.00, 0.00),
(39, 12, 'KLM', '10h 00m', 'DEP 10:00-K', 'ARR 21:00 -K', '1', 1, 490.00, 589.00),
(40, 12, 'Air France', '54', 'DEP 09:00-L', 'ARR 21:35 -Q', 't4', 2, 455.00, 560.00),
(41, 12, 'Turkish Airlines', '13h 00m', 'DEP 06:35-Q', 'ARR 20:35', '2', 11, 345.00, 590.00),
(42, 13, 'British Airways', '06h 30m', '10:15', 'ARR 19:55 -H', 'Non Stop', 3, 506.00, 870.00);

-- --------------------------------------------------------

--
-- Table structure for table `available_flights`
--

DROP TABLE IF EXISTS `available_flights`;
CREATE TABLE IF NOT EXISTS `available_flights` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `from_location` varchar(100) NOT NULL,
  `to_location` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flight_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `available_flights`
--

INSERT INTO `available_flights` (`flight_id`, `from_location`, `to_location`, `created_at`) VALUES
(3, 'London ', 'Accra', '2024-12-24 18:56:56'),
(5, 'Accra', 'London', '2024-12-24 19:43:56'),
(8, 'London', 'Aggra', '2024-12-29 08:20:52'),
(9, 'Lahore', 'London', '2024-12-30 02:20:41'),
(11, 'United Kingdom', 'Abuja', '2024-12-30 20:17:01'),
(12, 'London ', 'Karachi', '2024-12-30 20:20:13'),
(13, 'London ', 'lorkana', '2024-12-30 20:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `from_location` varchar(100) NOT NULL,
  `to_location` varchar(100) NOT NULL,
  `departure_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `FAdult` int NOT NULL,
  `FChild` int NOT NULL,
  `FInfant` int NOT NULL,
  `FClsType` enum('ECONOMY','PREMIUM','BUSINESS') NOT NULL DEFAULT 'ECONOMY',
  `passengers` int NOT NULL,
  `status` enum('pending','confirmed','cancelled') DEFAULT 'pending',
  `trip_type` enum('one-way','round-trip') DEFAULT 'round-trip',
  `FAirLine` varchar(10) NOT NULL DEFAULT 'ALL',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_class_type` (`FClsType`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `phone`, `from_location`, `to_location`, `departure_date`, `return_date`, `FAdult`, `FChild`, `FInfant`, `FClsType`, `passengers`, `status`, `trip_type`, `FAirLine`, `created_at`, `deleted_at`) VALUES
(1, 'Haseeb', 'carparkingsapp@gmail.com', '03497503218', 'karachi', 'hyderbad', '2024-12-26', '2024-12-30', 2, 2, 1, 'ECONOMY', 5, 'pending', 'round-trip', 'ALL', '2024-12-27 18:55:19', NULL),
(2, 'Haseeb', 'haseeb4143017@gmail.com', '03497503218', 'delhi', 'karachi', '2024-12-21', '2024-12-03', 1, 1, 0, 'BUSINESS', 2, 'confirmed', 'round-trip', 'ALL', '2024-12-27 18:55:19', NULL),
(3, 'Test User', 'test@example.com', '1234567890', 'London', 'Paris', '2024-01-01', '2024-01-07', 2, 0, 0, 'PREMIUM', 2, 'pending', 'round-trip', 'ALL', '2024-12-27 18:55:19', NULL),
(4, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'londonj', 'tokyo', '2024-12-29', '2024-12-31', 1, 1, 2, '', 4, 'pending', 'round-trip', 'ALL', '2024-12-28 10:45:30', NULL),
(5, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'londonj', 'tokyo', '2024-12-29', '2024-12-31', 1, 1, 2, '', 4, 'pending', 'round-trip', 'ALL', '2024-12-28 10:45:46', NULL),
(6, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', '2025-01-02', 1, 0, 0, '', 1, 'pending', 'round-trip', 'LH', '2024-12-28 10:48:55', NULL),
(7, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:49:45', NULL),
(8, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:49:54', NULL),
(9, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:50:52', NULL),
(10, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:51:04', NULL),
(11, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:51:14', NULL),
(12, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:57:53', NULL),
(13, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 10:58:12', NULL),
(14, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2025-01-06', NULL, 1, 0, 0, '', 1, 'pending', 'one-way', 'LH', '2024-12-28 11:03:13', NULL),
(15, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', NULL, 4, 3, 3, '', 10, 'pending', 'one-way', 'ET', '2024-12-28 11:03:40', NULL),
(16, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', NULL, 4, 3, 3, '', 10, 'pending', 'one-way', 'ET', '2024-12-28 11:03:57', NULL),
(17, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', NULL, 4, 3, 3, '', 10, 'pending', 'one-way', 'ET', '2024-12-28 11:08:05', NULL),
(18, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', '2024-12-29', 4, 3, 3, '', 10, 'pending', 'round-trip', 'ET', '2024-12-28 11:17:16', NULL),
(19, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', '2024-12-29', 4, 3, 3, '', 10, 'pending', 'round-trip', 'ET', '2024-12-28 11:18:13', NULL),
(20, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'accura', '2024-12-29', '2025-01-03', 1, 0, 0, '', 1, 'pending', 'round-trip', 'EK', '2024-12-28 12:00:29', NULL),
(21, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'accura', '2024-12-29', '2025-01-03', 1, 0, 0, '', 1, 'pending', 'round-trip', 'EK', '2024-12-28 12:00:36', NULL),
(22, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'londonj', 'LONDON ALL (LON) : GB', '2025-01-03', '2024-12-19', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-28 12:21:58', NULL),
(23, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-31', '2024-12-29', 4, 3, 3, '', 10, 'pending', 'round-trip', 'ET', '2024-12-28 12:40:36', NULL),
(24, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'londonj', 'LONDON ALL (LON) : GB', '2024-12-20', '2025-01-03', 1, 4, 5, '', 10, 'pending', 'round-trip', 'QR', '2024-12-28 20:34:01', NULL),
(25, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'LONDON ALL (LON) : GB', '2025-01-08', '2025-01-09', 1, 0, 0, '', 1, 'pending', 'round-trip', 'WB', '2024-12-28 20:41:42', NULL),
(26, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2024-12-30', '2024-12-24', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-28 21:17:40', NULL),
(27, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'LONDON ALL (LON) : GB', '2024-12-19', '2024-12-18', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-28 21:41:31', NULL),
(28, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'LONDON ALL (LON) : GB', '2024-12-19', '2024-12-18', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-28 21:53:10', NULL),
(29, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'LONDON ALL (LON) : GB', '2024-12-19', '2024-12-18', 1, 0, 3, '', 4, 'pending', 'round-trip', 'VS', '2024-12-28 21:53:17', NULL),
(30, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Lahore', '2024-12-26', '2024-12-27', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-28 22:15:21', NULL),
(31, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2024-12-26', '2024-12-27', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-28 22:16:55', NULL),
(32, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'gg', 'LONDON CITY AIRPORT (LCY) : GB', '2024-12-26', '2025-01-02', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-28 22:24:43', NULL),
(33, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2024-12-13', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-28 22:28:50', NULL),
(34, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'Accra', '2024-12-30', '2025-01-02', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-29 06:22:49', NULL),
(35, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'lahore', 'Karachi', '2024-12-30', '2025-01-02', 1, 0, 0, '', 1, 'pending', 'round-trip', 'VS', '2024-12-29 06:37:58', NULL),
(36, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'Accra', '2024-12-25', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 07:06:04', NULL),
(37, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2025-01-09', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 07:13:12', NULL),
(38, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2025-01-09', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 07:15:34', NULL),
(39, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2025-01-09', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 07:26:51', NULL),
(40, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'london', 'accura', '2025-01-09', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 08:07:46', NULL),
(41, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Agra', 'benisica', '2024-12-19', '2025-01-01', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 08:11:30', NULL),
(42, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Lahore', 'London', '2024-12-26', '2025-01-03', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 08:19:10', NULL),
(43, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Lahore', 'London', '2024-12-26', '2025-01-03', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 08:19:32', NULL),
(44, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Accra', 'London', '2024-12-25', '2024-12-26', 1, 0, 0, '', 1, 'pending', 'round-trip', 'AF', '2024-12-29 10:15:40', NULL),
(45, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2024-12-25', '2024-12-26', 1, 0, 0, '', 1, 'pending', 'round-trip', 'AF', '2024-12-29 10:21:56', NULL),
(46, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Accra', 'London', '2024-12-31', '2025-01-08', 1, 0, 0, '', 1, 'pending', 'round-trip', 'KLM', '2024-12-29 19:02:10', NULL),
(47, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Accra', 'London', '2025-01-09', '2024-12-27', 2, 0, 0, '', 2, 'pending', 'round-trip', 'ALL', '2024-12-29 21:52:00', NULL),
(48, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Accra', 'London', '2024-12-31', '2025-01-09', 1, 1, 0, '', 2, 'pending', 'round-trip', 'QR', '2024-12-29 22:24:11', NULL),
(49, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Aggra', '2024-12-24', '2025-01-02', 4, 2, 1, '', 7, 'pending', 'round-trip', 'ALL', '2024-12-29 22:45:36', NULL),
(50, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2024-12-27', '2024-12-31', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-29 22:57:59', NULL),
(51, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2025-01-01', '2025-01-06', 3, 0, 0, '', 3, 'pending', 'round-trip', 'ALL', '2024-12-30 02:14:45', NULL),
(52, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Accra', 'London', '2025-01-02', '2025-01-30', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-30 02:17:13', NULL),
(53, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'Lahore', 'London', '2025-01-02', '2025-01-23', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-30 02:21:03', NULL),
(54, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'agggra', 'hero', '2024-12-31', '2025-01-08', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-30 13:21:40', NULL),
(55, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2025-01-09', '2025-01-22', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-30 19:44:17', NULL),
(56, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2025-01-09', '2025-01-22', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-30 20:18:04', NULL),
(57, 'Muhammad Haseeb Ahmad', 'haseeb4143017@gmail.com', '03497503218', 'London', 'Accra', '2025-01-03', '2025-01-08', 1, 0, 0, '', 1, 'pending', 'round-trip', 'ALL', '2024-12-31 21:47:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trash_items`
--

DROP TABLE IF EXISTS `trash_items`;
CREATE TABLE IF NOT EXISTS `trash_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `original_name` varchar(255) NOT NULL,
  `original_path` varchar(255) NOT NULL,
  `trash_name` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `is_dir` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
