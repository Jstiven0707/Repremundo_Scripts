-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 09:41:09
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
-- Estructura de tabla para la tabla `MDSU2024`
--

CREATE TABLE IF NOT EXISTS `MDSU2024` (
  `DOCNROXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICACION DE LA OPERACION',
  `NUMSAEXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `NUMSUBSE` int(11) NOT NULL COMMENT 'ID de la serie casilla 98',
  `NUMSUBSU` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subpartida casilla 99',
  `NUMSUBCO` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo complementario casilla 100',
  `NUMSUBSP` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo suplementario casilla 101',
  `NUMSUBUF` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unidad fisica casilla 102',
  `NUMSUBUD` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion de la unidad fisica casilla 102',
  `NUMSUBCU` decimal(7,2) NOT NULL COMMENT 'cantidad unidad fisicas casilla 103',
  `NUMSUBUC` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unidad COMERCIAL casilla 104',
  `NUMSUBUO` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion de la unidad COMERCIAL casilla 104',
  `NUMSUBCC` decimal(7,2) NOT NULL COMMENT 'CANTIDAD UNIDAD COMERCIAL casilla 105',
  `NUMSUBEC` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unidad EMBALAJE casilla 105',
  `NUMSUBED` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion de la unidad EMBALAJE casilla 105',
  `NUMSUBNB` decimal(7,2) NOT NULL COMMENT 'CANTIDAD DE BULTOS CASILLA 107',
  `NUMSUBPB` decimal(7,2) NOT NULL COMMENT 'PESO BRUTO KG CASILLA 108',
  `NUMSUBPN` decimal(7,2) NOT NULL COMMENT 'PESO NETO KG CASILLA 109',
  `NUMSUBVF` decimal(7,2) NOT NULL COMMENT 'VALOR FOB USD CASILLA 110',
  `NUMSUBMA` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'marcas casilla 111',
  `NUMSUBDE` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion casilla 112',
  `NUMSUBUP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unidad DE MEDIDA PLAZO casilla 113',
  `NUMSUBDP` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION unidad DE MEDIDA PLAZO casilla 113',
  `NUMSUBPL` smallint(6) NOT NULL COMMENT 'Plazo casilla 114',
  `NUMSUBPO` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PAIS de origen casilla 115',
  `NUMSUBPD` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion DEL PAIS de origen casilla 115',
  `NUMSUBRO` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DE LA REGION de origen casilla 116',
  `NUMSUBRD` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion CODIGO DE LA REGION de origen casilla 116',
  `NUMSUBPA` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Preferencia arancelaria casilla 117',
  `NUMSUBPC` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO Preferencia arancelaria casilla 117',
  `NUMSUBAP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'codigo aduana precedente casilla 118',
  `NUMSUBAD` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION aduana precedente casilla 118',
  `NUMSUDBP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE LA DECLARACION PRECEDENTE CASILLA 119',
  `NUMSUBAA` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'AÑO DE ACEPTACION CASILLA 120',
  `NUMSUBRP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DE REGIMEN PRECEDENTE CASILLA 121',
  `NUMSUBDR` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DESCRIPCION DEL REGIMEN PRECEDENTE CASILLA 121',
  `NUMSUBMD` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Codigo de la modalidad casilla 122',
  `NUMSUBPS` smallint(6) NOT NULL COMMENT 'Serie precedente casilla 123',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMSUBSE`),
  KEY `DOCNROXX` (`DOCNROXX`),
  KEY `NUMSAEXX` (`NUMSAEXX`),
  KEY `NUMSUBSE` (`NUMSUBSE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Datos de SAE y DEX VS SUBPARTIDAS';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
