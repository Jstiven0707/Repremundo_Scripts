
CREATE TABLE IF NOT EXISTS `hfun2025` (
  `idfuncix` int NOT NULL AUTO_INCREMENT COMMENT 'Id de registro',
  `fechaxxx` date NOT NULL COMMENT 'Fecha funcionario',
  `cantpers` int NOT NULL COMMENT 'Cantidad personas',
  `canthora` int NOT NULL COMMENT 'Cantidad horas',
  `operaxxx` enum('COORDINACION O SUPERVISION DE OPERACION','LOGISTICA INVERSA') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de operacion',
  `regusrxx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que Creo el Registro',
  `regfecxx` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `reghorxx` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `regusrmx` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `regfecmx` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `reghmodx` time NOT NULL COMMENT 'Hora en que se modifica el registro',
  `regestxx` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `regstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`idfuncix`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='Horas funcionario GWS';

