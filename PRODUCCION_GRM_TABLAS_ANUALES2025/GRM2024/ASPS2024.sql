-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:49:23
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
-- Estructura de tabla para la tabla `ASPS2024`
--

CREATE TABLE `ASPS2024` (
  `IDPUSAXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del puesto satelital',
  `IDASIPUX` int(9) NOT NULL COMMENT 'Secuencia de asignacion del puesto',
  `USRACTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del usuario actual del puesto',
  `USRAUTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del usuario que autoriza el puesto',
  `TIPASIGX` enum('FIJA','PARCIAL') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Indica el tipo de asignacion',
  `ASGIFECX` date NOT NULL COMMENT 'Indica el limite inferior de la asignacion',
  `ASGSFECX` date NOT NULL COMMENT 'Indica el limite superior de la asignacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` enum('ACTIVO','HISTORIAL','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la asignacion',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Asignacion puestos satelitales' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ASPS2024`
--
ALTER TABLE `ASPS2024`
  ADD PRIMARY KEY (`IDPUSAXX`,`IDASIPUX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
