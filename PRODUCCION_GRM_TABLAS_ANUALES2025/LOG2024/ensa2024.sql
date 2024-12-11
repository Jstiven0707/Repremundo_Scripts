-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:12:58
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
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensa2024`
--

CREATE TABLE `ensa2024` (
  `esiddocx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Entrada',
  `escoddoc` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Entrada',
  `escscdoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Entrada',
  `idembala` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Embalaje',
  `idempaqe` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empaque',
  `esiddocs` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Salida',
  `escodocs` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Salida',
  `escsdocs` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Salida',
  `refproid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia Producto',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cliente',
  `itemsqxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id secuencia',
  `cantidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de la Salida',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  `proyecid` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relacion Entrada y sus Salidas';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ensa2024`
--
ALTER TABLE `ensa2024`
  ADD PRIMARY KEY (`esiddocx`,`escoddoc`,`escscdoc`,`idembala`,`idempaqe`,`esiddocs`,`escodocs`,`escsdocs`,`refproid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
