-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 24 2023 г., 17:51
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wot`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `points`
--

CREATE TABLE `points` (
  `id` int NOT NULL,
  `event_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `event_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `event_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `event_x` int NOT NULL,
  `event_y` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` (`id`, `event_name`, `event_image`, `event_desc`, `event_x`, `event_y`, `status_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Emonds Field', 'storage/events_img/XWgryB24SOMWf41XybbWMFT7wGDaqFH4Y4oQKEmO.jpg', 'Emonds Field is a village of farmers and craftsmen centrally located in the Two Rivers district of western Andor.', 486, 464, 2, '2023-08-18 16:48:02', NULL, '2023-08-20 13:15:30'),
(2, 'Tar Valon', 'storage/events_img/kC0DBEZVtXApIdoL2WkKEjoiiF1KT1GFzxgC2CsA.jpg', 'Tar Valon is a city located on an island on the River Erinin, within sight of Dragonmount. It is the center of Aes Sedai power and is also the second largest, most populous city in the Westlands.', 808, 340, 2, '2023-08-18 16:48:02', NULL, '2023-08-20 13:22:15'),
(3, 'Shayol Ghul', 'storage/events_img/Ny64lAw6bcuhs6XQLA2tyQYWhzvPhfDtAMHfbdew.png', 'Shayol Ghul is a great mountain, once an idyllic island, now the focal point of the Dark Ones power. It is located in the lifeless Blasted Lands, a place which bore the brunt of the War of Power.', 836, 136, 2, '2023-08-18 16:48:02', NULL, '2023-08-20 13:18:24'),
(4, 'TEST\'s', 'storage/events_img/b4qogF5XQstwyT7oNXbGYo9c2ykb8sW44qXV4Evr.jpg', 'Test\'s', 503, 292, 1, '2023-08-18 16:48:02', NULL, '2023-08-20 13:18:40'),
(5, 'апавпк', 'storage/events_img/SCrtzZwZ7S9A8ER6eGdXgnO7prmiElfEuQezmNAE.jpg', 'ауауауа', 496, 243, 1, '2023-08-18 16:48:02', NULL, '2023-08-20 13:18:48'),
(6, 'grgrgr', 'storage/events_img/659ba8c5349258691c4f7ab443949530.jpg', 'grgegfefefre', 499, 598, 1, '2023-08-18 16:48:02', '2023-08-19 09:13:18', '2023-08-19 09:13:18'),
(7, '4444', 'storage/events_img/9GIpLmKqPrYrWW1i3YDCMDmpsCLdjS9JZ5lZAkSl.jpg', 'efreferf', 339, 598, 1, '2023-08-18 16:48:02', NULL, '2023-08-20 13:18:56'),
(8, 'dvdv', 'storage/events_img/x7RrYPWRYKvNv38tvL1vNQW3f9vumRnPXGkkHsUE.jpg', 'scscsc', 348, 50, 1, '2023-08-18 16:48:02', NULL, '2023-08-20 13:19:02'),
(9, 'sdcds', 'storage/events_img/512a681d32d2fb20196ed693fcdcf3e8.jpg', 'axdsxs', 630, 47, 1, '2023-08-18 16:48:02', '2023-08-13 11:28:21', '2023-08-13 11:28:21'),
(10, 'fffffffffffffffffffffffffffffffffffffffffffffffff1', 'storage/events_img/3cae45bfde042798bbc97822dd7d86fe.jpg', 'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg1', 528, 156, 1, '2023-08-18 16:48:02', '2023-08-13 11:20:49', '2023-08-13 11:20:49'),
(11, 'Checking', 'storage/events_img/7RsfCy0ovFw5Fexk5Xjfag17ARL1OuadidvX7445.jpg', 'checking', 531, 302, 1, '2023-08-18 16:48:02', NULL, '2023-08-20 13:19:09'),
(12, 'pag test', 'storage/events_img/aMmtCgUw1lugxDS2KDlUZUyJS5MZn40Q7hILZLrk.jpg', 'pag test', 568, 327, 1, '2023-08-18 14:48:02', NULL, '2023-08-20 13:19:25'),
(13, 'pag test 2', 'storage/events_img/6ZnWJG5I2uElxht25K5GkPB4RhaTDfQyG1eqLsFL.jpg', 'pag test 2', 581, 325, 1, '2023-08-18 15:48:02', NULL, '2023-08-20 13:19:18'),
(14, 'test for created_at_checking', 'storage/events_img/8e200ea0b47454bbfaf92fd02d203a15.jpg', 'test', 316, 336, 1, '2023-08-18 16:54:18', '2023-08-18 13:54:40', '2023-08-18 13:54:40'),
(19, '111111111', 'storage/events_img/Lwnb6CurzBMPbdHDmHYnYHRo88VMFc5uR0vMGLmk.jpg', '1111111111111111111112', 542, 192, 1, '2023-08-19 14:08:39', '2023-08-21 14:14:55', '2023-08-21 14:14:55'),
(16, 'dvdcds', 'storage/events_img/71f416baed7db65bc8d011f6217dc88e.jpg', 'ntcn', 344, 278, 1, '2023-08-19 11:43:31', '2023-08-19 08:46:47', '2023-08-19 08:46:47'),
(17, '34f', 'storage/events_img/OPLXGDpQNQAEUHXc1huY8AZdqB520RM8Bs3PPEb7.jpg', 'ewfdwed', 501, 501, 1, '2023-08-19 11:49:46', NULL, '2023-08-21 14:15:09'),
(18, 'rgrgr', 'storage/events_img/dc734cdd105616ef4dcfd2290c00c98d.jpg', 'rgrg5rg5g65', 605, 129, 1, '2023-08-19 11:53:49', '2023-08-19 09:10:33', '2023-08-19 09:10:33'),
(20, 'added test', 'storage/events_img/xHY5fj6qbgIhyz3xKAAMyvkWlwPovNanYDoZ3HQh.jpg', 'added test', 461, 187, 1, '2023-08-21 14:07:27', '2023-08-21 14:12:28', '2023-08-21 14:12:28'),
(21, '222', 'storage/events_img/mcS9m3pgTOTxLiVHVskRkFwRzuP7syo547bp67lQ.jpg', 'hgnhgnbg', 428, 182, 1, '2023-08-21 14:18:06', NULL, '2023-08-21 14:18:34'),
(22, '222', 'storage/events_img/qHQKQwwnNklAl4rjiiX09wb0cYScDVCSHJ7OLMNF.jpg', 'hgnhgnbg', 428, 182, 1, '2023-08-21 14:18:28', '2023-08-21 14:31:32', '2023-08-21 14:31:32'),
(23, '222', 'storage/events_img/gLfn65dZdsR9lkcuMPE8NE2mIxN5P74udmJQTyJ4.jpg', 'hgnhgnbg', 428, 182, 1, '2023-08-21 14:27:27', '2023-08-21 14:31:27', '2023-08-21 14:31:27'),
(24, '4444', 'storage/events_img/3Mv0yHjquTIidmBsqpj3SCeZvM4qs5Jtk9TwxGU6.jpg', 'вамвс', 328, 150, 1, '2023-08-21 14:31:05', '2023-08-21 14:31:25', '2023-08-21 14:31:25'),
(25, '4444', 'storage/events_img/Y5T7ijYLOnf7zmgtqgNLyVy3ptIc4WiOJuFM2u2A.jpg', 'вамвс', 328, 150, 1, '2023-08-21 14:31:41', NULL, '2023-08-21 14:31:41'),
(26, '4444', 'storage/events_img/2ynwB1E2VwKnkMNfu52qhbD7eSNT1arTvwBDkAEY.jpg', 'вамвс', 328, 150, 1, '2023-08-21 14:32:32', '2023-08-21 14:41:20', '2023-08-21 14:41:20'),
(27, 'fvref', 'storage/events_img/niP07RGrJ2qIOvRa0JIIjrzBn1VSbFCG3M7EcdFx.jpg', 'refefe', 576, 145, 1, '2023-08-21 14:37:22', '2023-08-21 14:41:18', '2023-08-21 14:41:18'),
(28, 'fvref', 'storage/events_img/OV2KWDTXS0d3RpTUfZRsyyTBtJYTHcUqU0g0T47G.jpg', 'refefe', 576, 145, 1, '2023-08-21 14:37:35', '2023-08-21 14:41:15', '2023-08-21 14:41:15'),
(29, 'fvref', 'storage/events_img/4DJA2ZIj7klbOyDkTgdKZairxIBEYqWiHzmSCc24.jpg', 'refefe', 576, 145, 1, '2023-08-21 14:40:34', NULL, '2023-08-21 14:40:34'),
(30, 'вамвм', 'storage/events_img/DAuHaKUpdxYVyUvdQRGfJYhBWOt1VhmZHWvmoqvZ.jpg', 'вавуау', 276, 255, 1, '2023-08-21 14:40:44', NULL, '2023-08-21 14:40:44'),
(31, 'как', 'storage/events_img/OdlWjKY2JrwNXcR4jRizYrlpIPgfGL5s5VRjLiMo.jpg', 'авауау', 463, 155, 1, '2023-08-21 14:42:25', NULL, '2023-08-21 14:42:25'),
(32, 'вмскы1', 'storage/events_img/D4A7cMpdk4yGJ72f9o2XqKJcbCgLi3kzmWEfaoOo.jpg', 'вмкак1', 78, 7, 1, '2023-08-21 14:46:30', '2023-08-23 14:53:08', '2023-08-23 14:53:08'),
(33, 'dfvdfvdfv', 'storage/events_img/f03xbbgnG2uWbkQq40nIrEDyEhIHl8rUvXb6zfqM.jpg', 'dcdc', 637, 441, 1, '2023-08-23 14:45:51', '2023-08-23 14:47:17', '2023-08-23 14:47:17'),
(34, 'c', 'storage/events_img/MZAnZLe5XegvHt2LENN0lRxacmcKOVFnFWirbKuq.jpg', 'fff', 1049, 543, 1, '2023-08-23 14:51:49', NULL, '2023-08-23 14:53:06');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'In moderate'),
(2, 'Active');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'dvitya031190@gmail.com', NULL, '$2y$10$t9ohP8uSy5IfY1Ra0GlcXe2a1Rmy/0Z47n2TB1VUzHwPXPlViW8Sm', NULL, '2023-08-02 12:11:41', '2023-08-02 12:11:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `points`
--
ALTER TABLE `points`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
