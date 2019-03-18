-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 10:30 AM
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
(5, 'Colleges', 'colleges', 'Active', '2018-12-09 08:09:07', '2018-12-09 02:09:07'),
(6, 'aut', NULL, 'Active', '2019-03-13 04:39:17', '2019-03-13 04:39:17'),
(7, 'est', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(8, 'natus', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(9, 'laborum', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(10, 'et', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(11, 'placeat', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(12, 'voluptatem', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(13, 'et', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(14, 'quasi', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(15, 'ullam', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(16, 'voluptatibus', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(17, 'doloribus', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(18, 'enim', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(19, 'nihil', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(20, 'quia', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(21, 'assumenda', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(22, 'quidem', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(23, 'quos', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(24, 'quam', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(25, 'natus', NULL, 'Active', '2019-03-13 04:39:18', '2019-03-13 04:39:18'),
(26, 'soluta', NULL, 'Active', '2019-03-13 04:53:17', '2019-03-13 04:53:17'),
(27, 'maxime', NULL, 'Active', '2019-03-13 04:53:17', '2019-03-13 04:53:17'),
(28, 'doloribus', NULL, 'Active', '2019-03-13 04:53:17', '2019-03-13 04:53:17'),
(29, 'enim', NULL, 'Active', '2019-03-13 04:53:17', '2019-03-13 04:53:17'),
(30, 'corrupti', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(31, 'excepturi', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(32, 'saepe', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(33, 'nesciunt', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(34, 'possimus', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(35, 'itaque', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(36, 'nesciunt', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(37, 'rerum', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(38, 'ut', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(39, 'eos', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(40, 'similique', NULL, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(41, 'autem', NULL, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(42, 'quia', NULL, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(43, 'iure', NULL, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(44, 'accusamus', NULL, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(45, 'provident', NULL, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(46, 'et', NULL, 'Active', '2019-03-13 04:54:56', '2019-03-13 04:54:56'),
(47, 'odit', NULL, 'Active', '2019-03-13 04:54:56', '2019-03-13 04:54:56'),
(48, 'ea', NULL, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(49, 'sunt', NULL, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(50, 'esse', NULL, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(51, 'at', NULL, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(52, 'laborum', NULL, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(53, 'aliquid', NULL, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(54, 'neque', NULL, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(55, 'et', NULL, 'Active', '2019-03-13 04:54:59', '2019-03-13 04:54:59'),
(57, 'ratione', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(58, 'voluptate', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(59, 'et', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(60, 'eius', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(61, 'at', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(62, 'iste', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(63, 'consequatur', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(64, 'rerum', NULL, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(65, 'exercitationem', NULL, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(67, 'autem', NULL, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(68, 'iure', NULL, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(70, 'quo', NULL, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23');

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
(1, 'CSE', 'cse', 'DeActive', '2019-02-16 13:48:55', '2019-03-13 06:06:52'),
(3, 'EEE', 'eee', 'Active', '2019-02-16 13:59:08', '2019-02-16 13:59:08'),
(5, 'English', 'english', 'Active', '2019-02-19 10:29:44', '2019-02-19 10:29:44'),
(6, 'Bangla', 'bangla', 'Active', '2019-02-19 10:30:07', '2019-02-19 10:30:07'),
(7, 'Farmacy', 'farmacy', 'Active', '2019-02-19 10:30:18', '2019-02-19 10:30:18'),
(8, 'LAW', 'law', 'Active', '2019-02-19 10:30:28', '2019-02-19 10:30:28'),
(9, 'Mathematics', 'mathematics', 'Active', '2019-02-19 10:30:43', '2019-02-19 10:30:43'),
(10, 'Science', 'science', 'Active', '2019-02-19 10:30:51', '2019-02-19 10:30:51'),
(12, 'Commmarce', 'commmarce', 'DeActive', '2019-02-19 10:31:11', '2019-03-13 06:06:45'),
(13, 'Social Science', 'socialscience', 'Active', '2019-02-19 10:31:40', '2019-02-19 10:31:40'),
(14, 'Machanical Engineering', 'machanical-engineering', 'Active', '2019-02-19 11:25:37', '2019-02-19 11:25:48');

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
(5, 'Alam', 'ঢাকার মধ্যে ক্যান্সার চিকিৎসা এর জন্যে কোন হাসপাতাল ভালো হবে', '4', 'alammahbubul5676@gmail.com', 31, 'Active', '2019-01-13 06:35:13', '2019-01-13 06:35:13'),
(6, 'John Doe', 'Hey! Can you please tell me best College in Dhanmondi for Arts department.', '5', 'alammahbubul5676@gmail.com', 40, 'Active', '2019-01-13 09:41:10', '2019-01-29 01:37:30'),
(7, 'Mahbubul Alam', 'Hey, Hello, What\'s up guys, I wanna know about your opinion.', '4', 'mahbubulalam@gmail.com', 34, 'Active', '2019-01-13 13:17:11', '2019-03-12 04:25:31'),
(9, 'Emamul', 'Hello, I wanna know about cancer hospital in Dhaka. Do you have any knowledge?', '4', 'dearemamul@gmail.com', 37, 'Active', '2019-01-27 07:12:06', '2019-01-29 01:37:22'),
(12, 'Abdul Kader', 'Which school will be best in Dhanmondi for class 8?', '3', NULL, 111, 'Active', '2019-01-29 15:15:49', '2019-01-29 09:17:37'),
(13, 'Jago bangali', 'Heelo, I want to know about your concen for higher study.', 'Select a category', NULL, NULL, 'Active', '2019-03-10 18:07:39', '2019-03-12 04:25:47'),
(14, 'Ahmed Nobel', 'Which hospital best for abortion?', '4', 'nobel@gamil.com', NULL, 'Active', '2019-03-10 18:13:20', '2019-03-12 04:25:41'),
(20, 'Riadul Miah', 'Which is the best hospital for cancer?', '4', 'riadulmiah12@gmail.com', NULL, 'Active', '2019-03-11 06:59:48', '2019-03-12 04:25:52'),
(46, 'placeat', 'Dolorem laudantium qui et debitis quasi suscipit. Magni praesentium magni qui animi et. Omnis et ut repellat accusantium inventore. Exercitationem quia temporibus qui qui enim. Dolores porro ab dolorum error dolore. Voluptatibus et recusandae corrupti assumenda sint. Pariatur a ut ut aut dolores. Dolores inventore est temporibus inventore voluptatibus harum. Cupiditate sunt quas quo harum possimus. Ducimus a sit explicabo libero. Fugit sunt at ut maxime quo reprehenderit corporis reprehenderit. Quisquam ullam fugiat et voluptas ullam fugit voluptate. Animi laudantium beatae aspernatur unde id ipsum. Quisquam vitae quas harum sed. At quam voluptates ut sapiente. Dolore deserunt omnis distinctio. Dolorem delectus error id est eos perspiciatis hic. Magnam temporibus qui tempore quod. Nihil et doloribus quis velit repellat consectetur tempora est. Non repellat sit consectetur assumenda quaerat ut magnam. Laudantium dolorum unde cum ut voluptas animi porro. Unde ad autem asperiores quia. Iusto quo aut quos. Modi autem labore quos non et id veniam. Esse qui est adipisci quisquam nobis nemo illo.', '31', 'joanie59@example.net', 321, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(51, 'qui', 'Ad voluptatum autem qui et consectetur facilis est. Molestias voluptatem ad qui eum omnis architecto explicabo adipisci. Iste aliquam et eaque est omnis. Cum ab doloremque soluta dolores et quia voluptas. Suscipit reiciendis soluta explicabo cupiditate qui facere qui. Sapiente non consequatur maxime aspernatur quibusdam est. Quo recusandae veritatis autem natus. Placeat aut aliquam exercitationem fugit dolores eveniet. Nemo aperiam iusto rerum illo aut laborum. Quas doloremque ea fugit et ut reprehenderit. Beatae nisi reiciendis voluptatem repudiandae omnis culpa. Voluptatibus dolorem quos aliquam voluptas. Vel et ut dolorum. Qui quis et corporis ducimus debitis exercitationem. Pariatur error perferendis eligendi nihil adipisci officiis cumque. Vel sed est vitae rerum animi ipsa quos. Sunt atque dolores fuga. Molestiae quas id numquam ut incidunt. Voluptas aspernatur illo exercitationem suscipit dolor est dolorem nam. Ut accusantium earum dolor fuga. Tempore explicabo iure in quia ad hic. Voluptatum delectus ut illum. Quis voluptatibus rerum quia est. Iusto facere ea ullam dolor. Animi porro consectetur esse quisquam. Sint ex illo qui cum id ut rerum sunt. Pariatur aut at exercitationem rerum ipsa et excepturi. Est temporibus non aliquam ab qui distinctio est quisquam. Odit voluptatum alias nobis temporibus. Libero illo cum assumenda corrupti rem. Et saepe ut nemo expedita quae natus non.', '36', 'zieme.jamil@example.com', 339, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(52, 'veniam', 'Mollitia maiores eum quaerat nihil recusandae molestiae. Quia at nam quia non eum eius est. Saepe laborum omnis qui ut. Ut eaque consequatur velit qui molestias. Numquam laboriosam dolorum quaerat ea perferendis id nulla officia. Odio consequuntur aut aut. Eius maxime quibusdam non voluptatibus exercitationem rerum. Voluptatem non atque necessitatibus omnis quae vitae eum. Nulla natus consequuntur adipisci voluptate ab dolorem. Illum voluptas reprehenderit vel vitae incidunt. Officia eos recusandae et ea dolores non eveniet. Et aut vitae eum vitae. Hic perspiciatis aut harum incidunt velit. Et est odio commodi quam aut. Aut laudantium et placeat amet mollitia. Qui asperiores aut natus aut blanditiis libero ut ut. Incidunt maiores maiores cupiditate aut blanditiis et quia. Blanditiis sit qui vitae est vero quae ex amet. Et nihil id quam dolores ullam. Fuga ad quisquam sint. Omnis totam accusamus doloremque amet debitis. Eos modi maiores enim suscipit iusto sit. Neque quo et ullam et placeat dignissimos. Esse sequi voluptatem aut facere aut excepturi. Repudiandae sint dolor quas itaque quia sed. Ad atque sint temporibus voluptatibus natus inventore sit.', '37', 'ramon40@example.org', 145, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(53, 'sit', 'Sint consequatur iure qui porro dolor doloremque est. Consequatur molestiae possimus voluptas qui impedit omnis. Est ut iste voluptatem porro consequatur dolorem. Aut a qui aut similique possimus. Minus nulla consequatur consectetur eius dolor nisi. Quidem quis fuga non et rerum. Voluptatem quasi molestiae consequatur cum reprehenderit et. Rem fuga iusto enim fugit ut. Et harum et odio ullam facere. Quia consequuntur consequatur rerum. Ipsum officiis consectetur nisi eos consequuntur qui. Dolorum eum ut ut dignissimos. Sint incidunt explicabo odio dolorum facere voluptatem. Quae voluptas architecto eum. Ab amet eius sit neque. Non atque aperiam laudantium dignissimos in nihil blanditiis. Nesciunt facilis sapiente ut et dignissimos molestias modi error. Rem doloremque suscipit impedit sit placeat aspernatur earum. Non quibusdam laboriosam molestias at veniam ipsam cum. Sequi minima voluptatem harum accusamus velit quam quo. Doloremque in occaecati illum ex quia perspiciatis aut.', '38', 'stoltenberg.myrtis@example.com', 115, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(54, 'quia', 'Nihil quae est consequatur at eveniet sit. Doloribus cumque placeat in et deserunt. Eum eum cupiditate dignissimos. Porro fugit voluptates labore. Libero dolores ex officiis cumque quaerat. Quia est sint quam quia. Atque officia reiciendis voluptas consequatur impedit et aliquam. Tenetur cumque repellendus quaerat aut inventore ex. Mollitia incidunt quod minima dolorem tenetur et quia non. Odio rerum voluptatem quas autem. Perferendis porro est harum et vitae omnis. Sunt quasi voluptatem voluptas dolor eos est accusantium enim. Voluptas sit molestiae et laborum sint dolores qui inventore. A reiciendis nostrum repudiandae delectus pariatur qui alias. Quis libero sequi consectetur et non in. Officiis et nulla ipsum ipsa laudantium. Exercitationem reiciendis pariatur aliquam aut nostrum ducimus. Rerum commodi est perspiciatis facilis voluptatem praesentium. Odio eius corrupti asperiores sunt cumque pariatur. Sed qui voluptatem ducimus ducimus repudiandae. Odio ut ipsum minima architecto sint reprehenderit. Ut fugit accusantium ducimus optio. Ex consequuntur alias itaque est facere adipisci expedita. Consequatur sed nostrum commodi tempora cupiditate minima ut. Distinctio doloremque et animi voluptatum voluptatum molestias minima. Consequatur dolores nihil sint soluta excepturi consequatur soluta. Dolore dolor iusto et et officia enim. Ad est totam assumenda ipsa quaerat veritatis. Sed expedita quo illum quidem aut sint. Saepe facilis eos quia qui. Sed ad suscipit veniam sapiente est sit ab dolores.', '39', 'bwitting@example.net', 217, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(55, 'voluptas', 'Illum similique pariatur nobis qui molestiae atque incidunt. Repellat id rem ut vero nam nam. Est optio ad placeat dolorem corporis maiores. Cumque voluptatem ipsam incidunt totam quia. Ullam maxime vero distinctio rerum. Consequatur nihil perferendis dolorum eligendi corrupti. Occaecati et in ex esse. In quae impedit id inventore. Aut qui ut dolorum neque totam ut sed ipsum. Debitis sunt provident et nisi. Veniam debitis fugit ut blanditiis aperiam. Dolorum aut qui qui et. Autem corrupti omnis cupiditate quia nemo. Ad debitis ipsa nostrum reiciendis doloremque minus. Mollitia harum at sit quo. Dolor vel excepturi voluptatem consequatur qui natus qui. Itaque id aspernatur ipsum reprehenderit. Non itaque inventore eius aperiam excepturi. Aut natus recusandae culpa voluptatum iusto quo ipsa. Accusamus necessitatibus quia rem alias molestiae omnis deleniti eos.', '40', 'bwilderman@example.com', 288, 'Active', '2019-03-13 04:53:18', '2019-03-13 04:53:18'),
(56, 'est', 'Ipsum et asperiores nesciunt minima aut amet quos. Tenetur ut consequatur iusto voluptatem beatae est facilis. Ad id quo et et qui. Nam dolorem esse explicabo ipsa voluptas commodi. Error voluptatibus et eaque dolores magnam qui. Vero cumque quos enim pariatur minima. Ut assumenda aut similique et molestias tenetur animi. Ipsam illum modi tenetur rem facilis fugiat. Occaecati ut est neque quaerat totam quas aut. Sequi dolores molestiae reprehenderit ab ut aspernatur. Placeat cupiditate autem laudantium nulla voluptatibus et corporis. Qui cum non velit. Nihil aut ut modi consequuntur minus. Sunt sit tempora nihil dolore non quo. Dolores ut voluptatibus numquam voluptas quis. Expedita non odit incidunt quia. Veritatis impedit explicabo voluptatem et molestias saepe totam. Tempore rem nostrum quisquam illum sint molestiae illo qui. Omnis omnis et aut aliquid. Quo dolorem inventore libero fugit. Fugiat distinctio est et quas ratione quas. Asperiores hic repudiandae repudiandae. Veritatis et et laborum. Perspiciatis exercitationem ducimus nihil ducimus et accusantium voluptas. Nihil non ipsum perspiciatis et rem vero.', '41', 'alize74@example.net', 307, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(57, 'architecto', 'Nam quo atque accusantium et voluptatum eligendi voluptate incidunt. Sit veniam labore id vel molestiae est et quia. Blanditiis quae magni aspernatur. Nobis est velit reiciendis ducimus laudantium recusandae neque. Fuga corporis a omnis. Ullam odit pariatur et enim accusamus fugit. Amet sit quidem maxime voluptatem eaque quasi quisquam eos. Quaerat quasi molestiae et non natus molestias. Quo non fuga aspernatur odit nobis. Aut inventore impedit corporis ut. Consectetur maiores quia sit eum. Molestias qui ut est quibusdam rem doloremque voluptate. Cum libero velit repellat voluptate iure. Sed optio quisquam tempore suscipit. Deserunt omnis esse totam doloremque. Expedita dolor pariatur molestiae excepturi. Maiores quo exercitationem quia et atque. Voluptas quod culpa ut similique voluptatem molestiae. Possimus non fugiat cum itaque qui. Sint sequi et id praesentium. Sit veniam suscipit autem pariatur suscipit quia. Molestiae saepe quia modi ut. Accusamus qui non minima ab nesciunt. Totam excepturi consequuntur mollitia sit ut autem. Cupiditate perferendis quo voluptatum illum dolore. Qui corrupti laborum expedita molestiae earum et dolores. Vitae adipisci beatae velit similique sunt adipisci atque. Minus quas consectetur dolore doloremque ut quia alias. Velit quod doloribus incidunt omnis magni repellendus. Necessitatibus quasi soluta nobis illum. Exercitationem aut aut iure aut corporis. Non aut accusantium et deserunt. Rerum aspernatur nemo iusto qui ducimus voluptatibus quis. Assumenda fugiat tempora velit aperiam molestiae dolorem aut. Ipsam maxime voluptas laboriosam molestiae dignissimos inventore commodi nesciunt. Sit perspiciatis nostrum enim itaque.', '42', 'jenkins.miller@example.com', 184, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(58, 'aperiam', 'Eaque non libero tempora tempora corporis repudiandae asperiores. Vel cumque aut et cupiditate ipsa ipsam eligendi. Suscipit ipsa consequuntur odio est et. Rerum excepturi magnam deleniti quia ea tenetur. Ut enim repudiandae delectus voluptatum culpa nulla. Delectus laboriosam labore quam iste eligendi occaecati. Eius ut odit non deleniti cum. Nihil cum quam sed modi. Exercitationem blanditiis quis aut maiores. Accusantium consequuntur enim eligendi soluta in omnis. Neque hic in quo quia voluptatibus rerum aut eos. Laboriosam aspernatur odit eos rerum. Autem praesentium numquam sed nesciunt ut. Ratione tenetur quis voluptatum repellat est consequatur. Quae odio velit earum nulla eum sunt voluptatum eum. Id saepe corrupti ex ut iure. Modi aut alias sint earum. Consequuntur aut ex mollitia possimus similique excepturi itaque illo. Sint voluptatem quibusdam repudiandae aut. Eos eius aut alias et. Qui mollitia animi accusantium expedita fugit. Maiores et quod eum commodi officiis non. Aliquam laudantium praesentium voluptas dolores voluptatibus eius aliquam. Facilis vitae necessitatibus iusto inventore. Voluptas quos autem aliquam voluptates aut. Ratione debitis iusto earum adipisci debitis. Laboriosam et labore maxime pariatur omnis unde nostrum. Id minus et nemo consequuntur voluptatum velit est quidem. Sunt tenetur corrupti voluptates dignissimos quis sunt. Voluptas vel sint ut et corporis quibusdam. Aut perspiciatis perspiciatis aspernatur nemo. Sed quaerat nulla autem dignissimos minima. Tenetur impedit fugiat quo molestiae quis. Ratione eum doloremque quidem perspiciatis asperiores qui. Est expedita nulla soluta aut. Voluptas quas magni aliquid maxime. Dolor soluta soluta libero minima labore non dolorum dolorem. Itaque similique fugiat quo inventore odit consequuntur unde. Explicabo a occaecati non ea minus autem ut. In aspernatur incidunt atque labore et ducimus. Et eveniet enim est eligendi harum dolorum et sed. Voluptatibus accusamus iure ipsa consequatur quam laudantium omnis.', '43', 'elizabeth.prohaska@example.net', 160, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(59, 'aut', 'Et doloremque officia dolorem. Fugit unde deserunt necessitatibus dignissimos esse odit autem. Laboriosam aliquam repellat quia quasi nam quos. Omnis vel beatae assumenda soluta itaque aut aut. Suscipit totam aut natus sed autem atque. Est occaecati vero ea illum qui. Pariatur provident quis est. Officia iste laboriosam suscipit aut quo voluptatibus sint. Quisquam adipisci aut voluptatem dolor iure. Culpa consectetur nulla enim ducimus iusto magnam. Asperiores vitae id repellendus quam assumenda non. Minima modi nesciunt non earum nulla qui. Sint error nemo tenetur non voluptas. Sed a quia et amet accusamus repellat. Et ut adipisci eaque aut. Sit non excepturi doloribus nemo quo modi rerum. Suscipit sed modi at quia sint sint. Est error minima ratione odit eaque culpa aliquam. Accusantium autem impedit dolores rerum dolorem. Incidunt quis quia asperiores. Tempore velit et possimus a. Veritatis voluptates non voluptates quis necessitatibus. Laudantium dolor nam voluptatibus suscipit sint. Dolore dicta officiis distinctio et aliquam alias. Odit sunt a voluptate consectetur praesentium voluptates. Iure architecto sed dignissimos. Placeat est culpa adipisci. Rerum sunt molestias quia qui amet.', '44', 'merl43@example.org', 239, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(60, 'provident', 'Voluptate nobis non consectetur nemo quod. Ipsam voluptatem dolor ab aut. Cumque voluptatem molestiae nostrum aliquam amet. Sit deserunt aut libero odio. Rerum tempore tenetur alias sed alias odit. Repellendus velit ut et eos exercitationem quibusdam voluptatum. Non in provident recusandae in. At explicabo ullam ut corrupti. Odit saepe placeat modi quia temporibus dignissimos nobis. Totam inventore tenetur eos non sed. Cumque maxime repellendus eius. Ut est reprehenderit magnam quo et placeat. Dolore sint molestias voluptate corrupti. Est eum aliquid laudantium occaecati nobis. Impedit ducimus ut praesentium. Ut voluptatibus aut qui tempore blanditiis explicabo. Odit sapiente illum et dolores corrupti sed libero tenetur. Nisi delectus nostrum sed architecto temporibus qui. Earum nihil commodi qui voluptas. Laudantium fuga debitis sapiente harum et non temporibus. Perspiciatis aut facere sed labore qui. Deleniti maxime facere inventore est ab. Dolor id et quia sit. Iusto ea ad porro nulla officiis. Distinctio repudiandae exercitationem autem recusandae. Dignissimos qui voluptas accusantium pariatur voluptas id. Ab non eum et quis perferendis consequatur et. Eum quibusdam qui distinctio in. Ipsum suscipit sapiente sed laboriosam est.', '45', 'maud30@example.com', 124, 'Active', '2019-03-13 04:54:55', '2019-03-13 04:54:55'),
(61, 'quam', 'Sed beatae incidunt iure maxime similique sunt. Quas vero voluptas laborum sunt a itaque. Ipsam magni ratione porro porro dignissimos in modi. Et dolorum vero perferendis deserunt. Aliquam corporis doloribus dolores qui illo et doloremque. Et et minima qui dolorem aut mollitia. Quibusdam consequatur voluptatem eos voluptatem ratione quod quia alias. Aut sed aliquid qui enim magni at quas. Et voluptatem non et quam. Ut ut maxime eaque. Reprehenderit aliquid aliquid optio rerum. Nobis ipsam est explicabo natus aut repudiandae sit odio. Dolores dicta repudiandae molestiae dolor nihil tempora vel. Sit adipisci quam nam praesentium animi. Et beatae temporibus rem iure suscipit nesciunt. Suscipit illum unde est expedita qui quia. Mollitia facilis cum doloribus cumque quo illum ipsa iste. Minus est est non soluta. Modi et debitis alias earum sit. Exercitationem omnis quisquam vel id. Fugiat veniam neque omnis nostrum et quis. Fugiat porro odit dignissimos aut qui voluptate ipsum non. In quibusdam accusantium magnam doloremque non vel. Vel nulla maiores accusantium possimus. Alias omnis pariatur nulla eaque quo eveniet sunt occaecati.', '46', 'ygrady@example.com', 148, 'Active', '2019-03-13 04:54:56', '2019-03-13 04:54:56'),
(62, 'nemo', 'Illum quia pariatur cumque error illo. Eum culpa odio in architecto voluptatem aut. Rerum dolorem perferendis officia sit saepe alias. Itaque dolores qui voluptatem est. Praesentium omnis tempore a. Quaerat quasi reprehenderit autem error sapiente quis. Nihil similique pariatur laboriosam hic aut est. Libero aut officiis explicabo omnis deserunt. Minima quasi dolorum ut nihil porro rerum. Est at doloribus iure qui amet. Quo maiores omnis suscipit tenetur assumenda. Natus quia consectetur dolores voluptas est. Repellat corrupti totam aut ullam sit nam sit. Voluptas quos voluptas rerum optio libero. Hic et dolores eum cumque error aperiam. Sit quae dolore qui necessitatibus dolorum voluptate. Molestiae sed dolorem dolor minus tempora accusamus officiis. Provident quo voluptates dolorem cum veniam. Architecto ut dolores suscipit sed. Voluptatem voluptatum dolores in ut officiis. Iste corporis officiis fugiat quia qui quasi facere. Voluptatum consequatur nisi eaque sunt et qui et id. Delectus impedit corporis ut nihil est voluptas est. Aliquid quod ut aut harum. Ea voluptatem temporibus perspiciatis et. Esse amet quia cupiditate corporis debitis qui. Magnam deserunt et repudiandae nihil adipisci consequuntur. Consequatur qui ut et aut est omnis. Deserunt eaque provident laudantium quidem nihil nostrum. Commodi in nesciunt aut nulla. Quia rerum exercitationem distinctio facilis consectetur distinctio molestiae inventore. Laudantium expedita est repellat aut quas est sit. Earum molestiae quas accusantium reprehenderit ut. Nam aliquid necessitatibus laudantium consectetur incidunt. Aut eum voluptatibus ullam.', '47', 'thowell@example.com', 363, 'Active', '2019-03-13 04:54:56', '2019-03-13 04:54:56'),
(63, 'sed', 'Sint voluptatem ut molestiae possimus voluptas molestias. Illo qui autem nam eos ut corporis. Cum non cum ut incidunt libero asperiores. Consequatur illo consequuntur rerum possimus et eos possimus. Voluptate similique dolores aliquam repudiandae aliquam. Ut at omnis in porro blanditiis laboriosam. Est saepe dicta non esse maxime dicta. Unde dolor provident quia rerum sed autem. Laudantium repellendus nulla perspiciatis. In numquam qui enim minus qui. Laborum qui sequi cum dolor unde pariatur aut. Mollitia sunt aut nemo perferendis. Sed alias dolore pariatur alias ab cumque dolores ab. Dolorem est perspiciatis rerum earum et est dolores. Nihil aut asperiores delectus sed illo quo neque. At enim minima minus nisi voluptate quia. Porro odit voluptatem quo laborum est vero. Modi dignissimos doloremque expedita rerum explicabo nisi. Assumenda natus rerum eum velit itaque. Facilis quasi quia deleniti neque iste. Aperiam vero corrupti est reiciendis et a. Dignissimos ipsam et sunt. Iure asperiores ut sequi ipsa. Possimus sed et voluptatem magnam. Amet ea iste quia nemo distinctio enim. Iste veritatis explicabo rem unde. Voluptatem quis nihil ea suscipit quia ducimus. Nam sapiente consequuntur ut qui. Eos inventore numquam voluptas dolor facilis ipsa magnam. Consequatur labore tempora et harum sunt et quae. Incidunt nostrum quo expedita reprehenderit et quam ipsam. Impedit eos neque inventore dolorem autem odio. In dolores quas sit quia dicta ut dolor. Pariatur aliquid necessitatibus ea. Minus quae illum laborum minus quia animi. Sunt et animi iure omnis voluptatem voluptates culpa repellat. Recusandae est et deleniti dolorum est molestias. Quis architecto est qui molestiae totam repellendus. Quidem molestias nihil earum.', '48', 'imelda.kessler@example.org', 243, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(64, 'aspernatur', 'Omnis eum sint quia temporibus debitis rerum. Vel quia vero similique facere aperiam sed voluptatem. Distinctio ipsa quos fugiat expedita. Accusantium voluptas soluta excepturi qui tenetur alias. Et quia ullam doloremque culpa et enim. Et occaecati dolorum quisquam velit ex veritatis et. Ipsa aut et ipsam sit cum voluptas libero quibusdam. Perspiciatis sed sed aut voluptatem consequuntur. Pariatur reprehenderit aut est error et consequatur. Repudiandae nulla ut qui cumque quisquam veritatis. Eaque et quisquam illo accusantium ut in. Rerum eum aut ea architecto voluptatum cupiditate in. Eius consequatur recusandae laboriosam et rerum animi. Et aut pariatur repellat qui. In natus laborum rerum fugiat. Minus cumque fugiat optio ea. Itaque quia aut tempora accusantium qui nobis. Dolorem excepturi vel est mollitia dicta et voluptate. Inventore nostrum similique molestiae blanditiis dolorem eveniet est aspernatur. Reprehenderit vel dolor reprehenderit omnis sequi esse.', '49', 'will.bradtke@example.net', 229, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(65, 'aut', 'Animi vel beatae voluptas aut eum. Asperiores hic tempora animi cupiditate quia id. Qui sed aut error totam inventore quibusdam. Omnis incidunt suscipit exercitationem dolorum ex. Laboriosam voluptates occaecati nulla est vel et. Earum eveniet possimus officiis et corporis nobis. Suscipit eaque distinctio et. Et rerum ipsa culpa doloremque in earum. Inventore praesentium aspernatur sit accusantium. Iure possimus facere pariatur et impedit dolor voluptatem. Illo unde alias quia similique. Placeat voluptatem laborum delectus impedit eveniet. Deleniti quia ut et libero. Labore qui nobis suscipit mollitia. Error doloremque ut dolore possimus nostrum. Et et fugit est. Et eligendi occaecati distinctio consequatur animi. Est quae in dicta perspiciatis id. Id repellendus neque aliquid repudiandae modi aut aut. Eum esse facere ut mollitia et. Maiores tempore reprehenderit doloremque occaecati. Nihil nisi voluptatem non ex sed aut esse. Et vel tempora alias voluptatem eum ut.', '50', 'mcdermott.eugenia@example.com', 262, 'Active', '2019-03-13 04:54:57', '2019-03-13 04:54:57'),
(66, 'modi', 'Voluptatum dolorum est ut et iusto. Deserunt iusto facere et molestiae nisi. Iste sit quod debitis dignissimos. Ipsum quibusdam aliquam nam perferendis mollitia aspernatur ipsam. Nulla neque ut eum illo amet. Provident sint in sunt quasi temporibus qui nihil. Aperiam quod dolor ratione qui cupiditate odio minus dolore. Qui corrupti aut aut dolorem quis. Placeat et quia culpa odio sed rem. Et sit necessitatibus delectus quia. Libero ab rem provident ducimus quos. Qui est ut dolore et. Et excepturi neque ut eos occaecati sit. Reprehenderit quae placeat ex quisquam temporibus. Vel aut et tenetur non et. Et fuga in nulla autem. Non placeat eum ipsam alias occaecati qui velit. Eligendi dolores et et necessitatibus sint. Vel occaecati aut voluptatum laborum praesentium repellat dolorem fugit. Exercitationem eum asperiores at neque. Consequatur et esse consequuntur nesciunt nihil. Voluptatem omnis ullam ipsum ab deleniti doloremque rerum. Iure voluptatem quisquam minus consequatur dolor. Suscipit modi possimus dolores est. Saepe aut nesciunt nihil non inventore est. At eveniet non et omnis. Quasi tenetur velit enim distinctio ea. Tenetur quae quae laboriosam debitis reprehenderit nobis ratione. A est ipsum aspernatur. In ut eos voluptatem quia. Voluptatibus alias ipsum est sit sequi. Consequatur magnam iusto distinctio corrupti. Natus placeat mollitia et explicabo in animi temporibus. Quo deserunt ipsam consectetur voluptas consequatur. Tempore sint sunt tempora omnis. Tenetur porro ut et veniam dolor. Aut asperiores nobis autem veritatis id pariatur ut. Cumque quas iste quis enim rerum neque eius. Eaque magni ab voluptatibus consequatur qui sequi. Eos iusto omnis ab quos molestias. Et reiciendis minima id.', '51', 'ruthe.langosh@example.com', 137, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(67, 'commodi', 'Blanditiis architecto explicabo at consequatur autem libero saepe id. Maiores dignissimos cum voluptates sint ullam. A repellat fugit vitae sint officiis quo omnis. Et et aut iure ipsam et corporis. Dicta provident quis voluptate dolor eos. Eum est eum distinctio et ipsum provident. Inventore veritatis ducimus quia optio atque iste. Sit quidem et minima. Non nihil repellendus est natus quisquam veritatis voluptas ut. Sit fugit sit est ut. Sed blanditiis laboriosam mollitia iste debitis. Iste ab est deleniti officia molestias corporis accusantium. Expedita perferendis eius in dolore. Qui eaque molestiae dolores. Alias nihil nulla autem quis nesciunt. Fugit soluta omnis reprehenderit. Aut dolorem placeat et assumenda possimus laborum quod qui. Excepturi est ratione amet quibusdam assumenda est aut. Est quia rerum tenetur quo unde similique. Aut animi dolor ipsa veniam animi. Modi et earum voluptate hic. Non aut qui aliquid consequuntur. Et fuga at consequatur inventore non natus. Totam aperiam ipsam voluptatem quo. Ut molestiae vel tenetur est molestias est consequatur. Velit delectus laudantium harum rerum. Est accusamus voluptas et numquam quis voluptatem consectetur. Voluptatem asperiores illo veniam accusamus rerum eius non. Error repellendus quia nostrum nihil ut laudantium. Veritatis dolor nostrum deserunt. Aut quidem inventore quisquam harum magnam consequuntur. Temporibus labore minus officia nihil est ab rerum. Praesentium distinctio quia in nulla reiciendis magnam.', '52', 'effie.stroman@example.net', 240, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(68, 'non', 'Reprehenderit quas consectetur dolorem qui quae illum. Corporis eum doloribus esse quod est deleniti rerum totam. Est soluta autem quo laboriosam voluptas voluptates provident magni. Quisquam asperiores impedit nam quo incidunt eum iure. Accusantium eos enim ipsa iusto molestiae. Voluptatem vel nihil qui est molestiae. Sint voluptatum aut rem autem. Minima laudantium repellat non et sit vero ea. Alias aut voluptate repellat adipisci ipsa itaque ut at. Ut vero atque rerum culpa sit ab ut in. Mollitia placeat dolorum est fuga. Porro veniam culpa beatae rem autem ut. Aut quibusdam corrupti adipisci fugiat ipsam eum. Similique quis et ut eveniet voluptas rerum. Non esse voluptas deserunt ipsam praesentium quas quo doloremque. Adipisci rerum consequatur praesentium soluta suscipit quod. Cumque quasi beatae eligendi explicabo est ut. A voluptatem et cupiditate corrupti qui. Consequatur rerum aspernatur expedita amet cumque praesentium. Earum incidunt est laboriosam cumque. Consequatur quidem molestias nam nostrum magnam sed nisi cupiditate.', '53', 'bartholome.gerlach@example.com', 211, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(69, 'consequatur', 'Perferendis et eius corrupti corporis est rerum et. Odit alias rerum laboriosam atque ut. Ipsam error quod atque sed et. Assumenda consequatur qui maiores quibusdam aut itaque. Quod aliquam et delectus officia. Veniam deleniti qui voluptatibus qui tempore. Voluptas et veniam culpa vel expedita. Aliquam libero nemo sunt est tenetur aliquid in. Vel nesciunt odio aliquam. Voluptates debitis dolore cumque distinctio beatae totam. Nobis nihil nobis molestiae fuga illo omnis deserunt. Vitae a optio et est eligendi iure. Dicta magnam omnis recusandae illum nihil. Modi non est eum voluptate illo non accusamus autem. Maiores aliquam sed voluptate magni. Sapiente deleniti consequatur saepe cumque harum voluptatem. In praesentium quisquam molestiae pariatur rerum quidem eligendi. Commodi voluptatem non similique aut autem dolorem. Iste aliquid nisi aspernatur accusamus. Voluptas ex maxime laboriosam aliquid. Sunt et fugiat et magni. Esse id labore dignissimos ipsam mollitia sit earum distinctio. Rerum omnis nesciunt beatae aut est. Fugiat omnis nisi rerum omnis. Est cumque aliquid nulla consequatur quod eos. Et reiciendis illo non voluptatem. Omnis ut dolor eos nostrum ipsam et. Velit vitae recusandae corporis maiores. Iure aspernatur sunt suscipit voluptate similique molestiae non. Aut totam tempore et soluta iste quisquam similique ad. Dolores cupiditate dolorem in. Quam quos dignissimos optio. Non nihil neque vitae deserunt cumque. Reprehenderit temporibus autem fuga delectus excepturi. Sit rerum reprehenderit ducimus eum. Eos ipsam incidunt aperiam quod odit molestias. Quam fugit ex aut beatae maxime et iste qui.', '54', 'sdubuque@example.org', 188, 'Active', '2019-03-13 04:54:58', '2019-03-13 04:54:58'),
(70, 'est', 'Sapiente ut at nostrum. Beatae aut qui quo illum est et error. Corrupti fuga eveniet soluta perspiciatis quo voluptates ullam. Ullam voluptatem quos sunt tempore blanditiis et corporis perferendis. Nemo voluptatem ut eum quis et perferendis sunt. Qui libero sed unde ut iste. Laboriosam odit voluptatem voluptas non fugiat omnis. Similique aut veritatis est occaecati non voluptas quam. Et dolore minus est consequatur sit dolore magni. Ut iusto nostrum ex distinctio omnis modi. Consequatur voluptate odit dicta hic vel laboriosam. Quis consequatur doloribus dolorem nihil. Consequatur velit hic facilis recusandae et rem odio. Natus ea fuga officia et laborum. Quos sed nihil facere molestiae consequatur. Dolorem modi porro alias repellat consequatur eligendi. Recusandae sit consequatur illo quo tenetur consequatur. Illo accusamus asperiores labore non magnam. Qui aut sint commodi. Dolores a asperiores enim nisi architecto maxime sunt. Sapiente facere inventore non non qui dicta ab ratione. Qui ratione quo enim quia qui facere quaerat. Dignissimos laborum officiis assumenda aut. Amet dolores et eaque repellendus sed tempora et. Et tempora voluptatem aut ducimus. Cum quod quam corrupti quasi iure magni consequatur. Dignissimos aut mollitia voluptatem dolore cumque quasi deleniti.', '55', 'itillman@example.org', 315, 'Active', '2019-03-13 04:54:59', '2019-03-13 04:54:59'),
(71, 'accusantium', 'Vel provident et dolorum vero. Ut est rerum neque aut neque iste sit. Nam est adipisci ut commodi. Voluptates dolores est inventore cum. Rem sit odio saepe distinctio. Harum ea nobis nemo error vel unde. Corporis tenetur perferendis harum consequatur animi officiis illo. Ut distinctio enim quae nulla. Corrupti mollitia voluptas esse illum. Omnis ut voluptatem omnis in. Sint voluptas corporis ut distinctio voluptates. Eos eum eligendi laborum magnam. Suscipit aperiam cumque qui perferendis. Ex odio qui quisquam et modi pariatur. Eveniet adipisci nostrum autem ducimus.', '56', 'flangworth@example.com', 217, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(72, 'dolorem', 'Minima omnis corrupti sit ipsa quod libero doloribus. Molestiae voluptas est minus sit sit id distinctio. Nihil voluptas autem eos deleniti corrupti. Quod in voluptates iste id. Aliquam cupiditate et quae suscipit. Ipsum ullam quidem aut sunt quas nisi ullam. Voluptatem est perspiciatis aliquam dignissimos corrupti. Maiores blanditiis amet quasi autem quasi. Est reiciendis eum eius est dolorum quia. Neque perspiciatis labore blanditiis et.', '57', 'zola.oberbrunner@example.com', 191, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(73, 'quae', 'Ut facilis tempora temporibus et. Dolor expedita odio non excepturi. Placeat et est et quis libero fuga totam. Corrupti molestias qui ut. Laudantium hic itaque adipisci consectetur eius nisi. Similique consequuntur minus ut et quod. Asperiores quos ut commodi occaecati perferendis suscipit debitis. Dicta ut qui fugiat veniam blanditiis saepe. Quae id velit aut rerum molestiae quidem sunt ipsam.', '58', 'hand.larry@example.com', 81, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(74, 'voluptatem', 'Totam sed consequuntur omnis ducimus. Et omnis est est vero et odit expedita. Et autem molestiae ut. Exercitationem aut cum sit ducimus magni sed enim. Praesentium consequatur dolor omnis aliquid facilis aut. Et neque provident vitae quas deleniti. Sit eaque nisi nihil ut.', '59', 'zieme.winona@example.net', 234, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(75, 'ut', 'Quasi voluptatem et iure iure. Aperiam harum occaecati quasi hic neque accusamus. Aut accusantium explicabo et quibusdam ut. Libero officia incidunt maiores dolor enim tempora quis. Dolorem est iure repellat deserunt ut sint. Accusantium eos aut voluptas ex magni. Minus qui animi molestiae esse hic.', '60', 'hudson.kevon@example.net', 199, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(76, 'et', 'Ut tempora veritatis facilis mollitia voluptatibus distinctio delectus itaque. Eius voluptatum ullam suscipit in autem ipsum error. Necessitatibus possimus facere sunt ducimus mollitia ipsa. Veritatis molestiae tempore tempore voluptatem tempore a reprehenderit. Atque ab autem molestias qui dolores. Magnam eius et vel ipsa repellat nihil aut. Possimus placeat molestiae eaque.', '61', 'brakus.rubye@example.net', 390, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(77, 'quae', 'Pariatur minus perspiciatis quasi molestiae aut dolor corrupti. Atque in optio velit ea dolorum similique repudiandae. Rem soluta ipsa at optio expedita quia. Excepturi fugit iusto voluptatem architecto. Dolorem quaerat laudantium aliquid ipsum. Sit sed sit necessitatibus voluptatibus nisi. Est quam ex consequatur voluptatibus aut.', '62', 'xlynch@example.com', 119, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(78, 'quis', 'Dolorum ut suscipit facere. Amet recusandae rerum sed quas hic pariatur optio ut. Rerum quis nulla dolorum facilis sunt. Sunt est voluptatem porro sed. Et est voluptates exercitationem inventore dignissimos. Facere voluptatem adipisci doloribus voluptatibus placeat. Debitis commodi vitae nesciunt reprehenderit qui vitae.', '63', 'kelton00@example.org', 320, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(79, 'voluptatem', 'Nesciunt enim quo quas odit ipsum. Ipsum dolorem et qui sunt vel dignissimos et. Ea corrupti ullam adipisci praesentium sapiente ut aut. Ratione eligendi et sunt itaque dignissimos deserunt. Atque nihil minus architecto exercitationem voluptatem. Et dignissimos et accusantium qui. Fugiat molestias aut animi nam est explicabo. A fugiat libero autem corporis ducimus sint aut. Aliquam rerum quia aut et pariatur.', '64', 'rwiegand@example.com', 89, 'Active', '2019-03-13 05:18:22', '2019-03-13 05:18:22'),
(80, 'necessitatibus', 'Reprehenderit corrupti neque nostrum qui necessitatibus. Qui earum a sit ratione et quis. Aspernatur cupiditate mollitia est fugit ducimus id. Voluptate qui nulla nihil nemo veritatis. Consequuntur est fugiat odit voluptatem. Officia et quo quas maxime. Aliquid impedit corrupti voluptatibus cum voluptate voluptatem molestias. Nihil incidunt harum commodi. Et expedita voluptatem inventore deserunt nisi et.', '65', 'fpagac@example.net', 274, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(81, 'saepe', 'Sed exercitationem vitae delectus. In impedit temporibus maiores odio dolor soluta. Architecto nostrum quasi mollitia nisi quo doloribus. Cupiditate rerum facilis magnam nisi. Sed ullam ut sit quidem suscipit eius cumque. Molestiae incidunt unde voluptas minus laborum impedit voluptas vitae. Harum sapiente delectus minima eligendi adipisci nemo dolor laborum. Laboriosam ad repudiandae aperiam quia unde qui.', '66', 'kathryn.heathcote@example.com', 231, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(82, 'laudantium', 'Recusandae perferendis eos numquam aspernatur omnis sed consequatur. Perferendis et ipsum aut autem vero. Maiores voluptas tenetur et eaque iste quo. Maiores ipsum suscipit eligendi. Placeat expedita fugit esse. Enim deserunt sint assumenda. Dolor ratione cumque aut recusandae rerum mollitia vero in. Soluta odio incidunt explicabo praesentium. Ab tempore vel laboriosam iure non voluptatum. Et aut architecto quas quibusdam ad necessitatibus. Aperiam aut vel vitae qui.', '67', 'michael.lang@example.com', 294, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(83, 'rerum', 'Animi est omnis accusamus voluptatem voluptas aut. Molestiae natus mollitia cumque reiciendis qui facere. Sapiente est eius hic fuga ad qui aut. Voluptas odio rerum vel blanditiis sunt enim. Quaerat dolorem et impedit consequatur. Ex ad dolorum quasi est autem omnis quibusdam architecto. Saepe quo placeat vel. Suscipit vel quam nam voluptas impedit labore eos. Facere dolores qui cupiditate voluptatibus sit.', '68', 'ezequiel.jacobs@example.com', 305, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(84, 'a', 'Veniam voluptas rerum iusto similique laudantium omnis. Quisquam non rerum assumenda sit. Vel id consequuntur et unde ab. Aliquid veniam qui incidunt. Molestiae vel fuga quam odit voluptatem sed ut. Atque dolorem ut quis qui molestiae nemo. Sunt nemo qui et adipisci autem nulla. Cum officia tempore nihil sunt accusamus. Dolores nihil totam placeat libero.', '69', 'schiller.cassandra@example.org', 144, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(85, 'dolor', 'Aliquam placeat voluptas quia est dolorum quia. Qui aut nostrum autem quas. Illo sit cum sunt a consequatur. Possimus at culpa nisi beatae. Qui vitae odio voluptatibus deserunt qui fuga molestiae. Sunt reiciendis quos voluptas voluptas veritatis. Et aut est ut praesentium non sapiente. Est rem enim sit. Quos expedita quo vitae totam debitis dolor atque ut. Voluptates aliquid autem velit distinctio quibusdam sint consectetur. Voluptatum vero officiis voluptatum.', '70', 'nitzsche.elmira@example.org', 212, 'Active', '2019-03-13 05:18:23', '2019-03-13 05:18:23'),
(86, 'Emamul Mursalin', 'Hello ki betaa?', '12', 'mahbu@gmail.com', NULL, 'Active', '2019-03-14 17:08:17', '2019-03-14 17:08:17'),
(87, 'Nahid Hasan', 'How about diu? is this a good university?', '1', 'nahid@gmail.com', NULL, 'Active', '2019-03-16 08:22:20', '2019-03-16 08:22:20');

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
(4, 'Jallo Beibek', 12, 'Dhanmondi boys school is best for this class', NULL, '2019-03-11 06:51:47', NULL),
(6, 'Jinedin Jidan', 12, 'Dhanmondi boys is best', NULL, '2019-03-11 07:09:15', NULL),
(8, 'Khaton Ara', 14, 'Ebn Sina Hospital', NULL, '2019-03-13 01:07:28', NULL),
(15, 'omnis', 46, 'Pariatur qui ut et minima dolorem consequuntur. Hic mollitia qui ut incidunt iusto aut. Vel officiis aliquam quia sed. Eum magnam occaecati nihil provident quod illo. At eveniet nobis tempore est dolorem est. Perferendis voluptatem dolorem autem aut. Et dicta ut id deleniti expedita velit culpa. Nesciunt aut et ullam voluptate vel id molestiae ea.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(20, 'ullam', 51, 'Possimus consequatur error quia. Blanditiis vitae id quo. Possimus omnis nemo dicta nisi. Veniam excepturi doloremque sint quod. Ut veniam dolor architecto. Tempore laborum omnis culpa adipisci magnam. Veniam excepturi quia illo minima possimus esse consequatur. Dolore voluptas eius sapiente ut laborum aut quo ut. Facilis velit perspiciatis excepturi cum iste. Sint non sit non vero et alias asperiores. Similique totam qui ut et repellat sunt itaque. Accusantium nesciunt facere accusantium. Perferendis minima est molestiae ut libero deleniti repellendus quibusdam. Et reprehenderit consequatur qui libero beatae et minus.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(21, 'sit', 52, 'Dolores aperiam ullam ut soluta adipisci. Adipisci nemo neque rerum ullam molestiae. Voluptate consequatur neque beatae eaque qui in officiis dolor. Sapiente sit repellat vel ea animi nisi quam qui. Consectetur ipsum quaerat est velit hic sed. Illum quibusdam distinctio autem ipsa eos. Ut incidunt tenetur blanditiis odio. Quidem suscipit quas neque. Laborum est fugiat praesentium.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(22, 'recusandae', 53, 'Sunt incidunt voluptates velit quos rerum modi. Vel repudiandae consectetur adipisci incidunt. Aut facilis tempora quo quam nulla. Aspernatur error facilis libero tempora omnis mollitia. Sint vel alias ut perferendis voluptatem. Maiores est harum voluptas. Nulla odit sit vel fuga amet magni facilis iure.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(23, 'in', 54, 'Aut animi laboriosam nulla odit labore. Est quia sunt dolorem velit dolorum repellendus ipsum. Sunt expedita quisquam non est pariatur sit est ut. Autem debitis sed est nulla voluptatem nulla. Velit asperiores reiciendis iusto cupiditate. Perspiciatis odio quia eum ex excepturi id. Pariatur quia sit eligendi qui iste. Adipisci hic dolor et quidem et. In nam adipisci provident expedita. Ducimus modi est a rerum iure repellat minima. Itaque vel a fuga qui reiciendis ducimus ut.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(24, 'expedita', 55, 'Consequatur quam est sit. Sapiente eos sunt praesentium quibusdam natus libero nemo quibusdam. Est eius molestias hic voluptates. Ab quae amet neque ipsa. Sint assumenda quia aliquid. Quis consequatur vel doloribus porro reiciendis. Perferendis aperiam voluptatibus fuga facilis. Vitae accusantium sint voluptas minus veritatis omnis est. Quas deleniti laboriosam error quo dolor. Sit impedit repellat totam sed reprehenderit eum. Iste eum eos at ipsam aut.', NULL, '2019-03-13 04:53:19', '2019-03-13 04:53:19'),
(25, 'quidem', 56, 'Molestiae aut accusamus beatae. Sed dolorem labore illo. Beatae dolor aliquid voluptatibus animi. Aut corporis numquam qui et. Consequuntur quas est libero libero totam iste. Ut accusantium atque adipisci nobis hic voluptatem. Reiciendis est in ipsam deleniti. Nostrum enim praesentium deserunt maiores et provident incidunt. Similique non ipsa qui repellendus quis atque. Repellendus ratione officia ad consequatur blanditiis est voluptatem in. Doloribus totam et quia modi. Ut eius deleniti officia delectus velit incidunt. Soluta aliquam praesentium ullam facilis enim nulla. Tempore qui ipsam veritatis rem sed. Voluptatem at enim eaque aperiam officia.', NULL, '2019-03-13 04:54:59', '2019-03-13 04:54:59'),
(26, 'atque', 57, 'Deleniti eius ut et. Ipsam est earum sit voluptatem est dolores. Aut pariatur autem ipsam dolorem ad itaque impedit iusto. Dolores incidunt minus aliquid ullam. Itaque ducimus perferendis est eum placeat doloribus. Odit laudantium delectus qui incidunt nihil. Atque expedita nesciunt enim cupiditate. Soluta asperiores facere placeat quis quos necessitatibus sequi.', NULL, '2019-03-13 04:54:59', '2019-03-13 04:54:59'),
(27, 'velit', 58, 'Eum voluptatibus hic eaque molestiae minima molestiae ut. Veniam voluptatem minima ut illo repellat. Aut eos sed exercitationem doloribus. Aliquam tenetur iure quae id debitis inventore. Facere deleniti explicabo laboriosam et quidem. Voluptas eum aut aliquam ratione est. Inventore illum sint illum voluptas vitae eos. Consectetur molestiae cumque accusamus voluptatum. Velit consequatur veritatis accusantium. Voluptatum qui dolore modi eum. Rem et ea sit excepturi ipsum modi.', NULL, '2019-03-13 04:54:59', '2019-03-13 04:54:59'),
(28, 'ABM', 80, 'hela palta dee tann thaoli', NULL, '2019-03-14 07:06:54', '2019-03-14 07:06:54'),
(29, 'sadfa', 80, 'afasdf', NULL, '2019-03-14 07:07:03', '2019-03-14 07:07:03'),
(30, 'adsadasd', 80, 'faadfasdf', NULL, '2019-03-14 07:08:29', '2019-03-14 07:08:29'),
(31, 'asdfsa', 80, 'afasf asdfsa', NULL, '2019-03-14 07:08:56', '2019-03-14 07:08:56'),
(32, 'asdf', 80, 'adf asdfa', NULL, '2019-03-14 07:09:24', '2019-03-14 07:09:24'),
(33, 'Kaloo', 86, 'ki beta', NULL, '2019-03-14 17:08:52', '2019-03-14 17:08:52'),
(34, 'Hi', 86, 'Alop', NULL, '2019-03-14 17:09:07', '2019-03-14 17:09:07'),
(35, 'Mahbubul', 87, 'Yes. it is good.', NULL, '2019-03-16 08:22:56', '2019-03-16 08:22:56');

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
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `estDate`, `main_img`, `gallery_img_1`, `gallery_img_2`, `chancellor`, `ownership_type`, `address`, `city`, `isActive`, `updated_at`, `created_at`) VALUES
(2, 'Square Hospital', '2019-03-02', '15525395333102.png', '15525395333147.png', '15525398674394.jpeg', NULL, 'Private', 'Dhanmondi', 'Dhaka', 'Active', '2019-03-13 23:04:27', '2019-03-13 22:58:53'),
(3, 'Payoneer Eye Hospital', NULL, 'default.jpg', 'default.jpg', 'default.jpg', NULL, 'Private', NULL, NULL, 'Active', '2019-03-14 05:50:50', '2019-03-14 00:44:54');

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
(2, 3, 80, 20, 30, '2019-03-13 22:58:53', '2019-03-14 00:14:22');

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
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `restaurant` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cafe` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `user_id`, `estDate`, `star`, `rating`, `main_img`, `gallery_img_1`, `gallery_img_2`, `owner`, `address`, `description`, `district`, `sub_district`, `isActive`, `restaurant`, `cafe`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pacific', 1, '2019-03-08', 5, NULL, 'default.jpg', '15527422564617.png', 'default.jpg', 'Mahbubul', 'Karwanbazar', 'This is fantastic.', 'Dhaka', 'Dhanmondi', 'Active', 'Yes', 'Yes', NULL, '2019-03-16 07:12:15', '2019-03-16 07:17:37');

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
  `price` int(11) DEFAULT NULL,
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
(2, 'DIU', '2019-03-01', 'default.jpg', 'default.jpg', 'default.jpg', NULL, NULL, NULL, 'Dhaka', 'University', 'Active', '2019-03-02 06:33:48', '2019-03-14 00:56:31'),
(3, 'DU', '2019-03-02', '15516054083130.jpeg', 'default.jpg', 'default.jpg', NULL, NULL, 'Dhaka', 'Dhaka', 'University', 'Pending', '2019-03-03 03:30:09', '2019-03-03 03:30:19'),
(4, 'Sylhet ....', '2018-12-08', '15516120251206.jpeg', 'default.jpg', 'default.jpg', NULL, 'Private', NULL, 'Chittagong', 'University', 'Pending', '2019-03-03 05:20:25', '2019-03-14 00:56:45'),
(5, 'Brack University', '2019-03-02', '15521387654189.jpeg', 'default.jpg', 'default.jpg', NULL, NULL, 'Dhanmondi 32', 'Dhaka', 'University', 'Active', '2019-03-09 07:39:27', '2019-03-09 07:39:27');

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
(4, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-03 05:20:25', '2019-03-03 05:20:25'),
(5, 1, 7800000, 3000, 100, 'IEEB', 125, 50, '2019-03-09 07:39:28', '2019-03-09 07:41:17'),
(5, 3, 23423, 2342, 23, 'IEEB', 234, 2342, '2019-03-09 07:39:28', '2019-03-09 07:41:38'),
(5, 9, 2342, 24, 233, 'Farmachiest', 423, 2342, '2019-03-09 07:44:12', '2019-03-09 07:44:35'),
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
(17, '2019_03_03_153103_create_hospital_department_relations_table', 8),
(18, '2019_03_10_190403_create_forum_comments_table', 9),
(19, '2019_03_15_041429_create_hotels_table', 10),
(20, '2019_03_15_050328_create_room_types_table', 11),
(21, '2019_03_15_052752_create_hotel_rooms_table', 12);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
  ADD CONSTRAINT `institute_departments_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `institutes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
