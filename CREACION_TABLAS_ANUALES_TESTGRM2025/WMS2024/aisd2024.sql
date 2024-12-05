-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 29-11-2024 a las 14:32:09
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aisd2024`
--

CREATE TABLE IF NOT EXISTS `aisd2024` (
  `idarchad` varchar(10) NOT NULL COMMENT 'Consecutivo de archivo',
  `depidxxx` varchar(10) NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(35) NOT NULL COMMENT 'Documento de transporte',
  `consecxx` varchar(10) NOT NULL COMMENT 'Consecutivo de ingreso y salida del documento',
  `secuenxx` varchar(10) NOT NULL COMMENT 'Secuencia de Archivos adjuntos',
  `tipoxxxx` varchar(10) NOT NULL COMMENT 'Tipo de registro',
  `rutaxxxx` varchar(300) NOT NULL COMMENT 'Ruta del registro',
  `regusrxx` varchar(20) NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `regestxx` varchar(10) NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`idarchad`,`secuenxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adjuntos ingreso y salida de deposito';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
