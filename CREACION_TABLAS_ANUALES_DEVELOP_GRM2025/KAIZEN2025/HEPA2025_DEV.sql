
CREATE TABLE IF NOT EXISTS `HEPA2025` (
  `HELCCSCX` bigint NOT NULL COMMENT 'Numero de Ticket',
  `IDFORXXX` int NOT NULL COMMENT 'Id Formulario',
  `IDPREXXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id pregunta',
  `TIPORESX` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'TIPO DE RESPUESTA',
  `APLICAXX` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'aplica hallazgos',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que crea el registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha en que se crea el registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora en que se crea el registro',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario que modifica el registro',
  `REGFECMX` date NOT NULL COMMENT 'Fecha en que se modifica el registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora en que se medifica el registro',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado del registro',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'MODIFICADO',
  PRIMARY KEY (`HELCCSCX`,`IDFORXXX`,`IDPREXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Preguntas Auditoria por Ticket';


