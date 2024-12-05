-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 02-12-2024 a las 11:03:54
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traa2024`
--

CREATE TABLE IF NOT EXISTS `traa2024` (
  `dtraidxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Arbol',
  `dtraidsq` varchar(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Arbol',
  `dtrcscxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento de Transporte',
  `dtraclix` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente de Arbol',
  `dtrausrr` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Responsable',
  `dtracarr` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargo responsable',
  `dtraespa` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de paso',
  `dtrausrc` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Cierre',
  `dtrafeci` date NOT NULL COMMENT 'Fecha de cierre',
  `dtrahoci` time NOT NULL COMMENT 'Hora de cierre',
  `dtratipv` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Vinculo',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`dtraidxx`,`dtraidsq`,`dtrcscxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Árbol de Documento de Transporte';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
