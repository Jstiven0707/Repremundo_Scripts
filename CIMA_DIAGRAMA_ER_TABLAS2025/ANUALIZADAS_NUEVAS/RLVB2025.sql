CREATE TABLE `RLVB2025` (
  `MDREIDRE` int NOT NULL COMMENT 'Secuencia del registro O LICENCIA',
  `ENTVISID` smallint NOT NULL COMMENT 'ID de la Entidad (CIPO0010)',
  `APLIEXCL` enum('','SI','NO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bandera que indica si aplica exclusion',
  `DESCEXCL` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Descripcion de La Exclusion',
  `NUMRESXX` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Numero de la Resolucion',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creación del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificación del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificación del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  
  
  PRIMARY KEY (`MDREIDRE`, `ENTVISID`),
  KEY IDX_MDREIDRE (MDREIDRE),
  KEY IDX_ENTVISID (ENTVISID)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='CABECERA VUCE, PRODUCTO  ENTIDAD VS DATOS DE PERMISO';
COMMIT;

