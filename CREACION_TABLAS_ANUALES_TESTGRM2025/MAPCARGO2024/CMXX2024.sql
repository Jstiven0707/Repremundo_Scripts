-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:35:19
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
-- Estructura de tabla para la tabla `CMXX2024`
--

CREATE TABLE IF NOT EXISTS `CMXX2024` (
  `IDXXXXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo',
  `ACTIONXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de accion',
  `TYPEXXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de transaccion',
  `GUIDXXXX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la operacion',
  `NAMETRAN` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de la transaccion',
  `INIDTDOX` datetime NOT NULL COMMENT 'Inicio proceso Dash operativo',
  `DATEMAGA` datetime NOT NULL COMMENT 'Fecha de magaya',
  `DATEKAIZ` datetime NOT NULL COMMENT 'Fecha de actualizacion operativa',
  `DASHOPER` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SIN PROCESAR' COMMENT 'Migracion dash operativo',
  `PRACTIKO` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SIN PROCESAR' COMMENT 'Migracion pratiko',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`IDXXXXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Çontrol de migracion' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
