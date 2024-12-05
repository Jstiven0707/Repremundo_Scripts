-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:38:48
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
-- Estructura de tabla para la tabla `MDOA2024`
--

CREATE TABLE IF NOT EXISTS `MDOA2024` (
  `IDARBOLX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Arbol',
  `IDSEQARB` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuenca del Arbol',
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DO',
  `CLIIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `GRUPOREX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo Responsable',
  `EQUIPORE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Equipo Responsable',
  `USUARIRE` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Responsable',
  `CARGOREX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargo Responsable',
  `ESTADOPA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Paso',
  `FECHACIE` date NOT NULL COMMENT 'Fecha Cierre',
  `HORACIER` time NOT NULL COMMENT 'Hora Cierre',
  `USUARCIE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Cierre',
  `TIPOVINC` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Vinculo',
  `ABROADMO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Paso Abierto por Admon',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`IDARBOLX`,`IDSEQARB`,`DOCNROXX`),
  KEY `INDEX1` (`IDARBOLX`,`IDSEQARB`),
  KEY `INDEX2` (`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Arbol del DO';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
