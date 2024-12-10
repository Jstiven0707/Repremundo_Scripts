-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 19:35:20
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
-- Estructura de tabla para la tabla `SCTC2024`
--

CREATE TABLE `SCTC2024` (
  `TARIDXXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id Tarea',
  `PROIDORI` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID DEL PROCESO ORIGEN',
  `SUBIDORI` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subproceso Origen',
  `ASUIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TARNITXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NIT DE ALE EMPRESA DUEÑA DEL GRUPO',
  `SUCIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SUCURSAL',
  `TRAIDXXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'NUMERO DE TRAMITE',
  `SUFIDXXX` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SUFIJO',
  `CLIIDXXX` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit del Cliente Si Aplica',
  `PROIDXXX` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nit del Proveedor Si Aplica',
  `TARPRIXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'PRIORIDAD',
  `TARAVFEC` date NOT NULL COMMENT 'FECHA DE AVISO',
  `TARAVHOR` time NOT NULL COMMENT 'HORA DE AVISO',
  `PROIDDES` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID PROCESO DESTINO',
  `SUBIDDES` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Subproceso Destino',
  `USRIDDES` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO DESTINO',
  `TARCANXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad de Tramites',
  `TARCANSO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cantidad Solucionada',
  `TARMEMOX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Matriz se Datos Auxiliares',
  `TARMEMO2` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Memo Auxiliar 2',
  `TARMEMO3` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `TARANTXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tarea Nacimiento',
  `TARTIPXX` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Tarea',
  `TARFECSO` date NOT NULL COMMENT 'Fecha de Solucion futura para una tarea en espera',
  `ASUCFXXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bloqueo de Cambio de Fecha en la solucion de la tarea',
  `TARUSRCR` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creacion de Tarea',
  `TARVIBUE` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vistos Buenos de la Tera de Elaboracion de Registros de Importacion',
  `TARPLANT` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Plantillas de la Tarea de elaboracion de registros de Importacion',
  `TARPRODU` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Productos de la tarea de elaboracion de registros de Importacion',
  `TARDIGSA` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'la Digitacion de la tarea fue satisfactoria',
  `TARMENSX` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mensajero Asignado para Resolver esta Tarea',
  `TARZOMEN` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Zona de Mensajeria',
  `TARMODFU` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Modo de Funcionamiento en Mensageria o entregar o recoger Documentos',
  `TARREAXX` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Si se realizo o no la tarea de Mensajeria',
  `CATARIDX` int(11) NOT NULL COMMENT 'Categoria',
  `REGUSRXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USUARIO CREACION DE REGISTRO',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE REGISTRO',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00' COMMENT 'FECHA DE MODIFICACION DE REGISTRO',
  `REGHORXX` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'HORA DE REGISTRO',
  `REGESTXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ESTADO DE REGISTRO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `SCTC2024`
--
ALTER TABLE `SCTC2024`
  ADD PRIMARY KEY (`TARIDXXX`) USING BTREE,
  ADD KEY `TRAIDXXX` (`TRAIDXXX`) USING BTREE,
  ADD KEY `ASUIDXXX` (`ASUIDXXX`) USING BTREE,
  ADD KEY `CLIIDXXX` (`CLIIDXXX`) USING BTREE,
  ADD KEY `PROIDXXX` (`PROIDXXX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
