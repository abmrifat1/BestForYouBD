-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 06:31 PM
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
(1, 'Hospital', 'hospital', 'Active', '2019-03-24 04:20:36', '2019-03-24 04:20:36'),
(2, 'Hotel', 'hotel', 'Active', '2019-03-24 04:20:43', '2019-03-24 04:20:43'),
(3, 'Institute', 'institute', 'Active', '2019-03-24 04:21:56', '2019-03-24 04:21:56'),
(4, 'Tour Place', 'tourplace', 'Active', '2019-03-24 04:22:27', '2019-03-24 04:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_type_id` int(10) UNSIGNED NOT NULL,
  `isActive` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `institute_type_id`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Science', 1, 'Active', '2019-03-22 03:24:12', '2019-03-22 03:30:39'),
(2, 'Humanities', 1, 'Active', '2019-03-22 03:24:53', '2019-03-25 04:31:42'),
(3, 'Bussiness Studies', 1, 'Active', '2019-03-22 03:25:06', '2019-03-22 03:25:06'),
(4, 'Science', 2, 'Active', '2019-03-22 03:25:19', '2019-03-22 03:25:19'),
(5, 'Bussiness Studies', 2, 'Active', '2019-03-22 03:25:29', '2019-03-22 03:25:29'),
(6, 'Arts', 2, 'Active', '2019-03-22 03:25:40', '2019-03-22 03:25:40'),
(7, 'Computer Science & Engineering', 3, 'Active', '2019-03-22 03:25:59', '2019-03-22 03:25:59'),
(8, 'Electrical & Electronics Engineering', 3, 'Active', '2019-03-22 03:26:15', '2019-03-22 03:26:15'),
(9, 'English', 3, 'Active', '2019-03-22 03:26:29', '2019-03-22 03:26:29'),
(10, 'Finance', 3, 'Active', '2019-03-22 03:26:49', '2019-03-22 03:26:49'),
(11, 'Law', 3, 'Active', '2019-03-22 03:28:14', '2019-03-22 03:28:14'),
(12, 'Medicine', 3, 'Active', '2019-03-22 03:28:29', '2019-03-22 03:28:29'),
(13, 'Pharmacy', 3, 'Active', '2019-03-22 03:28:41', '2019-03-22 03:28:41'),
(14, 'Earth and Environmental Sciences', 3, 'Active', '2019-03-22 03:29:02', '2019-03-22 03:29:02'),
(15, 'Marketing', 3, 'Active', '2019-03-22 03:29:45', '2019-03-22 03:29:45'),
(16, 'Tourism and Hospitality Management', 3, 'Active', '2019-03-22 03:29:58', '2019-03-22 03:29:58'),
(17, 'Microbiology', 3, 'Active', '2019-03-22 03:30:15', '2019-03-22 03:30:15'),
(18, 'Nuclear Engineering', 3, 'Active', '2019-03-22 03:31:11', '2019-03-22 03:31:11'),
(19, 'Robotics and Mechatronics', 3, 'Active', '2019-03-22 03:31:21', '2019-03-22 03:31:21'),
(20, 'Economics', 3, 'Active', '2019-03-22 03:32:02', '2019-03-22 03:32:02'),
(21, 'Applied Mathematics', 3, 'Active', '2019-03-22 03:32:26', '2019-03-22 03:32:26'),
(22, 'Burn & Plastic Surgery', 4, 'Active', '2019-03-22 03:33:22', '2019-03-22 03:33:22'),
(23, 'Transfusion Medicine', 4, 'Active', '2019-03-22 03:33:38', '2019-03-22 03:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Dhaka', '2019-03-19 09:31:02', '2019-03-19 09:31:02'),
(2, 'Sylhet', '2019-03-19 09:32:30', '2019-03-19 09:32:30'),
(4, 'Chittagong', '2019-03-21 05:38:56', '2019-03-19 09:33:40'),
(9, 'Cox\'s Bazar', '2019-03-21 05:38:35', '2019-03-21 05:38:35'),
(10, 'Rajshahi', '2019-03-21 05:39:21', '2019-03-21 05:39:21'),
(11, 'Gazipur', '2019-03-21 22:41:25', '2019-03-21 22:41:25'),
(12, 'Rangamati', '2019-03-27 09:28:13', '2019-03-27 09:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` mediumint(9) DEFAULT '0',
  `isActive` char(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `name`, `description`, `category_id`, `email`, `views`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'কাদের আহমেদ', 'ঢাকার  ভিতরে ক্যান্সার এর জন্যে কোন হাসপাতাল টা ভালো হবে ?', '1', NULL, 5, 'Active', '2019-03-24 10:40:23', '2019-03-24 10:40:23'),
(2, 'Ahmed Al Nobel', 'Which school will be better for Dhanmondi for class 8?', '3', NULL, 3, 'Active', '2019-03-24 10:41:38', '2019-03-24 10:41:38'),
(3, 'Zidan Zia', 'I want to stay for one night in Farmgate, Someone can you please tell which hotel will be best for Farmgate?', '2', NULL, 5, 'Active', '2019-03-24 10:42:42', '2019-03-24 10:42:42'),
(4, 'Mohaimin Hossain', 'Which hotel will be best in Shahbag?', '2', NULL, 4, 'Active', '2019-03-25 10:44:35', '2019-03-25 10:44:35'),
(5, 'Akash Mia', 'Which school is the best in Farmgate?', '3', NULL, 3, 'Pending', '2019-03-26 06:34:01', '2019-03-26 06:34:01'),
(6, 'Abdul Wali', 'How about the CSE department of Daffodil International University.', '3', NULL, 1, 'Active', '2019-03-26 08:57:28', '2019-03-26 02:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isCorrect` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `name`, `forum_id`, `reply`, `isCorrect`, `created_at`, `updated_at`) VALUES
(1, 'Mitul', 4, 'Intercontinental Hotel is best but the price is less.', NULL, '2019-03-25 10:45:19', '2019-03-25 10:45:19'),
(2, 'Abdul Wali', 3, 'Hotel startjoury is the best.', NULL, '2019-03-26 06:13:17', '2019-03-26 06:13:17'),
(3, 'Javor Ahmed', 3, 'Hotel StayIn is the best.', NULL, '2019-03-26 06:14:07', '2019-03-26 06:14:07'),
(4, 'Nayomol Karim', 3, 'Hoel pan pacific is the best.', NULL, '2019-03-26 06:20:06', '2019-03-26 06:20:06'),
(5, 'Sagor Ahmed', 3, 'Hotel Sinbad is the best.', NULL, '2019-03-26 06:20:49', '2019-03-26 06:20:49'),
(6, 'Jahir Jhon', 3, 'Hotel Alos is the best.', NULL, '2019-03-26 06:23:50', '2019-03-26 06:23:50'),
(7, 'Modtak Talokdar', 3, 'Hotel Attio is the best.', NULL, '2019-03-26 06:24:26', '2019-03-26 06:24:26'),
(8, 'Zahir Alam', 3, 'hotel asikor is the best.', NULL, '2019-03-26 06:27:19', '2019-03-26 06:27:19'),
(9, 'Razu Ahmed', 4, 'Hotel Capital is the best but the price is less.', NULL, '2019-03-26 06:29:07', '2019-03-26 06:29:07'),
(10, 'Jahir Khan', 4, 'Hotel Aladin is the best.', NULL, '2019-03-26 06:30:08', '2019-03-26 06:30:08'),
(11, 'Morshalin', 4, 'Hotel Capital is the best.', NULL, '2019-03-26 06:31:45', '2019-03-26 06:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `air_conditioning` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_doctors` int(7) DEFAULT NULL,
  `total_departments` int(7) DEFAULT NULL,
  `estDate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `chancellor` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(7) NOT NULL,
  `sub_district_id` int(7) NOT NULL,
  `views` int(7) DEFAULT '0',
  `website_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(7) DEFAULT NULL,
  `bangladesh_ranking` int(7) DEFAULT NULL,
  `world_ranking` int(7) DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `phone`, `email`, `air_conditioning`, `total_doctors`, `total_departments`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `chancellor`, `ownership_type`, `address`, `district_id`, `sub_district_id`, `views`, `website_url`, `user_id`, `bangladesh_ranking`, `world_ranking`, `isActive`, `updated_at`, `created_at`) VALUES
(2, 'Square Hospital', '02-8144400', 'admin@squarehosital.com', 'Yes', 220, 25, '2019-03-02', '15529969224171.jpeg', '15534336904326.jpeg', '15534336904189.jpeg', NULL, 'Private', '18/F, Bir Uttam Qazi Nuruzzaman Sarak West, Panthapath, Dhaka 1205', 1, 20, NULL, NULL, NULL, 1, 1850, 'Active', '2019-03-27 08:03:32', '2019-03-13 22:58:53'),
(4, 'Samorita Hospital', '76575754', 'admin@samorita.bd', 'Yes', 65, 12, '2019-03-04', '15529972344260.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', '89/1 Panthapath, Dhaka 1215', 1, 20, NULL, NULL, NULL, 10, 4574, 'Active', '2019-03-27 08:03:11', '2019-03-19 06:07:14'),
(5, 'Popular Medical Center Sylhet', '54543545', 'admin@popular.com', 'Yes', 65, 15, '2019-03-03', '1552997538504.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', 'Sadar Upazila, Kajolshah, Medical College Rd, Sylhet 3100', 2, 13, NULL, NULL, NULL, 5, 4700, 'Active', '2019-03-27 08:07:05', '2019-03-19 06:12:18'),
(6, 'Bangabandhu Sheikh Mujib Medical University', '54654532', 'admin@bsmu.com', 'Yes', 100, 25, '1965-06-03', '1552997754870.jpeg', '1552997754561.jpeg', 'default.jpg', NULL, 'Public', 'PG Hospital, Shahbagh Rd, Dhaka 1000', 1, 16, NULL, NULL, NULL, 7, 3500, 'Active', '2019-03-27 07:58:17', '2019-03-19 06:15:54'),
(7, 'Dhaka Medical College and Hospital', '54675445', 'admin@dmc.com', 'No', 100, 35, '1946-07-08', '15530037513234.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Bakshibazar area, Dhaka 1000', 1, 15, NULL, NULL, NULL, 6, 6500, 'Active', '2019-03-27 08:00:56', '2019-03-19 07:55:51'),
(8, 'BIRDEM General Hospital', '547545454', 'admin@bardem.com', 'No', 95, 10, '1980-06-16', '15530039912830.jpeg', '15536952091875.jpeg', 'default.jpg', NULL, 'Private', '122 Kazi Nazrul Islam Ave, Dhaka 1000', 1, 16, NULL, NULL, NULL, 6, 3120, 'Active', '2019-03-27 08:00:10', '2019-03-19 07:59:51'),
(9, 'Sylhet MAG Osmani Medical College Hospital', '45634544', 'admin@magohospital.com', 'No', 150, 28, '1962-03-01', '15530041902932.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Osmani Medical, Sylhet', 2, 13, NULL, NULL, NULL, 14, 9950, 'Active', '2019-03-27 08:04:51', '2019-03-19 08:03:10'),
(10, 'Rajshahi Medical College Hospital', '54754564', 'admin@rmc.com', 'No', 45, 12, '1958-01-01', '15530043704503.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Medical College Road, Rajshahi 6000', 10, 12, NULL, NULL, NULL, 14, 4570, 'Active', '2019-03-27 08:02:28', '2019-03-19 08:06:10'),
(11, 'Anwer Khan Modern Medical College Hospital', '54345422', 'info@akmmch.com', 'Yes', 40, 7, '2008-01-01', '15536878623774.jpeg', '15536878623457.jpeg', '15536878632782.jpeg', NULL, 'Private', 'House 17,Road 8 Dhanmondi R/A, Dhaka 1205', 1, 21, NULL, NULL, 1, 20, 4000, 'Active', '2019-03-27 08:07:25', '2019-03-27 05:57:43');

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
(3, 'Surgery', 'surgery', 'Active', '2019-03-04 06:46:03', '2019-03-04 06:46:03'),
(4, 'Cancer', 'cancer', 'Active', '2019-03-10 04:28:09', '2019-03-10 04:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_department_relations`
--

CREATE TABLE `hospital_department_relations` (
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `hospital_department_id` int(10) UNSIGNED NOT NULL,
  `doctors` int(11) DEFAULT NULL,
  `foreign_degree_doctors` int(11) DEFAULT NULL,
  `staff` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_department_relations`
--

INSERT INTO `hospital_department_relations` (`hospital_id`, `hospital_department_id`, `doctors`, `foreign_degree_doctors`, `staff`, `created_at`, `updated_at`) VALUES
(2, 4, 50, 20, 60, '2019-03-13 22:58:53', '2019-03-14 00:13:09'),
(2, 3, 80, 20, 30, '2019-03-13 22:58:53', '2019-03-14 00:14:22'),
(4, 1, 13, 11, 10, '2019-03-19 06:07:15', '2019-03-24 10:20:55'),
(4, 3, 7, 9, 7, '2019-03-19 06:07:15', '2019-03-24 10:21:04'),
(5, 1, 15, 6, 18, '2019-03-19 06:12:18', '2019-03-24 10:20:16'),
(6, 4, 50, 15, 25, '2019-03-19 06:15:54', '2019-03-24 10:18:48'),
(6, 1, 30, 14, 19, '2019-03-19 06:15:54', '2019-03-24 10:19:05'),
(6, 3, 25, 20, 18, '2019-03-19 06:15:54', '2019-03-24 10:19:18'),
(7, 4, 12, 14, 16, '2019-03-19 07:55:52', '2019-03-24 10:19:44'),
(7, 1, 10, 13, 14, '2019-03-19 07:55:52', '2019-03-24 10:19:54'),
(7, 3, 8, 14, 12, '2019-03-19 07:55:52', '2019-03-24 10:20:07'),
(9, 1, 13, 10, 11, '2019-03-19 08:03:10', '2019-03-24 10:21:16'),
(9, 3, 11, 9, 9, '2019-03-19 08:03:10', '2019-03-24 10:21:24'),
(10, 1, 15, 11, 12, '2019-03-19 08:06:10', '2019-03-24 10:20:26'),
(10, 3, 9, 10, 10, '2019-03-19 08:06:10', '2019-03-24 10:20:37'),
(8, 1, 18, 13, 17, '2019-03-24 10:19:35', '2019-03-24 10:19:35'),
(11, 1, NULL, NULL, NULL, '2019-03-27 05:57:43', '2019-03-27 05:57:43'),
(11, 3, NULL, NULL, NULL, '2019-03-27 05:57:43', '2019-03-27 05:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_hotels`
--

CREATE TABLE `hospital_hotels` (
  `hospital_id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_hotels`
--

INSERT INTO `hospital_hotels` (`hospital_id`, `hotel_id`, `created_at`, `updated_at`) VALUES
(11, 1, '2019-03-27 05:57:43', '2019-03-27 05:57:43'),
(6, 5, '2019-03-27 08:01:29', '2019-03-27 08:01:29'),
(4, 1, '2019-03-27 08:03:11', '2019-03-27 08:03:11'),
(9, 2, '2019-03-27 08:04:51', '2019-03-27 08:04:51'),
(8, 5, '2019-03-27 08:05:53', '2019-03-27 08:05:53'),
(5, 2, '2019-03-27 08:07:06', '2019-03-27 08:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `estDate` date DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(6) NOT NULL,
  `sub_district_id` int(6) NOT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `restaurant` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cafe` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_parking` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_center` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_room` int(7) DEFAULT NULL,
  `bangladesh_ranking` int(7) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `user_id`, `estDate`, `star`, `rating`, `main_img`, `gallery_img_1`, `gallery_img_2`, `owner`, `website_url`, `address`, `phone`, `email`, `description`, `district_id`, `sub_district_id`, `isActive`, `restaurant`, `cafe`, `car_parking`, `party_center`, `total_room`, `bangladesh_ranking`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pan Pacific Sonargaon Dhaka Hotel', 1, '2000-03-08', 5, NULL, '15530102861799.jpeg', '15530102874987.jpeg', '15530102871809.jpeg', NULL, 'https://www.panpacific.com/en/hotels-and-resorts/pp-dhaka.html', '107 Kazi Nazrul Islam Ave, Dhaka 1215', '54856542', 'admin@panpacific.com', 'This is fantastic.', 1, 20, 'Active', 'Yes', 'Yes', 'Yes', 'Yes', 130, 5, NULL, '2019-03-16 07:12:15', '2019-03-27 08:13:34'),
(2, 'Best Western La Vinci Hotel', 1, '2007-03-01', 3, NULL, '15530114371908.jpeg', '15530114384376.jpeg', '15530114383537.jpeg', NULL, 'https://www.booking.com/hotel/bd/best-western-la-vinci.en-gb.html', '54, Kawran Bazar Road No 1, Dhaka 1215', '01884588565', 'admin@westernlavinci.com', 'It\'s an awesome hotel to stay in.', 2, 13, 'Active', 'Yes', 'Yes', 'Yes', 'No', 50, 18, NULL, '2019-03-19 10:03:58', '2019-03-27 08:13:24'),
(3, 'SEL NIBASH', 1, '2014-09-13', 1, NULL, '15530116552415.jpeg', '1553011655298.jpeg', '15530116551670.jpeg', NULL, 'http://www.selnibash.com.bd/', 'Near Green Life Hospital, 30 Green Rd, Dhaka 1205', '25465451', 'admin@selnibash.com', 'Featuring a fitness center, Sel Nibash Hotel & Serviced Apartments is located in Dhaka, a 15-minute walk from World University of Bangladesh. ... Sel Nibash Hotel & Serviced Apartments provides certain accommodations that include a balcony, and rooms contain a private bathroom', 1, 21, 'Active', 'Yes', 'Yes', 'Yes', 'No', 90, 20, NULL, '2019-03-19 10:07:35', '2019-03-27 08:50:11'),
(4, 'Grand Prince Hotel Dhaka Bangladesh', 1, '2018-04-13', 3, NULL, '15530118553126.jpeg', '1553011855945.jpeg', '15530118551760.jpeg', NULL, 'http://www.grandprince-dhaka.com/', 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156', 'admin@grandprince.com', 'It\'s a coolest hotel and best for party.', 1, 17, 'Active', 'Yes', 'Yes', 'Yes', 'No', 70, 14, NULL, '2019-03-19 10:10:55', '2019-03-27 08:13:48'),
(5, 'InterContinental Dhaka', 1, '1966-07-07', 5, NULL, '15530122863099.jpeg', '15530122861772.jpeg', '15530122864531.jpeg', NULL, 'https://www.ihg.com/intercontinental/hotels/us/en/dhaka/dachb/hoteldetail', '1 Minto Rd, Dhaka 1000', '02-55663030', 'admin@intercontinental.com', 'The InterContinental Dhaka is a prominent luxury hotel in Ramna in central Dhaka, the capital of Bangladesh. It was the first international five star hotel in the country and opened in 1966, as the Inter-Continental Dacca when the city, was the capital of East Pakistan.', 1, 16, 'Active', 'Yes', 'Yes', 'Yes', 'Yes', 100, 3, NULL, '2019-03-19 10:18:06', '2019-03-27 08:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `total_room` int(6) DEFAULT NULL,
  `bedNumber` int(11) DEFAULT NULL,
  `bedtype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_check_in` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedroom_comforts` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathroom` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tv` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sofa` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coffee_maker` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hair_dryer` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iron` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heating` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `air_conditioning` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smoke_detector` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`hotel_id`, `room_type_id`, `total_room`, `bedNumber`, `bedtype`, `self_check_in`, `bedroom_comforts`, `bathroom`, `tv`, `sofa`, `coffee_maker`, `hair_dryer`, `iron`, `heating`, `air_conditioning`, `wifi`, `smoke_detector`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 60, 2, 'Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 5005, '2019-03-18 01:15:40', '2019-03-26 07:08:49'),
(1, 5, 70, 1, 'Queen Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 6000, '2019-03-18 01:16:16', '2019-03-26 07:09:44'),
(2, 5, 20, 9, 'Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 7500, '2019-03-19 10:03:58', '2019-03-19 12:49:51'),
(2, 3, 30, 1, 'Single bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 1200, '2019-03-19 10:03:58', '2019-03-26 07:03:52'),
(3, 2, 40, 1, 'Double bed', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 2000, '2019-03-19 10:07:35', '2019-03-26 07:10:34'),
(3, 7, 30, 1, 'Single bed', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 3000, '2019-03-19 10:07:35', '2019-03-26 07:11:25'),
(3, 3, 20, 20, 'Single bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 2500, '2019-03-19 10:07:35', '2019-03-26 07:12:02'),
(4, 7, 20, 1, 'Queen Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 2000, '2019-03-19 10:10:55', '2019-03-26 07:04:31'),
(4, 4, 50, 2, 'Single bed', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 2500, '2019-03-19 10:10:55', '2019-03-26 07:05:40'),
(5, 2, 35, 1, 'Queen Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 4500, '2019-03-19 10:18:06', '2019-03-26 07:06:27'),
(5, 3, 25, 1, 'Single bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 3500, '2019-03-19 10:18:06', '2019-03-26 07:07:56'),
(5, 5, 40, 1, 'Queen Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 7000, '2019-03-19 10:18:06', '2019-03-26 07:07:19');

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
  `district_id` int(6) NOT NULL,
  `total_phd_teacher` int(6) DEFAULT NULL,
  `sub_district_id` int(6) NOT NULL,
  `institute_type_id` int(8) DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `total_student` int(6) DEFAULT NULL,
  `total_faculty` int(6) DEFAULT NULL,
  `total_department` int(5) DEFAULT NULL,
  `website_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `library` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel` int(3) DEFAULT NULL,
  `restaurant` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus` int(3) DEFAULT NULL,
  `auditorium` int(3) DEFAULT NULL,
  `play_ground` int(3) DEFAULT NULL,
  `events` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `world_ranking` int(7) DEFAULT NULL,
  `bangladesh_ranking` int(3) DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `vice_chancellor`, `ownership_type`, `address`, `district_id`, `total_phd_teacher`, `sub_district_id`, `institute_type_id`, `phone`, `email`, `description`, `total_student`, `total_faculty`, `total_department`, `website_url`, `library`, `hostel`, `restaurant`, `bus`, `auditorium`, `play_ground`, `events`, `world_ranking`, `bangladesh_ranking`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'Daffodil International University', '2002-03-01', '15529387844511.jpeg', '15531198661727.jpeg', '15531198672887.jpeg', 'Yousuf Mahbubul Islam', 'Private', '4/2, Sobhanbag, Mirpur Rd, Dhaka 1207', 1, 20, 10, 3, '01772233232', 'info@diu.edu.bd', 'Daffodil International University is a private university located in Dhanmondi, Dhaka, Bangladesh. It was established on 24 January 2002 under the Private University Act, 1992. DIU is the first university in Bangladesh to have signed the UN\'s Commitment to Sustainable Practices of Higher Education Institutions', 22000, 540, 15, 'https://daffodilvarsity.edu.bd/', 'Yes', 5, 'Yes', 30, 3, 3, 'Yes', 4307, 17, 'Active', '2019-03-02 06:33:48', '2019-03-25 16:52:32'),
(3, 'Dhaka University', '1921-03-02', '15529387193588.jpeg', '1553547501499.jpeg', '15535475022617.jpeg', 'Mohammad Akhtaruzzaman', 'Public', 'Nilkhet Rd, Dhaka 1000', 1, 100, 15, 3, '01992-232532', 'admin@du.edu.bd', 'In 2018 QS World University Rankings, University of Dhaka is ranked in #701-750 globally, and based on Graduate Employability, University of Dhaka is placed in #301-500 in the world. In Times Higher Education 2018 Global University Ranking, University of Dhaka is placed in 1001+ position among the world universities.', 28000, 320, 32, 'http://www.du.ac.bd/', 'Yes', 16, 'Yes', 26, 9, 13, 'Yes', 7903, 43, 'Active', '2019-03-03 03:30:09', '2019-03-25 16:53:43'),
(4, 'Shahjalal University of Science and Technology', '1986-12-08', '15529385793161.jpeg', '1553553952501.jpeg', '15535539524268.jpeg', 'Farid Uddin Ahmed', 'Public', 'University Ave, Sylhet 3114', 2, 65, 13, 3, '01723-323532', 'info@sust.edu', 'Shahjalal University of Science and Technology also known as SUST is a state supported, public research university located in Sylhet, Bangladesh. It is the 8th oldest university of the country and the first university to adopt American credit system', 8000, 302, 28, 'http://www.sust.edu/', 'Yes', 10, 'Yes', 20, 5, 4, 'Yes', 3584, 8, 'Active', '2019-03-03 05:20:25', '2019-03-25 16:46:30'),
(5, 'Brack University', '2001-03-02', '15529389682693.jpeg', '15535465234572.jpeg', '15535465233353.jpeg', 'Vincent Chang', 'Private', '66, Dhaka 1212', 1, 32, 10, 3, '+8801774-575735', 'info@bracu.ac.bd', 'BRAC University is a private University in Bangladesh. It was founded as a branch of the BRAC organization by Fazle Hasan Abed in 2001 under the Private University Act\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 6513, 320, 18, 'http://www.bracu.ac.bd/', 'Yes', 5, 'Yes', 200, 3, 2, 'Yes', 4145, 15, 'Active', '2019-03-09 07:39:27', '2019-03-25 16:51:13'),
(6, 'North South University', '1997-03-04', '15529883821103.jpeg', '15535494813823.jpeg', '15535494811523.jpeg', 'Atiqul Islam', 'Private', 'Plot, 15, Block B Kuril - NSU Rd, Dhaka 1229', 1, 64, 5, 3, '01823-232532', 'admin@northsouth.edu.bd', 'North South University is the first official non-government university in Bangladesh. Its business school is also the first in Bangladesh to receive American accreditation from the ACBSP in 2015', 12500, 350, 20, 'http://www.northsouth.edu/', 'Yes', 4, 'Yes', 27, 4, 2, 'Yes', 3394, 3, 'Active', '2019-03-18 15:33:16', '2019-03-25 16:54:13'),
(7, 'United International University', '2003-07-08', '15529900341279.jpeg', '1553554675594.jpeg', '15535546753137.jpeg', 'Chowdhury Mofizur Rahman', 'Private', 'United City, Madani Ave, Dhaka 1212', 1, 54, 19, 3, '01923-234232', 'admin@uiu.edu.bd', 'United International University or UIU is a private university located in Dhaka, Bangladesh, The government of Bangladesh approved the establishment of United International University in 2003 under the Private University Act of 1992. Financial support came from the United Group, a Bangladeshi business conglomerate.', 7500, 120, 16, 'http://www.uiu.ac.bd/', 'Yes', 3, 'Yes', 16, 3, 4, 'Yes', 4143, 13, 'Active', '2019-03-18 15:35:54', '2019-03-25 16:57:55'),
(10, 'University of Chittagong', '1966-03-01', '15529890333427.jpeg', '15535549891452.jpeg', '15535549892335.jpeg', 'Iftekhar Uddin Chowdhury', 'Public', 'Chittagong University Road,suburban area of Hathazari', 4, 100, 4, 3, '01623-232523', 'admin@cu.edu.bd', 'University of Chittagong is a public research university with multidisciplinary faculties situated across a 2110-acre hilly landmass in Jungle Poshchim-potti area of Fatehpur Union of Hathazari Upazila, 22 kilometres north of Chittagong city of Bangladesh', 17000, 420, 34, 'http://www.cu.ac.bd/', 'Yes', 11, 'Yes', 33, 5, 5, 'Yes', 3956, 12, 'Active', '2019-03-18 15:38:43', '2019-03-25 17:03:09'),
(11, 'Rajshahi University', '1956-03-02', '15535505344620.jpeg', '1553550535642.jpeg', '15535505354031.jpeg', 'M. Abdus Sobhan', 'Public', 'City Corporation Road', 10, 100, 12, 3, '01887659842', 'admin@ru.edu.bd', 'One of the very big and popular university in Bangladesh', 20000, 250, 32, 'http://ru.ac.bd/', 'Yes', 7, 'Yes', 7, 7, 8, 'Yes', 3881, 10, 'Active', '2019-03-19 03:36:06', '2019-03-25 16:54:52'),
(12, 'American International University-Bangladesh', '1994-01-01', '15535428261074.jpeg', '15535428272182.jpeg', '15535428271916.jpeg', 'Carmen Z. Lamagna', 'Private', '408/1, Kuratoli, Dhaka 1229', 1, 50, 5, 3, '5444341', 'info@aiub.edu.bd', 'American International University-Bangladesh, commonly known as AIUB is an accredited and renowned private university located at Kuratoli Road, Kuril in Dhaka, Bangladesh. The university is an independent organization with own Board of Trustees.', 12000, 300, 15, 'http://www.aiub.edu/', 'Yes', 4, 'Yes', 25, 2, 2, 'Yes', 3791, 8, 'Active', '2019-03-25 13:40:27', '2019-03-25 16:50:16');

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
  `total_phd_teacher` int(6) DEFAULT NULL,
  `IEEB` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `computer` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institute_departments`
--

INSERT INTO `institute_departments` (`institute_id`, `department_id`, `cost`, `students`, `faculty_members`, `total_phd_teacher`, `IEEB`, `credit`, `computer`, `created_at`, `updated_at`) VALUES
(11, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 03:36:06', '2019-03-19 03:36:06'),
(11, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 03:36:07', '2019-03-19 03:36:07'),
(5, 8, 1150000, 3500, 40, 14, 'IEEB', 135, 100, '2019-03-22 04:18:15', '2019-03-25 14:47:57'),
(5, 9, 850000, 1000, 30, 5, NULL, 120, 35, '2019-03-22 04:18:15', '2019-03-25 16:50:28'),
(2, 7, 739000, 12000, 100, 12, 'IEEB', 152, 400, '2019-03-22 04:19:05', '2019-03-25 14:48:36'),
(2, 8, 650000, 4000, 40, 5, 'IEEB', 148, 70, '2019-03-22 04:19:05', '2019-03-25 14:48:27'),
(2, 9, 380000, 1000, 25, NULL, NULL, 135, 20, '2019-03-22 04:19:05', '2019-03-25 13:49:16'),
(2, 11, 475000, 1000, 20, NULL, NULL, 125, 10, '2019-03-22 04:19:05', '2019-03-25 13:50:02'),
(3, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:15', '2019-03-22 04:20:15'),
(3, 7, 25000, 800, 50, 15, NULL, 132, 50, '2019-03-22 04:20:16', '2019-03-25 14:52:06'),
(3, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(6, 7, 1100000, 5000, 50, 35, NULL, 175, 120, '2019-03-22 04:21:13', '2019-03-25 14:48:59'),
(6, 8, 1354000, 3500, 65, 25, NULL, 142, 140, '2019-03-22 04:21:13', '2019-03-25 14:49:08'),
(11, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(4, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(7, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(10, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:07', '2019-03-22 04:24:07'),
(10, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:07', '2019-03-22 04:24:07'),
(10, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(5, 7, 1250000, 4500, 65, 27, 'IEEB', 135, 120, '2019-03-25 13:29:53', '2019-03-25 14:47:48'),
(12, 7, 1350000, 5400, 45, 15, 'IEEB', 142, 120, '2019-03-25 13:40:27', '2019-03-25 14:47:28'),
(12, 8, 1240000, 3000, 45, 12, 'IEEB', 138, 85, '2019-03-25 13:40:27', '2019-03-25 14:47:38'),
(2, 13, 550000, 1500, 25, 2, NULL, 140, 22, '2019-03-25 13:50:40', '2019-03-25 14:48:45'),
(6, 13, 950000, 800, 35, 10, NULL, 136, 40, '2019-03-25 13:51:24', '2019-03-25 14:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `institute_types`
--

CREATE TABLE `institute_types` (
  `id` int(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institute_types`
--

INSERT INTO `institute_types` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'School', '2019-03-22 09:08:33', '2019-03-22 09:08:33'),
(2, 'College', '2019-03-22 09:08:33', '2019-03-22 09:08:33'),
(3, 'University', '2019-03-22 09:08:33', '2019-03-22 09:08:33'),
(4, 'Medical College', '2019-03-22 09:08:33', '2019-03-22 09:08:33');

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
(17, '2019_03_03_153103_create_hospital_department_relations_table', 8),
(18, '2019_03_10_190403_create_forum_comments_table', 9),
(19, '2019_03_15_041429_create_hotels_table', 10),
(20, '2019_03_15_050328_create_room_types_table', 11),
(21, '2019_03_15_052752_create_hotel_rooms_table', 12),
(22, '2019_03_18_140050_create_districts_table', 13),
(23, '2019_03_21_104300_create_sub_districts_table', 14),
(24, '2019_03_21_154336_create_tour_places_table', 15),
(25, '2019_03_26_181346_create_tour_place_hotels_table', 16),
(26, '2019_03_27_104542_create_hospital_hotels_table', 17);

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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mahbubrahman5676@gmail.com', '$2y$10$yVuvpoGjYIWDIj0TVHdE4.zKwH7TJW6jvyued9zYliL6NLKfENCtO', '2019-03-21 12:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isActive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `slug`, `deleted_at`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'Couple Deluxe', 'couple-deluxe', NULL, 'Active', '2019-03-15 08:09:24', '2019-03-15 08:09:24'),
(3, 'Prime Single', 'prime-single', NULL, 'Active', '2019-03-15 08:44:13', '2019-03-15 08:44:13'),
(4, 'Twin Deluxe', 'twin-deluxe', NULL, 'Active', '2019-03-15 08:44:28', '2019-03-15 08:44:28'),
(5, 'Premium Twin', 'premium-twin', NULL, 'Active', '2019-03-15 08:44:43', '2019-03-15 08:44:43'),
(6, 'Royal Suite', 'royal-suite', NULL, 'Active', '2019-03-15 08:44:54', '2019-03-15 08:44:54'),
(7, 'Grand Suite', 'grand-suite', NULL, 'Active', '2019-03-15 08:45:05', '2019-03-15 08:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_districts`
--

CREATE TABLE `sub_districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_districts`
--

INSERT INTO `sub_districts` (`id`, `district_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhamrai', '2019-03-21 05:53:50', '2019-03-21 06:03:07'),
(2, 1, 'Keraniganj', '2019-03-21 07:01:09', '2019-03-21 07:01:09'),
(3, 2, 'Jaflong', '2019-03-21 07:01:43', '2019-03-21 14:31:23'),
(4, 4, 'Chittagong Sadar', '2019-03-21 07:02:26', '2019-03-21 07:02:26'),
(5, 1, 'Tejgaon', '2019-03-21 07:05:02', '2019-03-21 07:05:02'),
(6, 9, 'Cox\'s Bazar Sadar', '2019-03-21 14:21:26', '2019-03-21 14:21:26'),
(7, 11, 'Gazipur Sadar', '2019-03-21 22:41:42', '2019-03-21 22:41:42'),
(9, 1, 'Dohar', '2019-03-22 07:48:23', '2019-03-22 07:48:23'),
(10, 1, 'Savar', '2019-03-22 07:48:38', '2019-03-22 07:48:38'),
(11, 1, 'Nawabganj', '2019-03-22 07:48:52', '2019-03-22 07:48:52'),
(12, 10, 'Rajshai Sadar', '2019-03-22 07:53:29', '2019-03-22 07:53:29'),
(13, 2, 'Sylhet Sadar', '2019-03-22 07:55:02', '2019-03-22 07:55:02'),
(14, 2, 'Osmani Nagar', '2019-03-22 07:55:48', '2019-03-22 07:55:48'),
(15, 1, 'Dhaka Sadar', '2019-03-22 08:00:18', '2019-03-22 08:00:18'),
(16, 1, 'Shahbagh', '2019-03-22 09:43:44', '2019-03-22 09:43:44'),
(17, 1, 'Farmgate', '2019-03-22 09:44:32', '2019-03-22 09:44:32'),
(18, 1, 'Ashulia', '2019-03-22 09:44:58', '2019-03-22 09:44:58'),
(19, 1, 'Mohammodpur', '2019-03-22 10:13:53', '2019-03-22 10:13:53'),
(20, 1, 'Karwan Bazar', '2019-03-22 10:45:26', '2019-03-22 10:45:26'),
(21, 1, 'Dhanmondi', '2019-03-27 08:06:26', '2019-03-27 08:06:26'),
(22, 12, 'Baghaichhari', '2019-03-27 09:29:18', '2019-03-27 09:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `tour_places`
--

CREATE TABLE `tour_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sub_district_id` int(10) UNSIGNED NOT NULL,
  `star` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `website_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `district_id` int(11) DEFAULT NULL,
  `restaurant` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cafe` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_parking` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(9) DEFAULT '0',
  `bangladesh_ranking` int(7) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_places`
--

INSERT INTO `tour_places` (`id`, `name`, `user_id`, `sub_district_id`, `star`, `rating`, `main_img`, `gallery_img_1`, `gallery_img_2`, `website_url`, `address`, `description`, `district_id`, `restaurant`, `cafe`, `car_parking`, `views`, `bangladesh_ranking`, `deleted_at`, `isActive`, `created_at`, `updated_at`) VALUES
(4, 'Cox\'s Bazar Beach', 1, 6, '4.8', NULL, '15532001323516.png', '15532001331583.jpeg', '15532001333362.jpeg', 'http://www.tourtobangladesh.com/Coxs-Bazar.php', 'Cox\'s Bazar', 'Cox\'s Bazar Beach, located at Cox\'s Bazar, Bangladesh, is the second longest unbroken sea beach in the world, after Brazil\'s Praia do Cassino beach, running 120 kilometres. It is the top tourist destination of Bangladesh.', 9, 'Yes', 'Yes', 'Yes', 7, 1, NULL, 'Active', '2019-03-21 14:03:25', '2019-03-27 08:53:10'),
(5, 'Jaflong Sea Beach', 1, 3, '4.4', NULL, '15532287464176.jpeg', '15532287464964.jpeg', '15532287464515.jpeg', 'http://www.tourtobangladesh.com/Jaflong.php', 'Sylhet-Shillong (India) road', 'during monsoon. Big boulders and stones from the Khashi-jayantia hills fill the valley. The valley is ringed by tea garden and orange and grapefruit plantation. Some tribal lived there. They are Khashi , Monipuri Chakma.', 2, 'Yes', 'Yes', 'Yes', 0, 4, NULL, 'Active', '2019-03-21 22:25:46', '2019-03-27 08:57:23'),
(6, 'Bhawal National Park', 1, 7, '4.7', NULL, '15532296364704.jpeg', '15532296362320.jpeg', '15532296362647.jpeg', 'http://www.tourtobangladesh.com/Bhawal-National.php', 'Porajendrapur Bus Stop, Dhaka - Mymensingh Hwy,', 'One of the most attractive picnic spot in Gazipur. This National Park covers an interesting tourist destination. There is a playground for sports stars. \n\n\n\nThere is also a zoo here. Sal is the original plant in Bhawal. Also in the park is full of various tree. Here are several picnic spots. Like: Anondo, Kanchon, Sonalu, Abakash, Aboshor, Binodon. \n\nThere are 13 cottages and 6 rest house here. Like: Bakul, Maloncho, madhabi, cameli, Belly, jasmine etc Park entry fee per person 6 money. \n\nThis spot is not allowed to spend the night here. To use the picnic spot, you have to take advance booking from the forest department in Mohakhali Office (02-8814700) In the park once we see tiger, leopard, meghabagha, elephants, peacocks and Sambar deer. Nearly 1,500,000 local and foreign tourists visited here.', 11, 'Yes', 'Yes', 'Yes', 0, 12, NULL, 'Active', '2019-03-21 22:40:36', '2019-03-27 08:52:34'),
(7, 'Fantasy Kingdom', 1, 17, '4.9', NULL, '15532301751573.jpeg', '15532301754587.jpeg', '15532301764902.jpeg', 'https://www.fantasy-kingdom.net.bd/', 'Ashulia Highway, Jamgora, Savar Union 1345', 'Theme park with rides for all ages, water features & live entertainment plus dining & shopping.', 1, 'Yes', 'Yes', 'Yes', 1, 3, NULL, 'Active', '2019-03-21 22:49:36', '2019-03-27 08:57:04'),
(8, 'Mukti Juddha Museum', 1, 20, '4.3', NULL, '15532307683631.jpeg', '15532307693343.jpeg', '15532307691299.jpeg', 'http://www.tourtobangladesh.com/mukti-juddha-museum.php', '5 Segun Bagicha', 'Mukti Juddha Museum contains rare collection photographs of Liberation war and items used by the freedom fighters during that time', 1, 'Yes', 'Yes', 'Yes', 2, 18, NULL, 'Active', '2019-03-21 22:59:29', '2019-03-27 08:57:13'),
(9, 'Sajek Valley', 1, 22, '4.2', NULL, '15532310722137.jpeg', '15532310721627.jpeg', '15532310724436.jpeg', 'https://sajek.business.site/', 'Sajek', 'Sajek Valley - সাজেক ভ্যালি / মেঘের উপত্যকায় জীবন is an emerging tourist spot in Bangladesh situated among the hills of Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,800 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.', 12, 'Yes', 'Yes', 'Yes', 7, 6, NULL, 'Active', '2019-03-21 23:04:32', '2019-03-27 09:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `tour_place_hotels`
--

CREATE TABLE `tour_place_hotels` (
  `tour_place_id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_place_hotels`
--

INSERT INTO `tour_place_hotels` (`tour_place_id`, `hotel_id`, `created_at`, `updated_at`) VALUES
(9, 3, '2019-03-26 12:45:24', '2019-03-26 12:45:24'),
(7, 4, '2019-03-26 12:46:13', '2019-03-26 12:46:13'),
(8, 1, '2019-03-26 12:46:37', '2019-03-26 12:46:37'),
(6, 5, '2019-03-26 12:47:29', '2019-03-26 12:47:29'),
(4, 3, '2019-03-26 12:47:53', '2019-03-26 12:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verified` char(6) COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `verification_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `verified`, `verification_code`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahbubul Alam', 'mahbubul@gmail.com', NULL, 'Yes', NULL, '$2y$10$p0e.iKMbJVuGqyyZAF1O5ed9g4egk/Qr9tMrVOMQaJp.M8kCR/lT.', 'admin', 'I have two years of experience in Hotel listing', '1553199264.jpeg', 'jpzLNipCySyzVOyI6Ayz3V63IabB44bn7i65XqRvYDFNKJKJlA5uT55I1as4', '2018-10-17 05:30:41', '2019-03-21 14:14:24'),
(12, 'Mahbubul Alam', 'mitul@gmail.com', NULL, 'Yes', NULL, '$2y$10$3D5n0KH36Or0kRG3o8kbFusFS0nywvg8HN4MMK/pzghL3GpUcGnay', 'author', NULL, 'profile.png', 'Xvfvc3MxjO7LZwdTLghhITHIcHqvujMma71TmWxbgeEOqu3V67DLMhvywvMv', '2018-11-04 02:03:23', '2019-03-24 04:13:33'),
(17, 'Shakib Hasan', 'shakibhasan@gmail.com', NULL, 'No', NULL, '$2y$10$.D8iwG3N/l7hWLkkrHsMG.hgkUMxx/9Rw5a0AWKIT3W2LXVPA9816', 'user', NULL, 'profile.png', 'Gr17CnOlENHkALAYzYzl0XW4h4bkQHI1FuGAkeIrwXVVp2CqiSDybSZ8gN7n', '2019-03-24 02:21:16', '2019-03-24 03:24:44'),
(21, 'Khaled Ahmed', 'khaledahmed@gmail.com', NULL, 'Yes', NULL, '$2y$10$OqBrMc4fhQsuRke.8Ng5ie4d60ivzbu3IV/5/GrH//r9NkKbOvc7S', 'admin', NULL, 'profile.png', NULL, '2019-03-24 04:14:58', '2019-03-24 04:14:58'),
(22, 'Abdullah', 'abdullah@gmail.com', NULL, 'Yes', NULL, '$2y$10$T8nx8GS9FRtXLVNhLW.1a.l9Q9LDe9GjXYTiAkN4FrDRIkehaORjy', 'admin', NULL, 'profile.png', 'UJcQTr5iHvXRwDEDz04wnqKmHo72CnwsFhkfji3MCNIj9wEwfM3FQlDwpCd3', '2019-03-24 04:23:33', '2019-03-24 04:24:33'),
(23, 'Mohaimin Hossain', 'hossainmohaimin@gmail.com', NULL, 'No', NULL, '$2y$10$4bJUZd7oJ9ZnsZDs14TSieeZsOl.FLaincNINFytdmuWsC.WUiCUe', 'user', NULL, 'profile.png', 'KuxwcXEEVYZc4oHL200SLt37hu4Yhxykh6otN62TSR7aoPiKq3vJc2VLIGgs', '2019-03-25 04:46:53', '2019-03-25 04:46:53'),
(24, 'Mahbubul Alam', 'dearmahbubul@gmail.com', NULL, 'Yes', NULL, '$2y$10$kdo6pD7M..axB28tdwrC7.QyVFapG/XgyDgy2p4P/wOGmtCypOguu', 'author', NULL, 'profile', 'OE7ayG04BMEYtCgRRCVD8XScAMqZlqbXaZmAvmTRwS7tTQRgtExQcWSvkKEp', '2019-03-27 05:46:33', '2019-03-27 05:46:33'),
(25, 'Razu Ahmed', 'razuahmed5794@gmail.com', NULL, 'Yes', NULL, '$2y$10$0T7TFrrAJ4THUyru39J7Qenz06NAgph7KIPBUGO7Ol4Q8rij.iXzi', 'admin', NULL, 'profile', NULL, '2019-03-27 06:13:56', '2019-03-27 06:13:56');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `institute_type_id` (`institute_type_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_comments_post_id_index` (`forum_id`);

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
-- Indexes for table `hospital_hotels`
--
ALTER TABLE `hospital_hotels`
  ADD KEY `hospital_hotels_hospital_id_index` (`hospital_id`),
  ADD KEY `hospital_hotels_hotel_id_index` (`hotel_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_user_id_index` (`user_id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD KEY `hotel_rooms_hotel_id_index` (`hotel_id`),
  ADD KEY `hotel_rooms_room_type_id_index` (`room_type_id`);

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
-- Indexes for table `institute_types`
--
ALTER TABLE `institute_types`
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
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_districts`
--
ALTER TABLE `sub_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_districts_district_id_index` (`district_id`);

--
-- Indexes for table `tour_places`
--
ALTER TABLE `tour_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_places_user_id_index` (`user_id`),
  ADD KEY `tour_places_sub_district_id_index` (`sub_district_id`);

--
-- Indexes for table `tour_place_hotels`
--
ALTER TABLE `tour_place_hotels`
  ADD KEY `tour_place_hotels_tour_place_id_index` (`tour_place_id`),
  ADD KEY `tour_place_hotels_hotel_id_index` (`hotel_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `institute_types`
--
ALTER TABLE `institute_types`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
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
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sub_districts`
--
ALTER TABLE `sub_districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tour_places`
--
ALTER TABLE `tour_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD CONSTRAINT `forum_comments_post_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hospital_department_relations`
--
ALTER TABLE `hospital_department_relations`
  ADD CONSTRAINT `hospital_department_relations_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hospital_hotels`
--
ALTER TABLE `hospital_hotels`
  ADD CONSTRAINT `hospital_hotels_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD CONSTRAINT `hotel_rooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `institute_departments`
--
ALTER TABLE `institute_departments`
  ADD CONSTRAINT `institute_departments_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tour_places`
--
ALTER TABLE `tour_places`
  ADD CONSTRAINT `tour_places_sub_district_id_foreign` FOREIGN KEY (`sub_district_id`) REFERENCES `sub_districts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tour_places_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tour_place_hotels`
--
ALTER TABLE `tour_place_hotels`
  ADD CONSTRAINT `tour_place_hotels_tour_place_id_foreign` FOREIGN KEY (`tour_place_id`) REFERENCES `tour_places` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
