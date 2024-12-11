-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:43:37
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
-- Estructura de tabla para la tabla `MDOB2024`
--

CREATE TABLE `MDOB2024` (
  `DOCNROXX` int NOT NULL COMMENT 'numero del DO(MDOSYYYY)',
  `OBJIDXXX` smallint NOT NULL COMMENT 'ID DEL OBJETIVO',
  `OBJESPID` smallint NOT NULL COMMENT 'ID DEL OBJETIVO ESPECIFICO',
  `RESCLAXX` smallint NOT NULL COMMENT 'ID DEL RESULTADO CLAVE',
  `RESOBJXX` enum('','COMPLETADO','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'RESULTADO DEL OBJETIVO',
  `MDOBFECC` date NOT NULL COMMENT 'fecha de completado',
  `MDOBHORC` time NOT NULL COMMENT 'hora de completado',
  `MDOBFECE` date NOT NULL COMMENT 'resultado esperado',
  `MDOBHORE` time NOT NULL COMMENT 'resultado completado',
  `USRRESXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL USUARIO RESPONSABLE',
  `BANAPLCI` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA CIERRE POR INTERFAZ',
  `ESTGESID` smallint NOT NULL COMMENT 'ID DEL ESTADO DE GESTION',
  `BANCUMOB` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI SE CUMPLIO CON EL RESULTADO ESPERADO ',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS OBJETIVOS Y RESULTADOS CLAVE';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDOB2024`
--
ALTER TABLE `MDOB2024`
  ADD PRIMARY KEY (`DOCNROXX`,`OBJIDXXX`,`OBJESPID`,`RESCLAXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `OBJIDXXX` (`OBJIDXXX`),
  ADD KEY `OBJESPID` (`OBJESPID`),
  ADD KEY `RESCLAXX` (`RESCLAXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
