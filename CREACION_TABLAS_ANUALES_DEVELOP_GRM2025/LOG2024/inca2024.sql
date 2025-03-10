-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 12-12-2024 a las 11:56:02
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inca2024`
--

CREATE TABLE IF NOT EXISTS `inca2024` (
  `esiddocx` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'id documento',
  `escoddoc` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'numero deposito',
  `escscdoc` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'consecutivo documento',
  `incidxxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Incidentes de carga',
  `regusrxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`esiddocx`,`escoddoc`,`escscdoc`,`incidxxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Inconsistencias de Carga';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
