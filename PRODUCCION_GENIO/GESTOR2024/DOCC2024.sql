-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: dev1-geniomysql.repremundo.com.co
-- Tiempo de generación: 30-12-2024 a las 12:14:38
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GESTORDEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DOCC2024`
--

CREATE TABLE `DOCC2024` (
  `IDARCHXX` bigint NOT NULL COMMENT 'ID del paquete',
  `EMPNITXX` varchar(20) NOT NULL,
  `AREAIDXX` int NOT NULL COMMENT 'ID del area',
  `SERIEIDX` int NOT NULL COMMENT 'ID de la serie',
  `TIPOIDXX` int NOT NULL COMMENT 'ID del tipo',
  `JSONMETX` json NOT NULL COMMENT 'Metadatos diligenciados',
  `PATHFILX` tinytext NOT NULL,
  `TYPEXXXX` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Mimetype del Archivo',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','INCOMPLETO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Paquete tipificados gestor documental';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DOCC2024`
--
ALTER TABLE `DOCC2024`
  ADD PRIMARY KEY (`IDARCHXX`),
  ADD KEY `EMPNITXX` (`EMPNITXX`),
  ADD KEY `AREAIDXX` (`AREAIDXX`),
  ADD KEY `SERIEIDX` (`SERIEIDX`),
  ADD KEY `TIPOIDXX` (`TIPOIDXX`),
  ADD KEY `EMPNITXX_2` (`EMPNITXX`,`AREAIDXX`,`SERIEIDX`,`TIPOIDXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `DOCC2024`
--
ALTER TABLE `DOCC2024`
  MODIFY `IDARCHXX` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID del paquete';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
