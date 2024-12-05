

CREATE TABLE IF NOT EXISTS `MDEX2025` (
  `CRONIDXX` int NOT NULL COMMENT 'ID del cron',
  `DOCNROXX` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Número del DO',
  `NUMSAEXX` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Número de la SAE',
  `NUMDEXXX` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Número de DEX',
  `OBSROBXX` tinytext COLLATE utf8mb3_unicode_ci COMMENT 'Observación del robot',
  `REGUSRXX` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('PENDIENTE','ERROR','FINALIZADO','INACTIVO') COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`CRONIDXX`,`DOCNROXX`,`NUMSAEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

