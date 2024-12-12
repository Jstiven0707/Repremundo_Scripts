-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 12-12-2024 a las 08:13:53
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
-- Estructura de tabla para la tabla `RCOC2024`
--

CREATE TABLE `RCOC2024` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID Tarea ',
  `DATATARC` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Json TARC',
  `ESTAIDXX` smallint DEFAULT NULL,
  `ITEMXXXX` int DEFAULT NULL COMMENT 'Cantidad Items Tarea',
  `UNIXXXXX` decimal(18,2) DEFAULT NULL COMMENT 'Unidades Tarea',
  `USRIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Usuario Sincroniza',
  `SYNCXXXX` enum('NO','SI') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización app RECO ',
  `REGSTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `REGSSYNC` timestamp NULL DEFAULT NULL,
  `USRSYNCX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IPSYNCXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REFERERX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `JSONTARID` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT 'Json data Reco app ',
  `SYNCPATH` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SYNCJSON` enum('NS','SP','ST') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NS' COMMENT 'Indicador Sincronizacion NS= No sincronizado, SP= sincronizado parcial, ST = Sincronizado Total',
  `REGSYNCJ` timestamp NULL DEFAULT NULL COMMENT 'Fecha de sincronización ',
  `USRSYNJS` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DEPNICKX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `REFEREJS` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `IPSYNCJS` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RECUIMAG` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `SYNCINTF` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización productos interface ',
  `REGSINTF` timestamp NULL DEFAULT NULL,
  `ITEMSYNC` int DEFAULT NULL,
  `SYNCCIMA` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Indicador Sincronización CIMA ',
  `JSONCIMA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Respuesta json Cima ',
  `REGSCIMA` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Encabezado - RECO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RCOC2024`
--
ALTER TABLE `RCOC2024`
  ADD PRIMARY KEY (`TARIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
