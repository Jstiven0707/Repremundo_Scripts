-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:38:17
-- Versión del servidor: 5.7.31-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USLT2024`
--

CREATE TABLE `USLT2024` (
  `REGIDXXX` int(11) NOT NULL COMMENT 'Id unico de registro',
  `USRIDXXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario',
  `LOCLATXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Latitud de la ubicacion',
  `LOCLONXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Longitud de la ubicacion',
  `LOCDIRXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion de la ubicacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ubicacion de usuarios AppRepremundo' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `USLT2024`
--
ALTER TABLE `USLT2024`
  ADD PRIMARY KEY (`REGIDXXX`,`USRIDXXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `USLT2024`
--
ALTER TABLE `USLT2024`
  MODIFY `REGIDXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id unico de registro';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
