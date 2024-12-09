-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 09-12-2024 a las 09:44:05
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `CASTOR`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prca2024`
--

CREATE TABLE IF NOT EXISTS `prca2024` (
  `pricidxx` int NOT NULL AUTO_INCREMENT COMMENT 'Id pricing',
  `fecinica` date NOT NULL COMMENT 'Fecha inicial de cargue',
  `fecvigen` date NOT NULL COMMENT 'Fecha vigencia',
  `typetari` enum('AEREO','MARITIMO','TERRESTRE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de tarifario',
  `clasitar` enum('CONDICIONES LOCALES','GENERAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Clasificacion del tarifario',
  `pathadjx` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ruta Archivo adjunto tarifario',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`pricidxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PRICING CABECERA' AUTO_INCREMENT=132 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
