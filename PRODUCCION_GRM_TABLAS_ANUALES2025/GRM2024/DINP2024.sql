-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:55:30
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
-- Estructura de tabla para la tabla `DINP2024`
--

CREATE TABLE `DINP2024` (
  `NUMPOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Poliza',
  `NUMIDPRE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la distribución de presupuesto',
  `ANOPPOXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Año del presupuesto',
  `AREAPPOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de presupuesto',
  `SEGPPOXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segmento',
  `FAMPPXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Familia',
  `CCIDXXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `SCCIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subcentro de costo',
  `VALDISXX` decimal(10,2) NOT NULL COMMENT 'Valor designado para la distribución',
  `OBSPPOLX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observación del presupuesto',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro ',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='DISTRIBUCION DE PRESUPUESTO DE LA POLIZA ' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DINP2024`
--
ALTER TABLE `DINP2024`
  ADD PRIMARY KEY (`NUMPOLXX`,`CCIDXXXX`,`SCCIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
