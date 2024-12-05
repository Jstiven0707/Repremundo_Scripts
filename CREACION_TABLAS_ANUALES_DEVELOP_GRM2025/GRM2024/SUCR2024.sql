-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 05-12-2024 a las 09:24:05
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
-- Estructura de tabla para la tabla `SUCR2024`
--

CREATE TABLE IF NOT EXISTS `SUCR2024` (
  `DOCNROXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero Do',
  `CERORICO` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Certificado Origen Corregido',
  `BULTAVER` int NOT NULL COMMENT 'Bultos Averiados',
  `DESCNARC` enum('','ESCANER','FISICA','AUTOMATICA','DOCUMENTAL') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Descripcion Inspeccion Antinarcoticos',
  `APCERORI` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Aplica Certificado Origen',
  `NOMTRANS` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Nombre Transporte Terrestre',
  `TIPINSIC` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Inspeccion ICA',
  `TIPINSIV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo Inspeccion Invima',
  `TIPINSDN` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo Inspeccion Dian',
  `RECDOCFE` date NOT NULL COMMENT 'Fecha Recepcion Documento de Transporte',
  `RECDOCHR` time NOT NULL COMMENT 'Hora Recepcion Documento de Transporte',
  `FECRECIN` date NOT NULL COMMENT 'Fecha de Recibido Instruccion',
  `HORRECIN` time NOT NULL COMMENT 'Hora de Recibido Instruccion',
  `FECRETRA` date NOT NULL COMMENT 'Fecha revisión Documento de transporte',
  `HORRETRA` time NOT NULL COMMENT 'Hora revisión Documento de transporte',
  `FECDOCOR` date NOT NULL COMMENT 'Fecha Recepción Documentos originales',
  `HORDOCOR` time NOT NULL COMMENT 'Hora Recepción documentos proveedor completo',
  `FECREPRO` date NOT NULL COMMENT 'Fecha revisión documentos (proveedor)',
  `HORREPRO` time NOT NULL COMMENT 'Hora revisión documentos proveedor)',
  `FEREVDOC` date NOT NULL COMMENT 'Fecha Revisión Documentos',
  `HOREVDOC` time NOT NULL COMMENT 'Hora Revisión Documentos',
  `FECPRECO` date NOT NULL COMMENT 'Fecha Precosteo',
  `HORPRECO` time NOT NULL COMMENT 'Hora Precosteo',
  `FECENTVE` date NOT NULL COMMENT 'Fecha Entrega Datos Vehiculo',
  `HORENTVE` time NOT NULL COMMENT 'Hora Entrega Datos Vehiculo',
  `FECENTPL` date NOT NULL COMMENT 'Fecha Entrega Planilla',
  `HORENTPL` time NOT NULL COMMENT 'Hora Entrega Planilla',
  `FECPREDO` date NOT NULL COMMENT 'Fecha Presentacion Cierre Documental',
  `HORPREDO` time NOT NULL COMMENT 'Hora Presentacion Cierre Documental',
  `REGUSRXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creacion',
  `REGUSRMX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Datos generales Operaciones Sucroal';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
