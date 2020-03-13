-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2020 a las 02:16:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `socialdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `friends`
--

CREATE TABLE `friends` (
  `my_friend_id` int(11) NOT NULL,
  `my_id` int(11) NOT NULL,
  `friends_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `friends`
--

INSERT INTO `friends` (`my_friend_id`, `my_id`, `friends_id`) VALUES
(1, 10, 0),
(11, 12, 0),
(12, 13, 0),
(13, 11, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `work` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `middlename`, `address`, `email`, `contact_no`, `age`, `gender`, `username`, `password`, `image`, `birthdate`, `mobile`, `status`, `work`, `religion`) VALUES
(11, 'Mauricio', 'Sevilla', '', 'Calle 45 #16-23', '', '', 0, 'Hombre', 'configuroweb', '1234abcd..', 'images/logo2.png', '1992-05-02', '3142450392', 'Activo', 'Técnico IT', 'No declarada'),
(12, 'usuario', 'usuario', '', 'Calle con Carrera', '', '', 0, 'Hombre', 'usuario', '1234abcd..', 'images/avatar.jpg', '1989-07-12', '3054679844', 'Activo', 'Técnico IT', 'No declarada'),
(13, 'Juan', 'Lee', '', 'Cualquier Calle', '', '', 0, 'Hombre', 'lee', '1234abcd..', 'images/avatar.jpg', '25-12-1997', '3167894167', 'Casado', 'Work IT', 'No declara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date_sended` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `reciever_id`, `content`, `date_sended`) VALUES
(1, 10, 1, 'hello', '2019-02-27 18:12:48'),
(2, 11, 12, 'Hola amiguis', '2020-03-12 10:40:26'),
(3, 12, 11, 'hola man como vas', '2020-03-12 10:40:53'),
(4, 12, 11, 'Hola', '2020-03-12 11:21:30'),
(5, 11, 12, 'Bien man', '2020-03-12 11:22:58'),
(6, 12, 11, 'MP', '2020-03-12 20:04:44'),
(7, 13, 11, 'Hola amigo secreto', '2020-03-12 20:09:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `note`
--

CREATE TABLE `note` (
  `note_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `note`
--

INSERT INTO `note` (`note_id`, `date`, `message`) VALUES
(6, '', 'Doc terry will be  out on august 3 2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `photos_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `photos`
--

INSERT INTO `photos` (`photos_id`, `location`, `member_id`) VALUES
(1, 'upload/7918240442_4471d5b11e_b.jpg', 1),
(2, 'upload/Como dar Like Automatico por Palabra Clave en Twitter con Python.png', 11),
(3, 'upload/Como Aumentar tus Seguidores en Instagram con Instabot Python.png', 11),
(4, 'upload/como instalar wordpress en local con xampp.png', 11),
(7, 'upload/como descargar video de Instagram Facebook Twitter Youtube Linkedin desde el Movil.jpg', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_posted` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`post_id`, `member_id`, `content`, `date_posted`) VALUES
(5, 11, 'Hola a todos esto es una prueba !!!', '2020-03-12 09:19:12'),
(7, 12, 'Hola', '2020-03-12 10:31:09'),
(9, 11, 'Hola a todos estoy feliz de poder interactuar en esta red social', '2020-03-12 20:02:27'),
(10, 13, 'Me place mucho acceder a esta nueva gran red social', '2020-03-12 20:11:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `service_id` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schedule`
--

INSERT INTO `schedule` (`id`, `member_id`, `date`, `service_id`, `Number`, `status`) VALUES
(76, 1, '11/09/2013', 1, 1, 'Done'),
(77, 1, '11/09/2013', 1, 1, 'Pending'),
(78, 1, '10/09/2013', 1, 1, 'Done');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_offer` varchar(100) NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`service_id`, `service_offer`, `price`) VALUES
(1, 'Cleaning', '700.00'),
(2, 'q', '100.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(5, 'configuroweb', '1234abcd..');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`my_friend_id`);

--
-- Indices de la tabla `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photos_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `friends`
--
ALTER TABLE `friends`
  MODIFY `my_friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `note`
--
ALTER TABLE `note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `photos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
