-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79
-- Tiempo de generación: 09-12-2024 a las 09:45:25
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
-- Estructura de tabla para la tabla `vtcm2024`
--

CREATE TABLE IF NOT EXISTS `vtcm2024` (
  `cmidxxxx` int NOT NULL AUTO_INCREMENT COMMENT 'Id calculo matematico',
  `cotnumxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Número cotización',
  `calargcm` decimal(12,2) DEFAULT NULL COMMENT 'Largo (cm)',
  `caanchcm` decimal(12,2) DEFAULT NULL COMMENT 'Ancho (cm)',
  `caaltocm` decimal(12,2) DEFAULT NULL COMMENT 'Alto (cm)',
  `capesoxx` decimal(12,2) DEFAULT NULL COMMENT 'Peso (Kgs)',
  `cacaapxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Carga apilable',
  `capevokg` decimal(12,2) DEFAULT NULL COMMENT 'Peso Volumen (Kgs)',
  `capebrcm` decimal(12,2) DEFAULT NULL COMMENT 'Peso Bruto (Kgs)',
  `capecaxx` decimal(12,2) DEFAULT NULL COMMENT 'Peso Cargable (Kgs)',
  `calargme` decimal(12,2) DEFAULT NULL COMMENT 'Largo (m)',
  `caanchme` decimal(12,2) DEFAULT NULL COMMENT 'Ancho (m)',
  `caaltome` decimal(12,2) DEFAULT NULL COMMENT 'Alto (m)',
  `catonexx` decimal(12,2) DEFAULT NULL COMMENT 'Toneladas (Tn)',
  `capevocm` decimal(12,2) DEFAULT NULL COMMENT 'Peso Volumen (Cm3)',
  `capebrtn` decimal(12,2) DEFAULT NULL COMMENT 'Peso Bruto (Tn)',
  `cacacoxx` decimal(12,2) DEFAULT NULL COMMENT 'Cantidad contenedores',
  `catiemba` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de embalaje',
  `caticoxx` int DEFAULT NULL COMMENT 'Tipo contenedor',
  `catacoxx` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tara contenedor (Kgs)',
  `capecakg` decimal(12,2) DEFAULT NULL COMMENT 'Peso Carga(Kgs)',
  `piezasxx` int DEFAULT NULL COMMENT 'Piezas',
  `catopeco` decimal(12,2) DEFAULT NULL COMMENT 'Total Peso Contenedores',
  `catopixx` decimal(12,2) DEFAULT NULL COMMENT 'Total piezas',
  `catopvkg` decimal(12,2) DEFAULT NULL COMMENT 'Total peso volumen (kgs)',
  `catopbkg` decimal(12,2) DEFAULT NULL COMMENT 'Total peso bruto (kgs)',
  `catopckg` decimal(12,2) DEFAULT NULL COMMENT 'Total peso cargable (Kgs)',
  `catopvcm` decimal(12,2) DEFAULT NULL COMMENT 'Total peso volumen (cm3)',
  `catopbtn` decimal(12,2) DEFAULT NULL COMMENT 'Total peso bruto (Tn)',
  `totalcon` int DEFAULT NULL COMMENT 'Total contenedores',
  `totpesco` decimal(12,2) DEFAULT NULL COMMENT 'Total Peso Contenedores',
  `regusrxx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario creacion del registro',
  `regfecxx` date NOT NULL COMMENT 'fecha de creacion del registro',
  `reghorxx` time NOT NULL COMMENT 'hora de creacion del registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usuario de modificacion',
  `regfecmx` date NOT NULL COMMENT 'fecha de modificacion del registro',
  `reghormx` time NOT NULL COMMENT 'hora de modificacion del registro',
  `regestxx` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'modificado',
  PRIMARY KEY (`cmidxxxx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='VENTAS CALCULOS' AUTO_INCREMENT=105 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
