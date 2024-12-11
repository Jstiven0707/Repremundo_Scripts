-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:18:00
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
-- Estructura de tabla para la tabla `logc2024`
--

CREATE TABLE `logc2024` (
  `bodidxxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `docidxxx` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Documento',
  `doccodxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo Documento',
  `doccscxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo Ingreso',
  `motidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Motivo del Ingreso',
  `docfecxx` date NOT NULL COMMENT 'Fecha del Ingreso',
  `dochorxx` time NOT NULL COMMENT 'Hora de Ingreso',
  `docperxx` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Periodo',
  `cliidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cliente',
  `doccelem` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula de empleado que recibe o entrega la mercancia',
  `doccelre` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula de la persona (cliente) responsable de la entrega o salida de la mercancia',
  `docnomre` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de  la persona (cliente) responsable de la entrega o salida de la mercancia',
  `docttaxx` varchar(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Transportador',
  `traidxxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id transportador',
  `doctcedx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula Conductor',
  `doctnomx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del Conductor',
  `doctplax` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa del Vehiculo',
  `docfacxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Factura',
  `docdtxxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Documento de Transporte',
  `docdecxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Declaracion de importacion',
  `docremxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Remision',
  `docotrxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Otros documentos entregados por el cliente',
  `docobsxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observacion',
  `docestes` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pregunta sobre la verificacion del estado de la estiba',
  `docestco` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pregunta sobre el estado de la mercancia que no haya indicios de contaminacion',
  `fotoxxxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Fotografias entradas y salidas',
  `regusrxx` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfcrex` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghcrex` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regfmodx` date NOT NULL COMMENT 'Fecha  de Modificacion del Registro',
  `reghmodx` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `regestxx` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del Regristro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cabecera Ingresos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logc2024`
--
ALTER TABLE `logc2024`
  ADD PRIMARY KEY (`bodidxxx`,`docidxxx`,`doccodxx`,`doccscxx`,`cliidxxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
