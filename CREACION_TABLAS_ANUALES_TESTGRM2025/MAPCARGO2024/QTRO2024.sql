-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:43:16
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
-- Estructura de tabla para la tabla `QTRO2024`
--

CREATE TABLE IF NOT EXISTS `QTRO2024` (
  `QTNUMBER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la cotización',
  `SERVTYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de servicio',
  `MODETRAN` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Modo de Transportación',
  `IDTRANXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID Transportista',
  `NATRANSX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre Transportista',
  `COUNTRYO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de origen',
  `CODPORTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de origen',
  `NAMPORTO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de origen',
  `RECLOCXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Lugar de recolección',
  `PRETRANS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Pre-Transporte por',
  `IDEXPEDI` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID Expedidor',
  `NAEXPEDI` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Expedidor',
  `COUNTRYD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de destino',
  `CODPORTD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del puerto de destino',
  `NAMPORTD` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del puerto de destino',
  `DELLOCXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Lugar de entrega',
  `ENTRANSX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'En-Transporte por',
  `IDCONSIG` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID Consignatario',
  `NACONSIG` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Consignatario',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`QTNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ruta puertos de la cotización';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
