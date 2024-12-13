-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:45:29
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
-- Estructura de tabla para la tabla `SHEN2024`
--

CREATE TABLE IF NOT EXISTS `SHEN2024` (
  `SHNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `IDBILLCL` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id cliente a facturar',
  `NABILLCL` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre cliente a facturar',
  `IDCONSIG` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del consignatario',
  `NACONSIG` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre consignatario',
  `IDEXPEDI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del expedidor',
  `NAEXPEDI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre expedidor',
  `IDTRANSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del transportador',
  `NATRANSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre transportador',
  `IDTRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador en destino',
  `NATRANDE` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID Transportador destino',
  `IDAGECAR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del agente de carga',
  `NAAGECAR` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente de carga',
  `IDAGEDES` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del agente en destino',
  `NAAGEDES` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente en destino',
  `REDAGENT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Agente en destino:Red de Agente',
  `OPIDCABY` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID transportista de entrega',
  `OPCARRBY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre  transportista de entrega',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`SHNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidades de la operacion';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
