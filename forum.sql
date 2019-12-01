-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2019 at 12:11 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.3.12-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'voluptatea', 'voluptatea', '2019-11-29 17:17:33', '2019-11-29 20:05:30'),
(2, 'officiis', 'officiis', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(3, 'facilis', 'facilis', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(4, 'facere', 'facere', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(7, 'Hello2', 'hello2', '2019-11-30 21:48:07', '2019-11-30 21:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(2, 2, 7, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(3, 3, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(4, 4, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(5, 5, 8, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(6, 6, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(7, 7, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(8, 8, 5, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(9, 9, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(10, 10, 9, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(11, 11, 10, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(12, 12, 6, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(13, 13, 7, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(14, 14, 10, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(15, 15, 2, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(16, 16, 10, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(17, 17, 8, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(18, 18, 7, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(19, 19, 7, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(20, 20, 1, '2019-11-29 17:17:37', '2019-11-29 17:17:37'),
(21, 21, 9, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(22, 22, 9, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(23, 23, 2, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(24, 24, 5, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(25, 25, 3, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(26, 26, 2, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(27, 27, 5, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(28, 28, 1, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(29, 29, 10, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(30, 30, 3, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(31, 31, 5, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(32, 32, 3, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(33, 33, 2, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(34, 34, 3, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(35, 35, 8, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(36, 36, 7, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(37, 37, 10, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(38, 38, 4, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(39, 39, 5, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(40, 40, 1, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(41, 41, 5, '2019-11-29 17:17:38', '2019-11-29 17:17:38'),
(42, 42, 9, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(43, 43, 10, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(44, 44, 8, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(45, 45, 2, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(46, 46, 8, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(47, 47, 6, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(48, 48, 5, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(49, 49, 10, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(50, 50, 10, '2019-11-29 17:17:39', '2019-11-29 17:17:39'),
(54, 37, 11, '2019-11-29 17:28:27', '2019-11-29 17:28:27'),
(57, 16, 11, '2019-11-29 17:32:54', '2019-11-29 17:32:54'),
(60, 54, 12, '2019-11-29 19:11:34', '2019-11-29 19:11:34'),
(66, 51, 11, '2019-11-30 07:39:16', '2019-11-30 07:39:16'),
(70, 55, 12, '2019-11-30 07:39:32', '2019-11-30 07:39:32'),
(73, 51, 12, '2019-11-30 07:43:20', '2019-11-30 07:43:20'),
(77, 56, 12, '2019-11-30 08:31:54', '2019-11-30 08:31:54'),
(78, 58, 11, '2019-11-30 08:33:13', '2019-11-30 08:33:13'),
(81, 59, 11, '2019-11-30 08:49:14', '2019-11-30 08:49:14'),
(82, 59, 12, '2019-11-30 08:49:19', '2019-11-30 08:49:19'),
(83, 72, 11, '2019-11-30 16:51:49', '2019-11-30 16:51:49'),
(84, 71, 11, '2019-11-30 16:51:51', '2019-11-30 16:51:51'),
(85, 71, 12, '2019-11-30 16:51:52', '2019-11-30 16:51:52'),
(86, 72, 12, '2019-11-30 16:51:53', '2019-11-30 16:51:53'),
(87, 79, 12, '2019-11-30 17:27:18', '2019-11-30 17:27:18'),
(88, 84, 12, '2019-11-30 17:38:47', '2019-11-30 17:38:47'),
(89, 85, 11, '2019-11-30 18:00:21', '2019-11-30 18:00:21'),
(90, 91, 12, '2019-11-30 21:24:26', '2019-11-30 21:24:26'),
(91, 91, 11, '2019-11-30 21:24:29', '2019-11-30 21:24:29'),
(101, 55, 16, '2019-11-30 21:43:40', '2019-11-30 21:43:40'),
(104, 94, 16, '2019-11-30 21:46:25', '2019-11-30 21:46:25'),
(105, 93, 16, '2019-11-30 21:46:28', '2019-11-30 21:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_25_121403_create_questions_table', 1),
(5, '2019_11_25_121845_create_replies_table', 1),
(6, '2019_11_25_122251_create_categories_table', 1),
(7, '2019_11_25_122359_create_likes_table', 1),
(8, '2019_11_29_194348_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `slug`, `body`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Odio sequi sed labore sunt exercitationem recusandae.', 'odio-sequi-sed-labore-sunt-exercitationem-recusandae', 'Quis dolor et molestias perferendis repellat inventore. Cumque cum blanditiis qui vel placeat deleniti et dolor. Sint vitae optio error.', 3, 4, '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(2, 'Ea aut qui et dicta molestiae dolorem exercitationem.', 'ea-aut-qui-et-dicta-molestiae-dolorem-exercitationem', 'Quod qui quaerat a sunt aut aut maxime. Dolorem nam in pariatur nihil sed rerum quae. Nihil dolor odit commodi at accusantium quibusdam facere.', 1, 10, '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(3, 'Hic soluta eum ducimus non beatae placeat voluptate.', 'hic-soluta-eum-ducimus-non-beatae-placeat-voluptate', 'Saepe ea architecto aspernatur beatae. Reiciendis perspiciatis tempora tenetur eaque cumque corporis blanditiis. Corrupti sit dolorem fugiat debitis similique repellat et.', 2, 4, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(4, 'Sit necessitatibus accusantium et ab ducimus dolores.', 'sit-necessitatibus-accusantium-et-ab-ducimus-dolores', 'Sit et quidem ut maxime. Fugiat ut accusantium sed nam odio eius autem. Vel asperiores ut quam eum. Aut facere illo optio cupiditate qui. Omnis laudantium culpa sit dolorem dignissimos autem.', 1, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(5, 'Ut atque modi earum rerum adipisci facilis.', 'ut-atque-modi-earum-rerum-adipisci-facilis', 'Voluptas quo explicabo nesciunt vitae fuga. Aut incidunt architecto voluptatem rerum rem. Dolore excepturi at aspernatur totam quam ut nam. Qui ad voluptates cumque at.', 3, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(6, 'Consequatur error voluptas accusantium et quo.', 'consequatur-error-voluptas-accusantium-et-quo', 'Numquam ut et facilis dolore voluptas voluptatum ipsum. Aut consequatur ipsa et architecto quos sint numquam autem. Labore ut dolor dicta eum.', 1, 10, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(7, 'Est et et laborum voluptatibus.', 'est-et-et-laborum-voluptatibus', 'Odit qui pariatur recusandae neque quibusdam ea. Est distinctio assumenda ut dolorem odio repellat enim. Qui distinctio nihil et consequatur.', 4, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(8, 'Cupiditate aspernatur voluptatum et maxime ab rerum.', 'cupiditate-aspernatur-voluptatum-et-maxime-ab-rerum', 'Repellendus totam cum ad aliquam corporis. Debitis atque minima esse enim sit at veritatis. Optio doloribus libero voluptate eos exercitationem.', 3, 8, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(9, 'Voluptatem ad id ab non facere sit.', 'voluptatem-ad-id-ab-non-facere-sit', 'Dolores vitae pariatur reiciendis sed quia iusto in et. Voluptatem et odio voluptas rem qui fugit sint soluta. Consequuntur eum itaque non molestiae earum enim omnis non.', 3, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(10, 'Porro ut quia cum.', 'porro-ut-quia-cum', 'Quos in ut quo enim sed voluptatem sunt. Iusto nisi cumque odio voluptatem. Quod mollitia eveniet non dolore itaque et necessitatibus.', 2, 6, '2019-11-29 17:17:34', '2019-11-29 17:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `body`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Magnam corporis ut nemo et et. Molestiae velit quod aperiam tenetur. Ut animi nemo accusamus aspernatur. Perspiciatis vitae sed sunt est molestias sed suscipit.', 1, 6, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(2, 'Ipsa qui magni aut deserunt esse voluptatem. Voluptates quos voluptas aliquam eum sit animi culpa iste. Consequuntur aut cumque sit sapiente totam.', 8, 6, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(3, 'Deserunt dolore voluptatem nam consequatur. Id et consequatur quasi. Mollitia numquam tempora ab.', 6, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(4, 'Saepe sint quia ipsum quas nesciunt recusandae. Cumque qui cum consequatur quis. Quae atque architecto doloremque.', 9, 9, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(5, 'Sit nihil est rerum commodi consequatur ullam magnam. Modi ut quasi voluptas tenetur. Fugiat amet eum dolores sed eveniet. Quod quibusdam cumque itaque quos. Excepturi in autem sint.', 6, 2, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(6, 'Architecto aspernatur magnam laudantium dicta. Mollitia et facilis ut similique quia. Non facere eligendi exercitationem soluta. Sunt molestiae dignissimos facere quia officia ducimus earum.', 9, 6, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(7, 'Eos in dolor dolor consequuntur voluptates ut voluptates. Exercitationem debitis suscipit dolorum et sunt. Praesentium provident cumque voluptates voluptas ipsum.', 2, 7, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(8, 'Vitae ut suscipit minima ullam quia autem. Est atque voluptatem et totam qui dolorem neque. Optio hic ea rerum nam.', 2, 8, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(9, 'Nihil aperiam atque voluptatem. Voluptates quia animi vitae autem. Vel minus enim est aut. Molestiae velit officiis voluptatem.', 6, 2, '2019-11-29 17:17:34', '2019-11-29 17:17:34'),
(10, 'Amet ea voluptatem esse vitae odit sed. Culpa qui provident dignissimos rerum ut incidunt aliquam. Sunt blanditiis est magnam porro dicta ut. Dolor molestiae est ut tempore illum nam nemo.', 4, 10, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(11, 'Velit facilis et recusandae quisquam non. Optio unde qui voluptatibus soluta. Ea ducimus ipsum asperiores dolore nam voluptatibus.', 2, 4, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(12, 'Ullam quis qui veritatis quis. Et delectus eos quas enim. Minus voluptas voluptatibus consequatur impedit voluptas enim qui.', 9, 9, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(13, 'Atque voluptas omnis et quis distinctio quidem sit. Repellat sit sint ea temporibus voluptates molestias sunt. Sint quis voluptatem vel necessitatibus molestiae.', 6, 8, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(14, 'Ex natus nemo deserunt aut aut. Dolorum aut nam nobis fugit. Eum praesentium dolores est sed. Et nihil laudantium veniam voluptatem hic rem ut quis.', 9, 2, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(15, 'Natus fuga eos ut provident. Voluptatem nostrum asperiores voluptatum odit. Et quam aut totam doloremque.', 2, 7, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(16, 'Cupiditate ducimus tenetur quidem molestias suscipit. Praesentium quae soluta nihil atque. Rerum necessitatibus enim sed et sit. Voluptatibus vero vitae odio facere dolorum.', 3, 3, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(17, 'Vero sint quasi atque occaecati est. Aut corporis odit quia similique quaerat rerum consequatur minus. Quasi aut provident nihil fugiat. Ut occaecati quod ut sunt optio eum ut itaque.', 1, 9, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(18, 'Occaecati voluptas aut facere placeat. Non omnis atque voluptatem. Assumenda sit et doloremque. Quod facere rerum quam. Nobis optio illo repellendus perspiciatis ipsam at consectetur.', 2, 10, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(19, 'Officiis et voluptate repellendus fuga modi perferendis explicabo. Magni autem aut et quia ea facere. Velit esse quam voluptatem. Labore veritatis qui soluta eos eveniet ab vero ipsa.', 9, 2, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(20, 'Officiis accusantium id consequuntur molestias impedit explicabo qui deserunt. Rerum voluptas dolor error voluptatem odio quibusdam.', 4, 4, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(21, 'Natus dicta nesciunt a aliquid esse ex et. Nesciunt optio eaque ut temporibus corrupti. Laboriosam quod cupiditate modi voluptas. Non totam necessitatibus ullam dolor voluptatem dolorem error.', 7, 5, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(22, 'Voluptas eos recusandae natus eaque aperiam perspiciatis officia. Veritatis aliquam saepe dolor. Rerum est expedita excepturi nostrum.', 6, 10, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(23, 'Quod voluptatem consequatur excepturi consequatur ut id magni. Ut et voluptas quia in. Et aspernatur eius suscipit modi culpa nostrum. Ut molestiae omnis enim officiis sed consequatur.', 5, 6, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(24, 'Sed mollitia labore rerum quis perspiciatis eos. Ducimus omnis qui voluptas dignissimos totam dolores.', 2, 5, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(25, 'Consectetur corporis hic et odio consequatur illum repellat. Dolorum ipsum fugit eveniet quod occaecati dolores. Harum ut incidunt ipsum itaque.', 10, 7, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(26, 'Harum quisquam ut facilis harum. Officiis quia laudantium aut. Non dolorem in ipsum eum eaque. Aperiam quos vero perferendis consectetur nesciunt nobis consequatur qui.', 9, 4, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(27, 'Voluptatum laboriosam vero in aut impedit eos. Dolor sint saepe voluptates non cum eius sunt. Voluptates amet alias ex qui.', 10, 4, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(28, 'Harum totam quis culpa veniam reiciendis vitae. Eaque aliquam et eum adipisci dolorem. Voluptatem repellat voluptatem fugiat consequatur voluptatem.', 5, 9, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(29, 'Quidem voluptates molestiae et. Molestiae hic et eligendi dignissimos fugit impedit est occaecati. Laborum consectetur aspernatur et ex. Nemo aut ad quam rerum culpa. Cumque ea molestias quo.', 6, 1, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(30, 'Consequatur molestiae inventore et perferendis modi possimus et. Ullam eos voluptas facilis. Unde reiciendis cupiditate adipisci atque. Laborum eos voluptatem vero reprehenderit.', 2, 7, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(31, 'Architecto cum aspernatur velit maxime enim deserunt. Non sapiente voluptatibus iure est voluptatem iusto eum enim. Voluptatem animi autem suscipit. Impedit voluptatum nobis sint ea rerum sed animi.', 6, 9, '2019-11-29 17:17:35', '2019-11-29 17:17:35'),
(32, 'Consequatur praesentium expedita placeat et. Ea voluptas omnis et vel soluta ducimus.', 6, 6, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(33, 'Unde accusamus quidem vitae. Ut unde similique commodi exercitationem et omnis est ducimus. Officia ab consequatur doloribus ut eveniet qui. Vel illo perferendis quia recusandae.', 9, 1, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(34, 'Mollitia est deserunt nesciunt porro minus quasi tempora molestiae. Animi aut rerum quia aut ratione dolor. A animi vero eius est dolor possimus. Vel explicabo et possimus esse enim temporibus.', 2, 4, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(35, 'Deleniti nostrum nostrum accusantium doloribus voluptas hic. Enim blanditiis eum quos odit error laborum. Ad non omnis voluptas. Non ipsum perferendis et in. Temporibus sed eaque cumque eum nobis.', 10, 6, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(36, 'Adipisci culpa neque ut architecto. Quibusdam voluptatum commodi nulla qui nesciunt officiis. Voluptatem quasi in repellendus est quidem.', 9, 10, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(37, 'Quos omnis porro saepe quis non recusandae qui. Et neque voluptatem aut vero. Earum blanditiis facere nemo eum.', 5, 6, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(38, 'Tenetur et inventore reprehenderit. Voluptatum voluptate quas nulla a accusantium. Totam nihil officiis animi ut voluptatem quam repellendus. Sed non magnam magnam sit earum.', 7, 10, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(39, 'Vel reiciendis incidunt distinctio eos. Facilis et rem illum est. Quae dolores quaerat eligendi et.', 7, 3, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(40, 'Eum nihil porro unde quisquam. Quasi animi quaerat earum veritatis eligendi et ea. Omnis quia id numquam rerum.', 9, 5, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(41, 'Quia fugiat iste quia nesciunt. Debitis et voluptates eligendi odio. Aut totam quasi quam dicta placeat.', 8, 7, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(42, 'Quia modi quo sequi a. Nesciunt velit et quas maxime rerum dolores voluptatum nobis. Et et autem quo.', 6, 4, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(43, 'Impedit odit perspiciatis est maxime eaque maiores eveniet. Vel omnis illo suscipit aliquam nihil. Rerum necessitatibus quia dicta dolor sed.', 9, 10, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(44, 'Pariatur incidunt mollitia non est fuga cum commodi. Voluptatem vero voluptatum eveniet sit asperiores voluptatibus earum. Omnis pariatur modi omnis excepturi minima.', 6, 1, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(45, 'Omnis laudantium sint rerum quam dolorem consequatur. Commodi eius eos animi. Ut sunt non quo.', 8, 5, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(46, 'Soluta ullam ut ut. Ut deleniti cumque sapiente dolores quasi. Quod optio ea voluptatem eos totam.', 5, 8, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(47, 'Dolores commodi non vero cumque natus dolor. Repellendus iure explicabo quod odio aliquid ab. Aut aut praesentium quia omnis eveniet cum necessitatibus.', 5, 5, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(48, 'Non nihil quod sit veritatis magni repellendus odio. Nam ratione sint sint adipisci ex corporis et. Et autem voluptatem vel voluptatem nisi perferendis ipsam. Deleniti omnis qui porro dolores.', 5, 3, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(49, 'Sint quibusdam rem repellat quia eos tempora maxime qui. Nostrum ad in commodi molestias nisi voluptatem cumque.', 10, 1, '2019-11-29 17:17:36', '2019-11-29 17:17:36'),
(50, 'Qui quis esse cupiditate pariatur atque hic consequatur. Voluptatem non ad illum dolore. Hic quia cumque eaque totam omnis ad. Illo inventore distinctio fuga omnis vel sequi pariatur.', 5, 3, '2019-11-29 17:17:36', '2019-11-29 17:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jewel Huels', 'friesen.kaley@example.org', '2019-11-29 17:17:30', '$2y$10$cgVOSKHePWw55I2CpGrOSOSwNTEucHfD2vqfzEB7y61NXV6kylc0u', 'J0CSyg04xc', '2019-11-29 17:17:32', '2019-11-29 17:17:32'),
(2, 'Nicola Walsh', 'talon.nicolas@example.net', '2019-11-29 17:17:30', '$2y$10$SiMzPedYqQK74rkYwrhCZOpffUylLvX.eTPPUk7JhMkTSs1mJ2P4y', 'VvtTxxZedb', '2019-11-29 17:17:32', '2019-11-29 17:17:32'),
(3, 'Efrain Runte', 'ruben86@example.org', '2019-11-29 17:17:30', '$2y$10$hshgyA.1.5hnyH4hO.4UOOf54opY5cj68qyn3CH9hGldTC9AzRtFS', 'O8AsCZUNqL', '2019-11-29 17:17:32', '2019-11-29 17:17:32'),
(4, 'Dianna Aufderhar Jr.', 'nels93@example.net', '2019-11-29 17:17:30', '$2y$10$mi5OTLbnydH5j7yQ4axa3OHc1m9WAb3tFiVtY1E2qFIXe91fkrG4K', 'SAjTq4mF3Q', '2019-11-29 17:17:32', '2019-11-29 17:17:32'),
(5, 'Connor Fahey', 'pfeffer.rudy@example.org', '2019-11-29 17:17:31', '$2y$10$JqURJRJkWkvrUfMzRMwlz.lNTR2NbZhWBGgE13l024jQ.98I1fwSK', '85hU3khieK', '2019-11-29 17:17:32', '2019-11-29 17:17:32'),
(6, 'Vaughn Legros', 'lewis.runolfsson@example.com', '2019-11-29 17:17:31', '$2y$10$bNHURZFHJbRVHGet/RnWZ.lC7iO3GDQPdbQT1qK1YunUOoW87cJia', 'W3aZyZUTTb', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(7, 'Mrs. Ellie Reichel', 'frami.cody@example.org', '2019-11-29 17:17:31', '$2y$10$3V878zPz/UlX6jnYIHh9QuF7TESYg1Z179PUNbe1iWRlK3RND8H4y', 'MRIpNXdqde', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(8, 'Araceli Pouros', 'marshall.luettgen@example.com', '2019-11-29 17:17:31', '$2y$10$UbgSvDlyExBekr4ovKXIEuZXGOnTe5.ccgTp0w.wRq2uIRq4e05kG', 'nXwUHoYYsY', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(9, 'Friedrich McKenzie', 'jerry73@example.org', '2019-11-29 17:17:31', '$2y$10$FJdH16bhS9bFJNo/.aYCkOYvlx9OOquf5Z.Op80gFTYM2AqNUESNe', '9gdrxpYyZ0', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(10, 'Mrs. Marie D\'Amore', 'natalia.ratke@example.com', '2019-11-29 17:17:31', '$2y$10$ZqgWhnvlFD4WsHm0AYLzoe69fFTt1pqzOCOPu56t4DMm92O1EVB.y', 'SxSySJVSE7', '2019-11-29 17:17:33', '2019-11-29 17:17:33'),
(11, 'Super Admin', 'super@admin.com', NULL, '$2y$10$nvZwEZYhxzcC6hPSKK63EeNcfMEimqVMVDaIUfmk4tcTOzQzv.IJW', NULL, '2019-11-29 17:18:10', '2019-11-29 17:18:10'),
(12, 'Ahmed Mohamed', 'ahmed@ahmed.com', NULL, '$2y$10$2SGFINJwuxs3QhNXFJfhz.bO7X2sIkSniDGkwGOktcVA/JBHX0WOG', NULL, '2019-11-29 19:11:24', '2019-11-29 19:11:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_question_id_foreign` (`question_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
