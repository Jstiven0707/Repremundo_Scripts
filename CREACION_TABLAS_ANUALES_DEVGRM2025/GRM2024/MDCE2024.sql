-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:30:13
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
-- Estructura de tabla para la tabla `MDCE2024`
--

CREATE TABLE IF NOT EXISTS `MDCE2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Do',
  `IDESTADO` int(11) NOT NULL COMMENT 'Identificador del estado del cliente',
  `DOCPESTX` int(11) NOT NULL COMMENT 'Peso del Estado',
  `DOCESTXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Estado del cliente',
  `DOCDESTX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos del Estado',
  `DOCFESTX` date NOT NULL COMMENT 'Fecha del Estado',
  `DOCHESTX` time NOT NULL COMMENT 'Hora del Estado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`IDESTADO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados del DO';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
