-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 09-12-2024 a las 09:45:51
-- Versión del servidor: 8.0.33
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `CASTOR`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtco2024`
--

CREATE TABLE IF NOT EXISTS `vtco2024` (
  `cotnumxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número cotización',
  `ctocosor` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo Origen',
  `ctocosfl` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo Flete',
  `ctocosde` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo Destino',
  `ctocosse` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo Seguro',
  `ctoinorx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso Origen',
  `ctoinflx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso Flete',
  `ctoindex` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso Destino',
  `ctoinsex` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso Seguro',
  `ctogaorx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia origen',
  `ctogaflx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia flete',
  `ctogadex` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia destino',
  `ctogasex` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia seguro',
  `cprshorx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share origen',
  `cprshflx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share flete',
  `cprshdex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share destino',
  `cprshsex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share seguro',
  `ctocoadx` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo aduana',
  `ctcoalad` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo almacenaje aduanero',
  `ctcoalce` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo almacenaje CEDIS',
  `ctcotrna` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo transporte nacional',
  `ctcotrur` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo transporte urbano',
  `ctcotrot` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo transporte OTM',
  `ctcotrcv` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo transporte CV',
  `ctocotrx` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo traslado',
  `ctocoemx` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo empaque',
  `ctococax` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo cargue',
  `ctcoulmi` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo última milla',
  `ctcocolo` decimal(12,2) DEFAULT NULL COMMENT 'Total Costo Condiciones locales',
  `ctoinadx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso aduana',
  `ctinalad` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso almacenaje aduanero',
  `ctinalce` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso almacenaje CEDIS',
  `ctintrna` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso transporte nacional',
  `ctintrur` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso transporte urbano',
  `ctintrot` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso transporte OTM',
  `ctintrcv` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso transporte CV',
  `ctointrx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso traslado',
  `ctinempx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso empaque',
  `ctoincax` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso cargue',
  `ctinulmi` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso última milla',
  `ctincolo` decimal(12,2) DEFAULT NULL COMMENT 'Total Ingreso Condiciones locales',
  `ctogaadx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia aduana',
  `ctgaalad` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia almacenaje aduanero',
  `ctgaalce` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia almacenaje CEDIS',
  `ctgatrna` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia transporte nacional',
  `ctgatrur` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia transporte urbano',
  `ctgatrot` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia transporte OTM',
  `ctgatrcv` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia transporte CV',
  `ctogatrx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia traslado',
  `ctogaemx` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia empaque',
  `ctogacax` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia cargue',
  `ctgaulmi` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia última milla',
  `ctgacolo` decimal(12,2) DEFAULT NULL COMMENT 'Total Ganancia Condiciones locales',
  `cprshadx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share aduana',
  `cprshala` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share almacenaje aduanero',
  `cprshalc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share almacenaje CEDIS',
  `cprshtrn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share transporte nacional',
  `cprshtru` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share transporte urbano',
  `cprshtro` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share transporte OTM',
  `cprshcvx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share Transporte CV',
  `cprshtrx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share traslado',
  `cprshemx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share empaque',
  `cprshcax` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share cargue',
  `cprshulm` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share última milla',
  `cprshcol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share Condiciones locales',
  `ctocosxx` decimal(12,2) DEFAULT NULL COMMENT 'Total costo consolidado 1',
  `ctoinxxx` decimal(12,2) DEFAULT NULL COMMENT 'Total ingreso consolidado 1',
  `ctogaxxx` decimal(12,2) DEFAULT NULL COMMENT 'Total ganancia consolidado 1',
  `cprshxxx` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Profit Share consolidado 1',
  `tocostwo` decimal(12,2) DEFAULT NULL COMMENT 'Total costo consolidado 2',
  `toingtwo` decimal(12,2) DEFAULT NULL COMMENT 'Total ingreso consolidado 2',
  `toprotwo` decimal(12,2) DEFAULT NULL COMMENT 'Total profit consolidado 2',
  `toprstwo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Total profit share consolidado 2',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`cotnumxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='VENTAS CONSOLIDADO';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
