-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:29:03
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
-- Estructura de tabla para la tabla `DTTI2024`
--

DROP TABLE IF EXISTS `DTTI2024`;
CREATE TABLE `DTTI2024` (
  `DTRCDOTR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCNICO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTTINUMA` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE MANIFIESTO',
  `DTTIFEMA` date NOT NULL COMMENT 'FECHA DE MANIFIESTO',
  `DTTIHOMA` time NOT NULL COMMENT 'HORA DE MANIFIESTO',
  `DTTIFEES` date NOT NULL COMMENT 'FECHA ESTIMADA DE ARRIBO',
  `DTTIHRES` time NOT NULL COMMENT 'HORA ESTIMADA DE ARRIBO',
  `DTTIFERA` date NOT NULL COMMENT 'FECHA REAL DE ARRIBO',
  `DTTIHRRA` time NOT NULL COMMENT 'HORA REAL DE ARRIBO',
  `DTTIFEFD` date NOT NULL COMMENT 'FECHA DE FINALIZACION DEL DESCARGUE',
  `DTTIHRFD` time NOT NULL COMMENT 'HORA DE FINALIZACION DEL DESCARGUE',
  `DEPIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPOSITO (CIPO0117)',
  `DTTIFELO` date NOT NULL COMMENT 'FECHA DE LOCALIZACION',
  `DTTIHOLO` time NOT NULL COMMENT 'HORA DE LOCALIZACION',
  `DTTICADI` decimal(20,5) NOT NULL COMMENT 'CANTIDAD DISPONIBLE',
  `DTTIPEDI` decimal(20,5) NOT NULL COMMENT 'PESO DISPONIBLE',
  `DTTIFEVT` date NOT NULL COMMENT 'FECHA DE VENCIMIENTO TERMINO DE ALMACENAMIENTO',
  `DTTIPRBN` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indca si aplica prorroga',
  `DTTISOLI` enum('','NO','SI') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica si tiene solicitud',
  `DTTIPRES` enum('','MANUAL','SISTEMA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'indica la manera en que se presento la prorroga',
  `DTTINFEV` date NOT NULL COMMENT 'Nueva fecha de vencimiento de terminos de almacenamiento ',
  `DTTIOBSV` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Observacion presentacion de prorroga ',
  `IDARCHXX` int NOT NULL COMMENT 'ID del archivo',
  `DTTIAPAG` enum('','NO','SI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA AGENTE DE CARGA',
  `AGEIDXXX` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICADOR AGENTE DE CARGA (CIPO0145)',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Documento de Transporte vs trafico internacional' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DTTI2024`
--
ALTER TABLE `DTTI2024`
  ADD PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`,`DTTINUMA`,`IDARCHXX`) USING BTREE,
  ADD KEY `DTRCDOTR` (`DTRCDOTR`) USING BTREE,
  ADD KEY `DTRCNICO` (`DTRCNICO`) USING BTREE,
  ADD KEY `DEPIDXXX` (`DEPIDXXX`) USING BTREE,
  ADD KEY `IDARCHXX` (`IDARCHXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
