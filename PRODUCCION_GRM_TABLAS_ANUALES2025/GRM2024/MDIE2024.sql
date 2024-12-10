-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:15:33
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
-- Estructura de tabla para la tabla `MDIE2024`
--

CREATE TABLE `MDIE2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero del Do',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sucursal Do',
  `DOCSUFXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sufijo',
  `NUMSAEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de la SAE',
  `NUMFACXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Factura',
  `PROIDXXX` varchar(167) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identificador del producto',
  `DOIPEDXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pedido',
  `SECITXXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Secuencia del item',
  `SERAVIXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serial del avion',
  `ITPROXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Auto prorroga',
  `ITFEPROX` date NOT NULL COMMENT 'fecha Auto prorroga',
  `ITNUMPOX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'numero de PO',
  `ITPRECEX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Precedida',
  `ITPOSARX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Posicion arancelaria',
  `ITNOMTRA` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre del producto tramitex',
  `ITNOMCOX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre comercial',
  `ITDESCXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion del producto',
  `ITUNFIXX` int(9) NOT NULL COMMENT 'cantidad de unidades fisicas',
  `ITUNCOMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Comercial',
  `ITCANCOX` int(9) NOT NULL COMMENT 'cantidad comercial',
  `ITUNBULX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad Bultos',
  `ITCANBUL` decimal(12,5) NOT NULL COMMENT 'cantidad de bultos',
  `ITPESBRU` decimal(12,5) NOT NULL COMMENT 'PESO BRUTO',
  `ITPESNET` decimal(12,5) NOT NULL COMMENT 'PESO NETO',
  `ITTOTDAV` decimal(12,5) NOT NULL COMMENT 'TOTAL DAV',
  `ITMARXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'MARCA',
  `ITREFXXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'REFERENCIA',
  `ITPAISOR` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PAIS DE ORIGEN',
  `ITNUMDIM` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DEL DIM',
  `ITADUXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ADUANA',
  `ITANODIM` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'AÑO DE LA DIM',
  `ITMODAXX` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modalidad',
  `ITNUMSER` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE SERIE DE LA PRECEDIDA',
  `ITLEYESP` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'LEYENDA ESPECIAL DEL ITEM',
  `REGUSRXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECXX` date NOT NULL,
  `REGHORXX` time NOT NULL,
  `REGUSRMX` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMX` date NOT NULL,
  `REGHORMX` time NOT NULL,
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='items de la factura para exportaciones' ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDIE2024`
--
ALTER TABLE `MDIE2024`
  ADD PRIMARY KEY (`DOCNROXX`,`SUCIDXXX`,`DOCSUFXX`,`NUMSAEXX`,`NUMFACXX`,`PROIDXXX`,`SECITXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
