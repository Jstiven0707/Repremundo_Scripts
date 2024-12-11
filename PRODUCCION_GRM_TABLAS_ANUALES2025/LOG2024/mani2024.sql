-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:18:42
-- Versión del servidor: 5.7.31-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mani2024`
--

CREATE TABLE `mani2024` (
  `maniidxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Manifiesto',
  `manifecx` date NOT NULL COMMENT 'Fecha de Manifiesto',
  `manisede` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sede Mani',
  `manititu` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del titular ',
  `manidocu` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento Titular',
  `maniplac` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa',
  `manifecv` date NOT NULL COMMENT 'Fecha Vencimiento de Pago',
  `manitipp` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo Pago',
  `manivalx` decimal(8,0) NOT NULL COMMENT 'Valor Cancelar Manifiesto',
  `valflete` decimal(8,0) NOT NULL COMMENT 'Valor Flete Manifiesto',
  `aplifact` enum('SI','NO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Facturacion Electronica',
  `maniprio` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Prioridad',
  `manicomp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Comprobante',
  `maniobse` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `docucons` tinyint(1) NOT NULL COMMENT 'Consolidados de documentos',
  `manirpax` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica RPA',
  `idarchxx` int(10) NOT NULL COMMENT 'Id archivo gestor',
  `aprobliq` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Liquidacion que aprueba',
  `fecapliq` date NOT NULL COMMENT 'Fecha de Aprobacion Liquidacion',
  `horapliq` time NOT NULL COMMENT 'Hora Aprobacion Liquidacion',
  `aprobtes` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Tesoreria que aprueba',
  `fecaptes` date NOT NULL COMMENT 'Fecha de Aprobacion Tesoreria',
  `horaptes` time NOT NULL COMMENT 'Hora Aprobacion Tesoreria',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario crea',
  `regfecxx` date NOT NULL COMMENT 'fecha crea',
  `reghorxx` time NOT NULL COMMENT 'hora crea',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario modifica',
  `regfecmx` date NOT NULL COMMENT 'fecha modifica',
  `reghormx` time NOT NULL COMMENT 'hora modifica',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Manifiestos de Silotrans';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mani2024`
--
ALTER TABLE `mani2024`
  ADD PRIMARY KEY (`maniidxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
