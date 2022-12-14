-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2022 г., 09:51
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

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
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_image` varchar(200) NOT NULL,
  `event_desc` text NOT NULL,
  `event_x` int NOT NULL,
  `event_y` int NOT NULL,
  `event_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `event_name`, `event_image`, `event_desc`, `event_x`, `event_y`, `event_status`) VALUES
(1, 'Emonds Field', './img/events_img/4b5fafdcb1bbbd8d885cc235e86c166a.jpg', '<b>Emonds Field</b> is a village of farmers and craftsmen centrally located in the Two Rivers district of western Andor.', 486, 464, 1),
(2, 'Tar Valon', './img/events_img/7433c76d8e0a4301ee0db755d1b148c4.jpg', 'Tar Valon is a city located on an island on the River Erinin, within sight of Dragonmount. It is the center of Aes Sedai power and is also the second largest, most populous city in the Westlands.', 808, 340, 1),
(3, 'Shayol Ghul', './img/events_img/0f8d23b8b87d44f26b0e09da3eb8915e.png', 'Shayol Ghul is a great black mountain, once an idyllic tropical island paradise and vacation spot, now the focal point of the Dark Ones power. It is located in the lifeless Blasted Lands, a place which bore the brunt of the War of Power.', 836, 136, 1),
(4, 'TEST\'s', './img/events_img/b9f288b2b263c2840657ca4eae58d259.png', 'Test\'s', 503, 292, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
