-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:10:41
-- Versión del servidor: 5.6.47
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
-- Estructura de tabla para la tabla `DSVD2024`
--

CREATE TABLE IF NOT EXISTS `DSVD2024` (
  `CLIIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del cliente',
  `IDPROXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `FACIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la factura',
  `SECITEXX` int(3) NOT NULL COMMENT 'Secuencia del Item',
  `SECITE2X` int(6) NOT NULL COMMENT 'Secuencia 2 del Item',
  `PROIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo del producto',
  `PROID2XX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de producto dos',
  `PRODESFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion segun factura',
  `SUBIDSUG` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subpartida sugerida',
  `PAIDORXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del pais',
  `ESTMERXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la mercancia',
  `CODESTID` int(9) NOT NULL COMMENT 'Id del estado de la mercancia',
  `ANIOFABX` int(5) NOT NULL COMMENT 'Año de fabricacion',
  `FPIIDXXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo forma de pago',
  `CANDAVXX` int(10) NOT NULL COMMENT 'Cantidad Dav',
  `UNIIDXXX` int(10) NOT NULL COMMENT 'Id de la unidad',
  `CANITEXX` int(10) NOT NULL COMMENT 'Cantidad',
  `VALUNIIT` decimal(10,5) NOT NULL COMMENT 'Valor unitario',
  `VALTOTIT` decimal(10,5) NOT NULL COMMENT 'Valor total',
  `PESBRUIT` decimal(10,5) NOT NULL COMMENT 'Peso bruto',
  `PESNETIT` decimal(10,5) NOT NULL COMMENT 'Peso neto',
  `ORDCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden de compra',
  `PEDITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido del item',
  `FOBGASIT` decimal(10,5) NOT NULL COMMENT 'Valor fob Gastos facturados',
  `FLEGASIT` decimal(10,5) NOT NULL COMMENT 'Valor flete gastos facturados',
  `CONGASIT` decimal(10,5) NOT NULL COMMENT 'valor conexos Gastos facturados',
  `SEGGASIT` decimal(10,5) NOT NULL COMMENT 'Valor seguro Gastos facturados',
  `VARGASIT` decimal(10,5) NOT NULL COMMENT 'Valor varios Gastos facturados',
  `NOMCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre comercial',
  `MARCOMIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Marca',
  `TIPITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo',
  `CLAITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Clase',
  `MODITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modelo',
  `REFITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Referencia',
  `OTRITEXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otras caracteristicas',
  `BATNUMXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Batch Number',
  `INFADIIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Informacion adicional del item',
  `DELNOTIT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Delivery Note',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('PENDIENTE','ENVIADO','PROCESADO','ERROR','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera de Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`,`SECITEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Detalle Saldo de Factura';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
