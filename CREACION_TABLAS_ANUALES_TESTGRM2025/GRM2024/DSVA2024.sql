-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 12-12-2024 a las 15:00:26
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
-- Estructura de tabla para la tabla `DSVA2024`
--

CREATE TABLE IF NOT EXISTS `DSVA2024` (
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `SECITEXX` int(3) NOT NULL COMMENT 'Secuencia del Item',
  `SERITEXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Seriales del item',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`,`SERITEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='CLIENTE,FACTURA, ITEM VS SERIALES ADICIONALES';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
