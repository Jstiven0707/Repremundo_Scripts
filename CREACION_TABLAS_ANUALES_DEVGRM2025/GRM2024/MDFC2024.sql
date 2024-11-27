-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:36:25
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
-- Estructura de tabla para la tabla `MDFC2024`
--

CREATE TABLE IF NOT EXISTS `MDFC2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Factura',
  `NUMFACXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `NUMCERXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Certificado',
  `FECERREX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de recepcion del certificado',
  `HORERREX` time NOT NULL COMMENT 'Hora de recepcion del certificado',
  `FECENVCO` date NOT NULL COMMENT 'FECHA DE ENVIO DE CERTIFICADO DE ORIGEN',
  `HORENVCO` time NOT NULL COMMENT 'HORA DE ENVIO DE CERTIFICADO DE ORIGEN',
  `FECRADXX` date NOT NULL COMMENT 'FECHA DE RADICACION',
  `HORRADXX` time NOT NULL COMMENT 'HORA DE RADICACION',
  `CERTAPRO` enum('','SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado Aprobado',
  `RESPNEGX` enum('','CLIENTE','DIAN','SIACO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable Negacion',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMCERXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Certificados por Facturas Exportaciones';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
