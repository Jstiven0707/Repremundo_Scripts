-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 08:38:41
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
-- Estructura de tabla para la tabla `CSAE2024`
--

CREATE TABLE IF NOT EXISTS `CSAE2024` (
  `ANTIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo Anticipo',
  `SUCIDXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sucursal',
  `DOCNROXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero DO',
  `DOCSUFXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sufijo',
  `DOIPEDXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Pedido',
  `CLIIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nit del Cliente',
  `TCATASAX` decimal(17,2) NOT NULL COMMENT 'Tasa',
  `ANTFOBXX` decimal(17,2) NOT NULL COMMENT 'Fob',
  `ANTFLETE` decimal(17,2) NOT NULL COMMENT 'Flete',
  `ANTSEGUR` decimal(17,2) NOT NULL COMMENT 'Seguro',
  `ANTOTRGA` decimal(17,2) NOT NULL COMMENT 'Otros Gastos',
  `ANTGRAVA` decimal(17,2) NOT NULL COMMENT 'Gravamen',
  `ANTIVAXX` decimal(17,2) NOT NULL COMMENT 'Iva',
  `ANTSALVA` decimal(17,2) NOT NULL COMMENT 'Salvaguardia',
  `ANTCOMPE` decimal(17,2) NOT NULL COMMENT 'Compensatorio',
  `ANTANTDU` decimal(17,2) NOT NULL COMMENT 'Antidumping',
  `ANTSANCI` decimal(17,2) NOT NULL COMMENT 'Sancion',
  `ANTRESCA` decimal(17,2) NOT NULL COMMENT 'Rescate',
  `ANTFUCUT` decimal(17,2) NOT NULL COMMENT 'Fuera de Cut Off',
  `ANT4XMIL` decimal(17,2) NOT NULL COMMENT 'Impuesto Financiero (4 X Mil)',
  `ANTAJUXX` decimal(17,2) NOT NULL COMMENT 'Ajustes',
  `ANTFECSO` date NOT NULL COMMENT 'Fecha Solicitado',
  `ANTVLRRE` decimal(17,2) NOT NULL COMMENT 'Valor Recibido',
  `ANTFECRE` date NOT NULL COMMENT 'Fecha Recbido',
  `ANTBANID` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Cuenta Bancaria',
  `ANTOBSXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observaciones',
  `ANTPSEXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica para PSE',
  `ANTTIPXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Tipo de Anticipo',
  `ANTVLRPA` decimal(17,2) NOT NULL COMMENT 'Valor Pagado por El cliente',
  `VLRPACIN` decimal(17,2) NOT NULL COMMENT 'Valor pagado por cliente en Interfaz',
  `ANTTICKE` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Ticket que devuelve PSE',
  `ANTRECXX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Recibo de caja GRM',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`ANTIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Cabecera de Anticipos para Exportación';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
