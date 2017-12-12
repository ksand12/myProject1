-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 12 2017 г., 21:01
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `HelloWorldProject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `meta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'catalog1', 'catalog1data', NULL, '2017-11-30 16:46:23', '2017-11-30 16:46:23', NULL),
(2, 'catalog2', 'catalog2data', NULL, '2017-11-30 16:46:36', '2017-11-30 16:46:36', NULL),
(3, 'catalog3', 'catalog3data', NULL, '2017-11-30 16:46:52', '2017-11-30 16:46:52', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Catalogs', 'catalogs', NULL, '2017-11-30 16:43:52', '2017-11-30 16:43:52'),
(4, 0, 1, 'fa-database', 'Products', 'products', NULL, '2017-11-30 17:07:55', '2017-11-30 17:07:55');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_10_10_000000_create_menus_table', 1),
(4, '2015_10_10_000000_create_roles_table', 1),
(5, '2015_10_10_000000_update_users_table', 1),
(6, '2015_12_11_000000_create_users_logs_table', 1),
(7, '2016_03_14_000000_update_menus_table', 1),
(8, '2017_11_30_194352_create_catalogs_table', 2),
(9, '2017_11_30_200755_create_products_table', 3);

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
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `catalogs_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `vip`, `picture`, `created_at`, `updated_at`, `deleted_at`, `catalogs_id`, `body`) VALUES
(1, 'blouse', '100', 'yes', NULL, NULL, NULL, NULL, 1, '0'),
(2, 'shirt', '150', 'yes', NULL, NULL, NULL, NULL, 1, '0'),
(3, 'Jeans', NULL, NULL, NULL, '2017-12-07 16:35:40', '2017-12-07 16:35:40', NULL, NULL, 'New jeans'),
(4, 'Shirt', NULL, NULL, NULL, '2017-12-07 16:36:54', '2017-12-07 16:36:54', NULL, NULL, 'Elegant slim-cut shirt'),
(5, 'Ring', NULL, NULL, NULL, '2017-12-07 16:38:01', '2017-12-07 16:38:01', NULL, NULL, 'Golden ring'),
(6, '123', NULL, NULL, NULL, '2017-12-07 18:08:51', '2017-12-07 18:08:51', NULL, NULL, '123'),
(7, '123', NULL, NULL, '17_12_07_09_12_01.jpg', '2017-12-07 18:12:01', '2017-12-07 18:12:01', NULL, NULL, '123');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2017-11-30 16:26:35', '2017-11-30 16:26:35'),
(2, 'User', '2017-11-30 16:26:35', '2017-11-30 16:26:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'John', 'ksand12@rambler.ru', '123', NULL, '2017-11-30 16:26:59', '2017-11-30 16:26:59'),
(2, 1, '', 'john@mail.ru', '123', NULL, '2017-11-30 16:26:59', '2017-11-30 16:26:59'),
(3, NULL, 'John', 'John1@mail.ru', '$2y$10$QXZEt/q0htuNVa2hN4lhj.zj39NF.pxeq5ZGu8r3Y8alN5RMVSdDK', NULL, '2017-12-07 15:48:27', '2017-12-07 15:48:27'),
(4, NULL, 'John', 'John2@mail.ru', '$2y$10$0.Bwjlcc4main.LsCm8E6.Xgq7xiAlxsxczKQEl45YYX9OAT1rC2i', NULL, '2017-12-12 16:30:07', '2017-12-12 16:30:07');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'catalogs', 1, '2017-11-30 16:46:23', '2017-11-30 16:46:23'),
(2, 1, 'created', 'catalogs', 2, '2017-11-30 16:46:36', '2017-11-30 16:46:36'),
(3, 1, 'created', 'catalogs', 3, '2017-11-30 16:46:52', '2017-11-30 16:46:52'),
(4, 3, 'created', 'products', 3, '2017-12-07 16:35:40', '2017-12-07 16:35:40'),
(5, 3, 'created', 'products', 4, '2017-12-07 16:36:54', '2017-12-07 16:36:54'),
(6, 3, 'created', 'products', 5, '2017-12-07 16:38:01', '2017-12-07 16:38:01'),
(7, 3, 'created', 'products', 6, '2017-12-07 18:08:51', '2017-12-07 18:08:51'),
(8, 3, 'created', 'products', 7, '2017-12-07 18:12:01', '2017-12-07 18:12:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

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
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
