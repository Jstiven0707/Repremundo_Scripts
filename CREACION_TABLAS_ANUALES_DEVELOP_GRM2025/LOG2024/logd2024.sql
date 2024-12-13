-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 12-12-2024 a las 11:57:29
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logd2024`
--

CREATE TABLE IF NOT EXISTS `logd2024` (
  `bodidxxx` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Bodega',
  `docidxxx` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Documento',
  `doccodxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Codigo Documento',
  `doccscxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo Ingreso',
  `docsecxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Secuencia Ingreso',
  `docfecxx` date NOT NULL COMMENT 'Fecha del Ingreso',
  `dochorxx` time NOT NULL COMMENT 'Hora de Ingreso',
  `docperxx` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Periodo',
  `cliidxxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Cliente',
  `prorefxx` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Referencia Producto',
  `umeidxxx` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unidad de Medida',
  `embidxxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Embalaje o Empaque',
  `docuxexx` decimal(12,2) NOT NULL COMMENT 'Cantidad de Unidades por empaque',
  `docusant` decimal(12,2) NOT NULL COMMENT 'Saldo Anterior de Total Empaques',
  `doccsant` decimal(12,2) NOT NULL COMMENT 'Saldo Anterior de Total de Unidades',
  `doccexxx` decimal(12,2) NOT NULL COMMENT 'Cantidad de Empaques',
  `doccanxx` decimal(12,2) NOT NULL COMMENT 'Cantidad Total de Unidades',
  `docusnue` decimal(12,2) NOT NULL COMMENT 'Nuevo Saldo de Total Empaques',
  `doccsnue` decimal(12,2) NOT NULL COMMENT 'Nuevo Saldo de Total de Unidades',
  `docalotx` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica lote',
  `prolotep` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Indica si el Lote aplica para los Empaque o los Productos',
  `docaserx` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica serial',
  `proserep` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Indica si el Serial aplica para los Empaque o los Productos',
  `doctserx` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Ingreso de los seriales Manual-Serie-Archivo-Lecto',
  `providxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Proveedor',
  `proverxx` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Version',
  `proyidxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Proyecto cliente',
  `provalme` decimal(12,2) NOT NULL COMMENT 'Valor de la Mercancia',
  `prodetme` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Detalle o descripcion de la mercancia',
  `doctirot` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Rotacion de Inventario en la salida AUTOMATICO - MANUAL',
  `docpromo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Registros Insertado, Modificados o Eliminados en logp',
  `docseria` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Seriales',
  `doclotex` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Lotes',
  `regusrxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfcrex` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghcrex` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regfmodx` date NOT NULL COMMENT 'Fecha  de Modificacion del Registro',
  `reghmodx` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `regestxx` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Regristro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`bodidxxx`,`docidxxx`,`doccodxx`,`doccscxx`,`docsecxx`,`cliidxxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle Ingresos';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
