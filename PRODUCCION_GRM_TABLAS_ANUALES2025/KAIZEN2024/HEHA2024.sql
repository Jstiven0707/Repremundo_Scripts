-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:09:44
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
-- Estructura de tabla para la tabla `HEHA2024`
--

CREATE TABLE `HEHA2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'ID CABECERA DEL TICKET',
  `IDHALLTP` int(10) NOT NULL COMMENT 'Id del Hallazgo',
  `DESCHALL` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Hallazgo',
  `DESCHANA` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones Analista Gaimp para Coordinador',
  `HELCESTA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Ticket',
  `TIPTICKX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Ticket',
  `HELCIDCL` int(5) NOT NULL COMMENT 'Id de la Clasificacion',
  `DOIBEDIX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Check Verificacion Auditor',
  `IDFORXXX` int(11) NOT NULL COMMENT 'Id Formulario',
  `IDPREXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id pregunta',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Auditoria Hallazgos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HEHA2024`
--
ALTER TABLE `HEHA2024`
  ADD PRIMARY KEY (`HELCCSCX`,`IDHALLTP`,`IDFORXXX`,`IDPREXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
