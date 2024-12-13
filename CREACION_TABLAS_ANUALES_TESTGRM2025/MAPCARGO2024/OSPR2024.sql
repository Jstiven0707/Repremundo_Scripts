-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:37:51
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
-- Estructura de tabla para la tabla `OSPR2024`
--

CREATE TABLE IF NOT EXISTS `OSPR2024` (
  `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `GUIDXXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid',
  `STATUSXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado ',
  `PIECESXX` int(11) NOT NULL COMMENT 'piezas',
  `DESCRIPT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion ',
  `PACKNAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre paquete',
  `NUMBERXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero producto',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`IDXXXXXX`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='productos de las reservacion' AUTO_INCREMENT=4946 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
