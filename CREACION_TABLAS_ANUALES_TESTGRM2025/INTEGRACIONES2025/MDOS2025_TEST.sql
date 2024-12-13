

CREATE TABLE IF NOT EXISTS `MDOS2025` (
  `DOCNROXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'NUMERO DEL DO',
  `CLIIDXXX` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID DEL CLIENTE',
  `DOCTRIMP` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Documento de transporte',
  `MDOSFECT` date NOT NULL COMMENT 'fecha de transmision',
  `MDOSS997` enum('ACEPTADO,''') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'estado 997',
  `MDOS997F` date NOT NULL COMMENT 'FECHA ESTADO 997',
  `MDOS997H` time NOT NULL COMMENT 'HORA ESTADO 997',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('','ACTIVO','INACTIVO','TRANSMITIDO','FINALIZADO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ESTADO DEL DO',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`),
  KEY `idx_CLIIDXXX` (`CLIIDXXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CABECERA DE OPERACION';


