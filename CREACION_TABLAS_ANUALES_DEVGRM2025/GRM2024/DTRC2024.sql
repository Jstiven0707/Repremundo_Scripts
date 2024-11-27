-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:13:55
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
-- Estructura de tabla para la tabla `DTRC2024`
--

CREATE TABLE IF NOT EXISTS `DTRC2024` (
  `DTRCTPOP` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Operacion (DTA o OTM)',
  `DTRCPAXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prefijo Aerolinea ',
  `DTRCGUMA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Guía Master',
  `DTRCDOTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento de Transporte (UK)',
  `DTRCFCDT` date NOT NULL COMMENT 'Fecha Corte Documento Transporte',
  `DTRCFEDT` date NOT NULL COMMENT 'Fecha Emision Documento Transporte',
  `DTRCTITR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Tramite',
  `DTRCMETR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Medio de Transporte',
  `DTRCAGCA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Agente de Carga',
  `DTRCNONV` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la Naviera (UK) / Aerolinea',
  `DTRCEMTR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa Transportadora',
  `DTRCTRLO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transportador Local',
  `DTRCDEID` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito ',
  `DTRCNUMT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Motonave',
  `DTRCNUVI` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Viaje',
  `DTRCEMBR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Embarcador',
  `DTRCNICO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT Consignatario',
  `DTRCNOCO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Consignatario',
  `DTRCENDO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Endosado a',
  `DTRCNOTI` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Notificar a',
  `DTRCLUIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Ingreso',
  `DRTCPAPR` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de Procedencia',
  `DRTCPUEM` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto de Embarque',
  `DRTCPRDE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto de Descargue o lugar de Ingreso',
  `DRTCPTIC` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de cargue del Contenedor (FCL / LCL)',
  `DRTCTICA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga (A granel, consolidada, carga suelta, para desconsolidar)',
  `DRTCBUTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bultos Total',
  `UNBULTOT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Bultos Total',
  `DRTCPEBR` decimal(18,5) NOT NULL COMMENT 'Peso Bruto Total ',
  `UNPEBRTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Peso Bruto Total',
  `DRTCPAFL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago Flete( prepaid, collect)',
  `DRTCPAOT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago Otros ( prepaid, collect)',
  `DRTCFLET` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Flete',
  `DRTCMOFL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Moneda del Flete',
  `DRTCOTGA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros Gastos',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DTRCDOTR`,`DTRCNICO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Datos Documento de Transporte';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
