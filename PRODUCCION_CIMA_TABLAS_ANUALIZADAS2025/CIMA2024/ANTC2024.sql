-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:27:09
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
-- Estructura de tabla para la tabla `ANTC2024`
--

CREATE TABLE `ANTC2024` (
  `ANTCIDXX` bigint NOT NULL COMMENT 'ID DE LA SOLICITUD DEL ANTICIPO',
  `DOIPEDXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NUMERO DE PEDIDO',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `TRMTASXX` decimal(8,2) NOT NULL COMMENT 'Tasa de cambio',
  `ANTCOSBL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Consecutivo SBL',
  `ANTTBDIX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si debe traer tributos por declaracion aduanas USD',
  `ANTVLDIX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si los valores son por declaracion aduanas USD',
  `ANTTCIFX` decimal(20,5) NOT NULL COMMENT 'Total cif',
  `ANTTRIBU` decimal(20,5) NOT NULL COMMENT 'Total tributos',
  `ANTTDIMX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si debe traer tributos por declaracion',
  `ANTVDIMX` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Indica si los valores son por declaracion',
  `ANTEVLRX` decimal(20,5) NOT NULL COMMENT 'Total pagos a terceros',
  `ANTPVLRX` decimal(20,5) NOT NULL COMMENT 'Total ingresos propios',
  `ANTOBSXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Observaciones',
  `ANTTOTAL` decimal(20,5) NOT NULL COMMENT 'Total del anticipo',
  `ESTADOTA` enum('','ENVIADO','ERROR ENVIO CORREO','ERROR GENERACION PDF','ERROR CARGUE PDF','PENDIENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Envio del Pdf',
  `IDARCHXX` int NOT NULL COMMENT 'Id del archivo en amazon',
  `ANTEMAIL` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CORREOS ADICIONALES PARA EL ENVIO DE ANTICIPO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','ERROR') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cabecera Solicitud de anticipo cliente';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANTC2024`
--
ALTER TABLE `ANTC2024`
  ADD PRIMARY KEY (`ANTCIDXX`,`DOIPEDXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
