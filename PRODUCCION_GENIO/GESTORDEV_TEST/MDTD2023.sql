-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: dev1-geniomysql.repremundo.com.co
-- Tiempo de generación: 30-12-2024 a las 11:37:35
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GESTORDEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDTD2023`
--

CREATE TABLE `MDTD2023` (
  `MDTDIDXX` int NOT NULL COMMENT 'Id del Documento',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `SUCIDXXX` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCSUFXX` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sufijo de la sucursal',
  `BANAPLOP` enum('SI','NO') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica envío a OPEN',
  `BANAPLCI` enum('SI','NO') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica envío a CIMA',
  `BANENVOP` enum('EXITOSO','FALLIDO') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si se envió a OPEN',
  `BANENVCI` enum('EXITOSO','FALLIDO') COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si se envió a CIMA',
  `MDTDTIPX` enum('FACTURA IMPORTACION','FACTURA EXPORTACION','DOCUMENTO DE TRANSPORTE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Documento',
  `PIEIDXXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del Proveedor en Open',
  `TRAIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id de la Transportadora en Open',
  `MDTDCCXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera que indica si es carga consolidada',
  `MDTDNODO` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Path del doc a blanco y negro',
  `MDTDOBSX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Respuesta del servicio de open',
  `MDTDANSX` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ANS',
  `IDARCHXX` int NOT NULL COMMENT 'Id archivo Original',
  `CLIIDXXX` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID del cliente',
  `NUMFACTU` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO','INCOMPLETO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Agendamiento de Documentos a BPO' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDTD2023`
--
ALTER TABLE `MDTD2023`
  ADD PRIMARY KEY (`MDTDIDXX`,`CLIIDXXX`) USING BTREE,
  ADD KEY `IDX_IDARCHXX` (`IDARCHXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MDTD2023`
--
ALTER TABLE `MDTD2023`
  MODIFY `MDTDIDXX` int NOT NULL AUTO_INCREMENT COMMENT 'Id del Documento';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
