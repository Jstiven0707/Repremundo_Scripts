-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 12:14:31
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
-- Estructura de tabla para la tabla `ITOC2024`
--

CREATE TABLE IF NOT EXISTS `ITOC2024` (
  `EMPNITXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nit empresa',
  `NUMOCXXX` int NOT NULL COMMENT 'Consecutivo orden de compra (NUMREQXX en ITRE)',
  `NUMREQAS` int NOT NULL COMMENT 'Numero de requisicion asociado',
  `PROVEASX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Proveedor de la requisicion asociada',
  `CONDPAGX` enum('CONTADO','ANTICIPO','CREDITO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Condiciones de pago',
  `ORDRDIAX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Dias',
  `IDITMRQX` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id item requisición asociada',
  `CENTCOSX` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `TELFNUMX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de telefono',
  `CLASPROD` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Clasificacion del producto',
  `VALIVAXX` int NOT NULL COMMENT 'Porcentaje IVA',
  `SONLETXX` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SON (valor en letras)',
  `ADDRSENT` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Direccion de entrega',
  `FECHENVS` date NOT NULL COMMENT 'Fecha envio de solicitud',
  `RECACONF` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Recibido a confirmidad',
  `OBSORDER` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observacion',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en la que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en la que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en la que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en la que se modifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Actualizacion',
  PRIMARY KEY (`EMPNITXX`,`NUMOCXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Ordenes de Compra Modulo Facturas';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
