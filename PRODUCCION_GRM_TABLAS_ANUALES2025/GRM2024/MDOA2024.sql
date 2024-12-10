-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:16:48
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
-- Estructura de tabla para la tabla `MDOA2024`
--

CREATE TABLE `MDOA2024` (
  `IDARBOLX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Arbol',
  `IDSEQARB` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuenca del Arbol',
  `DOCNROXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'DO',
  `CLIIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `GRUPOREX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo Responsable',
  `EQUIPORE` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Equipo Responsable',
  `USUARIRE` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Responsable',
  `CARGOREX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cargo Responsable',
  `ESTADOPA` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Paso',
  `FECHACIE` date NOT NULL COMMENT 'Fecha Cierre',
  `HORACIER` time NOT NULL COMMENT 'Hora Cierre',
  `USUARCIE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Cierre',
  `TIPOVINC` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Vinculo',
  `ABROADMO` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Paso Abierto por Admon',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Arbol del DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOA2024`
--
ALTER TABLE `MDOA2024`
  ADD PRIMARY KEY (`IDARBOLX`,`IDSEQARB`,`DOCNROXX`) USING BTREE,
  ADD KEY `INDEX1` (`IDARBOLX`,`IDSEQARB`) USING BTREE,
  ADD KEY `INDEX2` (`DOCNROXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
