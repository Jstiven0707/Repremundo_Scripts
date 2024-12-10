-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 16:06:41
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
-- Estructura de tabla para la tabla `MCMA2024`
--

CREATE TABLE `MCMA2024` (
  `MANIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Manifiesto',
  `MANFECXX` date NOT NULL COMMENT 'Fecha Manifiesto',
  `SUCIDXXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal',
  `TRANIDXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador o Naviera',
  `LINIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Linea Importacion',
  `MOTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motonave',
  `MANFRLXX` date NOT NULL COMMENT 'Fecha Real de Llegada',
  `VIAIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Viaje',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manifiesto' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MCMA2024`
--
ALTER TABLE `MCMA2024`
  ADD PRIMARY KEY (`MANIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
