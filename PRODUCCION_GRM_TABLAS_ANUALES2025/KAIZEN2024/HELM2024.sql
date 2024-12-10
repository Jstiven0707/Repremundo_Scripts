-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:11:13
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
-- Estructura de tabla para la tabla `HELM2024`
--

CREATE TABLE `HELM2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'Identificador Ticket',
  `MODIDXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Modalidad',
  `REGUSRXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de modificacion del Registro',
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Relacion Modalidad - Cabecera Ticket';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELM2024`
--
ALTER TABLE `HELM2024`
  ADD PRIMARY KEY (`HELCCSCX`,`MODIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
