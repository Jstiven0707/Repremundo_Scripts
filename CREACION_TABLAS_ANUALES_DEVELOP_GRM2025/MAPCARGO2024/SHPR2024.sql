-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 12-12-2024 a las 14:19:05
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `MAPCARGO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SHPR2024`
--

CREATE TABLE IF NOT EXISTS `SHPR2024` (
  `IDXXXXXX` int NOT NULL AUTO_INCREMENT,
  `GUIDXXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Guid de magaya',
  `SHNUMBER` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de la operacion',
  `STATUSXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'estado del cargo',
  `PIECESXX` int NOT NULL COMMENT 'piezas',
  `DESCRIPT` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Descripcion del cargo',
  `PACKNAME` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Nombre de paqueteSHPR2021',
  `NUMBERXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Numero del producto',
  `ISCONTXX` tinyint DEFAULT NULL COMMENT 'Es Contenedor SI/NO.',
  `PONUMBER` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Numero de Orden de Compra',
  `PONUMSIA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '\r\nNumero pedido vs Siaco',
  `FECDEVCO` date DEFAULT NULL COMMENT 'Fecha devolución contenedor (PR)',
  `FECCITCO` date DEFAULT NULL COMMENT 'Fecha cita de cargue (PR)',
  `FECDESCO` date DEFAULT NULL COMMENT 'Fecha de descargue (PR)',
  `PLACAXXX` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Placa Vehiculo',
  `DCIDXXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Cedula Conductor',
  `DCNOMXXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Nombre Conductor',
  `DCTELXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Telefono Conductor',
  `DCDUTAXX` date DEFAULT NULL COMMENT 'DUTA Conductor',
  `ENTTRANX` date DEFAULT NULL COMMENT 'Entrega al transportador (Fecha salida de puerto)',
  `FECINIRU` date DEFAULT NULL COMMENT 'Fecha Inicio Ruta',
  `TRAZAUBI` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Trazabilidad Ubicacion',
  `TRAZAFEC` date DEFAULT NULL COMMENT 'Trazabilidad Fecha',
  `TRAZAHOR` time DEFAULT NULL COMMENT 'Trazabilidad Hora',
  `TRAZANOV` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Trazabilidad Novedad',
  `FECDEPOX` date DEFAULT NULL COMMENT 'Fecha de llegada a deposito',
  `FIRUDEVX` date DEFAULT NULL COMMENT 'Fecha Inicio Ruta Devolucion Contenedor',
  `FECAPROB` date DEFAULT NULL COMMENT 'Fecha Aprobación Moras de Contenedor',
  `CHKAPROB` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Estado de aprobación de la Mora de Contenedor.',
  `FLETERXX` float DEFAULT NULL COMMENT 'Flete Terrestre de Contenedor.',
  `REMESAXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Remesa',
  `NUMRNDCX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Numero RNDC',
  `PRINCIPA` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'SI' COMMENT 'Producto principal',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`IDXXXXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='productos del embarque';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
