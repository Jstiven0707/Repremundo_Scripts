-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:06:34
-- Versión del servidor: 5.7.31-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CISP2024`
--

CREATE TABLE `CISP2024` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISCCONX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de consignacion - transaccion',
  `CISCTIPC` enum('1','2') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo Consignacion',
  `CISCFEPX` date NOT NULL COMMENT 'echa pago de tarifa',
  `CISCNICE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero del NIT o CEDULA',
  `CISCVRTX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'valor de la tarifa',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Pagos por formulario CIS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CISP2024`
--
ALTER TABLE `CISP2024`
  ADD PRIMARY KEY (`CISCIDXX`,`CISCCONX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
