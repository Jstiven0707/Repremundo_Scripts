-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 16:05:26
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
-- Estructura de tabla para la tabla `ITPO2024`
--

CREATE TABLE `ITPO2024` (
  `NUMPOLXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Poliza',
  `PROITIDX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Proveedor',
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa',
  `GENNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Nodo Principal',
  `SECNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Nodo Hijo',
  `FIDNODOX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de Archivo Asociado',
  `FILTYPXX` enum('GENIO','GRM') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'GRM' COMMENT 'Bandera Alojamiento de Archivo',
  `LINKTYPX` enum('CONSECUTIVO','POLIZA','CAUSACION','POLIZANUMG') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CONSECUTIVO' COMMENT 'Bandera de enlace a metadato o consecutivo',
  `ITFACSQX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sq Link Factura',
  `FACDESLI` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripción Link',
  `FACLINKX` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Link',
  `INVFIEDX` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'field_proveedor_facturas' COMMENT 'Nombre de campo de proveedor en genio',
  `FACPATHX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta Absoluta',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos Soporte de Poliza' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITPO2024`
--
ALTER TABLE `ITPO2024`
  ADD PRIMARY KEY (`NUMPOLXX`,`PROITIDX`,`EMPNITXX`,`ITFACSQX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
