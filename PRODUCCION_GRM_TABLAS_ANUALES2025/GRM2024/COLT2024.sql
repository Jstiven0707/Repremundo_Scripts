-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:52:03
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
-- Estructura de tabla para la tabla `COLT2024`
--

CREATE TABLE `COLT2024` (
  `BLXXXXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de BL',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `DOCTRANS` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Do de Transito',
  `FACIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `ITEIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Item de Factura',
  `PROIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de Proveedor',
  `PRODESFA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Proveedor',
  `TOTALFAC` decimal(18,2) NOT NULL COMMENT 'Total de Factura',
  `ITECANXX` decimal(18,2) NOT NULL COMMENT 'Saldo Factura',
  `ARCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Partida arancelaria',
  `CANTNACX` decimal(18,3) NOT NULL COMMENT 'Cantidad a nacionalizar',
  `VALUNIXX` decimal(18,3) NOT NULL COMMENT 'Valor unitario',
  `VALTOLXX` decimal(18,3) NOT NULL COMMENT 'Total',
  `FLETEXXX` decimal(18,3) NOT NULL COMMENT 'Flete',
  `GDXXXXXX` decimal(18,3) NOT NULL COMMENT 'GD',
  `ASOFACTX` enum('PENDIENTE','FINALIZADO','CARGADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Asociacion a Factura',
  `ASOESTAX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Respuesta de la Asociacion',
  `ASODOCXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de los Documentos del BL',
  `ASOESTDO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion de los Docuemntos Asociados al BL',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Saldos de FActuras Asociados a BL para Coltabaco' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `COLT2024`
--
ALTER TABLE `COLT2024`
  ADD PRIMARY KEY (`BLXXXXXX`,`DOCNROXX`,`FACIDXXX`,`ITEIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
