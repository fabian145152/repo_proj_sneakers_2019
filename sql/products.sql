-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2019 a las 18:38:20
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
-- Base de datos: `products`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brand`
--

INSERT INTO `brand` (`id_brand`, `description`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Fila'),
(5, 'Lacoste'),
(6, 'New Balance'),
(7, 'Toper'),
(8, 'Plumita'),
(9, 'Otras Marcas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id_color` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id_color`, `description`) VALUES
(1, 'Azul'),
(2, 'Roja'),
(3, 'Marron'),
(4, 'Negra'),
(5, 'Blanca'),
(6, 'Verde'),
(7, 'Amarillo'),
(8, 'Gris');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sneakers`
--

CREATE TABLE `sneakers` (
  `id_sneakers` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `id_brand` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `images` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sneakers`
--

INSERT INTO `sneakers` (`id_sneakers`, `model`, `price`, `id_brand`, `id_color`, `fecha_alta`, `images`, `observacion`) VALUES
(1, 'cambio', '0.00', 1, 2, '2019-09-12 22:27:02', '../images/Nike_Md_Runner_2.jpg', ''),
(2, 'Downshifer', '0.00', 1, 2, '2019-09-12 22:34:31', '../images/Nike_Downshifter_7.jpg', ''),
(7, 'Wamp', '2800.00', 2, 7, '2019-10-01 23:03:47', '../images/Nike_Downshifter_7.jpg', 'Hola'),
(9, 'stard luz', '2900.00', 1, 3, '2019-10-03 21:16:43', '../images/Lacoste_Strideur_116.jpg', 'Zapatillas'),
(13, 'stard luz', '2900.00', 2, 7, '2019-10-03 22:58:05', '../images/Nike_Md_Runner_2.jpg', 'ddddddddddddddd'),
(19, 'stard luz', '2900.00', 2, 7, '2019-10-22 21:41:04', '../images/FLECHA.jpg', 'sdf'),
(20, 'stard luz', '0.00', 2, 7, '2019-10-22 21:43:30', '../images/FLECHA.jpg', '                            Hola\r\n                                                                                                                                                       ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indices de la tabla `sneakers`
--
ALTER TABLE `sneakers`
  ADD PRIMARY KEY (`id_sneakers`),
  ADD KEY `color_sneakers` (`id_color`),
  ADD KEY `brand_sneakers` (`id_brand`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sneakers`
--
ALTER TABLE `sneakers`
  MODIFY `id_sneakers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sneakers`
--
ALTER TABLE `sneakers`
  ADD CONSTRAINT `brand_sneakers` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `color_sneakers` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
