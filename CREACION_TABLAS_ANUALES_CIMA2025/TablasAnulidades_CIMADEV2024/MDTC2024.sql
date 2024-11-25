-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 21-11-2024 a las 12:42:46
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
-- Base de datos: `CIMADEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDTC2024`
--

DROP TABLE IF EXISTS `MDTC2024`;
CREATE TABLE `MDTC2024` (
  `DOCNROXX` int NOT NULL COMMENT 'Numero del DO',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente (CIPO0024)',
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOVERX` decimal(2,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `CONCOBID` int NOT NULL COMMENT 'ID DEL CONCEPTO DE COBRO (CIPF0030)',
  `FORCALID` int NOT NULL COMMENT 'ID DE LA FORMA DE CALCULO (CIPF0037)',
  `FOTPIDXX` int NOT NULL COMMENT 'Id del proyecto',
  `MDTCVLRX` decimal(18,5) NOT NULL COMMENT 'Valor de la Tarifa',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','EN PROCESO','ERROR','FINALIZADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del ROBOT',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS TARIFAS COMERCIALES';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTC2024`
--
ALTER TABLE `MDTC2024`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`FOCOIDXX`,`FOCOVERX`,`CONCOBID`,`FORCALID`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `FOCOIDXX` (`FOCOIDXX`),
  ADD KEY `FOCOVERX` (`FOCOVERX`),
  ADD KEY `CONCOBID` (`CONCOBID`),
  ADD KEY `FORCALID` (`FORCALID`),
  ADD KEY `FOTPIDXX` (`FOTPIDXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
