
CREATE TABLE IF NOT EXISTS `icam2025` (
  `idingcam` int NOT NULL COMMENT 'Id ingreso',
  `depidxxx` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Deposito',
  `camplaxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Placa de camion',
  `tdtidxxx` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de ingreso del camion',
  `dtridxxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo de ingreso a deposito',
  `fecingxx` date NOT NULL COMMENT 'Fecha de ingreso',
  `horingxx` time NOT NULL COMMENT 'Hora de ingreso',
  `fecapexx` date NOT NULL COMMENT 'Fecha de inicio identificacion',
  `horapexx` time NOT NULL COMMENT 'Hora de inicio identificacion',
  `fecciexx` date NOT NULL COMMENT 'Fecha de cierre camion',
  `horciexx` time NOT NULL COMMENT 'Hora de cierre camion',
  `regusrxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`idingcam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Disparadores `icam2025`
--

DELIMITER //
CREATE TRIGGER `Trigger_insert_agilidad_recepcion_ls_2025` AFTER UPDATE ON `icam2025`
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

DELIMITER //
CREATE TRIGGER `Trigger_insert_indagend_li_2025` AFTER INSERT ON `icam2025`
 FOR EACH ROW BEGIN
INSERT IGNORE INTO `INDAGEND` (`TRAMITEX`,`TABLAXXX`,`CAMPOXXX`,`REGUSRXX`,`REGFECXX`,`REGHORXX`,`REGFECMX`,`REGHORMX`,`REGESTXX`)
    VALUES (NEW.idingcam,"ICAMYYYY","FECINGXX_I","1000",NOW(),NOW(),NOW(),NOW(),"ACTIVO");
END
//
DELIMITER ;
