-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 20:36:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jugueteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(30) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Juego de mesa'),
(2, 'Figura de accion'),
(3, 'Auto de juguete'),
(4, 'moda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
  `id` int(30) NOT NULL,
  `edades` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`id`, `edades`) VALUES
(1, '6-8'),
(2, '10-12'),
(3, '12-15'),
(4, '12-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `rol`) VALUES
(1, 'Franco mongi', 'Vendedor'),
(2, 'Lucas salicru', 'Encargado de ventas'),
(3, 'Santiago perduca', 'Reponedor'),
(4, 'Ignacio Seconi', 'Reponedor'),
(5, 'Santiago Gasquet ', 'Vendedor'),
(6, 'Nicolas Sanchez', 'Encargado de limpieza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'Barbie'),
(2, 'Toyco'),
(3, 'Hotwheels'),
(4, 'Lego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `precio` int(30) NOT NULL,
  `destacado` varchar(30) NOT NULL,
  `stock` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `destacado`, `stock`) VALUES
(1, 'Monopoly', 'Juego de mesa para +4 jugadore', 17, '', 22),
(2, 'Domino', 'Juego de mesa para +2 jugadore', 8, '', 17),
(3, 'Damas', 'Juego de fichas +2', 6, '', 14),
(4, 'Ludo', 'juego de mesa +4', 18, '', 26),
(5, 'Batalla naval', 'Juego de mesa ', 22, '', 13),
(6, 'Monster truck Hotwheels', 'Camion Monster Hotwheels', 8, '', 8),
(7, 'Hotwheels pack x3/u', 'autos Hotwheels x3/u', 11, '', 12),
(8, 'Hotwheels pack x6/u', 'autos Hotwheels  x6/u', 16, '', 4),
(9, 'Lego minecraft', 'Bloques lego tematica minecraf', 13, '', 9),
(10, 'Lego indiana jones', 'Bloques lego tematica indiana ', 15, '', 13),
(11, 'lego cyberdrone', 'Lego inspirado en cyberdrone', 16, '', 19),
(12, 'Lego Mario bross', 'Lego tematica mario bross', 25, '', 26),
(13, 'Barbie chelsea', 'barbie de moda chelsea', 15, '', 14),
(14, 'barbie fantasy', 'barbie tematica fantasy', 17, '', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `password` int(30) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(1, 'Ignacio Ramirez', 'ignacito44', 231435, 'ignacito44@gmail.com'),
(2, 'mateo hernandez', 'mateolol', 12432546, 'mateolol@gmail.com'),
(3, 'lucas sanchez', 'luketa23', 6756745, 'luketa23@gmail.com'),
(4, 'santiago bandai', 'feraljuny', 5365723, 'feraljuny@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
