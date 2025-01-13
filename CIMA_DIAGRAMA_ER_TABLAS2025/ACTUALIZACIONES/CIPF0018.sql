-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 03-01-2025 a las 14:27:20
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
-- Base de datos: `CIMA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIPF0018`
--

CREATE TABLE `CIPF0018` (
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `TERTIPXX` enum('','CLIENTE','ALIADO','AUTORIZADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE TERCERO',
  `CLIPLAIP` int NOT NULL COMMENT 'plazo IP',
  `CLIPLATE` int NOT NULL COMMENT 'plazo TERCEROS',
  `CLICUPTO` decimal(12,0) NOT NULL COMMENT 'CUPO TOTAL DEL CLIENTE',
  `CLICUPOP` decimal(12,0) NOT NULL COMMENT 'CUPO POR OPERACION',
  `EMAIFACE` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'correo notificacion facturacion electronica',
  `CLITIPOF` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'BANDERA QUE INDICA SI APLICA 4XMIL',
  `CLITICUP` enum('','LIMITADO','ILIMITADO','SIN CUPO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE CUPO',
  `CONANTXX` enum('','SIN ANTICIPO','CON ANTICIPO POR OPERACION','CON ANTICIPO GLOBAL') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT ' CONDICION DEL ANTICIPO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cliente vs condiciones comerciales y financieras' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIPF0018`
--
ALTER TABLE `CIPF0018`
  ADD PRIMARY KEY (`CLIIDXXX`,`TERTIPXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
