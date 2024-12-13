
CREATE TABLE IF NOT EXISTS `MDAS2025` (
  `DOCNROXX` int(11) NOT NULL COMMENT 'Numero de Do (MDASYYYY)',
  `LIMACEXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Aceptacion',
  `REGUSRXX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario Creacion del Registro',
  `REGFECXX` date NOT NULL COMMENT 'Fecha de Creacion del Registro',
  `REGHORXX` time NOT NULL COMMENT 'Hora de Creacion del Registro',
  `REGUSRMX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario de Modificacion',
  `REGFECMX` date NOT NULL COMMENT 'Fecha de Modificacion del Registro',
  `REGHORMX` time NOT NULL COMMENT 'Hora de Modificaion del Registro',
  `REGESTXX` enum('ACTIVO','INACTIVO') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Estado del Registro ',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reporte PO condition SLB';


