-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 10-12-2024 a las 13:23:50
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
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mpfa2024`
--

CREATE TABLE `mpfa2024` (
  `comidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `comcodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `comcscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comcsc2x` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comidcxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id consecutivo',
  `comcodcx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Consecutivo',
  `comcsccx` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comfeccx` date NOT NULL,
  `comvlrcx` decimal(12,2) NOT NULL,
  `comcscc2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regeditx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Edicion recibo de caja por transferencia',
  `feceditx` date NOT NULL COMMENT 'Fecha de la edicion del recibo de caja por transferencia',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Movimiento Provisional de Facturacion';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mpfa2024`
--
ALTER TABLE `mpfa2024`
  ADD PRIMARY KEY (`comidcxx`,`comcodcx`,`comcsccx`,`comidxxx`,`comcodxx`,`comcscxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
