-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.28.75
-- Tiempo de generación: 11-12-2024 a las 19:19:49
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
-- Estructura de tabla para la tabla `pgwd2024`
--

CREATE TABLE `pgwd2024` (
  `numordco` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n prefijo de pedido con nÃºmero de pedido',
  `numoplxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'concatenaciÃ³n del prefijo de la  factura con el nÃºmero de la factura',
  `idarticu` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id del articulo o sku',
  `descripx` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Descripcion articulo',
  `unicomxx` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Unidad de compra',
  `precioun` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Precio Unitario',
  `cantidad` int(11) NOT NULL COMMENT 'cantidad',
  `cantentr` int(11) NOT NULL COMMENT 'cantidad entregada',
  `cantdevx` int(11) NOT NULL COMMENT 'cantidad devuelta',
  `estadoxx` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado de la entrega',
  `causalxx` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nÃºmero de la novedad',
  `respnove` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Responsable de la novedad',
  `observac` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'observaciones',
  `regfecxx` date NOT NULL COMMENT 'fecha de creaciÃ³n',
  `reghorxx` time NOT NULL COMMENT 'hora de creaciÃ³n',
  `regmodxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuarios que modifican',
  `regfmodx` date NOT NULL COMMENT 'fecha de modificaciÃ³n de registro ',
  `reghmodx` time NOT NULL COMMENT 'hora de modificaciÃ³n de registro',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'usuario que crea ',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Detalle de pedidos  de GWS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pgwd2024`
--
ALTER TABLE `pgwd2024`
  ADD PRIMARY KEY (`numoplxx`,`idarticu`,`numordco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
