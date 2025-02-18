
CREATE TABLE IF NOT EXISTS `MDNA2025` (
  `USRIDXXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Cedula Usuario a Notificar',
  `TIPODISP` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tipo de Dispositivo movil',
  `TOKENDIS` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Id Token SYS00049',
  `IDTIPNOT` int NOT NULL COMMENT 'Id Identificador GRM00382',
  `CONSNOTX` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Consecutivo ',
  `LEIDOXXX` enum('SI','NO') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Verificación de si la notificación ya fue leida o no',
  `ENVIADOX` enum('SI','NO','ERROR') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NO' COMMENT 'Bandera para saber si la notificación ya fue enviada o no',
  `DOCNROXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `CAMDISXX` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Campo adicional para la Alertas',
  `ALECOLOR` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Color, aplica solo para las Alertas',
  `MENALTXX` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Texto Alterno',
  `REGUSRXX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creación',
  `REGUSRMX` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`USRIDXXX`,`TOKENDIS`,`CONSNOTX`,`DOCNROXX`,`CAMDISXX`,`IDTIPNOT`),
  KEY `TOKENDIS` (`TOKENDIS`),
  KEY `DOCNROXX` (`TOKENDIS`,`DOCNROXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Tabla de Notificaciones Leidas/No Leidas del APP';


