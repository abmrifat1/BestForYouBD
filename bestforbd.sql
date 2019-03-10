-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 10:43 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestforbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `isActive` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'University', 'university', 'Active', '2018-11-30 01:11:02', '2018-11-29 19:11:02'),
(3, 'School', 'school', 'Active', '2019-02-09 19:54:17', '2019-02-09 13:54:17'),
(4, 'Hospital', 'hospital', 'Active', '2018-11-30 01:10:48', '2018-11-29 19:10:48'),
(5, 'Colleges', 'colleges', 'Active', '2018-12-09 08:09:07', '2018-12-09 02:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `forumcomments`
--

CREATE TABLE `forumcomments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forumcomments`
--

INSERT INTO `forumcomments` (`id`, `name`, `post_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 'Jami khan', '12', 'Dhanmondi boys school is best.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(2, 'Imaran Hossain', '12', 'Residential model school is best.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(3, 'Imaran Hossain', '12', 'Residential model school is best.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(4, 'Abu Kayes', '12', 'Dhaka college is best. It\'s nearby Dhanmondi.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(5, 'Sharif Hossain', '12', 'Sukrabad school is best for this place', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(6, 'Nilofa Akther', '12', 'New model School is best.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(7, 'Shahad hossain', '12', 'Dhaka college is best for class 8.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(8, 'Mostak', '12', 'Dhaka Residencial model school best.', '2019-01-15 21:07:07', '2019-01-15 21:07:07'),
(9, 'Abdul wasim', '12', 'ধানমন্ডি বয়েস স্কুল ভালো হবে।', '2019-01-31 03:39:08', '2019-01-31 03:39:08'),
(10, 'Abm Rifat', '12', 'ঢাকা কলেজ এ ভালো হবে আমি মনে করি।', '2019-01-31 03:40:11', '2019-01-31 03:40:11'),
(11, 'Mahbub', '9', 'I think squar hospital is the best in dhaka for cancer hospital.', '2019-01-31 07:38:21', '2019-01-31 07:38:21'),
(12, 'Sattar', '13', 'This is fantastic.', '2019-02-01 08:37:30', '2019-02-01 08:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` mediumint(9) DEFAULT NULL,
  `isActive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `slug`, `name`, `title`, `description`, `category_id`, `email`, `views`, `isActive`, `created_at`, `updated_at`) VALUES
(4, 'Best-University', 'Ridoy Khan', 'Best University', 'Hey, I want to enroll a private university. Can anybody tell me which one will be best?', '1', 'mahbubulalam5676@gmail.com', 5, 'Active', '2019-01-13 06:22:35', '2019-01-29 01:37:37'),
(5, 'হাসপাতাল-ভালো-হবে', 'Alam', 'হাসপাতাল ভালো হবে', 'ঢাকার মধ্যে ক্যান্সার চিকিৎসা এর জন্যে কোন হাসপাতাল ভালো হবে', '4', 'alammahbubul5676@gmail.com', 4, 'Active', '2019-01-13 06:35:13', '2019-01-13 06:35:13'),
(6, 'Best-College-in-Dhanmondi', 'John Doe', 'Best College in Dhanmondi', 'Hey! Can you please tell me best College in Dhanmondi for Arts department.', '5', 'alammahbubul5676@gmail.com', 12, 'Active', '2019-01-13 09:41:10', '2019-01-29 01:37:30'),
(7, 'Best-Hospital-for-Othopadic', 'Mahbubul Alam', 'Best Hospital for Othopadic', 'Hey, Hello, What\'s up guys, I wanna know about your opinion.', '4', 'mahbubulalam@gmail.com', 7, 'Pending', '2019-01-13 13:17:11', '2019-01-30 23:12:53'),
(9, 'hospital', 'Emamul', 'Hospital', 'Hello, I wanna know about cancer hospital in Dhaka. Do you have any knowledge?', '4', 'dearemamul@gmail.com', 10, 'Active', '2019-01-27 07:12:06', '2019-01-29 01:37:22'),
(12, 'school', 'Abdul Kader', 'School', 'Which school will be best in Dhanmondi for class 8?', '3', NULL, 36, 'Active', '2019-01-29 15:15:49', '2019-01-29 09:17:37');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(8, '2019_01_12_094426_create_forums_table', 3),
(9, '2019_01_30_064601_create_universities_table', 4),
(10, '2019_01_31_024103_create_forumcomments_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ixSf4oSKWZzHtlZZOXaqOFSwTQlxaxYnasslpvMc', 'http://localhost', 1, 0, 0, '2018-10-27 00:02:29', '2018-10-27 00:02:29'),
(2, NULL, 'Laravel Password Grant Client', '5RV1Ih0gfmoUr2pN9qUEniaFi3nLN75terlAByw6', 'http://localhost', 0, 1, 0, '2018-10-27 00:02:29', '2018-10-27 00:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-27 00:02:29', '2018-10-27 00:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estDate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `main_img` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `gallery_img_1` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `gallery_img_2` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `IEEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vice_chancellor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `estDate`, `created_at`, `updated_at`, `main_img`, `gallery_img_1`, `gallery_img_2`, `IEEB`, `vice_chancellor`, `department`, `address`, `city`, `type`, `isActive`) VALUES
(8, 'Daffodil International University', '2003-02-10', '2019-02-15 15:31:16', '2019-02-15 15:43:11', '15502669914547.jpeg', '1550266991802.jpeg', '15502662923785.jpeg', NULL, NULL, NULL, 'Dhanmondi 27', 'Dhaka', 'University', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahbubul Alam', 'mahbubul@gmail.com', NULL, '$2y$10$fex2aJ7.JTSA04hpYtI5OOFCKgc/2NTiICmC5qPS77Qs6Pzt0wovS', 'admin', 'I\'m the coolest man. It was a good deal.', '1550024452.jpeg', 'd77SUSPGmEKGRT6eT8J2nuQvF7TaIyWRroyvSqGmKA45FvVC1DJpTj3f7R6N', '2018-10-17 05:30:41', '2019-02-12 20:20:52'),
(3, 'Mohaimin', 'mahaimin@gmail.com', NULL, '$2y$10$g.2ymtDWvk37oyYGJR.bSeX7faoHTJXvvKSkguAvuhfoRMCMp8Vr.', 'author', 'good', NULL, NULL, '2018-10-18 05:27:32', '2018-10-18 05:27:32'),
(4, 'Nahid', 'nahid@gmail.com', NULL, '$2y$10$MbO1srk9VyVUqbM7T7NJ6O/.pEHsnVzg.zsHyFCEXK5LLE4dLHOfK', 'admin', NULL, NULL, NULL, '2018-10-30 07:11:18', '2018-10-30 07:14:02'),
(6, 'sss', 'dd@dd.com', NULL, '$2y$10$.XbXlYRERZvsSRH31Anq5.4KB/tHzjhbeFD9sXnEXJ.MiHUnditpu', 'user', NULL, NULL, NULL, '2018-11-02 06:40:56', '2018-11-02 06:40:56'),
(7, 'ddd', 'ddd@da.sd', NULL, '$2y$10$29jQEVn12RqC3DmMR0pe6uCKUiKvZgCav.BdclZrjUI4Fk9atR6bi', 'author', NULL, NULL, NULL, '2018-11-02 06:41:09', '2018-11-02 06:41:09'),
(8, 'adada', 'adds@dfgs.sdf', NULL, '$2y$10$OrSG4.V.BAOTRRU/3PHb2uCzJClTM9TBwXqT0t24I.RVC8BIOzJIi', 'admin', NULL, NULL, NULL, '2018-11-02 06:41:23', '2018-11-02 06:41:23'),
(10, 'Abul kalam', 'kalam@gmail.com', NULL, '$2y$10$JA7gZQ1THjqkh6FeVqFuBuSRNR25gU9VQfB5P2h.EydWIWCMKTd86', 'user', NULL, NULL, NULL, '2018-11-02 06:41:54', '2018-11-02 06:41:54'),
(11, 'Niom naki', 'niom@gmail.com', NULL, '$2y$10$hPwYAWjot75dyVl5OG/yFOx6/Lxl2EhFGV0bsTMnMZO9APEWmSA/2', 'user', 'At the end', NULL, NULL, '2018-11-02 06:42:27', '2018-11-02 06:42:27'),
(12, 'Mahbubul Alam', 'mitul@gmail.com', NULL, '$2y$10$3D5n0KH36Or0kRG3o8kbFusFS0nywvg8HN4MMK/pzghL3GpUcGnay', 'author', NULL, NULL, 'Xvfvc3MxjO7LZwdTLghhITHIcHqvujMma71TmWxbgeEOqu3V67DLMhvywvMv', '2018-11-04 02:03:23', '2018-11-04 02:03:23'),
(14, 'jalo', 'jalo@gmail.com', NULL, '$2y$10$m8qd4Q8TA7I0rMfQ..MiuuCPy19yYHPerWp.emGdGFRdDShn/cQs6', 'user', NULL, NULL, '4KsZQJx3hwkXsMRCcCZlgLwpX6q8A4NKG1E4W37RwGOM2UWKyd2j0ntpA3Iw', '2018-11-04 13:30:58', '2018-11-04 13:30:58'),
(15, 'Habib', 'habib@gmail.com', NULL, '$2y$10$wsWtzW1nmr7MTFFHFoZETuFqVLz1.ib85bEikImNolPlWbi86aXuO', 'author', NULL, 'profile.png', 'FYGd1m0b2PodcLXGOXqbTfG3iYx9ESSryBcRFvJD3g20OgbO5TErT3UkRrqK', '2018-12-09 02:07:14', '2018-12-09 02:08:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumcomments`
--
ALTER TABLE `forumcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `forumcomments`
--
ALTER TABLE `forumcomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
