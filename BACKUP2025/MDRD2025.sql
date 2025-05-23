-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 16-05-2025 a las 22:22:51
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
-- Estructura de tabla para la tabla `MDRD2025`
--

CREATE TABLE `MDRD2025` (
  `DONCROXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `FACIDXXX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'factura',
  `CRONIDXX` int(11) NOT NULL COMMENT 'ID del cron',
  `ROBMENXX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mensaje del robot',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Agendamiento robot DRAX';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDRD2025`
--
ALTER TABLE `MDRD2025`
  ADD PRIMARY KEY (`DONCROXX`,`FACIDXXX`),
  ADD KEY `IDX_DONCROXX` (`DONCROXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
