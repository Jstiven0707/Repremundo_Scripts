-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:11:12
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
-- Estructura de tabla para la tabla `MDDS2024`
--

CREATE TABLE `MDDS2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal del DO',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo del Do',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `MDDSNUSR` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Serie',
  `MDDSCODD` int(3) NOT NULL COMMENT 'Id del Documento',
  `MDDSDESC` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion del Documento',
  `MDDSNUMD` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Documento',
  `MDDSIDEM` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Identificacion del Emisor',
  `MDDSNMEM` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del Emisor',
  `MDDSFEEX` date NOT NULL COMMENT 'Fecha de Expedicion',
  `MDDSFEVE` date NOT NULL COMMENT 'Fecha de Vencimiento',
  `MDDSMONX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de la Moneda',
  `MDDSMOND` decimal(9,2) NOT NULL COMMENT 'Monto del Documento',
  `MDDSUNCM` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de la Unidad',
  `MDDSCANX` decimal(9,2) NOT NULL COMMENT 'Cantidad Unidad Comercial',
  `MDDSVRRE` decimal(9,2) NOT NULL COMMENT 'VALOR A REINTEGRAR',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de creacion',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de creacion',
  `REGHORXX` time NOT NULL COMMENT 'Hora de creacion',
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario de modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de modificacion',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Documentos Soporte DEX' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDDS2024`
--
ALTER TABLE `MDDS2024`
  ADD PRIMARY KEY (`DOCNROXX`,`NUMSAEXX`,`MDDSCODD`,`MDDSNUMD`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
