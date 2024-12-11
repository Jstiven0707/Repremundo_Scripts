-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:48:19
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
-- Estructura de tabla para la tabla `RENU2024`
--

CREATE TABLE `RENU2024` (
  `TARIDXXX` bigint NOT NULL COMMENT 'ID DE LA TAREA(TARCYYY)',
  `RECNSEID` int NOT NULL COMMENT 'SECUENCIA DEL ITEM',
  `RECUCOBU` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'UBICACION DEL PRODUCTO',
  `RECUNUMR` decimal(18,5) NOT NULL COMMENT 'CANTIDAD RECONOCIMIENTO',
  `RECAUTMA` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'AUTORIZADO PARA RECONOCIMIENTO MANUAL',
  `RECUAVER` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI APLICA AVERIAS',
  `RECOBSAV` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LAS AVERIAS',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='RECONOCIENTO FACTURA, PRODUCTOS NUEVOS VS UBICACIONES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RENU2024`
--
ALTER TABLE `RENU2024`
  ADD PRIMARY KEY (`TARIDXXX`,`RECNSEID`,`RECUCOBU`),
  ADD KEY `TARIDXXX` (`TARIDXXX`),
  ADD KEY `RECNSEID` (`RECNSEID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
