-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:16:14
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
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HINA2024`
--

CREATE TABLE `HINA2024` (
  `ESIDDOCX` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Documento',
  `ESCODDOC` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del Documento',
  `ESCSCDOC` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo del Documento',
  `TABLAXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la Tabla',
  `PASOIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Paso por Analizar',
  `CAMPOXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Campo por Analizar',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Crea el Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se Crea el Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se Crea el Registro',
  `REGUSRMX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se Modifica el Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se Modifica el Registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Historial de Indicadores';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HINA2024`
--
ALTER TABLE `HINA2024`
  ADD PRIMARY KEY (`ESIDDOCX`,`ESCODDOC`,`ESCSCDOC`,`TABLAXXX`,`CAMPOXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
