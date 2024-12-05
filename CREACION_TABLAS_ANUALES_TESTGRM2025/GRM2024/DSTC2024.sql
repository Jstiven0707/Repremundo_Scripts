

CREATE TABLE IF NOT EXISTS `DSTC2024` (
  `DOCNROXX` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de DO',
  `LIMLEVXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de levante',
  `LIMFLEVX` date NOT NULL COMMENT 'Fecha de Levante',
  `LIMHLEVX` time NOT NULL COMMENT 'Hora de Levante',
  `REGUSRXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Creación',
  `LIMACEXX` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Numero de Aceptacion',
  `LIMFACEX` date NOT NULL COMMENT 'Fecha de Aceptacion',
  `LIMHACEX` time NOT NULL COMMENT 'Hora de Aceptacion',
  `STIKERFE` date NOT NULL COMMENT 'Fecha de Envio Stiker',
  `STIKERHO` time NOT NULL COMMENT 'Hora de Envio Stiker',
  `REGFECXX` date NOT NULL COMMENT 'Fecha Creación',
  `REGHORXX` time NOT NULL COMMENT 'Hora Creación',
  `REGUSRMX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Usuario Modificación',
  `REGFECMX` date NOT NULL COMMENT 'Fecha Modificación',
  `REGHORMX` time NOT NULL COMMENT 'Hora Modificación',
  `REGESTXX` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado',
  `REGSTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Modificado',
  PRIMARY KEY (`DOCNROXX`,`LIMLEVXX`,`LIMACEXX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='DETALLE ENVIO STIKER GECOLSA';

