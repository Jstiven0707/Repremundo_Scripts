-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2025 a las 19:19:13
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
-- Estructura de tabla para la tabla `mien2025`
--

CREATE TABLE `mien2025` (
  `esiddocx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Entrada',
  `escoddoc` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Deposito Entrada',
  `escscdoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Documento Entrada',
  `idembala` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Embalaje',
  `idempaqe` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empaque',
  `refproid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia Producto',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Cliente',
  `itemsqxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sequencia item',
  `saldoxxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Saldo Disponible',
  `saldoblq` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Saldo bloqueado',
  `cantidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad Ingresada',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Control Inventario Entrada';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mien2025`
--
ALTER TABLE `mien2025`
  ADD PRIMARY KEY (`esiddocx`,`escoddoc`,`escscdoc`,`idembala`,`idempaqe`,`refproid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
