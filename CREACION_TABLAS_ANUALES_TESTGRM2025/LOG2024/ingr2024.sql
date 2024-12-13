-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 13-12-2024 a las 09:54:36
-- Versión del servidor: 5.6.47
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
-- Estructura de tabla para la tabla `ingr2024`
--

CREATE TABLE IF NOT EXISTS `ingr2024` (
  `idautoxx` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `usridxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'documento',
  `perspnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre(Personal) ',
  `perssnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Nombre(Personal) ',
  `perspape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido(Personal) ',
  `perssape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido(Personal) ',
  `persftel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono(Personal) ',
  `persctel` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Celular(Personal)',
  `persrhxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Rh(Personal)',
  `perssexo` enum('F','M') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sexo(Personal) ',
  `areaingr` enum('ALMACEN','ADMINSTRACION') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de ingreso',
  `imeicelx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Imei celular',
  `contemer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contacto en Caso de Emergencia',
  `celuemer` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono del Contacto',
  `empdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de la empresa',
  `arpidxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id arl',
  `arpdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de arl',
  `persfnac` date NOT NULL COMMENT 'Fecha Nacimiento(Personal) ',
  `estadoin` enum('EN ALMACEN','FUERA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado ingreso',
  `observac` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `almacenx` enum('ALMACEN','TRANSPORTE','CONDUCTOR PROPIO','CONDUCTOR TERCERO','CLIENTE','VISITANTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Personal',
  `fichaxxx` int(4) NOT NULL COMMENT 'Numero de ficha para visitante',
  `salidaxx` date NOT NULL COMMENT 'Fecha  de salida',
  `horasali` time NOT NULL COMMENT 'Hora de salida',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idautoxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Ingreso Personal Almacen' AUTO_INCREMENT=5236 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
