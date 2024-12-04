-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: rds-mysql-cima-dev-test.cluster-ccvz0yxqws4u.us-west-2.rds.amazonaws.com
-- Tiempo de generación: 22-11-2024 a las 11:51:30
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
-- Base de datos: `CIMATEST`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RLDP2024`
--

DROP TABLE IF EXISTS `RLDP2024`;
CREATE TABLE `RLDP2024` (
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `FACIDXXX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'D de la factura (DSVCYYYY)',
  `PROIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CODIGO DEL PRODUCTO (CIPO0141)',
  `CLIIDXXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nit cliente',
  `IDPROXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL PROVEEDOR',
  `MDRPCANT` int NOT NULL COMMENT 'cantidad total',
  `MDRPVALT` decimal(10,5) NOT NULL COMMENT 'valor Total',
  `PRODESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'descripcion del producto',
  `SUBIDXXX` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID de la subpartida (CIPO0001)',
  `UNIIDXXX` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DE LA UNIDAD ',
  `MDRPBNMT` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA MINTIC',
  `MDRPBNMC` enum('','MERCURIO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cupo Normativa vigente',
  `MDRPBNOE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA OTRA ENTIDAD',
  `PAIIDXXX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID del pais',
  `ESTMERID` tinyint NOT NULL COMMENT 'ID Del estado de la mercancia',
  `PAIIDREX` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id del pais de remanufactura',
  `MDRPBNRE` enum('','LIBRE','PREVIA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'que indica el regimen',
  `MDRPBNRA` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI REQUIERE HACERCE A TRAVES DE FNE,INDUMUL U OTRA EMPRESA',
  `MDREAPPV` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica plan vallejo',
  `CLINUMPR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DEL PROGRAMA',
  `MDRENUMR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de Reposicion',
  `MDRECANT` int NOT NULL COMMENT 'Cantidades aprobadas',
  `MDRENDIP` int NOT NULL COMMENT 'Cantidades disponibles',
  `RLDPVLUN` decimal(18,5) NOT NULL COMMENT 'valor unitario',
  `RLDPBAVE` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA VEHICULO',
  `RLDPBAMC` enum('','SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'BANDERA QUE INDICA SI APLICA MATERIAL CKD',
  `RLDPFCKD` date NOT NULL COMMENT 'fecha de fabricacion CKD',
  `RLDPFFVX` date NOT NULL COMMENT 'FECHA DE FABRICACION VEHICULO',
  `RLDPAFAX` smallint NOT NULL COMMENT 'año de fabricacion',
  `RLDPPREM` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Pais de remanufactura',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='REGISTRO O LICENCIA VS PRODUCTOS';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `RLDP2024`
--
ALTER TABLE `RLDP2024`
  ADD PRIMARY KEY (`MDREIDRE`,`FACIDXXX`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`),
  ADD KEY `UNIIDXXX` (`UNIIDXXX`),
  ADD KEY `IDPROXXX` (`IDPROXXX`),
  ADD KEY `CLIIDXXX` (`CLIIDXXX`),
  ADD KEY `PROIDXXX` (`PROIDXXX`),
  ADD KEY `MDREIDRE` (`MDREIDRE`),
  ADD KEY `MDREIDRE_2` (`MDREIDRE`,`FACIDXXX`,`PROIDXXX`,`CLIIDXXX`,`IDPROXXX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
