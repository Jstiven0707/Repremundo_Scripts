-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:22:48
-- Versión del servidor: 5.7.31-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDTD2024`
--

CREATE TABLE `MDTD2024` (
  `MDTDIDXX` int(9) NOT NULL COMMENT 'Id del Documento',
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `MDTDTIPX` enum('FACTURA IMPORTACION','FACTURA EXPORTACION','DOCUMENTO DE TRANSPORTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Documento',
  `PIEIDXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Proveedor en Open',
  `TRAIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Transportadora en Open',
  `MDTDCCXX` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera que indica si es carga consolidada',
  `MDTDNODO` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Path del doc a blanco y negro',
  `MDTDOBSX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Respuesta del servicio de open',
  `MDTDANSX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ANS',
  `IDARCHXX` int(4) NOT NULL COMMENT 'Id archivo Original',
  `NUMFACTU` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Agendamiento de Documentos a BPO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTD2024`
--
ALTER TABLE `MDTD2024`
  ADD PRIMARY KEY (`MDTDIDXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MDTD2024`
--
ALTER TABLE `MDTD2024`
  MODIFY `MDTDIDXX` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Id del Documento';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
