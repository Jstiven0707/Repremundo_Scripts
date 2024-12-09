-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 09-12-2024 a las 09:44:55
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `CASTOR`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtca2024`
--

CREATE TABLE IF NOT EXISTS `vtca2024` (
  `vtcaidxx` int NOT NULL AUTO_INCREMENT COMMENT 'Id cotizacion',
  `vtnunexx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número negocio',
  `cotnumxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número cotización',
  `tipoclix` enum('CLIENTE','RUTEADO','AGENTE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo cliente',
  `teridxxx` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'id empresa',
  `contaidx` int DEFAULT NULL COMMENT 'Contacto',
  `contmail` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Correo electrónico',
  `contatel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Teléfono',
  `contdirx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Dirección',
  `eqpidxxx` int DEFAULT NULL COMMENT 'Vendedor (sales)',
  `cotiestx` enum('ABIERTA','EXPIRADA','ACEPTADA','PERDIDA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Estado cotización',
  `cofecven` date DEFAULT NULL COMMENT 'Vigencia cotización',
  `terminid` int DEFAULT NULL COMMENT 'Término negociación',
  `regfecne` date DEFAULT NULL COMMENT 'Fecha creación negocio',
  `tiempoem` int DEFAULT NULL COMMENT 'Tiempo emisión',
  `coticlas` enum('ESTANDAR','MUDANZA','CARGA PROYECTO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Clasificación',
  `tipoopex` enum('IMPORTACION','EXPORTACION','TRIANGULACION','SERVICIOS LOGISTICOS') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo operación',
  `servicio` enum('AEREO','MARITIMO','TERRESTRE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Servicio',
  `tipoenvx` enum('FCL','LCL','RO-RO','BREAK BULK','FTL','LTL','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo envio',
  `alcaduan` tinyint DEFAULT NULL COMMENT 'Alcance aduana',
  `alcdepce` tinyint NOT NULL DEFAULT '0' COMMENT 'Alcance deposito CEDIS',
  `alctrans` tinyint DEFAULT NULL COMMENT 'Alcance de transporte OTM',
  `alctracv` tinyint DEFAULT NULL COMMENT 'Alcance de transporte CV',
  `alctratr` tinyint NOT NULL DEFAULT '0' COMMENT 'Alcance de transporte traslado',
  `alctraur` tinyint NOT NULL DEFAULT '0' COMMENT 'Alcance de transporte urbano',
  `alctrana` tinyint NOT NULL DEFAULT '0' COMMENT 'Alcance de transporte nacional',
  `alcdepad` tinyint DEFAULT NULL COMMENT 'Alcance deposito aduandero',
  `alcsegur` tinyint DEFAULT NULL COMMENT 'Alcance seguro',
  `alccouri` tinyint DEFAULT NULL COMMENT 'Alcance courier',
  `alcdiali` int DEFAULT NULL COMMENT 'Alcance dias libres',
  `alcdropo` enum('SI','NO','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alcance Drop Off',
  `alcdepos` enum('SI','NO','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alcance deposito',
  `alcempaq` tinyint DEFAULT NULL COMMENT 'Alcance empaque',
  `alccargu` tinyint DEFAULT NULL COMMENT 'Alcance cargue',
  `alcpuert` tinyint DEFAULT NULL COMMENT 'Alcance puerto',
  `alcdlori` int DEFAULT NULL COMMENT 'Alcance dias libres origen',
  `alcdldes` int DEFAULT NULL COMMENT 'Alcance dias libres destino',
  `alcentul` tinyint DEFAULT NULL COMMENT 'Alcance entrega ultima milla',
  `codomaxx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo mercancía',
  `orcompra` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Orden de compra',
  `descripx` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción',
  `valmerxx` decimal(12,2) DEFAULT NULL COMMENT 'Valor mercancía',
  `clasemer` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Clase mercancía',
  `merpelix` enum('SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mercancía peligrosa',
  `vtnotasx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Notas',
  `feccotac` date DEFAULT NULL COMMENT 'Fecha cotización aceptada',
  `feccotre` date DEFAULT NULL COMMENT 'Fecha cotización rechazada',
  `idexpedi` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Expedidor',
  `idconsig` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Consignatario',
  `idnotifi` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notificar a',
  `clifacxx` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cliente facturar',
  `agecaori` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Agente de carga origen',
  `agecades` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Agente de carga destino',
  `agaduana` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Agencia de aduana',
  `condipag` enum('ANTICIPO','ACUERDO DE PAGO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Condiciones de pago',
  `zonaadua` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Zona Aduanera',
  `nucontra` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número de contrato',
  `insembxx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'PATH Instrucciones de embarque',
  `netaspro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'PATH Netas proveedor',
  `cotidocx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'PATH Plantilla de cotizacion generada',
  `catopixx` int DEFAULT NULL COMMENT 'Total piezas',
  `catopckg` decimal(12,2) DEFAULT NULL COMMENT 'Total piezas',
  `catopvcm` decimal(12,2) DEFAULT NULL COMMENT 'Total piezas',
  `catopbtn` decimal(12,2) DEFAULT NULL COMMENT 'Total piezas',
  `totalcon` int DEFAULT NULL COMMENT 'Total piezas',
  `totpesco` decimal(12,2) DEFAULT NULL COMMENT 'Total piezas',
  `tokenenv` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'token envío cotización',
  `tipoemba` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Tipo de embarque',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`vtcaidxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='VENTAS CABECERA' AUTO_INCREMENT=67 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
