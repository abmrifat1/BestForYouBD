-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 11:02 PM
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
(2, 'Arts', 1, 'Active', '2019-03-22 03:24:53', '2019-03-22 03:24:53'),
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
(11, 'Gazipur', '2019-03-21 22:41:25', '2019-03-21 22:41:25');

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
  `views` mediumint(9) DEFAULT NULL,
  `isActive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `name`, `description`, `category_id`, `email`, `views`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'কাদের আহমেদ', 'ঢাকার  ভিতরে ক্যান্সার এর জন্যে কোন হাসপাতাল টা ভালো হবে ?', '1', NULL, NULL, 'Active', '2019-03-24 10:40:23', '2019-03-24 10:40:23'),
(2, 'Ahmed Al Nobel', 'Which school will be better for Dhanmondi for class 8?', '3', NULL, NULL, 'Active', '2019-03-24 10:41:38', '2019-03-24 10:41:38'),
(3, 'Zidan Zia', 'I want to stay for one night in Farmgate, Someone can you please tell which hotel will be best for Farmgate?', '2', NULL, NULL, 'Active', '2019-03-24 10:42:42', '2019-03-24 10:42:42');

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
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `phone`, `email`, `air_conditioning`, `total_doctors`, `total_departments`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `chancellor`, `ownership_type`, `address`, `district_id`, `sub_district_id`, `isActive`, `updated_at`, `created_at`) VALUES
(2, 'Square Hospital', '02-8144400', 'admin@squarehosital.com', 'Yes', 220, 25, '2019-03-02', '15529969224171.jpeg', '15534336904326.jpeg', '15534336904189.jpeg', NULL, 'Private', '18/F, Bir Uttam Qazi Nuruzzaman Sarak West, Panthapath, Dhaka 1205', 1, 20, 'Active', '2019-03-24 07:21:30', '2019-03-13 22:58:53'),
(4, 'Samorita Hospital', '76575754', 'admin@samorita', 'Yes', 65, 12, '2019-03-04', '15529972344260.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', '89/1 Panthapath, Dhaka 1215', 1, 20, 'Active', '2019-03-24 07:17:51', '2019-03-19 06:07:14'),
(5, 'Popular Medical Center', '54543545', 'admin@popular.com', 'Yes', 65, 15, '2019-03-03', '1552997538504.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', 'Sadar Upazila, Kajolshah, Medical College Rd, Sylhet 3100', 2, 13, 'Active', '2019-03-24 07:16:30', '2019-03-19 06:12:18'),
(6, 'Bangabandhu Sheikh Mujib Medical University', '54654532', 'admin@bsmu', 'Yes', 100, 25, '1965-06-03', '1552997754870.jpeg', '1552997754561.jpeg', 'default.jpg', NULL, 'Public', 'PG Hospital, Shahbagh Rd, Dhaka 1000', 1, 16, 'Active', '2019-03-24 07:14:31', '2019-03-19 06:15:54'),
(7, 'Dhaka Medical College and Hospital', '54675445', 'admin@dmc.com', 'No', 100, 35, '1946-07-08', '15530037513234.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Bakshibazar area, Dhaka 1000', 1, 15, 'Active', '2019-03-24 07:15:45', '2019-03-19 07:55:51'),
(8, 'BIRDEM General Hospital', '547545454', 'admin@bardem.com', 'No', 95, 10, '1980-06-16', '15530039912830.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', '122 Kazi Nazrul Islam Ave, Dhaka 1000', 1, 16, 'Active', '2019-03-24 07:15:04', '2019-03-19 07:59:51'),
(9, 'Sylhet MAG Osmani Medical College Hospital', '45634544', 'admin@magohospital.com', 'No', 150, 28, '1962-03-01', '15530041902932.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Osmani Medical, Sylhet', 2, 14, 'Active', '2019-03-24 09:25:36', '2019-03-19 08:03:10'),
(10, 'Rajshahi Medical College Hospital', '54754564', 'admin@rmc.com', 'No', 45, 12, '1958-01-01', '15530043704503.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Medical College Road, Rajshahi 6000', 10, 12, 'Active', '2019-03-24 07:17:17', '2019-03-19 08:06:10');

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
(8, 1, 18, 13, 17, '2019-03-24 10:19:35', '2019-03-24 10:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `estDate` date DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `main_img` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_1` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `gallery_img_2` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `total_room` int(7) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `user_id`, `estDate`, `star`, `rating`, `main_img`, `gallery_img_1`, `gallery_img_2`, `owner`, `website_url`, `address`, `phone`, `email`, `description`, `district_id`, `sub_district_id`, `isActive`, `restaurant`, `cafe`, `car_parking`, `total_room`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pan Pacific Sonargaon Dhaka Hotel', 1, '2000-03-08', 5, NULL, '15530102861799.jpeg', '15530102874987.jpeg', '15530102871809.jpeg', NULL, NULL, '107 Kazi Nazrul Islam Ave, Dhaka 1215', '54856542', 'admin@panpacific.com', 'This is fantastic.', 1, 5, 'Active', 'Yes', 'Yes', 'Yes', 130, NULL, '2019-03-16 07:12:15', '2019-03-24 00:37:27'),
(2, 'Best Western La Vinci Hotel', 1, '2007-03-01', 3, NULL, '15530114371908.jpeg', '15530114384376.jpeg', '15530114383537.jpeg', NULL, 'https://www.booking.com/hotel/bd/best-western-la-vinci.en-gb.html', '54, Kawran Bazar Road No 1, Dhaka 1215', '01884588565', 'admin@westernlavinci.com', 'It\'s an awesome hotel to stay in.', 2, 13, 'Active', 'Yes', 'Yes', 'Yes', 50, NULL, '2019-03-19 10:03:58', '2019-03-24 02:13:49'),
(3, 'SEL NIBASH', 1, '2014-09-13', 1, NULL, '15530116552415.jpeg', '1553011655298.jpeg', '15530116551670.jpeg', NULL, 'http://www.selnibash.com.bd/', 'Near Green Life Hospital, 30 Green Rd, Dhaka 1205', '25465451', 'admin@selnibash.com', NULL, 9, 6, 'Active', 'Yes', 'Yes', 'Yes', 90, NULL, '2019-03-19 10:07:35', '2019-03-24 00:38:06'),
(4, 'Grand Prince Hotel Dhaka Bangladesh', 1, '2018-04-13', 3, NULL, '15530118553126.jpeg', '1553011855945.jpeg', '15530118551760.jpeg', NULL, 'http://www.grandprince-dhaka.com/', 'Paradise Plaza, Com. Plot # 6 and 11, Dhaka 1216', '01718-962156', 'admin@grandprince.com', 'It\'s a coolest hotel and best for party.', 1, 17, 'Active', 'Yes', 'Yes', 'Yes', 70, NULL, '2019-03-19 10:10:55', '2019-03-24 00:26:58'),
(5, 'InterContinental Dhaka', 1, '1966-07-07', 5, NULL, '15530122863099.jpeg', '15530122861772.jpeg', '15530122864531.jpeg', NULL, 'https://www.ihg.com/intercontinental/hotels/us/en/dhaka/dachb/hoteldetail', '1 Minto Rd, Dhaka 1000', '02-55663030', 'admin@intercontinental.com', 'The InterContinental Dhaka is a prominent luxury hotel in Ramna in central Dhaka, the capital of Bangladesh. It was the first international five star hotel in the country and opened in 1966, as the Inter-Continental Dacca when the city, was the capital of East Pakistan.', 1, 16, 'Active', 'Yes', 'Yes', 'Yes', 105, NULL, '2019-03-19 10:18:06', '2019-03-24 00:36:06');

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
(1, 2, 10, 2, 'Double bed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5005, '2019-03-18 01:15:40', '2019-03-18 02:19:27'),
(1, 5, 12, 1, 'Double bed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500, '2019-03-18 01:16:16', '2019-03-18 05:20:26'),
(2, 5, 20, 9, 'Double bed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 7500, '2019-03-19 10:03:58', '2019-03-19 12:49:51'),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:03:58', '2019-03-19 10:03:58'),
(3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:07:35', '2019-03-19 10:07:35'),
(3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:07:35', '2019-03-19 10:07:35'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:07:35', '2019-03-19 10:07:35'),
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:10:55', '2019-03-19 10:10:55'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:10:55', '2019-03-19 10:10:55'),
(5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:18:06', '2019-03-19 10:18:06'),
(5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:18:06', '2019-03-19 10:18:06'),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 10:18:06', '2019-03-19 10:18:06');

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
  `sub_district_id` int(6) NOT NULL,
  `institute_type_id` int(8) DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `Library` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel` int(3) DEFAULT NULL,
  `restaurant` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus` int(3) DEFAULT NULL,
  `auditorium` int(3) DEFAULT NULL,
  `play_ground` int(3) DEFAULT NULL,
  `events` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `vice_chancellor`, `ownership_type`, `address`, `district_id`, `sub_district_id`, `institute_type_id`, `phone`, `email`, `description`, `Library`, `hostel`, `restaurant`, `bus`, `auditorium`, `play_ground`, `events`, `isActive`, `created_at`, `updated_at`) VALUES
(2, 'Daffodil International University', '2002-03-01', '15529387844511.jpeg', '15531198661727.jpeg', '15531198672887.jpeg', NULL, 'Private', '4/2, Sobhanbag, Mirpur Rd, Dhaka 1207', 1, 10, 3, '01772233232', 'admin@diu.edu.bd', 'Daffodil International University is a private university located in Dhanmondi, Dhaka, Bangladesh. It was established on 24 January 2002 under the Private University Act, 1992. DIU is the first university in Bangladesh to have signed the UN\'s Commitment to Sustainable Practices of Higher Education Institutions', NULL, 3, 'Yes', 150, 3, 3, 'Yes', 'Active', '2019-03-02 06:33:48', '2019-03-22 07:53:00'),
(3, 'Dhaka University', '1921-03-02', '15529387193588.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Shahbag, Dhaka', 1, 15, 3, '01992-232532', 'admin@du.edu.bd', 'In 2018 QS World University Rankings, University of Dhaka is ranked in #701-750 globally, and based on Graduate Employability, University of Dhaka is placed in #301-500 in the world. In Times Higher Education 2018 Global University Ranking, University of Dhaka is placed in 1001+ position among the world universities.', NULL, 16, 'Yes', 26, 9, 13, 'Yes', 'Active', '2019-03-03 03:30:09', '2019-03-22 08:00:53'),
(4, 'SUST', '1994-12-08', '15529385793161.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Sylhet Sadar', 2, 13, 3, '01723 323532', 'admin@sust.edu.bd', 'Shahjalal University of Science and Technology also known as SUST is a state supported, public research university located in Sylhet, Bangladesh. It is the 8th oldest university of the country and the first university to adopt American credit system', NULL, 4, 'Yes', 3, 5, 4, 'Yes', 'Active', '2019-03-03 05:20:25', '2019-03-22 07:59:28'),
(5, 'Brack University', '1998-03-02', '15529389682693.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', 'Dhaka Sadar', 1, 10, 3, '+8801774-575735', 'admin@brack.edu.bd', 'BRAC University is a private University in Bangladesh. It was founded as a branch of the BRAC organization by Fazle Hasan Abed in 2001 under the Private University Act\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', NULL, 3, 'Yes', 200, 3, 2, 'Yes', 'Active', '2019-03-09 07:39:27', '2019-03-23 13:43:38'),
(6, 'North South University', '1997-03-04', '15529883821103.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', 'Plot, 15, Block B Kuril - NSU Rd, Dhaka 1229', 1, 5, 3, '01823-232532', 'admin@northsouth.edu.bd', 'North South University is the first official non-government university in Bangladesh. Its business school is also the first in Bangladesh to receive American accreditation from the ACBSP in 2015', NULL, 3, 'Yes', 27, 4, 2, 'Yes', 'Active', '2019-03-18 15:33:16', '2019-03-22 07:54:41'),
(7, 'United International University', '2003-07-08', '15529900341279.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', 'United City, Madani Ave, Dhaka 1212', 1, 11, 3, '01923-234232', 'admin@uiu.edu.bd', 'United International University or UIU is a private university located in Dhaka, Bangladesh, The government of Bangladesh approved the establishment of United International University in 2003 under the Private University Act of 1992. Financial support came from the United Group, a Bangladeshi business conglomerate.', NULL, 3, 'Yes', 16, 3, 4, 'Yes', 'Active', '2019-03-18 15:35:54', '2019-03-22 07:59:45'),
(10, 'University of Chittagong', '1996-03-01', '15529890333427.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'Chittagong University Road,suburban area of Hathazari', 0, 0, 3, '01623-232523', 'admin@cu.edu.bd', 'University of Chittagong is a public research university with multidisciplinary faculties situated across a 2110-acre hilly landmass in Jungle Poshchim-potti area of Fatehpur Union of Hathazari Upazila, 22 kilometres north of Chittagong city of Bangladesh', NULL, 11, 'Yes', 33, 5, 5, 'Yes', 'Active', '2019-03-18 15:38:43', '2019-03-20 16:24:45'),
(11, 'Rajshahi University', '1956-03-02', '15529881644791.jpeg', 'default.jpg', 'default.jpg', NULL, 'Public', 'City Corporation Road', 10, 12, 3, '01887659842', 'admin@ru.edu.bd', 'One of the very big and popular university in Bangladesh', NULL, 7, 'Yes', 7, 7, 8, 'Yes', 'Active', '2019-03-19 03:36:06', '2019-03-22 07:54:21');

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
(3, 8, NULL, NULL, 55, NULL, 90, NULL, '2019-03-03 03:31:18', '2019-03-03 03:31:18'),
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25'),
(3, 8, NULL, NULL, 55, NULL, 90, NULL, '2019-03-03 03:31:18', '2019-03-03 03:31:18'),
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25'),
(11, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 03:36:06', '2019-03-19 03:36:06'),
(11, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 03:36:07', '2019-03-19 03:36:07'),
(5, 8, 8, 9, 4, NULL, NULL, NULL, '2019-03-22 04:18:15', '2019-03-22 07:30:05'),
(5, 9, 9, 9, 9, NULL, 9, 9, '2019-03-22 04:18:15', '2019-03-22 04:25:18'),
(2, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:19:05', '2019-03-22 04:19:05'),
(2, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:19:05', '2019-03-22 04:19:05'),
(2, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:19:05', '2019-03-22 04:19:05'),
(2, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:19:05', '2019-03-22 04:19:05'),
(2, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:19:05', '2019-03-22 04:19:05'),
(3, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:15', '2019-03-22 04:20:15'),
(3, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 12, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 18, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 19, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(3, 16, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:20:16', '2019-03-22 04:20:16'),
(6, 7, 1100000, 5000, 50, 'IEEB', 175, 120, '2019-03-22 04:21:13', '2019-03-23 13:11:28'),
(6, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:21:13', '2019-03-22 04:21:13'),
(11, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(11, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:22:29', '2019-03-22 04:22:29'),
(4, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(4, 19, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:29', '2019-03-22 04:23:29'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(7, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:23:52', '2019-03-22 04:23:52'),
(10, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:07', '2019-03-22 04:24:07'),
(10, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:07', '2019-03-22 04:24:07'),
(10, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 12, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 18, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08'),
(10, 19, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-22 04:24:08', '2019-03-22 04:24:08');

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
(24, '2019_03_21_154336_create_tour_places_table', 15);

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
(20, 1, 'Karwan Bazar', '2019-03-22 10:45:26', '2019-03-22 10:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `tour_places`
--

CREATE TABLE `tour_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sub_district_id` int(10) UNSIGNED NOT NULL,
  `star` int(11) DEFAULT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_places`
--

INSERT INTO `tour_places` (`id`, `name`, `user_id`, `sub_district_id`, `star`, `rating`, `main_img`, `gallery_img_1`, `gallery_img_2`, `website_url`, `address`, `description`, `district_id`, `restaurant`, `cafe`, `car_parking`, `views`, `deleted_at`, `isActive`, `created_at`, `updated_at`) VALUES
(4, 'Cox\'s Bazar Beach', 1, 6, 5, NULL, '15532001323516.png', '15532001331583.jpeg', '15532001333362.jpeg', 'http://www.tourtobangladesh.com/Coxs-Bazar.php', 'Cox\'s Bazar', 'It\'s awesome', 9, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 14:03:25', '2019-03-21 14:28:53'),
(5, 'Jaflong Sea Beach', 1, 3, 3, NULL, '15532287464176.jpeg', '15532287464964.jpeg', '15532287464515.jpeg', 'http://www.tourtobangladesh.com/Jaflong.php', 'Sylhet-Shillong (India) road', 'during monsoon. Big boulders and stones from the Khashi-jayantia hills fill the valley. The valley is ringed by tea garden and orange and grapefruit plantation. Some tribal lived there. They are Khashi , Monipuri Chakma.', 2, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 22:25:46', '2019-03-21 22:25:46'),
(6, 'Bhawal National Park', 1, 7, 5, NULL, '15532296364704.jpeg', '15532296362320.jpeg', '15532296362647.jpeg', 'http://www.tourtobangladesh.com/Bhawal-National.php', 'Porajendrapur Bus Stop, Dhaka - Mymensingh Hwy,', 'One of the most attractive picnic spot in Gazipur. This National Park covers an interesting tourist destination. There is a playground for sports stars. \n\n\n\nThere is also a zoo here. Sal is the original plant in Bhawal. Also in the park is full of various tree. Here are several picnic spots. Like: Anondo, Kanchon, Sonalu, Abakash, Aboshor, Binodon. \n\nThere are 13 cottages and 6 rest house here. Like: Bakul, Maloncho, madhabi, cameli, Belly, jasmine etc Park entry fee per person 6 money. \n\nThis spot is not allowed to spend the night here. To use the picnic spot, you have to take advance booking from the forest department in Mohakhali Office (02-8814700) In the park once we see tiger, leopard, meghabagha, elephants, peacocks and Sambar deer. Nearly 1,500,000 local and foreign tourists visited here.', 11, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 22:40:36', '2019-03-21 22:42:48'),
(7, 'Fantasy Kingdom', 1, 1, 5, NULL, '15532301751573.jpeg', '15532301754587.jpeg', '15532301764902.jpeg', 'https://www.fantasy-kingdom.net.bd/', 'Ashulia Highway, Jamgora, Savar Union 1345', 'Theme park with rides for all ages, water features & live entertainment plus dining & shopping.', 1, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 22:49:36', '2019-03-21 22:49:36'),
(8, 'Mukti Juddha Museum', 1, 5, 4, NULL, '15532307683631.jpeg', '15532307693343.jpeg', '15532307691299.jpeg', 'http://www.tourtobangladesh.com/mukti-juddha-museum.php', '5 Segun Bagicha', 'Mukti Juddha Museum contains rare collection photographs of Liberation war and items used by the freedom fighters during that time', 1, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 22:59:29', '2019-03-21 22:59:29'),
(9, 'Sajek Valley', 1, 4, 4, NULL, '15532310722137.jpeg', '15532310721627.jpeg', '15532310724436.jpeg', 'https://sajek.business.site/', 'Sajek', 'Sajek Valley - সাজেক ভ্যালি / মেঘের উপত্যকায় জীবন is an emerging tourist spot in Bangladesh situated among the hills of Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,800 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.', 4, 'Yes', 'Yes', 'Yes', 0, NULL, 'Active', '2019-03-21 23:04:32', '2019-03-21 23:04:32');

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
(1, 'Mahbubul Alam', 'mahbubul@gmail.com', NULL, 'Yes', NULL, '$2y$10$p0e.iKMbJVuGqyyZAF1O5ed9g4egk/Qr9tMrVOMQaJp.M8kCR/lT.', 'admin', 'I have two years of experience in Hotel listing', '1553199264.jpeg', 'fvv2Ydgm7qW0xNMsGMxRKSwXtPhcdwwCOWLki3blOEGd7uNYaraMt3qhmND9', '2018-10-17 05:30:41', '2019-03-21 14:14:24'),
(12, 'Mahbubul Alam', 'mitul@gmail.com', NULL, 'Yes', NULL, '$2y$10$3D5n0KH36Or0kRG3o8kbFusFS0nywvg8HN4MMK/pzghL3GpUcGnay', 'author', NULL, NULL, 'Xvfvc3MxjO7LZwdTLghhITHIcHqvujMma71TmWxbgeEOqu3V67DLMhvywvMv', '2018-11-04 02:03:23', '2019-03-24 04:13:33'),
(17, 'Shakib Hasan', 'shakibhasan@gmail.com', NULL, 'No', NULL, '$2y$10$.D8iwG3N/l7hWLkkrHsMG.hgkUMxx/9Rw5a0AWKIT3W2LXVPA9816', 'user', NULL, 'profile.png', 'Gr17CnOlENHkALAYzYzl0XW4h4bkQHI1FuGAkeIrwXVVp2CqiSDybSZ8gN7n', '2019-03-24 02:21:16', '2019-03-24 03:24:44'),
(21, 'Khaled Ahmed', 'khaledahmed@gmail.com', NULL, 'Yes', NULL, '$2y$10$OqBrMc4fhQsuRke.8Ng5ie4d60ivzbu3IV/5/GrH//r9NkKbOvc7S', 'admin', NULL, NULL, NULL, '2019-03-24 04:14:58', '2019-03-24 04:14:58'),
(22, 'Abdullah', 'abdullah@gmail.com', NULL, 'Yes', NULL, '$2y$10$T8nx8GS9FRtXLVNhLW.1a.l9Q9LDe9GjXYTiAkN4FrDRIkehaORjy', 'admin', NULL, 'profile.png', 'UJcQTr5iHvXRwDEDz04wnqKmHo72CnwsFhkfji3MCNIj9wEwfM3FQlDwpCd3', '2019-03-24 04:23:33', '2019-03-24 04:24:33');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `institute_types`
--
ALTER TABLE `institute_types`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tour_places`
--
ALTER TABLE `tour_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
