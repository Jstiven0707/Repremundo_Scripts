-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:45:06
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `MAPCARGO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SHCH2024`
--

CREATE TABLE IF NOT EXISTS `SHCH2024` (
  `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `SHNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del cargo',
  `TYPEXXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de cargo',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del cargo',
  `VALUECOP` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'valor del cargo',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`IDXXXXXX`),
  KEY `SHNUMBER` (`SHNUMBER`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cargos de las operaciones' AUTO_INCREMENT=43659 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
