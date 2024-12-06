
CREATE TABLE IF NOT EXISTS `CISD2025` (
  `CISCIDXX` int NOT NULL COMMENT 'Consecutivo del CIS',
  `CISOIDXX` int NOT NULL COMMENT 'Consecutivo del CIS para los origenes',
  `CISLIDXX` int NOT NULL COMMENT 'Consecutivo del CIS para los LOTES',
  `CISDIDXX` int NOT NULL COMMENT 'Consecutivo del CIS para los DESTINOS',
  `CISDUSEX` enum('','1','2','3') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Uso especifico que se le dara al producto importado',
  `IDDEPXXX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID del departamento',
  `IDCIUXXX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'ID de la ciudad',
  `CISLUSOX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'uso especifico que se le dara al producto',
  `CISLDIRX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'DIRECCION DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLTELX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'TELEFONO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `CISLPECX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'PERSONA DE CONTACTO DEL ESTABLECIMIENTO AL CUAL VA DIRIGIDO',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` date NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`CISCIDXX`,`CISOIDXX`,`CISLIDXX`,`CISDIDXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='origenes del producto CIS vs lotes vs MATERIA PRIMA PARA LA INDUSTRIA GASTRONOMI';


