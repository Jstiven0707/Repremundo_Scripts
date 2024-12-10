-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:27:41
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
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PVIN2024`
--

CREATE TABLE `PVIN2024` (
  `IDINFXXX` int(11) NOT NULL COMMENT 'Id autoincrementar del informe ',
  `FECHINFX` date NOT NULL COMMENT 'Fecha de los datos del informe',
  `CCINFXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CC de los datos del informe',
  `SCCINFXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SCC de los datos del informe',
  `CODINFXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo ',
  `PREFINFX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prefijo ',
  `CONSINFX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo ',
  `CONSINF2` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo 2 ',
  `DOCINFXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento C ',
  `DOCNROXX` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DO de los datos del informe',
  `CONCINFX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Concepto de los datos del informe',
  `NITINFXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit/Cedula ',
  `NOMINFXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de los datos del informe',
  `BASCALIN` decimal(25,2) NOT NULL COMMENT 'Base RFTE calculada',
  `BASREGIN` decimal(25,2) NOT NULL COMMENT 'Base RFTE registrada',
  `VALDEBIN` decimal(25,2) NOT NULL COMMENT 'Valor debito',
  `VALCREIN` decimal(25,2) NOT NULL COMMENT 'Valor Credito',
  `SALINFXX` decimal(25,2) NOT NULL COMMENT 'Saldo ',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro ',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ingreso Propio Ventas Practiko' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `PVIN2024`
--
ALTER TABLE `PVIN2024`
  ADD PRIMARY KEY (`IDINFXXX`) USING BTREE,
  ADD KEY `FECHINFX` (`FECHINFX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `PVIN2024`
--
ALTER TABLE `PVIN2024`
  MODIFY `IDINFXXX` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id autoincrementar del informe ';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
