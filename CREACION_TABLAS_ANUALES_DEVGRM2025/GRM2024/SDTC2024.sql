-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 27-11-2024 a las 09:56:25
-- Versión del servidor: 5.6.47
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
-- Estructura de tabla para la tabla `SDTC2024`
--

CREATE TABLE IF NOT EXISTS `SDTC2024` (
  `TARIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID TAREA',
  `TARIDSUB` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID SUB TAREA',
  `TRAIDXXX` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Tramite',
  `TRADESXX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Item',
  `TRADIRXX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Directorio de Digitalizacion',
  `TARESDIG` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'EStado de la Digitalizacion: Digitalizadas, upload o No Aplica',
  `TARTIPXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tarea',
  `TAROBSXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones por Item',
  `TARREQXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bandera si el Item fue requerido o no',
  `DOCIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id de la Lista de Chequeo',
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE RESGISTRO',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE MODIFICACION',
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'HORA DE CREACION DE REGISTRO',
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`TARIDXXX`,`TARIDSUB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
