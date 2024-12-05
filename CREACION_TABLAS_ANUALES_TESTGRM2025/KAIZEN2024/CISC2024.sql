-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 10:03:46
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `KAIZEN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CISC2024`
--

CREATE TABLE IF NOT EXISTS `CISC2024` (
  `CISCIDXX` int(9) NOT NULL COMMENT 'Consecutivo CIS',
  `CISTIPTR` enum('','Bebidas Alcoholicas','Alimentos') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Grupo CIS',
  `CISTIPCA` enum('','CARGA SUELTA','CARGA CONTENERIZADA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Carga',
  `CLIIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `CISFOLEN` int(9) NOT NULL COMMENT 'Numero de folios',
  `CISTOMXX` int(9) NOT NULL COMMENT 'Numero de tomos',
  `CISOBSXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones datos basicos',
  `CISCCERT` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Certificado sanitario',
  `CISFECAR` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de arribo',
  `CISOPCXX` enum('','NORMAL','DONACION O PLAN VALLEJO','MUESTRA SIN VALOR COMERCIAL') COLLATE utf8_unicode_ci NOT NULL COMMENT 'opciones',
  `CISEMPTR` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Empresa transportadora',
  `CISDOCTR` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `CISUBIID` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la ubicacion del producto',
  `CISBODXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `CISOBSCI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones CIS import',
  `CISFACID` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Factura comercial',
  `CISNUCON` int(9) NOT NULL COMMENT 'Numero de contenedores',
  `CISIDCON` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del contenedor',
  `IDDEPXXX` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `IDCIUXXX` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `CISDESTI` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Destinatario',
  `CISTIPID` enum('','CE','CS','NI','CC') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del tipo de identificacion',
  `CISCONID` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificacion del documento',
  `CISDIRXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Direccion',
  `CISTELXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono',
  `CISEMAXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Correo Electronico',
  `CISCTIFA` enum('','CE','NI','CC') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del tipo de identificacion',
  `CISCIDFA` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IDENTIFICACION',
  `CISCNMFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'NOMBRE',
  `CISCDIFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'direccion factura',
  `CISCTLFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono factura',
  `CISCDPFA` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID del departamento factura',
  `CISCCIFA` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID de la ciudad factura',
  `CISCEMFA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'email de la factura',
  `CISCRADX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE RADICADO',
  `REGESTXX` enum('','PROVISIONAL','INACTIVO','ACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `REGESTRX` enum('','SOLUCIONADO','SIN INICIAR','EN PROCESO','ERROR','FINALIZADO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO DEL ROBOT',
  `CISCOBSR` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'OBSERVACIONES DEL ROBOT',
  `CISCLLAX` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la llave',
  `CISCTRAN` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la Transaccion',
  `NODEIDXX` int(9) NOT NULL COMMENT 'Id del nodo Genio Documental',
  `CISCPAGT` int(9) NOT NULL COMMENT 'Pago Total',
  `BANREPLX` enum('','SI','NO') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bandera que indica si actua como agencia de aduanas en representacion',
  `NOMREPLX` tinytext COLLATE utf8_unicode_ci COMMENT 'Nombre del Representante legal',
  `CORREPLX` tinytext COLLATE utf8_unicode_ci COMMENT 'Correo del representante',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CISCIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera de solicitudes CIS robot';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
