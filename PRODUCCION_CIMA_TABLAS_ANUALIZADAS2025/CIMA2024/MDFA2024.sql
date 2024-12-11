-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-prod.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 11-12-2024 a las 09:42:14
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
-- Estructura de tabla para la tabla `MDFA2024`
--

CREATE TABLE `MDFA2024` (
  `DOCNROXX` int NOT NULL COMMENT 'NUMERO DEL DO (MDOSYYYY)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NIT CLIENTE (CIPO0024)',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR (CIPO0050)',
  `FACIDXXX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA FACTURA',
  `GRUCOIDX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id del acuerdo comercial',
  `PAIIDXXX` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `ACUDIIDX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL ACUERDO ACORDE A LA PAGINA DE LA DIAN',
  `FPIIDXXX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cod Forma Pago(CIPO0011)',
  `DEPIDXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL DEPARTAMENTO',
  `CIUIDXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA CIUDAD ',
  `PRODIRXX` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'DIRECCION DEL PORVEEDOR',
  `FACFECXX` date NOT NULL COMMENT 'FECHA DE LA FACTURA',
  `MONIDXXX` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA MONEDA ORIGEN(CIPO0022)',
  `TIMIDXXX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'COD TIPO IMPORTACION',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OPERACION VS FACTURAS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MDFA2024`
--
ALTER TABLE `MDFA2024`
  ADD PRIMARY KEY (`DOCNROXX`,`CLIIDXXX`,`IDPROXXX`,`FACIDXXX`),
  ADD KEY `DOCNROXX` (`DOCNROXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `GRUCOIDX` (`GRUCOIDX`),
  ADD KEY `PAIIDXXX` (`PAIIDXXX`),
  ADD KEY `ACUDIIDX` (`ACUDIIDX`),
  ADD KEY `DEPIDXXX` (`DEPIDXXX`),
  ADD KEY `CIUIDXXX` (`CIUIDXXX`),
  ADD KEY `PRODIRXX` (`PRODIRXX`),
  ADD KEY `MONIDXXX` (`MONIDXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;