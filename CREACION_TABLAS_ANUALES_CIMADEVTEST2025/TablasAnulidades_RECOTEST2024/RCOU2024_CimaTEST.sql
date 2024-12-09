-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 20-11-2024 a las 15:45:39
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `RECO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RCOU2024`
--

DROP TABLE IF EXISTS `RCOU2024`;
CREATE TABLE `RCOU2024` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID Tarea',
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Factura',
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID Producto',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `UNIXXXXX` decimal(18,2) DEFAULT NULL COMMENT 'Unidades',
  `SYNCXXXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO',
  `REGSTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `RECSCOBU` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRODESFA` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `RECUNUMR` decimal(18,5) DEFAULT '0.00000',
  `MEDIAPRO` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json Image Producto',
  `ISNEWXXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci DEFAULT 'NO',
  `SERISGRO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci,
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `JSONPROD` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json captura producto',
  `SYNCTAMP` timestamp NULL DEFAULT NULL,
  `ISSYNCXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Unidades - Tarea';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RCOU2024`
--
ALTER TABLE `RCOU2024`
  ADD PRIMARY KEY (`TARIDXXX`,`FACIDXXX`,`PROIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
