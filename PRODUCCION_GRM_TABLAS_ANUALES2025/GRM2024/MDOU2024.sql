-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:19:47
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
-- Estructura de tabla para la tabla `MDOU2024`
--

CREATE TABLE `MDOU2024` (
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCTIPXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DOCPESTX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador o Peso del Estado',
  `DOCESTXX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado DO',
  `NOTISTBK` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar estado a RIO',
  `DOCEST2X` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado Do Para BackBone',
  `DOCDESTX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documentos del Estado',
  `DOCFESTX` date NOT NULL COMMENT 'Fecha del Estado',
  `DOCHESTX` time NOT NULL COMMENT 'Hora del Estado',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGMODXX` date NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados de DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOU2024`
--
ALTER TABLE `MDOU2024`
  ADD PRIMARY KEY (`DOCNROXX`,`REGFECXX`,`REGHORXX`,`REGUSRXX`) USING BTREE,
  ADD KEY `DOCTIPXX` (`DOCTIPXX`) USING BTREE,
  ADD KEY `SUCIDXXX` (`SUCIDXXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`,`DOCESTXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
