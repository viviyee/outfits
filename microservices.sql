-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 02:32 PM
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
-- Database: `microservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloths`
--

CREATE TABLE `cloths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `addition_info` varchar(255) DEFAULT NULL,
  `upper` tinyint(1) NOT NULL DEFAULT 0,
  `lower` tinyint(1) NOT NULL DEFAULT 0,
  `dress` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cloths`
--

INSERT INTO `cloths` (`id`, `color`, `brand`, `addition_info`, `upper`, `lower`, `dress`, `created_at`, `updated_at`) VALUES
(1, 'aquamarine', 'uniqlo', 'shirt', 1, 0, 0, '2024-07-12 09:57:38', '2024-07-12 10:16:17'),
(2, 'white', NULL, 'blouse', 1, 0, 0, '2024-07-12 09:58:32', '2024-07-12 09:58:32'),
(3, 'black', NULL, 'tee', 1, 0, 0, '2024-07-12 09:58:51', '2024-07-12 09:59:12'),
(4, 'yellow', 'uniqlo', 'shirt, striped', 1, 0, 0, '2024-07-12 09:59:53', '2024-07-12 09:59:53'),
(5, 'white', 'uniqlo', 'shirt-blouse, soft', 1, 0, 0, '2024-07-12 10:00:31', '2024-07-12 10:00:31'),
(6, 'white', NULL, 'shirt', 1, 0, 0, '2024-07-12 10:00:52', '2024-07-12 10:00:52'),
(7, 'red', NULL, 'tee', 1, 0, 0, '2024-07-12 10:01:17', '2024-07-12 10:01:17'),
(8, 'blue', NULL, 'blouse, soft', 1, 0, 0, '2024-07-12 10:01:39', '2024-07-12 10:01:39'),
(9, 'lightblue', 'uniqlo', 'shirt, short-sleeve', 1, 0, 0, '2024-07-12 10:03:03', '2024-07-12 10:03:03'),
(10, 'black', NULL, 'quarter-shorts', 0, 1, 0, '2024-07-12 10:03:57', '2024-07-12 10:03:57'),
(11, 'darkgreen', 'gu', 'quarter-skirt', 0, 1, 0, '2024-07-12 10:04:51', '2024-07-18 06:35:50'),
(12, 'black', 'uniqlo', 'quarter-shorts', 0, 1, 0, '2024-07-12 10:05:11', '2024-07-12 10:05:11'),
(13, 'darkblue', 'gu', 'shirt', 1, 0, 0, '2024-07-16 07:12:34', '2024-07-16 07:12:34'),
(14, 'peachpuff', NULL, 'tee', 1, 0, 0, '2024-07-17 08:06:12', '2024-07-26 05:42:09'),
(15, 'blue', 'uniqlo', 'shirt, striped', 1, 0, 0, '2024-07-24 06:49:20', '2024-07-24 06:49:20'),
(16, 'purple', NULL, 'shirt, striped', 0, 0, 1, '2024-07-24 06:50:11', '2024-07-24 06:50:11'),
(17, 'navy', NULL, 'tight skirt', 0, 1, 0, '2024-07-26 05:38:12', '2024-07-26 05:38:12'),
(18, 'lightblue', 'uniqlo', 'shirt, thick', 1, 0, 0, '2024-07-30 06:19:46', '2024-07-30 06:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
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
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_12_161613_create_cloths_table', 1),
(6, '2024_07_12_161917_create_outfits_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `outfits`
--

CREATE TABLE `outfits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `upper_id` bigint(20) UNSIGNED NOT NULL,
  `lower_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outfits`
--

INSERT INTO `outfits` (`id`, `date`, `upper_id`, `lower_id`, `created_at`, `updated_at`) VALUES
(1, '2024-07-01', 1, 10, '2024-07-12 10:39:01', '2024-07-12 10:39:01'),
(2, '2024-07-02', 2, 10, '2024-07-12 10:39:26', '2024-07-12 10:39:26'),
(3, '2024-07-03', 3, 11, '2024-07-12 10:44:48', '2024-07-12 10:44:48'),
(4, '2024-07-04', 4, 12, '2024-07-12 10:45:13', '2024-07-12 10:45:13'),
(5, '2024-07-05', 5, 12, '2024-07-12 10:45:34', '2024-07-12 10:45:34'),
(6, '2024-07-08', 6, 10, '2024-07-12 10:45:49', '2024-07-12 10:45:49'),
(7, '2024-07-09', 7, 10, '2024-07-12 10:46:09', '2024-07-12 10:46:09'),
(9, '2024-07-10', 8, 11, '2024-07-12 10:46:26', '2024-07-12 10:46:26'),
(10, '2024-07-11', 9, 12, '2024-07-12 10:46:44', '2024-07-12 10:46:44'),
(11, '2024-07-12', 1, 12, '2024-07-12 10:46:51', '2024-07-12 10:46:51'),
(12, '2024-07-15', 4, 10, '2024-07-15 08:15:07', '2024-07-15 08:15:07'),
(13, '2024-07-16', 13, 10, '2024-07-16 07:12:49', '2024-07-16 07:12:49'),
(15, '2024-07-17', 14, 11, '2024-07-17 08:07:18', '2024-07-17 08:07:18'),
(16, '2024-07-18', 8, 11, '2024-07-18 06:34:46', '2024-07-18 06:34:46'),
(17, '2024-07-22', 15, 12, '2024-07-24 06:50:38', '2024-07-24 06:50:38'),
(18, '2024-07-23', 16, 12, '2024-07-24 06:58:54', '2024-07-24 06:58:54'),
(19, '2024-07-24', 7, 10, '2024-07-24 06:59:49', '2024-07-24 06:59:49'),
(20, '2024-07-25', 5, 17, '2024-07-26 05:38:30', '2024-07-26 05:38:30'),
(21, '2024-07-26', 2, 10, '2024-07-26 05:42:30', '2024-07-26 05:42:30'),
(22, '2024-07-29', 16, 12, '2024-07-30 06:18:13', '2024-07-30 06:18:13'),
(23, '2024-07-30', 18, 12, '2024-07-30 06:20:00', '2024-07-30 06:20:00'),
(24, '2024-07-31', 8, 11, '2024-08-01 05:51:38', '2024-08-01 05:51:38'),
(25, '2024-08-01', 5, 11, '2024-08-01 05:51:57', '2024-08-01 05:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloths`
--
ALTER TABLE `cloths`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `outfits`
--
ALTER TABLE `outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outfits_upper_id_foreign` (`upper_id`),
  ADD KEY `outfits_lower_id_foreign` (`lower_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `cloths`
--
ALTER TABLE `cloths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `outfits`
--
ALTER TABLE `outfits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `outfits`
--
ALTER TABLE `outfits`
  ADD CONSTRAINT `outfits_lower_id_foreign` FOREIGN KEY (`lower_id`) REFERENCES `cloths` (`id`),
  ADD CONSTRAINT `outfits_upper_id_foreign` FOREIGN KEY (`upper_id`) REFERENCES `cloths` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
