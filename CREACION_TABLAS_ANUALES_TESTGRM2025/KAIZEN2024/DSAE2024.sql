-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 10:08:10
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
-- Estructura de tabla para la tabla `DSAE2024`
--

CREATE TABLE IF NOT EXISTS `DSAE2024` (
  `ANTIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concecutivo',
  `COMREFXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concepto',
  `ANTTIPXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo PCC o IP',
  `ANTVLRXX` decimal(17,2) NOT NULL COMMENT 'Valor',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`ANTIDXXX`,`COMREFXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de Anticipos Expo';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
