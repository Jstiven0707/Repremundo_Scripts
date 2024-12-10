-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:10:49
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
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HELI2024`
--

CREATE TABLE `HELI2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Numero del Solicitud',
  `TOKIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Operacion KPI',
  `INOPIDXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del indicador',
  `FORCALID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Formula de Calculo',
  `LIMINFFE` date NOT NULL COMMENT 'Fecha Limite inferior',
  `LIMINHOR` time NOT NULL COMMENT 'Hora Limite inferior',
  `LIMINVAL` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite inferior',
  `FELIMINF` date NOT NULL COMMENT 'Fecha Registro Limite inferior',
  `HOLIMINF` time NOT NULL COMMENT 'Hora Registro Limite inferior',
  `RESESPFE` date NOT NULL COMMENT 'Fecha Resultado Esperado',
  `RESESPHO` time NOT NULL COMMENT 'Hora Resultado Esperado',
  `RESESPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Resultado Esperado',
  `VALORESP` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor esperado del Indicador',
  `LIMSUPFE` date NOT NULL COMMENT 'Fecha Limite Superior',
  `LIMSUPHO` time NOT NULL COMMENT 'Hora Limite Superior',
  `LIMSUPVA` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Limite Superior',
  `CUMPLEXX` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `RESOBTEX` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Resultado obtenido',
  `UNIDADMX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de medida',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Indicadores DO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELI2024`
--
ALTER TABLE `HELI2024`
  ADD PRIMARY KEY (`HELCCSCX`,`TOKIDXXX`,`INOPIDXX`,`FORCALID`),
  ADD KEY `Indice` (`HELCCSCX`),
  ADD KEY `REGESTXX` (`REGESTXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
