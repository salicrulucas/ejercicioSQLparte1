-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2023 a las 20:56:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `producto`, `precio`, `stock`, `tipo`, `foto`) VALUES
(1, 'Carne de ternera', 6, 145, 'Carne', 'Ternera.jpg'),
(2, 'Pescado', 2, 56, 'Carne', 'pescado.jpg'),
(3, 'Pollo', 4, 156, 'Carne', 'pollo.jpg'),
(4, 'arroz con carne', 3, 20, 'preparado', 'arrozpollo.jgp'),
(5, 'milanesa ternera', 10, 78, 'Carne', 'milanesaternera.jpg'),
(6, 'milanesa napolitana', 9, 67, 'Carne', 'milanesanapolitana.jpg'),
(7, 'milanesa berenjena', 5, 200, 'verdura', 'milanesaberenjena.jpg'),
(8, 'ensalada', 6, 56, 'verdura', 'ensalada.jpg'),
(9, 'pizza', 10, 150, 'pizza', 'pizza.jpg'),
(10, 'pizza napolitana', 10, 150, 'pizza', 'pizzanapo.jpg'),
(11, 'fugazzeta ', 10, 150, 'pizza', 'fugazzeta.jpg'),
(12, 'fugazzeta rellena', 11, 60, 'pizza', 'fugazzrellena.jgp'),
(13, 'pizza margarita', 10, 40, 'pizza', 'margarita.jpg'),
(14, 'pizza hawaiana', 10, 30, 'pizza', 'hawaiana.jpg'),
(15, 'pizza 4 quesos', 11, 50, 'pizza', '4quesos.jpg'),
(16, 'milanesa a caballo', 11, 40, 'milanesa', 'caballo.jpg'),
(17, 'pizza mozzarella rellena', 11, 40, 'pizza', 'rellena.jpg'),
(18, 'pizza con jamon', 9, 56, 'pizza', 'jamon.jpg'),
(19, 'especial de la casa', 10, 78, 'pizza', 'espacial.jpg'),
(20, 'pizza con palmitos', 10, 150, 'pizza', 'palmito.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `Id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `reservado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`Id`, `numero`, `reservado`) VALUES
(1, 1, 'Julian Ramirez'),
(2, 2, 'libre'),
(3, 3, 'Carlos Marquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `descuento` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `descuento`) VALUES
(1, 30),
(2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(0, 'Juan ', 'Juancarlos10', 'junacarlitos1', 'juancarlos10@gmail.com'),
(0, 'Imael', 'ismaelito01', 'isma1', 'ismaelj@gmail.com'),
(0, 'aerodactil', 'pokemon1', 'charizar', 'pokemon@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `total` float NOT NULL,
  `horario` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comensales` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) VALUES
(1, '3/4/23', 34, '14:00', 3, '2', 'bien'),
(2, '3/4/23', 23, '12:00', 3, '4', 'bien');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
