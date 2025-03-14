
CREATE TABLE IF NOT EXISTS `prav2025` (
  `preaviid` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo',
  `depidxxx` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Deposito',
  `dtrdtrxx` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `cliidxxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id del Cliente',
  `dtrmanxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de manifiesto',
  `pesdocxx` decimal(10,2) NOT NULL COMMENT 'Peso documental',
  `regusrxx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `reghorxx` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `regusrmx` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghormx` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`preaviid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Preavisos de llegada';


