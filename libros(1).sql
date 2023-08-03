-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 19:49:52
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
-- Base de datos: `libros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(30) NOT NULL,
  `linea` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `editorial` varchar(30) NOT NULL,
  `numpaginas` int(30) NOT NULL,
  `idioma` varchar(30) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `año` int(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `linea`, `nombre`, `editorial`, `numpaginas`, `idioma`, `nivel`, `genero`, `año`, `foto`, `precio`) VALUES
(5, 'alma', 'Domani 1', 'ALMA EDIZIONI', 224, 'Italiano', 'A1-A2-B1', 'Libros de Curso', 2013, 'Domani 1.png', 9.678),
(6, 'alma', 'Domani 2', 'ALMA EDIZIONI', 232, 'Italiano', 'A1-A2-B1', 'Libros de Curso', 2017, 'Domani 2.png', 11.345),
(8, 'edilingua', 'Nuovissimo Progetto Italiano 4', 'EDILINGUA', 176, 'Italiano', 'C2', 'Libros de Curso', 2022, 'progetto4.png', 6.606),
(9, 'edilingua', 'Nuovissimo Progetto Italiano 3', 'EDILINGUA', 216, 'Italiano', 'C1', 'Libros de Curso', 2020, 'progetto3.png', 13.453),
(10, 'orimi', 'CELI 2', 'Ornimi', 200, 'Italiano', 'B1', 'Libros de Curso', 2019, 'celi2.png', 12.13),
(11, 'alma', 'Domani 3', 'ALMA EDIZIONI', 232, 'Italiano', 'A1-A2-B1', 'Libros de Curso', 2012, 'Domani 3.png', 11.345),
(12, 'edilingua', 'Nuovissimo Progetto Italiano 2', 'EDILINGUA', 200, 'Italiano', 'B1-B2', 'Libros de Curso', 2020, 'progetto2.png', 16.456),
(13, 'edilingua', 'Nuovissimo Progetto Italiano 1', 'EDILINGUA', 176, 'Italiano', 'A1', 'Libros de Curso', 2019, 'progetto1.png', 10.27),
(14, 'orimi', 'CELI 4', 'Ornimi', 288, 'Italiano', 'C1', 'Libros de Curso', 2019, 'celi4.png', 10.92),
(15, 'alma', 'Ambaraba 4 ', 'ALMA EDIZIONI', 80, 'Italiano', 'A1-A2', 'Libros de Curso', 2009, 'ambaraba 4.png', 4.914);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`,`precio`,`año`,`numpaginas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
