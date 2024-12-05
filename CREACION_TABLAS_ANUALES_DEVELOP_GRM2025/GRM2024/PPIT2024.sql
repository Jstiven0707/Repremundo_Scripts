-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 09:17:11
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
-- Estructura de tabla para la tabla `PPIT2024`
--

CREATE TABLE IF NOT EXISTS `PPIT2024` (
  `ANOPRESU` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Ano del Presupuesto',
  `EMPNITXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Empresa',
  `AREAIDXX` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Area del Presupuesto',
  `SEGMENID` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Segmento del Presupuesto',
  `FAMILIID` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Familia del presupuesto',
  `CCIDXXXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Centro de costo',
  `SCCIDXXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Subcentro de costo',
  `VLRFACAP` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Presupuesto',
  `VLRFACME` decimal(12,2) NOT NULL COMMENT 'Valor Mensual Aprobado',
  `VLRFAENE` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Enero',
  `VLRFAFEB` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Febrero',
  `VLRFAMAR` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Marzo',
  `VLRFAABR` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Abril',
  `VLRFAMAY` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Mayo',
  `VLRFAJUN` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Junio',
  `VLRFAJUL` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Julio',
  `VLRFAAGO` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Agosto',
  `VLRFASEP` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Septiembre',
  `VLRFAOCT` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Octubre',
  `VLRFANOV` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Noviembre',
  `VLRFADIC` decimal(12,2) NOT NULL COMMENT 'Valor Aprobado Diciembre',
  `PPOBSXXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observaciones del presupuesto',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Por este campo es que se hacen las actualizaciones',
  PRIMARY KEY (`ANOPRESU`,`EMPNITXX`,`SEGMENID`,`FAMILIID`,`AREAIDXX`,`CCIDXXXX`,`SCCIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Presupuesto Detallado';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
