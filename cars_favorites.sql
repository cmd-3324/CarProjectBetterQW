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
-- Table structure for table `cars_favorites`
--

DROP TABLE IF EXISTS `cars_favorites`;
CREATE TABLE IF NOT EXISTS `cars_favorites` (
  `car_id` bigint UNSIGNED NOT NULL,
  `UserID` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`,`car_id`),
  KEY `cars_favorites_car_id_foreign` (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `cars_favorites`
--
DROP TRIGGER IF EXISTS `after_favorites_delete`;
DELIMITER $$
CREATE TRIGGER `after_favorites_delete` AFTER DELETE ON `cars_favorites` FOR EACH ROW BEGIN
                UPDATE cars 
                SET fav_num = (
                    SELECT COUNT(*) 
                    FROM cars_favorites 
                    WHERE car_id = OLD.car_id
                ) 
                WHERE car_id = OLD.car_id;
            END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `after_favorites_insert`;
DELIMITER $$
CREATE TRIGGER `after_favorites_insert` AFTER INSERT ON `cars_favorites` FOR EACH ROW BEGIN
                UPDATE cars 
                SET fav_num = (
                    SELECT COUNT(*) 
                    FROM cars_favorites 
                    WHERE car_id = NEW.car_id
                ) 
                WHERE car_id = NEW.car_id;
            END
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
