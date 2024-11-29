-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 10:21:30
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
-- Estructura de tabla para la tabla `NMMC2024`
--

CREATE TABLE IF NOT EXISTS `NMMC2024` (
  `NMMCIDXX` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Secuencia del documento de no mas errores',
  `NMMCNOCR` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Número de NO conforme SIG',
  `NMMPEIDX` int(9) NOT NULL COMMENT 'Id del Error',
  `NMMCSITP` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Situacion Presentada',
  `NMMCPROX` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Procesos o normas incumplidas',
  `NMMCFCPX` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Forma correcta de proceder',
  `NMMCACCX` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Acciones correctivas',
  `NMMPIMSL` enum('SI','NO') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si se implementa la solución informatica',
  `NMMPDESL` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Descripcion de la solución informatica',
  `NMMPBANA` enum('SI','NO') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera que indica si se mitiga el error totalmente',
  `REGUSRXX` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`NMMCIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Informes (Programa No Mas Errores)';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
