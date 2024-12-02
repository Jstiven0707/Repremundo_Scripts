-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.28.79:3307
-- Tiempo de generación: 29-11-2024 a las 14:34:01
-- Versión del servidor: 5.6.47
-- Versión de PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `WMS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icam2024`
--

CREATE TABLE IF NOT EXISTS `icam2024` (
  `idingcam` int(10) NOT NULL COMMENT 'Id ingreso',
  `depidxxx` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Deposito',
  `camplaxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Placa de camion',
  `tdtidxxx` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de ingreso del camion',
  `dtridxxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso a deposito',
  `fecingxx` date NOT NULL COMMENT 'Fecha de ingreso',
  `horingxx` time NOT NULL COMMENT 'Hora de ingreso',
  `fecapexx` date NOT NULL COMMENT 'Fecha de inicio identificacion',
  `horapexx` time NOT NULL COMMENT 'Hora de inicio identificacion',
  `fecciexx` date NOT NULL COMMENT 'Fecha de cierre camion',
  `horciexx` time NOT NULL COMMENT 'Hora de cierre camion',
  `regusrxx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idingcam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Disparadores `icam2024`
--
DROP TRIGGER IF EXISTS `Trigger_insert_agilidad_recepcion_ls_2024`;
DELIMITER //
CREATE TRIGGER `Trigger_insert_agilidad_recepcion_ls_2024` AFTER UPDATE ON `icam2024`
 FOR EACH ROW BEGIN
    IF(((NEW.fecapexx!='0000-00-00') AND (NEW.fecapexx != OLD.fecapexx)) OR ((NEW.horapexx!='00:00:00') AND (NEW.horapexx != OLD.horapexx))) THEN
    INSERT IGNORE INTO `INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`)
    VALUES (NEW.idingcam,"ICAMYYYY","FECAPEXX_S","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
    END IF;
    IF(((NEW.fecciexx!='0000-00-00') AND (NEW.fecciexx != OLD.fecciexx)) OR ((NEW.horciexx!='00:00:00') AND (NEW.horciexx != OLD.horciexx))) THEN
    INSERT IGNORE INTO `INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`)
    VALUES (NEW.idingcam,"ICAMYYYY","FECCIEXX_S","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
    INSERT IGNORE INTO `INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`)
    VALUES (NEW.idingcam,"ICAMYYYY","AGITRANX_I","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
    END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_insert_indagend_li_2024`;
DELIMITER //
CREATE TRIGGER `Trigger_insert_indagend_li_2024` AFTER INSERT ON `icam2024`
 FOR EACH ROW BEGIN
INSERT IGNORE INTO `INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`)
    VALUES (NEW.idingcam,"ICAMYYYY","FECINGXX_I","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
END
//
DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;