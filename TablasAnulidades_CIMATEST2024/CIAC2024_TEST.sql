-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 20-11-2024 a las 15:21:22
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIAC2024`
--

CREATE TABLE `CIAC2024` (
  `CIACIDXX` bigint NOT NULL COMMENT 'Id de la Autorizacion',
  `AUTIDXXX` smallint NOT NULL COMMENT 'Id de la Autorizacion',
  `CIACRESX` enum('','AUTORIZADA','RECHAZADA','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE' COMMENT 'bandera que indica el resultado de la autorizacion',
  `CIACOBSX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Descripcion de la Autorizacion',
  `DOCNROXX` int NOT NULL COMMENT 'Numero de Do',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT cliente (CIPO0024 - CIPF0040)',
  `AUTVLRXX` decimal(10,2) NOT NULL COMMENT 'Valor de la Autorizacion',
  `FOCOVERX` decimal(2,1) NOT NULL COMMENT 'Version Oferta Comercial',
  `DTRCDOTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE DOCUMENTO DE TRANSPORTE (UK)(DTRCYYYY)',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO (DTRCYYYY)',
  `JSONMETX` json NOT NULL COMMENT 'CAMPOS QUE SE DILIGENCIARON PARA LA SOLUCION DE LA AUTORIZACION',
  `USRASIGX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del usuario (CIMS0001)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVO' COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cabecera de Autorizaciones' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIAC2024`
--
ALTER TABLE `CIAC2024`
  ADD PRIMARY KEY (`CIACIDXX`),
  ADD KEY `AUTIDXXX` (`AUTIDXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `DTRCDOTR` (`DTRCDOTR`),
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;