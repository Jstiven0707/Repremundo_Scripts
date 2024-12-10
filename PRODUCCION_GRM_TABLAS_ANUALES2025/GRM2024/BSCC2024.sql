-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:50:31
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
-- Estructura de tabla para la tabla `BSCC2024`
--

CREATE TABLE `BSCC2024` (
  `USRIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID USUARIO',
  `USRPERIN` date NOT NULL COMMENT 'FECHA INICIAL PERIODO',
  `USRPERFN` date NOT NULL COMMENT 'FECHA FINAL PERIODO',
  `USRMONXX` int(8) NOT NULL COMMENT 'VALOR DEL MONTO AL GASTO',
  `USRMONCA` int(8) NOT NULL COMMENT 'VALOR DE CAPACITACION',
  `USRUSOXX` int(8) NOT NULL COMMENT 'VALOR USO DEL SISTEMA',
  `USRCANDE` int(8) NOT NULL COMMENT 'CANTIDAD DE DECLARACIONES',
  `USRPORXX` decimal(5,2) NOT NULL COMMENT 'Porcetaje total por usuario',
  `USRRESXX` int(11) NOT NULL COMMENT 'Peso Total',
  `TOTFACTX` decimal(15,2) NOT NULL COMMENT 'TOTAL DINERO FACTURADO',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera del score card por usuario' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BSCC2024`
--
ALTER TABLE `BSCC2024`
  ADD PRIMARY KEY (`USRIDXXX`,`USRPERIN`,`USRPERFN`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
