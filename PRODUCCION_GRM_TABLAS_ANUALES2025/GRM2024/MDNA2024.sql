-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:16:30
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
-- Estructura de tabla para la tabla `MDNA2024`
--

CREATE TABLE `MDNA2024` (
  `USRIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula Usuario a Notificar',
  `TIPODISP` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Dispositivo movil',
  `TOKENDIS` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Token SYS00049',
  `IDTIPNOT` int(11) NOT NULL COMMENT 'Id Identificador GRM00382',
  `CONSNOTX` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo ',
  `LEIDOXXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Verificación de si la notificación ya fue leida o no',
  `ENVIADOX` enum('SI','NO','ERROR') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera para saber si la notificación ya fue enviada o no',
  `DOCNROXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `CAMDISXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo adicional para la Alertas',
  `ALECOLOR` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Color, aplica solo para las Alertas',
  `MENALTXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Texto Alterno',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de Notificaciones Leidas/No Leidas del APP' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDNA2024`
--
ALTER TABLE `MDNA2024`
  ADD PRIMARY KEY (`USRIDXXX`,`TOKENDIS`,`CONSNOTX`,`DOCNROXX`,`CAMDISXX`,`IDTIPNOT`) USING BTREE,
  ADD KEY `TOKENDIS` (`TOKENDIS`) USING BTREE,
  ADD KEY `DOCNROXX` (`TOKENDIS`,`DOCNROXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
