-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:37:47
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
-- Estructura de tabla para la tabla `TASC2024`
--

CREATE TABLE `TASC2024` (
  `DOCTRIMP` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `DEALERXX` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dealer Code',
  `FEPLAXXX` date NOT NULL COMMENT 'Fecha de la Planilla',
  `SUCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad',
  `LUGARXXX` enum('','DEPOSITO','ZONA FRANCA','SOCIEDAD PORTUARIA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar',
  `IMPONOMX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consignatario/Importador',
  `FIRMAXXX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Firma',
  `NOMBREXX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre',
  `OBSERXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `SERIDXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Seriales Asociados a la Prealerta',
  `NUMTICKX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Ticket Asociado',
  `ESTRAXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Tramite',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Ticket Auditoria Seriales Gecolsa' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TASC2024`
--
ALTER TABLE `TASC2024`
  ADD PRIMARY KEY (`DOCTRIMP`,`DEALERXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
