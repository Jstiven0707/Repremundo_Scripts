-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:16:56
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
-- Estructura de tabla para la tabla `ingr2024`
--

CREATE TABLE `ingr2024` (
  `idautoxx` int(5) NOT NULL COMMENT 'id',
  `usridxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'documento',
  `perspnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Nombre(Personal) ',
  `perssnom` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Nombre(Personal) ',
  `perspape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primer Apellido(Personal) ',
  `perssape` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Segundo Apellido(Personal) ',
  `persftel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono(Personal) ',
  `persctel` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Celular(Personal)',
  `persrhxx` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Rh(Personal)',
  `perssexo` enum('F','M') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Sexo(Personal) ',
  `areaingr` enum('ALMACEN','ADMINSTRACION') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Area de ingreso',
  `imeicelx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Imei celular',
  `contemer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contacto en Caso de Emergencia',
  `celuemer` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono del Contacto',
  `empdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de la empresa',
  `arpidxxx` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id arl',
  `arpdesxx` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripción de arl',
  `persfnac` date NOT NULL COMMENT 'Fecha Nacimiento(Personal) ',
  `estadoin` enum('EN ALMACEN','FUERA') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado ingreso',
  `observac` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones',
  `almacenx` enum('ALMACEN','TRANSPORTE','CONDUCTOR PROPIO','CONDUCTOR TERCERO','CLIENTE','VISITANTE') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Personal',
  `fichaxxx` int(4) NOT NULL COMMENT 'Numero de ficha para visitante',
  `salidaxx` date NOT NULL COMMENT 'Fecha  de salida',
  `horasali` time NOT NULL COMMENT 'Hora de salida',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` enum('ACTIVO','INACTIVO') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ingreso Personal Almacen' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingr2024`
--
ALTER TABLE `ingr2024`
  ADD PRIMARY KEY (`idautoxx`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingr2024`
--
ALTER TABLE `ingr2024`
  MODIFY `idautoxx` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
