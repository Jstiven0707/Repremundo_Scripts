-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 29-11-2025 a las 14:32:31
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
-- Estructura de tabla para la tabla `cfjd2025`
--

CREATE TABLE IF NOT EXISTS `cfjd2025` (
  `idrficxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Registro Fotografico e Inconsistencias de la Carga',
  `regtypex` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de registro',
  `depidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Deposito',
  `trlridxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador de camion',
  `aplicinc` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Inconsistencia',
  `aplicfot` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Fotografia',
  `tipguarx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Guardado',
  `obsrfoic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idrficxx`,`regtypex`,`depidxxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Registro Fotografico e Inconsistencias de la Carga';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
