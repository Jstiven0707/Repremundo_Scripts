-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:50:51
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
-- Estructura de tabla para la tabla `BSCD2024`
--

CREATE TABLE `BSCD2024` (
  `BSCEIDXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID ENFOQUE',
  `USRIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID USUARIO',
  `USRPERIN` date NOT NULL COMMENT 'FECHA INICIAL PERIODO',
  `USRPERFN` date NOT NULL COMMENT 'FECHA FINAL PERIODO',
  `USRTOTEN` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'RESULTADO TOTAL DEL ENFOQUE CALCULADO',
  `USRPORXX` decimal(5,2) NOT NULL COMMENT 'PORCENTAJE CALCULADO DEL ENFOQUE',
  `USRRESXX` int(3) NOT NULL COMMENT 'RESULTADO DEL ENFOQUE',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle del score card por usuario' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BSCD2024`
--
ALTER TABLE `BSCD2024`
  ADD PRIMARY KEY (`BSCEIDXX`,`USRIDXXX`,`USRPERIN`,`USRPERFN`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
