-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:54:51
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
-- Estructura de tabla para la tabla `COST2024`
--

CREATE TABLE `COST2024` (
  `MESXXXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MES',
  `CEDULAXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número de cédula',
  `NOMBREXX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre del empleado',
  `EMPRESAX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre de la empresa - Contrato',
  `CARGOXXX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cargo del empleado',
  `SALARIOX` int(8) NOT NULL COMMENT 'Salario del empleado',
  `PRESTAXX` int(8) NOT NULL COMMENT 'PRESTA.38',
  `VALPAGXX` int(8) NOT NULL COMMENT 'Valor pagado',
  `APLICAXX` enum('','PRES','GRM','JDA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Aplica',
  `FACTCALC` enum('','Tamaño DB','Prestamo Proyecto Cima GD','Tickets','Activos','Transacciones JDA','Gestion','Administracion de Servidores','Cuentas de Correo','Prestamo Mesa de Ayuda','100% SIACO','100% RM') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Factor de cálculo',
  `SIACOXOX` decimal(8,2) NOT NULL COMMENT 'Valor SIACO',
  `RMXXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RM',
  `MAPXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor MAP',
  `LRMXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor LRM',
  `RIVXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RIV',
  `RISXXXXX` decimal(8,2) NOT NULL COMMENT 'Valor RIS',
  `COUNTXXX` int(11) NOT NULL COMMENT 'Conteo de cuantas empresa le pagan',
  `SIACOCOP` int(11) NOT NULL COMMENT 'Valor SIACO en COP',
  `RMCOPXXX` int(11) NOT NULL COMMENT 'Valor RM en COP',
  `MAPCOPXX` int(11) NOT NULL COMMENT 'Valor MAP en COP',
  `LRMCOPXX` int(11) NOT NULL COMMENT 'Valor LRM en COP',
  `RIVCOPXX` int(11) NOT NULL COMMENT 'Valor RIV en COP',
  `RISCOPXX` int(11) NOT NULL COMMENT 'Valor RIS en COP',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='COSTOS IT';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `COST2024`
--
ALTER TABLE `COST2024`
  ADD PRIMARY KEY (`MESXXXXX`,`CEDULAXX`,`EMPRESAX`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
