-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 09-12-2024 a las 15:50:01
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
-- Estructura de tabla para la tabla `BDTG2024`
--

CREATE TABLE `BDTG2024` (
  `CONSBDTG` int(11) NOT NULL COMMENT 'Consecutivo',
  `PROIDXXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BDGTTIPO` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Trazabilidad',
  `PRODESXX` text COLLATE utf8_unicode_ci NOT NULL,
  `PROUSRXX` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que realiza la Trazabilidad',
  `DOCNROXX` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `REGFECMR` date NOT NULL COMMENT 'Fecha de Modificacion del Registro Para RIO',
  `REGHORMR` time NOT NULL COMMENT 'Hora de Modificacion del Registro Para RIO',
  `FECCREXX` date NOT NULL,
  `HORCREXX` time NOT NULL,
  `REGUSRXX` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGFECXX` date NOT NULL DEFAULT '0000-00-00',
  `REGMODXX` date NOT NULL DEFAULT '0000-00-00',
  `REGHORXX` time NOT NULL,
  `REGESTXX` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bodega Trazabilidad General' ROW_FORMAT=DYNAMIC;

--
-- Disparadores `BDTG2024`
--
DELIMITER $$
CREATE TRIGGER `BDTG2024` BEFORE INSERT ON `BDTG2024` FOR EACH ROW BEGIN
declare tipo VARCHAR(20);
set tipo = (SELECT MDOS2024.DOCTIPXX from MDOS2024 where MDOS2024.DOCNROXX = NEW.DOCNROXX);
if(tipo = 'IMPORTACION') then
	SET NEW.`REGFECMR`= NOW();
	SET NEW.`REGHORMR`= NOW();
end if;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BDTG2024`
--
ALTER TABLE `BDTG2024`
  ADD PRIMARY KEY (`CONSBDTG`,`PROIDXXX`,`DOCNROXX`) USING BTREE,
  ADD KEY `DOCNROXX` (`DOCNROXX`) USING BTREE,
  ADD KEY `PROIDXXX` (`PROIDXXX`,`DOCNROXX`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `BDTG2024`
--
ALTER TABLE `BDTG2024`
  MODIFY `CONSBDTG` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
