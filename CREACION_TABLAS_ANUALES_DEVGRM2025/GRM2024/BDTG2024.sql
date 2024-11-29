-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:03:43
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
-- Estructura de tabla para la tabla `BDTG2024`
--

CREATE TABLE IF NOT EXISTS `BDTG2024` (
  `CONSBDTG` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `PROIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BDGTTIPO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Trazabilidad',
  `PRODESXX` text COLLATE utf8_unicode_ci NOT NULL,
  `PROUSRXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que realiza la Trazabilidad',
  `DOCNROXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `FECCREXX` date NOT NULL,
  `HORCREXX` time NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`CONSBDTG`,`PROIDXXX`,`DOCNROXX`),
  KEY `DOCNROXX` (`DOCNROXX`),
  KEY `PROIDXXX` (`PROIDXXX`,`DOCNROXX`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bodega Trazabilidad General' AUTO_INCREMENT=4312820 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
