-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 16:07:00
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
-- Base de datos: `GRM`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MCOC2024`
--

CREATE TABLE `MCOC2024` (
  `ODCPOXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PO',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `ODCCONXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consolidado',
  `ODCFECXX` date NOT NULL COMMENT 'Fecha Orden de Compra',
  `PROIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Proveedor',
  `ODCFOPAG` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Forma de Pago',
  `ODCPLAZO` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plazo',
  `ODCEDTPO` date NOT NULL COMMENT 'EDT PO',
  `ODCPAPRO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de Procedencia',
  `ODCPAIOR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de Origen',
  `ODCTRAIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Transito Internacional',
  `ODCPUAER` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Puerto o Aeropuerto',
  `ODCANAXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Analista',
  `FECRECEP` date NOT NULL COMMENT 'Fecha de recepcion',
  `FERENFAB` date NOT NULL COMMENT 'Fecha entrega en fabrica o CIS',
  `APLIFITO` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Fito',
  `ODCNROSO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Solicitud Fito',
  `ODCNRODO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento Fito',
  `FECAPFIT` date NOT NULL COMMENT 'Fecha de Aprobacion Fito',
  `FECFVENC` date NOT NULL COMMENT 'Fecha de Vencimiento Fito',
  `APLIREGI` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Aplica Registro de Importacion',
  `ODCNROLI` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Licencia Reg. Impo.',
  `FECAPREI` date NOT NULL COMMENT 'Fecha de Aprobacion Reg. Impo.',
  `FECVEREI` date NOT NULL COMMENT 'Fecha de Vencimiento Reg. Impo.',
  `CPACODXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de producto',
  `ODCLUEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lugar Entrega',
  `CETIDXXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Termino de Negociacion SIAI0107',
  `ODCFESXX` date NOT NULL COMMENT 'Fecha Estimada de Entrega del proveedor',
  `ODCFREXX` date NOT NULL COMMENT 'Fecha Real de Entrega al Proveedor',
  `ODCFEDXX` date NOT NULL COMMENT 'Fecha Estimada de Despacho',
  `ODCFRDXX` date NOT NULL COMMENT 'Fecha Real de Despacho',
  `ODCPDEXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pais de Despacho',
  `ODCCDEXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ciudad de Despacho',
  `ODCDPRXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion de Producto',
  `ODCFETAX` date NOT NULL COMMENT 'ETA',
  `ODCOLDXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Orden Compra Modificado',
  `ODCFITOS` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Fito Sanitario',
  `ODCREGIM` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Registro de Importacion',
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modifico',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ordenes de Compra' ROW_FORMAT=DYNAMIC;

--
-- Disparadores `MCOC2024`
--
DELIMITER $$
CREATE TRIGGER `MCOC2024_INSERT` BEFORE INSERT ON `MCOC2024` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `MCOC2024_UPDATE` BEFORE UPDATE ON `MCOC2024` FOR EACH ROW BEGIN
    	SET NEW.`REGFECMR`= NOW();
    	SET NEW.`REGHORMR`= NOW();
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MCOC2024`
--
ALTER TABLE `MCOC2024`
  ADD PRIMARY KEY (`ODCPOXXX`,`CLIIDXXX`) USING BTREE,
  ADD KEY `REGUSRXX` (`REGUSRXX`) USING BTREE,
  ADD KEY `ODCFOPAG` (`ODCFOPAG`) USING BTREE,
  ADD KEY `CPACODXX` (`CPACODXX`) USING BTREE,
  ADD KEY `ODCPDEXX` (`ODCPDEXX`) USING BTREE,
  ADD KEY `CETIDXXX` (`CETIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
