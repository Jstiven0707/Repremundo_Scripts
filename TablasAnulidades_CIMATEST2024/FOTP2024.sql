-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:35:35
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
-- Estructura de tabla para la tabla `FOTP2024`
--

DROP TABLE IF EXISTS `FOTP2024`;
CREATE TABLE `FOTP2024` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO ',
  `FOTPIDXX` smallint NOT NULL COMMENT 'ID DEL PROYECTO',
  `FOTTDOCX` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Modos de transporte separados por ~',
  `SUCIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Sucursales separadas por ~',
  `CONCOBID` int NOT NULL COMMENT 'Id del concepto de cobro',
  `FORCALID` int NOT NULL COMMENT 'Id de la formula de calculo',
  `VARIDXXX` int NOT NULL COMMENT 'Id de la variable',
  `CAMPIDSX` json NOT NULL COMMENT 'Campos parametrizables',
  `RANGOSXX` json NOT NULL COMMENT 'Rangos',
  `FOTCONPX` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'APLICA CONCEPTO PERSONALIZADO',
  `FOTDECON` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL CONCEPTO PERSONALIZADO',
  `FOTOBSVX` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DE LA TARIFA',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OFERTA COMERCIAL VS TARIFAS POR PROYECTO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOTP2024`
--
ALTER TABLE `FOTP2024`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`,`FOTPIDXX`,`FOTTDOCX`,`SUCIDXXX`,`CONCOBID`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`) USING BTREE,
  ADD KEY `FOCOVERX` (`FOCOVERX`),
  ADD KEY `CONCOBID` (`CONCOBID`),
  ADD KEY `FORCALID` (`FORCALID`),
  ADD KEY `VARIDXXX` (`VARIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
