-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:15:59
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
-- Estructura de tabla para la tabla `hfun2024`
--

CREATE TABLE `hfun2024` (
  `idfuncix` int(11) NOT NULL COMMENT 'Id de registro',
  `fechaxxx` date NOT NULL COMMENT 'Fecha funcionario',
  `cantpers` int(11) NOT NULL COMMENT 'Cantidad personas',
  `canthora` int(11) NOT NULL COMMENT 'Cantidad horas',
  `operaxxx` enum('COORDINACION O SUPERVISION DE OPERACION','LOGISTICA INVERSA') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `regusrxx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghorxx` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regusrmx` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghmodx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Horas funcionario GWS' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hfun2024`
--
ALTER TABLE `hfun2024`
  ADD PRIMARY KEY (`idfuncix`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hfun2024`
--
ALTER TABLE `hfun2024`
  MODIFY `idfuncix` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de registro';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
