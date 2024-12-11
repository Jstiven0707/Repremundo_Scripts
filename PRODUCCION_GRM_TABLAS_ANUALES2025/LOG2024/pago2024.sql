-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:19:38
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
-- Estructura de tabla para la tabla `pago2024`
--

CREATE TABLE `pago2024` (
  `whidxxxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bodega',
  `sqpagosx` int(11) NOT NULL COMMENT 'Pagos realizados a la factura',
  `numordco` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'No pedido',
  `numoplxx` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'factura',
  `cuentaxx` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cuenta de consignacion',
  `fconsigx` date NOT NULL COMMENT 'Fecha de Consignacion',
  `vconsigx` decimal(8,0) NOT NULL COMMENT 'Valor Consignado',
  `soportpg` enum('SI','NO') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Soporte de pago',
  `regfecxx` date NOT NULL COMMENT 'fecha de creación registro ',
  `reghorxx` time NOT NULL COMMENT 'Hora de creación registro',
  `regusrxx` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificacion de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificacion de registro',
  `regmodxx` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica registro',
  `regestxx` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cuenta de Pago Factura GWS' ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pago2024`
--
ALTER TABLE `pago2024`
  ADD PRIMARY KEY (`whidxxxx`,`sqpagosx`,`numordco`,`numoplxx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
