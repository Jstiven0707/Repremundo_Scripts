-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:13:11
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
-- Estructura de tabla para la tabla `DTGC2024`
--

CREATE TABLE IF NOT EXISTS `DTGC2024` (
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTGCIDXX` int(9) NOT NULL COMMENT 'ID Secuencia del gasto',
  `DRTCCAAD` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargos Adicionales',
  `DRTCTARI` decimal(10,5) NOT NULL COMMENT 'Tarifa',
  `DRTCUNID` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad',
  `DRTCMOGA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Moneda del Gasto',
  `DRTCFRPG` decimal(10,5) NOT NULL COMMENT 'Forma de pago del gasto (Prepaid)',
  `DRTCFOPC` decimal(10,5) NOT NULL COMMENT 'Forma de pago del gasto (Collect)',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTGCIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Gastos por Documento de Transporte';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
