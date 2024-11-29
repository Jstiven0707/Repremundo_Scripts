-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:06:00
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
-- Estructura de tabla para la tabla `CALE2024`
--

CREATE TABLE IF NOT EXISTS `CALE2024` (
  `FACSEMAN` int(11) NOT NULL COMMENT 'Numero de Semana',
  `FECCALIX` date NOT NULL COMMENT 'Fecha Calendario Desde',
  `FECCALFX` date NOT NULL COMMENT 'Fecha Calendario Hasta',
  `CALBIMES` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Calendario Bimestre',
  `NUMDEXIN` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DEX Inicial',
  `NUMDEXFI` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DEX Final',
  `FECFACTX` date NOT NULL COMMENT 'Fecha de Factura SIACO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`FACSEMAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Calendario Historico de Semanas';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
