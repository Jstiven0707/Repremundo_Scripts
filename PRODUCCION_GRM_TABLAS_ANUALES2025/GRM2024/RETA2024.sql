-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:34:22
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
-- Estructura de tabla para la tabla `RETA2024`
--

CREATE TABLE `RETA2024` (
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de empresa',
  `NUMREQXX` bigint(20) NOT NULL COMMENT 'Número de requisición',
  `INDPRREQ` int(11) NOT NULL COMMENT 'Id datos individuales',
  `ITPROIDX` int(11) DEFAULT NULL COMMENT 'Identificador de Productos (tabla ITPRODUC)',
  `ITPRODES` text COLLATE utf8_unicode_ci COMMENT 'Descripción del producto',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nit Proveedor',
  `PRVPRODX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Bandera de proveedor cargado desde productos',
  `CURRENCY` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo de moneda',
  `NUMCANTX` decimal(12,2) DEFAULT NULL COMMENT 'Cantidad',
  `VALPRODU` decimal(12,2) DEFAULT NULL COMMENT 'Valor',
  `TOTPRODU` decimal(12,2) DEFAULT NULL COMMENT 'Valor total',
  `UNITCANT` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unidad de medida',
  `CENTCOST` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Centro de costo',
  `SUBCOSTX` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sub centro de costo',
  `OBSERVXX` text COLLATE utf8_unicode_ci COMMENT 'Observaciones',
  `AUTUSIDX` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que autoriza',
  `SEGMENID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Segmento',
  `FAMILIID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Familia',
  `APROBITX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Aprobado por el director IT',
  `USIDAPPR` varchar(18) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que realiza la aprobacion',
  `FECHRECI` date DEFAULT NULL COMMENT 'Fecha recibida',
  `INFACTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'factura',
  `FACTRECT` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de la factura en la que se carga el item',
  `FACFECXX` date NOT NULL COMMENT 'Fecha en la que se carga el item',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NULL DEFAULT NULL COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RETA2024`
--
ALTER TABLE `RETA2024`
  ADD PRIMARY KEY (`NUMREQXX`,`EMPNITXX`,`INDPRREQ`) USING BTREE,
  ADD KEY `NUMREQXX` (`NUMREQXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
