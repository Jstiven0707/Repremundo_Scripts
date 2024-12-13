-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 09:40:38
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `INTEGRACIONES`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MDSA2024`
--

CREATE TABLE IF NOT EXISTS `MDSA2024` (
  `DOCNROXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICACION DE LA OPERACION',
  `NUMSAEXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `DEXANIOX` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'año del DEX casilla 1',
  `DEXIDDES` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICACION DEL DESTINARIO CASILLA 33',
  `DEXDESID` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Identificacion del despacho casilla 44',
  `DEXDESDE` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion del despacho casilla 44',
  `DEXPATRA` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PAIS DEL TRAMITE CASILLA 51',
  `DEXINCID` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo incoterms casilla 56',
  `DEXANSUS` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'apellidos y nombres de quien sucribe casilla 1001',
  `DEXTDSUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'TIPO DE DOCUMENTO DE QUIEN SUCRIBE casilla 1002',
  `DEXIDSUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DOCUMENTO DE QUIEN SUCRIBE casilla 1003',
  `DEXDVSUS` smallint(6) NOT NULL COMMENT 'Digito de verificacion de quien sucribe casilla 1004',
  `DEXCRSUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DE REPRESENTACION de quien sucribe casilla 1005',
  `DEXORSUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ORGANIZACION de quien sucribe casilla 1006',
  `DEXFHSUS` datetime NOT NULL COMMENT 'fecha de declaracion de exportacion casilla 997',
  `DEXFECMA` date NOT NULL COMMENT 'FECHA DE MANIFIESTO CASILLA 134',
  `DEXIDEMT` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'identificacion del medio de transporte CASILLA 135',
  `DEXIDEMB` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DE LUGAR DE EMBARQUE CASILLA 136',
  `DEXLUEMB` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'LUGAR DE EMBARQUE CASILLA 136',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`),
  KEY `DOCNROXX` (`DOCNROXX`),
  KEY `NUMSAEXX` (`NUMSAEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Datos de SAE y DEX';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
