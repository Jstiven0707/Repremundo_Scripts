
CREATE TABLE IF NOT EXISTS `HEDM2025` (
  `HELCCSCX` bigint NOT NULL COMMENT 'CONSECUTIVO DE CABECERA DEL TICKET',
  `SUBIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Declaracion',
  `ARCIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Subpartida',
  `MODIDXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Modalidad',
  `HEFCNROF` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de Formulario',
  `HEDMFCAR` datetime NOT NULL COMMENT 'Fecha y Hora del cargue de la sidunea',
  `HEDNACEP` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero Aceptacion',
  `HEDMFTAC` datetime NOT NULL COMMENT 'Fecha y Hora del turno de aceptacion',
  `HEDFHACE` datetime NOT NULL COMMENT 'Fecha y Hora Aceptacion',
  `HEDMEACE` enum('','RECHAZADO','ACEPTADO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Resultado de la Aceptacion',
  `HEDNLEVA` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero Levante',
  `HEDMFTLE` datetime NOT NULL COMMENT 'Fecha y Hora del turno de Levante',
  `HEDFHLEV` datetime NOT NULL COMMENT 'Fecha y Hora Levante',
  `HEDMELEV` enum('','CON INSPECCION FISICA','RECHAZADO','LEVANTE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Resultado del Levante',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion',
  `REGESTXX` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`SUBIDXXX`,`HELCCSCX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Ticket VS Declaraciones Manuales';


