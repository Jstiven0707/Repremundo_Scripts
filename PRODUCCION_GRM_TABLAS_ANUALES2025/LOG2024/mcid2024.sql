-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:19:02
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
-- Base de datos: `LOG`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mcid2024`
--

CREATE TABLE `mcid2024` (
  `idingxxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Automatico',
  `usridxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Usuario',
  `depidxxx` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecanunc` date NOT NULL COMMENT 'Fecha de anuncio',
  `horanunc` time NOT NULL COMMENT 'Hora de anuncio',
  `fechaing` date NOT NULL COMMENT 'Fecha ingreso',
  `horaingx` time NOT NULL COMMENT 'Hora ingreso',
  `fechasal` date NOT NULL,
  `horasalx` time NOT NULL,
  `contaces` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ingreso/Salida Deposito',
  `historia` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Historial Ingresos Deposito',
  `observac` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones ',
  `tramitex` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tramite a Realizar en la Bodega',
  `placaxxx` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa',
  `cantpiez` int(11) NOT NULL COMMENT 'Cantidad de piezas/bultos',
  `empidxxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id empresa transportadora',
  `empdesxx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nom empresa transportadora',
  `consecxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lista de consecutivos a salir',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registro de E y S de vehiculos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mcid2024`
--
ALTER TABLE `mcid2024`
  ADD PRIMARY KEY (`idingxxx`,`usridxxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
