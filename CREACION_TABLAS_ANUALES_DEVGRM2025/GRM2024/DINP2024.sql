-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:08:17
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
-- Estructura de tabla para la tabla `DINP2024`
--

CREATE TABLE IF NOT EXISTS `DINP2024` (
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
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`NUMPOLXX`,`CCIDXXXX`,`SCCIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='DISTRIBUCION DE PRESUPUESTO DE LA POLIZA ';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
