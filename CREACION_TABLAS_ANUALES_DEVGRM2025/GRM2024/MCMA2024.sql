-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:25:34
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MCMA2024`
--

CREATE TABLE IF NOT EXISTS `MCMA2024` (
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
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`MANIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manifiesto';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
