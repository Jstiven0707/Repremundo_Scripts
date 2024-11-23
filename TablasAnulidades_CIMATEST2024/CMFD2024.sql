-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:23:13
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
-- Estructura de tabla para la tabla `CMFD2024`
--

DROP TABLE IF EXISTS `CMFD2024`;
CREATE TABLE `CMFD2024` (
  `IDCOMXXX` enum('','R','P','F','G','C','L') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL COMPROBANTE',
  `COMPREXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PREFIJO DEL COMPROBANTE',
  `CNSCOMXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante',
  `CNSCOM2X` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CONSECUTIVO DEL COMPROBANTE 2',
  `CNSCOMDS` int NOT NULL COMMENT 'ID DE LA SENCUENCIA DEL DETALLE',
  `PUCIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la cuenta PUC',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `TERIDXXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Id del Tercero',
  `TERID2XX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del Tercero 2',
  `CONVLRDE` decimal(12,2) NOT NULL COMMENT 'Valor Debito',
  `CONVLRCR` decimal(12,2) NOT NULL COMMENT 'Valor Credito',
  `COMPRECR` enum('','R','P','F','G','C','L') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DOCUMENTO CRUCE',
  `COMPREDC` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PREFIJO DEL COMPROBANTE CRUCE',
  `COMSECRX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante cruce',
  `COMSECR2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'consecutivo del comprobante cruce 2',
  `CMFDVRRE` decimal(12,2) NOT NULL COMMENT 'Valor base Retencion',
  `CMFDVRIV` decimal(12,2) NOT NULL COMMENT 'Iva Mayor valor',
  `CONIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del concepto Contable',
  `CCOIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CENTRO DE COSTO',
  `SUBCCIDX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'subcentro de costo',
  `CNSDESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACION DEL COMPROBANTE',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='movimiento financiero detalle' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CMFD2024`
--
ALTER TABLE `CMFD2024`
  ADD PRIMARY KEY (`IDCOMXXX`,`COMPREXX`,`CNSCOMXX`,`CNSCOMDS`,`CNSCOM2X`) USING BTREE,
  ADD KEY `IDCOMXXX` (`IDCOMXXX`) USING BTREE,
  ADD KEY `COMPREXX` (`COMPREXX`) USING BTREE,
  ADD KEY `CNSCOMXX` (`CNSCOMXX`) USING BTREE,
  ADD KEY `CNSCOM2X` (`CNSCOM2X`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE,
  ADD KEY `TERIDXXX` (`TERIDXXX`) USING BTREE,
  ADD KEY `TERID2XX` (`TERID2XX`) USING BTREE,
  ADD KEY `PUCIDXXX` (`PUCIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
