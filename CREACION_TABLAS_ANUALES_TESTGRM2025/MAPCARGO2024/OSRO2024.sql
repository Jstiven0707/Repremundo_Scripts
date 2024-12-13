-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:38:11
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
-- Estructura de tabla para la tabla `OSRO2024`
--

CREATE TABLE IF NOT EXISTS `OSRO2024` (
  `OSNOMRES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la reservacion',
  `OSNUMREF` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'BL o numero de guia aerea',
  `OSTRINUM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de viaje o vuelo',
  `COUNTRYO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de origen',
  `REGIONXO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de origen',
  `CODPORTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de origen',
  `NAMPORTO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de origen',
  `COUNTRYD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de destino',
  `REGIONXD` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Region de destino',
  `CODPORTD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de destino',
  `NAMPORTD` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de destino',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`OSNOMRES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ruta puertos del reservacion';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
