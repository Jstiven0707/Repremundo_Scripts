
CREATE TABLE IF NOT EXISTS `HLDA2025` (
  `HELCCSCX` bigint NOT NULL COMMENT 'Consecutivo Ticket',
  `CAMIDXXX` int NOT NULL COMMENT 'Id campo',
  `VALORXXX` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Valor campo',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`HELCCSCX`,`CAMIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Campos adicionales Cabecera Tickets';

