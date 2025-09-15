-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 15, 2025 at 12:42 PM
-- Server version: 9.1.0
-- PHP Version: 8.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel11`
--

-- --------------------------------------------------------

--
-- Table structure for table `carsusers`
--

DROP TABLE IF EXISTS `carsusers`;
CREATE TABLE IF NOT EXISTS `carsusers` (
  `UserID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `UserName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `carsusers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carsusers`
--

INSERT INTO `carsusers` (`UserID`, `UserName`, `Active`, `email`, `email_verified_at`, `phone_number`, `Location`, `Avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jermain43', 1, 'ardith76@example.org', NULL, '(608) 288-7159', 'Gardnershire', 'BATCH-4461', '$2y$12$OMUDN8YY1hVaRAhhR37oNOa5o5ZT1gASHkXyX5sbM9NYty/buK8Bm', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(2, 'jadyn.schaden', 1, 'thompson.hallie@example.org', NULL, '351.958.6620', 'Wilsonshire', 'BATCH-9566', '$2y$12$sTqhkdmrJAIH5SBYQeTmcOUGSRrks3Ozp2xEVWl9GlsHIDK32XZFu', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(3, 'schuster.pat', 0, 'zbrakus@example.com', NULL, '1-859-890-5255', 'McDermottstad', 'BATCH-2189', '$2y$12$3dEUNQO1Emp1UMgJmwlu8eECwlzeZ1LqQlT0LIxxOwVRhVLiIcUWS', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(4, 'ipowlowski', 1, 'thomas84@example.org', NULL, '+1 (458) 719-3064', 'Whiteborough', 'BATCH-8972', '$2y$12$O/OkaRB5AXHp/vCicPxjNeJ7S235rOXac9UV3jhRYFuMwAZ5/cc6m', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(5, 'rosa.hill', 0, 'zora.heller@example.com', NULL, '(319) 618-8270', 'Lake Kelton', 'BATCH-6753', '$2y$12$maQoAnNye74nNm9mWvLPJOzeQtAa7XkIiM8H2rofNJ/kA9DnyWkOa', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(6, 'gilbert.haley', 1, 'osvaldo99@example.com', NULL, '283.740.1780', 'Kovacekville', 'BATCH-3494', '$2y$12$AjVocGQoiZZMlVAEyiHESeBKujkCOdk7.2REH8Ywzdb0Tzhh8WklW', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(7, 'ppowlowski', 1, 'issac.hahn@example.net', NULL, '+1 (916) 977-0709', 'Abdulview', 'BATCH-5563', '$2y$12$ZOgfcZfHK7a3QjuYFNPmxOorM8ZOi4SNhW3Bryi.sJj4rHBfzlag2', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(8, 'ohowe', 0, 'willow38@example.net', NULL, '225.433.0420', 'Port Rosetta', 'BATCH-3204', '$2y$12$iSj9Vv0JL97p8fxl9IiIZOAYzrLXFqSpqVosslMuAlC87PcMhv7iy', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(9, 'swaniawski.angelo', 1, 'ivory.quitzon@example.org', NULL, '475.792.1561', 'Berenicemouth', 'BATCH-3867', '$2y$12$p/yH38yfRNyz2M6q53hQiutbib/ZQMpAdVwOpHfGZ8tTKHJOIY2re', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33'),
(10, 'omoen', 1, 'kayley.metz@example.org', NULL, '+1.458.660.5136', 'East Karineshire', 'BATCH-5213', '$2y$12$UDq5B5hD2lJbq9IL9kEbj.DYzi78qhMUiAfyQ3ANZhrr0GJa1DkVS', NULL, '2025-09-15 08:42:33', '2025-09-15 08:42:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
