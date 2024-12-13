-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 12-12-2024 a las 11:57:58
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mani2024`
--

CREATE TABLE IF NOT EXISTS `mani2024` (
  `maniidxx` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Manifiesto',
  `manifecx` date NOT NULL COMMENT 'Fecha de Manifiesto',
  `manisede` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Sede Mani',
  `manititu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre del titular ',
  `manidocu` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Documento Titular',
  `maniplac` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Placa',
  `manifecv` date NOT NULL COMMENT 'Fecha Vencimiento de Pago',
  `manitipp` enum('CHEQUE','TRANSFERENCIA') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo Pago',
  `manivalx` decimal(8,0) NOT NULL COMMENT 'Valor Cancelar Manifiesto',
  `valflete` decimal(8,0) NOT NULL COMMENT 'Valor Flete Manifiesto',
  `aplifact` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Facturacion Electronica',
  `maniprio` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Prioridad',
  `manicomp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Comprobante',
  `maniobse` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Observacion',
  `docucons` tinyint(1) NOT NULL COMMENT 'Consolidados de documentos',
  `manirpax` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica RPA',
  `idarchxx` int NOT NULL COMMENT 'Id archivo gestor',
  `aprobliq` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Liquidacion que aprueba',
  `fecapliq` date NOT NULL COMMENT 'Fecha de Aprobacion Liquidacion',
  `horapliq` time NOT NULL COMMENT 'Hora Aprobacion Liquidacion',
  `aprobtes` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Tesoreria que aprueba',
  `fecaptes` date NOT NULL COMMENT 'Fecha de Aprobacion Tesoreria',
  `horaptes` time NOT NULL COMMENT 'Hora Aprobacion Tesoreria',
  `regusrxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`maniidxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Manifiestos de Silotrans';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
