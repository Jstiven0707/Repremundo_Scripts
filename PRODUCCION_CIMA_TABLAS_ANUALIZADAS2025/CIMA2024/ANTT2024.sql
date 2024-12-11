-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:28:14
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `CIMA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ANTT2024`
--

CREATE TABLE `ANTT2024` (
  `ANTCIDXX` bigint NOT NULL COMMENT 'ID DE LA SOLICITUD DEL ANTICIPO',
  `DOIPEDXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'NUMERO DE PEDIDO',
  `ANTTSECX` smallint NOT NULL COMMENT 'Secuencia del detalle',
  `ANTGRVMX` decimal(20,5) NOT NULL COMMENT 'Valor Gravamen',
  `ANTIVAXX` decimal(20,5) NOT NULL COMMENT 'Valor iva',
  `ANTSALVX` decimal(20,5) NOT NULL COMMENT 'Valor Salvaguarda',
  `ANTCOMPX` decimal(20,5) NOT NULL COMMENT 'Valor componsatorio',
  `ANTDUMPX` decimal(20,5) NOT NULL COMMENT 'Valor antidumping',
  `ANTSANCX` decimal(20,5) NOT NULL COMMENT 'Valor sancion',
  `ANTRESCT` decimal(20,5) NOT NULL COMMENT 'Valor rescate',
  `LIMACEXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de declaracion',
  `ANTTOTAL` decimal(20,5) NOT NULL COMMENT 'Total del anticipo',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Solicitud de anticipo cliente vs Tributos';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANTT2024`
--
ALTER TABLE `ANTT2024`
  ADD PRIMARY KEY (`ANTTSECX`),
  ADD KEY `ANTCIDXX` (`ANTCIDXX`),
  ADD KEY `DOIPEDXX` (`DOIPEDXX`),
  ADD KEY `LIMACEXX` (`LIMACEXX`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ANTT2024`
--
ALTER TABLE `ANTT2024`
  MODIFY `ANTTSECX` smallint NOT NULL AUTO_INCREMENT COMMENT 'Secuencia del detalle';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
