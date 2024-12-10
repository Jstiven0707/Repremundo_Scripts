-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:14:24
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
-- Estructura de tabla para la tabla `MDEX2024`
--

CREATE TABLE `MDEX2024` (
  `CRONIDXX` int(11) NOT NULL COMMENT 'ID del cron',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número del DO',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número de la SAE',
  `NUMDEXXX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Número de DEX',
  `OBSROBXX` tinytext COLLATE utf8_unicode_ci COMMENT 'Observación del robot',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('PENDIENTE','ERROR','FINALIZADO','INACTIVO') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='OPERACIONES Y SAE VS AGENDAMIENTO DE ROBOT';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDEX2024`
--
ALTER TABLE `MDEX2024`
  ADD PRIMARY KEY (`CRONIDXX`,`DOCNROXX`,`NUMSAEXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
