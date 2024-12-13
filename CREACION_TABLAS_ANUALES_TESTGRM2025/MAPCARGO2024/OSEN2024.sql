-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:36:26
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
-- Estructura de tabla para la tabla `OSEN2024`
--

CREATE TABLE IF NOT EXISTS `OSEN2024` (
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `IDBILLCL` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id cliente a facturar',
  `NABILLCL` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre cliente a facturar',
  `IDCONSIG` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del consignatario',
  `NACONSIG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del consignatario',
  `IDEXPEDI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del expedidor',
  `NAEXPEDI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del expedidor',
  `IDTRANSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador',
  `NATRANSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del transportador',
  `IDTRANDE` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador en destino',
  `NATRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del transportador en destino',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`OSNOMRES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidades de la reservacion';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
