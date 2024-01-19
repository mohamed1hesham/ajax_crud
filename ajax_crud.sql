-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2024 at 05:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_16_225028_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Test product', 200, '2024-01-19 11:06:08', '2024-01-19 11:06:08'),
(2, 'Test 2', 300, '2024-01-19 11:11:34', '2024-01-19 11:11:34'),
(3, 'ss', 12, '2024-01-19 11:12:18', '2024-01-19 11:12:18'),
(4, 'sad', 123, '2024-01-19 11:16:49', '2024-01-19 11:16:49'),
(5, 'sad123', 123, '2024-01-19 11:17:02', '2024-01-19 11:17:02'),
(6, 'dsa', 123, '2024-01-19 11:17:48', '2024-01-19 11:17:48'),
(7, 'asd', 123, '2024-01-19 11:18:48', '2024-01-19 11:18:48'),
(8, 'asfasf', 1234, '2024-01-19 11:18:55', '2024-01-19 11:18:55'),
(9, 'ddd', 123, '2024-01-19 11:20:03', '2024-01-19 11:20:03'),
(10, 'ds', 213, '2024-01-19 11:20:34', '2024-01-19 11:20:34'),
(11, 'fs', 123, '2024-01-19 11:21:06', '2024-01-19 11:21:06'),
(12, 'asf', 1234, '2024-01-19 11:21:23', '2024-01-19 11:21:23'),
(13, 'ff', 234, '2024-01-19 11:21:36', '2024-01-19 11:21:36'),
(14, 'af', 1244, '2024-01-19 11:22:27', '2024-01-19 11:22:27'),
(15, '124', 124, '2024-01-19 11:23:26', '2024-01-19 11:23:26'),
(16, 'gsdg', 234, '2024-01-19 11:23:57', '2024-01-19 11:23:57'),
(17, 'kghk', 2342, '2024-01-19 11:24:49', '2024-01-19 11:24:49'),
(18, '235', 235, '2024-01-19 11:25:49', '2024-01-19 11:25:49'),
(19, '2353', 123512, '2024-01-19 11:26:53', '2024-01-19 11:26:53'),
(20, 'saffasf', 325, '2024-01-19 11:27:41', '2024-01-19 11:27:41'),
(21, 'asfg', 2352, '2024-01-19 11:28:37', '2024-01-19 11:28:37'),
(22, 'saf', 325, '2024-01-19 11:29:22', '2024-01-19 11:29:22'),
(23, 'hjgh', 457, '2024-01-19 11:30:08', '2024-01-19 11:30:08'),
(24, 'fdhdfhhd', 456456, '2024-01-19 11:30:32', '2024-01-19 11:30:32'),
(25, 'fdh', 435, '2024-01-19 11:30:47', '2024-01-19 11:30:47'),
(26, 'sdgdsdsggg', 3535, '2024-01-19 11:31:06', '2024-01-19 11:31:06'),
(27, 'asfasfasfa', 2353252, '2024-01-19 11:32:26', '2024-01-19 11:32:26'),
(28, 'asgasgasgas', 32523, '2024-01-19 11:33:02', '2024-01-19 11:33:02'),
(29, 'sdhsdhs', 5252, '2024-01-19 11:33:37', '2024-01-19 11:33:37'),
(30, 'mohamed', 123, '2024-01-19 11:43:29', '2024-01-19 14:32:43'),
(31, 'hesham', 123, '2024-01-19 11:44:45', '2024-01-19 14:32:52'),
(32, 'asd12333333125215125', 3663, '2024-01-19 11:45:02', '2024-01-19 14:35:25'),
(33, 'asd12333333', 23523, '2024-01-19 13:57:08', '2024-01-19 14:45:26'),
(34, '2021', 1241242141244, '2024-01-19 14:46:13', '2024-01-19 14:47:59'),
(35, 'bikadave77', 55555, '2024-01-19 14:48:05', '2024-01-19 14:48:05'),
(36, 'asd0505', 266226, '2024-01-19 14:49:53', '2024-01-19 14:51:54'),
(37, 'asd21121', 123, '2024-01-19 14:52:08', '2024-01-19 14:54:53'),
(38, 'asd20202013', 23424, '2024-01-19 14:53:48', '2024-01-19 14:56:36'),
(39, 'asd5050', 15215, '2024-01-19 14:56:52', '2024-01-19 14:58:07'),
(40, 'asd4040', 1512512, '2024-01-19 14:57:58', '2024-01-19 14:57:58'),
(41, 'asdkrkkr', 1234, '2024-01-19 14:58:17', '2024-01-19 14:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
