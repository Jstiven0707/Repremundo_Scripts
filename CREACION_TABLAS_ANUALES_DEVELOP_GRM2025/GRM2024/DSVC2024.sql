-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 08:41:40
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DSVC2024`
--

CREATE TABLE IF NOT EXISTS `DSVC2024` (
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero del DO',
  `DOCSUFXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'sufijo',
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `FACFECXX` date NOT NULL COMMENT 'Fecha de la factura',
  `TERMIDXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del termino',
  `LUGENTXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lugar de Entrega',
  `MONIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id de la moneda',
  `PAIIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del pais',
  `PESBRUXX` decimal(18,5) NOT NULL COMMENT 'Peso bruto',
  `VALFACXX` decimal(18,5) NOT NULL COMMENT 'Valor de la factura',
  `VALFOBXX` decimal(18,5) NOT NULL COMMENT 'Valor fob',
  `VALFLEXX` decimal(18,5) NOT NULL COMMENT 'Valor flete',
  `VALCONXX` decimal(18,5) NOT NULL COMMENT 'valor conexo',
  `VALSEGXX` decimal(18,5) NOT NULL COMMENT 'Valor seguro',
  `VALVARXX` decimal(18,5) NOT NULL COMMENT 'Valor varios',
  `VALCOMXX` decimal(18,5) NOT NULL COMMENT 'Valor comision',
  `VALMATXX` decimal(18,5) NOT NULL COMMENT 'Valor materia prima',
  `VALINSXX` decimal(18,5) NOT NULL COMMENT 'Valor insumos',
  `VALENVXX` decimal(18,5) NOT NULL COMMENT 'Valor envases',
  `VALHERXX` decimal(18,5) NOT NULL COMMENT 'Valor herramientas',
  `VALINGXX` decimal(18,5) NOT NULL COMMENT 'Valor ingenieria',
  `VALCANXX` decimal(18,5) NOT NULL COMMENT 'Valor canones',
  `VALREVVE` decimal(18,5) NOT NULL COMMENT 'Valor revierte vendedor',
  `VALGASPO` decimal(18,5) NOT NULL COMMENT 'Valor gastos posteriores',
  `VALARMXX` decimal(18,5) NOT NULL COMMENT 'Valor armado',
  `VALDERAD` decimal(18,5) NOT NULL COMMENT 'Valor derechos en aduana',
  `VALINTXX` decimal(18,5) NOT NULL COMMENT 'Valor intereses',
  `VALOTRXX` decimal(18,5) NOT NULL COMMENT 'Valor otros gastos',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT COMMENT='Cabecera de Saldo de Factura';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
