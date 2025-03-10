-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2025 a las 09:40:13
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
-- Base de datos: `CIMA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOTV2025`
--

CREATE TABLE `FOTV2025` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `FOTVSECX` smallint NOT NULL COMMENT 'CONSECUTIVO DEL SERVICIO AGREGADO',
  `CONCODES` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL CONCEPTO DE COBRO',
  `FORCADES` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA VARIABLE',
  `FOTOBSVX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LA TARIFA',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL  VS  SERVICIOS INCLUIDOS COMO VALOR AGREGADO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOTV2025`
--
ALTER TABLE `FOTV2025`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`,`FOTVSECX`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`),
  ADD KEY `FOCOVERX` (`FOCOVERX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
