-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 07:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_22_174718_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(6, 'discover-sydney-s-top-sights', 'Discover Sydney\'s Top Sights', 'Explore the iconic landmarks of Sydney!', '645a3320ca74e-Discover Sydney\'s Top Sights.jpg', '2023-05-09 10:48:48', '2023-05-09 10:48:48', 1),
(7, 'new-york-city-guide', 'New York City Guide', 'Experience the city that never sleeps!', '645a33f982648-New York City Guide.jpg', '2023-05-09 10:52:25', '2023-05-09 10:52:25', 2),
(9, 'rio-de-janeiro-carnival', 'Rio de Janeiro Carnival', 'Join the festivities during Brazil\'s biggest event!', '645a35c7a06b5-Rio de Janeiro Carnival.jpg', '2023-05-09 11:00:07', '2023-05-09 11:00:07', 3),
(10, 'san-francisco-food-scene', 'San Francisco Food Scene', 'Satisfy your taste buds in San Francisco!', '645a36a16a35d-San Francisco Food Scene.jpg', '2023-05-09 11:03:45', '2023-05-09 11:03:45', 4),
(11, 'barcelona-culture-and-history', 'Barcelona Culture and History', 'Explore the rich history and culture of Barcelona!', '645a3780d302b-Barcelona Culture and History.png', '2023-05-09 11:07:28', '2023-05-09 11:07:28', 5),
(12, 'hong-kong-nightlife', 'Hong Kong Nightlife', 'Experience the vibrant nightlife of Hong Kong!', '645a385a30729-Hong Kong Nightlife.jpg', '2023-05-09 11:11:06', '2023-05-09 11:11:06', 6),
(13, 'maui-s-best-beaches', 'Maui\'s Best Beaches', 'Relax on Maui\'s most beautiful beaches!', '645a392f7561e-Maui\'s Best Beaches.jpg', '2023-05-09 11:14:39', '2023-05-09 11:14:39', 7),
(14, 'south-africa-safari-adventure', 'South Africa Safari Adventure', 'Embark on an unforgettable safari adventure in South Africa!', '645a3a3d18815-South Africa Safari Adventure.jpg', '2023-05-09 11:19:09', '2023-05-09 11:19:09', 8),
(15, 'dubai-luxury-travel', 'Dubai Luxury Travel', 'Dubai Luxury Travel\', \'Indulge in the ultimate luxury travel experience in Dubai!', '645a3bca96c0d-Dubai Luxury Travel.jpg', '2023-05-09 11:25:46', '2023-05-09 11:25:46', 9),
(16, 'seattle-coffee-scene', 'Seattle Coffee Scene', 'Discover Seattle\'s thriving coffee culture!', '645a3cbda6898-Seattle Coffee Scene.jpg', '2023-05-09 11:29:49', '2023-05-09 11:29:49', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'raveena', 'r@gmail.com', NULL, '$2y$10$bAJtVnb9AFOu9XRALTPVM.2vtNonETABK7/7nxyzDw6QuEHyw.gBS', NULL, '2023-05-08 23:11:51', '2023-05-08 23:11:51'),
(2, 'Jakub', 'j@gmail.com', NULL, '$2y$10$gna2HaZgxBdCm4i0r4ZoUOApSA5bjAe2ZjUFTJS/H77PmuliJhPRG', NULL, '2023-05-09 10:50:26', '2023-05-09 10:50:26'),
(3, 'Maggie', 'm@gmail.com', NULL, '$2y$10$oIsIhm/LAtOBHCjOPp/mBufBEanQQm98oVMiDVbvEL1qrHu41bPBu', NULL, '2023-05-09 10:54:10', '2023-05-09 10:54:10'),
(4, 'Kosy', 'k@gmail.com', NULL, '$2y$10$LU2URUcqSrRj2r1.N6LuBuYi0jr988nhO58mJ5EmwucKNK.cX5Cr2', NULL, '2023-05-09 11:00:50', '2023-05-09 11:00:50'),
(5, 'Anna', 'a@gmail.com', NULL, '$2y$10$Z37tCuO6cjgSZc/cY/jlG.SnWKW4YawwBz9VkzDNinuO3HWmPuivu', NULL, '2023-05-09 11:05:13', '2023-05-09 11:05:13'),
(6, 'Tom', 't@gmail.com', NULL, '$2y$10$819wo7GwYa6dAn/vOPb/duZizwMtv1c11eWgpmhQX7LT1C7zX8ewm', NULL, '2023-05-09 11:08:29', '2023-05-09 11:08:29'),
(7, 'Bob', 'b@gmail.com', NULL, '$2y$10$NO6KcTzUSq6oJMmmhm2sL.tO9Nz1eeIQYFe22M0GYJ35Y21xsYPo.', NULL, '2023-05-09 11:12:26', '2023-05-09 11:12:26'),
(8, 'John', 'j1@gmail.com', NULL, '$2y$10$KrHYKVDIYkDvIu7185ThROxWG8Go9H/P025QPckuktBjYgCch/ImS', NULL, '2023-05-09 11:15:52', '2023-05-09 11:15:52'),
(9, 'Ethan', 'e@gmail.com', NULL, '$2y$10$czVTCfxWSOtLoI/qSXH3NeJELL/DMw8dLXsCEbPUMg5GIcAufxqIe', NULL, '2023-05-09 11:19:50', '2023-05-09 11:19:50'),
(10, 'Smit', 's@gmail.com', NULL, '$2y$10$Yo20trW1G..eyvrdnVBuCe0Q8I0guGrKZLMLVmHUEQ2JKiFGsBEvG', NULL, '2023-05-09 11:26:44', '2023-05-09 11:26:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Add a new column to the existing table
ALTER TABLE `posts` ADD COLUMN `info` TEXT;

-- Update the new column with information related to each post's title
UPDATE `posts`
SET `info` = CASE 
               WHEN `title` = 'Discover Sydney\'s Top Sights' THEN 'Explore the iconic landmarks of Sydney, including the Sydney Opera House, Harbour Bridge, and Bondi Beach. Enjoy the city\'s vibrant culture and delicious food scene while taking in its stunning scenery.'
               WHEN `title` = 'New York City Guide' THEN 'Experience the city that never sleeps! Visit the Empire State Building, the Statue of Liberty, and Central Park. Take in a Broadway show and enjoy some of the world\'s best restaurants and nightlife.'
               WHEN `title` = 'Rio de Janeiro Carnival' THEN 'Join the festivities during Brazil\'s biggest event! Dance the samba in the streets, enjoy the vibrant costumes and music, and indulge in traditional Brazilian cuisine. Explore Rio\'s stunning beaches and iconic landmarks like Christ the Redeemer.'
               WHEN `title` = 'San Francisco Food Scene' THEN 'Satisfy your taste buds in San Francisco! Sample the city\'s famous sourdough bread, fresh seafood, and artisanal coffee. Visit the Golden Gate Bridge, Alcatraz Island, and the vibrant neighborhoods like Chinatown and the Mission District.'
               WHEN `title` = 'Barcelona Culture and History' THEN 'Explore the rich history and culture of Barcelona! Visit the iconic La Sagrada Familia, Park Guell, and the Gothic Quarter. Indulge in the city\'s famous cuisine and wine, and take in the lively street performances and festivals.'
               WHEN `title` = 'Hong Kong Nightlife' THEN 'Experience the vibrant nightlife of Hong Kong! Enjoy rooftop bars, night markets, and karaoke, and take in the stunning city skyline. Visit Victoria Peak, the Tian Tan Buddha, and enjoy traditional Cantonese cuisine.'
               WHEN `title` = 'Maui\'s Best Beaches' THEN 'Relax on Maui\'s most beautiful beaches! Swim, snorkel, and surf in crystal clear waters surrounded by lush greenery and stunning landscapes. Explore the Road to Hana, Haleakala National Park, and indulge in fresh seafood and tropical cocktails.'
               WHEN `title` = 'South Africa Safari Adventure' THEN 'Embark on an unforgettable safari adventure in South Africa! See the Big Five and other exotic wildlife in their natural habitat, and take in the stunning landscapes of Kruger National Park and other reserves. Explore Cape Town and indulge in local wine and cuisine.'
               WHEN `title` = 'Dubai Luxury Travel' THEN 'Indulge in the ultimate luxury travel experience in Dubai! Visit the Burj Khalifa, the world\'s tallest building, and the stunning Palm Jumeirah. Enjoy world-class shopping, dining, and entertainment, and take in the city\'s stunning desert landscapes.'
               WHEN `title` = 'Seattle Coffee Scene' THEN 'Discover Seattle\'s thriving coffee culture! Visit famous coffee shops like Starbucks and enjoy artisanal roasts and blends from local favorites like Victrola Coffee Roasters and Caffe Vita. Take in the stunning views of the Space Needle and Puget Sound.'
             END;
