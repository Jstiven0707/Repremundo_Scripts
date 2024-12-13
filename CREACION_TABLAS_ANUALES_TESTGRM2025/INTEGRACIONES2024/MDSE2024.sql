-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 09:40:57
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
-- Estructura de tabla para la tabla `MDSE2024`
--

CREATE TABLE IF NOT EXISTS `MDSE2024` (
  `DOCNROXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IDENTIFICACION DE LA OPERACION',
  `NUMSAEXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `NUMSAENS` smallint(6) NOT NULL COMMENT 'NUMERO DE SERIE CASILLA 150',
  `NUMSAEPR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DE PROGRAMA CASILLA 151',
  `NUMSAERE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'REPOSICION CASILLA 152',
  `NUMSAECI` smallint(6) NOT NULL COMMENT 'No de cuadro insumo producto (CIP) casilla 153',
  `NUMSAEPO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NO. DE PRODUCTO CASILLA 154',
  `NUMSAECP` decimal(7,2) NOT NULL COMMENT 'CANTIDAD PRODUCTO A EXPORTAR POR CIP CASILLA 155',
  `NUMSAEVN` decimal(7,7) NOT NULL COMMENT 'valor agregado nacional (VAN) en USD casilla 156',
  `NUMSAEVE` decimal(7,7) NOT NULL COMMENT 'VALOR INSUMO EXTERNO (VIE) EN USD CASILLA 157',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`NUMSAENS`),
  KEY `DOCNROXX` (`DOCNROXX`),
  KEY `NUMSAEXX` (`NUMSAEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Datos de SAE y DEX VS MANEJOS ESPECIALES';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
