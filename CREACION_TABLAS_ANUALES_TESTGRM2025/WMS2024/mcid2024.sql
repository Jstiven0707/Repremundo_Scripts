-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 29-11-2025 a las 15:13:20
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mcid2024`
--

CREATE TABLE IF NOT EXISTS `mcid2024` (
  `idingxxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `usridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaing` date NOT NULL COMMENT 'Fecha ingreso',
  `horaingx` time NOT NULL COMMENT 'Hora ingreso',
  `tipoauto` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de autorizacion',
  `fechasal` date NOT NULL,
  `horasalx` time NOT NULL,
  `contaces` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ingreso/Salida Deposito',
  `autoitxx` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'quien autoriza it',
  `historia` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Historial Ingresos Deposito',
  `otrovisi` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otro Visitante',
  `observac` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones ',
  `dtrxxxxx` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `tramitex` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite a Realizar en la Bodega',
  `otrotram` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otro Tramite',
  `autorixx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la persona que autoriza el ingreso al deposito',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idingxxx`,`usridxxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Movimiento de entradas al deposito';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
