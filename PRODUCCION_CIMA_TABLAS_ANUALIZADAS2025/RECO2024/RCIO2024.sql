-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 12-12-2024 a las 08:13:39
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
  `USRIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Id usuario cima',
  `FACIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Factura id  ',
  `DOCNROXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Numero de Do',
  `CLIIDXXX` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Cliente id',
  `TYPEIMGX` enum('T','P') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Tipo de archivo producto  o productos',
  `URLXXXXX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Url bucket AWS',
  `MAKEDATE` datetime DEFAULT NULL COMMENT 'Fecha toma imagen',
  `SYNCWMXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'NO' COMMENT 'Flag marca de agua',
  `WMSTAMPX` datetime DEFAULT NULL COMMENT 'Fecha generacion marca de agua',
  `SYNCGENIO` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'NO' COMMENT 'Flan Sincronización Genio',
  `JSONGENIO` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT 'Json respuesta Genio',
  `GENSTAMP` datetime DEFAULT NULL COMMENT 'Fecha sincronizacion Genio',
  `IMGSTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creacion registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Imágenes - Genio';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
