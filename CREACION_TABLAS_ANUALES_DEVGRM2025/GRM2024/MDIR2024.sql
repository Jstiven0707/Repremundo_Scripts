-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:37:39
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
-- Estructura de tabla para la tabla `MDIR2024`
--

CREATE TABLE IF NOT EXISTS `MDIR2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `PROIDXXX` varchar(167) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del producto',
  `IDCONSXX` int(11) NOT NULL COMMENT 'Secuencia de Tramitex',
  `NUMDEXIX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DEX Inicial',
  `NUMDEXFX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DEX Final',
  `UNIINIXX` decimal(18,6) NOT NULL COMMENT 'Unidades Iniciales del ITEM',
  `UNIFINXX` decimal(18,6) NOT NULL COMMENT 'Unidades Finales del ITEM',
  `PESNEXXX` decimal(18,6) NOT NULL COMMENT 'Peso neto con que se elaboro el ITEM',
  `PESFINXX` decimal(18,6) NOT NULL COMMENT 'Peso neto con que finalizo el ITEM',
  `VALFOBIX` decimal(18,6) NOT NULL COMMENT 'Valor FOB con que se elaboro el ITEM',
  `VALFOBFX` decimal(18,6) NOT NULL COMMENT 'Valor FOB con que finalizo el ITEM',
  `ITMREGXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Regimen con que finalizo la operacion',
  `ITMADMXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aduana de ingreso',
  `ITMFECFI` date NOT NULL COMMENT 'Fecha de finalizacion del ITEM',
  `ITMNFINX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de documento con que finalizo',
  `ITMOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones de la finalizacion del ITEM',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`NUMSAEXX`,`PROIDXXX`,`IDCONSXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='items de la factura para control de reexportaciones';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
