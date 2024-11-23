-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 21-11-2024 a las 08:42:11
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
-- Estructura de tabla para la tabla `OPPD2024`
--

DROP TABLE IF EXISTS `OPPD2024`;
CREATE TABLE `OPPD2024` (
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `SECPROIN` int NOT NULL COMMENT 'SECUENCIA DEL PRODUCTO EN LA PAGINA DE INVIMA',
  `OPPDNREX` int NOT NULL COMMENT 'numero de expediente',
  `OPPDNRPR` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NOMBRE DEL PRODUCTO EN LA PAGINA DE INVIMA',
  `OPPDNRRE` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'numero de registro sanitario',
  `OPPDETRE` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado',
  `OPPDFEVE` date NOT NULL COMMENT 'FECHAB DE VENCIMIENTO',
  `OPPDMODA` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MODALIDAD',
  `OPPDTITU` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TITULARES',
  `OPPDDAIN` json NOT NULL COMMENT 'JSON con los datos de interes ',
  `OPPDPECO` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TABLA DEL HTML DE LA PRESENTACION COMERCIAL',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AGENDAMIENTO DE ROBOT POR PRODUCTO VS DETALLE DE PRODUCTOS' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `OPPD2024`
--
ALTER TABLE `OPPD2024`
  ADD PRIMARY KEY (`CLIIDXXX`,`SECPROIN`,`IDPROXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `IDPROXXX` (`IDPROXXX`) USING BTREE,
  ADD KEY `OPPDNREX` (`OPPDNREX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
