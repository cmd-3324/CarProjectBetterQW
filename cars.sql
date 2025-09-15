-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 15, 2025 at 12:41 PM
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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `car_id` bigint NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_as` int NOT NULL DEFAULT '0',
  `sell_number` int NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horsepower` int DEFAULT NULL,
  `torque` int DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_images` json DEFAULT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fav_num` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_id`, `name`, `available_as`, `sell_number`, `price`, `engine`, `horsepower`, `torque`, `main_image`, `gallery_images`, `discription`, `created_at`, `updated_at`, `fav_num`) VALUES
(1, 824927, 'Carter-Walker', 10, 0, 38985.00, 'ENG-4288', 302, 224, 'https://via.placeholder.com/640x480.png/004400?text=transport+nisi', '[\"https://via.placeholder.com/640x480.png/006677?text=transport+eveniet\", \"https://via.placeholder.com/640x480.png/00ee22?text=transport+nihil\", \"https://via.placeholder.com/640x480.png/0088ff?text=transport+nesciunt\"]', 'Error exercitationem quaerat voluptatem. Tempora perspiciatis atque aut est. Autem corrupti perferendis culpa culpa modi.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(2, 454353, 'Keeling-Ledner', 5, 0, 74045.00, 'ENG-8455', 230, 334, 'https://via.placeholder.com/640x480.png/0022ee?text=transport+est', '[\"https://via.placeholder.com/640x480.png/00ccbb?text=transport+ratione\", \"https://via.placeholder.com/640x480.png/0022dd?text=transport+facere\", \"https://via.placeholder.com/640x480.png/009911?text=transport+quo\"]', 'Impedit delectus explicabo quia at officia. Possimus vel tempore nesciunt omnis aut sequi.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(3, 95562, 'Terry, Tillman and Ondricka', 10, 0, 92091.00, 'ENG-7802', 299, 172, 'https://via.placeholder.com/640x480.png/00ff77?text=transport+quam', '[\"https://via.placeholder.com/640x480.png/0022aa?text=transport+rerum\", \"https://via.placeholder.com/640x480.png/003399?text=transport+nulla\", \"https://via.placeholder.com/640x480.png/0055cc?text=transport+sunt\"]', 'Reprehenderit enim omnis neque porro ea et. Sit aut qui doloribus voluptas molestias quae suscipit et. Omnis repellendus et cupiditate doloribus. Harum ut consectetur enim veniam et molestiae.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(4, 991347, 'Heathcote, Bauch and Bailey', 9, 0, 73225.00, 'ENG-5739', 215, 441, 'https://via.placeholder.com/640x480.png/00bbaa?text=transport+alias', '[\"https://via.placeholder.com/640x480.png/0022ee?text=transport+incidunt\", \"https://via.placeholder.com/640x480.png/00ff77?text=transport+magnam\", \"https://via.placeholder.com/640x480.png/00ccee?text=transport+unde\"]', 'Et iste fugit ducimus autem labore. Magnam iste facere aut excepturi. Hic quo mollitia dolorum earum praesentium. Non vero aperiam rerum ullam ut. Aut alias voluptas iure consectetur illum at molestiae consequuntur.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(5, 742942, 'Schoen, Hermiston and Abernathy', 6, 0, 58085.00, 'ENG-7357', 78, 369, 'https://via.placeholder.com/640x480.png/00bbdd?text=transport+enim', '[\"https://via.placeholder.com/640x480.png/0022ff?text=transport+corrupti\", \"https://via.placeholder.com/640x480.png/00eeaa?text=transport+nisi\", \"https://via.placeholder.com/640x480.png/000055?text=transport+impedit\"]', 'Ipsum distinctio pariatur ut fuga fugiat a et. Non possimus excepturi illo qui animi esse voluptatem. Et laudantium et vitae exercitationem. Soluta nesciunt placeat temporibus dolores ex quo quia.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(6, 52347, 'Haley-Buckridge', 10, 0, 74941.00, 'ENG-8374', 285, 109, 'https://via.placeholder.com/640x480.png/00dddd?text=transport+dolorem', '[\"https://via.placeholder.com/640x480.png/00aa66?text=transport+aut\", \"https://via.placeholder.com/640x480.png/003333?text=transport+rem\", \"https://via.placeholder.com/640x480.png/002222?text=transport+tempore\"]', 'Illum consequuntur sint aliquam consectetur voluptas dolores quo. Eum maiores explicabo officiis in. Voluptate ab et soluta repellat eum.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(7, 189898, 'Rosenbaum, Terry and Predovic', 4, 0, 92991.00, 'ENG-8378', 116, 341, 'https://via.placeholder.com/640x480.png/00aa33?text=transport+facilis', '[\"https://via.placeholder.com/640x480.png/00aa22?text=transport+et\", \"https://via.placeholder.com/640x480.png/00ccff?text=transport+facilis\", \"https://via.placeholder.com/640x480.png/004411?text=transport+ducimus\"]', 'Enim assumenda consequatur error et consequatur qui. Ab repellat tenetur aperiam qui voluptatibus incidunt. Deserunt autem ea facilis tempore qui sunt ut et. Adipisci consequatur aut laboriosam aut placeat.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(8, 443139, 'Berge LLC', 5, 0, 11171.00, 'ENG-6021', 304, 371, 'https://via.placeholder.com/640x480.png/00bb55?text=transport+reprehenderit', '[\"https://via.placeholder.com/640x480.png/0077dd?text=transport+qui\", \"https://via.placeholder.com/640x480.png/004455?text=transport+aliquam\", \"https://via.placeholder.com/640x480.png/0099ff?text=transport+recusandae\"]', 'Tenetur et eaque harum est quibusdam. Temporibus vel sit tenetur laboriosam tempora molestiae sapiente. Molestias nemo veniam saepe sit. Dolorem quaerat a nostrum odit qui.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(9, 956878, 'O\'Reilly, Hill and Hilpert', 2, 0, 30350.00, 'ENG-2855', 202, 343, 'https://via.placeholder.com/640x480.png/0055ff?text=transport+voluptatem', '[\"https://via.placeholder.com/640x480.png/00cc33?text=transport+qui\", \"https://via.placeholder.com/640x480.png/000000?text=transport+id\", \"https://via.placeholder.com/640x480.png/00bb99?text=transport+architecto\"]', 'Explicabo quo quo enim facere a quo suscipit illo. Error eum commodi earum.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(10, 814593, 'Connelly Inc', 5, 0, 84762.00, 'ENG-1150', 342, 338, 'https://via.placeholder.com/640x480.png/003311?text=transport+autem', '[\"https://via.placeholder.com/640x480.png/00ddaa?text=transport+et\", \"https://via.placeholder.com/640x480.png/000044?text=transport+aut\", \"https://via.placeholder.com/640x480.png/0099dd?text=transport+est\"]', 'Esse eius optio molestias voluptatum architecto sit. Quo magni placeat commodi fugiat. Laborum id est fugit non facilis. Asperiores enim itaque vel voluptatem eius consequatur excepturi.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(11, 661986, 'Jerde-Schultz', 6, 0, 23006.00, 'ENG-9524', 94, 333, 'https://via.placeholder.com/640x480.png/0055cc?text=transport+architecto', '[\"https://via.placeholder.com/640x480.png/0077cc?text=transport+vel\", \"https://via.placeholder.com/640x480.png/009977?text=transport+aliquid\", \"https://via.placeholder.com/640x480.png/00dd11?text=transport+nemo\"]', 'Quia sed vitae qui velit. Ut numquam vel rem repudiandae sint maxime neque.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(12, 968233, 'Tromp Ltd', 9, 0, 83285.00, 'ENG-4968', 179, 424, 'https://via.placeholder.com/640x480.png/002222?text=transport+quisquam', '[\"https://via.placeholder.com/640x480.png/00cc99?text=transport+error\", \"https://via.placeholder.com/640x480.png/00aa88?text=transport+repellat\", \"https://via.placeholder.com/640x480.png/00aa44?text=transport+ut\"]', 'Et est est et esse ut odio. Velit hic quasi amet cupiditate ut. Consequatur qui tempora nobis tempora.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(13, 847407, 'Treutel, Franecki and Keeling', 9, 0, 74582.00, 'ENG-4066', 189, 370, 'https://via.placeholder.com/640x480.png/000099?text=transport+nemo', '[\"https://via.placeholder.com/640x480.png/00ee88?text=transport+quo\", \"https://via.placeholder.com/640x480.png/00ddee?text=transport+aut\", \"https://via.placeholder.com/640x480.png/00bb88?text=transport+sint\"]', 'Numquam vero laborum nobis dolores blanditiis qui. Perspiciatis dolorum dolor tempora. Consequatur et quisquam nam cupiditate. Aperiam ipsa ad porro qui delectus. Culpa non iusto odit nam.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(14, 271667, 'Haag Inc', 5, 0, 39245.00, 'ENG-9510', 191, 441, 'https://via.placeholder.com/640x480.png/003388?text=transport+quidem', '[\"https://via.placeholder.com/640x480.png/005522?text=transport+molestias\", \"https://via.placeholder.com/640x480.png/00ddbb?text=transport+modi\", \"https://via.placeholder.com/640x480.png/0099aa?text=transport+ducimus\"]', 'Eum laboriosam soluta minima sint. Quae laborum voluptas eum placeat in quia earum ut. Omnis aut voluptas ipsum qui omnis molestiae pariatur et. Officia et deserunt minima rerum.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0),
(15, 614393, 'McClure-Leffler', 10, 0, 75530.00, 'ENG-9497', 146, 290, 'https://via.placeholder.com/640x480.png/00ffcc?text=transport+exercitationem', '[\"https://via.placeholder.com/640x480.png/00cc77?text=transport+voluptas\", \"https://via.placeholder.com/640x480.png/0077ff?text=transport+et\", \"https://via.placeholder.com/640x480.png/00eeff?text=transport+ut\"]', 'Pariatur voluptas amet numquam qui ab dolorem impedit. Ea voluptatum deleniti sunt est. Porro pariatur repellat et veritatis ab nihil. Ipsum sunt in eos et ducimus.', '2025-09-15 08:42:33', '2025-09-15 08:42:33', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
