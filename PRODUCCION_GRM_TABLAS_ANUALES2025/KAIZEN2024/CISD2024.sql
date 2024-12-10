-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:05:09
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
-- Estructura de tabla para la tabla `CISD2024`
--

CREATE TABLE `CISD2024` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS',
  `CISOIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los origenes',
  `CISLIDXX` int(9) NOT NULL COMMENT 'Consecutivo del CIS para los LOTES',
  `CISDIDXX` int(11) NOT NULL COMMENT 'Consecutivo del CIS para los DESTINOS',
  `CISDUSEX` enum('','1','2','3') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Uso especifico que se le dara al producto importado',
  `IDDEPXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `IDCIUXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `CISLUSOX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'uso especifico que se le dara al producto',
  `CISLDIRX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'DIRECCION DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLTELX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'TELEFONO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLPECX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'PERSONA DE CONTACTO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` date NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='origenes del producto CIS vs lotes vs MATERIA PRIMA PARA LA INDUSTRIA GASTRONOMI';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CISD2024`
--
ALTER TABLE `CISD2024`
  ADD PRIMARY KEY (`CISCIDXX`,`CISOIDXX`,`CISLIDXX`,`CISDIDXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
