-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:53:58
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
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TARP2024`
--

DROP TABLE IF EXISTS `TARP2024`;
CREATE TABLE `TARP2024` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA',
  `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT CLIENTE',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','COMPLETO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TAREAS VS PRODUCTOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TARP2024`
--
ALTER TABLE `TARP2024`
  ADD PRIMARY KEY (`TARIDXXX`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
