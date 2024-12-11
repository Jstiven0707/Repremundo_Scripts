-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:36:45
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
-- Estructura de tabla para la tabla `DVCA2024`
--

CREATE TABLE `DVCA2024` (
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL CLIENTE',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR(CIPO0050)',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE LA FACTURA',
  `FACFECXX` date NOT NULL COMMENT 'FECHA DE LA FACTURA',
  `TERMIDXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL TERMINO',
  `LUGENTXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'LUGAR DE ENTREGA',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA MONEDA',
  `PAIIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `PESBRUXX` decimal(18,5) NOT NULL COMMENT 'PESO BRUTO',
  `VALFACXX` decimal(18,5) NOT NULL COMMENT 'VALOR DE LA FACTURA',
  `VALFOBXX` decimal(18,5) NOT NULL COMMENT 'VALOR FOB',
  `VALFLEXX` decimal(18,5) NOT NULL COMMENT 'VALOR FLETE',
  `VALCONXX` decimal(18,5) NOT NULL COMMENT 'VALOR CONEXO',
  `VALSEGXX` decimal(18,5) NOT NULL COMMENT 'VALOR SEGURO',
  `VALVARXX` decimal(18,5) NOT NULL COMMENT 'VALOR VARIOS',
  `VALCOMXX` decimal(18,5) NOT NULL COMMENT 'VALOR COMISION',
  `VALMATXX` decimal(18,5) NOT NULL COMMENT 'VALOR MATERIA PRIMA',
  `VALINSXX` decimal(18,5) NOT NULL COMMENT 'VALOR INSUMOS',
  `VALENVXX` decimal(18,5) NOT NULL COMMENT 'VALOR ENVASES',
  `VALHERXX` decimal(18,5) NOT NULL COMMENT 'VALOR HERRAMIENTAS',
  `VALINGXX` decimal(18,5) NOT NULL COMMENT 'VALOR INGENIERIA',
  `VALCANXX` decimal(18,5) NOT NULL COMMENT 'VALOR CANONES',
  `VALREVVE` decimal(18,5) NOT NULL COMMENT 'VALOR REVIERTE VENDEDORES',
  `VALGASPO` decimal(18,5) NOT NULL COMMENT 'VALOR GASTOS POSTERIORES',
  `VALARMXX` decimal(18,5) NOT NULL COMMENT 'VALOR ARMADO',
  `VALDERAD` decimal(18,5) NOT NULL COMMENT 'VALOR DERECHOS EN ADUANA',
  `VALINTXX` decimal(18,5) NOT NULL COMMENT 'VALOR INTERESES',
  `VALOTRXX` decimal(18,5) NOT NULL COMMENT 'VALOR OTROS GASTOS',
  `SAFAESTX` enum('PENDIENTE','SIN SALDO','CON SALDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESTADO QUE INDICA EL ESTADO DE LA FACTURA',
  `IDARCHXX` int NOT NULL COMMENT 'ID DEL ARCHIVO',
  `DSVCBNAV` enum('MANUAL','INTEGRACION','DATA ENTRY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA EL ORIGEN DE LA INFORMACION',
  `DEPIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD',
  `PRODIRXX` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DIRECCION DEL PROVEEDOR',
  `DSVCTRAD` enum('COPIA','ORIGINAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA LA TRADICION DOCUMENTAL PARA BORRAR',
  `PAIIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS',
  `DEPIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDPRO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD',
  `PRODIRPR` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `CIACIDXX` bigint NOT NULL COMMENT 'ID DE LA SECUENCIA AUTORIZACION',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABERA DE SALDOS DE FACTURA SIN AUTORIZAR';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `DVCA2024`
--
ALTER TABLE `DVCA2024`
  ADD PRIMARY KEY (`CIACIDXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;