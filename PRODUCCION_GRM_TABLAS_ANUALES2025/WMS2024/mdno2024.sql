-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:23:08
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
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdno2024`
--

CREATE TABLE `mdno2024` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de Comprobante',
  `comcscxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comseqxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Secuencia del Comprobante',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comrefxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Referencia del Comprobante',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `pucidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta PUC',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Uno',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo Dos',
  `comdesxx` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion del Comprobante',
  `comdbcrx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comidcxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comdocxx` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `comseqcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefcx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfecvc` date NOT NULL,
  `comidc2x` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodc2` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comdoc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comseqc2` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comrefc2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfacxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comalert` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `regfecxx` date NOT NULL COMMENT 'Fecha Creacion del Registro',
  `reghorxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hora Creacion del Registro',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Crea el Registro',
  `regestxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mdno2024`
--
ALTER TABLE `mdno2024`
  ADD PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comseqxx`,`comcsc2x`),
  ADD KEY `comdocxx` (`comdocxx`),
  ADD KEY `pucidxxx` (`pucidxxx`),
  ADD KEY `cliidxxx` (`cliidxxx`),
  ADD KEY `comidxxx` (`comidxxx`,`comcodxx`,`comcscxx`,`comcsc2x`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
