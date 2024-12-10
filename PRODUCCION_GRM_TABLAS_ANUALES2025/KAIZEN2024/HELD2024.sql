-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:10:34
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
-- Estructura de tabla para la tabla `HELD2024`
--

CREATE TABLE `HELD2024` (
  `HELCCSCX` bigint(20) NOT NULL COMMENT 'CONSECUTIVO DE CABECERA DEL TICKET',
  `HELDIDXX` int(15) NOT NULL COMMENT 'Consecutivo detalle ',
  `HELCDESC` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL TICKET',
  `HELCESTA` enum('PENDIENTE','SOLUCIONADO','EN ESPERA','EN PROCESO','DEVUELTO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del seguimiento del ticket',
  `TIPTICKX` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `HELCIDCL` int(5) NOT NULL,
  `HELSNRAP` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Opcion de causal de reapertura',
  `HELOTRAP` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion otra causal de reapertura',
  `HELDREAX` enum('','EL AGENTE NO SOLUCIONO EL TICKET','LA SOLUCION NO FUE CLARA','SE VOLVIO A PRESENTAR ERRORES','OTRA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'indica la causal de reapertura',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle Del Ticket';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `HELD2024`
--
ALTER TABLE `HELD2024`
  ADD PRIMARY KEY (`HELDIDXX`),
  ADD KEY `HELCCSCX` (`HELCCSCX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `HELD2024`
--
ALTER TABLE `HELD2024`
  MODIFY `HELDIDXX` int(15) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo detalle ';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
