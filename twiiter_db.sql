-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2016 at 12:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twiiter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_10_27_052446_create_status_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `isistatus` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `isistatus`, `id_user`, `created_at`, `updated_at`) VALUES
(3, 'Keren..tuh para haters, kritikus data atw cuma speak doang..diundang tuh..diskusi terbuka diwadahi tuh..ayo ngomong kalo ada ide..', '1', '2016-10-27 06:04:01', '2016-10-27 06:04:01'),
(4, 'Yuk! Ajak org kesayanganmu nikmati menu baru @thekiosk yaitu Sangucitel yg murah bgt & suasana baru jg yg keren', '2', '2016-10-27 06:18:21', '2016-10-27 06:18:21'),
(5, 'Yuk! Ajak org kesayanganmu nikmati menu baru @thekiosk yaitu Sangucitel yg murah bgt & suasana baru jg yg keren', '2', '2016-10-27 06:18:28', '2016-10-27 06:18:28'),
(7, 'The inRandomOrder method may be used to sort the query results randomly. For example, you may use this method to fetch a random user:', '2', '2016-10-27 06:21:28', '2016-10-27 06:21:28'),
(8, 'Hi,\r\n\r\nI am trying to get an if else statement on a single line in a blade. is this possible? So to compress the below on to a single line.', '1', '2016-10-27 07:07:31', '2016-10-27 07:07:31'),
(9, 'When looping, you may use the loop variable to gain valuable information about the loop, such as whether you are in the first or last iteration through the loop.', '1', '2016-10-27 07:21:51', '2016-10-27 07:21:51'),
(11, 'When looping, you may use the loop variable to gain valuable information about the loop, such as whether you are in the first or last iteration through the loop.', '3', '2016-10-27 07:31:19', '2016-10-27 07:31:19'),
(12, 'This will instruct git (as well as github) that any credentials used to login should only be associated with the full repository path that was queried, not for the entire domain (in the case of github) all repositories on Github.com.. So now you can be logged into your repository, and your boyfriend can be logged into his repository and there will be no conflicts between your logins.', '2', '2016-10-27 09:55:41', '2016-10-27 09:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ilham_cccvvvvvv', 'illank@gmail.com', '1477553434.jpg', '$2y$10$pJz5oIVN/qxpnbN.lSrvU.84fJHYv.OSfUEoYIyGdUf83ndm1ve/K', 'ZBoyV234K3iFWzHl414bjDJc82gi7XM7tkmIKaVY4GkxW5WS17jTqOLNZG8v', '2016-10-26 21:40:45', '2016-10-27 00:30:52'),
(2, 'Adiyansyah', 'adi@gmail.com', '1477563767.png', '$2y$10$b1TY1z/8NuGJWnQKgiK4Qunzf1oK5zlbWBYGOGrFiRh.Qy3QQWzcG', 'Roykubn2rSN03h1Alav5OzNtKWp97249TTJvZ4AD2Z4WiVYJU6aTHA2dCI26', '2016-10-26 23:17:52', '2016-10-27 03:23:06'),
(3, 'user', 'user@user.com', '1477563825.jpg', '$2y$10$mA/lbEdllXLi9oZbRHdFBuPnSjJn2lBh5V.2A/zcCq0R2JOPKfKXa', 'tUX8rz1STkHJnLbRRp9IRiojB9d0yyiPhFN3fF9jEyTgZumfabRntQz6xAZJ', '2016-10-27 00:31:08', '2016-10-27 03:23:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
