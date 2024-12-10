-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:35:36
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
-- Estructura de tabla para la tabla `SDTC2024`
--

CREATE TABLE `SDTC2024` (
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
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SDTC2024`
--
ALTER TABLE `SDTC2024`
  ADD PRIMARY KEY (`TARIDXXX`,`TARIDSUB`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
