-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:44:38
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
-- Estructura de tabla para la tabla `MDSO2024`
--

DROP TABLE IF EXISTS `MDSO2024`;
CREATE TABLE `MDSO2024` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO(MDOSYYYY)',
  `OBJIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO',
  `OBJESPID` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ESPECIFICO',
  `COLORXXX` enum('','ROJO','NARANJA','VERDE') NOT NULL COMMENT 'SEMAFORIZACION DEL OBJETIVO',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='OPERACIONES VS OBJETIVOS SEMAFORO';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDSO2024`
--
ALTER TABLE `MDSO2024`
  ADD PRIMARY KEY (`DOCNROXX`,`OBJIDXXX`,`OBJESPID`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `OBJIDXXX` (`OBJIDXXX`),
  ADD KEY `OBJESPID` (`OBJESPID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
