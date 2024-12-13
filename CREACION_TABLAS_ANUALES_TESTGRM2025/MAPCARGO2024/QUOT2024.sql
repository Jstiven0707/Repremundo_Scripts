-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 10:43:30
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
-- Estructura de tabla para la tabla `QUOT2024`
--

CREATE TABLE IF NOT EXISTS `QUOT2024` (
  `QUOTGUID` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guid de la cotizacion',
  `QUONUMXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la cotizacion',
  `JOBNUMXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Numero de la cotizacion',
  `QTSTATUS` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado de la cotizacion',
  `TERMPAGO` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Termino de pago',
  `QUOTCOMP` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Empresa que emite la cotizacion',
  `REGUSRNA` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre usuario que creo la cotización',
  `QFECEXPX` datetime DEFAULT NULL COMMENT 'Fecha de expiración de cotización',
  `QUOVENDOR` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Vendedor que genera la cotizacion',
  `QUODIVXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'División ',
  `CLIIDXXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'NIT del cliente',
  `CLINOMXX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre del cliente',
  `CLIREPRE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Representante',
  `MODETRAN` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Modo de Transportación',
  `DIRECTXX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Dirección Entrante/Saliente',
  `INCOTERM` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Incoterms',
  `FREQUENX` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Frecuencia',
  `CHARDESC` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción de la carga',
  `WAREDANG` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mercancia Peligrosa',
  `QTOTALPI` int(15) DEFAULT NULL COMMENT 'Total de piezas de la cotización',
  `QTOTALWE` float NOT NULL COMMENT 'Total peso cotización',
  `OPTOTALV` float NOT NULL COMMENT 'Total volumen cotización',
  `QTBALANX` float DEFAULT NULL COMMENT 'Balance de la Cotización',
  `QTOUCOPX` float DEFAULT NULL COMMENT 'Gastos de la Cotización',
  `QTINCOPX` float DEFAULT NULL COMMENT 'Ingresos de la Cotización',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`QUONUMXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Datos de la cabecera de la cotizacion';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
