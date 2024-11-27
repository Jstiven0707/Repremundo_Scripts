-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:22:35
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
-- Estructura de tabla para la tabla `ITOC2024`
--

CREATE TABLE IF NOT EXISTS `ITOC2024` (
  `EMPNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit empresa',
  `NUMOCXXX` int(20) NOT NULL COMMENT 'Consecutivo orden de compra (NUMREQXX en ITRE)',
  `NUMREQAS` int(20) NOT NULL COMMENT 'Numero de requisicion asociado',
  `PROVEASX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor de la requisicion asociada',
  `CONDPAGX` enum('CONTADO','ANTICIPO','CREDITO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Condiciones de pago',
  `ORDRDIAX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dias',
  `IDITMRQX` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id item requisición asociada',
  `CENCOSXX` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `TELFNUMX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de telefono',
  `CLASPROD` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Clasificacion del producto',
  `VALIVAXX` int(20) NOT NULL COMMENT 'Porcentaje IVA',
  `SONLETXX` varchar(140) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SON (valor en letras)',
  `ADDRSENT` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion de entrega',
  `FECHENVS` date NOT NULL COMMENT 'Fecha envio de solicitud',
  `RECACONF` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Recibido a confirmidad',
  `OBSORDER` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Actualizacion',
  PRIMARY KEY (`EMPNITXX`,`NUMOCXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ordenes de Compra Modulo Facturas';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
