-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 10:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
                            `id` int(10) UNSIGNED NOT NULL,
                            `name` varchar(191) NOT NULL,
                            `email` varchar(191) NOT NULL,
                            `comment` text NOT NULL,
                            `approved` tinyint(1) NOT NULL,
                            `post_id` int(10) UNSIGNED NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `post_id`, `created_at`, `updated_at`) VALUES
                                                                                                                 (1, 'raveena', 'r@gmail.com', 'hello', 1, 16, '2023-05-13 14:46:01', '2023-05-13 14:46:01'),
                                                                                                                 (2, 'raveena', 'r@gmail.com', 'hello', 1, 16, '2023-05-13 14:46:24', '2023-05-13 14:46:24'),
                                                                                                                 (3, 'raveena', 'r@gmail.com', 'hello', 1, 16, '2023-05-13 14:49:11', '2023-05-13 14:49:11'),
                                                                                                                 (4, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'hello', 1, 16, '2023-05-13 14:57:18', '2023-05-13 14:57:18'),
                                                                                                                 (5, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'what is it', 1, 16, '2023-05-13 14:57:33', '2023-05-13 14:57:33'),
                                                                                                                 (6, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'hello', 1, 16, '2023-05-13 15:04:30', '2023-05-13 15:04:30'),
                                                                                                                 (7, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'hello', 1, 15, '2023-05-13 15:04:42', '2023-05-13 15:04:42'),
                                                                                                                 (8, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'excuse', 1, 13, '2023-05-13 15:05:56', '2023-05-13 15:05:56'),
                                                                                                                 (9, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'wonder', 1, 11, '2023-05-13 15:06:08', '2023-05-13 15:06:08'),
                                                                                                                 (10, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'hello', 1, 16, '2023-05-14 17:27:58', '2023-05-14 17:27:58'),
                                                                                                                 (11, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'hello', 1, 16, '2023-05-14 17:27:59', '2023-05-14 17:27:59'),
                                                                                                                 (12, 'Ike-Ogoke Kosy', 'kosysteve03@gmail.com', 'maggie', 1, 9, '2023-05-14 19:32:25', '2023-05-14 19:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
                               `id` bigint(20) UNSIGNED NOT NULL,
                               `uuid` varchar(191) NOT NULL,
                               `connection` text NOT NULL,
                               `queue` text NOT NULL,
                               `payload` longtext NOT NULL,
                               `exception` longtext NOT NULL,
                               `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
                              `id` int(10) UNSIGNED NOT NULL,
                              `migration` varchar(191) NOT NULL,
                              `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
                                                          (1, '2014_10_12_000000_create_users_table', 1),
                                                          (2, '2014_10_12_100000_create_password_resets_table', 1),
                                                          (3, '2019_08_19_000000_create_failed_jobs_table', 1),
                                                          (4, '2021_02_22_174718_posts', 1),
                                                          (5, '2023_05_12_165052_create_likes_table', 2),
                                                          (6, '2023_05_12_165103_create_comments_table', 2),
                                                          (7, '2023_05_12_183206_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
                                   `email` varchar(191) NOT NULL,
                                   `token` varchar(191) NOT NULL,
                                   `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
                         `id` int(10) UNSIGNED NOT NULL,
                         `slug` varchar(191) NOT NULL,
                         `title` varchar(191) NOT NULL,
                         `description` longtext NOT NULL,
                         `image_path` varchar(191) NOT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         `user_id` bigint(20) UNSIGNED NOT NULL,
                         `info` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `image_path`, `created_at`, `updated_at`, `user_id`, `info`) VALUES
                                                                                                                            (6, 'discover-sydney-s-top-sights', 'Discover Sydney\'s Top Sights', 'Explore the iconic landmarks of Sydney!', '645a3320ca74e-Discover Sydney\'s Top Sights.jpg', '2023-05-09 10:48:48', '2023-05-09 10:48:48', 1, 'Explore the iconic landmarks of Sydney, including the Sydney Opera House, Harbour Bridge, and Bondi Beach. Enjoy the citys vibrant culture and delicious food scene while taking in its stunning scenery.Sydney is home to some of the most iconic landmarks in the world. From the Sydney Opera House to the Harbour Bridge, there is no shortage of things to see and do in this vibrant city. In addition to the famous sights, there are also hidden gems to discover, like the coastal walks and charming neighborhoods. Whether you\'re a first-time visitor or a seasoned traveler, Sydney is a destination that never fails to impress.'),
(7, 'new-york-city-guide', 'New York City Guide', 'Experience the city that never sleeps!', '645a33f982648-New York City Guide.jpg', '2023-05-09 10:52:25', '2023-05-09 10:52:25', 2, 'Experience the city that never sleeps! Visit the Empire State Building, the Statue of Liberty, and Central Park. Take in a Broadway show and enjoy some of the worlds best restaurants and nightlife.New York City is the ultimate destination for those seeking an adventure in the city that never sleeps. With its towering skyscrapers, world-class museums, and diverse neighborhoods, there is something for everyone in the Big Apple. Whether you want to explore the bright lights of Times Square or the trendy streets of Brooklyn, New York has it all.'),
(9, 'rio-de-janeiro-carnival', 'Rio de Janeiro Carnival', 'Join the festivities during Brazil\'s biggest event!', '645a35c7a06b5-Rio de Janeiro Carnival.jpg', '2023-05-09 11:00:07', '2023-05-09 11:00:07', 3, 'Join the festivities during Brazils biggest event! Dance the samba in the streets, enjoy the vibrant costumes and music, and indulge in traditional Brazilian cuisine. Explore Rios stunning beaches and iconic landmarks like Christ the Redeemer.Rio de Janeiros Carnival is one of the biggest parties in the world. The festival is known for its samba dancing, colorful costumes, and lively atmosphere. During the Carnival, the city comes alive with music and dancing, and visitors can join in on the fun by attending one of the many street parties or parades. Rio de Janeiro is a city that truly knows how to celebrate.'),
                                                                                                                            (10, 'san-francisco-food-scene', 'San Francisco Food Scene', 'Satisfy your taste buds in San Francisco!', '645a36a16a35d-San Francisco Food Scene.jpg', '2023-05-09 11:03:45', '2023-05-09 11:03:45', 4, 'Satisfy your taste buds in San Francisco! Sample the citys famous sourdough bread, fresh seafood, and artisanal coffee. Visit the Golden Gate Bridge, Alcatraz Island, and the vibrant neighborhoods like Chinatown and the Mission District.San Francisco is a food lovers paradise. With its diverse culinary scene, the city offers everything from fresh seafood to world-class sushi. Whether youre looking for a Michelin-starred restaurant or a casual eatery, San Francisco has it all. The city is also home to some of the best farmers markets in the country, where you can sample the freshest local produce.'),
                                                                                                                            (11, 'barcelona-culture-and-history', 'Barcelona Culture and History', 'Explore the rich history and culture of Barcelona!', '645a3780d302b-Barcelona Culture and History.png', '2023-05-09 11:07:28', '2023-05-09 11:07:28', 5, 'Explore the rich history and culture of Barcelona! Visit the iconic La Sagrada Familia, Park Guell, and the Gothic Quarter. Indulge in the citys famous cuisine and wine, and take in the lively street performances and festivals.Barcelona is a city that is rich in history and culture. From the Gothic Quarter to the modernist architecture of Antoni Gaudi, the city is a feast for the eyes. In addition to its stunning architecture, Barcelona is also known for its vibrant art scene and museums. Visitors can explore the works of famous artists like Picasso and Miro or simply soak up the atmosphere in the city\'s bustling cafes and markets.'),
(12, 'hong-kong-nightlife', 'Hong Kong Nightlife', 'Experience the vibrant nightlife of Hong Kong!', '645a385a30729-Hong Kong Nightlife.jpg', '2023-05-09 11:11:06', '2023-05-09 11:11:06', 6, 'Experience the vibrant nightlife of Hong Kong! Enjoy rooftop bars, night markets, and karaoke, and take in the stunning city skyline. Visit Victoria Peak, the Tian Tan Buddha, and enjoy traditional Cantonese cuisine.Start your evening with a visit to Victoria Peak for panoramic views of the city, then head to one of the many night markets for delicious street food and shopping. For a unique experience, try singing karaoke in one of the city\'s many private rooms. And of course, no trip to Hong Kong is complete without indulging in traditional Cantonese cuisine. Try dim sum, roasted meats, and other local specialties at one of the city\'s many restaurants.'),
(13, 'maui-s-best-beaches', 'Maui\'s Best Beaches', 'Relax on Maui\'s most beautiful beaches!', '645a392f7561e-Maui\'s Best Beaches.jpg', '2023-05-09 11:14:39', '2023-05-09 11:14:39', 7, 'Relax on Maui\'s most beautiful beaches! Swim, snorkel, and surf in crystal clear waters surrounded by lush greenery and stunning landscapes. Explore the Road to Hana, Haleakala National Park, and indulge in fresh seafood and tropical cocktails. Maui is known for its beautiful beaches, and for good reason! Whether you\'re looking to swim, snorkel, or surf, Maui\'s crystal clear waters are the perfect place to do it. Relax on white sand beaches surrounded by lush greenery and stunning landscapes. If you\'re up for an adventure, explore the Road to Hana, a scenic drive with breathtaking views of waterfalls, beaches, and rainforests. For a truly unforgettable experience, visit Haleakala National Park and watch the sunrise from the summit of the dormant volcano. And of course, no trip to Maui is complete without indulging in fresh seafood and tropical cocktails'),
                                                                                                                            (14, 'south-africa-safari-adventure', 'South Africa Safari Adventure', 'Embark on an unforgettable safari adventure in South Africa!', '645a3a3d18815-South Africa Safari Adventure.jpg', '2023-05-09 11:19:09', '2023-05-09 11:19:09', 8, 'Embark on an unforgettable safari adventure in South Africa! See the Big Five and other exotic wildlife in their natural habitat, and take in the stunning landscapes of Kruger National Park and other reserves. Explore Cape Town and indulge in local wine and cuisine.Embark on an unforgettable safari adventure in South Africa! Get up close and personal with the Big Five and other exotic wildlife in their natural habitat. Kruger National Park and other reserves offer stunning landscapes and unique experiences, like walking safaris and hot air balloon rides. When youre not out on safari, explore Cape Town and its many attractions, like Table Mountain and the V&A Waterfront. And don\'t forget to indulge in local wine and cuisine, like boerewors, biltong, and braai.'),
(15, 'dubai-luxury-travel', 'Dubai Luxury Travel', 'Dubai Luxury Travel\', \'Indulge in the ultimate luxury travel experience in Dubai!', '645a3bca96c0d-Dubai Luxury Travel.jpg', '2023-05-09 11:25:46', '2023-05-09 11:25:46', 9, 'Indulge in the ultimate luxury travel experience in Dubai! Visit the Burj Khalifa, the worlds tallest building, and the stunning Palm Jumeirah. Enjoy world-class shopping, dining, and entertainment, and take in the citys stunning desert landscapes. Indulge in the ultimate luxury travel experience in Dubai! Start your trip with a visit to the Burj Khalifa, the world\'s tallest building, for breathtaking views of the city. Then head to the stunning Palm Jumeirah for world-class shopping, dining, and entertainment. Dubai is known for its luxurious hotels, like the Burj Al Arab and the Atlantis, both of which offer stunning views and unparalleled service. For a unique experience, take a hot air balloon ride over the city\'s stunning desert landscapes. And of course, no trip to Dubai is complete without indulging in traditional Middle Eastern cuisine, like hummus, shawarma, and baklava.'),
(16, 'seattle-coffee-scene', 'Seattle Coffee Scene', 'Discover Seattle\'s thriving coffee culture!', '645a3cbda6898-Seattle Coffee Scene.jpg', '2023-05-09 11:29:49', '2023-05-09 11:29:49', 10, 'Discover Seattles thriving coffee culture! Visit famous coffee shops like Starbucks and enjoy artisanal roasts and blends from local favorites like Victrola Coffee Roasters and Caffe Vita. Take in the stunning views of the Space Needle and Puget Sound.Seattle is known for its thriving coffee culture, and theres no better place to experience it than in the birthplace of Starbucks. Visit famous coffee shops like the original Starbucks in Pike Place Market, or explore artisanal roasts and blends from local favorites like Victrola Coffee Roasters and Caffe Vita. Seattle is also home to stunning views of the Space Needle and Puget Sound, both of which are must-see attractions. And of course, no trip to Seattle is complete without trying the citys famous seafood, like salmon and Dungeness crab.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `id` bigint(20) UNSIGNED NOT NULL,
                         `name` varchar(191) NOT NULL,
                         `email` varchar(191) NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(191) NOT NULL,
                         `remember_token` varchar(100) DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                               (1, 'raveena', 'r@gmail.com', NULL, '$2y$10$bAJtVnb9AFOu9XRALTPVM.2vtNonETABK7/7nxyzDw6QuEHyw.gBS', 'IKNiK5juaLWUpBzMR12wvq2fl90sYE4HsOLYtdfoUno923QRXDDhpVBAfvPO', '2023-05-08 23:11:51', '2023-05-08 23:11:51'),
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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
    ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- Constraints for table `comments`
--
ALTER TABLE `comments`
    ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
    ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

