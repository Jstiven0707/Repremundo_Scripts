-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 20-11-2024 a las 15:41:47
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
-- Estructura de tabla para la tabla `RCIO2024`
--

CREATE TABLE `RCIO2024` (
  `PROIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'ID producto',
  `TARIDXXX` bigint DEFAULT NULL COMMENT 'ID Tarea',
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Factura ',
  `DOCNROXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TYPEIMGX` enum('T','P') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Tipo de archivo genericas o productos',
  `URLXXXXX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Url bucket AWS',
  `MAKEDATE` datetime DEFAULT NULL COMMENT 'Fecha toma imagen',
  `SYNCWMXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Generar marca de agua\\n',
  `WMSTAMPX` datetime DEFAULT NULL,
  `SYNCGENIO` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NO' COMMENT 'Sincronización Genio\\n',
  `JSONGENIO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci COMMENT 'Respuesta Genio',
  `GENSTAMP` datetime DEFAULT NULL,
  `IMGSTAMP` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Imágenes - Genio';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
