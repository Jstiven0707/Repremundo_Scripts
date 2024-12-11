-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:37:42
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
-- Estructura de tabla para la tabla `FOCO2024`
--

CREATE TABLE `FOCO2024` (
  `FOCOIDXX` int NOT NULL COMMENT 'ID DE LA OFERTA',
  `FOCOTIPO` enum('','COTIZACION','LICITACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica el tipo de oferta',
  `FOCOFECO` date NOT NULL COMMENT ' FECHA DE LA OFERTA',
  `FOCOFEVI` date NOT NULL COMMENT 'VIGENCIA DE OFERTA',
  `FOCOVICO` date NOT NULL COMMENT 'VIGENCIA DE CONTRATO',
  `FOCOALLO` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI ES ALIADO LOGISTICO',
  `FOCOAUFA` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'INDICA SI ESTA AUTORIZADO DE FACTURACION',
  `CLIIDPRO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del cliente prospecto',
  `FOCOALTE` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'APLICA TARIFA ESTANDAR',
  `FOCOINTA` enum('','IPC','NINGUNA','OTRO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE INCREMENTO',
  `TIPTARIN` enum('','GENERAL','GESTION','MODELO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bandera que indica el tipo de alcance que maneja',
  `FOCOVERX` decimal(4,1) NOT NULL COMMENT 'VERSION DEL ARCHIVO',
  `CANOPEES` int NOT NULL COMMENT 'CANTIDAD DE OPERACIONES ESTIMADAS AL MES',
  `CANOPRSI` int NOT NULL COMMENT 'CANTIDAD DE OPERACIONES URGENTES SIMULTANEAS',
  `TIPANIOX` enum('','CONTRACTUAL','CALENDARIO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tipo de año',
  `ANIOXXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Año',
  `FECSEGXX` date NOT NULL COMMENT 'Fecha seguimiento',
  `EMAILSEG` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correos para el seguimiento',
  `MOTIDXXX` int NOT NULL COMMENT 'ID del motivo del rechazo ',
  `IDARCHXX` int NOT NULL COMMENT 'Id del archivo en genio',
  `ESTADOTA` enum('','ERROR CARGUE PDF','ERROR ENVIO CORREO','ENVIADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOCORDER` int NOT NULL COMMENT 'Id para el ordenamiento',
  `EMAILACE` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correo de quien acepto la oferta',
  `MONIDXXX` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Id de la moneda',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO','AUTORIZADA','PENDIENTE AUTORIZACION','BORRADOR','VENCIDA','RECHAZADA','ACEPTADA','RENOVADA','PTE REVISION ACTUALIZACION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA OFERTA COMERCIAL' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FOCO2024`
--
ALTER TABLE `FOCO2024`
  ADD PRIMARY KEY (`FOCOIDXX`,`FOCOVERX`),
  ADD KEY `CLIIDPRO` (`CLIIDPRO`) USING BTREE,
  ADD KEY `MOTIDXXX` (`MOTIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
