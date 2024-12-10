-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:18:14
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
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aisd2024`
--

CREATE TABLE `aisd2024` (
  `idarchad` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de archivo',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `consecxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso y salida del documento',
  `secuenxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia de Archivos adjuntos',
  `tipoxxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de registro',
  `rutaxxxx` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ruta del registro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Adjuntos ingreso y salida de deposito';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aisd2024`
--
ALTER TABLE `aisd2024`
  ADD PRIMARY KEY (`idarchad`,`secuenxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
