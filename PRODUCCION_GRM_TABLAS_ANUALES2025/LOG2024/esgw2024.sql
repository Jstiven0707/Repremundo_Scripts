-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:15:11
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
-- Estructura de tabla para la tabla `esgw2024`
--

CREATE TABLE `esgw2024` (
  `numordco` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'num pedido',
  `numoplxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero factura',
  `estadoxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado factura',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion registro',
  `reghorxx` time NOT NULL COMMENT 'hora creacion registro',
  `placaxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'placa del vehiculo',
  `tipovehx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tipo de vehiculo',
  `causalxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id causal de reprogramacion',
  `fereprog` date NOT NULL COMMENT 'Fecha de reprogramacion',
  `responre` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable de la reprogramacion',
  `idservic` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id servicio liftit',
  `estadgws` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado enviado a GWS',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea el registro',
  `regfmodx` date NOT NULL COMMENT 'Fecha modificacion registro',
  `reghmodx` time NOT NULL COMMENT 'Hora modificacion registro',
  `regmodxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora de modificacion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Estados cabecera GWS';

--
-- Disparadores `esgw2024`
--
DELIMITER $$
CREATE TRIGGER `Ediestad2024` AFTER INSERT ON `esgw2024` FOR EACH ROW BEGIN
    IF (NEW.estadoxx= 'ENTREGADO' OR NEW.estadoxx= 'EN TRANSITO' OR NEW.estadoxx= 'ENTREGADO CON NOVEDAD' OR NEW.estadoxx= 'DEVOLUCION TOTAL' OR NEW.estadoxx= 'CANCELADO')
    THEN 	
        UPDATE
        LOG.pgwh2024
        SET estadoxx=NEW.estadoxx
        WHERE 
        numordco=new.numordco;      
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `actestado2024` AFTER UPDATE ON `esgw2024` FOR EACH ROW BEGIN
    IF (NEW.estadoxx= 'ENTREGADO' OR NEW.estadoxx= 'ENTREGADO CON NOVEDAD' OR NEW.estadoxx= 'DEVOLUCION TOTAL' OR NEW.estadoxx= 'CANCELADO')
    THEN 	
        UPDATE
        LOG.pgwh2024 
        SET estadoxx=NEW.estadoxx
        WHERE 
        numordco=new.numordco;      
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `esgw2024`
--
ALTER TABLE `esgw2024`
  ADD PRIMARY KEY (`numordco`,`numoplxx`,`estadoxx`,`regfecxx`) USING BTREE,
  ADD KEY `numordco` (`numordco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
