
CREATE TABLE IF NOT EXISTS `BSCD2025` (
  `BSCEIDXX` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID ENFOQUE',
  `USRIDXXX` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID USUARIO',
  `USRPERIN` date NOT NULL COMMENT 'FECHA INICIAL PERIODO',
  `USRPERFN` date NOT NULL COMMENT 'FECHA FINAL PERIODO',
  `USRTOTEN` tinytext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Resultado total del enfoque evaluado',
  `USRPORXX` decimal(5,2) NOT NULL COMMENT 'PORCENTAJE CALCULADO DEL ENFOQUE',
  `USRRESXX` int NOT NULL COMMENT 'RESULTADO DEL ENFOQUE',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`BSCEIDXX`,`USRIDXXX`,`USRPERIN`,`USRPERFN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Detalle del score card por usuario';


