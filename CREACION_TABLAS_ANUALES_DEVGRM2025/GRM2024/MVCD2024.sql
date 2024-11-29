-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:52:33
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
-- Estructura de tabla para la tabla `MVCD2024`
--

CREATE TABLE IF NOT EXISTS `MVCD2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del do',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Factura',
  `ITEIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item',
  `DESIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Descripcion',
  `DESDESXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripción del Descriptor',
  `VALDESXX` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Descripcion minima',
  `VALVERXX` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Verificacion Descripcion minina',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modifico',
  PRIMARY KEY (`HELCCSCX`,`DOCNROXX`,`FACIDXXX`,`ITEIDXXX`,`DESIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='MVC Detalle';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
