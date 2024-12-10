-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:14:58
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
-- Estructura de tabla para la tabla `MDGD2024`
--

CREATE TABLE `MDGD2024` (
  `DOCNROXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `AREAXXXX` int(10) NOT NULL COMMENT 'Indica el area en Genio',
  `SERIEXXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serie Documental',
  `TIPOXXXX` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre Maquina',
  `TRADIXXX` enum('ORIGINAL','COPIA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tradicion del Documento',
  `DOCNUMXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Documento Genio',
  `IPCFECXX` date NOT NULL COMMENT 'Fecha Informacion Pendiente Cliente',
  `IPCFECCI` date NOT NULL COMMENT 'Fecha Cierre Informacion Pendiente Cliente',
  `IPCHORCI` time NOT NULL COMMENT 'Hora de Cierre',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos de Genio por DO' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDGD2024`
--
ALTER TABLE `MDGD2024`
  ADD PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`AREAXXXX`,`SERIEXXX`,`TIPOXXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
