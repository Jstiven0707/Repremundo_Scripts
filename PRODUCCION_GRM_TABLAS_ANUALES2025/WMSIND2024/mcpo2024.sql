-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:53:28
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
-- Base de datos: `WMSIND`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mcpo2024`
--

CREATE TABLE `mcpo2024` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id comprobante',
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo comprobante',
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Comprobante (Para Siigo)',
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Dos (2)',
  `comfecxx` date NOT NULL COMMENT 'Fecha del Comprobante',
  `comperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo del Comprobante',
  `ccoidxxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de Costo',
  `ccoid2xx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sub Centro de Costo',
  `usdvalxx` decimal(16,2) NOT NULL COMMENT 'Valor Facturacion en Dolares',
  `usdflagx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturacion en dolares',
  `factrmxx` decimal(12,2) NOT NULL COMMENT 'TRM',
  `comtclxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Cliente',
  `cliidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Cliente',
  `comtprxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tercero',
  `proidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Tercero',
  `comtrcxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Receptor',
  `recidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit Receptor',
  `siaidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit de la SIA',
  `comtauxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Tercero Autorizado',
  `autidxxx` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tercero Autorizado',
  `comvlrxx` decimal(15,2) NOT NULL COMMENT 'Valor del Comprobante',
  `combretx` decimal(15,2) NOT NULL COMMENT 'Base Retencion',
  `comvlr01` decimal(15,2) NOT NULL COMMENT 'Valor Uno',
  `comvlr02` decimal(15,2) NOT NULL COMMENT 'Valor Dos',
  `comifxxx` decimal(15,2) NOT NULL COMMENT 'Valor Impuesto Financiero (4 x Mil) (Factura)',
  `comipxxx` decimal(15,2) NOT NULL COMMENT 'Valor Ingresos Propios (Factura)',
  `comivaxx` decimal(15,2) NOT NULL COMMENT 'Valor del Iva',
  `comobsxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Uno',
  `comobs2x` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion Dos',
  `comfecvc` date NOT NULL COMMENT 'Fecha Vencimiento Comprobante',
  `commemod` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo cantidad documentos-piezas-peso-valor cif',
  `commemof` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Campo Memo se guarda Matriz de Formularios Asignados Factura',
  `retefuen` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retencion Sobre Renta',
  `reteivax` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retencion Sobre el Iva',
  `comprnxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comprobante Impreso (SI-NO)',
  `comfradx` date NOT NULL COMMENT 'Fecha Radicado Comprobante',
  `comhradx` time NOT NULL COMMENT 'Hora Radicado Comprobante',
  `comufrad` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comdfrad` date NOT NULL,
  `comdhrad` time NOT NULL,
  `taridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tarea que lo creo',
  `comrfuex` decimal(17,2) NOT NULL COMMENT 'Valor Retefuente',
  `comricax` decimal(17,2) NOT NULL COMMENT 'Valor ICA',
  `comrivax` decimal(17,2) NOT NULL COMMENT 'Valor IVA',
  `comtkpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Ticket PSE',
  `comrcpse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Recibo de Caja',
  `comespse` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado PSE',
  `comvppse` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Valor Transaccion PSE',
  `comcodc2` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento Transporte',
  `tipfacxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Facturacion',
  `justxxxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Justificacion de porque se anula la factura',
  `docfeidx` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docgenio` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento en Genio',
  `openestx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado en Open',
  `idcufexx` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cufe',
  `comjsonx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Json Factura Electronica',
  `regfecxx` date NOT NULL,
  `reghorxx` time NOT NULL,
  `regmodxx` date NOT NULL,
  `reghmodx` time NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regestxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cabecera contabilidad prefacturas';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mcpo2024`
--
ALTER TABLE `mcpo2024`
  ADD PRIMARY KEY (`comidxxx`,`comcodxx`,`comcscxx`,`comcsc2x`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
