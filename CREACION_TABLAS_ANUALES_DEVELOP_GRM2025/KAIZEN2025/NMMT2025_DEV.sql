
CREATE TABLE IF NOT EXISTS `NMMT2025` (
  `NMMCIDXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Secuencia del documento de no mas errores',
  `NMMPTEID` int NOT NULL COMMENT 'Id del tema aduanero',
  `REGUSRXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`NMMCIDXX`,`NMMPTEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Informes vs Temas Aduaneros (Programa No Mas Errores)';

