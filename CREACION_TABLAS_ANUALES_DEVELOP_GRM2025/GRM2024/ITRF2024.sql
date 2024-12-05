-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 12:16:04
-- Versión del servidor: 8.0.33
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
-- Estructura de tabla para la tabla `ITRF2024`
--

CREATE TABLE IF NOT EXISTS `ITRF2024` (
  `EMPNITXX` varchar(20) NOT NULL COMMENT 'Id empresa',
  `NUMREQXX` bigint NOT NULL COMMENT 'Número de requisición',
  `ITFACSQX` varchar(10) NOT NULL COMMENT 'Secuencia Archivo',
  `GENNODOX` varchar(50) NOT NULL COMMENT 'Id Nodo Principal',
  `SECNODOX` varchar(50) NOT NULL COMMENT 'Id Nodo Hijo',
  `FIDNODOX` varchar(200) NOT NULL COMMENT 'Id Archivo Asociado',
  `ATMNFILX` enum('SI','NO') NOT NULL DEFAULT 'SI' COMMENT 'Bandera de archivos asociados',
  `FACDESLI` varchar(30) NOT NULL COMMENT 'Descripcion Archivo',
  `FACLINKX` varchar(300) NOT NULL COMMENT 'Link Archivo',
  `REGUSRXX` varchar(20) DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Actualizacion',
  PRIMARY KEY (`EMPNITXX`,`NUMREQXX`,`ITFACSQX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Registro de Archivos para Requisicion y Orden de Servicio Modulo Facturas';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
