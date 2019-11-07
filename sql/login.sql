-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2019 a las 18:34:47
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `PASSWORD` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `initial_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_users`, `username`, `PASSWORD`, `email`, `initial_date`) VALUES
(1, 'Maria', 'e10adc3949ba59abbe56e057f20f883e', 'maria@gmail.com', '0000-00-00 00:00:00'),
(2, 'Fabián', 'e10adc3949ba59abbe56e057f20f883e', 'fabian@gmail.com', '0000-00-00 00:00:00'),
(3, 'Lucas', 'e10adc3949ba59abbe56e057f20f883e', 'lucas@gmail.com', '0000-00-00 00:00:00'),
(4, 'Sofia', 'e10adc3949ba59abbe56e057f20f883e', 'Sofia@gmail.com', '0000-00-00 00:00:00'),
(5, 'Carlos', '1a1dc91c907325c69271ddf0c944bc72', 'carlos@gmail.com', '2019-08-16 00:05:33'),
(6, 'Jorge', '1a1dc91c907325c69271ddf0c944bc72', 'Jorge@gmail.com', '2019-08-16 00:08:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
