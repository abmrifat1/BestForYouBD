-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 05:40 PM
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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'CSE', 'cse', 'Active', '2019-02-16 13:48:55', '2019-02-16 13:48:55'),
(3, 'EEE', 'eee', 'Active', '2019-02-16 13:59:08', '2019-02-16 13:59:08'),
(5, 'English', 'english', 'Active', '2019-02-19 10:29:44', '2019-02-19 10:29:44'),
(6, 'Bangla', 'bangla', 'Active', '2019-02-19 10:30:07', '2019-02-19 10:30:07'),
(7, 'Farmacy', 'farmacy', 'Active', '2019-02-19 10:30:18', '2019-02-19 10:30:18'),
(8, 'LAW', 'law', 'Active', '2019-02-19 10:30:28', '2019-02-19 10:30:28'),
(9, 'Mathematics', 'mathematics', 'Active', '2019-02-19 10:30:43', '2019-02-19 10:30:43'),
(10, 'Science', 'science', 'Active', '2019-02-19 10:30:51', '2019-02-19 10:30:51'),
(11, 'Artss', 'artss', 'DeActive', '2019-02-19 10:31:01', '2019-02-24 09:19:06'),
(12, 'Commmarce', 'commmarce', 'Active', '2019-02-19 10:31:11', '2019-02-19 10:31:11'),
(13, 'Social Science', 'socialscience', 'Active', '2019-02-19 10:31:40', '2019-02-19 10:31:40'),
(14, 'Machanical Engineering', 'machanical-engineering', 'Active', '2019-02-19 11:25:37', '2019-02-19 11:25:48');

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
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estDate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `chancellor` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_departments`
--

CREATE TABLE `hospital_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_departments`
--

INSERT INTO `hospital_departments` (`id`, `name`, `slug`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Medicine', 'medicine', 'Active', '2019-03-04 05:22:34', '2019-03-04 05:29:09'),
(3, 'Surgery', 'surgery', 'Active', '2019-03-04 06:46:03', '2019-03-04 06:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_department_relations`
--

CREATE TABLE `hospital_department_relations` (
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `hospital_department_id` int(10) UNSIGNED NOT NULL,
  `doctors` int(11) DEFAULT NULL,
  `foreign_degree_doctors` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estDate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `vice_chancellor` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `vice_chancellor`, `ownership_type`, `address`, `city`, `type`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'DIU', NULL, 'default.jpg', 'default.jpg', 'default.jpg', NULL, NULL, NULL, 'Dhaka', 'University', 'Active', '2019-03-02 06:33:48', '2019-03-02 06:34:07'),
(3, 'DU', '2019-03-02', '15516054083130.jpeg', 'default.jpg', 'default.jpg', NULL, NULL, 'Dhaka', 'Dhaka', 'University', 'Pending', '2019-03-03 03:30:09', '2019-03-03 03:30:19'),
(4, 'Sylhet ....', NULL, '15516120251206.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', NULL, 'Chittagong', 'University', 'Pending', '2019-03-03 05:20:25', '2019-03-03 05:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `institute_departments`
--

CREATE TABLE `institute_departments` (
  `institute_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `students` int(11) DEFAULT NULL,
  `faculty_members` int(11) DEFAULT NULL,
  `IEEB` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `computer` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institute_departments`
--

INSERT INTO `institute_departments` (`institute_id`, `department_id`, `cost`, `students`, `faculty_members`, `IEEB`, `credit`, `computer`, `created_at`, `updated_at`) VALUES
(2, 7, NULL, NULL, 17, NULL, 17, NULL, '2019-03-02 16:11:58', '2019-03-02 16:11:58'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-02 16:14:34', '2019-03-02 16:14:34'),
(2, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-02 16:14:43', '2019-03-02 16:14:43'),
(2, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-02 16:28:59', '2019-03-02 16:28:59'),
(3, 1, 17000, 800, 100, 'IEEB', 160, 100, '2019-03-03 03:30:09', '2019-03-03 03:30:50'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 03:30:10', '2019-03-03 03:30:10'),
(3, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 03:30:10', '2019-03-03 03:30:10'),
(3, 8, NULL, NULL, 55, NULL, 90, NULL, '2019-03-03 03:31:18', '2019-03-03 03:31:18'),
(4, 1, 6000000, 6000, 100, 'IEEB', 138, 120, '2019-03-03 05:20:25', '2019-03-03 05:21:19'),
(4, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25'),
(4, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25'),
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25');

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
(10, '2019_01_31_024103_create_forumcomments_table', 4),
(11, '2019_02_16_151938_create_departments_table', 5),
(12, '2019_02_17_071327_create_university_departments_table', 6),
(13, '2019_03_02_115238_create_institutes_table', 7),
(14, '2019_03_02_115419_create_institute_departments_table', 7),
(15, '2019_03_03_112903_create_hospitals_table', 8),
(16, '2019_03_03_113109_create_hospital_departments_table', 8),
(17, '2019_03_03_153103_create_hospital_department_relations_table', 8);

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
(1, 'Mahbubul Alam', 'mahbubul@gmail.com', NULL, '$2y$10$ZWF1mvNiUgvqYpmJxS2kleIYHxPeXhC4v.qU7aqYzqHKFMVOUl2VK', 'admin', 'I\'m the coolest man. It was a good deal.', '1551021627.jpeg', 'd77SUSPGmEKGRT6eT8J2nuQvF7TaIyWRroyvSqGmKA45FvVC1DJpTj3f7R6N', '2018-10-17 05:30:41', '2019-02-28 00:17:43'),
(3, 'Mohaimin', 'mahaimin@gmail.com', NULL, '$2y$10$g.2ymtDWvk37oyYGJR.bSeX7faoHTJXvvKSkguAvuhfoRMCMp8Vr.', 'author', 'good', NULL, NULL, '2018-10-18 05:27:32', '2018-10-18 05:27:32'),
(4, 'Nahid', 'nahid@gmail.com', NULL, '$2y$10$MbO1srk9VyVUqbM7T7NJ6O/.pEHsnVzg.zsHyFCEXK5LLE4dLHOfK', 'admin', NULL, NULL, NULL, '2018-10-30 07:11:18', '2018-10-30 07:14:02'),
(10, 'Abul kalam', 'kalam@gmail.com', NULL, '$2y$10$JA7gZQ1THjqkh6FeVqFuBuSRNR25gU9VQfB5P2h.EydWIWCMKTd86', 'user', NULL, NULL, NULL, '2018-11-02 06:41:54', '2018-11-02 06:41:54'),
(12, 'Mahbubul Alam', 'mitul@gmail.com', NULL, '$2y$10$3D5n0KH36Or0kRG3o8kbFusFS0nywvg8HN4MMK/pzghL3GpUcGnay', 'author', NULL, NULL, 'Xvfvc3MxjO7LZwdTLghhITHIcHqvujMma71TmWxbgeEOqu3V67DLMhvywvMv', '2018-11-04 02:03:23', '2018-11-04 02:03:23'),
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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
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
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_department_relations`
--
ALTER TABLE `hospital_department_relations`
  ADD KEY `hospital_department_relations_hospital_id_index` (`hospital_id`),
  ADD KEY `hospital_department_relations_hospital_department_id_index` (`hospital_department_id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_departments`
--
ALTER TABLE `institute_departments`
  ADD KEY `institute_departments_institute_id_index` (`institute_id`),
  ADD KEY `institute_departments_department_id_index` (`department_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hospital_department_relations`
--
ALTER TABLE `hospital_department_relations`
  ADD CONSTRAINT `hospital_department_relations_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `institute_departments`
--
ALTER TABLE `institute_departments`
  ADD CONSTRAINT `institute_departments_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
