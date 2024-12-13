-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 09:53:55
-- Versión del servidor: 5.6.47
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
-- Estructura de tabla para la tabla `hfun2024`
--

CREATE TABLE IF NOT EXISTS `hfun2024` (
  `idfuncix` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de registro',
  `fechaxxx` date NOT NULL COMMENT 'Fecha funcionario',
  `cantpers` int(11) NOT NULL COMMENT 'Cantidad personas',
  `canthora` int(11) NOT NULL COMMENT 'Cantidad horas',
  `operaxxx` enum('COORDINACION O SUPERVISION DE OPERACION','LOGISTICA INVERSA') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `regusrxx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghorxx` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regusrmx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghmodx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`idfuncix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Horas funcionario GWS' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
