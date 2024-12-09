
CREATE TABLE IF NOT EXISTS `ENCH2025` (
  `NUMTKTXX` varchar(50) NOT NULL COMMENT 'Numero de Ticket',
  `FACCONXX` int NOT NULL COMMENT 'Facilidad de Contacto',
  `RESINCXX` int NOT NULL COMMENT 'Resolucion Incidencia',
  `TIMERESX` int NOT NULL COMMENT 'Tiempo de Respuesta',
  `SERSOPXX` int NOT NULL COMMENT 'Servicio de Soporte',
  `COMENTXX` text NOT NULL COMMENT 'Comentarios',
  `REGUSRXX` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion del Registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificacion del Registro',
  `REGESTXX` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del Registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`NUMTKTXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

