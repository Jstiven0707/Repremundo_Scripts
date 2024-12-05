-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 10:04:22
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CISL2024`
--

CREATE TABLE IF NOT EXISTS `CISL2024` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISOIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los origenes',
  `CISLIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los LOTES',
  `CISLTIPP` enum('T','P','N') COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de producto(T producto terminado, P materia prima, N otros alimientos)',
  `CISLEXIN` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'expediente invima',
  `CISLPROX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion del producto (de acuerdo a su verdadera naturaleza)',
  `CISLCANP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'cantidad',
  `CISLPREX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PRESENTACION',
  `CISGRAID` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del grupo alimenticio',
  `CISLNULI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de la licencia',
  `CISLFEIM` date NOT NULL DEFAULT '0000-00-00' COMMENT 'fecha de licencia(solo importaciones)',
  `CISLPEVL` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'peso o volumen total del lote',
  `CISUNDID` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la unidad',
  `CISLTMPX` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'temperatura',
  `CISLLOTX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'LOTE',
  `CISLFCVC` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE VENCIMIENTO',
  `CISLPESN` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'peso neto del cargamento',
  `CISLMARC` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'marca',
  `CISLCERC` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'certificado de calidad',
  `CISLPRBA` enum('botella','caja','bidon','barril','granel','otros') COLLATE utf8_unicode_ci NOT NULL COMMENT 'presentacion bebidas alcoholicas',
  `CISLCONE` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'contenido neto por unidad',
  `CISUCNUX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID unidad de contenido neto por unidad',
  `CISSUBID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la subpartida en CIS',
  `CISSGRAA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'grados alcoholimetros',
  `CISUNLTX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de Medida',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CISCIDXX`,`CISOIDXX`,`CISLIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='origenes del producto CIS vs lotes';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
