-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:34:42
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
-- Estructura de tabla para la tabla `SATL2024`
--

CREATE TABLE `SATL2024` (
  `AVIIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Avisos',
  `AVIDESXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Aviso',
  `AVITRAXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite del Aviso',
  `USRIDXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id del Usuario a Quien Llega el Aviso',
  `AVIFECLX` date DEFAULT NULL COMMENT 'Fecha de Leido',
  `AVIHORLX` time DEFAULT NULL COMMENT 'Hora de Leido',
  `AVICOLXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Color de Alerta',
  `ASUIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Asunto',
  `AVIBLOSX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bloqueo Sesion',
  `AVIVENSX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ventana Emergente',
  `AVITIPXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Aviso',
  `AVITIFAL` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dias Faltantes u otra aplicacion que se le entregue al campo, Incialmente para Alerta',
  `AVICONTX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contador',
  `REGUSRXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE RESGISTRO',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE MODIFICACION',
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'HORA DE CREACION DE REGISTRO',
  `REGESTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SATL2024`
--
ALTER TABLE `SATL2024`
  ADD PRIMARY KEY (`AVIIDXXX`) USING BTREE,
  ADD KEY `USRIDXXX` (`USRIDXXX`) USING BTREE,
  ADD KEY `ASUIDXXX` (`ASUIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
