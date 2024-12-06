
CREATE TABLE IF NOT EXISTS `CISM2025` (
  `CISCIDXX` int NOT NULL COMMENT 'Consecutivo del CIS',
  `DOCNROXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CISCIDXX`,`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Relacion Do vs Consecutivo CIS';

