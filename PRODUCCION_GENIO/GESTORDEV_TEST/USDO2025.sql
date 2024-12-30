-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: dev1-geniomysql.repremundo.com.co
-- Tiempo de generación: 30-12-2024 a las 11:38:40
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GESTORDEV`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USDO2025`
--

CREATE TABLE `USDO2025` (
  `USRIDXXX` varchar(15) NOT NULL COMMENT 'Id del Usuario',
  `IDARCHXX` int NOT NULL COMMENT 'Id del Archivo',
  `SECGENID` int NOT NULL COMMENT 'Secuencia de Agendamiento',
  `TIPDIVXX` enum('SEPARADO','UNIDO') NOT NULL COMMENT 'Bandera que indica como se debe organizar',
  `REGUSRXX` varchar(20) NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO','PROCESADO') NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='USUARIOS VS AGENDAMIENTO DE DOCUMENTOS' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `USDO2025`
--
ALTER TABLE `USDO2025`
  ADD PRIMARY KEY (`USRIDXXX`,`IDARCHXX`,`SECGENID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
