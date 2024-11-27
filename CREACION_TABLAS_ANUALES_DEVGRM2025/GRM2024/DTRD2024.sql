-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:15:32
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
-- Estructura de tabla para la tabla `DTRD2024`
--

CREATE TABLE IF NOT EXISTS `DTRD2024` (
  `DTRDSCIT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Documento de Transporte (PK)',
  `DTRDREFX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia / SKU',
  `DTRDDEME` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion Mercancia',
  `DTRDBULT` decimal(18,5) NOT NULL COMMENT 'Bultos',
  `UNIBULTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Bultos',
  `DTRDPEBR` decimal(18,5) NOT NULL COMMENT 'Peso Bruto',
  `UNPEBULT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Peso Bruto',
  `DTRDCUBI` decimal(18,5) NOT NULL COMMENT 'Cubicaje',
  `UNICUBIX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Cubicaje',
  `DTRDNUOC` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Orden Compra',
  `DTRDNUPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Pedido',
  `DTRDSUBP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartidas',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DTRDSCIT`,`DTRCNICO`,`DTRCDOTR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle por Documento de Transporte';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
