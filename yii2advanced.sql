-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 04 2018 г., 15:09
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `office` int(11) DEFAULT NULL,
  `house` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `post_index` varchar(255) NOT NULL,
  `country` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `user_id`, `office`, `house`, `city`, `post_index`, `country`) VALUES
(1, 2, 3, '3', 'kiev', '67676', 'UA');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1536008560),
('m130524_201442_init', 1536008570);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` enum('male','female','some') COLLATE utf8_unicode_ci DEFAULT 'some'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `name`, `second_name`, `sex`) VALUES
(4, 'slava1', 'jUl6cmJJ9t6YAsIQCZSj91a_YKUCIs8K', '$2y$13$t9dzjsTfyxRph6juo0XkpeRp0ijxj10JKAkgcyPEkjP5Jbj7DzKaK', NULL, 'sysprag1@gmail.com', 10, 1536008688, 1536035006, '', '', 'some'),
(13, 'eeee', 'SjcJcfEFZX9Zzoi9sVtQTZN3NEXLReCW', '$2y$13$9T64eJdVf29t9AV6hAUDlu1/VGykBQr.3BGHuK8KYcdEJyIM3YGIS', NULL, 'sdwefdw@wedwed.com', 10, 1536041814, 1536041814, 'eerertert', 'reterterter', 'some'),
(15, 'Petro', 'V2ewmwlnZIpqhOJQq7dTvOwJRXzoQBiL', '$2y$13$Ja6ApO6RkGCo0VC0aBs8KeoaaiW8fZ.6MAkPpo7MU6y/bGoITC0C2', NULL, 'ses@ses.com', 10, 1536043165, 1536043165, 'Петя', 'течкин', 'some'),
(18, 'Admin', '', '1234567890', NULL, 'admin@admin.com', 10, 1536047670, 1536047670, 'slava', 'shet', 'some'),
(19, 'EEEEEE', '2qGFZh6ZsSUfrN2oGxgToYgs15NWMqj0', '$2y$13$3c1HKGPQAduU124D5DPENec1JOwgeaKU/lECSbi5kLheUHxL9UXEm', NULL, 'EEE@SSSS.COM', 10, 1536048367, 1536048367, 'FDSFS', 'FDSFSDFSD', 'some'),
(20, 'olyaaaaa', 'R1I8GoB4VM7uE1PizfiX07-G3ZcvoMKW', '$2y$13$SvYSy/NAYfcUeedoX9yg7uTGdbjT5WyRbwrevckBnuX98H6tB38qa', NULL, 'olya@olya.com', 10, 1536048417, 1536048417, 'ewrwerwe', 'werwerwerwer', 'some'),
(21, 'werfgrfd', 'zPAj2qyWvfMnMDoNmC0FiyaSBTsDwUaz', '$2y$13$8N6yeFjC0L2r9fohj4.GVO5jdWR.LliXdSR2LWPC1lw8xsBy/tShy', NULL, 'dsfsdgf@fddfgd.com', 10, 1536048471, 1536048492, 'qwe', 'ewq', 'some');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
