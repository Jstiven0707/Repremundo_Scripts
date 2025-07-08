-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 18-06-2025 a las 16:12:24
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
-- Estructura de tabla para la tabla `GRM00330`
--

CREATE TABLE IF NOT EXISTS `GRM00330` (
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IDREGIST` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'identificacion del registro',
  `POSTITEM` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'posicion del item',
  `SECITEXX` int(3) NOT NULL COMMENT 'Secuencia items',
  `PAIORITE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'pais de origen del item',
  `CONSECUX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo item',
  `CODITEMX` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'codigo del item',
  `DESCITEM` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del item',
  `CANTFACT` decimal(25,8) DEFAULT NULL COMMENT 'cantidad que viene en la factura de importacion',
  `UNIMEDFA` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'unidad de medida viene igual en la factura de importacion',
  `CODUNIME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'codigo de la unidad de medida',
  `FECORDCO` datetime DEFAULT NULL COMMENT 'fecha de la orden de compra',
  `NUMORDCO` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de la orden de compra',
  `PESBRUIT` decimal(25,8) DEFAULT NULL COMMENT 'peso bruto del item',
  `CLAHAZMA` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'HAZMAT Class',
  `CODHAZMA` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'HAZMAT Code',
  `DESHAZMA` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'HAZMAT Description',
  `INDHAZMA` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'HAZMAT Indicator',
  `SUBPARTI` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'subpartida sugeria armonizada a 6 digitos',
  `PESNETIT` decimal(25,8) DEFAULT NULL COMMENT 'peso neto del item',
  `NUMFACIM` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de la factura de importación',
  `PRETOTIT` decimal(25,8) DEFAULT NULL COMMENT 'precio total del item',
  `PREUNITE` decimal(25,8) DEFAULT NULL COMMENT 'precio unitario del item',
  `CANFACIM` decimal(25,8) DEFAULT NULL COMMENT 'cantidad de la factura de importación',
  `CANESPER` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Expected Goods Receipt Quantity',
  `NUMLOTIT` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de lote del item',
  `FECEXPLO` datetime DEFAULT NULL COMMENT 'fecha de expiracion del lote del item',
  `LICREGEX` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'licencia  registro de importacion',
  `ORDENCOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ORDEN DE COMPRA',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`FACIDXXX`,`CLIIDXXX`,`POSTITEM`,`CODITEMX`),
  UNIQUE KEY `CONSECUX` (`CONSECUX`),
  KEY `NUMORDCO` (`NUMORDCO`(5)) COMMENT 'llave adiconal'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ORDER ITEM DATA BOMI' AUTO_INCREMENT=17370 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
