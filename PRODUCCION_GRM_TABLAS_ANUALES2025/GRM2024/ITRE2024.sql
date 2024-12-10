-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 16:06:08
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
-- Estructura de tabla para la tabla `ITRE2024`
--

CREATE TABLE `ITRE2024` (
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de empresa',
  `NUMREQXX` bigint(20) NOT NULL COMMENT 'Número de requisición',
  `TIPSOLIS` enum('REQUISICION','SERVICIO','COMPRA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de solicitud',
  `LINKFACT` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera de enlace por factura',
  `AREAIDXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area',
  `FECHRECI` date DEFAULT NULL COMMENT 'Fecha recibida por compras',
  `FECHENTX` date DEFAULT NULL COMMENT 'Fecha pactada de entrega',
  `FECHENTR` date DEFAULT NULL COMMENT 'Fecha real de entrega',
  `USRIDSOT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario solicitante',
  `ADDRESSX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion',
  `DEPIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del deposito',
  `EMAENVXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera de email enviado a compras',
  `EMAFECXX` date NOT NULL COMMENT 'Fecha de envio de email a compras',
  `EMACORXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direcciones de email enviado',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date DEFAULT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time DEFAULT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date DEFAULT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time DEFAULT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NULL DEFAULT NULL COMMENT 'Actualizacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Requisiciones y Orden de Servicios Modulo Facturas' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ITRE2024`
--
ALTER TABLE `ITRE2024`
  ADD PRIMARY KEY (`NUMREQXX`,`EMPNITXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
