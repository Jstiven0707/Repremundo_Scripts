-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:23:08
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
-- Estructura de tabla para la tabla `ITPF2024`
--

CREATE TABLE IF NOT EXISTS `ITPF2024` (
  `ITFACIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `ITFACSQX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sq Link Factura',
  `ANOPRESU` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ano del Presupuesto',
  `AREAIDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'AREA DE FACTURA',
  `SEGMENID` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segmento del Presupuesto',
  `FAMILIID` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Familia del presupuesto',
  `CCIDXXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `SCCIDXXX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subcentro de costo',
  `VLRFACAP` decimal(12,2) NOT NULL COMMENT 'Valor aplicable al presupuesto',
  `DETALLEX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Detalle Distribucion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones',
  PRIMARY KEY (`ITFACIDX`,`PROITIDX`,`EMPNITXX`,`ITFACSQX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Distribución de presupuesto Facturas ';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
