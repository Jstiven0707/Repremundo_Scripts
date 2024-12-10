-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:09:15
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
-- Estructura de tabla para la tabla `HEDM2024`
--

CREATE TABLE `HEDM2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'CONSECUTIVO DE CABECERA DEL TICKET',
  `SUBIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Declaracion',
  `ARCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartida',
  `MODIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad',
  `HEFCNROF` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Formulario',
  `HEDMFCAR` datetime NOT NULL COMMENT 'Fecha y Hora del cargue de la sidunea',
  `HEDNACEP` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Aceptacion',
  `HEDMFTAC` datetime NOT NULL COMMENT 'Fecha y Hora del turno de aceptacion',
  `HEDFHACE` datetime NOT NULL COMMENT 'Fecha y Hora Aceptacion',
  `HEDMEACE` enum('','RECHAZADO','ACEPTADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Resultado de la Aceptacion',
  `HEDNLEVA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero Levante',
  `HEDMFTLE` datetime NOT NULL COMMENT 'Fecha y Hora del turno de Levante',
  `HEDFHLEV` datetime NOT NULL COMMENT 'Fecha y Hora Levante',
  `HEDMELEV` enum('','CON INSPECCION FISICA','RECHAZADO','LEVANTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Resultado del Levante',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ticket VS Declaraciones Manuales';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HEDM2024`
--
ALTER TABLE `HEDM2024`
  ADD PRIMARY KEY (`SUBIDXXX`,`HELCCSCX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
