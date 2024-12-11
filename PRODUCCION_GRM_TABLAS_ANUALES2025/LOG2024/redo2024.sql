-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:20:11
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
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redo2024`
--

CREATE TABLE `redo2024` (
  `idrecepx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Recepcion',
  `tipidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tipo de Documento',
  `docidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento',
  `extensio` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Extension Archivo',
  `rutaxxxx` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta del Archivo',
  `metaprin` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registro fotografico conductores';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `redo2024`
--
ALTER TABLE `redo2024`
  ADD PRIMARY KEY (`idrecepx`,`tipidxxx`,`docidxxx`,`metaprin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
